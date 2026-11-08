Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaRrr?download=true
inline.NumInlined: 27716
inline.NumDeleted: 6990
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE9CreateJobEPS1_id:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.y, ptr %i.t, align 8, !tbaa !493
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE4pushERKSB_.exit6

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @_ZNSt5dequeIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESaISB_EE16_M_push_back_auxIJRKSB_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE4pushERKSB_.exit6

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE4pushERKSB_.exit6: ; preds = %bb.h, %bb.g, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %.0 = load ptr, ptr %i.a, align 8, !tbaa !824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE5PrintIJPKcSB_SB_SB_iSB_iSB_SB_SB_iSB_SB_SB_iSB_SB_SB_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1, ptr noundef align 8 %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !474
  %.not = icmp sgt i32 %i.b, %1
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !478, !range !315, !noundef !316
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  %i.h = load ptr, ptr %2, align 8, !tbaa !214
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !204
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.h, i64 noundef %i.j) #26 ; 0 uses
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.l = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !912
  %i.r = or i32 %i.q, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r) #26
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %3, i64 noundef %i.s) #26 ; 0 uses
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit

_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit: ; preds = %bb.e, %bb.f
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  tail call void @_ZN3rrr9PrintNextIPKcJS2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21)
  %i.v = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !354 ; 6 uses
  %.not.i.i.i42 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i42, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !359
  %.not.i1.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 67
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !205
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aa) #26
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !339
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(570) %i.aa, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i8 [ %i.ae, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i) #26
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #26 ; 0 uses
  %i.al = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %2, align 8, !tbaa !214
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !204
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.am, i64 noundef %i.ao) #26 ; 0 uses
  %.not.i.i40 = icmp eq ptr %3, null
  br i1 %.not.i.i40, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !912
  %i.aw = or i32 %i.av, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.at, i32 noundef %i.aw) #26
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41

bb.l:                                             ; preds = %bb.j
  %i.ax = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %3, i64 noundef %i.ax) #26 ; 0 uses
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41

_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41: ; preds = %bb.k, %bb.l
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  tail call void @_ZN3rrr9PrintNextIPKcJS2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21)
  %i.ba = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !354 ; 6 uses
  %.not.i.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i43, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44

bb.m:                                             ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44: ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !359
  %.not.i1.i.i45 = icmp eq i8 %i.bh, 0
  br i1 %.not.i1.i.i45, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 67
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !205
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bf) #26
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !339
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(570) %i.bf, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47: ; preds = %bb.n, %bb.o
  %.0.i.i.i46 = phi i8 [ %i.bj, %bb.n ], [ %i.bn, %bb.o ]
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i46) #26
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #26 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE8OnJobEndERKSt8functionIFvPNS8_3JobEEE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !478, !range !315, !noundef !316
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !827
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.b
  store i8 1, ptr %i.g, align 8, !tbaa !828
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 792
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !488  ; 12 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !488  ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.i, align 2, !tbaa !480, !range !315, !noundef !316
  %i.r = trunc nuw i8 %i.q to i1
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !824 ; 7 uses
  br i1 %i.r, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %.pre, align 8, !tbaa !889
  %i.t = load i32, ptr %i.l, align 4, !tbaa !518
  %.not = icmp eq i32 %i.s, %i.t
  br i1 %.not, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(9) %2) #26
  br label %bb.d, !llvm.loop !2458

.critedge2:                                       ; preds = %bb.e, %bb.f
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp sgt i64 %i.w, 8
  br i1 %i.x, label %bb.g, label %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit

bb.g:                                             ; preds = %.critedge2
  %i.y = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !824  ; 2 uses
  store ptr %.pre, ptr %i.y, align 8, !tbaa !824
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.aa, %i.v                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 3                 ; 3 uses
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 1
  %i.af = icmp sgt i64 %i.ac, 2
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.ag = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.ah = add i64 %i.ag, 2                        ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ah
  %i.aj = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !824
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !824
  %i.an = load i32, ptr %i.al, align 8, !tbaa !889
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !889
  %i.ap = icmp sgt i32 %i.an, %i.ao
  %spec.select.i.i.i.i = select i1 %i.ap, i64 %i.aj, i64 %i.ah ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.n, i64 %spec.select.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !824
  %i.as = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.034.i.i.i.i
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !824
  %i.at = icmp slt i64 %spec.select.i.i.i.i, %i.ae
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2459

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.au = and i64 %i.ab, 8
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aw = add nsw i64 %i.ac, -2
  %i.ax = ashr exact i64 %i.aw, 1
  %i.ay = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ax
  br i1 %i.ay, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.az = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ba = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !824
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0.lcssa.i.i.i.i
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !824
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i15 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i15, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_11PartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i8.i.i.i = phi i64 [ %i.ba, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %i.be = load i32, ptr %i.z, align 8, !tbaa !889
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i8.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i910.i.i.i, %bb.k ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i910.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0920.i.i910.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !824 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !889
  %i.bi = icmp sgt i32 %i.bh, %i.be
  br i1 %i.bi, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_11PartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.019.i.i.i.i.i
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !824
  %.not11.i.i.i = icmp eq i64 %.0920.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_11PartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i, label %bb.j, !llvm.loop !35

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_11PartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.019.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.z, ptr %i.bk, align 8, !tbaa !824
  br label %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit

_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit: ; preds = %.critedge2, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_11PartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.o, i64 -8
  store ptr %i.bl, ptr %i.k, align 8, !tbaa !888
  %i.bm = load i8, ptr %i.g, align 8, !tbaa !828, !range !315, !noundef !316
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.l, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit
  %i.bo = load ptr, ptr %2, align 8, !tbaa !827   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bo) #26 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.pre, ptr %i.b, align 8, !tbaa !824
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !211
  %.not.i.i16 = icmp eq ptr %i.br, null
  br i1 %.not.i.i16, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

bb.o:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !538
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #26, !inline_history !2460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE12AddToSummaryIiEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE12AddToSummaryIdEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE3JobD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pre) #26
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef 120) #28
  %i.ca = load i32, ptr %i.l, align 4, !tbaa !518
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.l, align 4, !tbaa !518
  br label %bb.u

bb.p:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !829, !noalias !2463 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !824 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !830
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %.not.i.i17 = icmp eq ptr %i.cd, %i.ch
  br i1 %.not.i.i17, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit

bb.r:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !831
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef 512) #28
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !545
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !489
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !488 ; 3 uses
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !490
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  store ptr %i.cp, ptr %i.cf, align 8, !tbaa !491
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit: ; preds = %bb.q, %bb.r
  %storemerge.i.i = phi ptr [ %i.ci, %bb.q ], [ %i.co, %bb.r ]
  store ptr %storemerge.i.i, ptr %i.cc, align 8, !tbaa !492
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !514
  tail call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE6RunJobERS5_PNS8_3JobE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(5688) %i.cr, ptr noundef %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !824
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !211
  %.not.i.i18 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i18, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit
  tail call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

