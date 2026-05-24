inline.NumInlined: 718
inline.NumDeleted: 308
begin_hunk_0_@_ZN2v88internal8compiler13CodeAssembler35BitcastTaggedToWordForTagAndSmiBitsENS0_5TNodeINS0_5UnionIJNS0_6ObjectENS0_9MaybeWeakIS5_EEEEEEE

declare void @_ZN2v88internal8compiler13CodeAssembler14IntPtrLessThanENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.16") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZN2v88internal17CodeStubAssemblerC2EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare void @_ZN2v88internal8compiler13CodeAssembler19ChangeInt32ToIntPtrENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZN2v88internal17CodeStubArgumentsC2EPNS0_17CodeStubAssemblerENS0_5TNodeINS0_7IntPtrTEEENS4_INS0_7RawPtrTEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef dead_on_return, ptr noundef dead_on_return) unnamed_addr #2

declare void @_ZN2v88internal17CodeStubArguments24GetOptionalArgumentValueENS0_5TNodeINS0_7IntPtrTEEENS2_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.17") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.2") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler13CodeAssembler14LoadFromObjectENS0_11MachineTypeENS0_5TNodeINS0_6ObjectEEENS4_INS0_7IntPtrTEEE(ptr noundef nonnull align 8 dereferenceable(8), i16, ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler13CodeAssembler39OptimizedStoreFieldUnsafeNoWriteBarrierENS0_21MachineRepresentationENS0_5TNodeINS0_10HeapObjectEEEiPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef zeroext, ptr noundef dead_on_return, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler21CodeAssemblerVariableC2EPNS1_13CodeAssemblerENS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i8 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal4wasm13BuiltinLookup15IsWasmBuiltinIdENS0_7BuiltinE(i32 noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 1368, label %bb.c
    i32 1371, label %bb.c
    i32 1372, label %bb.c
    i32 1373, label %bb.c
    i32 1374, label %bb.c
    i32 1375, label %bb.c
    i32 1376, label %bb.c
    i32 1377, label %bb.c
    i32 1378, label %bb.c
    i32 1379, label %bb.c
    i32 1380, label %bb.c
    i32 1381, label %bb.c
    i32 1382, label %bb.c
    i32 1383, label %bb.c
    i32 1384, label %bb.c
    i32 1385, label %bb.c
    i32 1386, label %bb.c
    i32 707, label %bb.c
    i32 1342, label %bb.c
    i32 708, label %bb.c
    i32 709, label %bb.c
    i32 1317, label %bb.c
    i32 1318, label %bb.c
    i32 714, label %bb.c
    i32 1423, label %bb.c
    i32 1422, label %bb.c
    i32 1320, label %bb.c
    i32 712, label %bb.c
    i32 713, label %bb.c
    i32 1321, label %bb.c
    i32 1351, label %bb.c
    i32 1362, label %bb.c
    i32 1363, label %bb.c
    i32 1366, label %bb.c
    i32 1333, label %bb.c
    i32 1334, label %bb.c
    i32 1323, label %bb.c
    i32 1324, label %bb.c
    i32 1325, label %bb.c
    i32 1326, label %bb.c
    i32 1327, label %bb.c
    i32 1328, label %bb.c
    i32 1329, label %bb.c
    i32 1330, label %bb.c
    i32 1332, label %bb.c
    i32 1331, label %bb.c
    i32 1344, label %bb.c
    i32 1343, label %bb.c
    i32 1345, label %bb.c
    i32 1336, label %bb.c
    i32 1338, label %bb.c
    i32 1339, label %bb.c
    i32 1340, label %bb.c
    i32 1341, label %bb.c
    i32 711, label %bb.c
    i32 1348, label %bb.c
    i32 1349, label %bb.c
    i32 1347, label %bb.c
    i32 1346, label %bb.c
    i32 147, label %bb.c
    i32 146, label %bb.c
    i32 1364, label %bb.c
    i32 1365, label %bb.c
    i32 780, label %bb.c
    i32 149, label %bb.c
    i32 148, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 1403, label %bb.c
    i32 1404, label %bb.c
    i32 1405, label %bb.c
    i32 1402, label %bb.c
    i32 1401, label %bb.c
    i32 1604, label %bb.c
    i32 1355, label %bb.c
    i32 1356, label %bb.c
    i32 1359, label %bb.c
    i32 1357, label %bb.c
    i32 1358, label %bb.c
    i32 1352, label %bb.c
    i32 1353, label %bb.c
    i32 1354, label %bb.c
    i32 1350, label %bb.c
    i32 710, label %bb.c
    i32 705, label %bb.c
    i32 1387, label %bb.c
    i32 1389, label %bb.c
    i32 1393, label %bb.c
    i32 1394, label %bb.c
    i32 1395, label %bb.c
    i32 1396, label %bb.c
    i32 1399, label %bb.c
    i32 1406, label %bb.c
    i32 1407, label %bb.c
    i32 1408, label %bb.c
    i32 1392, label %bb.c
    i32 1413, label %bb.c
    i32 1417, label %bb.c
    i32 1414, label %bb.c
    i32 1415, label %bb.c
    i32 1388, label %bb.c
    i32 1390, label %bb.c
    i32 1397, label %bb.c
    i32 1398, label %bb.c
    i32 1400, label %bb.c
    i32 1409, label %bb.c
    i32 1410, label %bb.c
    i32 1411, label %bb.c
    i32 1412, label %bb.c
    i32 1416, label %bb.c
    i32 1418, label %bb.c
    i32 1419, label %bb.c
    i32 1420, label %bb.c
    i32 1421, label %bb.c
    i32 80, label %bb.c
    i32 1429, label %bb.c
    i32 1424, label %bb.c
    i32 1425, label %bb.c
    i32 1426, label %bb.c
    i32 1427, label %bb.c
    i32 1391, label %bb.c
    i32 778, label %bb.c
    i32 1283, label %bb.c
    i32 1282, label %bb.c
    i32 1428, label %bb.c
    i32 0, label %bb.c
    i32 1337, label %bb.c
    i32 1370, label %bb.c
    i32 1430, label %bb.c
    i32 1431, label %bb.c
    i32 1432, label %bb.c
    i32 1433, label %bb.c
    i32 1434, label %bb.c
    i32 1435, label %bb.c
    i32 128, label %bb.c
    i32 129, label %bb.c
    i32 130, label %bb.c
    i32 74, label %bb.c
    i32 702, label %bb.c
    i32 1367, label %bb.c
    i32 1369, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

declare noundef i32 @_ZN2v88internal8compiler13CodeAssembler7builtinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler13CodeAssembler31SwitchToTheCentralStackIfNeededEv(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.20") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, ptr } @_ZN2v88internal8Builtins11CallableForEPNS0_7IsolateENS0_7BuiltinE(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK2v88internal8compiler13CodeAssembler7isolateEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler13CodeAssembler25SwitchFromTheCentralStackENS0_5TNodeINS0_7RawPtrTEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler13CodeAssembler25UntypedHeapConstantNoHoleENS0_6HandleINS0_10HeapObjectEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.9") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler13CodeAssembler13CallStubRImplENS0_12StubCallModeERKNS0_23CallInterfaceDescriptorENS0_5TNodeINS0_6ObjectEEES9_St16initializer_listIPNS1_4NodeEE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return, ptr noundef dead_on_return, ptr noundef byval(%"class.std::initializer_list") align 8) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler13CodeAssembler15CallRuntimeImplENS0_7Runtime10FunctionIdENS0_5TNodeINS0_6ObjectEEESt16initializer_listIS7_E(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef dead_on_return, ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13CodeAssembler9ParameterINS0_7ContextEEENS0_5TNodeIT_EEiNS_14SourceLocationE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.7") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 33 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #14
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 344
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 352
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 353
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.f, ptr %4, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %4, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8
  %i.l = load ptr, ptr %4, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %4, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #14
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef null) #14
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.z, ptr %4, align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %4, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.p, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #14
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 24, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  %i.al = load ptr, ptr %4, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %4, i64 %i.an
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull %i.ae) #14
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.24, i64 noundef 10) #14 ; 0 uses
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %2) #14 ; 0 uses
  %.not.i.i = icmp eq ptr %3, null                ; 2 uses
  br i1 %.not.i.i, label %_ZNK2v814SourceLocation8FileNameEv.exit7.thread.critedge, label %_ZNK2v814SourceLocation8FileNameEv.exit

