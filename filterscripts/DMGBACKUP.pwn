



OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid, bodypart)
forward OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid, bodypart);
public OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid, bodypart)
{
	if(nodm)
	{
		SCM(issuerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"Damage system is disabled.");
		SetPlayerArmedWeapon(issuerid, 0);
		return 1;
	}

	if(AdminDuty[playerid] == 1)
	{
		SetPlayerHealth(playerid, 555.0);
		return 1;
	}

	if(DM[playerid] == 1 ) return DPDD(playerid);

	if ( DM1[playerid] == 1 )
	{
		SetPlayerHealth(playerid, 5);
		return 1;
	}


	if(Taser[issuerid] == 1 && weaponid == 23 && Trubber[playerid] == 0)
	{
		if(IsPlayerNearPlayer(issuerid, playerid, 25.0))
		{
			new stringt[MAX_PLAYER_NAME+77];
			ClearAnimations(playerid);
			format(stringt, sizeof(stringt), "SERVER: You hit %s with a tazer!", GetName(playerid));
			SendClientMessage(issuerid, COLOR_YELLOW, stringt);
			format(stringt, sizeof(stringt), "SERVER: You were hit by %s with a tazer!", GetName(issuerid));
			SendClientMessage(playerid, COLOR_YELLOW, stringt);
			new Float:Health;
			GetPlayerHealth(playerid, Health);
			SetPlayerHealth(playerid, Health);
			LoopingAnim(playerid, "PED", "KO_skid_front",4.1,0,1,1,1,0);
			format(stringt, sizeof(stringt), "* %s was hit by %s' tazer and fell on the ground.", GetICName(playerid), GetICName(issuerid));
			ProxDetector(30.0, playerid, stringt, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
			return 1;
		}
	}




	if(Rubber[issuerid] == 1 && Trubber[playerid] == 0 && weaponid == 25 || Rubber[issuerid] == 1 && Trubber[playerid] == 0 && weaponid == 27)
	{
		ClearAnimations(playerid);
		new string[128];
		format(string, sizeof(string), "SERVER: You hit %s with a rubberbullet!", GetName(playerid));
		SendClientMessage(issuerid, COLOR_YELLOW, string);
		format(string, sizeof(string), "SERVER: You were hit with a rubberbullet by %s", GetName(issuerid));
		SendClientMessage(playerid, COLOR_YELLOW, string);
		format(string, sizeof(string), "* %s was hit by a rubberbullet and falls on the ground.", GetICName(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
		ApplyAnimation(playerid, "SWEET", "Sweet_injuredloop", 4.0, 1, 0, 0, 0, 0);
		SetPlayerDrunkLevel(playerid, 4000);
		new Float:Health;
		GetPlayerHealth(playerid, Health);
		SetPlayerHealth(playerid, Health);
		return 1;
	}


	ts[playerid] ++;
	KillTimer(drt[playerid]);
	HPS[playerid] = SetTimerEx("HPSCHECK", 700, false, "i", playerid);
	drt[playerid] = SetTimerEx("resetdmg", 160000, false, "i", playerid);
	if(weaponid >= 0 && weaponid < sizeof(G_WEAPONDAMAGE))
	{
		new Float:fCurrentHealth,
		Float:fCurrentArmour,
		Float:fAdditionalDamage = G_WEAPONDAMAGE[weaponid][E_DAMAGE];
		GetPlayerHealth(playerid, fCurrentHealth);
		GetPlayerArmour(playerid, fCurrentArmour);
		if(fAdditionalDamage < 1.0)
		{
			return 1;
		}

		new
		Float:ad[MAX_PLAYERS],
		Float:a[MAX_PLAYERS];

		ddmg[playerid] = 1;
		switch(bodypart)
		{
			case 3: //TORSO 1
			{

				if(fCurrentArmour > 0.0)
				{
					TORSOARMOR[playerid] += fAdditionalDamage;
					ad[playerid] += fAdditionalDamage;
					if(fCurrentArmour > fAdditionalDamage)
					{
						SetPlayerArmour(playerid, (fCurrentArmour - fAdditionalDamage));
						fAdditionalDamage = 0.0;
					}
					else
					{
						fAdditionalDamage -= fCurrentArmour;
						SetPlayerArmour(playerid, 0.0);
					}
				}


				// Still damage to take after armour?
				if(fAdditionalDamage > 0.0)
				{
					// Will he survive? :o
					a[playerid] = fAdditionalDamage;
					TORSO[playerid] += fAdditionalDamage;
					if(fCurrentHealth > fAdditionalDamage)
					{
						SetPlayerHealth(playerid, (fCurrentHealth - fAdditionalDamage));
					}
					else
					{
						// Dies. Kill.
						SetPlayerHealth(playerid, 0.0);
					}
				}
				new tempdmg[128];
				format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to TORSO (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
				strcat(DMGstring[playerid], tempdmg);
				a[playerid] = 0.0;
				ad[playerid] = 0.0;
				fAdditionalDamage = 0.0;
				return 1;

			}
			case 4: //GROIN 2
			{
				if(Swat[playerid] == 1)
				{
					if(fCurrentArmour > 0.0)
					{
						GROINARMOR[playerid] += fAdditionalDamage;
						ad[playerid] += fAdditionalDamage;
						if(fCurrentArmour > fAdditionalDamage)
						{
							SetPlayerArmour(playerid, (fCurrentArmour - fAdditionalDamage));
							fAdditionalDamage = 0.0;
						}
						else
						{
							SetPlayerArmour(playerid, 0.0);
							fAdditionalDamage -= fCurrentArmour;

						}

					}
					if(fAdditionalDamage > 0.0)
					{
						a[playerid] = fAdditionalDamage;
						GROIN[playerid] += fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							SetPlayerHealth(playerid, (fCurrentHealth - fAdditionalDamage));

						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(playerid, 0.0);

						}
						fAdditionalDamage = 0.0;
					}
					new tempdmg[128];
					format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to GROIN (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
					strcat(DMGstring[playerid], tempdmg);
					a[playerid] = 0.0;
					ad[playerid] = 0.0;
					return 1;



				}

				if(fAdditionalDamage > 0.0)
				{
					GROIN[playerid] += fAdditionalDamage;
					a[playerid] = fAdditionalDamage;
					if(fCurrentHealth > fAdditionalDamage)
					{
						// Survives, deduct health.
						SetPlayerHealth(playerid, (fCurrentHealth - fAdditionalDamage));
						SetPlayerArmour(playerid, fCurrentArmour);
					}
					else
					{
						// Dies. Kill.
						SetPlayerHealth(playerid, 0.0);

					}
				}
				new tempdmg[128];
				if(a[playerid] > 1.0)
				{
					format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to GROIN (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
					strcat(DMGstring[playerid], tempdmg);
				}
				a[playerid] = 0.0;
				ad[playerid] = 0.0;
				fAdditionalDamage = 0.0;
				return 1;


			}
			case 5: //LEFT ARM 3
			{
				if(Swat[playerid] == 1)
				{
					if(fCurrentArmour > 0.0)
					{
						ad[playerid] = fAdditionalDamage;
						LEFTARMARMOR[playerid] += fAdditionalDamage;
						if(fCurrentArmour > fAdditionalDamage)
						{
							SetPlayerArmour(playerid, (fCurrentArmour - fAdditionalDamage));
							fAdditionalDamage = 0.0;
						}
						else
						{
							SetPlayerArmour(playerid, 0.0);
							fAdditionalDamage -= fCurrentArmour;
						}

					}
					if(fAdditionalDamage > 0.0)
					{
						a[playerid] = fAdditionalDamage;
						LEFTARM[playerid] += fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							SetPlayerHealth(playerid, (fCurrentHealth - fAdditionalDamage));
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(playerid, 0.0);

						}
						fAdditionalDamage = 0.0;
					}
					new tempdmg[128];
					format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to LEFT ARM (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
					strcat(DMGstring[playerid], tempdmg);
					a[playerid] = 0.0;
					ad[playerid] = 0.0;
					return 1;

				}



				new rand = random(3);
				switch(rand)
				{
					case 0:
					{
						if(fCurrentArmour > 0.0)
						{
							ad[playerid] = fAdditionalDamage;
							LEFTARMARMOR[playerid] += fAdditionalDamage;
							if(fCurrentArmour > fAdditionalDamage)
							{
								SetPlayerArmour(playerid, (fCurrentArmour - fAdditionalDamage));
								fAdditionalDamage = 0.0;
							}
							else
							{
								SetPlayerArmour(playerid, 0.0);
								fAdditionalDamage -= fCurrentArmour;
							}

						}
						if(fAdditionalDamage > 0.0)
						{
							a[playerid] = fAdditionalDamage;
							LEFTARM[playerid] += fAdditionalDamage;
							if(fCurrentHealth > fAdditionalDamage)
							{
								// Survives, deduct health.
								SetPlayerHealth(playerid, (fCurrentHealth - fAdditionalDamage));
							}
							else
							{
								// Dies. Kill.
								SetPlayerHealth(playerid, 0.0);

							}
						}
						new tempdmg[128];
						format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to LEFT ARM (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
						strcat(DMGstring[playerid], tempdmg);
						a[playerid] = 0.0;
						ad[playerid] = 0.0;
						fAdditionalDamage = 0.0;
						return 1;
					}
					case 1, 2:
					{
						a[playerid] = fAdditionalDamage;
						LEFTARM[playerid] += fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							SetPlayerHealth(playerid, (fCurrentHealth - fAdditionalDamage));
							SetPlayerArmour(playerid, fCurrentArmour);
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(playerid, 0.0);

						}
						fAdditionalDamage = 0.0;
					}

				}
				new tempdmg[128];
				format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to LEFT ARM (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
				strcat(DMGstring[playerid], tempdmg);
				a[playerid] = 0.0;
				ad[playerid] = 0.0;
				return 1;
			}

			case 6: // RIGHT ARM 4
			{
				if(Swat[playerid] == 1)
				{
					if(fCurrentArmour > 0.0)
					{
						ad[playerid] = fAdditionalDamage;
						RIGHTARMARMOR[playerid] += fAdditionalDamage;
						if(fCurrentArmour > fAdditionalDamage)
						{
							SetPlayerArmour(playerid, (fCurrentArmour - fAdditionalDamage));
							fAdditionalDamage = 0.0;
						}
						else
						{
							SetPlayerArmour(playerid, 0.0);
							fAdditionalDamage -= fCurrentArmour;
						}

					}
					if(fAdditionalDamage > 0.0)
					{
						a[playerid] = fAdditionalDamage;
						RIGHTARM[playerid] += fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							SetPlayerHealth(playerid, (fCurrentHealth - fAdditionalDamage));
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(playerid, 0.0);

						}
					}
					new tempdmg[128];
					format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to RIGHT ARM (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
					strcat(DMGstring[playerid], tempdmg);
					a[playerid] = 0.0;
					ad[playerid] = 0.0;
					return 1;
				}




				new rand = random(3);
				switch(rand)
				{
					case 0:
					{
						if(fCurrentArmour > 0.0)
						{
							ad[playerid] = fAdditionalDamage;
							RIGHTARMARMOR[playerid] += fAdditionalDamage;
							if(fCurrentArmour > fAdditionalDamage)
							{
								SetPlayerArmour(playerid, (fCurrentArmour - fAdditionalDamage));
								fAdditionalDamage = 0.0;
							}
							else
							{
								SetPlayerArmour(playerid, 0.0);
								fAdditionalDamage -= fCurrentArmour;

							}

						}
						if(fAdditionalDamage > 0.0)
						{
							a[playerid] = fAdditionalDamage;
							RIGHTARM[playerid] += fAdditionalDamage;
							if(fCurrentHealth > fAdditionalDamage)
							{
								// Survives, deduct health.
								SetPlayerHealth(playerid, (fCurrentHealth - fAdditionalDamage));
								SetPlayerArmour(playerid, fCurrentArmour);
							}
							else
							{
								// Dies. Kill.
								SetPlayerHealth(playerid, 0.0);

							}
						}
						new tempdmg[128];
						format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to RIGHT ARM (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
						strcat(DMGstring[playerid], tempdmg);
						a[playerid] = 0.0;
						ad[playerid] = 0.0;
						fAdditionalDamage = 0.0;
						return 1;
					}
					case 1, 2:
					{
						a[playerid] = fAdditionalDamage;
						RIGHTARM[playerid] += fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							SetPlayerHealth(playerid, (fCurrentHealth - fAdditionalDamage));
							SetPlayerArmour(playerid, fCurrentArmour);
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(playerid, 0.0);

						}
						fAdditionalDamage = 0.0;
					}

				}

				new tempdmg[128];
				format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to RIGHT ARM (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
				strcat(DMGstring[playerid], tempdmg);
				a[playerid] = 0.0;
				ad[playerid] = 0.0;
				fAdditionalDamage = 0.0;
				return 1;
			}
			case 7: //LEFT LEG 5
			{
				new Float:HSD;
				HSD = (fAdditionalDamage * 0.50);
				if(Swat[playerid] == 1)
				{
					if(fCurrentArmour > 0.0)
					{
						ad[playerid] = HSD;
						LEFTLEGARMOR[playerid] = HSD;
						if(fCurrentArmour > HSD)
						{
							SetPlayerArmour(playerid, (fCurrentArmour - HSD));
							HSD = 0.0;
							new tempdmg[128];
							format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to LEFT LEG (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
							strcat(DMGstring[playerid], tempdmg);
							a[playerid] = 0.0;
							ad[playerid] = 0.0;
							return 1;
						}
						else
						{
							SetPlayerArmour(playerid, 0.0);
							HSD -= fCurrentArmour;

						}

					}
					if(fAdditionalDamage > 0.0)
					{
						a[playerid] = HSD;
						LEFTLEG[playerid] += HSD;
						if(fCurrentHealth > HSD)
						{
							// Survives, deduct health
							SetPlayerHealth(playerid, (fCurrentHealth - HSD));
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(playerid, 0.0);

						}
					}
					fAdditionalDamage = 0.0;
					new tempdmg[128];
					format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to LEFT LEG (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
					strcat(DMGstring[playerid], tempdmg);
					a[playerid] = 0.0;
					ad[playerid] = 0.0;
					return 1;

				}

				a[playerid] = HSD;
				LEFTLEG[playerid] += HSD;
				if(fCurrentHealth > HSD)
				{
					// Survives, deduct health.
					SetPlayerHealth(playerid, (fCurrentHealth - HSD));
					SetPlayerArmour(playerid, fCurrentArmour);
				}
				else
				{
					// Dies. Kill.
					SetPlayerHealth(playerid, 0.0);

				}
				HSD = 0.0;
				brokenleg[playerid] = 1;
				KillTimer(LEGTIMER[playerid]);
				LEGTIMER[playerid] = SetTimerEx("LEGRESET", 120000, false, "i", playerid);
				if(LEGNOTICE[playerid] == 0)
				{
					SendClientMessage(playerid, COLOR_LIGHTRED, LEGMSG);
					LEGNOTICE[playerid] = 1;
				}
				new tempdmg[128];
				format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to LEFT LEG (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
				strcat(DMGstring[playerid], tempdmg);
				a[playerid] = 0.0;
				ad[playerid] = 0.0;
				return 1;
			}
			case 8: // RIGHT LEG 6
			{
				new Float:HSD;
				HSD = (fAdditionalDamage * 0.50);
				if(Swat[playerid] == 1)
				{
					if(fCurrentArmour > 0.0)
					{
						ad[playerid] = HSD;
						LEFTLEGARMOR[playerid] = HSD;
						if(fCurrentArmour > HSD)
						{
							SetPlayerArmour(playerid, (fCurrentArmour - HSD));
							HSD = 0.0;
							new tempdmg[128];
							format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to RIGHT LEG (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
							strcat(DMGstring[playerid], tempdmg);
							a[playerid] = 0.0;
							ad[playerid] = 0.0;
							return 1;
						}
						else
						{
							SetPlayerArmour(playerid, 0.0);
							HSD -= fCurrentArmour;

						}

					}
					if(fAdditionalDamage > 0.0)
					{
						a[playerid] = HSD;
						LEFTLEG[playerid] += HSD;
						if(fCurrentHealth > HSD)
						{
							// Survives, deduct health
							SetPlayerHealth(playerid, (fCurrentHealth - HSD));
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(playerid, 0.0);

						}
					}
					fAdditionalDamage = 0.0;
					new tempdmg[128];
					format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to RIGHT LEG (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
					strcat(DMGstring[playerid], tempdmg);
					a[playerid] = 0.0;
					ad[playerid] = 0.0;
					return 1;

				}


				a[playerid] = HSD;
				LEFTLEG[playerid] += HSD;
				if(fCurrentHealth > HSD)
				{
					// Survives, deduct health.
					SetPlayerHealth(playerid, (fCurrentHealth - HSD));
					SetPlayerArmour(playerid, fCurrentArmour);
				}
				else
				{
					// Dies. Kill.
					SetPlayerHealth(playerid, 0.0);

				}
				fAdditionalDamage = 0.0;
				brokenleg[playerid] = 1;
				KillTimer(LEGTIMER[playerid]);
				LEGTIMER[playerid] = SetTimerEx("LEGRESET", 120000, false, "i", playerid);
				if(LEGNOTICE[playerid] == 0)
				{
					SendClientMessage(playerid, COLOR_LIGHTRED, LEGMSG);
					LEGNOTICE[playerid] = 1;
				}
				new tempdmg[128];
				format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to RIGHT LEG (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
				strcat(DMGstring[playerid], tempdmg);
				a[playerid] = 0.0;
				ad[playerid] = 0.0;
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
						HEAD[playerid] += finaldmg;
						a[playerid] = finaldmg;
						if(fCurrentHealth > finaldmg)
						{
							SetPlayerHealth(playerid, (fCurrentHealth - finaldmg));
							SetPlayerArmour(playerid, fCurrentArmour);
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(playerid, 0.0);
						}
						finaldmg = 0.0;
						new tempdmg[128];
						format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to HEAD (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
						strcat(DMGstring[playerid], tempdmg);
						a[playerid] = 0.0;
						ad[playerid] = 0.0;
						return 1;
					}
					case 1, 2:
					{
						a[playerid] = fAdditionalDamage;
						HEAD[playerid] += fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							SetPlayerHealth(playerid, (fCurrentHealth - fAdditionalDamage));
							SetPlayerArmour(playerid, fCurrentArmour);
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(playerid, 0.0);
						}
						fAdditionalDamage = 0.0;
						new tempdmg[128];
						format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to HEAD (kevlarhit: %.1f) %s\n", a[playerid], GetWName(weaponid), ad[playerid], MinTime());
						strcat(DMGstring[playerid], tempdmg);
						a[playerid] = 0.0;
						ad[playerid] = 0.0;
						return 1;
					}

				}

			}

		}
	}
	return 1;
}









forward OnPlayerGiveDamage(playerid, damagedid, Float: amount, weaponid, bodypart);
public OnPlayerGiveDamage(playerid, damagedid, Float: amount, weaponid, bodypart)
{
	if(nodm)
	{
		SCM(playerid, COLOR_LIGHTRED, "ERROR: "COL_WHITE"Damage system is disabled.");
		SetPlayerArmedWeapon(playerid, 0);
		return 1;
	}

	if(AdminDuty[damagedid] == 1)
	{
		SetPlayerHealth(damagedid, 555.0);
		return 1;
	}

	if(DM[damagedid] == 1 ) return DPDD(damagedid);

	if ( DM1[damagedid] == 1 )
	{
		SetPlayerHealth(damagedid, 5);
		return 1;
	}


	if(Taser[playerid] == 1 && weaponid == 23 && Trubber[damagedid] == 0)
	{
		if(IsPlayerNearPlayer(playerid, damagedid, 25.0))
		{
			new stringt[MAX_PLAYER_NAME+77];
			ClearAnimations(damagedid);
			format(stringt, sizeof(stringt), "SERVER: You hit %s with a tazer!", GetName(damagedid));
			SendClientMessage(playerid, COLOR_YELLOW, stringt);
			format(stringt, sizeof(stringt), "SERVER: You were hit by %s with a tazer!", GetName(playerid));
			SendClientMessage(damagedid, COLOR_YELLOW, stringt);
			new Float:Health;
			GetPlayerHealth(damagedid, Health);
			SetPlayerHealth(damagedid, Health);
			LoopingAnim(damagedid, "PED", "KO_skid_front",4.1,0,1,1,1,0);
			format(stringt, sizeof(stringt), "* %s was hit by %s' tazer and fell on the ground.", GetICName(damagedid), GetICName(playerid));
			ProxDetector(30.0, damagedid, stringt, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
			return 1;
		}
	}




	if(Rubber[playerid] == 1 && Trubber[damagedid] == 0 && weaponid == 25 || Rubber[playerid] == 1 && Trubber[damagedid] == 0 && weaponid == 27)
	{
		ClearAnimations(damagedid);
		new string[128];
		format(string, sizeof(string), "SERVER: You hit %s with a rubberbullet!", GetName(damagedid));
		SendClientMessage(playerid, COLOR_YELLOW, string);
		format(string, sizeof(string), "SERVER: You were hit with a rubberbullet by %s", GetName(playerid));
		SendClientMessage(damagedid, COLOR_YELLOW, string);
		format(string, sizeof(string), "* %s was hit by a rubberbullet and falls on the ground.", GetICName(damagedid));
		ProxDetector(30.0, damagedid, string, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
		ApplyAnimation(damagedid, "SWEET", "Sweet_injuredloop", 4.0, 1, 0, 0, 0, 0);
		SetPlayerDrunkLevel(damagedid, 4000);
		new Float:Health;
		GetPlayerHealth(damagedid, Health);
		SetPlayerHealth(damagedid, Health);
		return 1;
	}


	ts[damagedid] ++;
	KillTimer(drt[damagedid]);
	HPS[damagedid] = SetTimerEx("HPSCHECK", 700, false, "i", damagedid);
	drt[damagedid] = SetTimerEx("resetdmg", 160000, false, "i", damagedid);
	if(weaponid >= 0 && weaponid < sizeof(G_WEAPONDAMAGE))
	{
		new Float:fCurrentHealth,
		Float:fCurrentArmour,
		Float:fAdditionalDamage = G_WEAPONDAMAGE[weaponid][E_DAMAGE];
		GetPlayerHealth(damagedid, fCurrentHealth);
		GetPlayerArmour(damagedid, fCurrentArmour);
		if(fAdditionalDamage < 1.0)
		{
			return 1;
		}

		new
		Float:ad[MAX_PLAYERS],
		Float:a[MAX_PLAYERS];

		ddmg[damagedid] = 1;
		switch(bodypart)
		{
			case 3: //TORSO 1
			{

				if(fCurrentArmour > 0.0)
				{
					TORSOARMOR[damagedid] += fAdditionalDamage;
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
					TORSO[damagedid] += fAdditionalDamage;
					if(fCurrentHealth > fAdditionalDamage)
					{
						SetPlayerHealth(damagedid, (fCurrentHealth - fAdditionalDamage));
					}
					else
					{
						// Dies. Kill.
						SetPlayerHealth(damagedid, 0.0);
					}
				}
				new tempdmg[128];
				format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to TORSO (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
				strcat(DMGstring[damagedid], tempdmg);
				a[damagedid] = 0.0;
				ad[damagedid] = 0.0;
				fAdditionalDamage = 0.0;
				return 1;

			}
			case 4: //GROIN 2
			{
				if(Swat[damagedid] == 1)
				{
					if(fCurrentArmour > 0.0)
					{
						GROINARMOR[damagedid] += fAdditionalDamage;
						ad[damagedid] += fAdditionalDamage;
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
						GROIN[damagedid] += fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							SetPlayerHealth(damagedid, (fCurrentHealth - fAdditionalDamage));

						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(damagedid, 0.0);

						}
						fAdditionalDamage = 0.0;
					}
					new tempdmg[128];
					format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to GROIN (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
					strcat(DMGstring[damagedid], tempdmg);
					a[damagedid] = 0.0;
					ad[damagedid] = 0.0;
					return 1;



				}

				if(fAdditionalDamage > 0.0)
				{
					GROIN[damagedid] += fAdditionalDamage;
					a[damagedid] = fAdditionalDamage;
					if(fCurrentHealth > fAdditionalDamage)
					{
						// Survives, deduct health.
						SetPlayerHealth(damagedid, (fCurrentHealth - fAdditionalDamage));
						SetPlayerArmour(damagedid, fCurrentArmour);
					}
					else
					{
						// Dies. Kill.
						SetPlayerHealth(damagedid, 0.0);

					}
				}
				new tempdmg[128];
				if(a[damagedid] > 1.0)
				{
					format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to GROIN (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
					strcat(DMGstring[damagedid], tempdmg);
				}
				a[damagedid] = 0.0;
				ad[damagedid] = 0.0;
				fAdditionalDamage = 0.0;
				return 1;


			}
			case 5: //LEFT ARM 3
			{
				if(Swat[damagedid] == 1)
				{
					if(fCurrentArmour > 0.0)
					{
						ad[damagedid] = fAdditionalDamage;
						LEFTARMARMOR[damagedid] += fAdditionalDamage;
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
						LEFTARM[damagedid] += fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							SetPlayerHealth(damagedid, (fCurrentHealth - fAdditionalDamage));
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(damagedid, 0.0);

						}
						fAdditionalDamage = 0.0;
					}
					new tempdmg[128];
					format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to LEFT ARM (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
					strcat(DMGstring[damagedid], tempdmg);
					a[damagedid] = 0.0;
					ad[damagedid] = 0.0;
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
							LEFTARMARMOR[damagedid] += fAdditionalDamage;
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
							LEFTARM[damagedid] += fAdditionalDamage;
							if(fCurrentHealth > fAdditionalDamage)
							{
								// Survives, deduct health.
								SetPlayerHealth(damagedid, (fCurrentHealth - fAdditionalDamage));
							}
							else
							{
								// Dies. Kill.
								SetPlayerHealth(damagedid, 0.0);

							}
						}
						new tempdmg[128];
						format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to LEFT ARM (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
						strcat(DMGstring[damagedid], tempdmg);
						a[damagedid] = 0.0;
						ad[damagedid] = 0.0;
						fAdditionalDamage = 0.0;
						return 1;
					}
					case 1, 2:
					{
						a[damagedid] = fAdditionalDamage;
						LEFTARM[damagedid] += fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							SetPlayerHealth(damagedid, (fCurrentHealth - fAdditionalDamage));
							SetPlayerArmour(damagedid, fCurrentArmour);
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(damagedid, 0.0);

						}
						fAdditionalDamage = 0.0;
					}

				}
				new tempdmg[128];
				format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to LEFT ARM (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
				strcat(DMGstring[damagedid], tempdmg);
				a[damagedid] = 0.0;
				ad[damagedid] = 0.0;
				return 1;
			}

			case 6: // RIGHT ARM 4
			{
				if(Swat[damagedid] == 1)
				{
					if(fCurrentArmour > 0.0)
					{
						ad[damagedid] = fAdditionalDamage;
						RIGHTARMARMOR[damagedid] += fAdditionalDamage;
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
						RIGHTARM[damagedid] += fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							SetPlayerHealth(damagedid, (fCurrentHealth - fAdditionalDamage));
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(damagedid, 0.0);

						}
					}
					new tempdmg[128];
					format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to RIGHT ARM (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
					strcat(DMGstring[damagedid], tempdmg);
					a[damagedid] = 0.0;
					ad[damagedid] = 0.0;
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
							RIGHTARMARMOR[damagedid] += fAdditionalDamage;
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
							RIGHTARM[damagedid] += fAdditionalDamage;
							if(fCurrentHealth > fAdditionalDamage)
							{
								// Survives, deduct health.
								SetPlayerHealth(damagedid, (fCurrentHealth - fAdditionalDamage));
								SetPlayerArmour(damagedid, fCurrentArmour);
							}
							else
							{
								// Dies. Kill.
								SetPlayerHealth(damagedid, 0.0);

							}
						}
						new tempdmg[128];
						format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to RIGHT ARM (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
						strcat(DMGstring[damagedid], tempdmg);
						a[damagedid] = 0.0;
						ad[damagedid] = 0.0;
						fAdditionalDamage = 0.0;
						return 1;
					}
					case 1, 2:
					{
						a[damagedid] = fAdditionalDamage;
						RIGHTARM[damagedid] += fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							// Survives, deduct health.
							SetPlayerHealth(damagedid, (fCurrentHealth - fAdditionalDamage));
							SetPlayerArmour(damagedid, fCurrentArmour);
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(damagedid, 0.0);

						}
						fAdditionalDamage = 0.0;
					}

				}

				new tempdmg[128];
				format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to RIGHT ARM (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
				strcat(DMGstring[damagedid], tempdmg);
				a[damagedid] = 0.0;
				ad[damagedid] = 0.0;
				fAdditionalDamage = 0.0;
				return 1;
			}
			case 7: //LEFT LEG 5
			{
				new Float:HSD;
				HSD = (fAdditionalDamage * 0.50);
				if(Swat[damagedid] == 1)
				{
					if(fCurrentArmour > 0.0)
					{
						ad[damagedid] = HSD;
						LEFTLEGARMOR[damagedid] = HSD;
						if(fCurrentArmour > HSD)
						{
							SetPlayerArmour(damagedid, (fCurrentArmour - HSD));
							HSD = 0.0;
							new tempdmg[128];
							format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to LEFT LEG (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
							strcat(DMGstring[damagedid], tempdmg);
							a[damagedid] = 0.0;
							ad[damagedid] = 0.0;
							return 1;
						}
						else
						{
							SetPlayerArmour(damagedid, 0.0);
							HSD -= fCurrentArmour;

						}

					}
					if(fAdditionalDamage > 0.0)
					{
						a[damagedid] = HSD;
						LEFTLEG[damagedid] += HSD;
						if(fCurrentHealth > HSD)
						{
							// Survives, deduct health
							SetPlayerHealth(damagedid, (fCurrentHealth - HSD));
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(damagedid, 0.0);

						}
					}
					fAdditionalDamage = 0.0;
					new tempdmg[128];
					format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to LEFT LEG (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
					strcat(DMGstring[damagedid], tempdmg);
					a[damagedid] = 0.0;
					ad[damagedid] = 0.0;
					return 1;

				}

				a[damagedid] = HSD;
				LEFTLEG[damagedid] += HSD;
				if(fCurrentHealth > HSD)
				{
					// Survives, deduct health.
					SetPlayerHealth(damagedid, (fCurrentHealth - HSD));
					SetPlayerArmour(damagedid, fCurrentArmour);
				}
				else
				{
					// Dies. Kill.
					SetPlayerHealth(damagedid, 0.0);

				}
				HSD = 0.0;
				brokenleg[damagedid] = 1;
				KillTimer(LEGTIMER[damagedid]);
				LEGTIMER[damagedid] = SetTimerEx("LEGRESET", 120000, false, "i", damagedid);
				if(LEGNOTICE[damagedid] == 0)
				{
					SendClientMessage(damagedid, COLOR_LIGHTRED, LEGMSG);
					LEGNOTICE[damagedid] = 1;
				}
				new tempdmg[128];
				format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to LEFT LEG (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
				strcat(DMGstring[damagedid], tempdmg);
				a[damagedid] = 0.0;
				ad[damagedid] = 0.0;
				return 1;
			}
			case 8: // RIGHT LEG 6
			{
				new Float:HSD;
				HSD = (fAdditionalDamage * 0.50);
				if(Swat[damagedid] == 1)
				{
					if(fCurrentArmour > 0.0)
					{
						ad[damagedid] = HSD;
						LEFTLEGARMOR[damagedid] = HSD;
						if(fCurrentArmour > HSD)
						{
							SetPlayerArmour(damagedid, (fCurrentArmour - HSD));
							HSD = 0.0;
							new tempdmg[128];
							format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to RIGHT LEG (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
							strcat(DMGstring[damagedid], tempdmg);
							a[damagedid] = 0.0;
							ad[damagedid] = 0.0;
							return 1;
						}
						else
						{
							SetPlayerArmour(damagedid, 0.0);
							HSD -= fCurrentArmour;

						}

					}
					if(fAdditionalDamage > 0.0)
					{
						a[damagedid] = HSD;
						LEFTLEG[damagedid] += HSD;
						if(fCurrentHealth > HSD)
						{
							// Survives, deduct health
							SetPlayerHealth(damagedid, (fCurrentHealth - HSD));
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(damagedid, 0.0);

						}
					}
					fAdditionalDamage = 0.0;
					new tempdmg[128];
					format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to RIGHT LEG (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
					strcat(DMGstring[damagedid], tempdmg);
					a[damagedid] = 0.0;
					ad[damagedid] = 0.0;
					return 1;

				}


				a[damagedid] = HSD;
				LEFTLEG[damagedid] += HSD;
				if(fCurrentHealth > HSD)
				{
					// Survives, deduct health.
					SetPlayerHealth(damagedid, (fCurrentHealth - HSD));
					SetPlayerArmour(damagedid, fCurrentArmour);
				}
				else
				{
					// Dies. Kill.
					SetPlayerHealth(damagedid, 0.0);

				}
				fAdditionalDamage = 0.0;
				brokenleg[damagedid] = 1;
				KillTimer(LEGTIMER[damagedid]);
				LEGTIMER[damagedid] = SetTimerEx("LEGRESET", 120000, false, "i", damagedid);
				if(LEGNOTICE[damagedid] == 0)
				{
					SendClientMessage(damagedid, COLOR_LIGHTRED, LEGMSG);
					LEGNOTICE[damagedid] = 1;
				}
				new tempdmg[128];
				format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to RIGHT LEG (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
				strcat(DMGstring[damagedid], tempdmg);
				a[damagedid] = 0.0;
				ad[damagedid] = 0.0;
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
						HEAD[damagedid] += finaldmg;
						a[damagedid] = finaldmg;
						if(fCurrentHealth > finaldmg)
						{
							SetPlayerHealth(damagedid, (fCurrentHealth - finaldmg));
							SetPlayerArmour(damagedid, fCurrentArmour);
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(damagedid, 0.0);
						}
						finaldmg = 0.0;
						new tempdmg[128];
						format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to HEAD (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
						strcat(DMGstring[damagedid], tempdmg);
						a[damagedid] = 0.0;
						ad[damagedid] = 0.0;
						return 1;
					}
					case 1, 2:
					{
						a[damagedid] = fAdditionalDamage;
						HEAD[damagedid] += fAdditionalDamage;
						if(fCurrentHealth > fAdditionalDamage)
						{
							SetPlayerHealth(damagedid, (fCurrentHealth - fAdditionalDamage));
							SetPlayerArmour(damagedid, fCurrentArmour);
						}
						else
						{
							// Dies. Kill.
							SetPlayerHealth(damagedid, 0.0);
						}
						fAdditionalDamage = 0.0;
						new tempdmg[128];
						format(tempdmg, sizeof(tempdmg), "%.1f dmg from %s to HEAD (kevlarhit: %.1f) %s\n", a[damagedid], GetWName(weaponid), ad[damagedid], MinTime());
						strcat(DMGstring[damagedid], tempdmg);
						a[damagedid] = 0.0;
						ad[damagedid] = 0.0;
						return 1;
					}

				}

			}

		}
	}
	return 1;
}

