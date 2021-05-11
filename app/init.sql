-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               PostgreSQL 13.2, compiled by Visual C++ build 1914, 64-bit
-- Server OS:                    
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table public.Foods: 92 rows
/*!40000 ALTER TABLE "Foods" DISABLE KEYS */;
INSERT INTO "Foods" ("Id", "Name") VALUES
	('ca75ad1a-424a-4570-8c47-70ffd380006f', 'Lemon'),
	('8e2cad6c-9cd3-4fc3-9b7f-aeaba317041c', 'Nutella'),
	('8a4a6192-c464-48ad-8655-153669587a8b', 'Butter'),
	('fa4bbbf3-993e-48ab-ab2c-687fae23f5da', 'Ketchup'),
	('7eebf7e4-7cf5-41d1-89e8-50182790804d', 'Coke'),
	('07f6fa8c-a756-45fd-b7f6-ce2aa924bfd4', 'Sweet peas'),
	('d708ea0c-dfcc-4a07-acaf-fb7ee143a61b', 'Tomato sauce'),
	('e3328cd2-616e-4dc4-934f-786a387c556b', 'Doritos'),
	('620e91ff-eb98-4730-81b1-bfdc21aad306', 'Ham'),
	('2cf42130-1aa7-4b88-97f5-17c77e3356aa', 'Whipping cream'),
	('38673275-300e-4c8f-875b-42d94b101115', 'Queijo Prato'),
	('d0a4faf1-e4e5-4aa0-8493-ea65b21f67f3', 'Semi-skimmed milk'),
	('f52671b9-c3e5-4d57-a66e-61ea976af451', 'Salt'),
	('d45e4103-79d3-4adf-8f02-80e1632d418e', 'Cheddar Cheese'),
	('2be2042a-2c2a-4645-b5c2-8dba94c9f776', 'Swiss Cheese'),
	('d6fb0146-4d7f-441d-80fd-e3b83f683302', 'Flour'),
	('5650f9b3-0022-4f9c-a963-0c1ce002e2c8', 'Mozzarella'),
	('2def2aaa-ad59-43e6-888e-5d2d45d7e0e4', 'Olive'),
	('7a194de5-7d28-4bb9-aeeb-8c8c2a77ce77', 'Egg'),
	('6e89aa88-5066-4072-afdd-4434a10ad3db', 'Pickled cucumber'),
	('a0f5d52e-b123-4966-844b-94de551ec255', 'Sour cream'),
	('1e23b9fd-3422-4702-8129-6b64730b0492', 'Cooked white rice'),
	('fe9af053-83b7-4932-bd3f-b41b96f9cc34', 'Cooked brown rice'),
	('e34e5aac-e4ec-4656-9dca-1cf2dc8aff32', 'Cucumber'),
	('0b59c3fd-bade-4a7e-9d19-64b5485833df', 'Bell Pepper'),
	('22a22331-4260-4a1b-8c0d-fe549b114a9f', 'Lettuce'),
	('b4ffb076-4682-4e64-950b-545222ba9686', 'Red Onion'),
	('5d6cbff8-1fee-4a9f-a602-1344a0ca9962', 'Tomato'),
	('57bcb5cc-e2f3-406e-99af-899fa000b79c', 'Arugula'),
	('93951c59-70b9-4ba6-b867-b78509f75938', 'Cooked beans'),
	('e12c964d-d3b3-41c9-83d1-88146c5673d5', 'Carrot'),
	('d3161f58-b5c1-488c-a72a-1ccc994f94aa', 'Banana'),
	('21d07959-882f-40b1-9268-0f6b62879d12', 'Apple'),
	('31539466-d55e-4173-a432-92c0264343b5', 'Pear'),
	('b4ad211b-63fa-4204-be94-c796ee8f2bf9', 'Orange'),
	('a95f7abd-d944-4a67-8794-644489e35d41', 'Lime'),
	('213fbe9a-39c7-44ac-9fe3-5d1f1d5ae3f7', 'Watermelon'),
	('be6a92d3-22cb-4dd5-9c26-02f3d6fdab10', 'Melon'),
	('48026351-d90a-4e52-9ed3-8be312023101', 'Mayo'),
	('cbc2ee7e-0970-4beb-8b71-c776d4dfe716', 'Yellow Mustard'),
	('d0722025-12e3-4971-b3c5-a0773e1c55e6', 'Honey Mustard'),
	('81729ec6-2cc1-40f9-a384-fe6b6649dc66', 'Brown Mustard'),
	('6b23450b-6688-4c5e-9948-8ac71156898b', 'Meatball'),
	('f29c8c86-1cb0-4ebe-94fb-fd5b45d7a161', 'Ground Beef'),
	('9c206f9e-7815-4445-b7d2-5a69eb43be1a', 'Beef Stew'),
	('3bae6c5f-f569-4b1b-b6c1-23e95e5f5b0e', 'Pork Steak'),
	('d35372bb-7b21-4a1f-a1f6-44903987ff52', 'Filet Mignon Steak'),
	('f11938d3-8cd9-4ce1-8388-3a0c3ed765e9', 'Flank Steak'),
	('8e84bb83-b55a-4100-bb40-6003dbf03dee', 'Flat Iron Steak'),
	('517f10d3-f2b1-4cfe-bd16-de75051f0d8a', 'Porterhouse Steak'),
	('bc075ac8-71f7-43ad-b82c-2b096100f04b', 'Eye Round Steak'),
	('fe31a13f-426f-4aa3-bc99-f8d5428a0db6', 'Bone In Rib Steak'),
	('a56a7844-f61c-43c7-8679-9761afb22c56', 'Ribeye Steak Boneless'),
	('ee4a8a55-a135-43ea-a2bf-b8152ccaed37', 'Skirt Steak'),
	('33fa3c33-d57d-4bf8-9f47-6184d5a3e8db', 'Ny Strip Steak'),
	('3c175e10-db11-42bb-a979-550f8a499ee9', 'T-Bone Steak'),
	('ac173c80-1367-4ce2-80be-4f240c4619a3', 'Beef Top Sirloin'),
	('4d1317ee-6ac2-4683-b6a3-4906792e6b54', 'Tri-Tip Steak'),
	('8f5f4bb1-08a5-4e90-bbd7-5ac673964119', 'Sugar'),
	('86275b0b-ef9c-45dc-9c09-3cf5824586fb', 'White Bread'),
	('61817e9d-db18-472a-bb20-faf148532691', 'Pita Bread'),
	('211ccdc8-a823-417b-86d7-67c280a3c2ae', 'Wheat Bread'),
	('5be2b074-4e5e-4bc5-b9f7-2bdd86f14b0e', 'Wheat Bran Bread'),
	('dbfa7b2a-365e-4498-95d0-8056633f7ff0', 'French Baguette');
