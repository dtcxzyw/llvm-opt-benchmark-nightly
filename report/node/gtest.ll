Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/gtest?download=true
inline.NumInlined: 6564
inline.NumDeleted: 2145
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_:bb.a
_ZNKSt6vectorIPN7testing9TestSuiteESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #45 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.d ; 2 uses
  %i.an = load ptr, ptr %2, align 8
  store ptr %i.an, ptr %i.am, align 8
  %i.ao = icmp sgt i64 %i.d, 0
  br i1 %i.ao, label %bb.j, label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPN7testing9TestSuiteESaIS2_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.a, i64 %i.d, i1 false)
  br label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %bb.j, %_ZNKSt6vectorIPN7testing9TestSuiteESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.aq = sub i64 %i.ac, %i.b                     ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i

bb.k:                                             ; preds = %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %i.ab, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i

_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i: ; preds = %bb.k, %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %.not.i17.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i
  %i.as = load ptr, ptr %i.g, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.au) #46
  br label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i, %bb.l
  %i.av = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  store ptr %i.al, ptr %0, align 8
  store ptr %i.av, ptr %i.e, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.aw, ptr %i.g, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_.exit, %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit
  %i.ax = load ptr, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.d
  ret ptr %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN7testing8internalL30AppendToTestWarningsOutputFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %i.a = tail call noundef ptr @getenv(ptr noundef nonnull @_ZN7testingL23kTestWarningsOutputFileE) #44 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @fopen64(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.400) ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call i64 @fwrite(ptr noundef %i.e, i64 noundef 1, i64 noundef %i.g, ptr noundef nonnull %i.c)
  %i.i = load i64, ptr %i.f, align 8
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.43, i32 noundef 5903) #44
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.401, i64 noundef 72) #44 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = call noundef i32 @fclose(ptr noundef nonnull %i.c)
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.43, i32 noundef 5904) #44
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.402, i64 noundef 43) #44 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal30WriteToShardStatusFileIfNeededEv() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr @getenv(ptr noundef nonnull @_ZN7testingL20kTestShardStatusFileE) #44 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef ptr @fopen64(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.303) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef 1, ptr noundef nonnull @.str.304, ptr noundef nonnull %i.a, ptr noundef nonnull @_ZN7testingL20kTestShardStatusFileE)
  %i.d = load ptr, ptr @stdout, align 8
  %i.e = tail call i32 @fflush(ptr noundef %i.d)  ; 0 uses
  tail call void @exit(i32 noundef 1) #47
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN7testing8internal12UnitTestImpl11FilterTestsENS1_18ReactionToShardingE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(713) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.testing::internal::(anonymous namespace)::PositiveAndNegativeUnitTestFilter", align 8 ; 20 uses
  %3 = alloca %"class.testing::internal::(anonymous namespace)::UnitTestFilter", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN7testing8internal17Int32FromEnvOrDieEPKci(ptr noundef nonnull @_ZN7testingL16kTestTotalShardsE, i32 noundef -1)
  %i.c = tail call noundef i32 @_ZN7testing8internal17Int32FromEnvOrDieEPKci(ptr noundef nonnull @_ZN7testingL15kTestShardIndexE, i32 noundef -1)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  %i.e = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call fastcc void @_ZN7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilterC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.f, ptr %4, align 8
  %i.g = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45 ; 3 uses
  store ptr %i.g, ptr %4, align 8
  store i64 23, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.g, ptr noundef nonnull align 16 dereferenceable(23) @_ZN7testingL18kDisableTestFilterE, i64 23, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 23, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 23
  store i8 0, ptr %i.i, align 1
  call fastcc void @_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.j = load ptr, ptr %4, align 8                ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.f
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.l = load i64, ptr %i.f, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %.lr.ph101.split.us, label %.lr.ph101.split

.lr.ph101.split.us:                               ; preds = %.lr.ph101, %._crit_edge.split.us.us
  %.0100.us = phi i32 [ %.1.lcssa.us, %._crit_edge.split.us.us ], [ 0, %.lr.ph101 ] ; 2 uses
  %.sroa.089.098.us = phi ptr [ %5, %._crit_edge.split.us.us ], [ %i.o, %.lr.ph101 ] ; 2 uses
  %i.s = load ptr, ptr %.sroa.089.098.us, align 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 112 ; 3 uses
  store i8 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %._crit_edge.split.us.us, label %.lr.ph.us