bb.t:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !538
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26, !inline_history !2460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE12AddToSummaryIiEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(48) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE12AddToSummaryIdEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE3JobD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ce) #26
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef 120) #28
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !518
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !518
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE5PrintIJPKcSB_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_iSB_SB_SB_iSB_SB_SB_dSB_dSB_SB_SB_SB_SB_dSB_SB_SB_SB_dSB_EEEviSH_DpT_(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1, ptr noundef align 8 %2, ptr noundef %3, ptr noundef %4, ptr noundef align 8 %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, double noundef %16, ptr noundef %17, double noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, double noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, double noundef %29, ptr noundef %30) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !474
  %.not = icmp sgt i32 %i.d, %1
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !478, !range !315, !noundef !316
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.i = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  %i.j = load ptr, ptr %2, align 8, !tbaa !214
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !204
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.j, i64 noundef %i.l) #26 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 5 uses
  store ptr %i.n, ptr %31, align 8, !tbaa !201
  %i.o = load ptr, ptr %5, align 8, !tbaa !214    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !204  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.q, ptr %i.b, align 8, !tbaa !333
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #26 ; 2 uses
  store ptr %i.s, ptr %31, align 8, !tbaa !214
  %i.t = load i64, ptr %i.b, align 8, !tbaa !333
  store i64 %i.t, ptr %i.n, align 8, !tbaa !205
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.u = phi ptr [ %i.s, %bb.e ], [ %i.n, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ] ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !205
  store i8 %i.v, ptr %i.u, align 1, !tbaa !205
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.w = load i64, ptr %i.b, align 8, !tbaa !333  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !204
  %i.y = load ptr, ptr %31, align 8, !tbaa !214
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @_ZN3rrr9PrintNextIPKcJS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_S2_iS2_S2_S2_iS2_S2_S2_dS2_dS2_S2_S2_S2_S2_dS2_S2_S2_S2_dS2_EEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 %31, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, double noundef %16, ptr noundef %17, double noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, double noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, double noundef %29, ptr noundef %30)
  %i.aa = load ptr, ptr %31, align 8, !tbaa !214  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !205
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE9CreateJobEPS1_id:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.y, ptr %i.t, align 8, !tbaa !582
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE4pushERKSB_.exit6

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @_ZNSt5dequeIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESaISB_EE16_M_push_back_auxIJRKSB_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE4pushERKSB_.exit6

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE4pushERKSB_.exit6: ; preds = %bb.h, %bb.g, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %.0 = load ptr, ptr %i.a, align 8, !tbaa !1038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE5PrintIJPKcSB_SB_SB_iSB_iSB_SB_SB_iSB_SB_SB_iSB_SB_SB_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1, ptr noundef align 8 %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !565
  %.not = icmp sgt i32 %i.b, %1
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !569, !range !315, !noundef !316
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  %i.h = load ptr, ptr %2, align 8, !tbaa !214
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !204
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.h, i64 noundef %i.j) #26 ; 0 uses
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.l = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !912
  %i.r = or i32 %i.q, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r) #26
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %3, i64 noundef %i.s) #26 ; 0 uses
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit

_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit: ; preds = %bb.e, %bb.f
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  tail call void @_ZN3rrr9PrintNextIPKcJS2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21)
  %i.v = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !354 ; 6 uses
  %.not.i.i.i42 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i42, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !359
  %.not.i1.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 67
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !205
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aa) #26
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !339
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(570) %i.aa, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i8 [ %i.ae, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i) #26
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #26 ; 0 uses
  %i.al = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %2, align 8, !tbaa !214
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !204
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.am, i64 noundef %i.ao) #26 ; 0 uses
  %.not.i.i40 = icmp eq ptr %3, null
  br i1 %.not.i.i40, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !912
  %i.aw = or i32 %i.av, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.at, i32 noundef %i.aw) #26
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41

bb.l:                                             ; preds = %bb.j
  %i.ax = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %3, i64 noundef %i.ax) #26 ; 0 uses
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41

_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41: ; preds = %bb.k, %bb.l
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  tail call void @_ZN3rrr9PrintNextIPKcJS2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21)
  %i.ba = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !354 ; 6 uses
  %.not.i.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i43, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44

bb.m:                                             ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44: ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !359
  %.not.i1.i.i45 = icmp eq i8 %i.bh, 0
  br i1 %.not.i1.i.i45, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 67
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !205
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bf) #26
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !339
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(570) %i.bf, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47: ; preds = %bb.n, %bb.o
  %.0.i.i.i46 = phi i8 [ %i.bj, %bb.n ], [ %i.bn, %bb.o ]
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i46) #26
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #26 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE8OnJobEndERKSt8functionIFvPNS8_3JobEEE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !569, !range !315, !noundef !316
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !827
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.b
  store i8 1, ptr %i.g, align 8, !tbaa !828
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 792
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !577  ; 12 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !577  ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.i, align 2, !tbaa !571, !range !315, !noundef !316
  %i.r = trunc nuw i8 %i.q to i1
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !1038 ; 7 uses
  br i1 %i.r, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %.pre, align 8, !tbaa !1067
  %i.t = load i32, ptr %i.l, align 4, !tbaa !592
  %.not = icmp eq i32 %i.s, %i.t
  br i1 %.not, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(9) %2) #26
  br label %bb.d, !llvm.loop !3144

.critedge2:                                       ; preds = %bb.e, %bb.f
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp sgt i64 %i.w, 8
  br i1 %i.x, label %bb.g, label %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit

bb.g:                                             ; preds = %.critedge2
  %i.y = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1038 ; 2 uses
  store ptr %.pre, ptr %i.y, align 8, !tbaa !1038
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.aa, %i.v                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 3                 ; 3 uses
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 1
  %i.af = icmp sgt i64 %i.ac, 2
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.ag = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.ah = add i64 %i.ag, 2                        ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ah
  %i.aj = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1038
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !1038
  %i.an = load i32, ptr %i.al, align 8, !tbaa !1067
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !1067
  %i.ap = icmp sgt i32 %i.an, %i.ao
  %spec.select.i.i.i.i = select i1 %i.ap, i64 %i.aj, i64 %i.ah ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.n, i64 %spec.select.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1038
  %i.as = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.034.i.i.i.i
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1038
  %i.at = icmp slt i64 %spec.select.i.i.i.i, %i.ae
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3145

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.au = and i64 %i.ab, 8
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aw = add nsw i64 %i.ac, -2
  %i.ax = ashr exact i64 %i.aw, 1
  %i.ay = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ax
  br i1 %i.ay, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.az = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ba = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1038
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0.lcssa.i.i.i.i
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1038
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i15 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i15, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_11PartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i8.i.i.i = phi i64 [ %i.ba, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %i.be = load i32, ptr %i.z, align 8, !tbaa !1067
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i8.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i910.i.i.i, %bb.k ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i910.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0920.i.i910.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1038 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1067
  %i.bi = icmp sgt i32 %i.bh, %i.be
  br i1 %i.bi, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_11PartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.019.i.i.i.i.i
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !1038
  %.not11.i.i.i = icmp eq i64 %.0920.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_11PartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i, label %bb.j, !llvm.loop !107

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_11PartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.019.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.z, ptr %i.bk, align 8, !tbaa !1038
  br label %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit

_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit: ; preds = %.critedge2, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_11PartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.o, i64 -8
  store ptr %i.bl, ptr %i.k, align 8, !tbaa !1066
  %i.bm = load i8, ptr %i.g, align 8, !tbaa !828, !range !315, !noundef !316
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.l, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit
  %i.bo = load ptr, ptr %2, align 8, !tbaa !827   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bo) #26 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.pre, ptr %i.b, align 8, !tbaa !1038
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !211
  %.not.i.i16 = icmp eq ptr %i.br, null
  br i1 %.not.i.i16, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