_ZNK2v814SourceLocation8FileNameEv.exit:          ; preds = %bb.a
  %i.ar = load ptr, ptr %3, align 8
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.c, label %_ZNK2v814SourceLocation8FileNameEv.exit.thread

_ZNK2v814SourceLocation8FileNameEv.exit.thread:   ; preds = %_ZNK2v814SourceLocation8FileNameEv.exit
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.25, i64 noundef 4) #14 ; 0 uses
  %i.at = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.thread, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.thread: ; preds = %_ZNK2v814SourceLocation8FileNameEv.exit.thread
  %i.au = load ptr, ptr %i.p, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.p, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = or i32 %i.az, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ax, i32 noundef %i.ba) #14
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.26, i64 noundef 1) #14 ; 0 uses
  br label %bb.b

_ZNK2v814SourceLocation8FileNameEv.exit7.thread.critedge: ; preds = %bb.a
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.25, i64 noundef 4) #14 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNK2v814SourceLocation8FileNameEv.exit.thread, %_ZNK2v814SourceLocation8FileNameEv.exit7.thread.critedge
  %i.bd = phi ptr [ %i.at, %_ZNK2v814SourceLocation8FileNameEv.exit.thread ], [ @.str.1, %_ZNK2v814SourceLocation8FileNameEv.exit7.thread.critedge ] ; 2 uses
  %i.be = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bd) #14
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.bd, i64 noundef %i.be) #14 ; 0 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.26, i64 noundef 1) #14 ; 0 uses
  br i1 %.not.i.i, label %_ZNK2v814SourceLocation4LineEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = zext i32 %i.bi to i64
  br label %_ZNK2v814SourceLocation4LineEv.exit

