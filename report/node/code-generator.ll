inline.NumInlined: 2596
inline.NumDeleted: 1332
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal18MacroAssemblerBaseC2EPNS0_7IsolateESt7variantIJPNS0_4ZoneEPNS0_19AccountingAllocatorEEENS0_16AssemblerOptionsENS0_18CodeObjectRequiredESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteISD_EE

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = lshr i64 %1, 4                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8                ; 3 uses
  %i.g = shl nuw i64 %.sroa.speculated, 3         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.b, label %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE15_M_allocate_mapEm.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 noundef %i.g) #21
  %.pre.i.i.i.i.i.i = load i64, ptr %i.j, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE15_M_allocate_mapEm.exit

_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE15_M_allocate_mapEm.exit: ; preds = %bb.a, %bb.b
  %i.n = phi i64 [ %.pre.i.i.i.i.i.i, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = add i64 %i.n, %i.g
  store i64 %i.p, ptr %i.j, align 8
  store ptr %i.o, ptr %i.d, align 8
  %i.q = load i64, ptr %i.e, align 8
  %i.r = sub i64 %i.q, %i.b
  %i.s = lshr i64 %i.r, 1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s ; 4 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE16_M_allocate_nodeEv.exit.i, %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE15_M_allocate_mapEm.exit
  %.06.i = phi ptr [ %i.t, %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE15_M_allocate_mapEm.exit ], [ %i.ak, %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE16_M_allocate_nodeEv.exit.i ] ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %.not5.i.i.i.i = icmp ult i64 %i.y, 16
  br i1 %.not5.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.w, align 8
  store ptr %i.z, ptr %i.v, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE16_M_allocate_nodeEv.exit.i

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.aa = load ptr, ptr %0, align 8               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = sub i64 %i.ac, %i.ae
  %i.ag = icmp ult i64 %i.af, 512
  br i1 %i.ag, label %bb.g, label %_ZN2v88internal13ZoneAllocatorINS0_21SafepointTableBuilder12EntryBuilderEE8allocateEm.exit.i.i.i.i, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 noundef 512) #21
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8
  br label %_ZN2v88internal13ZoneAllocatorINS0_21SafepointTableBuilder12EntryBuilderEE8allocateEm.exit.i.i.i.i

_ZN2v88internal13ZoneAllocatorINS0_21SafepointTableBuilder12EntryBuilderEE8allocateEm.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.ah = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.g ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = add i64 %i.ah, 512
  store i64 %i.aj, ptr %i.ad, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE16_M_allocate_nodeEv.exit.i

_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE16_M_allocate_nodeEv.exit.i: ; preds = %_ZN2v88internal13ZoneAllocatorINS0_21SafepointTableBuilder12EntryBuilderEE8allocateEm.exit.i.i.i.i, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.w, %bb.e ], [ %i.ai, %_ZN2v88internal13ZoneAllocatorINS0_21SafepointTableBuilder12EntryBuilderEE8allocateEm.exit.i.i.i.i ]
  store ptr %.0.i.i.i.i, ptr %.06.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %i.u
  br i1 %i.al, label %bb.c, label %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE15_M_create_nodesEPPS3_S8_.exit, !llvm.loop !102

_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE15_M_create_nodesEPPS3_S8_.exit: ; preds = %_ZNSt11_Deque_baseIN2v88internal21SafepointTableBuilder12EntryBuilderENS1_22RecyclingZoneAllocatorIS3_EEE16_M_allocate_nodeEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.t, ptr %i.an, align 8
  %i.ao = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.at, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 512
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ax, ptr %i.ay, align 8
  store ptr %i.ao, ptr %i.am, align 8
  %i.az = and i64 %1, 15
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.az
  store ptr %i.ba, ptr %i.as, align 8
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