bb.o:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !598
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #26, !inline_history !3146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE12AddToSummaryIiEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE12AddToSummaryIdEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE3JobD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pre) #26
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef 120) #28
  %i.ca = load i32, ptr %i.l, align 4, !tbaa !592
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.l, align 4, !tbaa !592
  br label %bb.u

bb.p:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1039, !noalias !3149 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1038 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1040
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %.not.i.i17 = icmp eq ptr %i.cd, %i.ch
  br i1 %.not.i.i17, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit

bb.r:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1041
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef 512) #28
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !601
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !578
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !577 ; 3 uses
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !579
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  store ptr %i.cp, ptr %i.cf, align 8, !tbaa !580
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit: ; preds = %bb.q, %bb.r
  %storemerge.i.i = phi ptr [ %i.ci, %bb.q ], [ %i.co, %bb.r ]
  store ptr %storemerge.i.i, ptr %i.cc, align 8, !tbaa !581
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !590
  tail call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE6RunJobERS5_PNS8_3JobE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(5720) %i.cr, ptr noundef %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !1038
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !211
  %.not.i.i18 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i18, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit
  tail call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

bb.t:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !598
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26, !inline_history !3146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE12AddToSummaryIiEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(48) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE12AddToSummaryIdEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE3JobD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ce) #26
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef 120) #28
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !592
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !592
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE5PrintIJPKcSB_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_iSB_SB_SB_iSB_SB_SB_dSB_dSB_SB_SB_SB_SB_dSB_SB_SB_SB_dSB_EEEviSH_DpT_(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1, ptr noundef align 8 %2, ptr noundef %3, ptr noundef %4, ptr noundef align 8 %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, double noundef %16, ptr noundef %17, double noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, double noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, double noundef %29, ptr noundef %30) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !565
  %.not = icmp sgt i32 %i.d, %1
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !569, !range !315, !noundef !316
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.i = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  %i.j = load ptr, ptr %2, align 8, !tbaa !214
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !204
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.j, i64 noundef %i.l) #26 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 5 uses
  store ptr %i.n, ptr %31, align 8, !tbaa !201
  %i.o = load ptr, ptr %5, align 8, !tbaa !214    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !204  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.q, ptr %i.b, align 8, !tbaa !333
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #26 ; 2 uses
  store ptr %i.s, ptr %31, align 8, !tbaa !214
  %i.t = load i64, ptr %i.b, align 8, !tbaa !333
  store i64 %i.t, ptr %i.n, align 8, !tbaa !205
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.u = phi ptr [ %i.s, %bb.e ], [ %i.n, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ] ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !205
  store i8 %i.v, ptr %i.u, align 1, !tbaa !205
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.w = load i64, ptr %i.b, align 8, !tbaa !333  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !204
  %i.y = load ptr, ptr %31, align 8, !tbaa !214
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @_ZN3rrr9PrintNextIPKcJS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_S2_iS2_S2_S2_iS2_S2_S2_dS2_dS2_S2_S2_S2_S2_dS2_S2_S2_S2_dS2_EEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 %31, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, double noundef %16, ptr noundef %17, double noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, double noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, double noundef %29, ptr noundef %30)
  %i.aa = load ptr, ptr %31, align 8, !tbaa !214  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !205
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_1
begin_hunk_2_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE9CreateJobEPS1_id:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.y, ptr %i.t, align 8, !tbaa !637
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE4pushERKSF_.exit6

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @_ZNSt5dequeIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESaISF_EE16_M_push_back_auxIJRKSF_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE4pushERKSF_.exit6

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE4pushERKSF_.exit6: ; preds = %bb.h, %bb.g, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %.0 = load ptr, ptr %i.a, align 8, !tbaa !1136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE5PrintIJPKcSF_SF_SF_iSF_iSF_SF_SF_iSF_SF_SF_iSF_SF_SF_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1, ptr noundef align 8 %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !620
  %.not = icmp sgt i32 %i.b, %1
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !624, !range !315, !noundef !316
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  %i.h = load ptr, ptr %2, align 8, !tbaa !214
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !204
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.h, i64 noundef %i.j) #26 ; 0 uses
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.l = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !912
  %i.r = or i32 %i.q, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r) #26
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %3, i64 noundef %i.s) #26 ; 0 uses
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit

_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit: ; preds = %bb.e, %bb.f
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  tail call void @_ZN3rrr9PrintNextIPKcJS2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21)
  %i.v = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !354 ; 6 uses
  %.not.i.i.i42 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i42, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !359
  %.not.i1.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 67
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !205
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aa) #26
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !339
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(570) %i.aa, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i8 [ %i.ae, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i) #26
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #26 ; 0 uses
  %i.al = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %2, align 8, !tbaa !214
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !204
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.am, i64 noundef %i.ao) #26 ; 0 uses
  %.not.i.i40 = icmp eq ptr %3, null
  br i1 %.not.i.i40, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !912
  %i.aw = or i32 %i.av, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.at, i32 noundef %i.aw) #26
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41

bb.l:                                             ; preds = %bb.j
  %i.ax = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %3, i64 noundef %i.ax) #26 ; 0 uses
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41

_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41: ; preds = %bb.k, %bb.l
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  tail call void @_ZN3rrr9PrintNextIPKcJS2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21)
  %i.ba = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !354 ; 6 uses
  %.not.i.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i43, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44

bb.m:                                             ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44: ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !359
  %.not.i1.i.i45 = icmp eq i8 %i.bh, 0
  br i1 %.not.i1.i.i45, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 67
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !205
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bf) #26
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !339
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(570) %i.bf, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47: ; preds = %bb.n, %bb.o
  %.0.i.i.i46 = phi i8 [ %i.bj, %bb.n ], [ %i.bn, %bb.o ]
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i46) #26
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #26 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE8OnJobEndERKSt8functionIFvPNSC_3JobEEE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !624, !range !315, !noundef !316
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !827
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.b
  store i8 1, ptr %i.g, align 8, !tbaa !828
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 792
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !632  ; 12 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !632  ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.i, align 2, !tbaa !626, !range !315, !noundef !316
  %i.r = trunc nuw i8 %i.q to i1
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !1136 ; 7 uses
  br i1 %i.r, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %.pre, align 8, !tbaa !1183
  %i.t = load i32, ptr %i.l, align 4, !tbaa !647
  %.not = icmp eq i32 %i.s, %i.t
  br i1 %.not, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(9) %2) #26
  br label %bb.d, !llvm.loop !4012

.critedge2:                                       ; preds = %bb.e, %bb.f
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp sgt i64 %i.w, 8
  br i1 %i.x, label %bb.g, label %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt6vectorISF_SaISF_EENSD_18CompareJobPointersEE3popEv.exit