_ZNK2v814SourceLocation4LineEv.exit:              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.bk = phi i64 [ %i.bj, %bb.b ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.bk) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v814SourceLocation4LineEv.exit, %_ZNK2v814SourceLocation8FileNameEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.bm, ptr %5, align 8, !alias.scope !185
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.bn, align 8, !alias.scope !185
  store i8 0, ptr %i.bm, align 8, !alias.scope !185
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !noalias !185   ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %8, null
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !185 ; 2 uses
  %9 = icmp ugt ptr %8, %i.bp
  %.08.i.i.i = select i1 %9, ptr %8, ptr %i.bp    ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i9 = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !185 ; 2 uses
  %i.bs = ptrtoint ptr %.08.i.i.i to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.br, i64 noundef %i.bu) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.e
  %i.bw = load i64, ptr %i.bn, align 8            ; 3 uses
  %i.bx = add i64 %i.bw, 1                        ; 2 uses
  %i.by = load ptr, ptr %5, align 8               ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bm
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ca = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.ca)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cb = load i64, ptr %i.bm, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.cd = call noundef ptr @_ZNK2v88internal8compiler13CodeAssembler4zoneEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #14 ; 3 uses
  %.not.i10 = icmp eq i64 %i.bx, -1
  br i1 %.not.i10, label %bb.f, label %bb.g, !prof !186

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #15
  unreachable

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = and i64 %i.bw, -8
  %i.cf = add i64 %i.ce, 8                        ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8            ; 2 uses
  %i.ck = sub i64 %i.ch, %i.cj
  %i.cl = icmp ugt i64 %i.cf, %i.ck
  br i1 %i.cl, label %bb.h, label %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit, !prof !186

bb.h:                                             ; preds = %bb.g
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 noundef %i.cf) #14
  %.pre.i.i = load i64, ptr %i.ci, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit: ; preds = %bb.g, %bb.h
  %i.cm = phi i64 [ %.pre.i.i, %bb.h ], [ %i.cj, %bb.g ] ; 2 uses
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = add i64 %i.cm, %i.cf
  store i64 %i.co, ptr %i.ci, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.cp, ptr %6, align 8, !alias.scope !193
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cq, align 8, !alias.scope !193
  store i8 0, ptr %i.cp, align 8, !alias.scope !193
  %10 = load ptr, ptr %7, align 8, !noalias !193  ; 3 uses
  %.not.i.not.i.i11 = icmp eq ptr %10, null
  %i.cr = load ptr, ptr %i.bo, align 8, !noalias !193 ; 2 uses
  %11 = icmp ugt ptr %10, %i.cr
  %.08.i.i.i12 = select i1 %11, ptr %10, ptr %i.cr ; 2 uses
  %.not4.i.i13 = icmp eq ptr %.08.i.i.i12, null
  %.not.i.i14 = select i1 %.not.i.not.i.i11, i1 true, i1 %.not4.i.i13
  br i1 %.not.i.i14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !193 ; 2 uses
  %i.cu = ptrtoint ptr %.08.i.i.i12 to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.ct, i64 noundef %i.cw) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15