declare noundef zeroext i8 @_ZN2v88internal8Builtins16SandboxingModeOfENS0_7BuiltinE(i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler19UnwindingInfoWriter17BlockInitialStateEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler19UnwindingInfoWriter17BlockInitialStateEA_S7_EEPT_m.exit, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #21
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler19UnwindingInfoWriter17BlockInitialStateEA_S7_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler19UnwindingInfoWriter17BlockInitialStateEA_S7_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler19UnwindingInfoWriter17BlockInitialStateEA_S7_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler19UnwindingInfoWriter17BlockInitialStateEA_S7_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler19UnwindingInfoWriter17BlockInitialStateEA_S7_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

declare void @_ZN2v88internal9Assembler15CodeTargetAlignEv(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #2

declare i64 @_ZN2v88internal17ExternalReference12isolate_rootEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_ElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_SF_T0_T1_"(ptr nofree noundef nonnull readonly captures(none) dead_on_return %0, ptr nofree noundef nonnull captures(none) dead_on_return %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  %3 = alloca %"struct.std::_Deque_iterator.41", align 8 ; 6 uses
  %4 = alloca %"struct.std::_Deque_iterator.41", align 8 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.41", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator.41", align 8 ; 5 uses
  %7 = alloca %"struct.std::_Deque_iterator.41", align 16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.pre = load ptr, ptr %i.a, align 8
  %.pre100 = load ptr, ptr %1, align 8
  %.pre101 = load ptr, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEET_SF_SF_T0_.exit", %bb.a
  %i.k = phi ptr [ %.pre101, %bb.a ], [ %.us-phi42.i, %"_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEET_SF_SF_T0_.exit" ] ; 3 uses
  %i.l = phi ptr [ %.pre100, %bb.a ], [ %.us-phi43.i, %"_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEET_SF_SF_T0_.exit" ] ; 7 uses
  %i.m = phi ptr [ %.pre, %bb.a ], [ %.us-phi.i, %"_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEET_SF_SF_T0_.exit" ] ; 8 uses
  %.0 = phi i64 [ %2, %bb.a ], [ %i.dl, %"_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEET_SF_SF_T0_.exit" ] ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8              ; 8 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = icmp ne ptr %i.m, null
  %.neg.i = sext i1 %i.s to i64
  %i.t = add nsw i64 %i.r, %.neg.i
  %i.u = shl nsw i64 %i.t, 6
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  %i.z = add i64 %i.u, %i.y
  %i.aa = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.ab = load ptr, ptr %0, align 8               ; 13 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3                 ; 3 uses
  %i.ag = add i64 %i.z, %i.af                     ; 5 uses
  %i.ah = icmp sgt i64 %i.ag, 16
  br i1 %i.ah, label %bb.c, label %"_ZSt14__partial_sortISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_SF_SF_T0_.exit"

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp eq i64 %.0, 0
  br i1 %i.ai, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.ak = load ptr, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.al = add nsw i64 %i.ag, -2
  %i.am = lshr i64 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aq = ptrtoint ptr %i.aj to i64
  %i.ar = sub i64 %i.ad, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  store ptr %i.ab, ptr %5, align 8
  store ptr %i.aj, ptr %i.an, align 8
  store ptr %i.aa, ptr %i.ao, align 8
  store ptr %i.n, ptr %i.ap, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i.i.i, %bb.d
  %.08.i.i.i = phi i64 [ %i.am, %bb.d ], [ %i.bg, %_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i.i.i ] ; 5 uses
  %i.at = add nsw i64 %.08.i.i.i, %i.as           ; 5 uses
  %i.au = icmp sgt i64 %i.at, -1
  br i1 %i.au, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.av = icmp samesign ult i64 %i.at, 64
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.08.i.i.i
  br label %_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ax = lshr i64 %i.at, 6
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ay = ashr i64 %i.at, 6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = phi i64 [ %i.ax, %bb.h ], [ %i.ay, %bb.i ] ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !103
  %i.bc = shl nsw i64 %i.az, 6
  %i.bd = sub nsw i64 %i.at, %i.bc
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bd
  br label %_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i.i.i

_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i.i.i: ; preds = %bb.j, %bb.g
  %storemerge.i.i.i.i.i = phi ptr [ %i.be, %bb.j ], [ %i.aw, %bb.g ]
  %i.bf = load ptr, ptr %storemerge.i.i.i.i.i, align 8
  call fastcc void @"_ZSt13__adjust_heapISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_ElS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_T0_SG_T1_T2_"(ptr noundef dead_on_return %5, i64 noundef %.08.i.i.i, i64 noundef %i.ag, ptr noundef %i.bf)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.bg = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_SF_RT0_.exit.i.i", label %bb.e, !llvm.loop !106

"_ZSt11__make_heapISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_SF_RT0_.exit.i.i": ; preds = %_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %8 = insertelement <2 x ptr> poison, ptr %i.aa, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %i.n, i64 1 ; 2 uses
  br label %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EppEv.exit.i.i.outer

_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EppEv.exit.i.i.outer: ; preds = %bb.p, %"_ZSt11__make_heapISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_SF_RT0_.exit.i.i"
  %.sroa.020.0.i.i.ph = phi ptr [ %i.ce, %bb.p ], [ %i.l, %"_ZSt11__make_heapISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_SF_RT0_.exit.i.i" ]
  %.sroa.13.0.i.i.ph = phi ptr [ %i.cf, %bb.p ], [ %i.ak, %"_ZSt11__make_heapISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_SF_RT0_.exit.i.i" ]
  %.sroa.18.0.i.i.ph = phi ptr [ %i.cd, %bb.p ], [ %i.m, %"_ZSt11__make_heapISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_SF_RT0_.exit.i.i" ] ; 3 uses
  %i.bj = icmp ult ptr %.sroa.18.0.i.i.ph, %i.m
  %i.bk = icmp eq ptr %.sroa.18.0.i.i.ph, %i.m
  br label %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EppEv.exit.i.i

_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EppEv.exit.i.i: ; preds = %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EppEv.exit.i.i.outer, %bb.o
  %.sroa.020.0.i.i = phi ptr [ %i.cb, %bb.o ], [ %.sroa.020.0.i.i.ph, %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EppEv.exit.i.i.outer ] ; 5 uses
  br i1 %i.bk, label %bb.k, label %_ZStssRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_ES9_.exit.i.i

bb.k:                                             ; preds = %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EppEv.exit.i.i
  %i.bl = icmp ult ptr %.sroa.020.0.i.i, %i.l
  %i.bm = icmp eq ptr %.sroa.020.0.i.i, %i.l
  br i1 %i.bm, label %.lr.ph.i.preheader, label %_ZStssRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_ES9_.exit.i.i

_ZStssRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_ES9_.exit.i.i: ; preds = %bb.k, %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EppEv.exit.i.i
  %.sroa.05.0.i.i.i = phi i1 [ %i.bj, %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EppEv.exit.i.i ], [ %i.bl, %bb.k ]
  br i1 %.sroa.05.0.i.i.i, label %bb.l, label %.lr.ph.i.preheader

bb.l:                                             ; preds = %_ZStssRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_ES9_.exit.i.i
  %.val.val.i.i = load ptr, ptr %.sroa.020.0.i.i, align 8 ; 3 uses
  %.val2.val.i.i = load ptr, ptr %i.ab, align 8   ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.val.i.i, i64 44
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = icmp ne i8 %i.bo, 0                     ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val2.val.i.i, i64 44
  %i.br = load i8, ptr %i.bq, align 4
  %i.bs = icmp ne i8 %i.br, 0                     ; 2 uses
  %i.bt = xor i1 %i.bp, %i.bs
  br i1 %i.bt, label %bb.m, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit.i.i"

bb.m:                                             ; preds = %bb.l
  %i.bu = xor i1 %i.bp, true
  %i.bv = and i1 %i.bs, %i.bu
  br i1 %i.bv, label %bb.n, label %bb.o

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit.i.i": ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.val.i.i, i64 40
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %.val2.val.i.i, i64 40
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = icmp slt i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit.i.i", %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.val2.val.i.i, ptr %.sroa.020.0.i.i, align 8
  store ptr %i.ab, ptr %4, align 8
  store ptr %i.aj, ptr %i.bh, align 8
  store <2 x ptr> %9, ptr %i.bi, align 8
  call fastcc void @"_ZSt13__adjust_heapISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_ElS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_T0_SG_T1_T2_"(ptr noundef dead_on_return %4, i64 noundef 0, i64 noundef %i.ag, ptr noundef nonnull %.val.val.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit.i.i", %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.i, i64 8 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %.sroa.13.0.i.i.ph
  br i1 %i.cc, label %bb.p, label %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EppEv.exit.i.i, !llvm.loop !107

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.18.0.i.i.ph, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 512
  br label %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EppEv.exit.i.i.outer, !llvm.loop !107

.lr.ph.i.preheader:                               ; preds = %bb.k, %_ZStssRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_ES9_.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i.i
  %i.ci = phi i64 [ %.pre-phi29.i, %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i.i ], [ %i.w, %.lr.ph.i.preheader ]
  %i.cj = phi i64 [ %.pre-phi.i, %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i.i ], [ %i.o, %.lr.ph.i.preheader ]
  %.sroa.0.027.i = phi ptr [ %i.cp, %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i.i ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.3.026.i = phi ptr [ %.sroa.3.1.i, %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i.i ], [ %i.k, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.8.025.i = phi ptr [ %.sroa.8.1.i, %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i.i ], [ %i.m, %.lr.ph.i.preheader ] ; 3 uses
  %i.ck = icmp eq ptr %.sroa.0.027.i, %.sroa.3.026.i
  br i1 %i.ck, label %bb.q, label %.lr.ph._ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i_crit_edge.i

.lr.ph._ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i_crit_edge.i: ; preds = %.lr.ph.i
  %.pre.i = ptrtoint ptr %.sroa.8.025.i to i64
  %.pre28.i = ptrtoint ptr %.sroa.3.026.i to i64
  br label %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.cl = getelementptr inbounds i8, ptr %.sroa.8.025.i, i64 -8 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8            ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 512
  %.pre.i2.i = ptrtoint ptr %i.cl to i64          ; 2 uses
  %.pre8.i.i = ptrtoint ptr %i.cm to i64          ; 2 uses
  br label %_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i.i

_ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i.i: ; preds = %bb.q, %.lr.ph._ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i_crit_edge.i
  %.pre-phi29.i = phi i64 [ %.pre28.i, %.lr.ph._ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i_crit_edge.i ], [ %.pre8.i.i, %bb.q ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre.i, %.lr.ph._ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i_crit_edge.i ], [ %.pre.i2.i, %bb.q ] ; 2 uses
  %.sroa.8.1.i = phi ptr [ %.sroa.8.025.i, %.lr.ph._ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i_crit_edge.i ], [ %i.cl, %bb.q ] ; 2 uses
  %.sroa.3.1.i = phi ptr [ %.sroa.3.026.i, %.lr.ph._ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i_crit_edge.i ], [ %i.cm, %bb.q ]
  %.pre-phi9.i.i = phi i64 [ %i.ci, %.lr.ph._ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i_crit_edge.i ], [ %.pre8.i.i, %bb.q ]
  %.pre-phi.i.i = phi i64 [ %i.cj, %.lr.ph._ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i_crit_edge.i ], [ %.pre.i2.i, %bb.q ]
  %i.co = phi ptr [ %.sroa.0.027.i, %.lr.ph._ZNSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_EmmEv.exit.i_crit_edge.i ], [ %i.cn, %bb.q ]
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = load ptr, ptr %i.ab, align 8
  store ptr %i.cr, ptr %i.cp, align 8
  store ptr %i.ab, ptr %3, align 8
  store ptr %i.aj, ptr %i.cg, align 8
  store <2 x ptr> %9, ptr %i.ch, align 8
  %i.cs = sub i64 %.pre-phi.i.i, %i.p
  %i.ct = ashr exact i64 %i.cs, 3
  %i.cu = icmp ne ptr %.sroa.8.1.i, null
  %.neg.i.i.i1.i = sext i1 %i.cu to i64           ; 2 uses
  %i.cv = add nsw i64 %i.ct, %.neg.i.i.i1.i
  %i.cw = shl nsw i64 %i.cv, 6
  %i.cx = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cy = sub i64 %i.cx, %.pre-phi9.i.i
  %i.cz = ashr exact i64 %i.cy, 3
  %i.da = add i64 %i.cw, %i.af
  %i.db = add i64 %i.da, %i.cz
  call fastcc void @"_ZSt13__adjust_heapISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_ElS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_T0_SG_T1_T2_"(ptr noundef dead_on_return %3, i64 noundef 0, i64 noundef %i.db, ptr noundef %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.dc = sub i64 %.pre-phi.i, %i.p
  %i.dd = ashr exact i64 %i.dc, 3
  %i.de = add nsw i64 %i.dd, %.neg.i.i.i1.i
  %i.df = shl nsw i64 %i.de, 6
  %i.dg = sub i64 %i.cx, %.pre-phi29.i
  %i.dh = ashr exact i64 %i.dg, 3
  %i.di = add i64 %i.df, %i.af
  %i.dj = add i64 %i.di, %i.dh
  %i.dk = icmp sgt i64 %i.dj, 1
  br i1 %i.dk, label %.lr.ph.i, label %"_ZSt14__partial_sortISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !108

bb.r:                                             ; preds = %bb.c
  %i.dl = add nsw i64 %.0, -1                     ; 2 uses
  %i.dm = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.dn = lshr i64 %i.ag, 1                       ; 2 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.ad, %i.do
  %i.dq = ashr exact i64 %i.dp, 3                 ; 5 uses
  %i.dr = add nsw i64 %i.dq, %i.dn                ; 5 uses
  %i.ds = icmp sgt i64 %i.dr, -1
  br i1 %i.ds, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.dt = icmp samesign ult i64 %i.dr, 64
  br i1 %i.dt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.dn
  br label %_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i

bb.u:                                             ; preds = %bb.s
  %i.dv = lshr i64 %i.dr, 6
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.dw = ashr i64 %i.dr, 6
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dx = phi i64 [ %i.dv, %bb.u ], [ %i.dw, %bb.v ] ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !109
  %i.ea = shl nsw i64 %i.dx, 6
  %i.eb = sub nsw i64 %i.dr, %i.ea
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.eb
  br label %_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i

_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i: ; preds = %bb.w, %bb.t
  %storemerge.i.i.i = phi ptr [ %i.ec, %bb.w ], [ %i.du, %bb.t ] ; 4 uses
  %i.ed = add nsw i64 %i.dq, 1                    ; 6 uses
  %i.ee = icmp sgt i64 %i.dq, -2                  ; 2 uses
  br i1 %i.ee, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i
  %i.ef = icmp slt i64 %i.dq, 63
  br i1 %i.ef, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit5.i

bb.z:                                             ; preds = %bb.x
  %i.eh = lshr i64 %i.ed, 6
  br label %bb.ab

bb.aa:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i
  %i.ei = ashr i64 %i.ed, 6
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ej = phi i64 [ %i.eh, %bb.z ], [ %i.ei, %bb.aa ] ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !114
  %i.em = shl nsw i64 %i.ej, 6
  %i.en = sub nsw i64 %i.ed, %i.em
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.en
  br label %_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit5.i

_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit5.i: ; preds = %bb.ab, %bb.y
  %storemerge.i.i4.i = phi ptr [ %i.eo, %bb.ab ], [ %i.eg, %bb.y ] ; 4 uses
  %i.ep = add nsw i64 %i.y, -1                    ; 3 uses
  %i.eq = icmp sgt i64 %i.y, 0
  br i1 %i.eq, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit5.i
  %i.er = icmp samesign ult i64 %i.y, 65
  br i1 %i.er, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.es = getelementptr inbounds i8, ptr %i.l, i64 -8
  br label %_ZStmiRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.et = lshr i64 %i.ep, 6
  br label %bb.ag

bb.af:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit5.i
  %i.eu = ashr i64 %i.ep, 6
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ev = phi i64 [ %i.et, %bb.ae ], [ %i.eu, %bb.af ] ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !117
  %i.ey = shl nsw i64 %i.ev, 6
  %i.ez = sub nsw i64 %i.ep, %i.ey
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.ez
  br label %_ZStmiRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i

_ZStmiRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i: ; preds = %bb.ag, %bb.ad
  %storemerge.i.i.i.i = phi ptr [ %i.fa, %bb.ag ], [ %i.es, %bb.ad ] ; 6 uses
  %.val8.val.i.i = load ptr, ptr %storemerge.i.i4.i, align 8, !noalias !120 ; 7 uses
  %.val9.val.i.i = load ptr, ptr %storemerge.i.i.i, align 8, !noalias !120 ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val8.val.i.i, i64 44
  %i.fc = load i8, ptr %i.fb, align 4, !noalias !120
  %i.fd = icmp ne i8 %i.fc, 0                     ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val9.val.i.i, i64 44
  %i.ff = load i8, ptr %i.fe, align 4, !noalias !120
  %i.fg = icmp ne i8 %i.ff, 0                     ; 6 uses
  %i.fh = xor i1 %i.fd, %i.fg
  br i1 %i.fh, label %bb.ah, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit.i.i8"

bb.ah:                                            ; preds = %_ZStmiRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i
  %i.fi = xor i1 %i.fd, true
  %i.fj = and i1 %i.fg, %i.fi
  br i1 %i.fj, label %bb.ai, label %bb.an

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit.i.i8": ; preds = %_ZStmiRKSt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS4_PS4_El.exit.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.val8.val.i.i, i64 40
  %i.fl = load i32, ptr %i.fk, align 8, !noalias !120
  %i.fm = getelementptr inbounds nuw i8, ptr %.val9.val.i.i, i64 40
  %i.fn = load i32, ptr %i.fm, align 8, !noalias !120
  %i.fo = icmp slt i32 %i.fl, %i.fn
  br i1 %i.fo, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit.i.i8", %bb.ah
  %.val7.val.i.i = load ptr, ptr %storemerge.i.i.i.i, align 8, !noalias !120 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.val7.val.i.i, i64 44
  %i.fq = load i8, ptr %i.fp, align 4, !noalias !120
  %i.fr = icmp ne i8 %i.fq, 0                     ; 4 uses
  %i.fs = xor i1 %i.fg, %i.fr
  br i1 %i.fs, label %bb.aj, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit11.i.i"

bb.aj:                                            ; preds = %bb.ai
  %i.ft = xor i1 %i.fg, true
  %i.fu = and i1 %i.fr, %i.ft
  br i1 %i.fu, label %"_ZSt22__move_median_to_firstISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i", label %bb.ak

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit11.i.i": ; preds = %bb.ai
  %i.fv = getelementptr inbounds nuw i8, ptr %.val9.val.i.i, i64 40
  %i.fw = load i32, ptr %i.fv, align 8, !noalias !120
  %i.fx = getelementptr inbounds nuw i8, ptr %.val7.val.i.i, i64 40
  %i.fy = load i32, ptr %i.fx, align 8, !noalias !120
  %i.fz = icmp slt i32 %i.fw, %i.fy
  br i1 %i.fz, label %"_ZSt22__move_median_to_firstISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i", label %bb.ak

bb.ak:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit11.i.i", %bb.aj
  %i.ga = xor i1 %i.fd, %i.fr
  br i1 %i.ga, label %bb.al, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit13.i.i"

bb.al:                                            ; preds = %bb.ak
  %i.gb = xor i1 %i.fd, true
  %i.gc = and i1 %i.fr, %i.gb
  br i1 %i.gc, label %"_ZSt22__move_median_to_firstISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i", label %bb.am

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit13.i.i": ; preds = %bb.ak
  %i.gd = getelementptr inbounds nuw i8, ptr %.val8.val.i.i, i64 40
  %i.ge = load i32, ptr %i.gd, align 8, !noalias !120
  %i.gf = getelementptr inbounds nuw i8, ptr %.val7.val.i.i, i64 40
  %i.gg = load i32, ptr %i.gf, align 8, !noalias !120
  %i.gh = icmp slt i32 %i.ge, %i.gg
  br i1 %i.gh, label %"_ZSt22__move_median_to_firstISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i", label %bb.am

bb.am:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit13.i.i", %bb.al
  br label %"_ZSt22__move_median_to_firstISt15_Deque_iteratorIPN2v88internal8compiler18DeoptimizationExitERS5_PS5_EN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13CodeGenerator12AssembleCodeEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

bb.an:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit.i.i8", %bb.ah
  %.val3.val.i.i = load ptr, ptr %storemerge.i.i.i.i, align 8, !noalias !120 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.val3.val.i.i, i64 44
  %i.gj = load i8, ptr %i.gi, align 4, !noalias !120
  %i.gk = icmp ne i8 %i.gj, 0                     ; 4 uses
  %i.gl = xor i1 %i.fd, %i.gk
  br i1 %i.gl, label %bb.ao, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN2v88internal8compiler13CodeGenerator12AssembleCodeEvE3$_0EclISt15_Deque_iteratorIPNS4_18DeoptimizationExitERSB_PSB_ESE_EEbT_T0_.exit15.i.i"

bb.ao:                                            ; preds = %bb.an
  %i.gm = xor i1 %i.fd, true
  %i.gn = and i1 %i.gk, %i.gm
end_hunk_0