bb.g:                                             ; preds = %.critedge2
  %i.y = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1136 ; 2 uses
  store ptr %.pre, ptr %i.y, align 8, !tbaa !1136
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.aa, %i.v                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 3                 ; 3 uses
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 1
  %i.af = icmp sgt i64 %i.ac, 2
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.ag = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.ah = add i64 %i.ag, 2                        ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ah
  %i.aj = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1136
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !1136
  %i.an = load i32, ptr %i.al, align 8, !tbaa !1183
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !1183
  %i.ap = icmp sgt i32 %i.an, %i.ao
  %spec.select.i.i.i.i = select i1 %i.ap, i64 %i.aj, i64 %i.ah ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.n, i64 %spec.select.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1136
  %i.as = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.034.i.i.i.i
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1136
  %i.at = icmp slt i64 %spec.select.i.i.i.i, %i.ae
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !4013

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.au = and i64 %i.ab, 8
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aw = add nsw i64 %i.ac, -2
  %i.ax = ashr exact i64 %i.aw, 1
  %i.ay = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ax
  br i1 %i.ay, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.az = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ba = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1136
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0.lcssa.i.i.i.i
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1136
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i15 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i15, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_11PartitionerIS4_EEE3JobESt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterINSF_18CompareJobPointersEEEEvT_SR_SR_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i8.i.i.i = phi i64 [ %i.ba, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %i.be = load i32, ptr %i.z, align 8, !tbaa !1183
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i8.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i910.i.i.i, %bb.k ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i910.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0920.i.i910.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1136 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1183
  %i.bi = icmp sgt i32 %i.bh, %i.be
  br i1 %i.bi, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_11PartitionerIS4_EEE3JobESt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterINSF_18CompareJobPointersEEEEvT_SR_SR_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.019.i.i.i.i.i
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !1136
  %.not11.i.i.i = icmp eq i64 %.0920.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_11PartitionerIS4_EEE3JobESt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterINSF_18CompareJobPointersEEEEvT_SR_SR_RT0_.exit.i.i, label %bb.j, !llvm.loop !148

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_11PartitionerIS4_EEE3JobESt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterINSF_18CompareJobPointersEEEEvT_SR_SR_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.019.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.z, ptr %i.bk, align 8, !tbaa !1136
  br label %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt6vectorISF_SaISF_EENSD_18CompareJobPointersEE3popEv.exit

_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt6vectorISF_SaISF_EENSD_18CompareJobPointersEE3popEv.exit: ; preds = %.critedge2, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_11PartitionerIS4_EEE3JobESt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterINSF_18CompareJobPointersEEEEvT_SR_SR_RT0_.exit.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.o, i64 -8
  store ptr %i.bl, ptr %i.k, align 8, !tbaa !1182
  %i.bm = load i8, ptr %i.g, align 8, !tbaa !828, !range !315, !noundef !316
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.l, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt6vectorISF_SaISF_EENSD_18CompareJobPointersEE3popEv.exit
  %i.bo = load ptr, ptr %2, align 8, !tbaa !827   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bo) #26 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt6vectorISF_SaISF_EENSD_18CompareJobPointersEE3popEv.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.pre, ptr %i.b, align 8, !tbaa !1136
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !211
  %.not.i.i16 = icmp eq ptr %i.br, null
  br i1 %.not.i.i16, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

bb.o:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !653
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #26, !inline_history !4014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE12AddToSummaryIiEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EERSt3mapISK_T_St4lessISK_ESaISt4pairIKSK_SP_EEERKSE_ISS_ISK_SP_ESaISY_EE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE12AddToSummaryIdEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EERSt3mapISK_T_St4lessISK_ESaISt4pairIKSK_SP_EEERKSE_ISS_ISK_SP_ESaISY_EE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE3JobD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pre) #26
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef 120) #28
  %i.ca = load i32, ptr %i.l, align 4, !tbaa !647
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.l, align 4, !tbaa !647
  br label %bb.u

bb.p:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1137, !noalias !4017 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1136 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1138
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %.not.i.i17 = icmp eq ptr %i.cd, %i.ch
  br i1 %.not.i.i17, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit

bb.r:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1139
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef 512) #28
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !656
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !633
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !632 ; 3 uses
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !634
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  store ptr %i.cp, ptr %i.cf, align 8, !tbaa !635
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit: ; preds = %bb.q, %bb.r
  %storemerge.i.i = phi ptr [ %i.ci, %bb.q ], [ %i.co, %bb.r ]
  store ptr %storemerge.i.i, ptr %i.cc, align 8, !tbaa !636
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !645
  tail call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE6RunJobERS9_PNSC_3JobE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(5848) %i.cr, ptr noundef %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !1136
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !211
  %.not.i.i18 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i18, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit
  tail call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

bb.t:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !653
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26, !inline_history !4014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE12AddToSummaryIiEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EERSt3mapISK_T_St4lessISK_ESaISt4pairIKSK_SP_EEERKSE_ISS_ISK_SP_ESaISY_EE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(48) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE12AddToSummaryIdEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EERSt3mapISK_T_St4lessISK_ESaISt4pairIKSK_SP_EEERKSE_ISS_ISK_SP_ESaISY_EE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE3JobD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ce) #26
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef 120) #28
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !647
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !647
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE5PrintIJPKcSF_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_SF_iSF_SF_SF_iSF_SF_SF_dSF_dSF_SF_SF_SF_SF_dSF_SF_SF_SF_dSF_EEEviSL_DpT_(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1, ptr noundef align 8 %2, ptr noundef %3, ptr noundef %4, ptr noundef align 8 %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, double noundef %16, ptr noundef %17, double noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, double noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, double noundef %29, ptr noundef %30) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !620
  %.not = icmp sgt i32 %i.d, %1
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !624, !range !315, !noundef !316
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.i = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  %i.j = load ptr, ptr %2, align 8, !tbaa !214
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !204
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.j, i64 noundef %i.l) #26 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 5 uses
  store ptr %i.n, ptr %31, align 8, !tbaa !201
  %i.o = load ptr, ptr %5, align 8, !tbaa !214    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !204  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.q, ptr %i.b, align 8, !tbaa !333
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #26 ; 2 uses
  store ptr %i.s, ptr %31, align 8, !tbaa !214
  %i.t = load i64, ptr %i.b, align 8, !tbaa !333
  store i64 %i.t, ptr %i.n, align 8, !tbaa !205
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.u = phi ptr [ %i.s, %bb.e ], [ %i.n, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ] ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !205
  store i8 %i.v, ptr %i.u, align 1, !tbaa !205
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.w = load i64, ptr %i.b, align 8, !tbaa !333  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !204
  %i.y = load ptr, ptr %31, align 8, !tbaa !214
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @_ZN3rrr9PrintNextIPKcJS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_S2_iS2_S2_S2_iS2_S2_S2_dS2_dS2_S2_S2_S2_S2_dS2_S2_S2_S2_dS2_EEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 %31, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, double noundef %16, ptr noundef %17, double noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, double noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, double noundef %29, ptr noundef %30)
  %i.aa = load ptr, ptr %31, align 8, !tbaa !214  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !205
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_2
begin_hunk_3_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE9CreateJobEPS1_id:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.y, ptr %i.t, align 8, !tbaa !693
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE4pushERKSB_.exit6

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZNSt5dequeIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESaISB_EE16_M_push_back_auxIJRKSB_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE4pushERKSB_.exit6

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE4pushERKSB_.exit6: ; preds = %bb.h, %bb.g, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %.0 = load ptr, ptr %i.a, align 8, !tbaa !1311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE5PrintIJPKcSB_SB_SB_iSB_iSB_SB_SB_iSB_SB_SB_iSB_SB_SB_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(872) %0, i32 noundef %1, ptr noundef align 8 %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !675
  %.not = icmp sgt i32 %i.b, %1
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !679, !range !315, !noundef !316
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  %i.h = load ptr, ptr %2, align 8, !tbaa !214
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !204
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.h, i64 noundef %i.j) #26 ; 0 uses
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.l = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !912
  %i.r = or i32 %i.q, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r) #26
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %3, i64 noundef %i.s) #26 ; 0 uses
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit

_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit: ; preds = %bb.e, %bb.f
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  tail call void @_ZN3rrr9PrintNextIPKcJS2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21)
  %i.v = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !354 ; 6 uses
  %.not.i.i.i42 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i42, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !359
  %.not.i1.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 67
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !205
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aa) #26
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !339
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(570) %i.aa, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i8 [ %i.ae, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i) #26
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #26 ; 0 uses
  %i.al = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %2, align 8, !tbaa !214
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !204
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.am, i64 noundef %i.ao) #26 ; 0 uses
  %.not.i.i40 = icmp eq ptr %3, null
  br i1 %.not.i.i40, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !912
  %i.aw = or i32 %i.av, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.at, i32 noundef %i.aw) #26
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41

bb.l:                                             ; preds = %bb.j
  %i.ax = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %3, i64 noundef %i.ax) #26 ; 0 uses
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41

_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41: ; preds = %bb.k, %bb.l
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  tail call void @_ZN3rrr9PrintNextIPKcJS2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21)
  %i.ba = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !354 ; 6 uses
  %.not.i.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i43, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44

bb.m:                                             ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44: ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !359
  %.not.i1.i.i45 = icmp eq i8 %i.bh, 0
  br i1 %.not.i1.i.i45, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 67
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !205
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bf) #26
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !339
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(570) %i.bf, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47: ; preds = %bb.n, %bb.o
  %.0.i.i.i46 = phi i8 [ %i.bj, %bb.n ], [ %i.bn, %bb.o ]
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i46) #26
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #26 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE8OnJobEndERKSt8functionIFvPNS8_3JobEEE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !679, !range !315, !noundef !316
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !827
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.b
  store i8 1, ptr %i.g, align 8, !tbaa !828
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 824
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !688  ; 12 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !688  ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.i, align 2, !tbaa !681, !range !315, !noundef !316
  %i.r = trunc nuw i8 %i.q to i1
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !1311 ; 7 uses
  br i1 %i.r, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %.pre, align 8, !tbaa !1318
  %i.t = load i32, ptr %i.l, align 4, !tbaa !704
  %.not = icmp eq i32 %i.s, %i.t
  br i1 %.not, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(9) %2) #26
  br label %bb.d, !llvm.loop !4111

.critedge2:                                       ; preds = %bb.e, %bb.f
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp sgt i64 %i.w, 8
  br i1 %i.x, label %bb.g, label %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit

bb.g:                                             ; preds = %.critedge2
  %i.y = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1311 ; 2 uses
  store ptr %.pre, ptr %i.y, align 8, !tbaa !1311
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.aa, %i.v                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 3                 ; 3 uses
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 1
  %i.af = icmp sgt i64 %i.ac, 2
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.ag = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.ah = add i64 %i.ag, 2                        ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ah
  %i.aj = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1311
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !1311
  %i.an = load i32, ptr %i.al, align 8, !tbaa !1318
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !1318
  %i.ap = icmp sgt i32 %i.an, %i.ao
  %spec.select.i.i.i.i = select i1 %i.ap, i64 %i.aj, i64 %i.ah ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.n, i64 %spec.select.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1311
  %i.as = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.034.i.i.i.i
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1311
  %i.at = icmp slt i64 %spec.select.i.i.i.i, %i.ae
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !4112

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.au = and i64 %i.ab, 8
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aw = add nsw i64 %i.ac, -2
  %i.ax = ashr exact i64 %i.aw, 1
  %i.ay = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ax
  br i1 %i.ay, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.az = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ba = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1311
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0.lcssa.i.i.i.i
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1311
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i15 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i15, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i8.i.i.i = phi i64 [ %i.ba, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %i.be = load i32, ptr %i.z, align 8, !tbaa !1318
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i8.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i910.i.i.i, %bb.k ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i910.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0920.i.i910.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1311 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1318
  %i.bi = icmp sgt i32 %i.bh, %i.be
  br i1 %i.bi, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.019.i.i.i.i.i
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !1311
  %.not11.i.i.i = icmp eq i64 %.0920.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i, label %bb.j, !llvm.loop !187

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.019.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.z, ptr %i.bk, align 8, !tbaa !1311
  br label %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit

_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit: ; preds = %.critedge2, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.o, i64 -8
  store ptr %i.bl, ptr %i.k, align 8, !tbaa !1317
  %i.bm = load i8, ptr %i.g, align 8, !tbaa !828, !range !315, !noundef !316
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.l, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit
  %i.bo = load ptr, ptr %2, align 8, !tbaa !827   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bo) #26 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.pre, ptr %i.b, align 8, !tbaa !1311
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !211
  %.not.i.i16 = icmp eq ptr %i.br, null
  br i1 %.not.i.i16, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

bb.o:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !710
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #26, !inline_history !4113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE12AddToSummaryIiEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE12AddToSummaryIdEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE3JobD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pre) #26
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef 120) #28
  %i.ca = load i32, ptr %i.l, align 4, !tbaa !704
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.l, align 4, !tbaa !704
  br label %bb.u

bb.p:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1312, !noalias !4116 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1311 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1313
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %.not.i.i17 = icmp eq ptr %i.cd, %i.ch
  br i1 %.not.i.i17, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit

bb.r:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1314
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef 512) #28
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !713
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !689
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !688 ; 3 uses
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !690
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  store ptr %i.cp, ptr %i.cf, align 8, !tbaa !691
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit: ; preds = %bb.q, %bb.r
  %storemerge.i.i = phi ptr [ %i.ci, %bb.q ], [ %i.co, %bb.r ]
  store ptr %storemerge.i.i, ptr %i.cc, align 8, !tbaa !692
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !701
  tail call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE6RunJobERS5_PNS8_3JobE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(5688) %i.cr, ptr noundef %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !1311
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !211
  %.not.i.i18 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i18, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit
  tail call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