/*!40000 ALTER TABLE "Foods" ENABLE KEYS */;

-- Dumping data for table public.NutritionFacts: 78 rows
/*!40000 ALTER TABLE "NutritionFacts" DISABLE KEYS */;
INSERT INTO "NutritionFacts" ("Id", "ServingSize", "ServingSizeUnit", "FoodId") VALUES
	('b24a23e9-4d93-4168-b2ad-b67c25ee56f5', 12, 1, 'fa4bbbf3-993e-48ab-ab2c-687fae23f5da'),
	('9cd4050e-c722-476a-8051-9c417692ab14', 200, 5, '7eebf7e4-7cf5-41d1-89e8-50182790804d'),
	('edce9b7d-fe9f-421f-83d8-b0c01da09675', 130, 1, '07f6fa8c-a756-45fd-b7f6-ce2aa924bfd4'),
	('bfb309aa-01ae-419c-a5f7-6f34bb321283', 60, 1, 'd708ea0c-dfcc-4a07-acaf-fb7ee143a61b'),
	('6f3da0b6-986f-46fc-bdae-a4a2cc9b174f', 30, 1, 'e3328cd2-616e-4dc4-934f-786a387c556b'),
	('f11c8d35-cfee-4244-a746-67315dcf132e', 40, 1, '620e91ff-eb98-4730-81b1-bfdc21aad306'),
	('c6ea8693-7851-48a0-a505-83e3f36083a6', 15, 1, '2cf42130-1aa7-4b88-97f5-17c77e3356aa'),
	('92d41eeb-f827-487b-9140-e317330d1137', 35, 1, '38673275-300e-4c8f-875b-42d94b101115'),
	('2cce34a0-2773-421f-a9ac-21bf362294a7', 100, 5, 'd0a4faf1-e4e5-4aa0-8493-ea65b21f67f3'),
	('da3b092b-30c5-4aee-8e96-20410124eb6a', 30, 1, 'd45e4103-79d3-4adf-8f02-80e1632d418e'),
	('b811a1ff-29b1-4966-94af-00334ab9ede8', 25, 1, '2be2042a-2c2a-4645-b5c2-8dba94c9f776'),
	('51cd3d68-649e-4561-b106-33537c1e3117', 50, 1, 'd6fb0146-4d7f-441d-80fd-e3b83f683302'),
	('0f1caa1e-b8cf-4896-94e4-d2798d833894', 40, 1, '5650f9b3-0022-4f9c-a963-0c1ce002e2c8'),
	('a801ee9f-f2b5-4b18-8a04-691e0c4f53f9', 100, 1, '2def2aaa-ad59-43e6-888e-5d2d45d7e0e4'),
	('106bd2f8-58a1-4624-9b7a-3ee699e1f10a', 60, 1, '7a194de5-7d28-4bb9-aeeb-8c8c2a77ce77'),
	('0b4c276f-73f7-4b33-89c4-1a8f3bff6c24', 100, 1, '6e89aa88-5066-4072-afdd-4434a10ad3db'),
	('2c70abdb-75a9-41c2-9e7f-17ab0c48a272', 30, 1, 'a0f5d52e-b123-4966-844b-94de551ec255'),
	('96355ebd-cf13-426f-b920-0f6d49072b2b', 100, 1, '1e23b9fd-3422-4702-8129-6b64730b0492'),
	('0c57a5d4-6a55-4b5c-9e7b-c852162a186b', 100, 1, 'fe9af053-83b7-4932-bd3f-b41b96f9cc34'),
	('f84d7bea-5239-4494-bab0-b6f91267b58c', 100, 1, 'e34e5aac-e4ec-4656-9dca-1cf2dc8aff32'),
	('6771d71d-f8c7-4b13-8014-2fb29ba256bb', 149, 1, '0b59c3fd-bade-4a7e-9d19-64b5485833df'),
	('0153897f-0d31-48ce-b9cf-7d3729731438', 85, 1, '22a22331-4260-4a1b-8c0d-fe549b114a9f'),
	('80b8c1d1-5089-4f9b-b4fa-fdcb6a99c458', 10, 1, 'b4ffb076-4682-4e64-950b-545222ba9686'),
	('d43c30a5-fa20-4dee-a6f3-13eb2f3841cf', 149, 1, '5d6cbff8-1fee-4a9f-a602-1344a0ca9962'),
	('b8d792fa-34d3-465b-a495-7ba83c312267', 85, 1, '57bcb5cc-e2f3-406e-99af-899fa000b79c'),
	('b4353e97-125c-4488-8a4a-706f89c75504', 100, 1, '93951c59-70b9-4ba6-b867-b78509f75938'),
	('b8c9c59a-fd0f-484c-a650-d2f33747c83f', 85, 1, 'e12c964d-d3b3-41c9-83d1-88146c5673d5'),
	('32c9adc3-10d9-4269-a1f1-72d1163ad688', 118, 1, 'd3161f58-b5c1-488c-a72a-1ccc994f94aa'),
	('e8ee8174-6dd6-4dc8-8164-fe236212f37b', 242, 1, '21d07959-882f-40b1-9268-0f6b62879d12'),
	('828de21a-fb66-4cab-a9ee-3bc9b7eeafef', 148, 1, '31539466-d55e-4173-a432-92c0264343b5'),
	('0c4396b5-aad2-4496-96af-cf543abd4c70', 74, 1, 'b4ad211b-63fa-4204-be94-c796ee8f2bf9'),
	('8eba5baa-b073-4ede-b0d7-23c9f1a8d93e', 67, 1, 'a95f7abd-d944-4a67-8794-644489e35d41'),
	('0f97128d-c33d-4a09-b824-0f448f3e15d6', 58, 1, 'ca75ad1a-424a-4570-8c47-70ffd380006f'),
	('06756262-c14a-4651-be18-edf83375ac12', 154, 1, '213fbe9a-39c7-44ac-9fe3-5d1f1d5ae3f7'),
	('1ea29db8-04f7-4cd7-ac51-8b9cf908c3e8', 552, 1, 'be6a92d3-22cb-4dd5-9c26-02f3d6fdab10'),
	('1bf82421-2a52-495e-90ea-531b0d6f9569', 13, 1, '48026351-d90a-4e52-9ed3-8be312023101'),
	('ce860aaa-eb41-4b72-908a-debca6fc42f1', 5, 1, 'cbc2ee7e-0970-4beb-8b71-c776d4dfe716'),
	('6d4b2c02-2cd4-46bb-ae73-4ef3856a6419', 6, 1, 'd0722025-12e3-4971-b3c5-a0773e1c55e6'),
	('9f498153-d6b0-4520-a818-f8db46372c55', 5, 1, '81729ec6-2cc1-40f9-a384-fe6b6649dc66'),
	('95f108db-b084-48be-a095-52d0c6bb5739', 85, 1, '6b23450b-6688-4c5e-9948-8ac71156898b'),
	('2595d982-7adb-4af0-b191-1aab6da8b47a', 112, 1, 'f29c8c86-1cb0-4ebe-94fb-fd5b45d7a161'),
	('58fd2c31-b641-47da-8480-4426f06c2dc5', 232, 1, '9c206f9e-7815-4445-b7d2-5a69eb43be1a'),
	('c904bbb2-d038-44bd-9dc7-ce8e43b4c3d9', 56, 1, '3bae6c5f-f569-4b1b-b6c1-23e95e5f5b0e'),
	('eda97fb0-ac53-4419-9741-0a6a1aff4bcb', 170, 1, 'd35372bb-7b21-4a1f-a1f6-44903987ff52'),
	('c8915faa-30eb-46ee-9828-81d4527bd6e2', 112, 1, 'f11938d3-8cd9-4ce1-8388-3a0c3ed765e9'),
	('2e642808-13a0-4e60-b795-d68ede933df2', 85, 1, '8e84bb83-b55a-4100-bb40-6003dbf03dee'),
	('69a930fc-3325-453a-abc2-0ef29990acbc', 85, 1, '517f10d3-f2b1-4cfe-bd16-de75051f0d8a'),
	('6e2f7f0d-b158-4f15-b64e-bfa4bd5a90a3', 113, 1, 'bc075ac8-71f7-43ad-b82c-2b096100f04b'),
	('b3c36458-0777-41ce-8d8e-4858f69fcee7', 113, 1, 'fe31a13f-426f-4aa3-bc99-f8d5428a0db6'),
	('a4bc7d52-3dc4-4024-ac03-6cfed4c6250d', 113, 1, 'a56a7844-f61c-43c7-8679-9761afb22c56'),
	('6800a7ef-7217-4bf4-b82d-6ffe0dc4a742', 113, 1, 'ee4a8a55-a135-43ea-a2bf-b8152ccaed37'),
	('b4b0ba5c-74ec-4e4a-8adc-e058684701f0', 85, 1, '33fa3c33-d57d-4bf8-9f47-6184d5a3e8db'),
	('7139129e-d78c-4354-b98e-9e5f6a6e02d1', 28.35, 1, '3c175e10-db11-42bb-a979-550f8a499ee9'),
	('09679540-426a-4e09-b98e-a4e8cfec51ee', 28.35, 1, 'ac173c80-1367-4ce2-80be-4f240c4619a3'),
	('bd91c8a1-9f56-4bb4-b52c-11fde69f027c', 113, 1, '4d1317ee-6ac2-4683-b6a3-4906792e6b54'),
	('e2694d52-41ee-49a4-9647-c8e9d213c757', 1, 1, '8f5f4bb1-08a5-4e90-bbd7-5ac673964119'),
	('7dc46b4c-aae7-4393-a4be-6b0b1d3ef8fe', 44, 1, '86275b0b-ef9c-45dc-9c09-3cf5824586fb'),
	('a2fc9fdc-4c1e-4f19-86e3-c14ef3a87b01', 60, 1, '61817e9d-db18-472a-bb20-faf148532691'),
	('e27b1ef0-64fb-4600-b656-cec327905031', 25, 1, '211ccdc8-a823-417b-86d7-67c280a3c2ae'),
	('d97191cb-2abc-49cb-9c9a-b424e0a7bbab', 36, 1, '5be2b074-4e5e-4bc5-b9f7-2bdd86f14b0e'),
	('664a98f9-c447-4c4f-9d00-36ff0408d09e', 50, 1, 'dbfa7b2a-365e-4498-95d0-8056633f7ff0'),
	('fd670721-d344-41a3-b964-4ad13642921c', 10, 1, '8a4a6192-c464-48ad-8655-153669587a8b'),
	('cc384e6a-5ecb-4e08-8ba9-ad9ff8c43b1c', 15, 1, '8e2cad6c-9cd3-4fc3-9b7f-aeaba317041c');
