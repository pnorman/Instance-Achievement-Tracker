if(GetLocale() ~= 'ruRU') then return end

local _, core = ...
local baseLocale = {
	["- Announce to chat players who are missing achievements for certain bosses"] = "- Объявить в чат игроков, у которых отсутствуют достижения на определенных боссов",
	["- Announce to chat tactics for a certain boss"] = "- Объявить тактику в чат для определенного босса",
	["- Keeps track of achievements which require you to kill so many mobs within a certain time period. It will announce to chat when enough mobs have spawned and whether they were killed in the time period."] = "- Следит за достижениями, которые требуют, чтобы вы убили так много мобов в течение определенного периода времени. Он сообщит, когда появилось достаточно мобов и были ли они убиты в течение периода времени.",
	["- Scans all players in the group to see which achievements each player is missing for the current instance"] = "- Проверяет всех игроков в группе, чтобы увидеть, какие достижения у каждого игрока отсутствуют для текущего подземелья",
	["- Tracks when the criteria of instance achievements has been failed and outputs this to chat"] = "- Сообщение, когда критерии достижений подземелья провалены и выводят его в чат",
	["- Tracks when the criteria of instance achievements have been met and output this to chat"] = "- Сообщение, когда критерии достижений подземелья выполнены и выводят его в чат",
	["(Enter instance to start scanning)"] = "(Войдите в подземелье, чтобы начать сканирование)",
	["Atal_Dazar_Yazma"] = "Все игроки, входящие в состав группы, за исключением танка, должны рассредоточиться и оставаться возле одной из жаровен, пока босс будет применять способность %s. Жаровни Пламени Тьмы будут гореть примерно 25 сек. — рекомендуем зажигать жаровни лишь тогда, когда у босса останется от 5 до 10%% здоровья.",
	["AtalDazar_Other"] = "В ходе прохождения подземелья IAT_122969 будет применять к случайному игроку %s способность, обращающую противника в существо на 5 сек. После того, как действие эффекта прекратится, все игроки, находящиеся рядом с этим игроком, также обратятся в это существо. \\n\\n Рекомендуем расправиться со всеми противниками в подземелье до начала боя с IAT_122969. Вам придется подводить знахарку к каждому боссу подземелья. Также помогут классы, имеющие способности контроля, действующие в течение долгого периода времени (Монахи с %s, Охотники с %s, Маги с %s). Не позволяйте знахарке освободиться из-под эффектов контроля до того, пока у босса не останется мало здоровья. Если в группе отсутствуют классы, имеющие способности контроля, то сосредоточьте усилия на прерывании применения способности %s в ходе всего боя.",
	["AtalDazar_Priestess_AlunZa"] = "Босс будет призывать дополнительных противников с помощью заклинания %s. Призванный противник будет идти к лужам %s и осушать их. Когда луж не останется, противник начнет атаковать игроков. В этот момент игроки должны применить эффект контроля к нему, чтобы избежать получения дополнительного урона. После осушения 8 луж %s, он обратиться в IAT_131140.",
	["Core_AchievementScanFinished"] = "Сканирование достижений завершено",
	["Core_AchievementTrackingEnabledFor"] = "Отслеживание достижений включено для",
	["Core_CommandEnableTracking"] = "включить/отключить отслеживание достижений аддоном IAT",
	["Core_Commands"] = "Список команд",
	["Core_Counter"] = "Счетчик",
	["Core_CriteriaMet"] = "Критерии были выполнены. Босс теперь может быть убит!",
	["Core_Enable"] = "включить",
	["Core_EnableAchievementTracking"] = "Вы хотите включить отслеживание достижений для",
	["Core_Failed"] = "НЕ УДАЛОСЬ!",
	["Core_GameFreezeWarning"] = "Это может зафризить вашу игру на несколько секунд",
	["Core_help"] = "помощь",
	["Core_ListCommands"] = "показывает список доступных команд",
	["Core_No"] = "Нет",
	["Core_NoTrackingForInstance"] = "Аддон IAT не может отслеживать какие-либо достижения для этой битвы",
	["Core_PersonalAchievement"] = "Личное Достижение",
	["Core_Reason"] = "Причина",
	["Core_StartingAchievementScan"] = "Запуск сканирования достижений для",
	["Core_TrackAchievements"] = "Отслеживать Достижения",
	["Core_Yes"] = "Да",
	["Features"] = "Возможности",
	["Freehold_HarlanSweete"] = "%s нацеливает на случайного игрока %s, этот игрок должен будет расположиться рядом с одним из сундуков, чтобы они в конечном итоге были уничтожены.",
	["Freehold_RingOfBooty"] = "Для этого достижения вам нужно будет собрать 3 предмета по всему подземелью. %s появляется в гнезде у первого босса после того, как вы победили его, %s находится на вершине платформы в Ромовом квартале, а %s можно после убийства третьего босса.",
	["Freehold_SkycapNKragg"] = "Чтобы вызвать IAT_138314, вы должны разместить %s, прежде чем атаковать босса.",
	["GUI_Achievement"] = "Достижение",
	["GUI_Achievements"] = "Достижений",
	["GUI_AchievementsCompletedForInstance"] = "Все достижения были завершены",
	["GUI_AchievementsDiscordDescription"] = "Тактика любезно предоставлена Дискорд сервером по достижениям, сообществом, участники которого могут встречаться с единомышленниками и формировать группы для различных достижений.",
	["GUI_AchievementsDiscordTitle"] = "Дискорд Достижений",
	["GUI_AnnounceMessagesToRaidWarning"] = "Отправлять сообщение в чат Оповещение Рейда",
	["GUI_AnnounceTracking"] = "Объявить о достижениях, отслеживаемых в группе",
	["GUI_Author"] = "Автор",
	["GUI_BattleForAzeroth"] = "Battle for Azeroth",
	["GUI_Cataclysm"] = "Cataclysm",
	["GUI_Disabled"] = "Провалено",
	["GUI_EnableAddon"] = "Включить Аддон",
	["GUI_EnableAutomaticCombatLogging"] = "Включить автоматическое ведение журнала боя",
	["GUI_Enabled"] = "Включено",
	["GUI_EnterInstanceToStartScanning"] = "Войдите в подземелье, чтобы начать сканирование",
	["GUI_GreyOutCompletedAchievements"] = "Серый цвет завершенных достижений",
	["GUI_HideCompletedAchievements"] = "Скрыть выполненные достижения",
	["GUI_Legion"] = "Legion",
	["GUI_MinimapDisabled"] = "Значок у мини-карты отключен",
	["GUI_MinimapEnabled"] = "Значок у мини-карты включен",
	["GUI_MistsOfPandaria"] = "Mists of Pandaria",
	["GUI_NoPlayersNeedAchievement"] = "Ни одному игроку в группе не нужно это достижение",
	["GUI_OnlyDisplayMissingAchievements"] = "Отображать только невыполненные достижения",
	["GUI_OnlyTrackMissingAchievements"] = "Только отслеживать невыполненные достижения",
	["GUI_Options"] = "Настройки",
	["GUI_OutputPlayers"] = "Показать Достижение",
	["GUI_OutputTactics"] = "Показать Тактику",
	["GUI_Players"] = "Игроки",
	["GUI_PlayersWhoNeedAchievement"] = "Игроки, которые нуждаются в достижении",
	["GUI_PlaySoundOnFailed"] = "Воспроизведение звука при провале достижения",
	["GUI_PlaySoundOnSuccess"] = "Воспроизвести звук, когда достижение завершено",
	["GUI_ScanInProgress"] = "сканирование продолжается",
	["GUI_SelectSound"] = "Выберите Звук",
	["GUI_Tactics"] = "Тактик",
	["GUI_ToggleMinimap"] = "Показывать кнопку на Миникарте",
	["GUI_Track"] = "Следить",
	["GUI_Tracking"] = "Отслеживание",
	["GUI_TrackingDisabled"] = "(Отслеживание достижений отключено)",
	["GUI_TrackingNumber"] = "В настоящее время отслеживается",
	["Gui_TranslatorNames"] = "Хоргул-Гордунни",
	["GUI_Translators"] = "Перевод на Русский язык",
	["GUI_WarlordsOfDraenor"] = "Warlords of Draenor",
	["GUI_WrathOfTheLichKing"] = "Wrath of the Lich King",
	["Instance Achievement Tracker"] = "Instance Achievement Tracker",
	["Instances_Other"] = "Общее",
	["Instances_TrashAfterThirdBoss"] = "Треш после третьего босса",
	["KingsRest_DazarTheFirstKing"] = "Это достижение можно получить во время сражения с %s последним боссом подземелья. Два игрока должны встать на камни, стоящих напротив двух саркофагов, после чего вокруг камней появятся огоньки. После того, как все огоньки загорятся, саркофаг, расположенный с правой стороны, начнет трястись. Это означает, что вы можете убить босса.",
	["KingsRest_MchimbaTheEmbalmer"] = "Для этого достижения вам нужно будет освободить игрока, на которого нацелено %s для этого использовать %s нельзя более одного раза. А также, вы должны освободить игрока до того, как босс завершит применение способности %s.\\n\\n Примечание: игроки сообщают, что столкнулись с небольшой ошибкой при выполнении достижения. Застрявшему игроку не рекомендуется использовать %s до того как босс применил %s.",
	["KingsRest_Other"] = "Первое украшение можно найти в первой комнате подземелья, позади саркофагов за корзинами.\\n Второе украшение можно найти в пролете по пути к первому боссу, за лестницами, расположенными в конце платформы.\\n Местоположение третьего украшения и его получения (смотрите гайд на WowHead)\\n Четвертое украшение можно найти у входа в помещение с заключительным боссом, на вершине правой колонны.",
	["Main"] = "Главное Меню",
	["Shared_AddKillCounter"] = "%s счетчик убийств",
	["Shared_CompletedBossKill"] = "будет завершено после убийства босса",
	["Shared_DamageFromAbility"] = "%s урон",
	["Shared_DirectHitFromAbility"] = "%s прямое попадание",
	["Shared_DoesNotMeetCritera"] = "не соответствует критериям для",
	["Shared_Eight"] = "8",
	["Shared_Eighteen"] = "18",
	["Shared_Eleven"] = "11",
	["Shared_FailedPersonalAchievement"] = "%s провалено %s (причина: %s) (личное достижение)",
	["Shared_Fifteen"] = "15",
	["Shared_Five"] = "5",
	["Shared_Found"] = "найдено",
	["Shared_Four"] = "4",
	["Shared_Fourteen"] = "14",
	["Shared_GotHit"] = "получил удар",
	["Shared_HasBeenHitWith"] = "был поражен",
	["Shared_HasBeenInfectedWith"] = "был заражен",
	["Shared_HasCompleted"] = "завершил",
	["Shared_HasFailed"] = "провалил",
	["Shared_HasGained"] = "получил",
	["Shared_HasLost"] = "потерял",
	["Shared_HeCanNowBeKileld"] = "Теперь он может быть убит",
	["Shared_JustKillBoss"] = "На максимальном уровне вы можете просто убить босса, чтобы получить это достижение",
	["Shared_JustKillBossSingleTarget"] = "На максимальном уровне, вы можете просто убить босса при этом вы не должны использовать АОЕ атаки, чтобы получить это достижение",
	["Shared_KillTheAddNow"] = "Убей %s сейчас",
	["Shared_MeetsCritera"] = "соответствует критериям для",
	["Shared_Nine"] = "9",
	["Shared_Nineteen"] = "19",
	["Shared_NotHit"] = "не получил удар",
	["Shared_One"] = "1",
	["Shared_PlayersHit"] = "игроки бьют:",
	["Shared_PlayersWhoStillNeedToGetHit"] = "Игроки, которым еще нужно ударить:",
	["Shared_PlayersWhoStillNeedToGetResurrected"] = "Чтобы получить достижение, необходимо воскресить следующих игроков:",
	["Shared_ReportString"] = "Пожалуйста, сообщите следующую строку автору IAT",
	["Shared_Seven"] = "7",
	["Shared_Seventeen"] = "17",
	["Shared_SheCanNowBeKilled"] = "Теперь она может быть убита",
	["Shared_Six"] = "6",
	["Shared_Sixteen"] = "16",
	["Shared_Ten"] = "10",
	["Shared_Thirteen"] = "13",
	["Shared_Three"] = "3",
	["Shared_Twelve"] = "12",
	["Shared_Twenty"] = "20",
	["Shared_Two"] = "2",
	["Shared_WasKilled"] = "был убит",
	["ShrineOfTheStorm_LordStormsong"] = "Во время боя с %s он будет периодически призывать %s используя заклинание %s, они будут преследовать игрока и пытаться взорваться после соприкосновения с ним. Для получения этого достижения вы не должны коснутся этих созданий, и кайтить их в течение всего боя.",
	["ShrineOfTheStorm_Other"] = "Найти %s можно в первой комнате, после начала прохождения подземелья. Если вы получите урон от магии льда, то огонь духов погаснет. Рекомендуется предварительно очистить путь до третьего босса от всех противников, после чего подобрать огонь. Не убивайте первого босса — в противном случае огонь пропадет и более не появится. Вы получите достижение после того, как огни у третьего босса будут зажжены.",
	["ShrineOfTheStorm_VolZith"] = "Чтобы получить дебафф %s вы должны нырнуть в воду перед последним боссом и доплыть до той глубины, на которой появляются Сферы Пустоты, и проплыть через них. Дебафф сделает вас враждебным ко всем игрокам в течение 24 сек., после чего эффект будет снят на 6 сек., в течение которых лекарь должен использовать мощные заклинания исцеления и восстановить вам полный запас здоровья. Избегайте использования урона по области во время боя с боссом, и используйте способности самоисцеления, чтобы помочь лекарю.\\n\\n После того как %s произнесет %s, вас переместят в затонувший мир. Ваша задача заключается в быстром убийстве противников. Выждите 20-30 сек., чтобы мощные способности успели восстановиться. Также %s применит %s. Применяйте эффекты контроля к пяти %s, и не позволить им дойти до босса.",
	["Uldir_Fetid_Devourer_Tactics"] = "Во время каждой четвёртой атаки босс применяет %s к игроку, стоящему ближе всего к текущему танку, который наносит урон равный 300%% по сравнению от обычной атаки.\\n\\n Каждый игрок должен получить этот удар, рекомендуется использовать персональную защиту. Бой довольно прост но вы должны учесть, что на 50%% (%s)\", босс впадает в бешенство.",
	["Uldir_GHuun_Tactics"] = "Для этого достижения вам нужно создать группы из трех игроков для перетаскивания %s: 2 бойца +1 целитель.\\n\\n Если в вашей группе недостаточно игроков пригласите еще несколько человек которые помогу в убийстве аддов.",
	["Uldir_MOTHER_Tactics"] = "Чтобы ввести 'код доступа', вам нужно будет нажимать кнопки в каждой камере в определенном порядке, который рандомизирован для каждой группы. Порядок может быть 321, 213, 231 или аналогичными комбинациями.\\n\\n Проверьте, перестали ли мигать кнопки в первой комнате, а затем отправьте группу из 2-3 человек вместе с целителем, чтобы они нажимали на кнопки во второй и третьей комнате. Если кнопки нажимаются в правильной последовательности, они перестанут мигать и больше не будут нажиматься. Как только вы это сделаете, вы можете убить босса и получить достижение.",
	["Uldir_Mythrax_Tactics"] = "По состоянию на ноябрь 2018 года: теперь достижение функционирует так, как описано.\\n\\nЭто значительно облегчает достижение, поскольку вы просто подбираете свои шары.",
	["Uldir_Taloc_Tactics"] = "Для этого достижения вам нужно будет собрать 4 %s, пока Лифт опускается на 2 фазе.\\n\\n Позиции сфер кажутся случайными, однако Охотник на Демонов может легко получить их все, используя %s и %s.",
	["Uldir_Vectis_Tactics"] = "IAT_142148 находится внизу платформы прямо перед входом к IAT_134442.\\n\\n После того, как вы получите на нее дебафф %s (для этого нужно завести ее в лужу), вы можете безопасно убить ее, затем убить босса, и вы получите достижение.\",",
	["Uldir_ZekVoz_Tactics"] = "Это достижение довольно простое, однако вы должны использовать IAT_64482 после того, как IAT_135129 исчезнет в фазе 2. Головоломка активируется при следующем появлении IAT_135129 (во второй раз), это поможет лекарям с сохранением маны и облегчит задачу по исцелению рейда, поскольку вам не придется тратить еще одну минуту на одну из механик сражения.\\n\\n %s наносят урон от 25k до 35k урона, старайтесь не попадать под область поражения, чтобы облегчить жизнь целителям.",
	["Uldir_ZulReborn_Tactics"] = "Это достижение довольно простое, никто не должен наступать на внутреннее кольцо платформы. Вот несколько советов для этого боя:\\n\\n Танки должны отвлечь на себя всех аддов и собрать их в одном месте, дав возможность бойцам ближнего боя наносить урон.\\n Бойцы дальнего боя должны вести сражение только с боссом.\\n Если в вашей группе 2 жреца, то вы должны развести их в противоположные стороны (разместив по левую и правую сторону от группы соответственно).\\n При 40%% IAT_138967 босс откинет участников группы. Убедитесь, что за вашей спиной расположена стена — таким образом вас не сбросит с платформы."
}

core:RegisterLocale('ruRU', baseLocale)