bb.t:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !710
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26, !inline_history !4113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE12AddToSummaryIiEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(48) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE12AddToSummaryIdEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE3JobD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ce) #26
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef 120) #28
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !704
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !704
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE5PrintIJPKcSB_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_iSB_SB_SB_iSB_SB_SB_dSB_dSB_SB_SB_SB_SB_dSB_SB_SB_SB_dSB_EEEviSH_DpT_(ptr noundef nonnull align 8 dereferenceable(872) %0, i32 noundef %1, ptr noundef align 8 %2, ptr noundef %3, ptr noundef %4, ptr noundef align 8 %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, double noundef %16, ptr noundef %17, double noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, double noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, double noundef %29, ptr noundef %30) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !675
  %.not = icmp sgt i32 %i.d, %1
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !679, !range !315, !noundef !316
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.i = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  %i.j = load ptr, ptr %2, align 8, !tbaa !214
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !204
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.j, i64 noundef %i.l) #26 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 5 uses
  store ptr %i.n, ptr %31, align 8, !tbaa !201
  %i.o = load ptr, ptr %5, align 8, !tbaa !214    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !204  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.q, ptr %i.b, align 8, !tbaa !333
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #26 ; 2 uses
  store ptr %i.s, ptr %31, align 8, !tbaa !214
  %i.t = load i64, ptr %i.b, align 8, !tbaa !333
  store i64 %i.t, ptr %i.n, align 8, !tbaa !205
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.u = phi ptr [ %i.s, %bb.e ], [ %i.n, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ] ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !205
  store i8 %i.v, ptr %i.u, align 1, !tbaa !205
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.w = load i64, ptr %i.b, align 8, !tbaa !333  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !204
  %i.y = load ptr, ptr %31, align 8, !tbaa !214
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @_ZN3rrr9PrintNextIPKcJS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_S2_iS2_S2_S2_iS2_S2_S2_dS2_dS2_S2_S2_S2_S2_dS2_S2_S2_S2_dS2_EEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 %31, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, double noundef %16, ptr noundef %17, double noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, double noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, double noundef %29, ptr noundef %30)
  %i.aa = load ptr, ptr %31, align 8, !tbaa !214  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !205
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_3
begin_hunk_4_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE9CreateJobEPS1_id:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.y, ptr %i.t, align 8, !tbaa !748
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE4pushERKSB_.exit6

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZNSt5dequeIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESaISB_EE16_M_push_back_auxIJRKSB_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE4pushERKSB_.exit6

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE4pushERKSB_.exit6: ; preds = %bb.h, %bb.g, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %.0 = load ptr, ptr %i.a, align 8, !tbaa !1324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE5PrintIJPKcSB_SB_SB_iSB_iSB_SB_SB_iSB_SB_SB_iSB_SB_SB_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(872) %0, i32 noundef %1, ptr noundef align 8 %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !731
  %.not = icmp sgt i32 %i.b, %1
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !735, !range !315, !noundef !316
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  %i.h = load ptr, ptr %2, align 8, !tbaa !214
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !204
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.h, i64 noundef %i.j) #26 ; 0 uses
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.l = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !912
  %i.r = or i32 %i.q, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r) #26
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %3, i64 noundef %i.s) #26 ; 0 uses
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit

_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit: ; preds = %bb.e, %bb.f
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  tail call void @_ZN3rrr9PrintNextIPKcJS2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21)
  %i.v = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !354 ; 6 uses
  %.not.i.i.i42 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i42, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !359
  %.not.i1.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 67
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !205
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aa) #26
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !339
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(570) %i.aa, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i8 [ %i.ae, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i) #26
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #26 ; 0 uses
  %i.al = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %2, align 8, !tbaa !214
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !204
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.am, i64 noundef %i.ao) #26 ; 0 uses
  %.not.i.i40 = icmp eq ptr %3, null
  br i1 %.not.i.i40, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !912
  %i.aw = or i32 %i.av, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.at, i32 noundef %i.aw) #26
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41

bb.l:                                             ; preds = %bb.j
  %i.ax = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %3, i64 noundef %i.ax) #26 ; 0 uses
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41

_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41: ; preds = %bb.k, %bb.l
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  tail call void @_ZN3rrr9PrintNextIPKcJS2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21)
  %i.ba = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !354 ; 6 uses
  %.not.i.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i43, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44

bb.m:                                             ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44: ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !359
  %.not.i1.i.i45 = icmp eq i8 %i.bh, 0
  br i1 %.not.i1.i.i45, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 67
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !205
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bf) #26
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !339
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(570) %i.bf, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47: ; preds = %bb.n, %bb.o
  %.0.i.i.i46 = phi i8 [ %i.bj, %bb.n ], [ %i.bn, %bb.o ]
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i46) #26
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #26 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE8OnJobEndERKSt8functionIFvPNS8_3JobEEE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !735, !range !315, !noundef !316
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !827
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.b
  store i8 1, ptr %i.g, align 8, !tbaa !828
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 824
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !743  ; 12 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !743  ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.i, align 2, !tbaa !737, !range !315, !noundef !316
  %i.r = trunc nuw i8 %i.q to i1
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !1324 ; 7 uses
  br i1 %i.r, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %.pre, align 8, !tbaa !1331
  %i.t = load i32, ptr %i.l, align 4, !tbaa !758
  %.not = icmp eq i32 %i.s, %i.t
  br i1 %.not, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(9) %2) #26
  br label %bb.d, !llvm.loop !4270

.critedge2:                                       ; preds = %bb.e, %bb.f
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp sgt i64 %i.w, 8
  br i1 %i.x, label %bb.g, label %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit

bb.g:                                             ; preds = %.critedge2
  %i.y = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1324 ; 2 uses
  store ptr %.pre, ptr %i.y, align 8, !tbaa !1324
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.aa, %i.v                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 3                 ; 3 uses
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 1
  %i.af = icmp sgt i64 %i.ac, 2
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.ag = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.ah = add i64 %i.ag, 2                        ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ah
  %i.aj = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1324
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !1324
  %i.an = load i32, ptr %i.al, align 8, !tbaa !1331
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !1331
  %i.ap = icmp sgt i32 %i.an, %i.ao
  %spec.select.i.i.i.i = select i1 %i.ap, i64 %i.aj, i64 %i.ah ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.n, i64 %spec.select.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1324
  %i.as = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.034.i.i.i.i
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1324
  %i.at = icmp slt i64 %spec.select.i.i.i.i, %i.ae
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !4271

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.au = and i64 %i.ab, 8
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aw = add nsw i64 %i.ac, -2
  %i.ax = ashr exact i64 %i.aw, 1
  %i.ay = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ax
  br i1 %i.ay, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.az = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ba = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1324
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0.lcssa.i.i.i.i
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1324
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i15 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i15, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i8.i.i.i = phi i64 [ %i.ba, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %i.be = load i32, ptr %i.z, align 8, !tbaa !1331
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i8.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i910.i.i.i, %bb.k ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i910.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0920.i.i910.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1324 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1331
  %i.bi = icmp sgt i32 %i.bh, %i.be
  br i1 %i.bi, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.019.i.i.i.i.i
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !1324
  %.not11.i.i.i = icmp eq i64 %.0920.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i, label %bb.j, !llvm.loop !188

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.019.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.z, ptr %i.bk, align 8, !tbaa !1324
  br label %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit

_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit: ; preds = %.critedge2, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterINSB_18CompareJobPointersEEEEvT_SN_SN_RT0_.exit.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.o, i64 -8
  store ptr %i.bl, ptr %i.k, align 8, !tbaa !1330
  %i.bm = load i8, ptr %i.g, align 8, !tbaa !828, !range !315, !noundef !316
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.l, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit
  %i.bo = load ptr, ptr %2, align 8, !tbaa !827   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bo) #26 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE3popEv.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.pre, ptr %i.b, align 8, !tbaa !1324
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !211
  %.not.i.i16 = icmp eq ptr %i.br, null
  br i1 %.not.i.i16, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

