Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_ir-f5847ef923daaf57.wasmi_ir.49be460d726ce73a-cgu.1?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
@1348 = private unnamed_addr constant [11 x i8] c"I32x4Abs_Ss", align 1
@1349 = private unnamed_addr constant [11 x i8] c"I32x4Neg_Ss", align 1
@1350 = private unnamed_addr constant [15 x i8] c"I32x4AllTrue_Rs", align 1
@1351 = private unnamed_addr constant [15 x i8] c"I32x4Bitmask_Rs", align 1
@1352 = private unnamed_addr constant [27 x i8] c"I32x4ExtaddPairwiseI16x8_Ss", align 1
@1353 = private unnamed_addr constant [27 x i8] c"U32x4ExtaddPairwiseI16x8_Ss", align 1
@1354 = private unnamed_addr constant [22 x i8] c"I32x4ExtendLowI16x8_Ss", align 1
@1355 = private unnamed_addr constant [22 x i8] c"U32x4ExtendLowI16x8_Ss", align 1
@1356 = private unnamed_addr constant [23 x i8] c"I32x4ExtendHighI16x8_Ss", align 1
@1357 = private unnamed_addr constant [23 x i8] c"U32x4ExtendHighI16x8_Ss", align 1
@1358 = private unnamed_addr constant [11 x i8] c"I64x2Abs_Ss", align 1
@1359 = private unnamed_addr constant [11 x i8] c"I64x2Neg_Ss", align 1
@1360 = private unnamed_addr constant [15 x i8] c"I64x2AllTrue_Rs", align 1
@1361 = private unnamed_addr constant [15 x i8] c"I64x2Bitmask_Rs", align 1
@1362 = private unnamed_addr constant [22 x i8] c"I64x2ExtendLowI32x4_Ss", align 1
@1363 = private unnamed_addr constant [22 x i8] c"U64x2ExtendLowI32x4_Ss", align 1
@1364 = private unnamed_addr constant [23 x i8] c"I64x2ExtendHighI32x4_Ss", align 1
@1365 = private unnamed_addr constant [23 x i8] c"U64x2ExtendHighI32x4_Ss", align 1
@1366 = private unnamed_addr constant [23 x i8] c"F32x4DemoteZeroF64x2_Ss", align 1
@1367 = private unnamed_addr constant [12 x i8] c"F32x4Ceil_Ss", align 1
@1368 = private unnamed_addr constant [13 x i8] c"F32x4Floor_Ss", align 1
@1369 = private unnamed_addr constant [13 x i8] c"F32x4Trunc_Ss", align 1
@1370 = private unnamed_addr constant [15 x i8] c"F32x4Nearest_Ss", align 1
@1371 = private unnamed_addr constant [11 x i8] c"F32x4Abs_Ss", align 1
@1372 = private unnamed_addr constant [11 x i8] c"F32x4Neg_Ss", align 1
@1373 = private unnamed_addr constant [12 x i8] c"F32x4Sqrt_Ss", align 1
@1374 = private unnamed_addr constant [23 x i8] c"F64x2PromoteLowF32x4_Ss", align 1
@1375 = private unnamed_addr constant [12 x i8] c"F64x2Ceil_Ss", align 1
@1376 = private unnamed_addr constant [13 x i8] c"F64x2Floor_Ss", align 1
@1377 = private unnamed_addr constant [13 x i8] c"F64x2Trunc_Ss", align 1
@1378 = private unnamed_addr constant [15 x i8] c"F64x2Nearest_Ss", align 1
@1379 = private unnamed_addr constant [11 x i8] c"F64x2Abs_Ss", align 1
@1380 = private unnamed_addr constant [11 x i8] c"F64x2Neg_Ss", align 1
@1381 = private unnamed_addr constant [12 x i8] c"F64x2Sqrt_Ss", align 1
@1382 = private unnamed_addr constant [21 x i8] c"I32x4TruncSatF32x4_Ss", align 1
@1383 = private unnamed_addr constant [21 x i8] c"U32x4TruncSatF32x4_Ss", align 1
@1384 = private unnamed_addr constant [25 x i8] c"I32x4TruncSatZeroF64x2_Ss", align 1
@1385 = private unnamed_addr constant [25 x i8] c"U32x4TruncSatZeroF64x2_Ss", align 1
@1386 = private unnamed_addr constant [20 x i8] c"F32x4ConvertI32x4_Ss", align 1
@1387 = private unnamed_addr constant [20 x i8] c"F32x4ConvertU32x4_Ss", align 1
@1388 = private unnamed_addr constant [23 x i8] c"F64x2ConvertLowI32x4_Ss", align 1
@1389 = private unnamed_addr constant [23 x i8] c"F64x2ConvertLowU32x4_Ss", align 1
@1390 = private unnamed_addr constant [16 x i8] c"V128LowZero32_Sr", align 1
@1391 = private unnamed_addr constant [16 x i8] c"V128LowZero64_Sr", align 1
@1392 = private unnamed_addr constant [16 x i8] c"U16x8Widen8x8_Sr", align 1
@1393 = private unnamed_addr constant [16 x i8] c"I16x8Widen8x8_Sr", align 1
@1394 = private unnamed_addr constant [17 x i8] c"U32x4Widen16x4_Sr", align 1
@1395 = private unnamed_addr constant [17 x i8] c"I32x4Widen16x4_Sr", align 1
@1396 = private unnamed_addr constant [17 x i8] c"U64x2Widen32x2_Sr", align 1
@1397 = private unnamed_addr constant [17 x i8] c"I64x2Widen32x2_Sr", align 1
@1398 = private unnamed_addr constant [11 x i8] c"V128Load_Sr", align 1
@1399 = private unnamed_addr constant [23 x i8] c"V128LoadMem0Offset16_Sr", align 1
@1400 = private unnamed_addr constant [11 x i8] c"V128Load_Ss", align 1
@1401 = private unnamed_addr constant [23 x i8] c"V128LoadMem0Offset16_Ss", align 1
@1402 = private unnamed_addr constant [12 x i8] c"V128Store_Rs", align 1
@1403 = private unnamed_addr constant [24 x i8] c"V128StoreMem0Offset16_Rs", align 1
@1404 = private unnamed_addr constant [12 x i8] c"V128Store_Ss", align 1
@1405 = private unnamed_addr constant [24 x i8] c"V128StoreMem0Offset16_Ss", align 1
@1406 = private unnamed_addr constant [17 x i8] c"V128StoreLane8_Rs", align 1
@1407 = private unnamed_addr constant [29 x i8] c"V128StoreLane8Mem0Offset16_Rs", align 1
@1408 = private unnamed_addr constant [17 x i8] c"V128StoreLane8_Ss", align 1
@1409 = private unnamed_addr constant [29 x i8] c"V128StoreLane8Mem0Offset16_Ss", align 1
@1410 = private unnamed_addr constant [18 x i8] c"V128StoreLane16_Rs", align 1
@1411 = private unnamed_addr constant [30 x i8] c"V128StoreLane16Mem0Offset16_Rs", align 1
@1412 = private unnamed_addr constant [18 x i8] c"V128StoreLane16_Ss", align 1
@1413 = private unnamed_addr constant [30 x i8] c"V128StoreLane16Mem0Offset16_Ss", align 1
@1414 = private unnamed_addr constant [33 x i8] c"I32x4RelaxedDotI8x16I7x16Add_Ssss", align 1
@1415 = private unnamed_addr constant [21 x i8] c"F32x4RelaxedMadd_Ssss", align 1
@1416 = private unnamed_addr constant [22 x i8] c"F32x4RelaxedNmadd_Ssss", align 1
@1417 = private unnamed_addr constant [21 x i8] c"F64x2RelaxedMadd_Ssss", align 1
@1418 = private unnamed_addr constant [22 x i8] c"F64x2RelaxedNmadd_Ssss", align 1
@1419 = private unnamed_addr constant [18 x i8] c"V128Bitselect_Ssss", align 1
@1420 = private unnamed_addr constant [26 x i8] c"ran out of bytes to decode", align 1
@1421 = private unnamed_addr constant [31 x i8] c"encountered invalid bit pattern", align 1
@switch.table._RNvXNtCs6kx5fqqPdgs_8wasmi_ir5errorNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt = private unnamed_addr constant [3 x i8] c"\18\18\1A", align 8
@switch.table._RNvXNtCs6kx5fqqPdgs_8wasmi_ir5errorNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.2 = private unnamed_addr constant [3 x ptr] [ptr @11, ptr @12, ptr @13], align 8
@switch.table._RNvXs3_NtCs6kx5fqqPdgs_8wasmi_ir6opcodeNtB5_6OpCodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt = private unnamed_addr constant [1404 x i8] c"\09\09\09\09\0C\0C\0B\0B\0C\0C\0D\0D\09\09\09\09\0C\0C\0B\0B\0C\0C\0C\0C\09\09\09\09\0A\0A\0A\0A\0B\0B\0B\0B\0D\0D\0A\0A\10\10\10\10\10\10\10\10\0F\0F\09\09\09\09\0A\0A\0A\0A\0B\0B\0B\0B\0D\0D\0A\0A\10\10\10\10\10\10\10\10\10\10\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\09\09\09\09\0A\0A\0A\0A\09\09\09\09\0C\0C\0C\0C\0D\0D\0D\0D\0C\0C\0C\0C\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\0A\0A\0A\09\09\09\09\0C\0C\0C\0C\0D\0D\0D\0D\0C\0C\0C\0C\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0A\0A\0A\0A\0C\0C\0C\0C\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0D\0D\0D\0D\0C\0C\0C\0C\0D\0D\0D\0D\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0A\0A\0A\0A\0C\0C\0C\0C\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0D\0D\0D\0D\0C\0C\0C\0C\0D\0D\0D\0D\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0A\0A\0A\0A\0E\0E\0E\0E\11\11\11\11\0F\0F\0F\0F\12\12\12\12\0E\0E\0E\0E\11\11\11\11\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\11\11\11\11\0F\0F\0F\0F\12\12\12\12\0E\0E\0E\0E\11\11\11\11\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\11\11\11\11\0E\0E\0E\0E\0E\0E\0E\11\11\11\11\11\11\11\0E\0E\0E\0E\0E\0E\0E\11\11\11\11\11\11\11\0E\0E\0E\0E\11\11\11\11\0E\0E\0E\0E\0E\0E\0E\11\11\11\11\11\11\11\0E\0E\0E\0E\0E\0E\0E\11\11\11\11\11\11\11\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0A\16\18\0A\16\18\0A\0A\16\18\0A\16\18\0A\0A\16\18\0A\16\18\0A\0A\16\18\0A\16\18\0A\11\1D\1F\11\1D\1F\11\12\1E \12\1E \12\11\1D\1F\11\1D\1F\11\12\1E \12\1E \12\11\1D\1F\11\1D\1F\11\12\1E \12\1E \12\12\1E \12\1E \12\11\1D\1F\11\1D\1F\11\12\1E \12\1E \12\12\1E \12\1E \12\0B\17\0B\17\0B\17\0B\17\0B\17\0B\0B\0B\0B\17\0B\17\0B\17\0B\17\0B\17\0B\0B\0B\0B\17\0B\17\0B\0B\17\0B\17\0B\10\1C\10\1C\10\1C\10\1C\10\1C\10\10\10\11\1D\11\1D\11\1D\11\1D\11\1D\11\11\11\10\1C\10\1C\10\1C\10\1C\10\1C\10\10\10\11\1D\11\1D\11\1D\11\1D\11\1D\11\11\11\11\1D\11\1D\11\1D\11\1D\11\1D\11\11\11\06\04\0B\06\0D\0D\11\11\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\14\14\14\14\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\07\0C\0C\12\12\14\0E\14\0E\1A\14\1A\14\0E\0E\0E\0E\0E\0E\0E\0E\0E\08\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\09\09\09\09\09\08\09\09\0A\0A\0B\0B\0C\0F\0F\0F\0F\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\10\0B\0E\0B\0E\0B\0E\0B\0E\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0E\0B\0B\0B\0E\0B\0B\0B\0E\0A\0B\14\14\0C\0F\0F\0C\0F\0F\0C\0C\0C\0C\0D\1D\13\14\14\17\17\18\18\0C\0F\0F\0C\0F\0F\0C\0C\0C\0C\0C\0D\0C\0C\0C\0C\0C\0C\0C\11\17\17\18\18\0C\0C\0C\17\17\18\18\0C\0C\0C\0C\0C\0C\0D\0D\0C\0C\0C\0C\0C\0C\0D\0D\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0A\0E\0B\0B\0E\0F\0F\0B\0B\0F\0F\1B\1B\16\16\17\17\0B\0B\0F\0F\1B\1B\16\16\17\17\0B\0B\0F\0F\16\16\17\17\17\0C\0D\0D\0F\0B\0B\0C\17\0C\0D\0D\0F\0B\0B\0C\15\15\19\19\14\14\17\17\10\10\10\10\11\11\11\11\0B\17\0B\17\0C\18\0C\18\11\1D\11\1D\12\1E\12\1E!\15\16\15\16\12", align 8
@switch.table._RNvXs3_NtCs6kx5fqqPdgs_8wasmi_ir6opcodeNtB5_6OpCodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.3 = private unnamed_addr constant [1404 x ptr] [ptr @16, ptr @17, ptr @18, ptr @19, ptr @20, ptr @21, ptr @22, ptr @23, ptr @24, ptr @25, ptr @26, ptr @27, ptr @28, ptr @29, ptr @30, ptr @31, ptr @32, ptr @33, ptr @34, ptr @35, ptr @36, ptr @37, ptr @38, ptr @39, ptr @40, ptr @41, ptr @42, ptr @43, ptr @44, ptr @45, ptr @46, ptr @47, ptr @48, ptr @49, ptr @50, ptr @51, ptr @52, ptr @53, ptr @54, ptr @55, ptr @56, ptr @57, ptr @58, ptr @59, ptr @60, ptr @61, ptr @62, ptr @63, ptr @64, ptr @65, ptr @66, ptr @67, ptr @68, ptr @69, ptr @70, ptr @71, ptr @72, ptr @73, ptr @74, ptr @75, ptr @76, ptr @77, ptr @78, ptr @79, ptr @80, ptr @81, ptr @82, ptr @83, ptr @84, ptr @85, ptr @86, ptr @87, ptr @88, ptr @89, ptr @90, ptr @91, ptr @92, ptr @93, ptr @94, ptr @95, ptr @96, ptr @97, ptr @98, ptr @99, ptr @100, ptr @101, ptr @102, ptr @103, ptr @104, ptr @105, ptr @106, ptr @107, ptr @108, ptr @109, ptr @110, ptr @111, ptr @112, ptr @113, ptr @114, ptr @115, ptr @116, ptr @117, ptr @118, ptr @119, ptr @120, ptr @121, ptr @122, ptr @123, ptr @124, ptr @125, ptr @126, ptr @127, ptr @128, ptr @129, ptr @130, ptr @131, ptr @132, ptr @133, ptr @134, ptr @135, ptr @136, ptr @137, ptr @138, ptr @139, ptr @140, ptr @141, ptr @142, ptr @143, ptr @144, ptr @145, ptr @146, ptr @147, ptr @148, ptr @149, ptr @150, ptr @151, ptr @152, ptr @153, ptr @154, ptr @155, ptr @156, ptr @157, ptr @158, ptr @159, ptr @160, ptr @161, ptr @162, ptr @163, ptr @164, ptr @165, ptr @166, ptr @167, ptr @168, ptr @169, ptr @170, ptr @171, ptr @172, ptr @173, ptr @174, ptr @175, ptr @176, ptr @177, ptr @178, ptr @179, ptr @180, ptr @181, ptr @182, ptr @183, ptr @184, ptr @185, ptr @186, ptr @187, ptr @188, ptr @189, ptr @190, ptr @191, ptr @192, ptr @193, ptr @194, ptr @195, ptr @196, ptr @197, ptr @198, ptr @199, ptr @200, ptr @201, ptr @202, ptr @203, ptr @204, ptr @205, ptr @206, ptr @207, ptr @208, ptr @209, ptr @210, ptr @211, ptr @212, ptr @213, ptr @214, ptr @215, ptr @216, ptr @217, ptr @218, ptr @219, ptr @220, ptr @221, ptr @222, ptr @223, ptr @224, ptr @225, ptr @226, ptr @227, ptr @228, ptr @229, ptr @230, ptr @231, ptr @232, ptr @233, ptr @234, ptr @235, ptr @236, ptr @237, ptr @238, ptr @239, ptr @240, ptr @241, ptr @242, ptr @243, ptr @244, ptr @245, ptr @246, ptr @247, ptr @248, ptr @249, ptr @250, ptr @251, ptr @252, ptr @253, ptr @254, ptr @255, ptr @256, ptr @257, ptr @258, ptr @259, ptr @260, ptr @261, ptr @262, ptr @263, ptr @264, ptr @265, ptr @266, ptr @267, ptr @268, ptr @269, ptr @270, ptr @271, ptr @272, ptr @273, ptr @274, ptr @275, ptr @276, ptr @277, ptr @278, ptr @279, ptr @280, ptr @281, ptr @282, ptr @283, ptr @284, ptr @285, ptr @286, ptr @287, ptr @288, ptr @289, ptr @290, ptr @291, ptr @292, ptr @293, ptr @294, ptr @295, ptr @296, ptr @297, ptr @298, ptr @299, ptr @300, ptr @301, ptr @302, ptr @303, ptr @304, ptr @305, ptr @306, ptr @307, ptr @308, ptr @309, ptr @310, ptr @311, ptr @312, ptr @313, ptr @314, ptr @315, ptr @316, ptr @317, ptr @318, ptr @319, ptr @320, ptr @321, ptr @322, ptr @323, ptr @324, ptr @325, ptr @326, ptr @327, ptr @328, ptr @329, ptr @330, ptr @331, ptr @332, ptr @333, ptr @334, ptr @335, ptr @336, ptr @337, ptr @338, ptr @339, ptr @340, ptr @341, ptr @342, ptr @343, ptr @344, ptr @345, ptr @346, ptr @347, ptr @348, ptr @349, ptr @350, ptr @351, ptr @352, ptr @353, ptr @354, ptr @355, ptr @356, ptr @357, ptr @358, ptr @359, ptr @360, ptr @361, ptr @362, ptr @363, ptr @364, ptr @365, ptr @366, ptr @367, ptr @368, ptr @369, ptr @370, ptr @371, ptr @372, ptr @373, ptr @374, ptr @375, ptr @376, ptr @377, ptr @378, ptr @379, ptr @380, ptr @381, ptr @382, ptr @383, ptr @384, ptr @385, ptr @386, ptr @387, ptr @388, ptr @389, ptr @390, ptr @391, ptr @392, ptr @393, ptr @394, ptr @395, ptr @396, ptr @397, ptr @398, ptr @399, ptr @400, ptr @401, ptr @402, ptr @403, ptr @404, ptr @405, ptr @406, ptr @407, ptr @408, ptr @409, ptr @410, ptr @411, ptr @412, ptr @413, ptr @414, ptr @415, ptr @416, ptr @417, ptr @418, ptr @419, ptr @420, ptr @421, ptr @422, ptr @423, ptr @424, ptr @425, ptr @426, ptr @427, ptr @428, ptr @429, ptr @430, ptr @431, ptr @432, ptr @433, ptr @434, ptr @435, ptr @436, ptr @437, ptr @438, ptr @439, ptr @440, ptr @441, ptr @442, ptr @443, ptr @444, ptr @445, ptr @446, ptr @447, ptr @448, ptr @449, ptr @450, ptr @451, ptr @452, ptr @453, ptr @454, ptr @455, ptr @456, ptr @457, ptr @458, ptr @459, ptr @460, ptr @461, ptr @462, ptr @463, ptr @464, ptr @465, ptr @466, ptr @467, ptr @468, ptr @469, ptr @470, ptr @471, ptr @472, ptr @473, ptr @474, ptr @475, ptr @476, ptr @477, ptr @478, ptr @479, ptr @480, ptr @481, ptr @482, ptr @483, ptr @484, ptr @485, ptr @486, ptr @487, ptr @488, ptr @489, ptr @490, ptr @491, ptr @492, ptr @493, ptr @494, ptr @495, ptr @496, ptr @497, ptr @498, ptr @499, ptr @500, ptr @501, ptr @502, ptr @503, ptr @504, ptr @505, ptr @506, ptr @507, ptr @508, ptr @509, ptr @510, ptr @511, ptr @512, ptr @513, ptr @514, ptr @515, ptr @516, ptr @517, ptr @518, ptr @519, ptr @520, ptr @521, ptr @522, ptr @523, ptr @524, ptr @525, ptr @526, ptr @527, ptr @528, ptr @529, ptr @530, ptr @531, ptr @532, ptr @533, ptr @534, ptr @535, ptr @536, ptr @537, ptr @538, ptr @539, ptr @540, ptr @541, ptr @542, ptr @543, ptr @544, ptr @545, ptr @546, ptr @547, ptr @548, ptr @549, ptr @550, ptr @551, ptr @552, ptr @553, ptr @554, ptr @555, ptr @556, ptr @557, ptr @558, ptr @559, ptr @560, ptr @561, ptr @562, ptr @563, ptr @564, ptr @565, ptr @566, ptr @567, ptr @568, ptr @569, ptr @570, ptr @571, ptr @572, ptr @573, ptr @574, ptr @575, ptr @576, ptr @577, ptr @578, ptr @579, ptr @580, ptr @581, ptr @582, ptr @583, ptr @584, ptr @585, ptr @586, ptr @587, ptr @588, ptr @589, ptr @590, ptr @591, ptr @592, ptr @593, ptr @594, ptr @595, ptr @596, ptr @597, ptr @598, ptr @599, ptr @600, ptr @601, ptr @602, ptr @603, ptr @604, ptr @605, ptr @606, ptr @607, ptr @608, ptr @609, ptr @610, ptr @611, ptr @612, ptr @613, ptr @614, ptr @615, ptr @616, ptr @617, ptr @618, ptr @619, ptr @620, ptr @621, ptr @622, ptr @623, ptr @624, ptr @625, ptr @626, ptr @627, ptr @628, ptr @629, ptr @630, ptr @631, ptr @632, ptr @633, ptr @634, ptr @635, ptr @636, ptr @637, ptr @638, ptr @639, ptr @640, ptr @641, ptr @642, ptr @643, ptr @644, ptr @645, ptr @646, ptr @647, ptr @648, ptr @649, ptr @650, ptr @651, ptr @652, ptr @653, ptr @654, ptr @655, ptr @656, ptr @657, ptr @658, ptr @659, ptr @660, ptr @661, ptr @662, ptr @663, ptr @664, ptr @665, ptr @666, ptr @667, ptr @668, ptr @669, ptr @670, ptr @671, ptr @672, ptr @673, ptr @674, ptr @675, ptr @676, ptr @677, ptr @678, ptr @679, ptr @680, ptr @681, ptr @682, ptr @683, ptr @684, ptr @685, ptr @686, ptr @687, ptr @688, ptr @689, ptr @690, ptr @691, ptr @692, ptr @693, ptr @694, ptr @695, ptr @696, ptr @697, ptr @698, ptr @699, ptr @700, ptr @701, ptr @702, ptr @703, ptr @704, ptr @705, ptr @706, ptr @707, ptr @708, ptr @709, ptr @710, ptr @711, ptr @712, ptr @713, ptr @714, ptr @715, ptr @716, ptr @717, ptr @718, ptr @719, ptr @720, ptr @721, ptr @722, ptr @723, ptr @724, ptr @725, ptr @726, ptr @727, ptr @728, ptr @729, ptr @730, ptr @731, ptr @732, ptr @733, ptr @734, ptr @735, ptr @736, ptr @737, ptr @738, ptr @739, ptr @740, ptr @741, ptr @742, ptr @743, ptr @744, ptr @745, ptr @746, ptr @747, ptr @748, ptr @749, ptr @750, ptr @751, ptr @752, ptr @753, ptr @754, ptr @755, ptr @756, ptr @757, ptr @758, ptr @759, ptr @760, ptr @761, ptr @762, ptr @763, ptr @764, ptr @765, ptr @766, ptr @767, ptr @768, ptr @769, ptr @770, ptr @771, ptr @772, ptr @773, ptr @774, ptr @775, ptr @776, ptr @777, ptr @778, ptr @779, ptr @780, ptr @781, ptr @782, ptr @783, ptr @784, ptr @785, ptr @786, ptr @787, ptr @788, ptr @789, ptr @790, ptr @791, ptr @792, ptr @793, ptr @794, ptr @795, ptr @796, ptr @797, ptr @798, ptr @799, ptr @800, ptr @801, ptr @802, ptr @803, ptr @804, ptr @805, ptr @806, ptr @807, ptr @808, ptr @809, ptr @810, ptr @811, ptr @812, ptr @813, ptr @814, ptr @815, ptr @816, ptr @817, ptr @818, ptr @819, ptr @820, ptr @821, ptr @822, ptr @823, ptr @824, ptr @825, ptr @826, ptr @827, ptr @828, ptr @829, ptr @830, ptr @831, ptr @832, ptr @833, ptr @834, ptr @835, ptr @836, ptr @837, ptr @838, ptr @839, ptr @840, ptr @841, ptr @842, ptr @843, ptr @844, ptr @845, ptr @846, ptr @847, ptr @848, ptr @849, ptr @850, ptr @851, ptr @852, ptr @853, ptr @854, ptr @855, ptr @856, ptr @857, ptr @858, ptr @859, ptr @860, ptr @861, ptr @862, ptr @863, ptr @864, ptr @865, ptr @866, ptr @867, ptr @868, ptr @869, ptr @870, ptr @871, ptr @872, ptr @873, ptr @874, ptr @875, ptr @876, ptr @877, ptr @878, ptr @879, ptr @880, ptr @881, ptr @882, ptr @883, ptr @884, ptr @885, ptr @886, ptr @887, ptr @888, ptr @889, ptr @890, ptr @891, ptr @892, ptr @893, ptr @894, ptr @895, ptr @896, ptr @897, ptr @898, ptr @899, ptr @900, ptr @901, ptr @902, ptr @903, ptr @904, ptr @905, ptr @906, ptr @907, ptr @908, ptr @909, ptr @910, ptr @911, ptr @912, ptr @913, ptr @914, ptr @915, ptr @916, ptr @917, ptr @918, ptr @919, ptr @920, ptr @921, ptr @922, ptr @923, ptr @924, ptr @925, ptr @926, ptr @927, ptr @928, ptr @929, ptr @930, ptr @931, ptr @932, ptr @933, ptr @934, ptr @935, ptr @936, ptr @937, ptr @938, ptr @939, ptr @940, ptr @941, ptr @942, ptr @943, ptr @944, ptr @945, ptr @946, ptr @947, ptr @948, ptr @949, ptr @950, ptr @951, ptr @952, ptr @953, ptr @954, ptr @955, ptr @956, ptr @957, ptr @958, ptr @959, ptr @960, ptr @961, ptr @962, ptr @963, ptr @964, ptr @965, ptr @966, ptr @967, ptr @968, ptr @969, ptr @970, ptr @971, ptr @972, ptr @973, ptr @974, ptr @975, ptr @976, ptr @977, ptr @978, ptr @979, ptr @980, ptr @981, ptr @982, ptr @983, ptr @984, ptr @985, ptr @986, ptr @987, ptr @988, ptr @989, ptr @990, ptr @991, ptr @992, ptr @993, ptr @994, ptr @995, ptr @996, ptr @997, ptr @998, ptr @999, ptr @1000, ptr @1001, ptr @1002, ptr @1003, ptr @1004, ptr @1005, ptr @1006, ptr @1007, ptr @1008, ptr @1009, ptr @1010, ptr @1011, ptr @1012, ptr @1013, ptr @1014, ptr @1015, ptr @1016, ptr @1017, ptr @1018, ptr @1019, ptr @1020, ptr @1021, ptr @1022, ptr @1023, ptr @1024, ptr @1025, ptr @1026, ptr @1027, ptr @1028, ptr @1029, ptr @1030, ptr @1031, ptr @1032, ptr @1033, ptr @1034, ptr @1035, ptr @1036, ptr @1037, ptr @1038, ptr @1039, ptr @1040, ptr @1041, ptr @1042, ptr @1043, ptr @1044, ptr @1045, ptr @1046, ptr @1047, ptr @1048, ptr @1049, ptr @1050, ptr @1051, ptr @1052, ptr @1053, ptr @1054, ptr @1055, ptr @1056, ptr @1057, ptr @1058, ptr @1059, ptr @1060, ptr @1061, ptr @1062, ptr @1063, ptr @1064, ptr @1065, ptr @1066, ptr @1067, ptr @1068, ptr @1069, ptr @1070, ptr @1071, ptr @1072, ptr @1073, ptr @1074, ptr @1075, ptr @1076, ptr @1077, ptr @1078, ptr @1079, ptr @1080, ptr @1081, ptr @1082, ptr @1083, ptr @1084, ptr @1085, ptr @1086, ptr @1087, ptr @1088, ptr @1089, ptr @1090, ptr @1091, ptr @1092, ptr @1093, ptr @1094, ptr @1095, ptr @1096, ptr @1097, ptr @1098, ptr @1099, ptr @1100, ptr @1101, ptr @1102, ptr @1103, ptr @1104, ptr @1105, ptr @1106, ptr @1107, ptr @1108, ptr @1109, ptr @1110, ptr @1111, ptr @1112, ptr @1113, ptr @1114, ptr @1115, ptr @1116, ptr @1117, ptr @1118, ptr @1119, ptr @1120, ptr @1121, ptr @1122, ptr @1123, ptr @1124, ptr @1125, ptr @1126, ptr @1127, ptr @1128, ptr @1129, ptr @1130, ptr @1131, ptr @1132, ptr @1133, ptr @1134, ptr @1135, ptr @1136, ptr @1137, ptr @1138, ptr @1139, ptr @1140, ptr @1141, ptr @1142, ptr @1143, ptr @1144, ptr @1145, ptr @1146, ptr @1147, ptr @1148, ptr @1149, ptr @1150, ptr @1151, ptr @1152, ptr @1153, ptr @1154, ptr @1155, ptr @1156, ptr @1157, ptr @1158, ptr @1159, ptr @1160, ptr @1161, ptr @1162, ptr @1163, ptr @1164, ptr @1165, ptr @1166, ptr @1167, ptr @1168, ptr @1169, ptr @1170, ptr @1171, ptr @1172, ptr @1173, ptr @1174, ptr @1175, ptr @1176, ptr @1177, ptr @1178, ptr @1179, ptr @1180, ptr @1181, ptr @1182, ptr @1183, ptr @1184, ptr @1185, ptr @1186, ptr @1187, ptr @1188, ptr @1189, ptr @1190, ptr @1191, ptr @1192, ptr @1193, ptr @1194, ptr @1195, ptr @1196, ptr @1197, ptr @1198, ptr @1199, ptr @1200, ptr @1201, ptr @1202, ptr @1203, ptr @1204, ptr @1205, ptr @1206, ptr @1207, ptr @1208, ptr @1209, ptr @1210, ptr @1211, ptr @1212, ptr @1213, ptr @1214, ptr @1215, ptr @1216, ptr @1217, ptr @1218, ptr @1219, ptr @1220, ptr @1221, ptr @1222, ptr @1223, ptr @1224, ptr @1225, ptr @1226, ptr @1227, ptr @1228, ptr @1229, ptr @1230, ptr @1231, ptr @1232, ptr @1233, ptr @1234, ptr @1235, ptr @1236, ptr @1237, ptr @1238, ptr @1239, ptr @1240, ptr @1241, ptr @1242, ptr @1243, ptr @1244, ptr @1245, ptr @1246, ptr @1247, ptr @1248, ptr @1249, ptr @1250, ptr @1251, ptr @1252, ptr @1253, ptr @1254, ptr @1255, ptr @1256, ptr @1257, ptr @1258, ptr @1259, ptr @1260, ptr @1261, ptr @1262, ptr @1263, ptr @1264, ptr @1265, ptr @1266, ptr @1267, ptr @1268, ptr @1269, ptr @1270, ptr @1271, ptr @1272, ptr @1273, ptr @1274, ptr @1275, ptr @1276, ptr @1277, ptr @1278, ptr @1279, ptr @1280, ptr @1281, ptr @1282, ptr @1283, ptr @1284, ptr @1285, ptr @1286, ptr @1287, ptr @1288, ptr @1289, ptr @1290, ptr @1291, ptr @1292, ptr @1293, ptr @1294, ptr @1295, ptr @1296, ptr @1297, ptr @1298, ptr @1299, ptr @1300, ptr @1301, ptr @1302, ptr @1303, ptr @1304, ptr @1305, ptr @1306, ptr @1307, ptr @1308, ptr @1309, ptr @1310, ptr @1311, ptr @1312, ptr @1313, ptr @1314, ptr @1315, ptr @1316, ptr @1317, ptr @1318, ptr @1319, ptr @1320, ptr @1321, ptr @1322, ptr @1323, ptr @1324, ptr @1325, ptr @1326, ptr @1327, ptr @1328, ptr @1329, ptr @1330, ptr @1331, ptr @1332, ptr @1333, ptr @1334, ptr @1335, ptr @1336, ptr @1337, ptr @1338, ptr @1339, ptr @1340, ptr @1341, ptr @1342, ptr @1343, ptr @1344, ptr @1345, ptr @1346, ptr @1347, ptr @1348, ptr @1349, ptr @1350, ptr @1351, ptr @1352, ptr @1353, ptr @1354, ptr @1355, ptr @1356, ptr @1357, ptr @1358, ptr @1359, ptr @1360, ptr @1361, ptr @1362, ptr @1363, ptr @1364, ptr @1365, ptr @1366, ptr @1367, ptr @1368, ptr @1369, ptr @1370, ptr @1371, ptr @1372, ptr @1373, ptr @1374, ptr @1375, ptr @1376, ptr @1377, ptr @1378, ptr @1379, ptr @1380, ptr @1381, ptr @1382, ptr @1383, ptr @1384, ptr @1385, ptr @1386, ptr @1387, ptr @1388, ptr @1389, ptr @1390, ptr @1391, ptr @1392, ptr @1393, ptr @1394, ptr @1395, ptr @1396, ptr @1397, ptr @1398, ptr @1399, ptr @1400, ptr @1401, ptr @1402, ptr @1403, ptr @1404, ptr @1405, ptr @1406, ptr @1407, ptr @1408, ptr @1409, ptr @1410, ptr @1411, ptr @1412, ptr @1413, ptr @1414, ptr @1415, ptr @1416, ptr @1417, ptr @1418, ptr @1419], align 8

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedttECs6kx5fqqPdgs_8wasmi_ir(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #5
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs6_NtCs6kx5fqqPdgs_8wasmi_ir4spanNtB5_12SlotSpanIter22has_overlapping_copies(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = lshr i32 %1, 3
  %i.d = trunc i32 %i.c to i16                    ; 3 uses
  %i.e = lshr i32 %0, 3
  %i.f = trunc i32 %i.e to i16                    ; 3 uses
  %i.g = icmp ult i16 %i.d, %i.f
  %i.h = sub nuw i16 %i.d, %i.f
  %i.i = sub nuw i16 %i.f, %i.d
  %storemerge = select i1 %i.g, i16 %i.i, i16 %i.h ; 3 uses
  store i16 %storemerge, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = lshr i32 %3, 3
  %i.k = trunc i32 %i.j to i16                    ; 3 uses
  %i.l = lshr i32 %2, 3
  %i.m = trunc i32 %i.l to i16                    ; 3 uses
  %i.n = icmp ult i16 %i.k, %i.m
  %i.o = sub nuw i16 %i.k, %i.m
  %i.p = sub nuw i16 %i.m, %i.k
  %storemerge15 = select i1 %i.n, i16 %i.p, i16 %i.o ; 2 uses
  store i16 %storemerge15, ptr %i.a, align 2
  %i.q = icmp eq i16 %storemerge, %storemerge15
  br i1 %i.q, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedttECs6kx5fqqPdgs_8wasmi_ir(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.b, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noundef nonnull @1, ptr nonnull inttoptr (i64 101 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = icmp ugt i16 %storemerge, 1
  %.not = icmp ult i32 %2, %0
  %or.cond = and i1 %.not, %i.r
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i32 %2, %3
  br i1 %i.s, label %bb.f, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.t = add i32 %3, -8
  %i.u = icmp uge i32 %i.t, %0
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #5
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.e
  %.sroa.0.0 = phi i1 [ %i.u, %bb.e ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtCs6kx5fqqPdgs_8wasmi_ir9primitiveNtB5_12BranchOffset4init(ptr noalias nofree noundef align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !noundef !6
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.e, !prof !4

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %0, align 4
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #5
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs6kx5fqqPdgs_8wasmi_ir5errorNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !7, !noundef !6 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtCs6kx5fqqPdgs_8wasmi_ir5errorNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXNtCs6kx5fqqPdgs_8wasmi_ir5errorNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.2, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs6kx5fqqPdgs_8wasmi_ir5indexNtB5_12InternalFuncNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 12)
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvXsb_NtCskKLDkoKarTP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 40)
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %2 = ptrtoint ptr %0 to i64
  store i64 %2, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt to i64), ptr %.sroa.44.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !8, !noundef !6
  %i.g = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @15, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call noundef zeroext i1 @_RNvXsb_NtCskKLDkoKarTP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 41)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.h, %bb.d ], [ true, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i8 0, 3) i8 @_RNvXs0_NtCs6kx5fqqPdgs_8wasmi_ir6decodeRShNtB5_7Decoder10read_bytes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %2
  %i.e = sub nuw i64 %i.b, %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.c, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !9
  store ptr %i.d, ptr %0, align 8, !captures !13
  store i64 %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ 2, %bb.b ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRtNtB6_5Debug3fmtCs6kx5fqqPdgs_8wasmi_ir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !15, !noalias !18, !noundef !6 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsV_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs3_NtNtNtCskKLDkoKarTP_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsV_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXso_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsV_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Debug3fmt.exit

_RNvXsV_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCs6kx5fqqPdgs_8wasmi_ir6opcodeNtB5_6OpCodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i16, ptr %0, align 2, !range !20, !noundef !6 ; 2 uses
  %i.b = zext nneg i16 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtCs6kx5fqqPdgs_8wasmi_ir6opcodeNtB5_6OpCodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i16 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs3_NtCs6kx5fqqPdgs_8wasmi_ir6opcodeNtB5_6OpCodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.3, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCs6kx5fqqPdgs_8wasmi_ir6decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !21, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 31, i64 26
  %.1 = select i1 %i.b, ptr @1421, ptr @1420
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19assert_failed_inner(i8 noundef range(i8 0, 3), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCskKLDkoKarTP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCskKLDkoKarTP_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

attributes #0 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{}
!7 = !{i8 0, i8 3}
!8 = !{i64 8}
!9 = !{!10, !12}
!10 = distinct !{!10, !11, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs6kx5fqqPdgs_8wasmi_ir: argument 0"}
!11 = distinct !{!11, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs6kx5fqqPdgs_8wasmi_ir"}
!12 = distinct !{!12, !11, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs6kx5fqqPdgs_8wasmi_ir: argument 1"}
!13 = !{!"address", !"read_provenance"}
!14 = !{i64 2}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_RNvXsV_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Debug3fmt: argument 1"}
!17 = distinct !{!17, !"_RNvXsV_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Debug3fmt"}
!18 = !{!19}
!19 = distinct !{!19, !17, !"_RNvXsV_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_5Debug3fmt: argument 0"}
!20 = !{i16 0, i16 1404}
!21 = !{i8 0, i8 2}
end_hunk_0