bb.j:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15: ; preds = %bb.i, %bb.j
  %i.cy = load ptr, ptr %6, align 8
  %i.cz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.cn, i64 noundef %i.bx, ptr noundef nonnull @.str.27, ptr noundef %i.cy) #14 ; 0 uses
  %i.da = load ptr, ptr %6, align 8               ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cp
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15
  %i.dc = load i64, ptr %i.cp, align 8
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.de = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #14
  store ptr %i.de, ptr %0, align 8, !alias.scope !194
  %i.df = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.df, ptr %4, align 8
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.dh = getelementptr i8, ptr %i.df, i64 -24
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds i8, ptr %4, i64 %i.di
  store ptr %i.dg, ptr %i.dj, align 8
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.dk, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.dl = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.aj
  br i1 %i.dm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.dn = load i64, ptr %i.aj, align 8
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #17
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #14
  store ptr %i.f, ptr %4, align 8
  %i.dp = load i64, ptr %i.h, align 8
  %i.dq = getelementptr inbounds i8, ptr %4, i64 %i.dp
  store ptr %i.g, ptr %i.dq, align 8
  store i64 0, ptr %i.k, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK2v88internal8compiler13CodeAssembler4zoneEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #15
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !199

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1
  store i8 %i.v, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1
  store i8 %i.w, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !186

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #16 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1
  store i8 %i.ac, ptr %i.z, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8
  store i64 %.0, ptr %i.h, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !186

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #16 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #17
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8
  store i64 %.0, ptr %i.d, align 8
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8
  store i8 0, ptr %i.c, align 1
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8                ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1
  store i8 %i.s, ptr %i.q, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13CodeAssembler9ParameterINS0_17JSGeneratorObjectEEENS0_5TNodeIT_EEiNS_14SourceLocationE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::TNode.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 33 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #14
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 344
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 352
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 353
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.f, ptr %4, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %4, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8
  %i.l = load ptr, ptr %4, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %4, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #14
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef null) #14
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.z, ptr %4, align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %4, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.p, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #14
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 24, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  %i.al = load ptr, ptr %4, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %4, i64 %i.an
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull %i.ae) #14
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.24, i64 noundef 10) #14 ; 0 uses
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %2) #14 ; 0 uses
  %.not.i.i = icmp eq ptr %3, null                ; 2 uses
  br i1 %.not.i.i, label %_ZNK2v814SourceLocation8FileNameEv.exit7.thread.critedge, label %_ZNK2v814SourceLocation8FileNameEv.exit

_ZNK2v814SourceLocation8FileNameEv.exit:          ; preds = %bb.a
  %i.ar = load ptr, ptr %3, align 8
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.c, label %_ZNK2v814SourceLocation8FileNameEv.exit.thread

_ZNK2v814SourceLocation8FileNameEv.exit.thread:   ; preds = %_ZNK2v814SourceLocation8FileNameEv.exit
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.25, i64 noundef 4) #14 ; 0 uses
  %i.at = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.thread, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.thread: ; preds = %_ZNK2v814SourceLocation8FileNameEv.exit.thread
  %i.au = load ptr, ptr %i.p, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.p, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = or i32 %i.az, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ax, i32 noundef %i.ba) #14
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.26, i64 noundef 1) #14 ; 0 uses
  br label %bb.b

_ZNK2v814SourceLocation8FileNameEv.exit7.thread.critedge: ; preds = %bb.a
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.25, i64 noundef 4) #14 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNK2v814SourceLocation8FileNameEv.exit.thread, %_ZNK2v814SourceLocation8FileNameEv.exit7.thread.critedge
  %i.bd = phi ptr [ %i.at, %_ZNK2v814SourceLocation8FileNameEv.exit.thread ], [ @.str.1, %_ZNK2v814SourceLocation8FileNameEv.exit7.thread.critedge ] ; 2 uses
  %i.be = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bd) #14
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.bd, i64 noundef %i.be) #14 ; 0 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.26, i64 noundef 1) #14 ; 0 uses
  br i1 %.not.i.i, label %_ZNK2v814SourceLocation4LineEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = zext i32 %i.bi to i64
  br label %_ZNK2v814SourceLocation4LineEv.exit