bb.o:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !764
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #26, !inline_history !4272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE12AddToSummaryIiEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE12AddToSummaryIdEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE3JobD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pre) #26
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef 120) #28
  %i.ca = load i32, ptr %i.l, align 4, !tbaa !758
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.l, align 4, !tbaa !758
  br label %bb.u

bb.p:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1325, !noalias !4275 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1324 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1326
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %.not.i.i17 = icmp eq ptr %i.cd, %i.ch
  br i1 %.not.i.i17, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit

bb.r:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1327
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef 512) #28
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !767
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !744
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !743 ; 3 uses
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !745
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  store ptr %i.cp, ptr %i.cf, align 8, !tbaa !746
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit: ; preds = %bb.q, %bb.r
  %storemerge.i.i = phi ptr [ %i.ci, %bb.q ], [ %i.co, %bb.r ]
  store ptr %storemerge.i.i, ptr %i.cc, align 8, !tbaa !747
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !756
  tail call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE6RunJobERS5_PNS8_3JobE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(5720) %i.cr, ptr noundef %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !1324
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !211
  %.not.i.i18 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i18, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit
  tail call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

bb.t:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !764
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26, !inline_history !4272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE12AddToSummaryIiEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(48) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE12AddToSummaryIdEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EERSt3mapISG_T_St4lessISG_ESaISt4pairIKSG_SL_EEERKSA_ISO_ISG_SL_ESaISU_EE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE3JobD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ce) #26
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef 120) #28
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !758
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !758
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE5PrintIJPKcSB_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_iSB_SB_SB_iSB_SB_SB_dSB_dSB_SB_SB_SB_SB_dSB_SB_SB_SB_dSB_EEEviSH_DpT_(ptr noundef nonnull align 8 dereferenceable(872) %0, i32 noundef %1, ptr noundef align 8 %2, ptr noundef %3, ptr noundef %4, ptr noundef align 8 %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, double noundef %16, ptr noundef %17, double noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, double noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, double noundef %29, ptr noundef %30) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !731
  %.not = icmp sgt i32 %i.d, %1
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !735, !range !315, !noundef !316
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.i = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  %i.j = load ptr, ptr %2, align 8, !tbaa !214
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !204
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.j, i64 noundef %i.l) #26 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 5 uses
  store ptr %i.n, ptr %31, align 8, !tbaa !201
  %i.o = load ptr, ptr %5, align 8, !tbaa !214    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !204  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.q, ptr %i.b, align 8, !tbaa !333
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #26 ; 2 uses
  store ptr %i.s, ptr %31, align 8, !tbaa !214
  %i.t = load i64, ptr %i.b, align 8, !tbaa !333
  store i64 %i.t, ptr %i.n, align 8, !tbaa !205
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.u = phi ptr [ %i.s, %bb.e ], [ %i.n, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ] ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !205
  store i8 %i.v, ptr %i.u, align 1, !tbaa !205
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.w = load i64, ptr %i.b, align 8, !tbaa !333  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !204
  %i.y = load ptr, ptr %31, align 8, !tbaa !214
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @_ZN3rrr9PrintNextIPKcJS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_S2_iS2_S2_S2_iS2_S2_S2_dS2_dS2_S2_S2_S2_S2_dS2_S2_S2_S2_dS2_EEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 %31, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, double noundef %16, ptr noundef %17, double noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, double noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, double noundef %29, ptr noundef %30)
  %i.aa = load ptr, ptr %31, align 8, !tbaa !214  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !205
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_4
begin_hunk_5_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE9CreateJobEPS1_id:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.y, ptr %i.t, align 8, !tbaa !802
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE4pushERKSF_.exit6

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZNSt5dequeIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESaISF_EE16_M_push_back_auxIJRKSF_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE4pushERKSF_.exit6

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE4pushERKSF_.exit6: ; preds = %bb.h, %bb.g, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %.0 = load ptr, ptr %i.a, align 8, !tbaa !1333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE5PrintIJPKcSF_SF_SF_iSF_iSF_SF_SF_iSF_SF_SF_iSF_SF_SF_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(872) %0, i32 noundef %1, ptr noundef align 8 %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !785
  %.not = icmp sgt i32 %i.b, %1
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !789, !range !315, !noundef !316
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  %i.h = load ptr, ptr %2, align 8, !tbaa !214
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !204
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.h, i64 noundef %i.j) #26 ; 0 uses
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.l = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !912
  %i.r = or i32 %i.q, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r) #26
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %3, i64 noundef %i.s) #26 ; 0 uses
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit

_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit: ; preds = %bb.e, %bb.f
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  tail call void @_ZN3rrr9PrintNextIPKcJS2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21)
  %i.v = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !354 ; 6 uses
  %.not.i.i.i42 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i42, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !359
  %.not.i1.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 67
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !205
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aa) #26
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !339
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(570) %i.aa, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i8 [ %i.ae, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i) #26
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #26 ; 0 uses
  %i.al = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %2, align 8, !tbaa !214
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !204
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.am, i64 noundef %i.ao) #26 ; 0 uses
  %.not.i.i40 = icmp eq ptr %3, null
  br i1 %.not.i.i40, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !912
  %i.aw = or i32 %i.av, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.at, i32 noundef %i.aw) #26
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41

bb.l:                                             ; preds = %bb.j
  %i.ax = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %3, i64 noundef %i.ax) #26 ; 0 uses
  br label %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41

_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41: ; preds = %bb.k, %bb.l
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  tail call void @_ZN3rrr9PrintNextIPKcJS2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, double noundef %21)
  %i.ba = load ptr, ptr @_ZSt4cout, align 8, !tbaa !339
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !354 ; 6 uses
  %.not.i.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i43, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44

bb.m:                                             ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44: ; preds = %_ZN3rrr9PrintNextIPKcJS2_S2_S2_iS2_iS2_S2_S2_iS2_S2_S2_iS2_S2_S2_dEEEvRSoT_DpT0_.exit41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !359
  %.not.i1.i.i45 = icmp eq i8 %i.bh, 0
  br i1 %.not.i1.i.i45, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 67
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !205
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i44
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bf) #26
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !339
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(570) %i.bf, i8 noundef signext 10) #26, !inline_history !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47: ; preds = %bb.n, %bb.o
  %.0.i.i.i46 = phi i8 [ %i.bj, %bb.n ], [ %i.bn, %bb.o ]
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i46) #26
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #26 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit47, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE8OnJobEndERKSt8functionIFvPNSC_3JobEEE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !789, !range !315, !noundef !316
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !827
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.b
  store i8 1, ptr %i.g, align 8, !tbaa !828
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 824
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !797  ; 12 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !797  ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.i, align 2, !tbaa !791, !range !315, !noundef !316
  %i.r = trunc nuw i8 %i.q to i1
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !1333 ; 7 uses
  br i1 %i.r, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %.pre, align 8, !tbaa !1340
  %i.t = load i32, ptr %i.l, align 4, !tbaa !812
  %.not = icmp eq i32 %i.s, %i.t
  br i1 %.not, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(9) %2) #26
  br label %bb.d, !llvm.loop !4362