/*!40000 ALTER TABLE "NutritionFacts" ENABLE KEYS */;

-- Dumping data for table public.NutritionFactsNutrients: 208 rows
/*!40000 ALTER TABLE "NutritionFactsNutrients" DISABLE KEYS */;
INSERT INTO "NutritionFactsNutrients" ("Id", "AmountPerServing", "AmountPerServingUnit", "NutritionFactsId", "NutrientId") VALUES
	('6f8dd87a-676c-456f-9970-3efb598233b7', 3.3, 1, 'b24a23e9-4d93-4168-b2ad-b67c25ee56f5', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('dc0603e4-bcb9-448f-88a1-b6f6653fa37b', 0, 1, 'b24a23e9-4d93-4168-b2ad-b67c25ee56f5', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('7af32c05-2c0d-457e-a661-c453f8c4da74', 0, 1, 'b24a23e9-4d93-4168-b2ad-b67c25ee56f5', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('cbdb69e9-5526-4beb-92ac-842f93564508', 21, 1, '9cd4050e-c722-476a-8051-9c417692ab14', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('413610d8-ad98-470a-83b3-7dcd28f9d53e', 0, 1, '9cd4050e-c722-476a-8051-9c417692ab14', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('d689f81d-acb4-4bb6-a67e-0ab0eae841ef', 0, 1, '9cd4050e-c722-476a-8051-9c417692ab14', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('529d33c0-55bb-4f30-8b61-ba33e1155456', 13, 1, 'edce9b7d-fe9f-421f-83d8-b0c01da09675', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('a05b7ce9-15b5-4250-a521-8fd029d782bf', 0.4, 1, 'edce9b7d-fe9f-421f-83d8-b0c01da09675', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('2d17b24c-1069-4d5c-bbec-b539d9af58c7', 6, 1, 'edce9b7d-fe9f-421f-83d8-b0c01da09675', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('16629fa2-630a-44b6-8c45-d341f07ebdd6', 7, 1, 'bfb309aa-01ae-419c-a5f7-6f34bb321283', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('e5704023-e7b2-48e6-8da7-83be72409349', 0.6, 1, 'bfb309aa-01ae-419c-a5f7-6f34bb321283', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('3eb1b305-a8dd-4823-b2cc-859c964599f6', 0, 1, 'bfb309aa-01ae-419c-a5f7-6f34bb321283', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('7f71697e-eddf-4849-b2bf-441deb4f4ba4', 17.7, 1, '6f3da0b6-986f-46fc-bdae-a4a2cc9b174f', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('520837ef-2a35-40cb-b306-2a283c432678', 8.1, 1, '6f3da0b6-986f-46fc-bdae-a4a2cc9b174f', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('d9b56c35-6754-4fe7-a9e0-4161991e1ea5', 2.13, 1, '6f3da0b6-986f-46fc-bdae-a4a2cc9b174f', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('55635070-8745-4a17-b974-68e062791f84', 0.8, 1, 'f11c8d35-cfee-4244-a746-67315dcf132e', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('5ee6dafd-5c2d-4fea-9144-538a2a0cd973', 1.2, 1, 'f11c8d35-cfee-4244-a746-67315dcf132e', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('8361aef3-bdf0-494b-94e2-417b79a6ae1d', 6.9, 1, 'f11c8d35-cfee-4244-a746-67315dcf132e', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('16284c5b-a6f0-4626-a4e9-9c65a11dc796', 0, 1, 'c6ea8693-7851-48a0-a505-83e3f36083a6', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('49b6156b-f1bb-4ea1-b11d-4af9712a7c87', 0, 1, 'c6ea8693-7851-48a0-a505-83e3f36083a6', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('11136940-5e34-4745-bfed-3525ad313fdb', 2.6, 1, 'c6ea8693-7851-48a0-a505-83e3f36083a6', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('2a34a29b-b0b4-42b1-8520-14866b7b8854', 1.6, 1, '92d41eeb-f827-487b-9140-e317330d1137', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('40205878-c74b-45fb-9ca3-5eded90c827f', 9.1, 1, '92d41eeb-f827-487b-9140-e317330d1137', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('92918c96-4bcc-48fd-933d-823ce74a0993', 9.1, 1, '92d41eeb-f827-487b-9140-e317330d1137', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('baf273ff-9564-4a18-8152-c52a0f69ec0f', 4.8, 1, '2cce34a0-2773-421f-a9ac-21bf362294a7', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('fa280472-51d4-4ec7-9b47-6b1fc043d55a', 3.1, 1, '2cce34a0-2773-421f-a9ac-21bf362294a7', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('06063a27-efda-48fc-9002-57a393eefd2e', 1.5, 1, '2cce34a0-2773-421f-a9ac-21bf362294a7', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('8fdcf254-2956-4f35-81ea-687f748849ff', 2.3, 1, 'da3b092b-30c5-4aee-8e96-20410124eb6a', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('4e922b68-bedc-499b-9c8c-0b5ac48df0c1', 5.4, 1, 'da3b092b-30c5-4aee-8e96-20410124eb6a', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('3c01cfa9-26ff-4d3a-a03e-25f27a0a5042', 4.2, 1, 'da3b092b-30c5-4aee-8e96-20410124eb6a', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('6b2c3a3a-44fd-43d8-a568-a1f4bf0817e6', 1.3, 1, 'b811a1ff-29b1-4966-94af-00334ab9ede8', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('920f78e6-a245-48a3-bfcd-7705a628ab7a', 7, 1, 'b811a1ff-29b1-4966-94af-00334ab9ede8', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('506ba98d-ab7b-4d5a-a8c9-7622b8607941', 6.7, 1, 'b811a1ff-29b1-4966-94af-00334ab9ede8', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('f7a92926-cb9b-4760-8948-0ccd31dece45', 38, 1, '51cd3d68-649e-4561-b106-33537c1e3117', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('f1c39ca5-fb47-42de-8927-8987dd8835c3', 5, 1, '51cd3d68-649e-4561-b106-33537c1e3117', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('6da10786-cc2d-4d5d-8de3-a366f480a8ba', 0, 1, '51cd3d68-649e-4561-b106-33537c1e3117', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('6e9ea46f-79fd-498d-a45a-e3ef66a50ed8', 0, 1, '0f1caa1e-b8cf-4896-94e4-d2798d833894', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('de69d926-613b-4f4a-a435-e29a97e9e885', 9.8, 1, '0f1caa1e-b8cf-4896-94e4-d2798d833894', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('e42feb74-a44b-4a30-ac39-511b116e446b', 9.1, 1, '0f1caa1e-b8cf-4896-94e4-d2798d833894', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('ee8059d7-5c5e-4e40-80c0-79fbda82b386', 6.3, 1, 'a801ee9f-f2b5-4b18-8a04-691e0c4f53f9', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('9b3d0bba-2751-4fed-ae3c-b84e19e8e7ad', 10.9, 1, 'a801ee9f-f2b5-4b18-8a04-691e0c4f53f9', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('4a9a5554-7181-48c2-b642-45a4ae138cd4', 0.8, 1, 'a801ee9f-f2b5-4b18-8a04-691e0c4f53f9', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('3ec33173-48aa-41db-b4fe-eb3b0ed9377e', 0.3, 1, '106bd2f8-58a1-4624-9b7a-3ee699e1f10a', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('c4234d4d-f27a-456e-b2bc-3080cb51072a', 6, 1, '106bd2f8-58a1-4624-9b7a-3ee699e1f10a', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('a9b8813a-6a1e-4e77-824f-9bb2c1e32caa', 4.28, 1, '106bd2f8-58a1-4624-9b7a-3ee699e1f10a', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('04352945-e191-4b70-9a41-57b767ea8709', 2.3, 1, '0b4c276f-73f7-4b33-89c4-1a8f3bff6c24', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('b4edbe35-9a14-4394-a8ab-9ea124b2fc76', 0.2, 1, '0b4c276f-73f7-4b33-89c4-1a8f3bff6c24', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('1d450bab-fd45-4d0f-9548-0f9bb28658c4', 0.3, 1, '0b4c276f-73f7-4b33-89c4-1a8f3bff6c24', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('cd24dc36-7039-4ccc-91d0-4221d4ba1b5e', 2, 1, '2c70abdb-75a9-41c2-9e7f-17ab0c48a272', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('c9adc2e0-1eb9-4305-aed2-98183f110412', 1, 1, '2c70abdb-75a9-41c2-9e7f-17ab0c48a272', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('e672ea66-05d9-4ed7-bf74-17bf492ebd01', 6, 1, '2c70abdb-75a9-41c2-9e7f-17ab0c48a272', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('6cadfe19-6f1a-45a8-83ac-8e632b1ea19b', 28, 1, '96355ebd-cf13-426f-b920-0f6d49072b2b', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('699f544e-c591-4ab9-9cf4-835c21ecce60', 2.5, 1, '96355ebd-cf13-426f-b920-0f6d49072b2b', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('13532518-1d85-4eb3-9f9c-4febb13541a9', 0.2, 1, '96355ebd-cf13-426f-b920-0f6d49072b2b', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('f5401773-b464-443e-bf39-70ddfe131e62', 25.8, 1, '0c57a5d4-6a55-4b5c-9e7b-c852162a186b', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('241fc33f-1f88-4ddb-aa85-dd707f1e64c5', 2.6, 1, '0c57a5d4-6a55-4b5c-9e7b-c852162a186b', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('90ef18d3-20d9-4b81-b4ce-1332e2be2dbb', 1, 1, '0c57a5d4-6a55-4b5c-9e7b-c852162a186b', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('ebcfd3d9-b75e-4236-b6fe-7f9dae847258', 3.6, 1, 'f84d7bea-5239-4494-bab0-b6f91267b58c', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('5f160f1e-bea0-432a-ba67-b0e01a9ace88', 0.1, 1, 'f84d7bea-5239-4494-bab0-b6f91267b58c', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('79c47e9a-c93d-4956-965d-2318c01905d7', 0.7, 1, 'f84d7bea-5239-4494-bab0-b6f91267b58c', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('bb81df20-d33f-4571-a118-b6fa40f16b4f', 7, 1, '6771d71d-f8c7-4b13-8014-2fb29ba256bb', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('2dc457cf-8bcc-447f-844f-64f93e6c7cd3', 0, 1, '6771d71d-f8c7-4b13-8014-2fb29ba256bb', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('054b3b50-8738-4369-9879-d6aed182660f', 1, 1, '6771d71d-f8c7-4b13-8014-2fb29ba256bb', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('ea51fbc1-a0a0-4bf5-aad4-4a94150a7f9b', 3, 1, '0153897f-0d31-48ce-b9cf-7d3729731438', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('dc311e55-03ec-4e1f-aa25-aeb89920d24f', 0, 1, '0153897f-0d31-48ce-b9cf-7d3729731438', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('0dd7b1b5-af93-4d84-8de5-f83d5f2b9305', 1, 1, '0153897f-0d31-48ce-b9cf-7d3729731438', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('36f90285-d6f9-4df0-95a9-ca04b78ad9b6', 2.88, 1, '80b8c1d1-5089-4f9b-b4fa-fdcb6a99c458', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('07247655-8dcb-4c82-89d1-a857ec2769f0', 0.05, 1, '80b8c1d1-5089-4f9b-b4fa-fdcb6a99c458', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('ce312203-f11c-487c-8de7-caa5664d9925', 0.39, 1, '80b8c1d1-5089-4f9b-b4fa-fdcb6a99c458', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('5aecfd40-5034-4e85-a01f-c447eb9a7309', 6, 1, 'd43c30a5-fa20-4dee-a6f3-13eb2f3841cf', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('a80c6799-3fe1-4b08-80c4-840b74627081', 0, 1, 'd43c30a5-fa20-4dee-a6f3-13eb2f3841cf', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('c04ce6ea-7902-4316-9993-8ac7af9bbad0', 1, 1, 'd43c30a5-fa20-4dee-a6f3-13eb2f3841cf', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('4cf2a040-22c0-4e78-b9d5-0fd0b2db1b93', 3.1, 1, 'b8d792fa-34d3-465b-a495-7ba83c312267', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('defad8f3-4af1-4934-b949-ece6175e780a', 0.6, 1, 'b8d792fa-34d3-465b-a495-7ba83c312267', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('8420540e-f0cd-4ed7-a079-6c65a1e12b01', 2.2, 1, 'b8d792fa-34d3-465b-a495-7ba83c312267', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('efc48b4c-8d5c-4110-9e6e-43ac951a5feb', 13.61, 1, 'b4353e97-125c-4488-8a4a-706f89c75504', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('81c061ca-9bae-410f-9e9f-4afff266623e', 5.04, 1, 'b4353e97-125c-4488-8a4a-706f89c75504', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('b4f28df1-93aa-4df5-a2bf-23372a19391f', 0.85, 1, 'b4353e97-125c-4488-8a4a-706f89c75504', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('fb410d20-8cd0-4c4d-bc8f-bbdcbb1dd82c', 8, 1, 'b8c9c59a-fd0f-484c-a650-d2f33747c83f', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('1e9f84ac-fd0b-40bf-89cc-bbab9d16efd2', 0, 1, 'b8c9c59a-fd0f-484c-a650-d2f33747c83f', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('77caa164-5166-42d7-9f7f-08673d3714b5', 1, 1, 'b8c9c59a-fd0f-484c-a650-d2f33747c83f', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('ae858ae4-ef2e-462a-bc88-8411505d004f', 27, 1, '32c9adc3-10d9-4269-a1f1-72d1163ad688', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('e2866c8d-aea7-410f-8b60-f00d8311647d', 0, 1, '32c9adc3-10d9-4269-a1f1-72d1163ad688', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('ff5fb3a2-8a0c-4fe2-8374-d97a4b82e999', 1, 1, '32c9adc3-10d9-4269-a1f1-72d1163ad688', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('a196b281-49c7-4c06-a0f5-1268a3b9e383', 34, 1, 'e8ee8174-6dd6-4dc8-8164-fe236212f37b', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('4310dd60-4f3d-4241-9658-4d3039680ca1', 0, 1, 'e8ee8174-6dd6-4dc8-8164-fe236212f37b', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('a4097b30-f08c-4f72-962e-a123dfecf148', 1, 1, 'e8ee8174-6dd6-4dc8-8164-fe236212f37b', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('721e99ba-d612-40ac-b8b1-8bdbd55bbfc5', 23, 1, '828de21a-fb66-4cab-a9ee-3bc9b7eeafef', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('7b7bc309-a2f5-4317-9b73-263c54a55051', 0, 1, '828de21a-fb66-4cab-a9ee-3bc9b7eeafef', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('a8662d3a-d578-4151-ab35-c778ab3f5aa8', 1, 1, '828de21a-fb66-4cab-a9ee-3bc9b7eeafef', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('507fa0f4-2e2f-4d41-9b1d-f4ae03e5ff06', 9, 1, '0c4396b5-aad2-4496-96af-cf543abd4c70', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('a973ac1e-9409-4eea-ab1b-13432afafa34', 0, 1, '0c4396b5-aad2-4496-96af-cf543abd4c70', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('05381e8b-e9f8-4207-a072-7502b229be4c', 1, 1, '0c4396b5-aad2-4496-96af-cf543abd4c70', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('87f13ab0-9823-452d-94d9-ecf54527f12f', 7, 1, '8eba5baa-b073-4ede-b0d7-23c9f1a8d93e', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('980a27a2-c975-4055-ad24-2b4c1101c57f', 0, 1, '8eba5baa-b073-4ede-b0d7-23c9f1a8d93e', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('c2c9773c-7cb9-49ee-bfd9-57e041914723', 0, 1, '8eba5baa-b073-4ede-b0d7-23c9f1a8d93e', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('fd34ad28-9d13-4454-8712-7f19fd73711d', 5, 1, '0f97128d-c33d-4a09-b824-0f448f3e15d6', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('9799738a-0ead-4221-9b48-e696a9a67870', 0, 1, '0f97128d-c33d-4a09-b824-0f448f3e15d6', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('d9ed5d7e-8fac-4186-8d24-2f27f00c4dd0', 0, 1, '0f97128d-c33d-4a09-b824-0f448f3e15d6', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('5eb4af9b-f89c-4d95-b495-2c1eb1dbaf96', 12, 1, '06756262-c14a-4651-be18-edf83375ac12', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('363b0ded-3009-406c-a09d-03ab301dab2d', 0, 1, '06756262-c14a-4651-be18-edf83375ac12', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('d496b569-6575-4be2-940f-a27a6255bb88', 1, 1, '06756262-c14a-4651-be18-edf83375ac12', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('24d1fcc0-11d7-4976-a13d-4fd6ca4b1af7', 49, 1, '1ea29db8-04f7-4cd7-ac51-8b9cf908c3e8', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('05f8965c-6e36-45ec-bf47-c0c67d058ed8', 1, 1, '1ea29db8-04f7-4cd7-ac51-8b9cf908c3e8', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('fe33ae0e-6249-49d9-9c40-68a7349091cc', 5, 1, '1ea29db8-04f7-4cd7-ac51-8b9cf908c3e8', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('a034873c-2bff-41ac-8812-9c49e39cb44d', 0, 1, '1bf82421-2a52-495e-90ea-531b0d6f9569', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('35ea571e-610b-4165-9dac-844695073ab4', 10, 1, '1bf82421-2a52-495e-90ea-531b0d6f9569', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('48c7b361-30ad-4f08-a5c7-6d2870b38056', 0, 1, '1bf82421-2a52-495e-90ea-531b0d6f9569', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('2c437972-074f-4c40-a7ae-895d0251ed2e', 0, 1, 'ce860aaa-eb41-4b72-908a-debca6fc42f1', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('975b38b0-0513-495c-b6d7-5d705e9fa3e0', 0, 1, 'ce860aaa-eb41-4b72-908a-debca6fc42f1', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('475673b6-2dec-4bbd-861b-a5ef967f7457', 0, 1, 'ce860aaa-eb41-4b72-908a-debca6fc42f1', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('07bf0038-c755-4c0e-9539-44e969517b7f', 1, 1, '6d4b2c02-2cd4-46bb-ae73-4ef3856a6419', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('33366b0d-85e4-4c05-8393-3c3568e385c1', 0, 1, '6d4b2c02-2cd4-46bb-ae73-4ef3856a6419', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('0b8e428f-b891-4831-a909-bd8cfec33341', 0, 1, '6d4b2c02-2cd4-46bb-ae73-4ef3856a6419', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('42aadaca-effc-4001-8223-ebdec1126f37', 0, 1, '9f498153-d6b0-4520-a818-f8db46372c55', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('0e1eadef-88a3-48c5-85f5-f01e8f379d00', 0, 1, '9f498153-d6b0-4520-a818-f8db46372c55', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('edb4c470-b1b4-43f3-9801-d5b896faf3c6', 0, 1, '9f498153-d6b0-4520-a818-f8db46372c55', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('dbc3c69c-a04d-4851-bb59-daa64f74f7ed', 4, 1, '95f108db-b084-48be-a095-52d0c6bb5739', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('a2fd5e6b-b281-4152-b26e-f70bb43198fa', 19, 1, '95f108db-b084-48be-a095-52d0c6bb5739', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('e2ced87e-4a75-4cc6-9374-5000bc75c265', 13, 1, '95f108db-b084-48be-a095-52d0c6bb5739', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('afa0edee-1e97-460b-9744-35cc48b535a2', 0, 1, '2595d982-7adb-4af0-b191-1aab6da8b47a', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('7a5683af-c6a6-4dc4-99d1-5c1b303cfd32', 11, 1, '2595d982-7adb-4af0-b191-1aab6da8b47a', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('b8692dfc-640f-48c1-af43-dd7822eb1194', 22, 1, '2595d982-7adb-4af0-b191-1aab6da8b47a', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('a35110f1-c66f-4f9b-b887-594f66d1b94b', 15.7, 1, '58fd2c31-b641-47da-8480-4426f06c2dc5', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('e01639e8-9436-45f1-a9f4-5253ddc9a1d6', 12.5, 1, '58fd2c31-b641-47da-8480-4426f06c2dc5', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('180402a0-8db7-49ea-bbf1-77f889d4701a', 11.5, 1, '58fd2c31-b641-47da-8480-4426f06c2dc5', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('8bc954bc-fe65-46fe-968b-4ffdf90b525f', 0, 1, 'c904bbb2-d038-44bd-9dc7-ce8e43b4c3d9', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('9ecccdb2-eba5-435c-9443-41d4bbf7582d', 6, 1, 'c904bbb2-d038-44bd-9dc7-ce8e43b4c3d9', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('87c71dba-9c19-427b-99b7-a1d30d46c0f8', 9, 1, 'c904bbb2-d038-44bd-9dc7-ce8e43b4c3d9', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('c766165d-5c12-4a30-a343-fee930016339', 0, 1, 'eda97fb0-ac53-4419-9741-0a6a1aff4bcb', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('2406b36c-22c2-467b-b865-66049577b2e7', 40, 1, 'eda97fb0-ac53-4419-9741-0a6a1aff4bcb', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('25a5226c-c3c9-47ea-b1d1-8af66cee54d6', 30, 1, 'eda97fb0-ac53-4419-9741-0a6a1aff4bcb', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('28fcf136-9f46-4bc5-98e2-259fc5541acd', 0, 1, 'c8915faa-30eb-46ee-9828-81d4527bd6e2', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('89ac20ff-8f89-41f1-9031-f48d84640008', 9, 1, 'c8915faa-30eb-46ee-9828-81d4527bd6e2', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('5c7f0bae-567f-4ab7-b9f5-7e39fa3b482a', 24, 1, 'c8915faa-30eb-46ee-9828-81d4527bd6e2', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('fd3476c1-265d-4423-a37a-9a1f7e75c114', 0, 1, '2e642808-13a0-4e60-b795-d68ede933df2', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('001884d1-604b-4c5b-9538-c1aa0e1ea9fb', 2.5, 1, '2e642808-13a0-4e60-b795-d68ede933df2', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('d0e48021-78e9-43ee-a042-81346ad08c1c', 16, 1, '2e642808-13a0-4e60-b795-d68ede933df2', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('235fbd52-ff0b-4fac-a41b-85d12166c9fb', 0, 1, '69a930fc-3325-453a-abc2-0ef29990acbc', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('ca65ae59-0940-4623-bfcb-900c05b49d77', 16, 1, '69a930fc-3325-453a-abc2-0ef29990acbc', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('6598bbdf-5be1-4fb4-a5f8-3e64e9469d4d', 20, 1, '69a930fc-3325-453a-abc2-0ef29990acbc', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('94587774-f9ef-46a7-948b-cc2d95dd0408', 0, 1, '6e2f7f0d-b158-4f15-b64e-bfa4bd5a90a3', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('9123ed21-ff04-4ef5-a94b-9a29f4d99619', 4, 1, '6e2f7f0d-b158-4f15-b64e-bfa4bd5a90a3', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('cdd5876e-23c4-44eb-a0d4-41acf9db8d21', 26, 1, '6e2f7f0d-b158-4f15-b64e-bfa4bd5a90a3', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('4a8700a4-ee58-4f97-a445-a76ceba100d5', 0, 1, 'b3c36458-0777-41ce-8d8e-4858f69fcee7', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('d85a65e7-0474-4824-816a-b4600aeed690', 23, 1, 'b3c36458-0777-41ce-8d8e-4858f69fcee7', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('f8b41ed5-4eb2-4bd0-90d9-7f2b31bce598', 22, 1, 'b3c36458-0777-41ce-8d8e-4858f69fcee7', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('46c00eff-6cd6-453d-ae84-3456c16fba49', 0, 1, 'a4bc7d52-3dc4-4024-ac03-6cfed4c6250d', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('dd63d4fb-79bb-41c9-95f4-10fe3971b362', 23, 1, 'a4bc7d52-3dc4-4024-ac03-6cfed4c6250d', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('caf16ab0-48ac-448c-812d-c5996963c89d', 21, 1, 'a4bc7d52-3dc4-4024-ac03-6cfed4c6250d', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('104bffca-56fb-440e-9628-3fb65e25bd91', 0, 1, '6800a7ef-7217-4bf4-b82d-6ffe0dc4a742', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('e695fc32-070c-466e-ba8f-c5776af59254', 15, 1, '6800a7ef-7217-4bf4-b82d-6ffe0dc4a742', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('47456065-d8bc-4f5c-8a28-0f2136f0c4b3', 23, 1, '6800a7ef-7217-4bf4-b82d-6ffe0dc4a742', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('cdf7a968-8eb1-44f6-9bd9-da989cd22527', 0, 1, 'b4b0ba5c-74ec-4e4a-8adc-e058684701f0', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('ea1b78e3-3785-4844-b883-970ecb494f1f', 9, 1, 'b4b0ba5c-74ec-4e4a-8adc-e058684701f0', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('7d4a974a-76e4-4bc9-96a5-02b9c4855481', 23, 1, 'b4b0ba5c-74ec-4e4a-8adc-e058684701f0', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('fa7e4eca-581f-41c1-a232-c5ff7d6cd017', 0, 1, '7139129e-d78c-4354-b98e-9e5f6a6e02d1', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('0f620850-505d-446a-9d4c-f26346dc5ece', 4, 1, '7139129e-d78c-4354-b98e-9e5f6a6e02d1', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('26c7b466-c089-47ad-bd3e-d6558a66bdb0', 5.7, 1, '7139129e-d78c-4354-b98e-9e5f6a6e02d1', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('85f2ae43-be5c-4565-95c0-1249fca4d6e2', 0, 1, '09679540-426a-4e09-b98e-a4e8cfec51ee', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('dc5aa97d-1b32-4302-9f7d-07f6c9b1c788', 2.7, 1, '09679540-426a-4e09-b98e-a4e8cfec51ee', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('dc4f2d0c-c107-44cd-b73f-f182c8fdf8ed', 8.3, 1, '09679540-426a-4e09-b98e-a4e8cfec51ee', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('a66b5474-da8a-4cf2-b8dc-65728e6d72e3', 0, 1, 'bd91c8a1-9f56-4bb4-b52c-11fde69f027c', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('55c851d5-e1a0-4f88-884c-41b07e8a6f2b', 11, 1, 'bd91c8a1-9f56-4bb4-b52c-11fde69f027c', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('bf45690e-daf3-45e9-a0fc-a91cd1527406', 23, 1, 'bd91c8a1-9f56-4bb4-b52c-11fde69f027c', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('f6606698-88e4-4571-97d6-45914b1157e6', 1, 1, 'e2694d52-41ee-49a4-9647-c8e9d213c757', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('dcbbd80b-5454-496d-9a78-e59f1a7af2ae', 0, 1, 'e2694d52-41ee-49a4-9647-c8e9d213c757', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('7928613c-d0c3-438b-9654-a43987ee0718', 0, 1, 'e2694d52-41ee-49a4-9647-c8e9d213c757', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('06abb843-3f67-4e29-959d-a0d9a7f142b9', 23.6, 1, '7dc46b4c-aae7-4393-a4be-6b0b1d3ef8fe', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('a2c28faa-112f-4e3f-b7ed-381827978ae8', 1.1, 1, '7dc46b4c-aae7-4393-a4be-6b0b1d3ef8fe', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('f4331d3e-5635-4071-a9e8-3cba4aef0477', 3.4, 1, '7dc46b4c-aae7-4393-a4be-6b0b1d3ef8fe', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('34bfc21a-c5a8-42b0-8e99-de7b524b4784', 33.4, 1, 'a2fc9fdc-4c1e-4f19-86e3-c14ef3a87b01', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('4c35a0c0-ac7b-428a-988a-13af8a0f5e11', 0.7, 1, 'a2fc9fdc-4c1e-4f19-86e3-c14ef3a87b01', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('eb65b25d-8167-4dc0-b500-093e75a133d7', 5.5, 1, 'a2fc9fdc-4c1e-4f19-86e3-c14ef3a87b01', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('723075cc-1a34-47ca-9255-7bc44d55847e', 12.2, 1, 'e27b1ef0-64fb-4600-b656-cec327905031', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('3d045132-4c0f-455f-8d42-46ad31265f63', 0.8, 1, 'e27b1ef0-64fb-4600-b656-cec327905031', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('2ad2d346-94ad-4e0c-9606-3f7d02dfcb02', 2.7, 1, 'e27b1ef0-64fb-4600-b656-cec327905031', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('7aee956b-914a-4eb1-b39e-e8341bde6d9d', 17.2, 1, 'd97191cb-2abc-49cb-9c9a-b424e0a7bbab', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('258bcb72-3535-4e16-b6ce-c8de39d256a2', 1.2, 1, 'd97191cb-2abc-49cb-9c9a-b424e0a7bbab', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('fdf4a682-9a60-4090-8886-4f67e7cc501a', 3.2, 1, 'd97191cb-2abc-49cb-9c9a-b424e0a7bbab', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('d41ec189-e70f-49d9-a2f1-ad0b05bfab84', 30, 1, '664a98f9-c447-4c4f-9d00-36ff0408d09e', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('1c491d13-0c10-4215-ac9c-a9fd3e2a1b5a', 0.5, 1, '664a98f9-c447-4c4f-9d00-36ff0408d09e', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('d0f7f02d-a892-4513-9fd5-97864bcceda7', 3.6, 1, '664a98f9-c447-4c4f-9d00-36ff0408d09e', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('cc120ee8-bed6-4599-a1d9-979ac34ad4d3', 0, 1, 'fd670721-d344-41a3-b964-4ad13642921c', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('15c3c1b7-7733-4553-876d-4d5fffba9f90', 0, 1, 'fd670721-d344-41a3-b964-4ad13642921c', '2b2dd419-c6b4-49cc-9be8-50992e91f36c'),
	('a86169f9-a6d8-4df3-8bbf-d61e8753c5eb', 8, 1, 'fd670721-d344-41a3-b964-4ad13642921c', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('7985bf4c-e89b-4964-bef4-f2b857c800d3', 0.945, 1, 'cc384e6a-5ecb-4e08-8ba9-ad9ff8c43b1c', '829e1eb9-5eea-4856-8906-74cff3b95cb1'),
	('d520d45a-6b90-47cb-9fb3-6b273b2dc216', 4.63, 1, 'cc384e6a-5ecb-4e08-8ba9-ad9ff8c43b1c', 'db02fbba-a1bb-4bf7-8411-69412b446f50'),
	('e78f664d-ead9-4de8-85a1-298614b97070', 8.62, 1, 'cc384e6a-5ecb-4e08-8ba9-ad9ff8c43b1c', '2b2dd419-c6b4-49cc-9be8-50992e91f36c');
/*!40000 ALTER TABLE "NutritionFactsNutrients" ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;