_ZNK2v814SourceLocation4LineEv.exit:              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.bk = phi i64 [ %i.bj, %bb.b ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.bk) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v814SourceLocation4LineEv.exit, %_ZNK2v814SourceLocation8FileNameEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.bm, ptr %5, align 8, !alias.scope !206
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.bn, align 8, !alias.scope !206
  store i8 0, ptr %i.bm, align 8, !alias.scope !206
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !noalias !206   ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %8, null
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !206 ; 2 uses
  %9 = icmp ugt ptr %8, %i.bp
  %.08.i.i.i = select i1 %9, ptr %8, ptr %i.bp    ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i9 = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !206 ; 2 uses
  %i.bs = ptrtoint ptr %.08.i.i.i to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.br, i64 noundef %i.bu) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.e
  %i.bw = load i64, ptr %i.bn, align 8            ; 3 uses
  %i.bx = add i64 %i.bw, 1                        ; 2 uses
  %i.by = load ptr, ptr %5, align 8               ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bm
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ca = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.ca)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cb = load i64, ptr %i.bm, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.cd = call noundef ptr @_ZNK2v88internal8compiler13CodeAssembler4zoneEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #14 ; 3 uses
  %.not.i10 = icmp eq i64 %i.bx, -1
  br i1 %.not.i10, label %bb.f, label %bb.g, !prof !186

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #15
  unreachable

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = and i64 %i.bw, -8
  %i.cf = add i64 %i.ce, 8                        ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8            ; 2 uses
  %i.ck = sub i64 %i.ch, %i.cj
  %i.cl = icmp ugt i64 %i.cf, %i.ck
  br i1 %i.cl, label %bb.h, label %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit, !prof !186

bb.h:                                             ; preds = %bb.g
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 noundef %i.cf) #14
  %.pre.i.i = load i64, ptr %i.ci, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit: ; preds = %bb.g, %bb.h
  %i.cm = phi i64 [ %.pre.i.i, %bb.h ], [ %i.cj, %bb.g ] ; 2 uses
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = add i64 %i.cm, %i.cf
  store i64 %i.co, ptr %i.ci, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.cp, ptr %6, align 8, !alias.scope !213
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cq, align 8, !alias.scope !213
  store i8 0, ptr %i.cp, align 8, !alias.scope !213
  %10 = load ptr, ptr %7, align 8, !noalias !213  ; 3 uses
  %.not.i.not.i.i11 = icmp eq ptr %10, null
  %i.cr = load ptr, ptr %i.bo, align 8, !noalias !213 ; 2 uses
  %11 = icmp ugt ptr %10, %i.cr
  %.08.i.i.i12 = select i1 %11, ptr %10, ptr %i.cr ; 2 uses
  %.not4.i.i13 = icmp eq ptr %.08.i.i.i12, null
  %.not.i.i14 = select i1 %.not.i.not.i.i11, i1 true, i1 %.not4.i.i13
  br i1 %.not.i.i14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !213 ; 2 uses
  %i.cu = ptrtoint ptr %.08.i.i.i12 to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.ct, i64 noundef %i.cw) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15

bb.j:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15: ; preds = %bb.i, %bb.j
  %i.cy = load ptr, ptr %6, align 8
  %i.cz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.cn, i64 noundef %i.bx, ptr noundef nonnull @.str.27, ptr noundef %i.cy) #14 ; 0 uses
  %i.da = load ptr, ptr %6, align 8               ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cp
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15
  %i.dc = load i64, ptr %i.cp, align 8
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.de = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #14
  store ptr %i.de, ptr %0, align 8, !alias.scope !214
  %i.df = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.df, ptr %4, align 8
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.dh = getelementptr i8, ptr %i.df, i64 -24
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds i8, ptr %4, i64 %i.di
  store ptr %i.dg, ptr %i.dj, align 8
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.dk, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.dl = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.aj
  br i1 %i.dm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.dn = load i64, ptr %i.aj, align 8
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #17
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #14
  store ptr %i.f, ptr %4, align 8
  %i.dp = load i64, ptr %i.h, align 8
  %i.dq = getelementptr inbounds i8, ptr %4, i64 %i.dp
  store ptr %i.g, ptr %i.dq, align 8
  store i64 0, ptr %i.k, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