.critedge2:                                       ; preds = %bb.e, %bb.f
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp sgt i64 %i.w, 8
  br i1 %i.x, label %bb.g, label %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISF_SaISF_EENSD_18CompareJobPointersEE3popEv.exit

bb.g:                                             ; preds = %.critedge2
  %i.y = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1333 ; 2 uses
  store ptr %.pre, ptr %i.y, align 8, !tbaa !1333
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.aa, %i.v                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 3                 ; 3 uses
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 1
  %i.af = icmp sgt i64 %i.ac, 2
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.ag = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.ah = add i64 %i.ag, 2                        ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ah
  %i.aj = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.aj
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1333
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !1333
  %i.an = load i32, ptr %i.al, align 8, !tbaa !1340
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !1340
  %i.ap = icmp sgt i32 %i.an, %i.ao
  %spec.select.i.i.i.i = select i1 %i.ap, i64 %i.aj, i64 %i.ah ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.n, i64 %spec.select.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1333
  %i.as = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.034.i.i.i.i
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1333
  %i.at = icmp slt i64 %spec.select.i.i.i.i, %i.ae
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !4363

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.au = and i64 %i.ab, 8
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aw = add nsw i64 %i.ac, -2
  %i.ax = ashr exact i64 %i.aw, 1
  %i.ay = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ax
  br i1 %i.ay, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.az = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ba = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1333
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0.lcssa.i.i.i.i
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1333
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i15 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i15, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterINSF_18CompareJobPointersEEEEvT_SR_SR_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i8.i.i.i = phi i64 [ %i.ba, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %i.be = load i32, ptr %i.z, align 8, !tbaa !1340
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i8.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i910.i.i.i, %bb.k ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i910.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0920.i.i910.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1333 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1340
  %i.bi = icmp sgt i32 %i.bh, %i.be
  br i1 %i.bi, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterINSF_18CompareJobPointersEEEEvT_SR_SR_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.019.i.i.i.i.i
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !1333
  %.not11.i.i.i = icmp eq i64 %.0920.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterINSF_18CompareJobPointersEEEEvT_SR_SR_RT0_.exit.i.i, label %bb.j, !llvm.loop !189

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterINSF_18CompareJobPointersEEEEvT_SR_SR_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.019.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.z, ptr %i.bk, align 8, !tbaa !1333
  br label %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISF_SaISF_EENSD_18CompareJobPointersEE3popEv.exit

_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISF_SaISF_EENSD_18CompareJobPointersEE3popEv.exit: ; preds = %.critedge2, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_20LevelBasePartitionerIS4_EEE3JobESt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterINSF_18CompareJobPointersEEEEvT_SR_SR_RT0_.exit.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.o, i64 -8
  store ptr %i.bl, ptr %i.k, align 8, !tbaa !1339
  %i.bm = load i8, ptr %i.g, align 8, !tbaa !828, !range !315, !noundef !316
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.l, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISF_SaISF_EENSD_18CompareJobPointersEE3popEv.exit
  %i.bo = load ptr, ptr %2, align 8, !tbaa !827   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bo) #26 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISF_SaISF_EENSD_18CompareJobPointersEE3popEv.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.pre, ptr %i.b, align 8, !tbaa !1333
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !211
  %.not.i.i16 = icmp eq ptr %i.br, null
  br i1 %.not.i.i16, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

bb.o:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !818
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #26, !inline_history !4364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE12AddToSummaryIiEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EERSt3mapISK_T_St4lessISK_ESaISt4pairIKSK_SP_EEERKSE_ISS_ISK_SP_ESaISY_EE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE12AddToSummaryIdEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EERSt3mapISK_T_St4lessISK_ESaISt4pairIKSK_SP_EEERKSE_ISS_ISK_SP_ESaISY_EE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE3JobD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pre) #26
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef 120) #28
  %i.ca = load i32, ptr %i.l, align 4, !tbaa !812
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.l, align 4, !tbaa !812
  br label %bb.u

bb.p:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1334, !noalias !4367 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1333 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1335
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %.not.i.i17 = icmp eq ptr %i.cd, %i.ch
  br i1 %.not.i.i17, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit

bb.r:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1336
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef 512) #28
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !821
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !798
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !797 ; 3 uses
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !799
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  store ptr %i.cp, ptr %i.cf, align 8, !tbaa !800
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit: ; preds = %bb.q, %bb.r
  %storemerge.i.i = phi ptr [ %i.ci, %bb.q ], [ %i.co, %bb.r ]
  store ptr %storemerge.i.i, ptr %i.cc, align 8, !tbaa !801
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !810
  tail call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE6RunJobERS9_PNSC_3JobE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(5848) %i.cr, ptr noundef %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !1333
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !211
  %.not.i.i18 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i18, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit
  tail call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

bb.t:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !818
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26, !inline_history !4364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE12AddToSummaryIiEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EERSt3mapISK_T_St4lessISK_ESaISt4pairIKSK_SP_EEERKSE_ISS_ISK_SP_ESaISY_EE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(48) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  call void @_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE12AddToSummaryIdEEvRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EERSt3mapISK_T_St4lessISK_ESaISt4pairIKSK_SP_EEERKSE_ISS_ISK_SP_ESaISY_EE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE3JobD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ce) #26
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef 120) #28
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !812
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !812
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE5PrintIJPKcSF_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_SF_iSF_SF_SF_iSF_SF_SF_dSF_dSF_SF_SF_SF_SF_dSF_SF_SF_SF_dSF_EEEviSL_DpT_(ptr noundef nonnull align 8 dereferenceable(872) %0, i32 noundef %1, ptr noundef align 8 %2, ptr noundef %3, ptr noundef %4, ptr noundef align 8 %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, double noundef %16, ptr noundef %17, double noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, double noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, double noundef %29, ptr noundef %30) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !785
  %.not = icmp sgt i32 %i.d, %1
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !789, !range !315, !noundef !316
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.i = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.c
  %i.j = load ptr, ptr %2, align 8, !tbaa !214
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !204
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.j, i64 noundef %i.l) #26 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 5 uses
  store ptr %i.n, ptr %31, align 8, !tbaa !201
  %i.o = load ptr, ptr %5, align 8, !tbaa !214    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !204  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.q, ptr %i.b, align 8, !tbaa !333
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #26 ; 2 uses
  store ptr %i.s, ptr %31, align 8, !tbaa !214
  %i.t = load i64, ptr %i.b, align 8, !tbaa !333
  store i64 %i.t, ptr %i.n, align 8, !tbaa !205
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.u = phi ptr [ %i.s, %bb.e ], [ %i.n, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ] ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !205
  store i8 %i.v, ptr %i.u, align 1, !tbaa !205
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.w = load i64, ptr %i.b, align 8, !tbaa !333  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !204
  %i.y = load ptr, ptr %31, align 8, !tbaa !214
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @_ZN3rrr9PrintNextIPKcJS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_S2_iS2_S2_S2_iS2_S2_S2_dS2_dS2_S2_S2_S2_S2_dS2_S2_S2_S2_dS2_EEEvRSoT_DpT0_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 %31, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, double noundef %16, ptr noundef %17, double noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, double noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, double noundef %29, ptr noundef %30)
  %i.aa = load ptr, ptr %31, align 8, !tbaa !214  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !205
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_5