._crit_edge.split.us.us:                          ; preds = %bb.e, %.lr.ph101.split.us
  %.1.lcssa.us = phi i32 [ %.0100.us, %.lr.ph101.split.us ], [ %i.ar, %bb.e ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.089.098.us, i64 8 ; 2 uses
  %6 = icmp eq ptr %5, %i.q
  br i1 %6, label %._crit_edge102, label %.lr.ph101.split.us

.lr.ph.us:                                        ; preds = %.lr.ph101.split.us
  %i.aa = getelementptr i8, ptr %i.s, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.us
  %.195.us.us = phi i32 [ %.0100.us, %.lr.ph.us ], [ %i.ar, %bb.e ]
  %.sroa.085.093.us.us = phi ptr [ %i.w, %.lr.ph.us ], [ %i.ax, %bb.e ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.085.093.us.us, align 8 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ad = call fastcc noundef zeroext i1 @_ZNK7testing8internal12_GLOBAL__N_114UnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = call fastcc noundef zeroext i1 @_ZNK7testing8internal12_GLOBAL__N_114UnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = phi i1 [ true, %bb.c ], [ %i.ae, %bb.d ] ; 2 uses
  %i.ag = zext i1 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 129
  store i8 %i.ag, ptr %i.ah, align 1
  %.val.us.us = load ptr, ptr %i.t, align 8, !noalias !55
  %.val42.us.us = load i64, ptr %i.aa, align 8, !noalias !55
  %i.ai = call fastcc noundef zeroext i1 @_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr %.val.us.us, i64 %.val42.us.us, ptr noundef nonnull align 8 dereferenceable(32) %i.ac) ; 2 uses
  %i.aj = zext i1 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 130
  store i8 %i.aj, ptr %i.ak, align 2
  %i.al = load i8, ptr @_ZN7testing35FLAGS_gtest_also_run_disabled_testsE, align 1, !range !52, !noundef !53
  %i.am = trunc nuw i8 %i.al to i1
  %.not41.us.us = xor i1 %i.af, true
  %not.or.cond.us.us = or i1 %.not41.us.us, %i.am
  %i.an = and i1 %i.ai, %not.or.cond.us.us        ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 131
  store i8 0, ptr %i.ao, align 1
  %i.ap = zext i1 %i.an to i8
  %i.aq = zext i1 %i.an to i32
  %i.ar = add nsw i32 %.195.us.us, %i.aq          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  store i8 %i.ap, ptr %i.as, align 8
  %i.at = load i8, ptr %i.u, align 8, !range !52, !noundef !53
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = select i1 %i.au, i1 true, i1 %i.an
  %i.aw = zext i1 %i.av to i8
  store i8 %i.aw, ptr %i.u, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.085.093.us.us, i64 8 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.y
  br i1 %i.ay, label %._crit_edge.split.us.us, label %bb.c

._crit_edge102:                                   ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.lcssa = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.1.lcssa.us, %._crit_edge.split.us.us ], [ %.1.lcssa, %._crit_edge.split ]
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge102, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.bc, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i ], [ %i.bb, %._crit_edge102 ] ; 4 uses
  %i.bc = load ptr, ptr %.06.i.i.i.i.i, align 8   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bh = load i64, ptr %i.bf, align 8
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #46
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 48) #46
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, %._crit_edge102
  %i.bj = load ptr, ptr %i.az, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = shl i64 %i.bl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %i.bm, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bn = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.bq = load i64, ptr %i.bk, align 8
  %i.br = shl i64 %i.bq, 3
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #46
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i: ; preds = %bb.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.bs = load ptr, ptr %3, align 8               ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ca, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.bs, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i ] ; 3 uses
  %i.bv = load ptr, ptr %.05.i.i.i.i, align 8     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.by = load i64, ptr %i.bw, align 8
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, %i.bu
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i
  %i.cb = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.bs, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i1.i.i, label %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #46
  br label %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit

_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not5.i.i.i.i.i64 = icmp eq ptr %i.ck, null
  br i1 %.not5.i.i.i.i.i64, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i70, label %.lr.ph.i.i.i.i.i65

.lr.ph.i.i.i.i.i65:                               ; preds = %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i68
  %.06.i.i.i.i.i66 = phi ptr [ %i.cl, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i68 ], [ %i.ck, %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit ] ; 4 uses
  %i.cl = load ptr, ptr %.06.i.i.i.i.i66, align 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i66, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i66, i64 24 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i67: ; preds = %.lr.ph.i.i.i.i.i65
  %i.cq = load i64, ptr %i.co, align 8
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #46
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i68

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i68: ; preds = %.lr.ph.i.i.i.i.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i67
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i66, i64 noundef 48) #46
  %.not.i.i.i.i.i69 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i69, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i70, label %.lr.ph.i.i.i.i.i65, !llvm.loop !4

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i70: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i68, %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit
  %i.cs = load ptr, ptr %i.ci, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = shl i64 %i.cu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cs, i8 0, i64 %i.cv, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false)
  %i.cw = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i71, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i70
  %i.cz = load i64, ptr %i.ct, align 8
  %i.da = shl i64 %i.cz, 3
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #46
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i71

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i71: ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i70
  %i.db = load ptr, ptr %i.ch, align 8            ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.not4.i.i.i.i72 = icmp eq ptr %i.db, %i.dd
  br i1 %.not4.i.i.i.i72, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i80, label %.lr.ph.i.i.i.i73

.lr.ph.i.i.i.i73:                                 ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i71, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i76
  %.05.i.i.i.i74 = phi ptr [ %i.dj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i76 ], [ %i.db, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i71 ] ; 3 uses
  %i.de = load ptr, ptr %.05.i.i.i.i74, align 8   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i74, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i75: ; preds = %.lr.ph.i.i.i.i73
  %i.dh = load i64, ptr %i.df, align 8
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i76

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i76: ; preds = %.lr.ph.i.i.i.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i75
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i74, i64 32 ; 2 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.dj, %i.dd
  br i1 %.not.i.i.i.i77, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i78, label %.lr.ph.i.i.i.i73, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i78: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i76
  %.pr.i.i79 = load ptr, ptr %i.ch, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i80

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i80: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i78, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i71
  %i.dk = phi ptr [ %.pr.i.i79, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i78 ], [ %i.db, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit.i71 ] ; 3 uses
  %.not.i.i1.i.i81 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i1.i.i81, label %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit84, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i80
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #46
  br label %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit84

_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit84: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i80, %bb.i
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not5.i.i.i.i.i43 = icmp eq ptr %i.ds, null
  br i1 %.not5.i.i.i.i.i43, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i49, label %.lr.ph.i.i.i.i.i44

.lr.ph.i.i.i.i.i44:                               ; preds = %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit84, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i47
  %.06.i.i.i.i.i45 = phi ptr [ %i.dt, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i47 ], [ %i.ds, %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit84 ] ; 4 uses
  %i.dt = load ptr, ptr %.06.i.i.i.i.i45, align 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i45, i64 8
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i45, i64 24 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i44
  %i.dy = load i64, ptr %i.dw, align 8
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #46
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i47
end_hunk_0
