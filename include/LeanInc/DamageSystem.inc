public OnPlayerGiveDamage(playerid, damagedid, Float: amount, weaponid, bodypart)
{

	if(AdminDuty[damagedid] == true)
	{
	        SetPlayerHealthEx(damagedid, 250);
			return 0;
	}



	new
		Float:ad[MAX_PLAYERS],
		Float:a[MAX_PLAYERS];

	if(DM[damagedid] == true && executed[damagedid] == false)
	{
	    SetPlayerHealthEx(damagedid, 20);
	    return 1;
	}

	if(DM[damagedid] == true && executed[damagedid] == true)
	{
 			DPDD(damagedid);
 			return 1;
	}

	if ( DM1[damagedid] == true )
	{
		SetPlayerHealthEx(damagedid, 20);
		return 1;
	}

	if(playerid == INVALID_PLAYER_ID) return 1;

	if(Taser[playerid] == true && weaponid == 23)
	{
		if(IsPlayerNearPlayer(playerid, damagedid, 15.0))
		{
		    SetPlayerDrunkLevel(damagedid, 6000);
		    FreezePlayer(damagedid, 4000);
			new stringt[MAX_PLAYER_NAME+77];
			ClearAnimations(damagedid);
			format(stringt, sizeof(stringt), "SERVER: You hit %s with a tazer!", GetName(damagedid));
			SendClientMessage(playerid, COLOR_YELLOW, stringt);
			format(stringt, sizeof(stringt), "SERVER: You were hit by %s with a tazer!", GetName(playerid));
			SendClientMessage(damagedid, COLOR_YELLOW, stringt);
			LoopingAnim(damagedid, "PED", "KO_skid_front",4.1,0,1,1,1,0);
			format(stringt, sizeof(stringt), "* %s was hit by %s' tazer and fell on the ground.", GetICName(damagedid), GetICName(playerid));
			ProxDetector(30.0, damagedid, stringt, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
			WriteDMGMessage(damagedid,playerid, 0.0 , 23, 0.0, TAZER);
			return 1;
		}
		else
		{
		    SCM(playerid, COLOR_YELLOW, "-> Target too far away.");
		    return 1;
		}
	}




	if(Rubber[playerid] == true)
	{
	    if(weaponid == 25)
	    {
		    SetPlayerDrunkLevel(damagedid, 6000);
			ClearAnimations(damagedid);
			new string[128];
			format(string, sizeof(string), "SERVER: You hit %s with a rubberbullet!", GetName(damagedid));
			SendClientMessage(playerid, COLOR_YELLOW, string);
			format(string, sizeof(string), "SERVER: You were hit with a rubberbullet by %s", GetName(playerid));
			SendClientMessage(damagedid, COLOR_YELLOW, string);
			format(string, sizeof(string), "* %s was hit by a rubberbullet and falls on the ground.", GetICName(damagedid));
			ProxDetector(30.0, damagedid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
			ApplyAnimation(damagedid, "SWEET", "Sweet_injuredloop", 4.0, 0, 1, 1, 1, 0);
			SetPlayerDrunkLevel(damagedid, 4000);
			WriteDMGMessage(damagedid,playerid, 0.0 , weaponid, 0.0, RUBBER);
			return 1;
		}
	}


	if(weaponid >= 0 && weaponid < sizeof(G_WEAPONDAMAGE))
	{
		a[damagedid] = 0.0;
		ad[damagedid] = 0.0;
		new Float:fCurrentHealth,
		Float:fCurrentArmour,
		Float:fAdditionalDamage = G_WEAPONDAMAGE[weaponid][E_DAMAGE];
		GetPlayerHealth(damagedid, fCurrentHealth);
		GetPlayerArmour(damagedid, fCurrentArmour);
		if(fAdditionalDamage < 1.0)
		{
			return 1;
		}

		if(weaponid == WEAPON_SHOTGUN || weaponid == 27)
  		{
  			if(IsPlayerNearPlayer(playerid, damagedid, 15.0))
			{
    			fAdditionalDamage += amount;
			}
		}

		if(weaponid == WEAPON_SPRAYCAN)
		{
		    SetPlayerDrunkLevel(damagedid, 3500);
		}

		ddmg[damagedid] = 1;
		switch(bodypart)
		{
			case 3: //TORSO 1
			{

				if(fCurrentArmour > 0.0)
				{
					ad[damagedid] += fAdditionalDamage;
					if(fCurrentArmour > fAdditionalDamage)
					{
						SetPlayerArmour(damagedid, (fCurrentArmour - fAdditionalDamage));
						fAdditionalDamage = 0.0;
					}
					else
					{
						fAdditionalDamage -= fCurrentArmour;
						SetPlayerArmour(damagedid, 0.0);
					}
				}


				// Still damage to take after armour?
				if(fAdditionalDamage > 0.0)
				{
					// Will he survive? :o
					a[damagedid] = fAdditionalDamage;
					if(fCurrentHealth > fAdditionalDamage)
					{
						Damage_SetPlayerHealthEx(damagedid, (fCurrentHealth - fAdditionalDamage));
					}
					else
					{
	   					if( rpd == true )
	   					{
		  					DPD(damagedid, playerid, weaponid);
	   					}
	   					else
	   					{
							// Dies. Kill.
							KillPlayerid(damagedid, playerid, weaponid);
						}
					}
					fAdditionalDamage = 0.0;
				}
				WriteDMGMessage(damagedid,playerid, a[damagedid], weaponid, ad[damagedid], bodypart);
				return 1;

			}
			case 4: //GROIN 2
			{
				if(Swat[damagedid] == true)
				{
					if(fCurrentArmour > 0.0)
					{
						ad[damagedid] = fAdditionalDamage;
						if(fCurrentArmour > fAdditionalDamage)
						{
							SetPlayerArmour(damagedid, (fCurrentArmour - fAdditionalDamage));
							fAdditionalDamage = 0.0;
						}
						else
						{
							SetPlayerArmour(damagedid, 0.0);
							fAdditionalDamage -= fCurrentArmour;

						}

					}
					if(fAdditionalDamage > 0.0)
					{
						a[damagedid] = fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							Damage_SetPlayerHealthEx(damagedid, (fCurrentHealth - fAdditionalDamage));

						}
						else
						{
	 						if( rpd == true )
		   					{
			  					DPD(damagedid, playerid, weaponid);
		   					}
		   					else
		   					{
								// Dies. Kill.
								KillPlayerid(damagedid, playerid, weaponid);
							}

						}
						fAdditionalDamage = 0.0;
					}
					WriteDMGMessage(damagedid,playerid,a[damagedid], weaponid, ad[damagedid],  bodypart);
					return 1;
				}

				if(fAdditionalDamage > 0.0)
				{
					a[damagedid] = fAdditionalDamage;
					if(fCurrentHealth > fAdditionalDamage)
					{
						// Survives, deduct health.
						Damage_SetPlayerHealthEx(damagedid, (fCurrentHealth - fAdditionalDamage));
					}
					else
					{
	   					if( rpd == true )
	   					{
		  					DPD(damagedid, playerid, weaponid);
	   					}
	   					else
	   					{
							// Dies. Kill.
							KillPlayerid(damagedid, playerid, weaponid);
						}

					}
					fAdditionalDamage = 0.0;
				}
				WriteDMGMessage(damagedid,playerid,a[damagedid], weaponid, ad[damagedid],  bodypart);
				return 1;
			}
			case 5,6: //LEFT ARM / RIGHT ARM
			{
				if(Swat[damagedid] == true)
				{
					if(fCurrentArmour > 0.0)
					{
						ad[damagedid] = fAdditionalDamage;
						if(fCurrentArmour > fAdditionalDamage)
						{
							SetPlayerArmour(damagedid, (fCurrentArmour - fAdditionalDamage));
							fAdditionalDamage = 0.0;
						}
						else
						{
							SetPlayerArmour(damagedid, 0.0);
							fAdditionalDamage -= fCurrentArmour;
						}

					}
					if(fAdditionalDamage > 0.0)
					{
						a[damagedid] = fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							Damage_SetPlayerHealthEx(damagedid, (fCurrentHealth - fAdditionalDamage));
						}
						else
						{
		   					if( rpd == true )
		   					{
			  					DPD(damagedid, playerid, weaponid);
		   					}
		   					else
		   					{
								// Dies. Kill.
								KillPlayerid(damagedid, playerid, weaponid);
							}
						}
						fAdditionalDamage = 0.0;
					}
					WriteDMGMessage(damagedid,playerid,a[damagedid], weaponid, ad[damagedid],  bodypart);
					return 1;

				}

				new rand = random(3);
				switch(rand)
				{
					case 0:
					{
						if(fCurrentArmour > 0.0)
						{
							ad[damagedid] = fAdditionalDamage;
							if(fCurrentArmour > fAdditionalDamage)
							{
								SetPlayerArmour(damagedid, (fCurrentArmour - fAdditionalDamage));
								fAdditionalDamage = 0.0;
							}
							else
							{
								SetPlayerArmour(damagedid, 0.0);
								fAdditionalDamage -= fCurrentArmour;
							}

						}
						if(fAdditionalDamage > 0.0)
						{
							a[damagedid] = fAdditionalDamage;
							if(fCurrentHealth > fAdditionalDamage)
							{
								// Survives, deduct health.
								Damage_SetPlayerHealthEx(damagedid, (fCurrentHealth - fAdditionalDamage));
							}
							else
							{
			   					if( rpd == true )
			   					{
				  					DPD(damagedid, playerid, weaponid);
			   					}
			   					else
			   					{
									// Dies. Kill.
									KillPlayerid(damagedid, playerid, weaponid);
								}
							}
							fAdditionalDamage = 0.0;
						}
                        WriteDMGMessage(damagedid,playerid,a[damagedid], weaponid, ad[damagedid],  bodypart);
						return 1;
					}
					case 1, 2:
					{
						a[damagedid] = fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							Damage_SetPlayerHealthEx(damagedid,(fCurrentHealth - fAdditionalDamage));
						}
						else
						{
		   					if( rpd == true )
		   					{
			  					DPD(damagedid, playerid, weaponid);
		   					}
		   					else
		   					{
								// Dies. Kill.
								KillPlayerid(damagedid, playerid, weaponid);
							}
						}
						fAdditionalDamage = 0.0;
					}

				}
                WriteDMGMessage(damagedid,playerid,a[damagedid], weaponid, ad[damagedid],  bodypart);
				return 1;
			}

			case 7,8: //LEFT LEG & RIGHTLEG
			{
				new Float:HSD;
				HSD = (fAdditionalDamage * 0.50);
				if(Swat[damagedid] == true)
				{
					if(fCurrentArmour > 0.0)
					{
						ad[damagedid] = HSD;
						if(fCurrentArmour > HSD)
						{
							SetPlayerArmour(damagedid, (fCurrentArmour - HSD));
							HSD = 0.0;
                            WriteDMGMessage(damagedid,playerid,a[damagedid], weaponid, ad[damagedid],  bodypart);
                            return 1;
						}
						else
						{
							SetPlayerArmour(damagedid, 0.0);
							HSD -= fCurrentArmour;
						}

					}
					if(HSD > 0.0)
					{
						a[damagedid] = HSD;
						if(fCurrentHealth > HSD)
						{
							// Survives, deduct health
							Damage_SetPlayerHealthEx(damagedid, (fCurrentHealth - HSD));
						}
						else
						{
			   					if( rpd == true )
			   					{
				  					DPD(damagedid, playerid, weaponid);
			   					}
			   					else
			   					{
									// Dies. Kill.
									KillPlayerid(damagedid, playerid, weaponid);
								}
						}
						HSD = 0.0;
					}
					WriteDMGMessage(damagedid,playerid,a[damagedid], weaponid, ad[damagedid],  bodypart);
					return 1;

				}

				a[damagedid] = HSD;
				if(fCurrentHealth > HSD)
				{
					// Survives, deduct health.
					Damage_SetPlayerHealthEx(damagedid, (fCurrentHealth - HSD));
				}
				else
				{
					if( rpd == true )
					{
						DPD(damagedid, playerid, weaponid);
					}
					else
					{
						// Dies. Kill.
						KillPlayerid(damagedid, playerid, weaponid);
					}
				}
				HSD = 0.0;
				brokenleg[damagedid] = 1;
				KillTimer(LEGTIMER[damagedid]);
				LEGTIMER[damagedid] = SetTimerEx("LEGRESET", 120000, false, "i", damagedid);
				SendClientMessage(damagedid, COLOR_LIGHTRED, LEGMSG);
				WriteDMGMessage(damagedid,playerid,a[damagedid], weaponid, ad[damagedid],  bodypart);
				return 1;
			}
			case 9: // HEAD 7
			{

				new rand = random(3);
				switch(rand)
				{
					case 0:
					{

						new Float:HSD, Float:finaldmg;
						HSD = (fAdditionalDamage * 0.50);
						finaldmg = (fAdditionalDamage + HSD);
						a[damagedid] = finaldmg;
						if(fCurrentHealth > finaldmg)
						{
							Damage_SetPlayerHealthEx(damagedid, (fCurrentHealth - finaldmg));
						}
						else
						{
			   					if( rpd == true )
			   					{
				  					DPD(damagedid, playerid, weaponid);
			   					}
			   					else
			   					{
									// Dies. Kill.
									KillPlayerid(damagedid, playerid, weaponid);
								}
						}
						finaldmg = 0.0;
                        WriteDMGMessage(damagedid,playerid,a[damagedid], weaponid, ad[damagedid],  bodypart);
						return 1;
					}
					case 1, 2:
					{
						a[damagedid] = fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							Damage_SetPlayerHealthEx(damagedid, (fCurrentHealth - fAdditionalDamage));
						}
						else
						{
 								if( rpd == true )
			   					{
				  					DPD(damagedid, playerid, weaponid);
			   					}
			   					else
			   					{
									// Dies. Kill.
									KillPlayerid(damagedid, playerid, weaponid);
								}
						}
						fAdditionalDamage = 0.0;
                        WriteDMGMessage(damagedid,playerid,a[damagedid], weaponid, ad[damagedid],  bodypart);
						return 1;
					}

				}

			}

		}
	}
	return 1;
}