declare void @_ZN2v88internal17CodeStubAssembler13BuildFastLoopINS0_7IntPtrTEEEvRKNS0_10ZoneVectorIPNS0_8compiler21CodeAssemblerVariableEEERNS5_26TypedCodeAssemblerVariableIT_EENS0_5TNodeISC_EESG_RKSt8functionIFvSG_EEiNS1_17LoopUnrollingModeENS1_16IndexAdvanceModeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return, ptr noundef dead_on_return, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal8compiler21CodeAssemblerVariableD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvN2v88internal5TNodeINS1_7IntPtrTEEEEZNS1_33SuspendGeneratorBaselineAssembler36GenerateSuspendGeneratorBaselineImplEvE3$_0E9_M_invokeERKSt9_Any_dataOS4_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::TNode.57", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.6", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.2", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.2", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.2", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::TNode.6", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %.val2 = load ptr, ptr %1, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.a = load ptr, ptr %.val, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.c, ptr %6, align 8, !noalias !219
  store ptr %.val2, ptr %7, align 8, !noalias !219
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.2") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.f, ptr %5, align 8, !noalias !222
  call void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.2") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull dead_on_return %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.6") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.e, ptr noundef nonnull dead_on_return %10) #14
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.h, ptr %2, align 8
  store ptr %.val2, ptr %3, align 8
  store ptr %i.i, ptr %4, align 8
  call void @_ZN2v88internal17CodeStubAssembler37StoreFixedArrayOrPropertyArrayElementINS0_7IntPtrTEEEvNS0_5TNodeINS0_5UnionIJNS0_10FixedArrayENS0_13PropertyArrayEEEEEENS4_IT_EENS4_INS0_6ObjectEEENS0_16WriteBarrierModeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4, i32 noundef 4, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN2v88internal5TNodeINS1_7IntPtrTEEEEZNS1_33SuspendGeneratorBaselineAssembler36GenerateSuspendGeneratorBaselineImplEvE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal33SuspendGeneratorBaselineAssembler36GenerateSuspendGeneratorBaselineImplEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8
  store ptr %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal33SuspendGeneratorBaselineAssembler36GenerateSuspendGeneratorBaselineImplEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal33SuspendGeneratorBaselineAssembler36GenerateSuspendGeneratorBaselineImplEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8              ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #16 ; 5 uses
  %i.b = load ptr, ptr %.val5, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  store ptr %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  store ptr %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  store ptr %i.k, ptr %i.i, align 8
  store ptr %i.a, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal33SuspendGeneratorBaselineAssembler36GenerateSuspendGeneratorBaselineImplEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8            ; 2 uses
  %i.l = icmp eq ptr %.val6.i, null
  br i1 %i.l, label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal33SuspendGeneratorBaselineAssembler36GenerateSuspendGeneratorBaselineImplEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 32) #17
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal33SuspendGeneratorBaselineAssembler36GenerateSuspendGeneratorBaselineImplEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2v88internal33SuspendGeneratorBaselineAssembler36GenerateSuspendGeneratorBaselineImplEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.6") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZN2v88internal17CodeStubAssembler22TimesSystemPointerSizeENS0_5TNodeINS0_5WordTEEE(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.2") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZN2v88internal17CodeStubAssembler37StoreFixedArrayOrPropertyArrayElementINS0_7IntPtrTEEEvNS0_5TNodeINS0_5UnionIJNS0_10FixedArrayENS0_13PropertyArrayEEEEEENS4_IT_EENS4_INS0_6ObjectEEENS0_16WriteBarrierModeEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return, ptr noundef dead_on_return, ptr noundef dead_on_return, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvN2v88internal5TNodeINS1_7IntPtrTEEEEZNS1_33SuspendGeneratorBaselineAssembler36GenerateSuspendGeneratorBaselineImplEvE3$_1E9_M_invokeERKSt9_Any_dataOS4_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::TNode.57", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.6", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.2", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.2", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.2", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::TNode.6", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::TNode", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %.val2 = load ptr, ptr %1, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.a = load ptr, ptr %.val, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
end_hunk_1
