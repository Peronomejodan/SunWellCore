INSERT INTO version_db_world(`sql_rev`) VALUES ('1473111186171042200');

-- Culling of Stratholme Fix
-- Fix Arthus start senario & Resting point fix


ALTER TABLE world_db_version CHANGE COLUMN 2016_08_14_00 2016_08_14_01 bit;

DELETE FROM `creature_template` WHERE `entry` IN (11082,14646,28167,28169,28340,28341,28409,28439,28509,28656,29865,29866,29868,30996,31006,31126,31127);
INSERT INTO `creature_template` VALUES
(11082, 0, 0, 0, 0, 0, 10547, 0, 0, 0, 'Stratholme Courier', NULL, NULL, 0, 57, 57, 0, 21, 0, 1, 1.14286, 1, 1, 98, 130, 0, 238, 3.5, 2000, 1301, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 68, 99, 24, 6, 0, 11082, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 604, 794, 'SmartAI', 1, 3, 1, 4.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8388624, 0, '', 12340),
(14646, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Stratholme Trigger', NULL, NULL, 0, 1, 1, 0, 114, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 3.5, 2000, 2200, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 100, 10, 0, 0, 0, 100008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NullCreatureAI', 0, 4, 1, 1.35, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 128, '', 12340),
(28167, 0, 0, 0, 0, 0, 25168, 25169, 25311, 25312, 'Stratholme Citizen', '', '', 0, 77, 79, 0, 190, 0, 1, 1.14286, 1, 0, 404, 564, 0, 582, 1, 2000, 0, 1, 256, 2048, 8, 0, 0, 0, 0, 0, 334, 494, 95, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0.3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 96, 1, 0, 0, 'npc_cos_stratholme_citizien', 12340),
(28169, 0, 0, 0, 0, 0, 25171, 25172, 25313, 25314, 'Stratholme Resident', '', '', 0, 78, 79, 0, 190, 0, 1, 1.14286, 1, 0, 404, 564, 0, 582, 1, 2000, 0, 1, 256, 2048, 8, 0, 0, 0, 0, 0, 334, 494, 95, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0.3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 96, 1, 0, 0, 'npc_cos_stratholme_citizien', 12340),
(28340, 0, 0, 0, 0, 0, 25168, 25169, 0, 0, 'Stratholme Citizen', '', '', 0, 80, 80, 2, 190, 0, 1, 1.14286, 1, 0, 422, 586, 0, 642, 1, 2000, 2000, 1, 768, 2048, 0, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 28340, 0, 70210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(28341, 0, 0, 0, 0, 0, 25313, 25314, 0, 0, 'Stratholme Resident', '', '', 0, 80, 80, 2, 190, 0, 1, 1.14286, 1, 0, 417, 582, 0, 608, 1, 2000, 2000, 1, 768, 2048, 0, 0, 0, 0, 0, 0, 341, 506, 80, 7, 0, 28341, 0, 70210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(28409, 0, 0, 0, 0, 0, 25392, 0, 0, 0, 'Time Rift (CoT Stratholme)', '', '', 0, 70, 70, 2, 35, 0, 1, 0.992063, 1, 0, 252, 357, 0, 304, 1, 2000, 2000, 1, 33554688, 2048, 0, 0, 0, 0, 0, 0, 215, 320, 44, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(28439, 0, 0, 0, 0, 0, 25441, 0, 0, 0, 'Time Rift (CoT Stratholme, Large)', '', '', 0, 70, 70, 2, 35, 0, 1, 0.992063, 1, 0, 252, 357, 0, 304, 1, 2000, 2000, 1, 33554688, 2048, 0, 0, 0, 0, 0, 0, 215, 320, 44, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(28509, 0, 0, 0, 0, 0, 1126, 24719, 0, 0, 'Building (CoT Stratholme)', '', '', 0, 80, 80, 2, 1814, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 128, '', 12340),
(28656, 0, 0, 0, 0, 0, 24868, 0, 0, 0, 'Hourglass (CoT Stratholme)', '', '', 0, 80, 80, 2, 35, 0, 1, 1, 1, 0, 422, 586, 0, 642, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(29865, 0, 0, 0, 0, 0, 26598, 26599, 26600, 26601, 'Stratholme Citizen Specimen', '', '', 0, 78, 79, 2, 190, 0, 1, 0.78571, 1, 0, 404, 564, 0, 582, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 334, 494, 95, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0.3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 96, 1, 0, 0, '', 12340),
(29866, 0, 0, 0, 0, 0, 26602, 26603, 26604, 26605, 'Stratholme Resident Specimen', '', '', 0, 78, 79, 2, 190, 0, 1, 0.78571, 1, 0, 404, 564, 0, 582, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 334, 494, 95, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0.3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 96, 1, 0, 0, '', 12340),
(29868, 0, 0, 0, 0, 0, 262, 338, 344, 11873, 'Stratholme Child Specimen', '', '', 0, 78, 79, 2, 190, 0, 1, 0.78571, 1, 0, 404, 564, 0, 582, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 334, 494, 95, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0.3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 96, 1, 0, 0, '', 12340),
(30996, 0, 0, 0, 0, 0, 16480, 19595, 0, 0, 'CoT Stratholme - Crates KC Bunny', '', '', 0, 60, 60, 1, 35, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 128, '', 12340),
(31006, 0, 0, 0, 0, 0, 16480, 19595, 0, 0, 'CoT Stratholme - Mal\'Ganis KC Bunny', '', '', 0, 60, 60, 1, 35, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 128, '', 12340),
(31126, 0, 0, 0, 0, 0, 25168, 25169, 0, 0, 'Agitated Stratholme Citizen', '', '', 0, 80, 80, 2, 190, 0, 1, 1.14286, 1, 0, 422, 586, 0, 642, 1, 2000, 0, 1, 256, 2048, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'npc_cos_stratholme_citizien', 12340),
(31127, 0, 0, 0, 0, 0, 25313, 25314, 0, 0, 'Agitated Stratholme Resident', '', '', 0, 80, 80, 2, 190, 0, 1, 1.14286, 1, 0, 422, 586, 0, 642, 1, 2000, 0, 1, 256, 2048, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'npc_cos_stratholme_citizien', 12340);

DELETE FROM `script_waypoint` WHERE `entry` = 26499;
INSERT INTO `script_waypoint` VALUES
(26499, 0, 1903.17, 1291.57, 143.32, 0, 'culling Bridge WP1'),
(26499, 1, 1911.09, 1314.26, 150.026, 0, 'culling Bridge WP2'),
(26499, 2, 1902.96, 1295.13, 143.388, 0, 'culling Bridge WP3'),
(26499, 3, 1913.73, 1287.41, 141.927, 10000, 'culling Bridge WP4'),
(26499, 4, 1990.83, 1293.39, 145.467, 0, 'culling Bridge WP5'),
(26499, 5, 1997, 1317.78, 142.963, 0, 'culling Bridge WP6'),
(26499, 6, 2019.63, 1326.08, 142.929, 0, 'culling Bridge WP7'),
(26499, 7, 2026.47, 1287.09, 143.596, 0, 'culling Bridge WP8'),
(26499, 8, 2050.66, 1287.33, 142.671, 0, 'culling Bridge WP9'),
(26499, 9, 2081.45, 1287.77, 141.324, 0, 'culling Streets WP1'),
(26499, 10, 2087.69, 1280.34, 140.73, 1000, 'culling Streets WP2'),
(26499, 11, 2092.15, 1276.65, 140.52, 0, 'culling Streets WP3'),
(26499, 12, 2099.88, 1280.21, 138.55, 0, 'culling Streets WP4'),
(26499, 13, 2120.76, 1286.97, 136.343, 0, 'culling Streets WP5'),
(26499, 14, 2165.07, 1279.34, 133.4, 0, 'culling Streets WP6'),
(26499, 15, 2186.44, 1234.44, 136.524, 0, 'culling Streets WP7'),
(26499, 16, 2210.39, 1207.55, 136.259, 0, 'culling Streets WP8'),
(26499, 17, 2243.59, 1177.7, 137.144, 0, 'culling Streets WP9'),
(26499, 18, 2286.88, 1177.26, 137.631, 0, 'culling Streets WP10'),
(26499, 19, 2320.37, 1179.95, 133.926, 0, 'culling Streets WP11'),
(26499, 20, 2365.63, 1194.84, 131.974, 0, 'culling Streets WP12'),
(26499, 21, 2366.56, 1197.76, 134.382, 0, 'culling House WP1'),
(26499, 22, 2394.01, 1205.15, 134.125, 0, 'culling House WP2'),
(26499, 23, 2395.85, 1206.34, 134.039, 0, 'culling House WP3'),
(26499, 24, 2442.02, 1219.2, 133.999, 0, 'culling House WP3'),
(26499, 25, 2447.1, 1191.18, 148.076, 0, 'culling House WP4'),
(26499, 26, 2449.32, 1191.09, 148.076, 0, 'culling House WP5'),
(26499, 27, 2418.49, 1196.06, 148.076, 0, 'culling House WP6'),
(26499, 28, 2401.22, 1191.7, 148.076, 0, 'culling House WP7'),
(26499, 29, 2409.21, 1157.43, 148.19, 0, 'culling House WP8'),
(26499, 30, 2417.58, 1121.03, 148.082, 0, 'culling House WP9'),
(26499, 31, 2423.12, 1119.43, 148.076, 0, 'culling House WP10'),
(26499, 32, 2447.83, 1112.71, 148.076, 0, 'culling House WP11'),
(26499, 33, 2457.13, 1120.94, 150.008, 0, 'culling House WP12'),
(26499, 34, 2459.69, 1127.01, 150.008, 0, 'culling House WP13'),
(26499, 35, 2469.62, 1122.27, 150.008, 0, 'culling House WP14'),
(26499, 36, 2470.44, 1122.79, 150.008, 3000, 'culling House WP15'),
(26499, 37, 2471.66, 1123.08, 150.035, 3000, 'culling House WP16'),
(26499, 38, 2483.18, 1125.04, 149.905, 0, 'culling Secret WP1'),
(26499, 39, 2487.87, 1099.76, 144.858, 0, 'culling Secret WP2'),
(26499, 40, 2498.27, 1101.93, 144.599, 0, 'culling Secret WP3'),
(26499, 41, 2492.11, 1128.24, 139.967, 0, 'culling Secret WP4'),
(26499, 42, 2500.29, 1130.18, 139.982, 0, 'culling Room WP1'),
(26499, 43, 2503.01, 1119.24, 139.978, 0, 'culling Room WP2'),
(26499, 44, 2517.82, 1122.65, 132.066, 0, 'culling Room WP3'),
(26499, 45, 2540.48, 1129.06, 130.868, 7000, 'culling Fire Street WP1'),
(26499, 46, 2568.62, 1157.79, 126.906, 0, 'culling Fire Street WP2'),
(26499, 47, 2556.07, 1222.06, 125.412, 20000, 'culling Fire Street WP3'),
(26499, 48, 2521.53, 1295.21, 130.573, 0, 'culling Fire Street WP4'),
(26499, 49, 2504.36, 1348.67, 132.944, 0, 'culling Fire Street WP5'),
(26499, 50, 2450.59, 1431.54, 131.361, 0, 'culling Fire Street WP6'),
(26499, 51, 2353.49, 1404.84, 128.531, 0, 'culling Market WP1'),
(26499, 52, 2329.88, 1406.27, 128.013, 0, 'culling Market WP2'),
(26499, 53, 2329.88, 1406.27, 128.013, 12000, 'culling Market WP3'),
(26499, 54, 2327.39, 1412.47, 127.692, 0, 'culling Market WP4'),
(26499, 55, 2303.02, 1480.07, 128.139, 0, 'culling Crusader WP1'),
(26499, 56, 2296.67, 1502.36, 128.362, 0, 'culling Crusader WP2');
