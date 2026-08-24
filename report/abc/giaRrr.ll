Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaRrr?download=true
inline.NumInlined: 27717
inline.NumDeleted: 6992
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE6ThreadEPKNS_9ParameterE:bb.a
._crit_edge:                                      ; preds = %bb.k, %_ZNSt14_Function_baseD2Ev.exit
  %.lcssa = phi i32 [ %i.m, %_ZNSt14_Function_baseD2Ev.exit ], [ %i.ax, %bb.k ]
  call void @_ZSt20__throw_system_errori(i32 noundef %.lcssa) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.lr.ph, %bb.k
  store i8 1, ptr %i.l, align 8, !tbaa !1035
  %i.x = load i8, ptr %i.n, align 8, !tbaa !458, !range !157, !noundef !158
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge5.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %bb.d
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !1036
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !1036 ; 4 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(9) %4) #26
  %i.ac = load i8, ptr %i.n, align 8, !tbaa !458, !range !157, !noundef !158
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.critedge5, label %.lr.ph, !llvm.loop !1037

.critedge:                                        ; preds = %.lr.ph
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !1030
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !1030
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !1038
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %.not.i.i = icmp eq ptr %i.aa, %i.ag
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit

bb.f:                                             ; preds = %.critedge
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !1039
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef 512) #28
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !552
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.ak, ptr %i.t, align 8, !tbaa !452
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !451 ; 3 uses
  store ptr %i.al, ptr %i.s, align 8, !tbaa !453
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  store ptr %i.am, ptr %i.r, align 8, !tbaa !454
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit: ; preds = %bb.e, %bb.f
  %storemerge.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.al, %bb.f ]
  store ptr %storemerge.i.i, ptr %i.p, align 8, !tbaa !455
  %i.an = load i8, ptr %i.l, align 8, !tbaa !1035, !range !157, !noundef !158
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.g:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit
  %i.ap = load ptr, ptr %4, align 8, !tbaa !1032  ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i8, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #26 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !1030
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE6RunJobERS5_PNS8_3JobE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(5688) %2, ptr noundef %i.ar)
  %i.as = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #26 ; 2 uses
  %.not.i.i.i9 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i9, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZSt20__throw_system_errori(i32 noundef %i.as) #27
  unreachable

.critedge5:                                       ; preds = %bb.d
  %.pre = load i8, ptr %i.l, align 8, !tbaa !1035, !range !157
  %i.at = trunc nuw i8 %.pre to i1
  br i1 %i.at, label %.critedge5.thread, label %bb.l

.critedge5.thread:                                ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.critedge5
  %i.au = load ptr, ptr %4, align 8, !tbaa !1032  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i.i13, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge5.thread
  %i.av = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #26 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE4pushERKSB_(ptr noundef nonnull align 8 dereferenceable(25) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.w) #26
  %i.aw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !1030
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.k, ptr %4, align 8, !tbaa !1032
  store i8 0, ptr %i.l, align 8, !tbaa !1035
  %i.ax = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %._crit_edge

bb.l:                                             ; preds = %bb.j, %.critedge5.thread, %.critedge5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(5688) dereferenceable(5688) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEEC2EPKNS_9ParameterESt8functionIFdPS1_EE(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %1, ptr noundef align 8 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !1040
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !241
  store i32 %i.c, ptr %i.a, align 8, !tbaa !1062
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2) #26, !inline_history !496 ; 0 uses
  %i.i = load <2 x ptr>, ptr %i.e, align 8, !tbaa !139
  store <2 x ptr> %i.i, ptr %i.g, align 8, !tbaa !139
  br label %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit

_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load <2 x i32>, ptr %i.k, align 4, !tbaa !32
  %i.n = load i32, ptr %i.k, align 4, !tbaa !248
  store i32 %i.n, ptr %i.j, align 8, !tbaa !1063
  store <2 x i32> %i.m, ptr %i.l, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !252
  store i32 %i.q, ptr %i.o, align 4, !tbaa !1064
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = load i8, ptr %i.s, align 4, !tbaa !245, !range !157, !noundef !158
  store i8 %i.t, ptr %i.r, align 8, !tbaa !1065
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.w = load i8, ptr %i.v, align 1, !tbaa !260, !range !157, !noundef !158
  store i8 %i.w, ptr %i.u, align 1, !tbaa !1066
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 40, i1 false)
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !242
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !1067
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i8 0, ptr %i.ab, align 4, !tbaa !1068
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.ac, align 8, !tbaa !1069
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 -1, ptr %i.ad, align 8, !tbaa !1070
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.af, align 8, !tbaa !181
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 0, ptr %i.ag, align 8, !tbaa !447
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.ah, align 8, !tbaa !181
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 0, ptr %i.ai, align 8, !tbaa !447
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr null, ptr %i.ak, align 8, !tbaa !181
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %i.al, align 8, !tbaa !447
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %i.an, align 8, !tbaa !181
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.ao, align 8, !tbaa !447
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.ae, i8 0, i64 73, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aj, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.am, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, i8 0, i64 80, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  store i64 5489, ptr %i.aq, align 8, !tbaa !184
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit
  %store_forwarded = phi i64 [ 5489, %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit ], [ %i.bd, %bb.d ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit ], [ %i.be, %bb.d ] ; 4 uses
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %.011.i.i.i
  %i.as = lshr i64 %store_forwarded, 30
  %i.at = xor i64 %i.as, %store_forwarded
  %i.au = mul nuw nsw i64 %i.at, 1812433253
  %i.av = add nuw i64 %i.au, %.011.i.i.i          ; 2 uses
  %i.aw = and i64 %i.av, 4294967295               ; 2 uses
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !184
  %i.ax = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ax, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr [8 x i8], ptr %i.aq, i64 %i.ax
  %i.az = lshr i64 %i.aw, 30
  %i.ba = xor i64 %i.az, %i.av
  %i.bb = mul i64 %i.ba, 1812433253
  %i.bc = add i64 %i.bb, %i.ax
  %i.bd = and i64 %i.bc, 4294967295               ; 2 uses
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !184
  %i.be = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.c

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Ev.exit: ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 5408
  store i64 624, ptr %i.bf, align 8, !tbaa !1071
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 5416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 5448 ; 3 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !91
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 5456
  store ptr null, ptr %i.bi, align 8, !tbaa !92
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5464
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !93
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5472
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !94
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5480
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5544
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i8 0, i64 64, i1 false)
  store i32 -1, ptr %i.bm, align 8, !tbaa !1072
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5552
  store ptr null, ptr %i.bn, align 8, !tbaa !181
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 5560
  store i32 0, ptr %i.bo, align 8, !tbaa !447
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 5568
  store ptr null, ptr %i.bp, align 8, !tbaa !181
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 5576
  store i32 0, ptr %i.bq, align 8, !tbaa !447
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5584
  store ptr null, ptr %i.br, align 8, !tbaa !448
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 3 uses
  store i32 0, ptr %i.bs, align 8, !tbaa !91
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store ptr null, ptr %i.bt, align 8, !tbaa !92
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5616
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !93
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 5624
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !94
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 5632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_11BddAnalyzerIS1_EEEENS0_11PartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::function.35", align 8  ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !138    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !30
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !176
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.f, align 8, !tbaa !85
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.sroa.04.07.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !42 ; 3 uses
  %.not8.i.i.i.i = icmp eq ptr %.sroa.04.07.i.i.i.i, %i.g
  br i1 %.not8.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.i, ptr %i.a, align 4, !tbaa !32
  br label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.k, ptr %i.a, align 4, !tbaa !32
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit.i.i.i.i:           ; preds = %thread-pre-split.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.sroa.04.09.i4.i.i.i = phi ptr [ %.sroa.04.07.i.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %.sroa.04.0.i.i.i.i, %thread-pre-split.i.i.i ]
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !85
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !1073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.i.i.i.i = load ptr, ptr %.sroa.04.09.i4.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.04.0.i.i.i.i, %i.g
  %.pr2.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !21 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, label %thread-pre-split.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i: ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %.not.i1.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i1.i.i.i, label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %bb.a
  %i.m = phi ptr [ %.pr2.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i ], [ @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, %bb.a ]
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !1074 ; 0 uses
  br label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit

_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.o = load i32, ptr %i.c, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = sitofp i32 %i.o to double
  ret double %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_11BddAnalyzerIS1_EEEENS0_11PartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEEC1EPS1_PKNS_9ParameterEEUlS9_E_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !139
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E9_M_invokeERKSt9_Any_dataOi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1075, !nonnull !158, !align !301
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = sext i32 %i.a to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.j = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32
  %i.o = load ptr, ptr %0, align 8, !tbaa !1077, !nonnull !158, !align !321 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %i.q = add i32 %i.p, -1
  %i.r = add i32 %i.q, %i.n
  store i32 %i.r, ptr %i.o, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEEC1EPS1_PKNS_9ParameterEENKUlS9_E_clES9_EUliE_, ptr %0, align 8, !tbaa !302
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !139
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1078
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJSt5_BindIFMN3rrr9SchedulerINS5_10AndNetworkENS5_9OptimizerIS7_NS5_11BddAnalyzerIS7_EEEENS5_11PartitionerIS7_EEEEFvPKNS5_9ParameterEEPSE_SH_EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  ret void
}

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_11BddAnalyzerIS6_EEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_11BddAnalyzerIS6_EEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !521
  %.unpack.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !15 ; 3 uses
  %.elt3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack4.i.i.i.i.i.i.i.i = load i64, ptr %.elt3.i.i.i.i.i.i.i.i, align 8, !tbaa !15
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !204
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !158
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_11BddAnalyzerIS5_EEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_11BddAnalyzerIS5_EEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_11BddAnalyzerIS5_EEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1104
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(840) %i.d, ptr noundef %i.m) #26, !inline_history !1105
  ret void
}

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE6RunJobERS5_PNS8_3JobE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(5688) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::function.227", align 8 ; 7 uses
  %i.l = alloca ptr, align 8                      ; 27 uses
  %4 = alloca %"class.std::function.227", align 8 ; 9 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 19 uses
  %6 = alloca %"class.rrr::AndNetwork", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %12 = alloca %"class.rrr::AndNetwork", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::vector.269", align 16 ; 9 uses
  %32 = alloca %"class.std::vector.274", align 16 ; 9 uses
  store ptr %2, ptr %i.l, align 8, !tbaa !1030
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !506
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !441, !range !157, !noundef !158
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5688) %1, ptr noundef %i.o, i1 noundef zeroext %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.l, ptr %4, align 8, !tbaa !451
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !521
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.u, align 8, !tbaa !1106
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.t, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !139
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !139 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.x, align 8, !tbaa !139
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !139
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.y, align 8, !tbaa !139
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread: ; preds = %_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.a

_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit: ; preds = %_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #26, !inline_history !1107 ; 0 uses
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !21  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread, %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  %i.ac = phi ptr [ @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread ], [ %.pre, %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit ]
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !438
  switch i32 %i.af, label %bb.bp [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.u
    i32 3, label %bb.bk
  ]

bb.b:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !1030
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1108
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !445
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !445
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.01.0.copyload.i = load i64, ptr %i.ao, align 8, !tbaa !184
  %i.ap = sub nsw i64 %i.am, %.sroa.01.0.copyload.i
  %.neg.i = sdiv i64 %i.ap, -1000000000
  %i.aq = add i64 %.neg.i, %i.an                  ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %..i = select i1 %i.ar, i64 -1, i64 %i.aq
  br label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit: ; preds = %bb.b, %bb.c
  %.1.i = phi i64 [ %..i, %bb.c ], [ 0, %bb.b ]
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5688) %1, i32 noundef %i.ai, i64 noundef %.1.i)
  br label %bb.bp

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !1030 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !1108
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  store i64 %i.av, ptr %5, align 8, !tbaa !184
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.av, %bb.d ], [ %i.bi, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.bj, %bb.f ] ; 4 uses
  %i.aw = getelementptr [8 x i8], ptr %5, i64 %.011.i.i
  %i.ax = lshr i64 %store_forwarded, 30
  %i.ay = xor i64 %i.ax, %store_forwarded
  %i.az = mul nuw nsw i64 %i.ay, 1812433253
  %i.ba = add nuw i64 %i.az, %.011.i.i            ; 2 uses
  %i.bb = and i64 %i.ba, 4294967295               ; 2 uses
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !184
  %i.bc = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.bc, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr [8 x i8], ptr %5, i64 %i.bc
  %i.be = lshr i64 %i.bb, 30
  %i.bf = xor i64 %i.be, %i.ba
  %i.bg = mul i64 %i.bf, 1812433253
  %i.bh = add i64 %i.bg, %i.bc
  %i.bi = and i64 %i.bh, 4294967295               ; 2 uses
  store i64 %i.bi, ptr %i.bd, align 8, !tbaa !184
  %i.bj = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4992 ; 2 uses
  store i64 624, ptr %i.bk, align 8, !tbaa !1071
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !519 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !506
  call void @_ZN3rrr10AndNetworkC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef nonnull align 8 dereferenceable(264) %i.bo) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 20
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 1816
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 4984 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 3168
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 1808
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 1816
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 4984
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, %bb.t
  %i.ci = phi i64 [ 624, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.ih, %bb.t ]
  %.0292 = phi double [ %i.bm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %.2, %bb.t ]
  %.052291 = phi double [ %i.bm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %.153, %bb.t ] ; 2 uses
  %.062290 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.in, %bb.t ] ; 3 uses
  %i.cj = load i64, ptr %i.bp, align 8, !tbaa !445
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.cm = load i64, ptr %i.bp, align 8, !tbaa !445
  %.sroa.01.0.copyload.i71 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.cn = sub nsw i64 %i.cl, %.sroa.01.0.copyload.i71
  %.neg.i72 = sdiv i64 %i.cn, -1000000000
  %i.co = add i64 %.neg.i72, %i.cm
  %or.cond = icmp slt i64 %i.co, 1
  br i1 %or.cond, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267: ; preds = %bb.h, %bb.g
  %.not70 = icmp eq i32 %.062290, 0
  br i1 %.not70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !1030
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !506
  store ptr %i.br, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store i64 19, ptr %i.k, align 8, !tbaa !184
  %i.cs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0) #26 ; 2 uses
  store ptr %i.cs, ptr %7, align 8, !tbaa !26
  %i.ct = load i64, ptr %i.k, align 8, !tbaa !184 ; 3 uses
  store i64 %i.ct, ptr %i.br, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.cs, ptr noundef nonnull align 1 dereferenceable(19) @.str.16, i64 19, i1 false)
  store i64 %i.ct, ptr %i.bs, align 8, !tbaa !12
  %i.cu = load ptr, ptr %7, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  store i8 0, ptr %i.cv, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE7CallAbcEPS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef %i.cr, ptr noundef nonnull align 8 %7)
  %i.cw = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.br
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.cy = load i64, ptr %i.br, align 8, !tbaa !15
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !1030
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.dc, ptr %i.j, align 8, !tbaa !138
  %i.dd = load ptr, ptr %i.bt, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i, label %bb.i, label %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.de = load ptr, ptr %i.bv, align 8, !tbaa !498
  %i.df = call noundef double %i.de(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #26, !inline_history !499 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dg = load ptr, ptr %i.l, align 8, !tbaa !1030 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.bw, ptr %8, align 8, !tbaa !8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !26 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store i64 %i.dk, ptr %i.i, align 8, !tbaa !184
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %bb.j, label %._crit_edge.i.i76

bb.j:                                             ; preds = %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit
  %i.dm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) #26 ; 2 uses
  store ptr %i.dm, ptr %8, align 8, !tbaa !26
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !184
  store i64 %i.dn, ptr %i.bw, align 8, !tbaa !15
  br label %._crit_edge.i.i76

._crit_edge.i.i76:                                ; preds = %bb.j, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit
  %i.do = phi ptr [ %i.dm, %bb.j ], [ %i.bw, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit ] ; 2 uses
  switch i64 %i.dk, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i76
  %i.dp = load i8, ptr %i.di, align 1, !tbaa !15
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.l:                                             ; preds = %._crit_edge.i.i76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.di, i64 %i.dk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i76, %bb.k, %bb.l
  %i.dq = load i64, ptr %i.i, align 8, !tbaa !184 ; 2 uses
  store i64 %i.dq, ptr %i.bx, align 8, !tbaa !12
  %i.dr = load ptr, ptr %8, align 8, !tbaa !26
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  store i8 0, ptr %i.ds, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE5PrintIJPKciSB_SB_SB_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef 1, ptr noundef nonnull align 8 %8, ptr noundef nonnull @.str.17, i32 noundef %.062290, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, double noundef %i.df)
  %i.dt = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bw
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.dv = load i64, ptr %i.bw, align 8, !tbaa !15
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267
  %.2.ph = phi double [ %.0292, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267 ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.dx = phi i64 [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 3 uses
  %.060 = phi i32 [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 2 uses
  %.2 = phi double [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.2.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 4 uses
  %i.dy = load i64, ptr %i.bp, align 8, !tbaa !445
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ea = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.eb = load i64, ptr %i.bp, align 8, !tbaa !445 ; 2 uses
  %.sroa.01.0.copyload.i80 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.ec = sub nsw i64 %i.ea, %.sroa.01.0.copyload.i80
  %.neg.i81 = sdiv i64 %i.ec, -1000000000
  %i.ed = add i64 %.neg.i81, %i.eb
  %or.cond281 = icmp slt i64 %i.ed, 1
  br i1 %or.cond281, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ee = phi i64 [ %i.eb, %bb.m ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  %i.ef = icmp ugt i64 %i.dx, 623
  br i1 %i.ef, label %vector.ph526, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph526:                                     ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271
  %.pre.i.i = load i64, ptr %5, align 8, !tbaa !184
  %vector.recur.init529 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body527
end_hunk_1
begin_hunk_2_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE6RunJobERS5_PNS8_3JobE:_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  %i.fn = lshr exact <2 x i64> %i.fm, splat (i64 1)
  %i.fo = xor <2 x i64> %i.fn, %wide.load525
  %i.fp = and <2 x i64> %wide.load, splat (i64 1)
  %i.fq = icmp eq <2 x i64> %i.fp, zeroinitializer
  %i.fr = select <2 x i1> %i.fq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.fs = xor <2 x i64> %i.fo, %i.fr
  store <2 x i64> %i.fs, ptr %i.fg, align 8, !tbaa !184
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ft = icmp eq i64 %index.next, 396
  br i1 %i.ft, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body, !llvm.loop !1110

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body
  %i.fu = load i64, ptr %i.cd, align 8, !tbaa !184
  %i.fv = and i64 %i.fu, -2147483648
  %i.fw = load i64, ptr %5, align 8, !tbaa !184   ; 2 uses
  %i.fx = and i64 %i.fw, 2147483646
  %i.fy = or disjoint i64 %i.fx, %i.fv
  %i.fz = load i64, ptr %i.ce, align 8, !tbaa !184
  %i.ga = lshr exact i64 %i.fy, 1
  %i.gb = xor i64 %i.ga, %i.fz
  %i.gc = and i64 %i.fw, 1
  %.not.i.i408 = icmp eq i64 %i.gc, 0
  %i.gd = select i1 %.not.i.i408, i64 0, i64 2567483615
  %i.ge = xor i64 %i.gb, %i.gd
  store i64 %i.ge, ptr %i.cd, align 8, !tbaa !184
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.gf = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.dx, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271 ] ; 2 uses
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 3 uses
  store i64 %i.gg, ptr %i.bk, align 8, !tbaa !1071
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gf
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !184 ; 2 uses
  %i.gj = lshr i64 %i.gi, 11
  %i.gk = and i64 %i.gj, 4294967295
  %i.gl = xor i64 %i.gk, %i.gi                    ; 2 uses
  %i.gm = shl i64 %i.gl, 7
  %i.gn = and i64 %i.gm, 2636928640
  %i.go = xor i64 %i.gn, %i.gl                    ; 2 uses
  %i.gp = shl i64 %i.go, 15
  %i.gq = and i64 %i.gp, 4022730752
  %i.gr = xor i64 %i.gq, %i.go                    ; 2 uses
  %i.gs = lshr i64 %i.gr, 18
  %i.gt = xor i64 %i.gs, %i.gr
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = icmp eq i64 %i.ee, 0
  br i1 %i.gv, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89, label %bb.n

bb.n:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.gw = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.gx = load i64, ptr %i.bp, align 8, !tbaa !445
  %.sroa.01.0.copyload.i85 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.gy = sub nsw i64 %i.gw, %.sroa.01.0.copyload.i85
  %.neg.i86 = sdiv i64 %i.gy, -1000000000
  %i.gz = add i64 %.neg.i86, %i.gx                ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  %..i87 = select i1 %i.ha, i64 -1, i64 %i.gz
  br label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89: ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %bb.n
  %.1.i88 = phi i64 [ %..i87, %bb.n ], [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5688) %1, i32 noundef %i.gu, i64 noundef %.1.i88)
  %i.hb = load ptr, ptr %i.l, align 8, !tbaa !1030
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !506
  store ptr %i.by, ptr %9, align 8, !tbaa !8
  store i32 845374502, ptr %i.by, align 8
  store i64 4, ptr %i.bz, align 8, !tbaa !12
  store i8 0, ptr %i.cc, align 4, !tbaa !15
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE7CallAbcEPS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef %i.hd, ptr noundef nonnull align 8 %9)
  %i.he = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.by
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89
  %i.hg = load i64, ptr %i.by, align 8, !tbaa !15
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %i.hi = load ptr, ptr %i.l, align 8, !tbaa !1030
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.hk, ptr %i.h, align 8, !tbaa !138
  %i.hl = load ptr, ptr %i.bt, align 8, !tbaa !21
  %.not.i.i95 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i95, label %bb.o, label %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hm = load ptr, ptr %i.bv, align 8, !tbaa !498
  %i.hn = call noundef double %i.hm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.h) #26, !inline_history !499 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ho = load ptr, ptr %i.l, align 8, !tbaa !1030 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  store ptr %i.ca, ptr %10, align 8, !tbaa !8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !26 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 %i.hs, ptr %i.g, align 8, !tbaa !184
  %i.ht = icmp ugt i64 %i.hs, 15
  br i1 %i.ht, label %bb.p, label %._crit_edge.i.i97

bb.p:                                             ; preds = %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96
  %i.hu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) #26 ; 2 uses
  store ptr %i.hu, ptr %10, align 8, !tbaa !26
  %i.hv = load i64, ptr %i.g, align 8, !tbaa !184
  store i64 %i.hv, ptr %i.ca, align 8, !tbaa !15
  br label %._crit_edge.i.i97

._crit_edge.i.i97:                                ; preds = %bb.p, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96
  %i.hw = phi ptr [ %i.hu, %bb.p ], [ %i.ca, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96 ] ; 2 uses
  switch i64 %i.hs, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98
  ]

bb.q:                                             ; preds = %._crit_edge.i.i97
  %i.hx = load i8, ptr %i.hq, align 1, !tbaa !15
  store i8 %i.hx, ptr %i.hw, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98

bb.r:                                             ; preds = %._crit_edge.i.i97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hw, ptr align 1 %i.hq, i64 %i.hs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98: ; preds = %._crit_edge.i.i97, %bb.q, %bb.r
  %i.hy = load i64, ptr %i.g, align 8, !tbaa !184 ; 2 uses
  store i64 %i.hy, ptr %i.cb, align 8, !tbaa !12
  %i.hz = load ptr, ptr %10, align 8, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hy
  store i8 0, ptr %i.ia, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE5PrintIJPKciSB_SB_SB_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef 1, ptr noundef nonnull align 8 %10, ptr noundef nonnull @.str.22, i32 noundef %.060, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, double noundef %i.hn)
  %i.ib = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.ca
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98
  %i.id = load i64, ptr %i.ca, align 8, !tbaa !15
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  %i.if = fcmp olt double %i.hn, %.2
  %i.ig = add nuw nsw i32 %.060, 1
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, !llvm.loop !1111

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.ih = phi i64 [ %i.dx, %bb.m ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ]
  %i.ii = fcmp olt double %.2, %.052291
  br i1 %i.ii, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread
  %i.ij = load ptr, ptr %i.l, align 8, !tbaa !1030
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !506
  %i.im = call noundef nonnull align 8 dereferenceable(264) ptr @_ZN3rrr10AndNetworkaSERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef nonnull align 8 dereferenceable(264) %i.il) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, %bb.s
  %.163 = phi i32 [ 0, %bb.s ], [ %.062290, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread ] ; 2 uses
  %.153 = phi double [ %.2, %bb.s ], [ %.052291, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread ]
  %i.in = add nsw i32 %.163, 1
  %i.io = icmp slt i32 %.163, 9
  br i1 %i.io, label %bb.g, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread, !llvm.loop !1112

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread: ; preds = %bb.h, %bb.t
  %i.ip = load ptr, ptr %i.l, align 8, !tbaa !1030
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !506
  %i.is = call noundef nonnull align 8 dereferenceable(264) ptr @_ZN3rrr10AndNetworkaSERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %i.ir, ptr noundef nonnull align 8 dereferenceable(264) %6) ; 0 uses
  call void @_ZN3rrr10AndNetworkD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.bp

bb.u:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.it = load ptr, ptr %i.l, align 8, !tbaa !1030 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !1108
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  store i64 %i.iw, ptr %11, align 8, !tbaa !184
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %store_forwarded536 = phi i64 [ %i.iw, %bb.u ], [ %i.jj, %bb.w ] ; 2 uses
  %.011.i.i102 = phi i64 [ 1, %bb.u ], [ %i.jk, %bb.w ] ; 4 uses
  %i.ix = getelementptr [8 x i8], ptr %11, i64 %.011.i.i102
  %i.iy = lshr i64 %store_forwarded536, 30
  %i.iz = xor i64 %i.iy, %store_forwarded536
  %i.ja = mul nuw nsw i64 %i.iz, 1812433253
  %i.jb = add nuw i64 %i.ja, %.011.i.i102         ; 2 uses
  %i.jc = and i64 %i.jb, 4294967295               ; 2 uses
  store i64 %i.jc, ptr %i.ix, align 8, !tbaa !184
  %i.jd = add nuw nsw i64 %.011.i.i102, 1         ; 3 uses
  %exitcond.not.i.i103 = icmp eq i64 %i.jd, 624
  br i1 %exitcond.not.i.i103, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.je = getelementptr [8 x i8], ptr %11, i64 %i.jd
  %i.jf = lshr i64 %i.jc, 30
  %i.jg = xor i64 %i.jf, %i.jb
  %i.jh = mul i64 %i.jg, 1812433253
  %i.ji = add i64 %i.jh, %i.jd
  %i.jj = and i64 %i.ji, 4294967295               ; 2 uses
  store i64 %i.jj, ptr %i.je, align 8, !tbaa !184
  %i.jk = add nuw nsw i64 %.011.i.i102, 2
  br label %bb.v

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104: ; preds = %bb.v
  %i.jl = getelementptr inbounds nuw i8, ptr %11, i64 4992
  store i64 624, ptr %i.jl, align 8, !tbaa !1071
  %i.jm = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !519
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.jo = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !506
  call void @_ZN3rrr10AndNetworkC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %12, ptr noundef nonnull align 8 dereferenceable(264) %i.jp) #26
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.kz = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.la = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.lb = getelementptr inbounds nuw i8, ptr %26, i64 22
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %.055289 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %i.vi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 3 uses
  %.056288 = phi double [ %i.jn, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %.157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 2 uses
  %.058287 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %.159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 4 uses
  %i.lc = load i64, ptr %i.jq, align 8, !tbaa !445
  %i.ld = icmp eq i64 %i.lc, 0
  br i1 %i.ld, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.le = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.lf = load i64, ptr %i.jq, align 8, !tbaa !445
  %.sroa.01.0.copyload.i105 = load i64, ptr %i.jr, align 8, !tbaa !184
  %i.lg = sub nsw i64 %i.le, %.sroa.01.0.copyload.i105
  %.neg.i106 = sdiv i64 %i.lg, -1000000000
  %i.lh = add i64 %.neg.i106, %i.lf
  %or.cond282 = icmp slt i64 %i.lh, 1
  br i1 %or.cond282, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275: ; preds = %bb.y, %bb.x
  %i.li = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %11)
  %i.lj = trunc i64 %i.li to i32                  ; 3 uses
  %i.lk = and i32 %i.lj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %i.js, ptr %13, align 8, !tbaa !8
  store i64 0, ptr %i.jt, align 8, !tbaa !12
  store i8 0, ptr %i.js, align 8, !tbaa !15
  %i.ll = and i32 %i.lj, 2
  %.not = icmp eq i32 %i.ll, 0
  br i1 %.not, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store ptr %i.ju, ptr %16, align 8, !tbaa !8
  store i64 2322578080581165115, ptr %i.ju, align 8
  store i64 8, ptr %i.jv, align 8, !tbaa !12
  store i8 0, ptr %i.ky, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %i.lm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.24, i64 noundef 273) #26, !noalias !1113 ; 6 uses
  store ptr %i.jw, ptr %15, align 8, !tbaa !8, !alias.scope !1113
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !26 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 16 ; 5 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !12 ; 3 uses
  %i.ls = icmp ult i64 %i.lr, 16
  call void @llvm.assume(i1 %i.ls)
  %i.lt = add nuw nsw i64 %i.lr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jw, ptr noundef nonnull align 8 dereferenceable(1) %i.lo, i64 %i.lt, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ln, ptr %15, align 8, !tbaa !26, !alias.scope !1113
  %i.lu = load i64, ptr %i.lo, align 8, !tbaa !15
  store i64 %i.lu, ptr %i.jw, align 8, !tbaa !15, !alias.scope !1113
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !12
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %i.lv = phi i64 [ %i.lr, %bb.z ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store i64 %i.lv, ptr %i.jx, align 8, !tbaa !12, !alias.scope !1113
  store ptr %i.lo, ptr %i.lm, align 8, !tbaa !26
  store i64 0, ptr %i.lw, align 8, !tbaa !12
  store i8 0, ptr %i.lo, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  %i.lx = load i64, ptr %i.jx, align 8, !tbaa !12, !noalias !1116
  %i.ly = add i64 %i.lx, -4611686018427387898
  %i.lz = icmp ult i64 %i.ly, 6
  br i1 %i.lz, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113

bb.aa:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.148) #27, !noalias !1116
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.ma = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.26, i64 noundef 6) #26, !noalias !1116 ; 6 uses
  store ptr %i.jy, ptr %14, align 8, !tbaa !8, !alias.scope !1116
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !26 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 5 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !12 ; 3 uses
  %i.mg = icmp ult i64 %i.mf, 16
  call void @llvm.assume(i1 %i.mg)
  %i.mh = add nuw nsw i64 %i.mf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jy, ptr noundef nonnull align 8 dereferenceable(1) %i.mc, i64 %i.mh, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113
  store ptr %i.mb, ptr %14, align 8, !tbaa !26, !alias.scope !1116
  %i.mi = load i64, ptr %i.mc, align 8, !tbaa !15
  store i64 %i.mi, ptr %i.jy, align 8, !tbaa !15, !alias.scope !1116
  %.phi.trans.insert.i115 = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %.pre.i116 = load i64, ptr %.phi.trans.insert.i115, align 8, !tbaa !12
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  %i.mj = phi i64 [ %i.mf, %bb.ab ], [ %.pre.i116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i64 %i.mj, ptr %i.jz, align 8, !tbaa !12, !alias.scope !1116
  store ptr %i.mc, ptr %i.ma, align 8, !tbaa !26
  store i64 0, ptr %i.mk, align 8, !tbaa !12
  store i8 0, ptr %i.mc, align 8, !tbaa !15
  %i.ml = load ptr, ptr %13, align 8, !tbaa !26   ; 6 uses
  %i.mm = icmp eq ptr %i.ml, %i.js
  %i.mn = load ptr, ptr %14, align 8, !tbaa !26   ; 5 uses
  %i.mo = icmp eq ptr %i.mn, %i.jy                ; 2 uses
  br i1 %i.mm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117
  br i1 %i.mo, label %bb.ac, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117
  br i1 %i.mo, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.mp = load i64, ptr %i.jz, align 8, !tbaa !12 ; 3 uses
  %i.mq = icmp ult i64 %i.mp, 16
  call void @llvm.assume(i1 %i.mq)
  switch i64 %i.mp, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
end_hunk_2
begin_hunk_3_@_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEED2Ev:bb.a
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3

_ZNSt6vectorIiSaIiEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN3rrr11BddAnalyzerINS_10AndNetworkEED2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %i.al) #26
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit3
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ap = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit3, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %.not.i4 = icmp eq ptr %i.ar, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = tail call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit5

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::function.68", align 8  ; 9 uses
  %4 = alloca %"class.std::function.68", align 8  ; 9 uses
  store ptr %1, ptr %0, align 8, !tbaa !1040
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5544
  store i32 -1, ptr %i.a, align 8, !tbaa !1072
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.d, align 8
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  store i64 ptrtoint (ptr @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE14ActionCallbackERKNS_6ActionE to i64), ptr %i.e, align 8, !tbaa !1168
  %.repack5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.repack5.i.i.i.i, align 8, !tbaa !1168
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = ptrtoint ptr %0 to i64
  store i64 %i.g, ptr %i.f, align 8, !tbaa !1173
  store ptr %i.e, ptr %4, align 8, !tbaa !1174
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_11BddAnalyzerIS7_EEEEFvS3_EPSA_St12_PlaceholderILi1EEEEE9_M_invokeERKSt9_Any_dataS3_, ptr %i.c, align 8, !tbaa !150
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_11BddAnalyzerIS7_EEEEFvS3_EPSA_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, ptr %i.b, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !202
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit, label %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread

_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store ptr %i.o, ptr %i.i, align 8, !tbaa !1174
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_11BddAnalyzerIS7_EEEEFvS3_EPSA_St12_PlaceholderILi1EEEEE9_M_invokeERKSt9_Any_dataS3_, ptr %i.m, align 8, !tbaa !150
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_11BddAnalyzerIS7_EEEEFvS3_EPSA_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, ptr %i.n, align 8, !tbaa !21
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.q, ptr %i.h, align 8, !tbaa !125
  br label %bb.b

_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @_ZNSt6vectorISt8functionIFvRKN3rrr6ActionEEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit
  %i.s = phi ptr [ @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_11BddAnalyzerIS7_EEEEFvS3_EPSA_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread ], [ %.pre, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit ]
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !1040   ; 4 uses
  call void @_ZN3rrr11BddAnalyzerINS_10AndNetworkEE5ResetEb(ptr noundef nonnull align 8 dereferenceable(304) %i.u, i1 noundef zeroext %2)
  store ptr %i.v, ptr %i.u, align 8, !tbaa !1176
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.y, align 8
  %i.z = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  store i64 ptrtoint (ptr @_ZN3rrr11BddAnalyzerINS_10AndNetworkEE14ActionCallbackERKNS_6ActionE to i64), ptr %i.z, align 8, !tbaa !1177
  %.repack5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 0, ptr %.repack5.i.i.i.i.i, align 8, !tbaa !1177
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = ptrtoint ptr %i.u to i64
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !1182
  store ptr %i.z, ptr %3, align 8, !tbaa !1183
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_11BddAnalyzerINS0_10AndNetworkEEEFvS3_EPS8_St12_PlaceholderILi1EEEEE9_M_invokeERKSt9_Any_dataS3_, ptr %i.x, align 8, !tbaa !150
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_11BddAnalyzerINS0_10AndNetworkEEEFvS3_EPS8_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.w, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 224 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !125 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 232
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !202
  %.not.i.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i.i.i, label %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.i, label %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread.i

_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !1183
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_11BddAnalyzerINS0_10AndNetworkEEEFvS3_EPS8_St12_PlaceholderILi1EEEEE9_M_invokeERKSt9_Any_dataS3_, ptr %i.ah, align 8, !tbaa !150
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_11BddAnalyzerINS0_10AndNetworkEEEFvS3_EPS8_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.ai, align 8, !tbaa !21
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !125
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !125
  br label %bb.c

_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  call void @_ZNSt6vectorISt8functionIFvRKN3rrr6ActionEEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !21 ; 2 uses
  %.not.i.i2 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i2, label %_ZN3rrr11BddAnalyzerINS_10AndNetworkEE13AssignNetworkEPS1_b.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.i, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread.i
  %i.an = phi ptr [ @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_11BddAnalyzerINS0_10AndNetworkEEEFvS3_EPS8_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread.i ], [ %.pre.i, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.i ]
  %i.ao = call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #26, !inline_history !1185 ; 0 uses
  br label %_ZN3rrr11BddAnalyzerINS_10AndNetworkEE13AssignNetworkEPS1_b.exit

_ZN3rrr11BddAnalyzerINS_10AndNetworkEE13AssignNetworkEPS1_b.exit: ; preds = %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5688) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::function.35", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %6 = alloca %"class.std::function.35", align 8  ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %9 = alloca %"class.std::function.35", align 8  ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %12 = alloca %"class.std::function.35", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %15 = alloca %"class.std::vector", align 8      ; 8 uses
  %16 = alloca %"class.std::vector", align 8      ; 10 uses
  %17 = alloca %"struct.rrr::Optimizer<rrr::AndNetwork, rrr::BddAnalyzer<rrr::AndNetwork>>::Stats", align 16 ; 8 uses
  %18 = alloca %"struct.rrr::Optimizer<rrr::AndNetwork, rrr::BddAnalyzer<rrr::AndNetwork>>::Stats", align 16 ; 8 uses
  %19 = alloca %"class.std::function.315", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %24 = alloca %"class.std::function.2", align 8  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.f = zext i32 %1 to i64                       ; 2 uses
  store i64 %i.f, ptr %i.e, align 8, !tbaa !184
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ %i.f, %bb.a ], [ %i.s, %bb.c ] ; 2 uses
  %.011.i = phi i64 [ 1, %bb.a ], [ %i.t, %bb.c ] ; 4 uses
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %.011.i
  %i.h = lshr i64 %store_forwarded, 30
  %i.i = xor i64 %i.h, %store_forwarded
  %i.j = mul nuw nsw i64 %i.i, 1812433253
  %i.k = add nuw i64 %i.j, %.011.i                ; 2 uses
  %i.l = and i64 %i.k, 4294967295                 ; 2 uses
  store i64 %i.l, ptr %i.g, align 8, !tbaa !184
  %i.m = add nuw nsw i64 %.011.i, 1               ; 3 uses
  %exitcond.not.i = icmp eq i64 %i.m, 624
  br i1 %exitcond.not.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr [8 x i8], ptr %i.e, i64 %i.m
  %i.o = lshr i64 %i.l, 30
  %i.p = xor i64 %i.o, %i.k
  %i.q = mul i64 %i.p, 1812433253
  %i.r = add i64 %i.q, %i.m
  %i.s = and i64 %i.r, 4294967295                 ; 2 uses
  store i64 %i.s, ptr %i.n, align 8, !tbaa !184
  %i.t = add nuw nsw i64 %.011.i, 2
  br label %bb.b

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm.exit: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5408
  store i64 624, ptr %i.u, align 8, !tbaa !1071
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5496
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5504 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %.not.i.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm.exit
  store ptr %i.w, ptr %i.x, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm.exit, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5520
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1166 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5528 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1186
  %.not.i.i10 = icmp eq ptr %i.ac, %i.aa
  br i1 %.not.i.i10, label %_ZNSt6vectorIdSaIdEE5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !1186
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1063
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %i.ag = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.e)
  %i.ah = urem i64 %i.ag, 18
  %i.ai = trunc nuw nsw i64 %i.ah to i32          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !1187
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE5PrintIJPKciEEEviDpT_(ptr noundef nonnull align 8 dereferenceable(5688) %0, i32 noundef 0, ptr noundef nonnull @.str.102, i32 noundef %i.ai)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.ak, align 8, !tbaa !1188
  %i.al = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 5488
  store i64 %i.al, ptr %i.am, align 8, !tbaa !184
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1189
  switch i32 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 [
    i32 0, label %bb.h
    i32 1, label %bb.j
    i32 2, label %bb.l
    i32 3, label %bb.t
    i32 4, label %bb.ad
  ]

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call noundef zeroext i1 @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE16RemoveRedundancyEv(ptr noundef nonnull align 8 dereferenceable(5688) %0) ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5640 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.at, align 8
  %i.au = ptrtoint ptr %0 to i64
  store i64 %i.au, ptr %3, align 8, !tbaa !1173
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr9OptimizerINS1_10AndNetworkENS1_11BddAnalyzerIS3_EEE3RunEilEUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.as, align 8, !tbaa !85
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr9OptimizerINS1_10AndNetworkENS1_11BddAnalyzerIS3_EEE3RunEilEUliE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.ar, align 8, !tbaa !21
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE25ApplyReverseTopologicallyERKSt8functionIFviEE(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5592
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ay, ptr %4, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ay, ptr noundef nonnull align 1 dereferenceable(6) @.str.103, i64 6, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 6, ptr %i.az, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.ba, align 2, !tbaa !15
  %i.bb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3rrr9OptimizerINS6_10AndNetworkENS6_11BddAnalyzerIS8_EEE5StatsESt4lessIS5_ESaISt4pairIKS5_SC_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 4 uses
  %i.bc = load <4 x i32>, ptr %i.aq, align 8, !tbaa !32
  %i.bd = load <4 x i32>, ptr %i.bb, align 8, !tbaa !32
  %i.be = add nsw <4 x i32> %i.bd, %i.bc
  store <4 x i32> %i.be, ptr %i.bb, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 5656
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bh = load <4 x i32>, ptr %i.bf, align 8, !tbaa !32
  %i.bi = load <4 x i32>, ptr %i.bg, align 8, !tbaa !32
  %i.bj = add nsw <4 x i32> %i.bi, %i.bh
  store <4 x i32> %i.bj, ptr %i.bg, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bm = load <2 x double>, ptr %i.bk, align 8, !tbaa !537
  %i.bn = load <2 x double>, ptr %i.bl, align 8, !tbaa !537
  %i.bo = fadd <2 x double> %i.bm, %i.bn
  store <2 x double> %i.bo, ptr %i.bl, align 8, !tbaa !537
  %i.bp = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ay
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.br = load i64, ptr %i.ay, align 8, !tbaa !15
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZNK3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE5Stats9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.aq)
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE5PrintIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEviDpT_(ptr noundef nonnull align 8 dereferenceable(5688) %0, i32 noundef 0, ptr noundef nonnull align 8 %5)
  %i.bt = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !15
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.j:                                             ; preds = %bb.g
  %i.by = tail call noundef zeroext i1 @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE16RemoveRedundancyEv(ptr noundef nonnull align 8 dereferenceable(5688) %0) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 5640 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cc, align 8
  %i.cd = ptrtoint ptr %0 to i64
  store i64 %i.cd, ptr %6, align 8, !tbaa !1173
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr9OptimizerINS1_10AndNetworkENS1_11BddAnalyzerIS3_EEE3RunEilEUliE0_E9_M_invokeERKSt9_Any_dataOi, ptr %i.cb, align 8, !tbaa !85
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr9OptimizerINS1_10AndNetworkENS1_11BddAnalyzerIS3_EEE3RunEilEUliE0_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.ca, align 8, !tbaa !21
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE25ApplyReverseTopologicallyERKSt8functionIFviEE(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !21 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ce, null
  br i1 %.not.i14, label %_ZNSt14_Function_baseD2Ev.exit15, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = call noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit15

_ZNSt14_Function_baseD2Ev.exit15:                 ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 5592
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ch, ptr %7, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ch, ptr noundef nonnull align 1 dereferenceable(5) @.str.104, i64 5, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 5, ptr %i.ci, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 0, ptr %i.cj, align 1, !tbaa !15
  %i.ck = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3rrr9OptimizerINS6_10AndNetworkENS6_11BddAnalyzerIS8_EEE5StatsESt4lessIS5_ESaISt4pairIKS5_SC_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %7) ; 4 uses
  %i.cl = load <4 x i32>, ptr %i.bz, align 8, !tbaa !32
  %i.cm = load <4 x i32>, ptr %i.ck, align 8, !tbaa !32
  %i.cn = add nsw <4 x i32> %i.cm, %i.cl
  store <4 x i32> %i.cn, ptr %i.ck, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 5656
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cq = load <4 x i32>, ptr %i.co, align 8, !tbaa !32
  %i.cr = load <4 x i32>, ptr %i.cp, align 8, !tbaa !32
  %i.cs = add nsw <4 x i32> %i.cr, %i.cq
  store <4 x i32> %i.cs, ptr %i.cp, align 8, !tbaa !32
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  %i.cv = load <2 x double>, ptr %i.ct, align 8, !tbaa !537
  %i.cw = load <2 x double>, ptr %i.cu, align 8, !tbaa !537
  %i.cx = fadd <2 x double> %i.cv, %i.cw
  store <2 x double> %i.cx, ptr %i.cu, align 8, !tbaa !537
  %i.cy = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEEvSE_T_SF_St20forward_iterator_tag:bb.a

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i74
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fn, ptr align 1 %i.fh, i64 %i.fj, i1 false)
  br label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEJRS7_EEvPT_DpOT0_.exit.i.i.i.i75

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEJRS7_EEvPT_DpOT0_.exit.i.i.i.i75: ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i.i.i.i.i74
  %i.fp = load i64, ptr %i.a, align 8, !tbaa !184 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i72, i64 8
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !12
  %i.fr = load ptr, ptr %.09.i.i.i.i72, align 8, !tbaa !26
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fp
  store i8 0, ptr %i.fs, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ft = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i72, i64 32
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i73, i64 32
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !1287
  store double %i.fv, ptr %i.ft, align 8, !tbaa !1287
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i73, i64 40 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i72, i64 40 ; 3 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.fw, %3
  br i1 %.not.i.i.i.i76, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESt6vectorIS9_SaIS9_EEEESA_S9_ET0_T_SG_SF_RSaIT1_E.exit78, label %.lr.ph.i.i.i.i71, !llvm.loop !2068

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESt6vectorIS9_SaIS9_EEEESA_S9_ET0_T_SG_SF_RSaIT1_E.exit78: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEJRS7_EEvPT_DpOT0_.exit.i.i.i.i75
  %.not7.i.i.i.i.i79 = icmp eq ptr %1, %i.j
  br i1 %.not7.i.i.i.i.i79, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES8_SaIS7_EET0_T_SB_SA_RT1_.exit87, label %.lr.ph.i.i.i.i.i80

.lr.ph.i.i.i.i.i80:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESt6vectorIS9_SaIS9_EEEESA_S9_ET0_T_SG_SF_RSaIT1_E.exit78, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i84
  %.09.i.i.i.i.i81 = phi ptr [ %i.go, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i84 ], [ %i.fx, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESt6vectorIS9_SaIS9_EEEESA_S9_ET0_T_SG_SF_RSaIT1_E.exit78 ] ; 6 uses
  %.sroa.04.08.i.i.i.i.i82 = phi ptr [ %i.gn, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i84 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESt6vectorIS9_SaIS9_EEEESA_S9_ET0_T_SG_SF_RSaIT1_E.exit78 ] ; 7 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i81, i64 16 ; 3 uses
  store ptr %i.fy, ptr %.09.i.i.i.i.i81, align 8, !tbaa !8
  %i.fz = load ptr, ptr %.sroa.04.08.i.i.i.i.i82, align 8, !tbaa !26 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i82, i64 16 ; 5 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i83

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i80
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i82, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !12 ; 2 uses
  %i.ge = icmp ult i64 %i.gd, 16
  call void @llvm.assume(i1 %i.ge)
  %i.gf = add nuw nsw i64 %i.gd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fy, ptr noundef nonnull align 8 dereferenceable(1) %i.ga, i64 %i.gf, i1 false)
  br label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i83: ; preds = %.lr.ph.i.i.i.i.i80
  store ptr %i.fz, ptr %.09.i.i.i.i.i81, align 8, !tbaa !26
  %i.gg = load i64, ptr %i.ga, align 8, !tbaa !15
  store i64 %i.gg, ptr %i.fy, align 8, !tbaa !15
  br label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i84

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i84: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i83, %bb.w
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i82, i64 8 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !12
  %i.gj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i81, i64 8
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !12
  store ptr %i.ga, ptr %.sroa.04.08.i.i.i.i.i82, align 8, !tbaa !26
  store i64 0, ptr %i.gh, align 8, !tbaa !12
  store i8 0, ptr %i.ga, align 8, !tbaa !15
  %i.gk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i81, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i82, i64 32
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !1287
  store double %i.gm, ptr %i.gk, align 8, !tbaa !1287
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i82, i64 40 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i81, i64 40 ; 2 uses
  %.not.i.i.i.i.i85 = icmp eq ptr %i.gn, %i.j
  br i1 %.not.i.i.i.i.i85, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES8_SaIS7_EET0_T_SB_SA_RT1_.exit87, label %.lr.ph.i.i.i.i.i80, !llvm.loop !2065

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES8_SaIS7_EET0_T_SB_SA_RT1_.exit87: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i84, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESt6vectorIS9_SaIS9_EEEESA_S9_ET0_T_SG_SF_RSaIT1_E.exit78
  %.0.lcssa.i.i.i.i.i86 = phi ptr [ %i.fx, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESt6vectorIS9_SaIS9_EEEESA_S9_ET0_T_SG_SF_RSaIT1_E.exit78 ], [ %i.go, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEJS7_EEvPT_DpOT0_.exit.i.i.i.i.i84 ]
  %.not4.i.i = icmp eq ptr %i.ec, %i.j
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvT_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES8_SaIS7_EET0_T_SB_SA_RT1_.exit87, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.gu, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i ], [ %i.ec, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES8_SaIS7_EET0_T_SB_SA_RT1_.exit87 ] ; 3 uses
  %i.gp = load ptr, ptr %.05.i.i, align 8, !tbaa !26 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !15
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #28
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gu, %i.j
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvT_S9_.exit, label %.lr.ph.i.i, !llvm.loop !1152

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvT_S9_.exit: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES8_SaIS7_EET0_T_SB_SA_RT1_.exit87
  %.not.i88 = icmp eq ptr %i.ec, null
  br i1 %.not.i88, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvT_S9_.exit
  %i.gv = load ptr, ptr %i.g, align 8, !tbaa !1150
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.gx) #28
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvT_S9_.exit, %bb.x
  store ptr %i.eo, ptr %0, align 8, !tbaa !1148
  store ptr %.0.lcssa.i.i.i.i.i86, ptr %i.i, align 8, !tbaa !1149
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %i.eo, i64 %i.el
  store ptr %i.gy, ptr %i.g, align 8, !tbaa !1150
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i45, %_ZSt22__uninitialized_move_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES8_SaIS7_EET0_T_SB_SA_RT1_.exit54, %_ZSt13move_backwardIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES8_ET0_T_SA_S9_.exit, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N3rrr9OptimizerINS8_10AndNetworkENS8_11BddAnalyzerISA_EEE5StatsEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N3rrr9OptimizerINS8_10AndNetworkENS8_11BddAnalyzerISA_EEE5StatsEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N3rrr9OptimizerINS8_10AndNetworkENS8_11BddAnalyzerISA_EEE5StatsEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N3rrr9OptimizerINS8_10AndNetworkENS8_11BddAnalyzerISA_EEE5StatsEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N3rrr9OptimizerINS8_10AndNetworkENS8_11BddAnalyzerISA_EEE5StatsEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #28
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N3rrr9OptimizerINS8_10AndNetworkENS8_11BddAnalyzerISA_EEE5StatsEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N3rrr9OptimizerINS8_10AndNetworkENS8_11BddAnalyzerISA_EEE5StatsEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 112) #28
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2069

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N3rrr9OptimizerINS8_10AndNetworkENS8_11BddAnalyzerISA_EEE5StatsEESt10_Select1stISF_ESt4lessIS5_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3rrr11PartitionerINS_10AndNetworkEE7ExtractEi(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !503
  %i.c = load i32, ptr %i.b, align 8, !tbaa !88   ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !181  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !447  ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 3
  %i.n = zext i32 %i.h to i64
  %i.o = add nsw i64 %i.m, %i.n                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.d
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = sdiv i32 %i.c, 64
  %.sext = sext i32 %i.q to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.sext
  %i.s = and i64 %i.d, -9223372036854775745
  %i.t = icmp ugt i64 %i.s, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.t, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.r, i64 %storemerge.idx.i.i.i.i
  %i.u = and i32 %i.c, 63
  store ptr %storemerge.i.i.i.i, ptr %i.e, align 8
  store i32 %i.u, ptr %i.g, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

bb.c:                                             ; preds = %bb.a
  %i.v = sub nuw i64 %i.d, %i.o
  tail call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr %i.f, i32 %i.h, i64 noundef %i.v, i1 noundef zeroext false)
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.w = zext i32 %1 to i64                       ; 2 uses
  store i64 %i.w, ptr %2, align 8, !tbaa !184
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %store_forwarded = phi i64 [ %i.w, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit ], [ %i.aj, %bb.e ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit ], [ %i.ak, %bb.e ] ; 4 uses
  %i.x = getelementptr [8 x i8], ptr %2, i64 %.011.i.i
  %i.y = lshr i64 %store_forwarded, 30
  %i.z = xor i64 %i.y, %store_forwarded
  %i.aa = mul nuw nsw i64 %i.z, 1812433253
  %i.ab = add nuw i64 %i.aa, %.011.i.i            ; 2 uses
  %i.ac = and i64 %i.ab, 4294967295               ; 2 uses
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !184
  %i.ad = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.ad, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr [8 x i8], ptr %2, i64 %i.ad
  %i.af = lshr i64 %i.ac, 30
  %i.ag = xor i64 %i.af, %i.ab
  %i.ah = mul i64 %i.ag, 1812433253
  %i.ai = add i64 %i.ah, %i.ad
  %i.aj = and i64 %i.ai, 4294967295               ; 2 uses
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !184
  %i.ak = add nuw nsw i64 %.011.i.i, 2
  br label %bb.d

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4992
  store i64 624, ptr %i.al, align 8, !tbaa !1071
  %i.am = load ptr, ptr %0, align 8, !tbaa !503   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42, !noalias !2070 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !90, !noalias !2070 ; 4 uses
  %i.ar = icmp ugt i64 %i.aq, 2305843009213693951
  br i1 %i.ar, label %bb.f, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

bb.f:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27, !noalias !2070
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
  %.not.i7.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i7.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.as = shl nuw nsw i64 %i.aq, 2
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #29, !noalias !2070
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.au = phi ptr [ %i.at, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 7 uses
  %.not6.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.an
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK3rrr10AndNetwork7GetIntsEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.au, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ao, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !32, !noalias !2070
  store i32 %i.aw, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !32, !noalias !2070
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ay = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !42, !noalias !2070 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.an
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK3rrr10AndNetwork7GetIntsEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1454

_ZNK3rrr10AndNetwork7GetIntsEv.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %i.au, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(5000) %2)
  %i.az = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ba = ptrtoint ptr %i.au to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = lshr exact i64 %i.bb, 2                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %.not1952 = icmp sgt i32 %i.bd, 0
  br i1 %.not1952, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK3rrr10AndNetwork7GetIntsEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count = and i64 %i.bc, 2147483647
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !181 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %i.bj = phi ptr [ %.pre, %.lr.ph ], [ %i.eg, %bb.n ] ; 2 uses
  %i.bk = phi ptr [ %.pre, %.lr.ph ], [ %i.eh, %bb.n ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32 ; 6 uses
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = sdiv i32 %i.bm, 64
  %.sext48 = sext i32 %i.bo to i64                ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %.sext48
  %i.bq = and i64 %i.bn, -9223372036854775745
  %i.br = icmp ugt i64 %i.bq, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.br, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bp, i64 %storemerge.idx.i.i.i.i.i
  %i.bs = and i64 %i.bn, 63
  %i.bt = shl nuw i64 1, %i.bs                    ; 2 uses
  %i.bu = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !184
  %i.bv = and i64 %i.bt, %i.bu
  %.not49 = icmp eq i64 %i.bv, 0
  br i1 %.not49, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.bw = load ptr, ptr %i.be, align 8, !tbaa !92 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.bw, %bb.h ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.bf, %bb.h ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !32
  %i.bz = icmp slt i32 %i.by, %i.bm               ; 2 uses
  %.19.i.i.i = select i1 %i.bz, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.bz, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !153

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ca = icmp eq ptr %.19.i.i.i, %i.bf
  br i1 %i.ca, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit:      ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !32
  %.not50 = icmp slt i32 %i.bm, %i.cc
  br i1 %.not50, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %bb.m

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread: ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i, %bb.h, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit
  %i.cd = load i32, ptr %i.bg, align 8, !tbaa !446
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.i, label %_ZN3rrr11PartitionerINS_10AndNetworkEE5PrintIJPKciS5_iS5_iS5_EEEviDpT_.exit

bb.i:                                             ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread
  %i.cf = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.cg = load i64, ptr %i.bi, align 8, !tbaa !12
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.cf, i64 noundef %i.cg) #26 ; 0 uses
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.179, i64 noundef 26) #26 ; 0 uses
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  %i.ck = load ptr, ptr @_ZSt4cout, align 8, !tbaa !204
  %i.cl = getelementptr i8, ptr %i.ck, i64 -24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 4, ptr %i.co, align 8, !tbaa !1310
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.bm) #26
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  %i.cr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.128, i64 noundef 1) #26 ; 0 uses
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  %i.ct = load ptr, ptr @_ZSt4cout, align 8, !tbaa !204
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 4, ptr %i.cx, align 8, !tbaa !1310
  %i.cy = trunc nuw nsw i64 %indvars.iv to i32
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.cy) #26
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  %i.db = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.129, i64 noundef 1) #26 ; 0 uses
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  %i.dd = load ptr, ptr @_ZSt4cout, align 8, !tbaa !204
  %i.de = getelementptr i8, ptr %i.dd, i64 -24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 4, ptr %i.dh, align 8, !tbaa !1310
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.bd) #26
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 1) #26 ; 0 uses
  %i.dl = load ptr, ptr @_ZSt4cout, align 8, !tbaa !204
  %i.dm = getelementptr i8, ptr %i.dl, i64 -24
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 240
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !206 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !221
  %.not.i1.i.i.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i1.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 67
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dq) #26
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !204
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef signext i8 %i.dx(ptr noundef nonnull align 8 dereferenceable(570) %i.dq, i8 noundef signext 10) #26, !inline_history !2073
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

end_hunk_4
begin_hunk_5_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE6ThreadEPKNS_9ParameterE:bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %.lcssa) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.lr.ph, %bb.k
  store i8 1, ptr %i.l, align 8, !tbaa !1035
  %i.x = load i8, ptr %i.n, align 8, !tbaa !591, !range !157, !noundef !158
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge5.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %bb.d
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !2211
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !2211 ; 4 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(9) %4) #26
  %i.ac = load i8, ptr %i.n, align 8, !tbaa !591, !range !157, !noundef !158
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.critedge5, label %.lr.ph, !llvm.loop !2212

.critedge:                                        ; preds = %.lr.ph
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !2209
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !2209
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !2213
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %.not.i.i = icmp eq ptr %i.aa, %i.ag
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit

bb.f:                                             ; preds = %.critedge
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !2214
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef 512) #28
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !647
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.ak, ptr %i.t, align 8, !tbaa !585
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !584 ; 3 uses
  store ptr %i.al, ptr %i.s, align 8, !tbaa !586
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  store ptr %i.am, ptr %i.r, align 8, !tbaa !587
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit: ; preds = %bb.e, %bb.f
  %storemerge.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.al, %bb.f ]
  store ptr %storemerge.i.i, ptr %i.p, align 8, !tbaa !588
  %i.an = load i8, ptr %i.l, align 8, !tbaa !1035, !range !157, !noundef !158
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.g:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit
  %i.ap = load ptr, ptr %4, align 8, !tbaa !1032  ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i8, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #26 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt5dequeISB_SaISB_EEE3popEv.exit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !2209
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE6RunJobERS5_PNS8_3JobE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(5720) %2, ptr noundef %i.ar)
  %i.as = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #26 ; 2 uses
  %.not.i.i.i9 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i9, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZSt20__throw_system_errori(i32 noundef %i.as) #27
  unreachable

.critedge5:                                       ; preds = %bb.d
  %.pre = load i8, ptr %i.l, align 8, !tbaa !1035, !range !157
  %i.at = trunc nuw i8 %.pre to i1
  br i1 %i.at, label %.critedge5.thread, label %bb.l

.critedge5.thread:                                ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.critedge5
  %i.au = load ptr, ptr %4, align 8, !tbaa !1032  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i.i13, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge5.thread
  %i.av = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #26 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE4pushERKSB_(ptr noundef nonnull align 8 dereferenceable(25) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.w) #26
  %i.aw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !2209
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.k, ptr %4, align 8, !tbaa !1032
  store i8 0, ptr %i.l, align 8, !tbaa !1035
  %i.ax = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %._crit_edge

bb.l:                                             ; preds = %bb.j, %.critedge5.thread, %.critedge5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(5720) dereferenceable(5720) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEEC2EPKNS_9ParameterESt8functionIFdPS1_EE(ptr noundef nonnull align 8 dereferenceable(5720) %0, ptr noundef %1, ptr noundef align 8 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !2215
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !241
  store i32 %i.c, ptr %i.a, align 8, !tbaa !2227
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2) #26, !inline_history !496 ; 0 uses
  %i.i = load <2 x ptr>, ptr %i.e, align 8, !tbaa !139
  store <2 x ptr> %i.i, ptr %i.g, align 8, !tbaa !139
  br label %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit

_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load <2 x i32>, ptr %i.k, align 4, !tbaa !32
  %i.n = load i32, ptr %i.k, align 4, !tbaa !248
  store i32 %i.n, ptr %i.j, align 8, !tbaa !2228
  store <2 x i32> %i.m, ptr %i.l, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !252
  store i32 %i.q, ptr %i.o, align 4, !tbaa !2229
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = load i8, ptr %i.s, align 4, !tbaa !245, !range !157, !noundef !158
  store i8 %i.t, ptr %i.r, align 8, !tbaa !2230
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.w = load i8, ptr %i.v, align 1, !tbaa !260, !range !157, !noundef !158
  store i8 %i.w, ptr %i.u, align 1, !tbaa !2231
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 40, i1 false)
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !242
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !2232
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i8 0, ptr %i.ab, align 4, !tbaa !2233
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.ad, align 8, !tbaa !181
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.ae, align 8, !tbaa !447
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.af, align 8, !tbaa !181
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 0, ptr %i.ag, align 8, !tbaa !447
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr null, ptr %i.ai, align 8, !tbaa !181
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 0, ptr %i.aj, align 8, !tbaa !447
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr null, ptr %i.al, align 8, !tbaa !181
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.am, align 8, !tbaa !447
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.ao, align 8, !tbaa !181
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 0, ptr %i.ap, align 8, !tbaa !447
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.ac, i8 0, i64 81, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ah, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ak, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.an, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i8 0, i64 80, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  store i64 5489, ptr %i.ar, align 8, !tbaa !184
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit
  %store_forwarded = phi i64 [ 5489, %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit ], [ %i.be, %bb.d ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit ], [ %i.bf, %bb.d ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %.011.i.i.i
  %i.at = lshr i64 %store_forwarded, 30
  %i.au = xor i64 %i.at, %store_forwarded
  %i.av = mul nuw nsw i64 %i.au, 1812433253
  %i.aw = add nuw i64 %i.av, %.011.i.i.i          ; 2 uses
  %i.ax = and i64 %i.aw, 4294967295               ; 2 uses
  store i64 %i.ax, ptr %i.as, align 8, !tbaa !184
  %i.ay = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr [8 x i8], ptr %i.ar, i64 %i.ay
  %i.ba = lshr i64 %i.ax, 30
  %i.bb = xor i64 %i.ba, %i.aw
  %i.bc = mul i64 %i.bb, 1812433253
  %i.bd = add i64 %i.bc, %i.ay
  %i.be = and i64 %i.bd, 4294967295               ; 2 uses
  store i64 %i.be, ptr %i.az, align 8, !tbaa !184
  %i.bf = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.c

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Ev.exit: ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 5440
  store i64 624, ptr %i.bg, align 8, !tbaa !1071
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 5448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 5480 ; 3 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !91
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5488
  store ptr null, ptr %i.bj, align 8, !tbaa !92
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5496
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !93
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5504
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !94
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, i8 0, i64 64, i1 false)
  store i32 -1, ptr %i.bn, align 8, !tbaa !2234
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 5584
  store ptr null, ptr %i.bo, align 8, !tbaa !181
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 5592
  store i32 0, ptr %i.bp, align 8, !tbaa !447
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 5600
  store ptr null, ptr %i.bq, align 8, !tbaa !181
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 0, ptr %i.br, align 8, !tbaa !447
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5616
  store ptr null, ptr %i.bs, align 8, !tbaa !448
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 5632 ; 3 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5640
  store ptr null, ptr %i.bu, align 8, !tbaa !92
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 5648
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !93
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 5656
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !94
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 5664
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_15BddMspfAnalyzerIS1_EEEENS0_11PartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::function.35", align 8  ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !138    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !30
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !176
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.f, align 8, !tbaa !85
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.sroa.04.07.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !42 ; 3 uses
  %.not8.i.i.i.i = icmp eq ptr %.sroa.04.07.i.i.i.i, %i.g
  br i1 %.not8.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.i, ptr %i.a, align 4, !tbaa !32
  br label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.k, ptr %i.a, align 4, !tbaa !32
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit.i.i.i.i:           ; preds = %thread-pre-split.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.sroa.04.09.i4.i.i.i = phi ptr [ %.sroa.04.07.i.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %.sroa.04.0.i.i.i.i, %thread-pre-split.i.i.i ]
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !85
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !2235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.i.i.i.i = load ptr, ptr %.sroa.04.09.i4.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.04.0.i.i.i.i, %i.g
  %.pr2.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !21 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, label %thread-pre-split.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i: ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %.not.i1.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i1.i.i.i, label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %bb.a
  %i.m = phi ptr [ %.pr2.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i ], [ @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, %bb.a ]
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !2236 ; 0 uses
  br label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit

_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.o = load i32, ptr %i.c, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = sitofp i32 %i.o to double
  ret double %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_15BddMspfAnalyzerIS1_EEEENS0_11PartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEEC1EPS1_PKNS_9ParameterEEUlS9_E_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !139
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E9_M_invokeERKSt9_Any_dataOi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2237, !nonnull !158, !align !301
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = sext i32 %i.a to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.j = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32
  %i.o = load ptr, ptr %0, align 8, !tbaa !2239, !nonnull !158, !align !321 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %i.q = add i32 %i.p, -1
  %i.r = add i32 %i.q, %i.n
  store i32 %i.r, ptr %i.o, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEEC1EPS1_PKNS_9ParameterEENKUlS9_E_clES9_EUliE_, ptr %0, align 8, !tbaa !302
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !139
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1078
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}
end_hunk_5
begin_hunk_6_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJSt5_BindIFMN3rrr9SchedulerINS5_10AndNetworkENS5_9OptimizerIS7_NS5_15BddMspfAnalyzerIS7_EEEENS5_11PartitionerIS7_EEEEFvPKNS5_9ParameterEEPSE_SH_EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bq) #28
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !460
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !461
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !459
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_15BddMspfAnalyzerIS6_EEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_15BddMspfAnalyzerIS6_EEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !625
  %.unpack.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !15 ; 3 uses
  %.elt3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack4.i.i.i.i.i.i.i.i = load i64, ptr %.elt3.i.i.i.i.i.i.i.i, align 8, !tbaa !15
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !204
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !158
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_15BddMspfAnalyzerIS5_EEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_15BddMspfAnalyzerIS5_EEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_15BddMspfAnalyzerIS5_EEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1104
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(840) %i.d, ptr noundef %i.m) #26, !inline_history !2265
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE6RunJobERS5_PNS8_3JobE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(5720) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::function.227", align 8 ; 7 uses
  %i.l = alloca ptr, align 8                      ; 27 uses
  %4 = alloca %"class.std::function.227", align 8 ; 9 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 19 uses
  %6 = alloca %"class.rrr::AndNetwork", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %12 = alloca %"class.rrr::AndNetwork", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::vector.269", align 16 ; 9 uses
  %32 = alloca %"class.std::vector.274", align 16 ; 9 uses
  store ptr %2, ptr %i.l, align 8, !tbaa !2209
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !622
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !577, !range !157, !noundef !158
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5720) %1, ptr noundef %i.o, i1 noundef zeroext %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.l, ptr %4, align 8, !tbaa !584
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !625
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.u, align 8, !tbaa !1106
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.t, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !139
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !139 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.x, align 8, !tbaa !139
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !139
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.y, align 8, !tbaa !139
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread: ; preds = %_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.a

_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit: ; preds = %_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #26, !inline_history !2266 ; 0 uses
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !21  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread, %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  %i.ac = phi ptr [ @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread ], [ %.pre, %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit ]
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !574
  switch i32 %i.af, label %bb.bp [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.u
    i32 3, label %bb.bk
  ]

bb.b:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !2209
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !2267
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !581
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !581
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.01.0.copyload.i = load i64, ptr %i.ao, align 8, !tbaa !184
  %i.ap = sub nsw i64 %i.am, %.sroa.01.0.copyload.i
  %.neg.i = sdiv i64 %i.ap, -1000000000
  %i.aq = add i64 %.neg.i, %i.an                  ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %..i = select i1 %i.ar, i64 -1, i64 %i.aq
  br label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit: ; preds = %bb.b, %bb.c
  %.1.i = phi i64 [ %..i, %bb.c ], [ 0, %bb.b ]
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5720) %1, i32 noundef %i.ai, i64 noundef %.1.i)
  br label %bb.bp

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !2209 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !2267
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  store i64 %i.av, ptr %5, align 8, !tbaa !184
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.av, %bb.d ], [ %i.bi, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.bj, %bb.f ] ; 4 uses
  %i.aw = getelementptr [8 x i8], ptr %5, i64 %.011.i.i
  %i.ax = lshr i64 %store_forwarded, 30
  %i.ay = xor i64 %i.ax, %store_forwarded
  %i.az = mul nuw nsw i64 %i.ay, 1812433253
  %i.ba = add nuw i64 %i.az, %.011.i.i            ; 2 uses
  %i.bb = and i64 %i.ba, 4294967295               ; 2 uses
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !184
  %i.bc = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.bc, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr [8 x i8], ptr %5, i64 %i.bc
  %i.be = lshr i64 %i.bb, 30
  %i.bf = xor i64 %i.be, %i.ba
  %i.bg = mul i64 %i.bf, 1812433253
  %i.bh = add i64 %i.bg, %i.bc
  %i.bi = and i64 %i.bh, 4294967295               ; 2 uses
  store i64 %i.bi, ptr %i.bd, align 8, !tbaa !184
  %i.bj = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4992 ; 2 uses
  store i64 624, ptr %i.bk, align 8, !tbaa !1071
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !624 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !622
  call void @_ZN3rrr10AndNetworkC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef nonnull align 8 dereferenceable(264) %i.bo) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 20
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 1816
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 4984 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 3168
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 1808
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 1816
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 4984
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, %bb.t
  %i.ci = phi i64 [ 624, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.ih, %bb.t ]
  %.0292 = phi double [ %i.bm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %.2, %bb.t ]
  %.052291 = phi double [ %i.bm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %.153, %bb.t ] ; 2 uses
  %.062290 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.in, %bb.t ] ; 3 uses
  %i.cj = load i64, ptr %i.bp, align 8, !tbaa !581
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.cm = load i64, ptr %i.bp, align 8, !tbaa !581
  %.sroa.01.0.copyload.i71 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.cn = sub nsw i64 %i.cl, %.sroa.01.0.copyload.i71
  %.neg.i72 = sdiv i64 %i.cn, -1000000000
  %i.co = add i64 %.neg.i72, %i.cm
  %or.cond = icmp slt i64 %i.co, 1
  br i1 %or.cond, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267: ; preds = %bb.h, %bb.g
  %.not70 = icmp eq i32 %.062290, 0
  br i1 %.not70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !2209
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !622
  store ptr %i.br, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store i64 19, ptr %i.k, align 8, !tbaa !184
  %i.cs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0) #26 ; 2 uses
  store ptr %i.cs, ptr %7, align 8, !tbaa !26
  %i.ct = load i64, ptr %i.k, align 8, !tbaa !184 ; 3 uses
  store i64 %i.ct, ptr %i.br, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.cs, ptr noundef nonnull align 1 dereferenceable(19) @.str.16, i64 19, i1 false)
  store i64 %i.ct, ptr %i.bs, align 8, !tbaa !12
  %i.cu = load ptr, ptr %7, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  store i8 0, ptr %i.cv, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE7CallAbcEPS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef %i.cr, ptr noundef nonnull align 8 %7)
  %i.cw = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.br
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.cy = load i64, ptr %i.br, align 8, !tbaa !15
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !2209
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.dc, ptr %i.j, align 8, !tbaa !138
  %i.dd = load ptr, ptr %i.bt, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i, label %bb.i, label %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.de = load ptr, ptr %i.bv, align 8, !tbaa !498
  %i.df = call noundef double %i.de(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #26, !inline_history !499 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dg = load ptr, ptr %i.l, align 8, !tbaa !2209 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.bw, ptr %8, align 8, !tbaa !8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !26 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store i64 %i.dk, ptr %i.i, align 8, !tbaa !184
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %bb.j, label %._crit_edge.i.i76

bb.j:                                             ; preds = %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit
  %i.dm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) #26 ; 2 uses
  store ptr %i.dm, ptr %8, align 8, !tbaa !26
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !184
  store i64 %i.dn, ptr %i.bw, align 8, !tbaa !15
  br label %._crit_edge.i.i76

._crit_edge.i.i76:                                ; preds = %bb.j, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit
  %i.do = phi ptr [ %i.dm, %bb.j ], [ %i.bw, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit ] ; 2 uses
  switch i64 %i.dk, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i76
  %i.dp = load i8, ptr %i.di, align 1, !tbaa !15
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.l:                                             ; preds = %._crit_edge.i.i76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.di, i64 %i.dk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i76, %bb.k, %bb.l
  %i.dq = load i64, ptr %i.i, align 8, !tbaa !184 ; 2 uses
  store i64 %i.dq, ptr %i.bx, align 8, !tbaa !12
  %i.dr = load ptr, ptr %8, align 8, !tbaa !26
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  store i8 0, ptr %i.ds, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE5PrintIJPKciSB_SB_SB_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef 1, ptr noundef nonnull align 8 %8, ptr noundef nonnull @.str.17, i32 noundef %.062290, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, double noundef %i.df)
  %i.dt = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bw
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.dv = load i64, ptr %i.bw, align 8, !tbaa !15
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267
  %.2.ph = phi double [ %.0292, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267 ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.dx = phi i64 [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 3 uses
  %.060 = phi i32 [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 2 uses
  %.2 = phi double [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.2.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 4 uses
  %i.dy = load i64, ptr %i.bp, align 8, !tbaa !581
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ea = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.eb = load i64, ptr %i.bp, align 8, !tbaa !581 ; 2 uses
  %.sroa.01.0.copyload.i80 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.ec = sub nsw i64 %i.ea, %.sroa.01.0.copyload.i80
  %.neg.i81 = sdiv i64 %i.ec, -1000000000
  %i.ed = add i64 %.neg.i81, %i.eb
  %or.cond281 = icmp slt i64 %i.ed, 1
  br i1 %or.cond281, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ee = phi i64 [ %i.eb, %bb.m ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  %i.ef = icmp ugt i64 %i.dx, 623
  br i1 %i.ef, label %vector.ph526, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph526:                                     ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271
  %.pre.i.i = load i64, ptr %5, align 8, !tbaa !184
  %vector.recur.init529 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body527
end_hunk_6
begin_hunk_7_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE6RunJobERS5_PNS8_3JobE:_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  %i.fn = lshr exact <2 x i64> %i.fm, splat (i64 1)
  %i.fo = xor <2 x i64> %i.fn, %wide.load525
  %i.fp = and <2 x i64> %wide.load, splat (i64 1)
  %i.fq = icmp eq <2 x i64> %i.fp, zeroinitializer
  %i.fr = select <2 x i1> %i.fq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.fs = xor <2 x i64> %i.fo, %i.fr
  store <2 x i64> %i.fs, ptr %i.fg, align 8, !tbaa !184
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ft = icmp eq i64 %index.next, 396
  br i1 %i.ft, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body, !llvm.loop !2269

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body
  %i.fu = load i64, ptr %i.cd, align 8, !tbaa !184
  %i.fv = and i64 %i.fu, -2147483648
  %i.fw = load i64, ptr %5, align 8, !tbaa !184   ; 2 uses
  %i.fx = and i64 %i.fw, 2147483646
  %i.fy = or disjoint i64 %i.fx, %i.fv
  %i.fz = load i64, ptr %i.ce, align 8, !tbaa !184
  %i.ga = lshr exact i64 %i.fy, 1
  %i.gb = xor i64 %i.ga, %i.fz
  %i.gc = and i64 %i.fw, 1
  %.not.i.i408 = icmp eq i64 %i.gc, 0
  %i.gd = select i1 %.not.i.i408, i64 0, i64 2567483615
  %i.ge = xor i64 %i.gb, %i.gd
  store i64 %i.ge, ptr %i.cd, align 8, !tbaa !184
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.gf = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.dx, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271 ] ; 2 uses
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 3 uses
  store i64 %i.gg, ptr %i.bk, align 8, !tbaa !1071
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gf
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !184 ; 2 uses
  %i.gj = lshr i64 %i.gi, 11
  %i.gk = and i64 %i.gj, 4294967295
  %i.gl = xor i64 %i.gk, %i.gi                    ; 2 uses
  %i.gm = shl i64 %i.gl, 7
  %i.gn = and i64 %i.gm, 2636928640
  %i.go = xor i64 %i.gn, %i.gl                    ; 2 uses
  %i.gp = shl i64 %i.go, 15
  %i.gq = and i64 %i.gp, 4022730752
  %i.gr = xor i64 %i.gq, %i.go                    ; 2 uses
  %i.gs = lshr i64 %i.gr, 18
  %i.gt = xor i64 %i.gs, %i.gr
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = icmp eq i64 %i.ee, 0
  br i1 %i.gv, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89, label %bb.n

bb.n:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.gw = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.gx = load i64, ptr %i.bp, align 8, !tbaa !581
  %.sroa.01.0.copyload.i85 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.gy = sub nsw i64 %i.gw, %.sroa.01.0.copyload.i85
  %.neg.i86 = sdiv i64 %i.gy, -1000000000
  %i.gz = add i64 %.neg.i86, %i.gx                ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  %..i87 = select i1 %i.ha, i64 -1, i64 %i.gz
  br label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89: ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %bb.n
  %.1.i88 = phi i64 [ %..i87, %bb.n ], [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5720) %1, i32 noundef %i.gu, i64 noundef %.1.i88)
  %i.hb = load ptr, ptr %i.l, align 8, !tbaa !2209
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !622
  store ptr %i.by, ptr %9, align 8, !tbaa !8
  store i32 845374502, ptr %i.by, align 8
  store i64 4, ptr %i.bz, align 8, !tbaa !12
  store i8 0, ptr %i.cc, align 4, !tbaa !15
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE7CallAbcEPS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef %i.hd, ptr noundef nonnull align 8 %9)
  %i.he = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.by
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89
  %i.hg = load i64, ptr %i.by, align 8, !tbaa !15
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %i.hi = load ptr, ptr %i.l, align 8, !tbaa !2209
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.hk, ptr %i.h, align 8, !tbaa !138
  %i.hl = load ptr, ptr %i.bt, align 8, !tbaa !21
  %.not.i.i95 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i95, label %bb.o, label %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hm = load ptr, ptr %i.bv, align 8, !tbaa !498
  %i.hn = call noundef double %i.hm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.h) #26, !inline_history !499 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ho = load ptr, ptr %i.l, align 8, !tbaa !2209 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  store ptr %i.ca, ptr %10, align 8, !tbaa !8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !26 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 %i.hs, ptr %i.g, align 8, !tbaa !184
  %i.ht = icmp ugt i64 %i.hs, 15
  br i1 %i.ht, label %bb.p, label %._crit_edge.i.i97

bb.p:                                             ; preds = %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96
  %i.hu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) #26 ; 2 uses
  store ptr %i.hu, ptr %10, align 8, !tbaa !26
  %i.hv = load i64, ptr %i.g, align 8, !tbaa !184
  store i64 %i.hv, ptr %i.ca, align 8, !tbaa !15
  br label %._crit_edge.i.i97

._crit_edge.i.i97:                                ; preds = %bb.p, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96
  %i.hw = phi ptr [ %i.hu, %bb.p ], [ %i.ca, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96 ] ; 2 uses
  switch i64 %i.hs, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98
  ]

bb.q:                                             ; preds = %._crit_edge.i.i97
  %i.hx = load i8, ptr %i.hq, align 1, !tbaa !15
  store i8 %i.hx, ptr %i.hw, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98

bb.r:                                             ; preds = %._crit_edge.i.i97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hw, ptr align 1 %i.hq, i64 %i.hs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98: ; preds = %._crit_edge.i.i97, %bb.q, %bb.r
  %i.hy = load i64, ptr %i.g, align 8, !tbaa !184 ; 2 uses
  store i64 %i.hy, ptr %i.cb, align 8, !tbaa !12
  %i.hz = load ptr, ptr %10, align 8, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hy
  store i8 0, ptr %i.ia, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE5PrintIJPKciSB_SB_SB_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef 1, ptr noundef nonnull align 8 %10, ptr noundef nonnull @.str.22, i32 noundef %.060, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, double noundef %i.hn)
  %i.ib = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.ca
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98
  %i.id = load i64, ptr %i.ca, align 8, !tbaa !15
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  %i.if = fcmp olt double %i.hn, %.2
  %i.ig = add nuw nsw i32 %.060, 1
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, !llvm.loop !2270

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.ih = phi i64 [ %i.dx, %bb.m ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ]
  %i.ii = fcmp olt double %.2, %.052291
  br i1 %i.ii, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread
  %i.ij = load ptr, ptr %i.l, align 8, !tbaa !2209
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !622
  %i.im = call noundef nonnull align 8 dereferenceable(264) ptr @_ZN3rrr10AndNetworkaSERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef nonnull align 8 dereferenceable(264) %i.il) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, %bb.s
  %.163 = phi i32 [ 0, %bb.s ], [ %.062290, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread ] ; 2 uses
  %.153 = phi double [ %.2, %bb.s ], [ %.052291, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread ]
  %i.in = add nsw i32 %.163, 1
  %i.io = icmp slt i32 %.163, 9
  br i1 %i.io, label %bb.g, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread, !llvm.loop !2271

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread: ; preds = %bb.h, %bb.t
  %i.ip = load ptr, ptr %i.l, align 8, !tbaa !2209
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !622
  %i.is = call noundef nonnull align 8 dereferenceable(264) ptr @_ZN3rrr10AndNetworkaSERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %i.ir, ptr noundef nonnull align 8 dereferenceable(264) %6) ; 0 uses
  call void @_ZN3rrr10AndNetworkD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.bp

bb.u:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.it = load ptr, ptr %i.l, align 8, !tbaa !2209 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !2267
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  store i64 %i.iw, ptr %11, align 8, !tbaa !184
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %store_forwarded536 = phi i64 [ %i.iw, %bb.u ], [ %i.jj, %bb.w ] ; 2 uses
  %.011.i.i102 = phi i64 [ 1, %bb.u ], [ %i.jk, %bb.w ] ; 4 uses
  %i.ix = getelementptr [8 x i8], ptr %11, i64 %.011.i.i102
  %i.iy = lshr i64 %store_forwarded536, 30
  %i.iz = xor i64 %i.iy, %store_forwarded536
  %i.ja = mul nuw nsw i64 %i.iz, 1812433253
  %i.jb = add nuw i64 %i.ja, %.011.i.i102         ; 2 uses
  %i.jc = and i64 %i.jb, 4294967295               ; 2 uses
  store i64 %i.jc, ptr %i.ix, align 8, !tbaa !184
  %i.jd = add nuw nsw i64 %.011.i.i102, 1         ; 3 uses
  %exitcond.not.i.i103 = icmp eq i64 %i.jd, 624
  br i1 %exitcond.not.i.i103, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.je = getelementptr [8 x i8], ptr %11, i64 %i.jd
  %i.jf = lshr i64 %i.jc, 30
  %i.jg = xor i64 %i.jf, %i.jb
  %i.jh = mul i64 %i.jg, 1812433253
  %i.ji = add i64 %i.jh, %i.jd
  %i.jj = and i64 %i.ji, 4294967295               ; 2 uses
  store i64 %i.jj, ptr %i.je, align 8, !tbaa !184
  %i.jk = add nuw nsw i64 %.011.i.i102, 2
  br label %bb.v

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104: ; preds = %bb.v
  %i.jl = getelementptr inbounds nuw i8, ptr %11, i64 4992
  store i64 624, ptr %i.jl, align 8, !tbaa !1071
  %i.jm = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !624
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.jo = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !622
  call void @_ZN3rrr10AndNetworkC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %12, ptr noundef nonnull align 8 dereferenceable(264) %i.jp) #26
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.kz = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.la = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.lb = getelementptr inbounds nuw i8, ptr %26, i64 22
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %.055289 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %i.vi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 3 uses
  %.056288 = phi double [ %i.jn, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %.157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 2 uses
  %.058287 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %.159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 4 uses
  %i.lc = load i64, ptr %i.jq, align 8, !tbaa !581
  %i.ld = icmp eq i64 %i.lc, 0
  br i1 %i.ld, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.le = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.lf = load i64, ptr %i.jq, align 8, !tbaa !581
  %.sroa.01.0.copyload.i105 = load i64, ptr %i.jr, align 8, !tbaa !184
  %i.lg = sub nsw i64 %i.le, %.sroa.01.0.copyload.i105
  %.neg.i106 = sdiv i64 %i.lg, -1000000000
  %i.lh = add i64 %.neg.i106, %i.lf
  %or.cond282 = icmp slt i64 %i.lh, 1
  br i1 %or.cond282, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275: ; preds = %bb.y, %bb.x
  %i.li = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %11)
  %i.lj = trunc i64 %i.li to i32                  ; 3 uses
  %i.lk = and i32 %i.lj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %i.js, ptr %13, align 8, !tbaa !8
  store i64 0, ptr %i.jt, align 8, !tbaa !12
  store i8 0, ptr %i.js, align 8, !tbaa !15
  %i.ll = and i32 %i.lj, 2
  %.not = icmp eq i32 %i.ll, 0
  br i1 %.not, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store ptr %i.ju, ptr %16, align 8, !tbaa !8
  store i64 2322578080581165115, ptr %i.ju, align 8
  store i64 8, ptr %i.jv, align 8, !tbaa !12
  store i8 0, ptr %i.ky, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  %i.lm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.24, i64 noundef 273) #26, !noalias !2272 ; 6 uses
  store ptr %i.jw, ptr %15, align 8, !tbaa !8, !alias.scope !2272
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !26 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 16 ; 5 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !12 ; 3 uses
  %i.ls = icmp ult i64 %i.lr, 16
  call void @llvm.assume(i1 %i.ls)
  %i.lt = add nuw nsw i64 %i.lr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jw, ptr noundef nonnull align 8 dereferenceable(1) %i.lo, i64 %i.lt, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ln, ptr %15, align 8, !tbaa !26, !alias.scope !2272
  %i.lu = load i64, ptr %i.lo, align 8, !tbaa !15
  store i64 %i.lu, ptr %i.jw, align 8, !tbaa !15, !alias.scope !2272
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !12
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %i.lv = phi i64 [ %i.lr, %bb.z ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store i64 %i.lv, ptr %i.jx, align 8, !tbaa !12, !alias.scope !2272
  store ptr %i.lo, ptr %i.lm, align 8, !tbaa !26
  store i64 0, ptr %i.lw, align 8, !tbaa !12
  store i8 0, ptr %i.lo, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  %i.lx = load i64, ptr %i.jx, align 8, !tbaa !12, !noalias !2275
  %i.ly = add i64 %i.lx, -4611686018427387898
  %i.lz = icmp ult i64 %i.ly, 6
  br i1 %i.lz, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113

bb.aa:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.148) #27, !noalias !2275
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.ma = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.26, i64 noundef 6) #26, !noalias !2275 ; 6 uses
  store ptr %i.jy, ptr %14, align 8, !tbaa !8, !alias.scope !2275
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !26 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 5 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !12 ; 3 uses
  %i.mg = icmp ult i64 %i.mf, 16
  call void @llvm.assume(i1 %i.mg)
  %i.mh = add nuw nsw i64 %i.mf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jy, ptr noundef nonnull align 8 dereferenceable(1) %i.mc, i64 %i.mh, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113
  store ptr %i.mb, ptr %14, align 8, !tbaa !26, !alias.scope !2275
  %i.mi = load i64, ptr %i.mc, align 8, !tbaa !15
  store i64 %i.mi, ptr %i.jy, align 8, !tbaa !15, !alias.scope !2275
  %.phi.trans.insert.i115 = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %.pre.i116 = load i64, ptr %.phi.trans.insert.i115, align 8, !tbaa !12
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  %i.mj = phi i64 [ %i.mf, %bb.ab ], [ %.pre.i116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i64 %i.mj, ptr %i.jz, align 8, !tbaa !12, !alias.scope !2275
  store ptr %i.mc, ptr %i.ma, align 8, !tbaa !26
  store i64 0, ptr %i.mk, align 8, !tbaa !12
  store i8 0, ptr %i.mc, align 8, !tbaa !15
  %i.ml = load ptr, ptr %13, align 8, !tbaa !26   ; 6 uses
  %i.mm = icmp eq ptr %i.ml, %i.js
  %i.mn = load ptr, ptr %14, align 8, !tbaa !26   ; 5 uses
  %i.mo = icmp eq ptr %i.mn, %i.jy                ; 2 uses
  br i1 %i.mm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117
  br i1 %i.mo, label %bb.ac, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117
  br i1 %i.mo, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.mp = load i64, ptr %i.jz, align 8, !tbaa !12 ; 3 uses
  %i.mq = icmp ult i64 %i.mp, 16
  call void @llvm.assume(i1 %i.mq)
  switch i64 %i.mp, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
end_hunk_7
begin_hunk_8_@_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEED2Ev:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5448
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIiSaIiEED2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5464
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3

_ZNSt6vectorIiSaIiEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN3rrr15BddMspfAnalyzerINS_10AndNetworkEED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %i.al) #26
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit3
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ap = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit3, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %.not.i4 = icmp eq ptr %i.ar, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = tail call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit5

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5720) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::function.68", align 8  ; 9 uses
  %4 = alloca %"class.std::function.68", align 8  ; 9 uses
  store ptr %1, ptr %0, align 8, !tbaa !2215
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5576
  store i32 -1, ptr %i.a, align 8, !tbaa !2234
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.d, align 8
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  store i64 ptrtoint (ptr @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE14ActionCallbackERKNS_6ActionE to i64), ptr %i.e, align 8, !tbaa !2307
  %.repack5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.repack5.i.i.i.i, align 8, !tbaa !2307
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = ptrtoint ptr %0 to i64
  store i64 %i.g, ptr %i.f, align 8, !tbaa !2312
  store ptr %i.e, ptr %4, align 8, !tbaa !2313
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_15BddMspfAnalyzerIS7_EEEEFvS3_EPSA_St12_PlaceholderILi1EEEEE9_M_invokeERKSt9_Any_dataS3_, ptr %i.c, align 8, !tbaa !150
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_15BddMspfAnalyzerIS7_EEEEFvS3_EPSA_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, ptr %i.b, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !202
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit, label %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread

_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store ptr %i.o, ptr %i.i, align 8, !tbaa !2313
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_15BddMspfAnalyzerIS7_EEEEFvS3_EPSA_St12_PlaceholderILi1EEEEE9_M_invokeERKSt9_Any_dataS3_, ptr %i.m, align 8, !tbaa !150
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_15BddMspfAnalyzerIS7_EEEEFvS3_EPSA_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, ptr %i.n, align 8, !tbaa !21
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.q, ptr %i.h, align 8, !tbaa !125
  br label %bb.b

_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @_ZNSt6vectorISt8functionIFvRKN3rrr6ActionEEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit
  %i.s = phi ptr [ @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_15BddMspfAnalyzerIS7_EEEEFvS3_EPSA_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread ], [ %.pre, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit ]
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !2215   ; 4 uses
  call void @_ZN3rrr15BddMspfAnalyzerINS_10AndNetworkEE5ResetEb(ptr noundef nonnull align 8 dereferenceable(336) %i.u, i1 noundef zeroext %2)
  store ptr %i.v, ptr %i.u, align 8, !tbaa !2315
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.y, align 8
  %i.z = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  store i64 ptrtoint (ptr @_ZN3rrr15BddMspfAnalyzerINS_10AndNetworkEE14ActionCallbackERKNS_6ActionE to i64), ptr %i.z, align 8, !tbaa !2316
  %.repack5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 0, ptr %.repack5.i.i.i.i.i, align 8, !tbaa !2316
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = ptrtoint ptr %i.u to i64
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !2321
  store ptr %i.z, ptr %3, align 8, !tbaa !2322
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_15BddMspfAnalyzerINS0_10AndNetworkEEEFvS3_EPS8_St12_PlaceholderILi1EEEEE9_M_invokeERKSt9_Any_dataS3_, ptr %i.x, align 8, !tbaa !150
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_15BddMspfAnalyzerINS0_10AndNetworkEEEFvS3_EPS8_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.w, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 224 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !125 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 232
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !202
  %.not.i.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i.i.i, label %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.i, label %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread.i

_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !2322
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_15BddMspfAnalyzerINS0_10AndNetworkEEEFvS3_EPS8_St12_PlaceholderILi1EEEEE9_M_invokeERKSt9_Any_dataS3_, ptr %i.ah, align 8, !tbaa !150
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_15BddMspfAnalyzerINS0_10AndNetworkEEEFvS3_EPS8_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.ai, align 8, !tbaa !21
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !125
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !125
  br label %bb.c

_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  call void @_ZNSt6vectorISt8functionIFvRKN3rrr6ActionEEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !21 ; 2 uses
  %.not.i.i2 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i2, label %_ZN3rrr15BddMspfAnalyzerINS_10AndNetworkEE13AssignNetworkEPS1_b.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.i, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread.i
  %i.an = phi ptr [ @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_15BddMspfAnalyzerINS0_10AndNetworkEEEFvS3_EPS8_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread.i ], [ %.pre.i, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.i ]
  %i.ao = call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #26, !inline_history !2324 ; 0 uses
  br label %_ZN3rrr15BddMspfAnalyzerINS_10AndNetworkEE13AssignNetworkEPS1_b.exit

_ZN3rrr15BddMspfAnalyzerINS_10AndNetworkEE13AssignNetworkEPS1_b.exit: ; preds = %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5720) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::function.35", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %6 = alloca %"class.std::function.35", align 8  ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %9 = alloca %"class.std::function.35", align 8  ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %12 = alloca %"class.std::function.35", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %15 = alloca %"class.std::vector", align 8      ; 8 uses
  %16 = alloca %"class.std::vector", align 8      ; 10 uses
  %17 = alloca %"struct.rrr::Optimizer<rrr::AndNetwork, rrr::BddMspfAnalyzer<rrr::AndNetwork>>::Stats", align 16 ; 8 uses
  %18 = alloca %"struct.rrr::Optimizer<rrr::AndNetwork, rrr::BddMspfAnalyzer<rrr::AndNetwork>>::Stats", align 16 ; 8 uses
  %19 = alloca %"class.std::function.315", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %24 = alloca %"class.std::function.2", align 8  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 5 uses
  %i.f = zext i32 %1 to i64                       ; 2 uses
  store i64 %i.f, ptr %i.e, align 8, !tbaa !184
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ %i.f, %bb.a ], [ %i.s, %bb.c ] ; 2 uses
  %.011.i = phi i64 [ 1, %bb.a ], [ %i.t, %bb.c ] ; 4 uses
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %.011.i
  %i.h = lshr i64 %store_forwarded, 30
  %i.i = xor i64 %i.h, %store_forwarded
  %i.j = mul nuw nsw i64 %i.i, 1812433253
  %i.k = add nuw i64 %i.j, %.011.i                ; 2 uses
  %i.l = and i64 %i.k, 4294967295                 ; 2 uses
  store i64 %i.l, ptr %i.g, align 8, !tbaa !184
  %i.m = add nuw nsw i64 %.011.i, 1               ; 3 uses
  %exitcond.not.i = icmp eq i64 %i.m, 624
  br i1 %exitcond.not.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr [8 x i8], ptr %i.e, i64 %i.m
  %i.o = lshr i64 %i.l, 30
  %i.p = xor i64 %i.o, %i.k
  %i.q = mul i64 %i.p, 1812433253
  %i.r = add i64 %i.q, %i.m
  %i.s = and i64 %i.r, 4294967295                 ; 2 uses
  store i64 %i.s, ptr %i.n, align 8, !tbaa !184
  %i.t = add nuw nsw i64 %.011.i, 2
  br label %bb.b

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm.exit: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5440
  store i64 624, ptr %i.u, align 8, !tbaa !1071
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5528
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5536 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %.not.i.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm.exit
  store ptr %i.w, ptr %i.x, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm.exit, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1166 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5560 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1186
  %.not.i.i10 = icmp eq ptr %i.ac, %i.aa
  br i1 %.not.i.i10, label %_ZNSt6vectorIdSaIdEE5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !1186
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !2228
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %i.ag = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.e)
  %i.ah = urem i64 %i.ag, 18
  %i.ai = trunc nuw nsw i64 %i.ah to i32          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !2325
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE5PrintIJPKciEEEviDpT_(ptr noundef nonnull align 8 dereferenceable(5720) %0, i32 noundef 0, ptr noundef nonnull @.str.102, i32 noundef %i.ai)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.ak, align 8, !tbaa !2326
  %i.al = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 5520
  store i64 %i.al, ptr %i.am, align 8, !tbaa !184
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !2327
  switch i32 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 [
    i32 0, label %bb.h
    i32 1, label %bb.j
    i32 2, label %bb.l
    i32 3, label %bb.t
    i32 4, label %bb.ad
  ]

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call noundef zeroext i1 @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE16RemoveRedundancyEv(ptr noundef nonnull align 8 dereferenceable(5720) %0) ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5672 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.at, align 8
  %i.au = ptrtoint ptr %0 to i64
  store i64 %i.au, ptr %3, align 8, !tbaa !2312
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr9OptimizerINS1_10AndNetworkENS1_15BddMspfAnalyzerIS3_EEE3RunEilEUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.as, align 8, !tbaa !85
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr9OptimizerINS1_10AndNetworkENS1_15BddMspfAnalyzerIS3_EEE3RunEilEUliE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.ar, align 8, !tbaa !21
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE25ApplyReverseTopologicallyERKSt8functionIFviEE(ptr noundef nonnull align 8 dereferenceable(5720) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5624
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ay, ptr %4, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ay, ptr noundef nonnull align 1 dereferenceable(6) @.str.103, i64 6, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 6, ptr %i.az, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.ba, align 2, !tbaa !15
  %i.bb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3rrr9OptimizerINS6_10AndNetworkENS6_15BddMspfAnalyzerIS8_EEE5StatsESt4lessIS5_ESaISt4pairIKS5_SC_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 4 uses
  %i.bc = load <4 x i32>, ptr %i.aq, align 8, !tbaa !32
  %i.bd = load <4 x i32>, ptr %i.bb, align 8, !tbaa !32
  %i.be = add nsw <4 x i32> %i.bd, %i.bc
  store <4 x i32> %i.be, ptr %i.bb, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 5688
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bh = load <4 x i32>, ptr %i.bf, align 8, !tbaa !32
  %i.bi = load <4 x i32>, ptr %i.bg, align 8, !tbaa !32
  %i.bj = add nsw <4 x i32> %i.bi, %i.bh
  store <4 x i32> %i.bj, ptr %i.bg, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5704
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bm = load <2 x double>, ptr %i.bk, align 8, !tbaa !537
  %i.bn = load <2 x double>, ptr %i.bl, align 8, !tbaa !537
  %i.bo = fadd <2 x double> %i.bm, %i.bn
  store <2 x double> %i.bo, ptr %i.bl, align 8, !tbaa !537
  %i.bp = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ay
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.br = load i64, ptr %i.ay, align 8, !tbaa !15
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZNK3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE5Stats9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.aq)
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE5PrintIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEviDpT_(ptr noundef nonnull align 8 dereferenceable(5720) %0, i32 noundef 0, ptr noundef nonnull align 8 %5)
  %i.bt = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !15
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.j:                                             ; preds = %bb.g
  %i.by = tail call noundef zeroext i1 @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE16RemoveRedundancyEv(ptr noundef nonnull align 8 dereferenceable(5720) %0) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 5672 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cc, align 8
  %i.cd = ptrtoint ptr %0 to i64
  store i64 %i.cd, ptr %6, align 8, !tbaa !2312
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr9OptimizerINS1_10AndNetworkENS1_15BddMspfAnalyzerIS3_EEE3RunEilEUliE0_E9_M_invokeERKSt9_Any_dataOi, ptr %i.cb, align 8, !tbaa !85
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr9OptimizerINS1_10AndNetworkENS1_15BddMspfAnalyzerIS3_EEE3RunEilEUliE0_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.ca, align 8, !tbaa !21
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE25ApplyReverseTopologicallyERKSt8functionIFviEE(ptr noundef nonnull align 8 dereferenceable(5720) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !21 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ce, null
  br i1 %.not.i14, label %_ZNSt14_Function_baseD2Ev.exit15, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = call noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit15

_ZNSt14_Function_baseD2Ev.exit15:                 ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 5624
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ch, ptr %7, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ch, ptr noundef nonnull align 1 dereferenceable(5) @.str.104, i64 5, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 5, ptr %i.ci, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 0, ptr %i.cj, align 1, !tbaa !15
  %i.ck = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3rrr9OptimizerINS6_10AndNetworkENS6_15BddMspfAnalyzerIS8_EEE5StatsESt4lessIS5_ESaISt4pairIKS5_SC_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %7) ; 4 uses
  %i.cl = load <4 x i32>, ptr %i.bz, align 8, !tbaa !32
  %i.cm = load <4 x i32>, ptr %i.ck, align 8, !tbaa !32
  %i.cn = add nsw <4 x i32> %i.cm, %i.cl
  store <4 x i32> %i.cn, ptr %i.ck, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 5688
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cq = load <4 x i32>, ptr %i.co, align 8, !tbaa !32
  %i.cr = load <4 x i32>, ptr %i.cp, align 8, !tbaa !32
  %i.cs = add nsw <4 x i32> %i.cr, %i.cq
  store <4 x i32> %i.cs, ptr %i.cp, align 8, !tbaa !32
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 5704
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  %i.cv = load <2 x double>, ptr %i.ct, align 8, !tbaa !537
  %i.cw = load <2 x double>, ptr %i.cu, align 8, !tbaa !537
  %i.cx = fadd <2 x double> %i.cv, %i.cw
  store <2 x double> %i.cx, ptr %i.cu, align 8, !tbaa !537
  %i.cy = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE6ThreadEPKNS_9ParameterE:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 792
  br label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit

._crit_edge:                                      ; preds = %bb.k, %_ZNSt14_Function_baseD2Ev.exit
  %.lcssa = phi i32 [ %i.m, %_ZNSt14_Function_baseD2Ev.exit ], [ %i.ax, %bb.k ]
  call void @_ZSt20__throw_system_errori(i32 noundef %.lcssa) #27
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.lr.ph, %bb.k
  store i8 1, ptr %i.l, align 8, !tbaa !1035
  %i.x = load i8, ptr %i.n, align 8, !tbaa !686, !range !157, !noundef !158
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge5.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %bb.d
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !2957
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !2957 ; 4 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(9) %4) #26
  %i.ac = load i8, ptr %i.n, align 8, !tbaa !686, !range !157, !noundef !158
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.critedge5, label %.lr.ph, !llvm.loop !2958

.critedge:                                        ; preds = %.lr.ph
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !2955
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !2955
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !2959
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %.not.i.i = icmp eq ptr %i.aa, %i.ag
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit

bb.f:                                             ; preds = %.critedge
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !2960
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef 512) #28
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !742
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.ak, ptr %i.t, align 8, !tbaa !680
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !679 ; 3 uses
  store ptr %i.al, ptr %i.s, align 8, !tbaa !681
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  store ptr %i.am, ptr %i.r, align 8, !tbaa !682
  br label %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit

_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit: ; preds = %bb.e, %bb.f
  %storemerge.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.al, %bb.f ]
  store ptr %storemerge.i.i, ptr %i.p, align 8, !tbaa !683
  %i.an = load i8, ptr %i.l, align 8, !tbaa !1035, !range !157, !noundef !158
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.g:                                             ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit
  %i.ap = load ptr, ptr %4, align 8, !tbaa !1032  ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i8, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #26 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt5queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt5dequeISF_SaISF_EEE3popEv.exit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !2955
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE6RunJobERS9_PNSC_3JobE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(5848) %2, ptr noundef %i.ar)
  %i.as = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #26 ; 2 uses
  %.not.i.i.i9 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i9, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZSt20__throw_system_errori(i32 noundef %i.as) #27
  unreachable

.critedge5:                                       ; preds = %bb.d
  %.pre = load i8, ptr %i.l, align 8, !tbaa !1035, !range !157
  %i.at = trunc nuw i8 %.pre to i1
  br i1 %i.at, label %.critedge5.thread, label %bb.l

.critedge5.thread:                                ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.critedge5
  %i.au = load ptr, ptr %4, align 8, !tbaa !1032  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i.i13, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge5.thread
  %i.av = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #26 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEE3JobESt6vectorISF_SaISF_EENSD_18CompareJobPointersEE4pushERKSF_(ptr noundef nonnull align 8 dereferenceable(25) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.w) #26
  %i.aw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !2955
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.k, ptr %4, align 8, !tbaa !1032
  store i8 0, ptr %i.l, align 8, !tbaa !1035
  %i.ax = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %._crit_edge

bb.l:                                             ; preds = %bb.j, %.critedge5.thread, %.critedge5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(5848) dereferenceable(5848) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEC2EPKNS_9ParameterESt8functionIFdPS1_EE(ptr noundef nonnull align 8 dereferenceable(5848) %0, ptr noundef %1, ptr noundef align 8 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !2961
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !241
  store i32 %i.c, ptr %i.a, align 8, !tbaa !2985
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2) #26, !inline_history !496 ; 0 uses
  %i.i = load <2 x ptr>, ptr %i.e, align 8, !tbaa !139
  store <2 x ptr> %i.i, ptr %i.g, align 8, !tbaa !139
  br label %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit

_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load <2 x i32>, ptr %i.k, align 4, !tbaa !32
  %i.n = load i32, ptr %i.k, align 4, !tbaa !248
  store i32 %i.n, ptr %i.j, align 8, !tbaa !2986
  store <2 x i32> %i.m, ptr %i.l, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !252
  store i32 %i.q, ptr %i.o, align 4, !tbaa !2987
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = load i8, ptr %i.s, align 4, !tbaa !245, !range !157, !noundef !158
  store i8 %i.t, ptr %i.r, align 8, !tbaa !2988
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.w = load i8, ptr %i.v, align 1, !tbaa !260, !range !157, !noundef !158
  store i8 %i.w, ptr %i.u, align 1, !tbaa !2989
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 40, i1 false)
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !242
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i8
  store i8 %i.ac, ptr %i.y, align 8, !tbaa !2990
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN3rrr9SimulatorINS_10AndNetworkEEC2EPKNS_9ParameterE(ptr noundef nonnull align 8 dereferenceable(312) %i.ad, ptr noundef nonnull %1)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr null, ptr %i.ae, align 8, !tbaa !2991
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !244
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !2992
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !247
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !2993
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.am = tail call ptr @sat_solver_new() #26
  store ptr %i.am, ptr %i.al, align 8, !tbaa !2994
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i8 0, ptr %i.an, align 8, !tbaa !2995
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i32 -1, ptr %i.ao, align 4, !tbaa !2996
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 548
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aq, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.ap, i8 0, i64 73, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  store i64 5489, ptr %i.ar, align 8, !tbaa !184
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit
  %store_forwarded = phi i64 [ 5489, %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit ], [ %i.be, %bb.d ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %_ZNSt8functionIFdPN3rrr10AndNetworkEEEC2ERKS4_.exit ], [ %i.bf, %bb.d ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %.011.i.i.i
  %i.at = lshr i64 %store_forwarded, 30
  %i.au = xor i64 %i.at, %store_forwarded
  %i.av = mul nuw nsw i64 %i.au, 1812433253
  %i.aw = add nuw i64 %i.av, %.011.i.i.i          ; 2 uses
  %i.ax = and i64 %i.aw, 4294967295               ; 2 uses
  store i64 %i.ax, ptr %i.as, align 8, !tbaa !184
  %i.ay = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, 624
  br i1 %exitcond.not.i.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr [8 x i8], ptr %i.ar, i64 %i.ay
  %i.ba = lshr i64 %i.ax, 30
  %i.bb = xor i64 %i.ba, %i.aw
  %i.bc = mul i64 %i.bb, 1812433253
  %i.bd = add i64 %i.bc, %i.ay
  %i.be = and i64 %i.bd, 4294967295               ; 2 uses
  store i64 %i.be, ptr %i.az, align 8, !tbaa !184
  %i.bf = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.c

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Ev.exit: ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 5568
  store i64 624, ptr %i.bg, align 8, !tbaa !1071
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 5576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 5608 ; 3 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !91
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5616
  store ptr null, ptr %i.bj, align 8, !tbaa !92
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5624
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !93
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5632
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !94
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5640
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5704
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, i8 0, i64 64, i1 false)
  store i32 -1, ptr %i.bn, align 8, !tbaa !2997
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 5712
  store ptr null, ptr %i.bo, align 8, !tbaa !181
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 5720
  store i32 0, ptr %i.bp, align 8, !tbaa !447
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 5728
  store ptr null, ptr %i.bq, align 8, !tbaa !181
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5736
  store i32 0, ptr %i.br, align 8, !tbaa !447
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5744
  store ptr null, ptr %i.bs, align 8, !tbaa !448
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 5760 ; 3 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5768
  store ptr null, ptr %i.bu, align 8, !tbaa !92
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 5776
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !93
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 5784
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !94
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 5792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_8AnalyzerIS1_NS0_9SimulatorIS1_EENS0_9SatSolverIS1_EEEEEENS0_11PartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::function.35", align 8  ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !138    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !30
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !176
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.f, align 8, !tbaa !85
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.sroa.04.07.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !42 ; 3 uses
  %.not8.i.i.i.i = icmp eq ptr %.sroa.04.07.i.i.i.i, %i.g
  br i1 %.not8.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.i, ptr %i.a, align 4, !tbaa !32
  br label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.k, ptr %i.a, align 4, !tbaa !32
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit.i.i.i.i:           ; preds = %thread-pre-split.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.sroa.04.09.i4.i.i.i = phi ptr [ %.sroa.04.07.i.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %.sroa.04.0.i.i.i.i, %thread-pre-split.i.i.i ]
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !85
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !2998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.i.i.i.i = load ptr, ptr %.sroa.04.09.i4.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.04.0.i.i.i.i, %i.g
  %.pr2.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !21 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, label %thread-pre-split.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i: ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %.not.i1.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i1.i.i.i, label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %bb.a
  %i.m = phi ptr [ %.pr2.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i ], [ @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, %bb.a ]
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !2999 ; 0 uses
  br label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit

_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.o = load i32, ptr %i.c, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = sitofp i32 %i.o to double
  ret double %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_8AnalyzerIS1_NS0_9SimulatorIS1_EENS0_9SatSolverIS1_EEEEEENS0_11PartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEEC1EPS1_PKNS_9ParameterEEUlSD_E_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !139
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E9_M_invokeERKSt9_Any_dataOi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3000, !nonnull !158, !align !301
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = sext i32 %i.a to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.j = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32
  %i.o = load ptr, ptr %0, align 8, !tbaa !3002, !nonnull !158, !align !321 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %i.q = add i32 %i.p, -1
  %i.r = add i32 %i.q, %i.n
  store i32 %i.r, ptr %i.o, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEEC1EPS1_PKNS_9ParameterEENKUlSD_E_clESD_EUliE_, ptr %0, align 8, !tbaa !302
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !139
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1078
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}
end_hunk_9
begin_hunk_10_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJSt5_BindIFMN3rrr9SchedulerINS5_10AndNetworkENS5_9OptimizerIS7_NS5_8AnalyzerIS7_NS5_9SimulatorIS7_EENS5_9SatSolverIS7_EEEEEENS5_11PartitionerIS7_EEEEFvPKNS5_9ParameterEEPSI_SL_EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bq) #28
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !460
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !461
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !459
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_8AnalyzerIS6_NS4_9SimulatorIS6_EENS4_9SatSolverIS6_EEEEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSH_SK_EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_8AnalyzerIS6_NS4_9SimulatorIS6_EENS4_9SatSolverIS6_EEEEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSH_SK_EEEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !720
  %.unpack.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !15 ; 3 uses
  %.elt3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack4.i.i.i.i.i.i.i.i = load i64, ptr %.elt3.i.i.i.i.i.i.i.i, align 8, !tbaa !15
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !204
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !158
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_8AnalyzerIS5_NS3_9SimulatorIS5_EENS3_9SatSolverIS5_EEEEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSG_SJ_EEEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_8AnalyzerIS5_NS3_9SimulatorIS5_EENS3_9SatSolverIS5_EEEEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSG_SJ_EEEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_8AnalyzerIS5_NS3_9SimulatorIS5_EENS3_9SatSolverIS5_EEEEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSG_SJ_EEEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1104
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(840) %i.d, ptr noundef %i.m) #26, !inline_history !3028
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE6RunJobERS9_PNSC_3JobE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(5848) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::function.227", align 8 ; 7 uses
  %i.l = alloca ptr, align 8                      ; 27 uses
  %4 = alloca %"class.std::function.227", align 8 ; 9 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 19 uses
  %6 = alloca %"class.rrr::AndNetwork", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %12 = alloca %"class.rrr::AndNetwork", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::vector.269", align 16 ; 9 uses
  %32 = alloca %"class.std::vector.274", align 16 ; 9 uses
  store ptr %2, ptr %i.l, align 8, !tbaa !2955
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !717
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !672, !range !157, !noundef !158
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5848) %1, ptr noundef %i.o, i1 noundef zeroext %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.l, ptr %4, align 8, !tbaa !679
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !720
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_11PartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.u, align 8, !tbaa !1106
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_11PartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation, ptr %i.t, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !139
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !139 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_11PartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation, ptr %i.x, align 8, !tbaa !139
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !139
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_11PartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.y, align 8, !tbaa !139
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread: ; preds = %_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.a

_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit: ; preds = %_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #26, !inline_history !3029 ; 0 uses
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !21  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread, %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  %i.ac = phi ptr [ @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_11PartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation, %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread ], [ %.pre, %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit ]
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !669
  switch i32 %i.af, label %bb.bp [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.u
    i32 3, label %bb.bk
  ]

bb.b:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !2955
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !3030
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !676
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !676
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.01.0.copyload.i = load i64, ptr %i.ao, align 8, !tbaa !184
  %i.ap = sub nsw i64 %i.am, %.sroa.01.0.copyload.i
  %.neg.i = sdiv i64 %i.ap, -1000000000
  %i.aq = add i64 %.neg.i, %i.an                  ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %..i = select i1 %i.ar, i64 -1, i64 %i.aq
  br label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit: ; preds = %bb.b, %bb.c
  %.1.i = phi i64 [ %..i, %bb.c ], [ 0, %bb.b ]
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5848) %1, i32 noundef %i.ai, i64 noundef %.1.i)
  br label %bb.bp

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !2955 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !3030
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  store i64 %i.av, ptr %5, align 8, !tbaa !184
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.av, %bb.d ], [ %i.bi, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.bj, %bb.f ] ; 4 uses
  %i.aw = getelementptr [8 x i8], ptr %5, i64 %.011.i.i
  %i.ax = lshr i64 %store_forwarded, 30
  %i.ay = xor i64 %i.ax, %store_forwarded
  %i.az = mul nuw nsw i64 %i.ay, 1812433253
  %i.ba = add nuw i64 %i.az, %.011.i.i            ; 2 uses
  %i.bb = and i64 %i.ba, 4294967295               ; 2 uses
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !184
  %i.bc = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.bc, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr [8 x i8], ptr %5, i64 %i.bc
  %i.be = lshr i64 %i.bb, 30
  %i.bf = xor i64 %i.be, %i.ba
  %i.bg = mul i64 %i.bf, 1812433253
  %i.bh = add i64 %i.bg, %i.bc
  %i.bi = and i64 %i.bh, 4294967295               ; 2 uses
  store i64 %i.bi, ptr %i.bd, align 8, !tbaa !184
  %i.bj = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4992 ; 2 uses
  store i64 624, ptr %i.bk, align 8, !tbaa !1071
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !719 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !717
  call void @_ZN3rrr10AndNetworkC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef nonnull align 8 dereferenceable(264) %i.bo) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 20
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 1816
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 4984 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 3168
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 1808
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 1816
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 4984
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, %bb.t
  %i.ci = phi i64 [ 624, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.ih, %bb.t ]
  %.0294 = phi double [ %i.bm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %.2, %bb.t ]
  %.052293 = phi double [ %i.bm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %.153, %bb.t ] ; 2 uses
  %.062292 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.in, %bb.t ] ; 3 uses
  %i.cj = load i64, ptr %i.bp, align 8, !tbaa !676
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread269, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.cm = load i64, ptr %i.bp, align 8, !tbaa !676
  %.sroa.01.0.copyload.i71 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.cn = sub nsw i64 %i.cl, %.sroa.01.0.copyload.i71
  %.neg.i72 = sdiv i64 %i.cn, -1000000000
  %i.co = add i64 %.neg.i72, %i.cm
  %or.cond = icmp slt i64 %i.co, 1
  br i1 %or.cond, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread269

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread269: ; preds = %bb.h, %bb.g
  %.not70 = icmp eq i32 %.062292, 0
  br i1 %.not70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread269
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !2955
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !717
  store ptr %i.br, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store i64 19, ptr %i.k, align 8, !tbaa !184
  %i.cs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0) #26 ; 2 uses
  store ptr %i.cs, ptr %7, align 8, !tbaa !26
  %i.ct = load i64, ptr %i.k, align 8, !tbaa !184 ; 3 uses
  store i64 %i.ct, ptr %i.br, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.cs, ptr noundef nonnull align 1 dereferenceable(19) @.str.16, i64 19, i1 false)
  store i64 %i.ct, ptr %i.bs, align 8, !tbaa !12
  %i.cu = load ptr, ptr %7, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  store i8 0, ptr %i.cv, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE7CallAbcEPS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef %i.cr, ptr noundef nonnull align 8 %7)
  %i.cw = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.br
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.cy = load i64, ptr %i.br, align 8, !tbaa !15
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !2955
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.dc, ptr %i.j, align 8, !tbaa !138
  %i.dd = load ptr, ptr %i.bt, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i, label %bb.i, label %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.de = load ptr, ptr %i.bv, align 8, !tbaa !498
  %i.df = call noundef double %i.de(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #26, !inline_history !499 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dg = load ptr, ptr %i.l, align 8, !tbaa !2955 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.bw, ptr %8, align 8, !tbaa !8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !26 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store i64 %i.dk, ptr %i.i, align 8, !tbaa !184
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %bb.j, label %._crit_edge.i.i76

bb.j:                                             ; preds = %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit
  %i.dm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) #26 ; 2 uses
  store ptr %i.dm, ptr %8, align 8, !tbaa !26
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !184
  store i64 %i.dn, ptr %i.bw, align 8, !tbaa !15
  br label %._crit_edge.i.i76

._crit_edge.i.i76:                                ; preds = %bb.j, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit
  %i.do = phi ptr [ %i.dm, %bb.j ], [ %i.bw, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit ] ; 2 uses
  switch i64 %i.dk, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i76
  %i.dp = load i8, ptr %i.di, align 1, !tbaa !15
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.l:                                             ; preds = %._crit_edge.i.i76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.di, i64 %i.dk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i76, %bb.k, %bb.l
  %i.dq = load i64, ptr %i.i, align 8, !tbaa !184 ; 2 uses
  store i64 %i.dq, ptr %i.bx, align 8, !tbaa !12
  %i.dr = load ptr, ptr %8, align 8, !tbaa !26
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  store i8 0, ptr %i.ds, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE5PrintIJPKciSF_SF_SF_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef 1, ptr noundef nonnull align 8 %8, ptr noundef nonnull @.str.17, i32 noundef %.062292, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, double noundef %i.df)
  %i.dt = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bw
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.dv = load i64, ptr %i.bw, align 8, !tbaa !15
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread269
  %.2.ph = phi double [ %.0294, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread269 ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.dx = phi i64 [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 3 uses
  %.060 = phi i32 [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 2 uses
  %.2 = phi double [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.2.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 4 uses
  %i.dy = load i64, ptr %i.bp, align 8, !tbaa !676
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread273, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ea = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.eb = load i64, ptr %i.bp, align 8, !tbaa !676 ; 2 uses
  %.sroa.01.0.copyload.i80 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.ec = sub nsw i64 %i.ea, %.sroa.01.0.copyload.i80
  %.neg.i81 = sdiv i64 %i.ec, -1000000000
  %i.ed = add i64 %.neg.i81, %i.eb
  %or.cond283 = icmp slt i64 %i.ed, 1
  br i1 %or.cond283, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread273

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread273: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ee = phi i64 [ %i.eb, %bb.m ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  %i.ef = icmp ugt i64 %i.dx, 623
  br i1 %i.ef, label %vector.ph534, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph534:                                     ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread273
  %.pre.i.i = load i64, ptr %5, align 8, !tbaa !184
  %vector.recur.init537 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body535
end_hunk_10
begin_hunk_11_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE6RunJobERS9_PNSC_3JobE:_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  %i.fn = lshr exact <2 x i64> %i.fm, splat (i64 1)
  %i.fo = xor <2 x i64> %i.fn, %wide.load533
  %i.fp = and <2 x i64> %wide.load, splat (i64 1)
  %i.fq = icmp eq <2 x i64> %i.fp, zeroinitializer
  %i.fr = select <2 x i1> %i.fq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.fs = xor <2 x i64> %i.fo, %i.fr
  store <2 x i64> %i.fs, ptr %i.fg, align 8, !tbaa !184
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ft = icmp eq i64 %index.next, 396
  br i1 %i.ft, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body, !llvm.loop !3032

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body
  %i.fu = load i64, ptr %i.cd, align 8, !tbaa !184
  %i.fv = and i64 %i.fu, -2147483648
  %i.fw = load i64, ptr %5, align 8, !tbaa !184   ; 2 uses
  %i.fx = and i64 %i.fw, 2147483646
  %i.fy = or disjoint i64 %i.fx, %i.fv
  %i.fz = load i64, ptr %i.ce, align 8, !tbaa !184
  %i.ga = lshr exact i64 %i.fy, 1
  %i.gb = xor i64 %i.ga, %i.fz
  %i.gc = and i64 %i.fw, 1
  %.not.i.i413 = icmp eq i64 %i.gc, 0
  %i.gd = select i1 %.not.i.i413, i64 0, i64 2567483615
  %i.ge = xor i64 %i.gb, %i.gd
  store i64 %i.ge, ptr %i.cd, align 8, !tbaa !184
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread273, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.gf = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.dx, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread273 ] ; 2 uses
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 3 uses
  store i64 %i.gg, ptr %i.bk, align 8, !tbaa !1071
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gf
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !184 ; 2 uses
  %i.gj = lshr i64 %i.gi, 11
  %i.gk = and i64 %i.gj, 4294967295
  %i.gl = xor i64 %i.gk, %i.gi                    ; 2 uses
  %i.gm = shl i64 %i.gl, 7
  %i.gn = and i64 %i.gm, 2636928640
  %i.go = xor i64 %i.gn, %i.gl                    ; 2 uses
  %i.gp = shl i64 %i.go, 15
  %i.gq = and i64 %i.gp, 4022730752
  %i.gr = xor i64 %i.gq, %i.go                    ; 2 uses
  %i.gs = lshr i64 %i.gr, 18
  %i.gt = xor i64 %i.gs, %i.gr
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = icmp eq i64 %i.ee, 0
  br i1 %i.gv, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89, label %bb.n

bb.n:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.gw = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.gx = load i64, ptr %i.bp, align 8, !tbaa !676
  %.sroa.01.0.copyload.i85 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.gy = sub nsw i64 %i.gw, %.sroa.01.0.copyload.i85
  %.neg.i86 = sdiv i64 %i.gy, -1000000000
  %i.gz = add i64 %.neg.i86, %i.gx                ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  %..i87 = select i1 %i.ha, i64 -1, i64 %i.gz
  br label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89: ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %bb.n
  %.1.i88 = phi i64 [ %..i87, %bb.n ], [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5848) %1, i32 noundef %i.gu, i64 noundef %.1.i88)
  %i.hb = load ptr, ptr %i.l, align 8, !tbaa !2955
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !717
  store ptr %i.by, ptr %9, align 8, !tbaa !8
  store i32 845374502, ptr %i.by, align 8
  store i64 4, ptr %i.bz, align 8, !tbaa !12
  store i8 0, ptr %i.cc, align 4, !tbaa !15
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE7CallAbcEPS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef %i.hd, ptr noundef nonnull align 8 %9)
  %i.he = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.by
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89
  %i.hg = load i64, ptr %i.by, align 8, !tbaa !15
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %i.hi = load ptr, ptr %i.l, align 8, !tbaa !2955
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.hk, ptr %i.h, align 8, !tbaa !138
  %i.hl = load ptr, ptr %i.bt, align 8, !tbaa !21
  %.not.i.i95 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i95, label %bb.o, label %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hm = load ptr, ptr %i.bv, align 8, !tbaa !498
  %i.hn = call noundef double %i.hm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.h) #26, !inline_history !499 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ho = load ptr, ptr %i.l, align 8, !tbaa !2955 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  store ptr %i.ca, ptr %10, align 8, !tbaa !8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !26 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 %i.hs, ptr %i.g, align 8, !tbaa !184
  %i.ht = icmp ugt i64 %i.hs, 15
  br i1 %i.ht, label %bb.p, label %._crit_edge.i.i97

bb.p:                                             ; preds = %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96
  %i.hu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) #26 ; 2 uses
  store ptr %i.hu, ptr %10, align 8, !tbaa !26
  %i.hv = load i64, ptr %i.g, align 8, !tbaa !184
  store i64 %i.hv, ptr %i.ca, align 8, !tbaa !15
  br label %._crit_edge.i.i97

._crit_edge.i.i97:                                ; preds = %bb.p, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96
  %i.hw = phi ptr [ %i.hu, %bb.p ], [ %i.ca, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96 ] ; 2 uses
  switch i64 %i.hs, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98
  ]

bb.q:                                             ; preds = %._crit_edge.i.i97
  %i.hx = load i8, ptr %i.hq, align 1, !tbaa !15
  store i8 %i.hx, ptr %i.hw, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98

bb.r:                                             ; preds = %._crit_edge.i.i97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hw, ptr align 1 %i.hq, i64 %i.hs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98: ; preds = %._crit_edge.i.i97, %bb.q, %bb.r
  %i.hy = load i64, ptr %i.g, align 8, !tbaa !184 ; 2 uses
  store i64 %i.hy, ptr %i.cb, align 8, !tbaa !12
  %i.hz = load ptr, ptr %10, align 8, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hy
  store i8 0, ptr %i.ia, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE5PrintIJPKciSF_SF_SF_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef 1, ptr noundef nonnull align 8 %10, ptr noundef nonnull @.str.22, i32 noundef %.060, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, double noundef %i.hn)
  %i.ib = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.ca
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98
  %i.id = load i64, ptr %i.ca, align 8, !tbaa !15
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  %i.if = fcmp olt double %i.hn, %.2
  %i.ig = add nuw nsw i32 %.060, 1
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, !llvm.loop !3033

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.ih = phi i64 [ %i.dx, %bb.m ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ]
  %i.ii = fcmp olt double %.2, %.052293
  br i1 %i.ii, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread
  %i.ij = load ptr, ptr %i.l, align 8, !tbaa !2955
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !717
  %i.im = call noundef nonnull align 8 dereferenceable(264) ptr @_ZN3rrr10AndNetworkaSERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef nonnull align 8 dereferenceable(264) %i.il) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, %bb.s
  %.163 = phi i32 [ 0, %bb.s ], [ %.062292, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread ] ; 2 uses
  %.153 = phi double [ %.2, %bb.s ], [ %.052293, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread ]
  %i.in = add nsw i32 %.163, 1
  %i.io = icmp slt i32 %.163, 9
  br i1 %i.io, label %bb.g, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread, !llvm.loop !3034

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread: ; preds = %bb.h, %bb.t
  %i.ip = load ptr, ptr %i.l, align 8, !tbaa !2955
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !717
  %i.is = call noundef nonnull align 8 dereferenceable(264) ptr @_ZN3rrr10AndNetworkaSERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %i.ir, ptr noundef nonnull align 8 dereferenceable(264) %6) ; 0 uses
  call void @_ZN3rrr10AndNetworkD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.bp

bb.u:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.it = load ptr, ptr %i.l, align 8, !tbaa !2955 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !3030
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  store i64 %i.iw, ptr %11, align 8, !tbaa !184
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %store_forwarded544 = phi i64 [ %i.iw, %bb.u ], [ %i.jj, %bb.w ] ; 2 uses
  %.011.i.i102 = phi i64 [ 1, %bb.u ], [ %i.jk, %bb.w ] ; 4 uses
  %i.ix = getelementptr [8 x i8], ptr %11, i64 %.011.i.i102
  %i.iy = lshr i64 %store_forwarded544, 30
  %i.iz = xor i64 %i.iy, %store_forwarded544
  %i.ja = mul nuw nsw i64 %i.iz, 1812433253
  %i.jb = add nuw i64 %i.ja, %.011.i.i102         ; 2 uses
  %i.jc = and i64 %i.jb, 4294967295               ; 2 uses
  store i64 %i.jc, ptr %i.ix, align 8, !tbaa !184
  %i.jd = add nuw nsw i64 %.011.i.i102, 1         ; 3 uses
  %exitcond.not.i.i103 = icmp eq i64 %i.jd, 624
  br i1 %exitcond.not.i.i103, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.je = getelementptr [8 x i8], ptr %11, i64 %i.jd
  %i.jf = lshr i64 %i.jc, 30
  %i.jg = xor i64 %i.jf, %i.jb
  %i.jh = mul i64 %i.jg, 1812433253
  %i.ji = add i64 %i.jh, %i.jd
  %i.jj = and i64 %i.ji, 4294967295               ; 2 uses
  store i64 %i.jj, ptr %i.je, align 8, !tbaa !184
  %i.jk = add nuw nsw i64 %.011.i.i102, 2
  br label %bb.v

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104: ; preds = %bb.v
  %i.jl = getelementptr inbounds nuw i8, ptr %11, i64 4992
  store i64 624, ptr %i.jl, align 8, !tbaa !1071
  %i.jm = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !719
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.jo = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !717
  call void @_ZN3rrr10AndNetworkC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %12, ptr noundef nonnull align 8 dereferenceable(264) %i.jp) #26
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.kz = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.la = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.lb = getelementptr inbounds nuw i8, ptr %26, i64 22
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %.055291 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %i.vi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 3 uses
  %.056290 = phi double [ %i.jn, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %.157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 2 uses
  %.058289 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %.159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 4 uses
  %i.lc = load i64, ptr %i.jq, align 8, !tbaa !676
  %i.ld = icmp eq i64 %i.lc, 0
  br i1 %i.ld, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread277, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.le = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.lf = load i64, ptr %i.jq, align 8, !tbaa !676
  %.sroa.01.0.copyload.i105 = load i64, ptr %i.jr, align 8, !tbaa !184
  %i.lg = sub nsw i64 %i.le, %.sroa.01.0.copyload.i105
  %.neg.i106 = sdiv i64 %i.lg, -1000000000
  %i.lh = add i64 %.neg.i106, %i.lf
  %or.cond284 = icmp slt i64 %i.lh, 1
  br i1 %or.cond284, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread277

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread277: ; preds = %bb.y, %bb.x
  %i.li = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %11)
  %i.lj = trunc i64 %i.li to i32                  ; 3 uses
  %i.lk = and i32 %i.lj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %i.js, ptr %13, align 8, !tbaa !8
  store i64 0, ptr %i.jt, align 8, !tbaa !12
  store i8 0, ptr %i.js, align 8, !tbaa !15
  %i.ll = and i32 %i.lj, 2
  %.not = icmp eq i32 %i.ll, 0
  br i1 %.not, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread277
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store ptr %i.ju, ptr %16, align 8, !tbaa !8
  store i64 2322578080581165115, ptr %i.ju, align 8
  store i64 8, ptr %i.jv, align 8, !tbaa !12
  store i8 0, ptr %i.ky, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !3035)
  %i.lm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.24, i64 noundef 273) #26, !noalias !3035 ; 6 uses
  store ptr %i.jw, ptr %15, align 8, !tbaa !8, !alias.scope !3035
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !26 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 16 ; 5 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !12 ; 3 uses
  %i.ls = icmp ult i64 %i.lr, 16
  call void @llvm.assume(i1 %i.ls)
  %i.lt = add nuw nsw i64 %i.lr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jw, ptr noundef nonnull align 8 dereferenceable(1) %i.lo, i64 %i.lt, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ln, ptr %15, align 8, !tbaa !26, !alias.scope !3035
  %i.lu = load i64, ptr %i.lo, align 8, !tbaa !15
  store i64 %i.lu, ptr %i.jw, align 8, !tbaa !15, !alias.scope !3035
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !12
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %i.lv = phi i64 [ %i.lr, %bb.z ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store i64 %i.lv, ptr %i.jx, align 8, !tbaa !12, !alias.scope !3035
  store ptr %i.lo, ptr %i.lm, align 8, !tbaa !26
  store i64 0, ptr %i.lw, align 8, !tbaa !12
  store i8 0, ptr %i.lo, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !3038)
  %i.lx = load i64, ptr %i.jx, align 8, !tbaa !12, !noalias !3038
  %i.ly = add i64 %i.lx, -4611686018427387898
  %i.lz = icmp ult i64 %i.ly, 6
  br i1 %i.lz, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113

bb.aa:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.148) #27, !noalias !3038
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.ma = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.26, i64 noundef 6) #26, !noalias !3038 ; 6 uses
  store ptr %i.jy, ptr %14, align 8, !tbaa !8, !alias.scope !3038
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !26 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 5 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !12 ; 3 uses
  %i.mg = icmp ult i64 %i.mf, 16
  call void @llvm.assume(i1 %i.mg)
  %i.mh = add nuw nsw i64 %i.mf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jy, ptr noundef nonnull align 8 dereferenceable(1) %i.mc, i64 %i.mh, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113
  store ptr %i.mb, ptr %14, align 8, !tbaa !26, !alias.scope !3038
  %i.mi = load i64, ptr %i.mc, align 8, !tbaa !15
  store i64 %i.mi, ptr %i.jy, align 8, !tbaa !15, !alias.scope !3038
  %.phi.trans.insert.i115 = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %.pre.i116 = load i64, ptr %.phi.trans.insert.i115, align 8, !tbaa !12
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  %i.mj = phi i64 [ %i.mf, %bb.ab ], [ %.pre.i116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i64 %i.mj, ptr %i.jz, align 8, !tbaa !12, !alias.scope !3038
  store ptr %i.mc, ptr %i.ma, align 8, !tbaa !26
  store i64 0, ptr %i.mk, align 8, !tbaa !12
  store i8 0, ptr %i.mc, align 8, !tbaa !15
  %i.ml = load ptr, ptr %13, align 8, !tbaa !26   ; 6 uses
  %i.mm = icmp eq ptr %i.ml, %i.js
  %i.mn = load ptr, ptr %14, align 8, !tbaa !26   ; 5 uses
  %i.mo = icmp eq ptr %i.mn, %i.jy                ; 2 uses
  br i1 %i.mm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117
  br i1 %i.mo, label %bb.ac, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117
  br i1 %i.mo, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.mp = load i64, ptr %i.jz, align 8, !tbaa !12 ; 3 uses
  %i.mq = icmp ult i64 %i.mp, 16
  call void @llvm.assume(i1 %i.mq)
  switch i64 %i.mp, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
end_hunk_11
begin_hunk_12_@_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEED2Ev:bb.a
_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5616
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !92
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIiSt4lessIiESaIiEEESt10_Select1stIS7_ES4_SaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5576
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIiSaIiEED2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5592
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3

_ZNSt6vectorIiSaIiEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2994
  tail call void @sat_solver_delete(ptr noundef %i.am) #26
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !3071 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3rrr8VarValueESaIS1_EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit3
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !3072
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #28
  br label %_ZNSt6vectorIN3rrr8VarValueESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN3rrr8VarValueESaIS1_EED2Ev.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEED2Ev.exit3
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !36 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN3rrr8VarValueESaIS1_EED2Ev.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.g, %_ZNSt6vectorIN3rrr8VarValueESaIS1_EED2Ev.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !36 ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i2.i.i, label %_ZN3rrr8AnalyzerINS_10AndNetworkENS_9SimulatorIS1_EENS_9SatSolverIS1_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !33
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #28
  br label %_ZN3rrr8AnalyzerINS_10AndNetworkENS_9SimulatorIS1_EENS_9SatSolverIS1_EEED2Ev.exit

_ZN3rrr8AnalyzerINS_10AndNetworkENS_9SimulatorIS1_EENS_9SatSolverIS1_EEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN3rrr9SimulatorINS_10AndNetworkEED2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %i.bi) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3rrr8AnalyzerINS_10AndNetworkENS_9SimulatorIS1_EENS_9SatSolverIS1_EEED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bm = tail call noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN3rrr8AnalyzerINS_10AndNetworkENS_9SimulatorIS1_EENS_9SatSolverIS1_EEED2Ev.exit, %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !21 ; 2 uses
  %.not.i4 = icmp eq ptr %i.bo, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bq = tail call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit5

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5848) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::function.68", align 8  ; 9 uses
  store ptr %1, ptr %0, align 8, !tbaa !2961
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5704
  store i32 -1, ptr %i.a, align 8, !tbaa !2997
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  store i64 ptrtoint (ptr @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE14ActionCallbackERKNS_6ActionE to i64), ptr %i.e, align 8, !tbaa !3073
  %.repack5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.repack5.i.i.i.i, align 8, !tbaa !3073
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = ptrtoint ptr %0 to i64
  store i64 %i.g, ptr %i.f, align 8, !tbaa !3078
  store ptr %i.e, ptr %3, align 8, !tbaa !3079
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_8AnalyzerIS7_NS0_9SimulatorIS7_EENS0_9SatSolverIS7_EEEEEEFvS3_EPSE_St12_PlaceholderILi1EEEEE9_M_invokeERKSt9_Any_dataS3_, ptr %i.c, align 8, !tbaa !150
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_8AnalyzerIS7_NS0_9SimulatorIS7_EENS0_9SatSolverIS7_EEEEEEFvS3_EPSE_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.b, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !202
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit, label %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread

_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store ptr %i.o, ptr %i.i, align 8, !tbaa !3079
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_8AnalyzerIS7_NS0_9SimulatorIS7_EENS0_9SatSolverIS7_EEEEEEFvS3_EPSE_St12_PlaceholderILi1EEEEE9_M_invokeERKSt9_Any_dataS3_, ptr %i.m, align 8, !tbaa !150
  store ptr @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_8AnalyzerIS7_NS0_9SimulatorIS7_EENS0_9SatSolverIS7_EEEEEEFvS3_EPSE_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.n, align 8, !tbaa !21
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.q, ptr %i.h, align 8, !tbaa !125
  br label %bb.b

_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @_ZNSt6vectorISt8functionIFvRKN3rrr6ActionEEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit
  %i.s = phi ptr [ @_ZNSt17_Function_handlerIFvRKN3rrr6ActionEESt5_BindIFMNS0_9OptimizerINS0_10AndNetworkENS0_8AnalyzerIS7_NS0_9SimulatorIS7_EENS0_9SatSolverIS7_EEEEEEFvS3_EPSE_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit.thread ], [ %.pre, %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit ]
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN3rrr10AndNetwork11AddCallbackERKSt8functionIFvRKNS_6ActionEEE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load ptr, ptr %0, align 8, !tbaa !2961
  call void @_ZN3rrr8AnalyzerINS_10AndNetworkENS_9SimulatorIS1_EENS_9SatSolverIS1_EEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(464) %i.u, ptr noundef %i.v, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5848) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::function.35", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %6 = alloca %"class.std::function.35", align 8  ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %9 = alloca %"class.std::function.35", align 8  ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %12 = alloca %"class.std::function.35", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %15 = alloca %"class.std::vector", align 8      ; 8 uses
  %16 = alloca %"class.std::vector", align 8      ; 10 uses
  %17 = alloca %"struct.rrr::Optimizer<rrr::AndNetwork, rrr::Analyzer<rrr::AndNetwork, rrr::Simulator<rrr::AndNetwork>, rrr::SatSolver<rrr::AndNetwork>>>::Stats", align 16 ; 8 uses
  %18 = alloca %"struct.rrr::Optimizer<rrr::AndNetwork, rrr::Analyzer<rrr::AndNetwork, rrr::Simulator<rrr::AndNetwork>, rrr::SatSolver<rrr::AndNetwork>>>::Stats", align 16 ; 8 uses
  %19 = alloca %"class.std::function.315", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %24 = alloca %"class.std::function.2", align 8  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 5 uses
  %i.f = zext i32 %1 to i64                       ; 2 uses
  store i64 %i.f, ptr %i.e, align 8, !tbaa !184
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ %i.f, %bb.a ], [ %i.s, %bb.c ] ; 2 uses
  %.011.i = phi i64 [ 1, %bb.a ], [ %i.t, %bb.c ] ; 4 uses
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %.011.i
  %i.h = lshr i64 %store_forwarded, 30
  %i.i = xor i64 %i.h, %store_forwarded
  %i.j = mul nuw nsw i64 %i.i, 1812433253
  %i.k = add nuw i64 %i.j, %.011.i                ; 2 uses
  %i.l = and i64 %i.k, 4294967295                 ; 2 uses
  store i64 %i.l, ptr %i.g, align 8, !tbaa !184
  %i.m = add nuw nsw i64 %.011.i, 1               ; 3 uses
  %exitcond.not.i = icmp eq i64 %i.m, 624
  br i1 %exitcond.not.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr [8 x i8], ptr %i.e, i64 %i.m
  %i.o = lshr i64 %i.l, 30
  %i.p = xor i64 %i.o, %i.k
  %i.q = mul i64 %i.p, 1812433253
  %i.r = add i64 %i.q, %i.m
  %i.s = and i64 %i.r, 4294967295                 ; 2 uses
  store i64 %i.s, ptr %i.n, align 8, !tbaa !184
  %i.t = add nuw nsw i64 %.011.i, 2
  br label %bb.b

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm.exit: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5568
  store i64 624, ptr %i.u, align 8, !tbaa !1071
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5656
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5664 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %.not.i.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm.exit
  store ptr %i.w, ptr %i.x, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm.exit, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5680
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1166 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5688 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1186
  %.not.i.i10 = icmp eq ptr %i.ac, %i.aa
  br i1 %.not.i.i10, label %_ZNSt6vectorIdSaIdEE5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !1186
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !2986
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %i.ag = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.e)
  %i.ah = urem i64 %i.ag, 18
  %i.ai = trunc nuw nsw i64 %i.ah to i32          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !3081
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE5PrintIJPKciEEEviDpT_(ptr noundef nonnull align 8 dereferenceable(5848) %0, i32 noundef 0, ptr noundef nonnull @.str.102, i32 noundef %i.ai)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.ak, align 8, !tbaa !3082
  %i.al = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 5648
  store i64 %i.al, ptr %i.am, align 8, !tbaa !184
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !3083
  switch i32 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 [
    i32 0, label %bb.h
    i32 1, label %bb.j
    i32 2, label %bb.l
    i32 3, label %bb.t
    i32 4, label %bb.ad
  ]

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call noundef zeroext i1 @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE16RemoveRedundancyEv(ptr noundef nonnull align 8 dereferenceable(5848) %0) ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5800 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.at, align 8
  %i.au = ptrtoint ptr %0 to i64
  store i64 %i.au, ptr %3, align 8, !tbaa !3078
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr9OptimizerINS1_10AndNetworkENS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEE3RunEilEUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.as, align 8, !tbaa !85
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr9OptimizerINS1_10AndNetworkENS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEE3RunEilEUliE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.ar, align 8, !tbaa !21
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE25ApplyReverseTopologicallyERKSt8functionIFviEE(ptr noundef nonnull align 8 dereferenceable(5848) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5752
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ay, ptr %4, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ay, ptr noundef nonnull align 1 dereferenceable(6) @.str.103, i64 6, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 6, ptr %i.az, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.ba, align 2, !tbaa !15
  %i.bb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3rrr9OptimizerINS6_10AndNetworkENS6_8AnalyzerIS8_NS6_9SimulatorIS8_EENS6_9SatSolverIS8_EEEEE5StatsESt4lessIS5_ESaISt4pairIKS5_SG_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 4 uses
  %i.bc = load <4 x i32>, ptr %i.aq, align 8, !tbaa !32
  %i.bd = load <4 x i32>, ptr %i.bb, align 8, !tbaa !32
  %i.be = add nsw <4 x i32> %i.bd, %i.bc
  store <4 x i32> %i.be, ptr %i.bb, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 5816
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bh = load <4 x i32>, ptr %i.bf, align 8, !tbaa !32
  %i.bi = load <4 x i32>, ptr %i.bg, align 8, !tbaa !32
  %i.bj = add nsw <4 x i32> %i.bi, %i.bh
  store <4 x i32> %i.bj, ptr %i.bg, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5832
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bm = load <2 x double>, ptr %i.bk, align 8, !tbaa !537
  %i.bn = load <2 x double>, ptr %i.bl, align 8, !tbaa !537
  %i.bo = fadd <2 x double> %i.bm, %i.bn
  store <2 x double> %i.bo, ptr %i.bl, align 8, !tbaa !537
  %i.bp = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ay
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.br = load i64, ptr %i.ay, align 8, !tbaa !15
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZNK3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE5Stats9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.aq)
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE5PrintIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEviDpT_(ptr noundef nonnull align 8 dereferenceable(5848) %0, i32 noundef 0, ptr noundef nonnull align 8 %5)
  %i.bt = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !15
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.j:                                             ; preds = %bb.g
  %i.by = tail call noundef zeroext i1 @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE16RemoveRedundancyEv(ptr noundef nonnull align 8 dereferenceable(5848) %0) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 5800 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cc, align 8
  %i.cd = ptrtoint ptr %0 to i64
  store i64 %i.cd, ptr %6, align 8, !tbaa !3078
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr9OptimizerINS1_10AndNetworkENS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEE3RunEilEUliE0_E9_M_invokeERKSt9_Any_dataOi, ptr %i.cb, align 8, !tbaa !85
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr9OptimizerINS1_10AndNetworkENS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEE3RunEilEUliE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.ca, align 8, !tbaa !21
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE25ApplyReverseTopologicallyERKSt8functionIFviEE(ptr noundef nonnull align 8 dereferenceable(5848) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !21 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ce, null
  br i1 %.not.i14, label %_ZNSt14_Function_baseD2Ev.exit15, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = call noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit15

_ZNSt14_Function_baseD2Ev.exit15:                 ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 5752
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ch, ptr %7, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ch, ptr noundef nonnull align 1 dereferenceable(5) @.str.104, i64 5, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 5, ptr %i.ci, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 0, ptr %i.cj, align 1, !tbaa !15
  %i.ck = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3rrr9OptimizerINS6_10AndNetworkENS6_8AnalyzerIS8_NS6_9SimulatorIS8_EENS6_9SatSolverIS8_EEEEE5StatsESt4lessIS5_ESaISt4pairIKS5_SG_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %7) ; 4 uses
  %i.cl = load <4 x i32>, ptr %i.bz, align 8, !tbaa !32
  %i.cm = load <4 x i32>, ptr %i.ck, align 8, !tbaa !32
  %i.cn = add nsw <4 x i32> %i.cm, %i.cl
  store <4 x i32> %i.cn, ptr %i.ck, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 5816
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cq = load <4 x i32>, ptr %i.co, align 8, !tbaa !32
  %i.cr = load <4 x i32>, ptr %i.cp, align 8, !tbaa !32
  %i.cs = add nsw <4 x i32> %i.cr, %i.cq
  store <4 x i32> %i.cs, ptr %i.cp, align 8, !tbaa !32
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 5832
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  %i.cv = load <2 x double>, ptr %i.ct, align 8, !tbaa !537
  %i.cw = load <2 x double>, ptr %i.cu, align 8, !tbaa !537
  %i.cx = fadd <2 x double> %i.cv, %i.cw
  store <2 x double> %i.cx, ptr %i.cu, align 8, !tbaa !537
  %i.cy = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
end_hunk_12
begin_hunk_13_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJSt5_BindIFMN3rrr9SchedulerINS5_10AndNetworkENS5_9OptimizerIS7_NS5_11BddAnalyzerIS7_EEEENS5_20LevelBasePartitionerIS7_EEEEFvPKNS5_9ParameterEEPSE_SH_EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bq) #28
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !460
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !461
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !459
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_11BddAnalyzerIS6_EEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_11BddAnalyzerIS6_EEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !817
  %.unpack.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !15 ; 3 uses
  %.elt3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack4.i.i.i.i.i.i.i.i = load i64, ptr %.elt3.i.i.i.i.i.i.i.i, align 8, !tbaa !15
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !204
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !158
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_11BddAnalyzerIS5_EEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_11BddAnalyzerIS5_EEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_11BddAnalyzerIS5_EEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1104
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(872) %i.d, ptr noundef %i.m) #26, !inline_history !4076
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE6RunJobERS5_PNS8_3JobE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(5688) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::function.227", align 8 ; 7 uses
  %i.l = alloca ptr, align 8                      ; 27 uses
  %4 = alloca %"class.std::function.227", align 8 ; 9 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 19 uses
  %6 = alloca %"class.rrr::AndNetwork", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %12 = alloca %"class.rrr::AndNetwork", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::vector.269", align 16 ; 9 uses
  %32 = alloca %"class.std::vector.274", align 16 ; 9 uses
  store ptr %2, ptr %i.l, align 8, !tbaa !4040
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !767, !range !157, !noundef !158
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5688) %1, ptr noundef %i.o, i1 noundef zeroext %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.l, ptr %4, align 8, !tbaa !775
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !817
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.u, align 8, !tbaa !1106
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.t, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !139
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !139 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.x, align 8, !tbaa !139
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !139
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.y, align 8, !tbaa !139
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread: ; preds = %_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.a

_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit: ; preds = %_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #26, !inline_history !1107 ; 0 uses
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !21  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread, %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  %i.ac = phi ptr [ @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread ], [ %.pre, %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit ]
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !764
  switch i32 %i.af, label %bb.bp [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.u
    i32 3, label %bb.bk
  ]

bb.b:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !4040
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4077
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !771
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !771
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.01.0.copyload.i = load i64, ptr %i.ao, align 8, !tbaa !184
  %i.ap = sub nsw i64 %i.am, %.sroa.01.0.copyload.i
  %.neg.i = sdiv i64 %i.ap, -1000000000
  %i.aq = add i64 %.neg.i, %i.an                  ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %..i = select i1 %i.ar, i64 -1, i64 %i.aq
  br label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit: ; preds = %bb.b, %bb.c
  %.1.i = phi i64 [ %..i, %bb.c ], [ 0, %bb.b ]
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5688) %1, i32 noundef %i.ai, i64 noundef %.1.i)
  br label %bb.bp

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !4040 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !4077
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  store i64 %i.av, ptr %5, align 8, !tbaa !184
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.av, %bb.d ], [ %i.bi, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.bj, %bb.f ] ; 4 uses
  %i.aw = getelementptr [8 x i8], ptr %5, i64 %.011.i.i
  %i.ax = lshr i64 %store_forwarded, 30
  %i.ay = xor i64 %i.ax, %store_forwarded
  %i.az = mul nuw nsw i64 %i.ay, 1812433253
  %i.ba = add nuw i64 %i.az, %.011.i.i            ; 2 uses
  %i.bb = and i64 %i.ba, 4294967295               ; 2 uses
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !184
  %i.bc = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.bc, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr [8 x i8], ptr %5, i64 %i.bc
  %i.be = lshr i64 %i.bb, 30
  %i.bf = xor i64 %i.be, %i.ba
  %i.bg = mul i64 %i.bf, 1812433253
  %i.bh = add i64 %i.bg, %i.bc
  %i.bi = and i64 %i.bh, 4294967295               ; 2 uses
  store i64 %i.bi, ptr %i.bd, align 8, !tbaa !184
  %i.bj = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4992 ; 2 uses
  store i64 624, ptr %i.bk, align 8, !tbaa !1071
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !816 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !814
  call void @_ZN3rrr10AndNetworkC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef nonnull align 8 dereferenceable(264) %i.bo) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 20
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 1816
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 4984 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 3168
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 1808
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 1816
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 4984
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, %bb.t
  %i.ci = phi i64 [ 624, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.ih, %bb.t ]
  %.0292 = phi double [ %i.bm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %.2, %bb.t ]
  %.052291 = phi double [ %i.bm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %.153, %bb.t ] ; 2 uses
  %.062290 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.in, %bb.t ] ; 3 uses
  %i.cj = load i64, ptr %i.bp, align 8, !tbaa !771
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.cm = load i64, ptr %i.bp, align 8, !tbaa !771
  %.sroa.01.0.copyload.i71 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.cn = sub nsw i64 %i.cl, %.sroa.01.0.copyload.i71
  %.neg.i72 = sdiv i64 %i.cn, -1000000000
  %i.co = add i64 %.neg.i72, %i.cm
  %or.cond = icmp slt i64 %i.co, 1
  br i1 %or.cond, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267: ; preds = %bb.h, %bb.g
  %.not70 = icmp eq i32 %.062290, 0
  br i1 %.not70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !4040
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !814
  store ptr %i.br, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store i64 19, ptr %i.k, align 8, !tbaa !184
  %i.cs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0) #26 ; 2 uses
  store ptr %i.cs, ptr %7, align 8, !tbaa !26
  %i.ct = load i64, ptr %i.k, align 8, !tbaa !184 ; 3 uses
  store i64 %i.ct, ptr %i.br, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.cs, ptr noundef nonnull align 1 dereferenceable(19) @.str.16, i64 19, i1 false)
  store i64 %i.ct, ptr %i.bs, align 8, !tbaa !12
  %i.cu = load ptr, ptr %7, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  store i8 0, ptr %i.cv, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE7CallAbcEPS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef %i.cr, ptr noundef nonnull align 8 %7)
  %i.cw = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.br
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.cy = load i64, ptr %i.br, align 8, !tbaa !15
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !4040
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.dc, ptr %i.j, align 8, !tbaa !138
  %i.dd = load ptr, ptr %i.bt, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i, label %bb.i, label %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.de = load ptr, ptr %i.bv, align 8, !tbaa !498
  %i.df = call noundef double %i.de(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #26, !inline_history !499 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dg = load ptr, ptr %i.l, align 8, !tbaa !4040 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.bw, ptr %8, align 8, !tbaa !8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !26 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store i64 %i.dk, ptr %i.i, align 8, !tbaa !184
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %bb.j, label %._crit_edge.i.i76

bb.j:                                             ; preds = %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit
  %i.dm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) #26 ; 2 uses
  store ptr %i.dm, ptr %8, align 8, !tbaa !26
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !184
  store i64 %i.dn, ptr %i.bw, align 8, !tbaa !15
  br label %._crit_edge.i.i76

._crit_edge.i.i76:                                ; preds = %bb.j, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit
  %i.do = phi ptr [ %i.dm, %bb.j ], [ %i.bw, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit ] ; 2 uses
  switch i64 %i.dk, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i76
  %i.dp = load i8, ptr %i.di, align 1, !tbaa !15
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.l:                                             ; preds = %._crit_edge.i.i76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.di, i64 %i.dk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i76, %bb.k, %bb.l
  %i.dq = load i64, ptr %i.i, align 8, !tbaa !184 ; 2 uses
  store i64 %i.dq, ptr %i.bx, align 8, !tbaa !12
  %i.dr = load ptr, ptr %8, align 8, !tbaa !26
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  store i8 0, ptr %i.ds, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE5PrintIJPKciSB_SB_SB_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(872) %0, i32 noundef 1, ptr noundef nonnull align 8 %8, ptr noundef nonnull @.str.17, i32 noundef %.062290, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, double noundef %i.df)
  %i.dt = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bw
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.dv = load i64, ptr %i.bw, align 8, !tbaa !15
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267
  %.2.ph = phi double [ %.0292, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267 ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.dx = phi i64 [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 3 uses
  %.060 = phi i32 [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 2 uses
  %.2 = phi double [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.2.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 4 uses
  %i.dy = load i64, ptr %i.bp, align 8, !tbaa !771
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ea = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.eb = load i64, ptr %i.bp, align 8, !tbaa !771 ; 2 uses
  %.sroa.01.0.copyload.i80 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.ec = sub nsw i64 %i.ea, %.sroa.01.0.copyload.i80
  %.neg.i81 = sdiv i64 %i.ec, -1000000000
  %i.ed = add i64 %.neg.i81, %i.eb
  %or.cond281 = icmp slt i64 %i.ed, 1
  br i1 %or.cond281, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ee = phi i64 [ %i.eb, %bb.m ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  %i.ef = icmp ugt i64 %i.dx, 623
  br i1 %i.ef, label %vector.ph526, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph526:                                     ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271
  %.pre.i.i = load i64, ptr %5, align 8, !tbaa !184
  %vector.recur.init529 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body527
end_hunk_13
begin_hunk_14_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE6RunJobERS5_PNS8_3JobE:_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  %i.fn = lshr exact <2 x i64> %i.fm, splat (i64 1)
  %i.fo = xor <2 x i64> %i.fn, %wide.load525
  %i.fp = and <2 x i64> %wide.load, splat (i64 1)
  %i.fq = icmp eq <2 x i64> %i.fp, zeroinitializer
  %i.fr = select <2 x i1> %i.fq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.fs = xor <2 x i64> %i.fo, %i.fr
  store <2 x i64> %i.fs, ptr %i.fg, align 8, !tbaa !184
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ft = icmp eq i64 %index.next, 396
  br i1 %i.ft, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body, !llvm.loop !4079

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body
  %i.fu = load i64, ptr %i.cd, align 8, !tbaa !184
  %i.fv = and i64 %i.fu, -2147483648
  %i.fw = load i64, ptr %5, align 8, !tbaa !184   ; 2 uses
  %i.fx = and i64 %i.fw, 2147483646
  %i.fy = or disjoint i64 %i.fx, %i.fv
  %i.fz = load i64, ptr %i.ce, align 8, !tbaa !184
  %i.ga = lshr exact i64 %i.fy, 1
  %i.gb = xor i64 %i.ga, %i.fz
  %i.gc = and i64 %i.fw, 1
  %.not.i.i408 = icmp eq i64 %i.gc, 0
  %i.gd = select i1 %.not.i.i408, i64 0, i64 2567483615
  %i.ge = xor i64 %i.gb, %i.gd
  store i64 %i.ge, ptr %i.cd, align 8, !tbaa !184
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.gf = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.dx, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271 ] ; 2 uses
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 3 uses
  store i64 %i.gg, ptr %i.bk, align 8, !tbaa !1071
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gf
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !184 ; 2 uses
  %i.gj = lshr i64 %i.gi, 11
  %i.gk = and i64 %i.gj, 4294967295
  %i.gl = xor i64 %i.gk, %i.gi                    ; 2 uses
  %i.gm = shl i64 %i.gl, 7
  %i.gn = and i64 %i.gm, 2636928640
  %i.go = xor i64 %i.gn, %i.gl                    ; 2 uses
  %i.gp = shl i64 %i.go, 15
  %i.gq = and i64 %i.gp, 4022730752
  %i.gr = xor i64 %i.gq, %i.go                    ; 2 uses
  %i.gs = lshr i64 %i.gr, 18
  %i.gt = xor i64 %i.gs, %i.gr
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = icmp eq i64 %i.ee, 0
  br i1 %i.gv, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89, label %bb.n

bb.n:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.gw = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.gx = load i64, ptr %i.bp, align 8, !tbaa !771
  %.sroa.01.0.copyload.i85 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.gy = sub nsw i64 %i.gw, %.sroa.01.0.copyload.i85
  %.neg.i86 = sdiv i64 %i.gy, -1000000000
  %i.gz = add i64 %.neg.i86, %i.gx                ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  %..i87 = select i1 %i.ha, i64 -1, i64 %i.gz
  br label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89: ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %bb.n
  %.1.i88 = phi i64 [ %..i87, %bb.n ], [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5688) %1, i32 noundef %i.gu, i64 noundef %.1.i88)
  %i.hb = load ptr, ptr %i.l, align 8, !tbaa !4040
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !814
  store ptr %i.by, ptr %9, align 8, !tbaa !8
  store i32 845374502, ptr %i.by, align 8
  store i64 4, ptr %i.bz, align 8, !tbaa !12
  store i8 0, ptr %i.cc, align 4, !tbaa !15
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE7CallAbcEPS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef %i.hd, ptr noundef nonnull align 8 %9)
  %i.he = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.by
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89
  %i.hg = load i64, ptr %i.by, align 8, !tbaa !15
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %i.hi = load ptr, ptr %i.l, align 8, !tbaa !4040
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.hk, ptr %i.h, align 8, !tbaa !138
  %i.hl = load ptr, ptr %i.bt, align 8, !tbaa !21
  %.not.i.i95 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i95, label %bb.o, label %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hm = load ptr, ptr %i.bv, align 8, !tbaa !498
  %i.hn = call noundef double %i.hm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.h) #26, !inline_history !499 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ho = load ptr, ptr %i.l, align 8, !tbaa !4040 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  store ptr %i.ca, ptr %10, align 8, !tbaa !8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !26 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 %i.hs, ptr %i.g, align 8, !tbaa !184
  %i.ht = icmp ugt i64 %i.hs, 15
  br i1 %i.ht, label %bb.p, label %._crit_edge.i.i97

bb.p:                                             ; preds = %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96
  %i.hu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) #26 ; 2 uses
  store ptr %i.hu, ptr %10, align 8, !tbaa !26
  %i.hv = load i64, ptr %i.g, align 8, !tbaa !184
  store i64 %i.hv, ptr %i.ca, align 8, !tbaa !15
  br label %._crit_edge.i.i97

._crit_edge.i.i97:                                ; preds = %bb.p, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96
  %i.hw = phi ptr [ %i.hu, %bb.p ], [ %i.ca, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96 ] ; 2 uses
  switch i64 %i.hs, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98
  ]

bb.q:                                             ; preds = %._crit_edge.i.i97
  %i.hx = load i8, ptr %i.hq, align 1, !tbaa !15
  store i8 %i.hx, ptr %i.hw, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98

bb.r:                                             ; preds = %._crit_edge.i.i97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hw, ptr align 1 %i.hq, i64 %i.hs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98: ; preds = %._crit_edge.i.i97, %bb.q, %bb.r
  %i.hy = load i64, ptr %i.g, align 8, !tbaa !184 ; 2 uses
  store i64 %i.hy, ptr %i.cb, align 8, !tbaa !12
  %i.hz = load ptr, ptr %10, align 8, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hy
  store i8 0, ptr %i.ia, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE5PrintIJPKciSB_SB_SB_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(872) %0, i32 noundef 1, ptr noundef nonnull align 8 %10, ptr noundef nonnull @.str.22, i32 noundef %.060, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, double noundef %i.hn)
  %i.ib = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.ca
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98
  %i.id = load i64, ptr %i.ca, align 8, !tbaa !15
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  %i.if = fcmp olt double %i.hn, %.2
  %i.ig = add nuw nsw i32 %.060, 1
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, !llvm.loop !4080

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.ih = phi i64 [ %i.dx, %bb.m ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ]
  %i.ii = fcmp olt double %.2, %.052291
  br i1 %i.ii, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread
  %i.ij = load ptr, ptr %i.l, align 8, !tbaa !4040
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !814
  %i.im = call noundef nonnull align 8 dereferenceable(264) ptr @_ZN3rrr10AndNetworkaSERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef nonnull align 8 dereferenceable(264) %i.il) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, %bb.s
  %.163 = phi i32 [ 0, %bb.s ], [ %.062290, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread ] ; 2 uses
  %.153 = phi double [ %.2, %bb.s ], [ %.052291, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread ]
  %i.in = add nsw i32 %.163, 1
  %i.io = icmp slt i32 %.163, 9
  br i1 %i.io, label %bb.g, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread, !llvm.loop !4081

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread: ; preds = %bb.h, %bb.t
  %i.ip = load ptr, ptr %i.l, align 8, !tbaa !4040
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !814
  %i.is = call noundef nonnull align 8 dereferenceable(264) ptr @_ZN3rrr10AndNetworkaSERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %i.ir, ptr noundef nonnull align 8 dereferenceable(264) %6) ; 0 uses
  call void @_ZN3rrr10AndNetworkD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.bp

bb.u:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.it = load ptr, ptr %i.l, align 8, !tbaa !4040 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !4077
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  store i64 %i.iw, ptr %11, align 8, !tbaa !184
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %store_forwarded536 = phi i64 [ %i.iw, %bb.u ], [ %i.jj, %bb.w ] ; 2 uses
  %.011.i.i102 = phi i64 [ 1, %bb.u ], [ %i.jk, %bb.w ] ; 4 uses
  %i.ix = getelementptr [8 x i8], ptr %11, i64 %.011.i.i102
  %i.iy = lshr i64 %store_forwarded536, 30
  %i.iz = xor i64 %i.iy, %store_forwarded536
  %i.ja = mul nuw nsw i64 %i.iz, 1812433253
  %i.jb = add nuw i64 %i.ja, %.011.i.i102         ; 2 uses
  %i.jc = and i64 %i.jb, 4294967295               ; 2 uses
  store i64 %i.jc, ptr %i.ix, align 8, !tbaa !184
  %i.jd = add nuw nsw i64 %.011.i.i102, 1         ; 3 uses
  %exitcond.not.i.i103 = icmp eq i64 %i.jd, 624
  br i1 %exitcond.not.i.i103, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.je = getelementptr [8 x i8], ptr %11, i64 %i.jd
  %i.jf = lshr i64 %i.jc, 30
  %i.jg = xor i64 %i.jf, %i.jb
  %i.jh = mul i64 %i.jg, 1812433253
  %i.ji = add i64 %i.jh, %i.jd
  %i.jj = and i64 %i.ji, 4294967295               ; 2 uses
  store i64 %i.jj, ptr %i.je, align 8, !tbaa !184
  %i.jk = add nuw nsw i64 %.011.i.i102, 2
  br label %bb.v

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104: ; preds = %bb.v
  %i.jl = getelementptr inbounds nuw i8, ptr %11, i64 4992
  store i64 624, ptr %i.jl, align 8, !tbaa !1071
  %i.jm = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !816
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.jo = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !814
  call void @_ZN3rrr10AndNetworkC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %12, ptr noundef nonnull align 8 dereferenceable(264) %i.jp) #26
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.kz = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.la = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.lb = getelementptr inbounds nuw i8, ptr %26, i64 22
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %.055289 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %i.vi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 3 uses
  %.056288 = phi double [ %i.jn, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %.157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 2 uses
  %.058287 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %.159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 4 uses
  %i.lc = load i64, ptr %i.jq, align 8, !tbaa !771
  %i.ld = icmp eq i64 %i.lc, 0
  br i1 %i.ld, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.le = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.lf = load i64, ptr %i.jq, align 8, !tbaa !771
  %.sroa.01.0.copyload.i105 = load i64, ptr %i.jr, align 8, !tbaa !184
  %i.lg = sub nsw i64 %i.le, %.sroa.01.0.copyload.i105
  %.neg.i106 = sdiv i64 %i.lg, -1000000000
  %i.lh = add i64 %.neg.i106, %i.lf
  %or.cond282 = icmp slt i64 %i.lh, 1
  br i1 %or.cond282, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275: ; preds = %bb.y, %bb.x
  %i.li = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %11)
  %i.lj = trunc i64 %i.li to i32                  ; 3 uses
  %i.lk = and i32 %i.lj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %i.js, ptr %13, align 8, !tbaa !8
  store i64 0, ptr %i.jt, align 8, !tbaa !12
  store i8 0, ptr %i.js, align 8, !tbaa !15
  %i.ll = and i32 %i.lj, 2
  %.not = icmp eq i32 %i.ll, 0
  br i1 %.not, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store ptr %i.ju, ptr %16, align 8, !tbaa !8
  store i64 2322578080581165115, ptr %i.ju, align 8
  store i64 8, ptr %i.jv, align 8, !tbaa !12
  store i8 0, ptr %i.ky, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !4082)
  %i.lm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.24, i64 noundef 273) #26, !noalias !4082 ; 6 uses
  store ptr %i.jw, ptr %15, align 8, !tbaa !8, !alias.scope !4082
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !26 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 16 ; 5 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !12 ; 3 uses
  %i.ls = icmp ult i64 %i.lr, 16
  call void @llvm.assume(i1 %i.ls)
  %i.lt = add nuw nsw i64 %i.lr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jw, ptr noundef nonnull align 8 dereferenceable(1) %i.lo, i64 %i.lt, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ln, ptr %15, align 8, !tbaa !26, !alias.scope !4082
  %i.lu = load i64, ptr %i.lo, align 8, !tbaa !15
  store i64 %i.lu, ptr %i.jw, align 8, !tbaa !15, !alias.scope !4082
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !12
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %i.lv = phi i64 [ %i.lr, %bb.z ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store i64 %i.lv, ptr %i.jx, align 8, !tbaa !12, !alias.scope !4082
  store ptr %i.lo, ptr %i.lm, align 8, !tbaa !26
  store i64 0, ptr %i.lw, align 8, !tbaa !12
  store i8 0, ptr %i.lo, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !4085)
  %i.lx = load i64, ptr %i.jx, align 8, !tbaa !12, !noalias !4085
  %i.ly = add i64 %i.lx, -4611686018427387898
  %i.lz = icmp ult i64 %i.ly, 6
  br i1 %i.lz, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113

bb.aa:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.148) #27, !noalias !4085
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.ma = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.26, i64 noundef 6) #26, !noalias !4085 ; 6 uses
  store ptr %i.jy, ptr %14, align 8, !tbaa !8, !alias.scope !4085
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !26 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 5 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !12 ; 3 uses
  %i.mg = icmp ult i64 %i.mf, 16
  call void @llvm.assume(i1 %i.mg)
  %i.mh = add nuw nsw i64 %i.mf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jy, ptr noundef nonnull align 8 dereferenceable(1) %i.mc, i64 %i.mh, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113
  store ptr %i.mb, ptr %14, align 8, !tbaa !26, !alias.scope !4085
  %i.mi = load i64, ptr %i.mc, align 8, !tbaa !15
  store i64 %i.mi, ptr %i.jy, align 8, !tbaa !15, !alias.scope !4085
  %.phi.trans.insert.i115 = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %.pre.i116 = load i64, ptr %.phi.trans.insert.i115, align 8, !tbaa !12
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  %i.mj = phi i64 [ %i.mf, %bb.ab ], [ %.pre.i116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i64 %i.mj, ptr %i.jz, align 8, !tbaa !12, !alias.scope !4085
  store ptr %i.mc, ptr %i.ma, align 8, !tbaa !26
  store i64 0, ptr %i.mk, align 8, !tbaa !12
  store i8 0, ptr %i.mc, align 8, !tbaa !15
  %i.ml = load ptr, ptr %13, align 8, !tbaa !26   ; 6 uses
  %i.mm = icmp eq ptr %i.ml, %i.js
  %i.mn = load ptr, ptr %14, align 8, !tbaa !26   ; 5 uses
  %i.mo = icmp eq ptr %i.mn, %i.jy                ; 2 uses
  br i1 %i.mm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117
  br i1 %i.mo, label %bb.ac, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117
  br i1 %i.mo, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.mp = load i64, ptr %i.jz, align 8, !tbaa !12 ; 3 uses
  %i.mq = icmp ult i64 %i.mp, 16
  call void @llvm.assume(i1 %i.mq)
  switch i64 %i.mp, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
end_hunk_14
begin_hunk_15_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE5PrintIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEviSF_DpT_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit2: ; preds = %._crit_edge.i.i1, %bb.m, %bb.n
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !184 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !12
  %i.bn = load ptr, ptr %5, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bp = load ptr, ptr %5, align 8, !tbaa !26
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !12
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bp, i64 noundef %i.bq) #26 ; 0 uses
  %i.bs = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bc
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit2
  %i.bu = load i64, ptr %i.bc, align 8, !tbaa !15
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  %i.bw = load ptr, ptr @_ZSt4cout, align 8, !tbaa !204
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 240
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !206 ; 6 uses
  %.not.i.i.i7 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i7, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !221
  %.not.i1.i.i9 = icmp eq i8 %i.cd, 0
  br i1 %.not.i1.i.i9, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 67
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cb) #26
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !204
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef signext i8 %i.ci(ptr noundef nonnull align 8 dereferenceable(570) %i.cb, i8 noundef signext 10) #26, !inline_history !226
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11: ; preds = %bb.p, %bb.q
  %.0.i.i.i10 = phi i8 [ %i.cf, %bb.p ], [ %i.cj, %bb.q ]
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i10) #26
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) #26 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3rrr20LevelBasePartitionerINS_10AndNetworkEE7ExtractEi(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::function.35", align 8  ; 9 uses
  %3 = alloca %"class.std::mersenne_twister_engine", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !811
  %i.d = load i32, ptr %i.c, align 8, !tbaa !88   ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !181  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !447  ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !181  ; 2 uses
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = shl nsw i64 %i.m, 3
  %i.o = zext i32 %i.i to i64
  %i.p = add nsw i64 %i.n, %i.o                   ; 2 uses
  %i.q = icmp ugt i64 %i.p, %i.e
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sdiv i32 %i.d, 64
  %.sext = sext i32 %i.r to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.sext
  %i.t = and i64 %i.e, -9223372036854775745
  %i.u = icmp ugt i64 %i.t, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.u, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.s, i64 %storemerge.idx.i.i.i.i
  %i.v = and i32 %i.d, 63
  store ptr %storemerge.i.i.i.i, ptr %i.f, align 8
  store i32 %i.v, ptr %i.h, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

bb.c:                                             ; preds = %bb.a
  %i.w = sub nuw i64 %i.e, %i.p
  tail call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %i.g, i32 %i.i, i64 noundef %i.w, i1 noundef zeroext false)
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.b, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, label %bb.f

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.ac, align 8, !tbaa !4119
  %i.ad = load ptr, ptr %0, align 8, !tbaa !811   ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !88 ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %i.af = sext i32 %i.ae to i64
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.af)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !811
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %i.ag = phi ptr [ %.pre.i, %bb.d ], [ %i.ad, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aj, align 8
  %i.ak = ptrtoint ptr %0 to i64
  store i64 %i.ak, ptr %2, align 8, !tbaa !4120
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr20LevelBasePartitionerINS1_10AndNetworkEE12ComputeLevelEvEUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.ai, align 8, !tbaa !85
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr20LevelBasePartitionerINS1_10AndNetworkEE12ComputeLevelEvEUliE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.ah, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  %.sroa.04.07.i.i = load ptr, ptr %i.al, align 8, !tbaa !42 ; 3 uses
  %.not8.i.i = icmp eq ptr %.sroa.04.07.i.i, %i.al
  br i1 %.not8.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 16
  %i.an = load i32, ptr %i.am, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.an, ptr %i.a, align 4, !tbaa !32
  br label %_ZNKSt8functionIFviEEclEi.exit.i.i

thread-pre-split.i:                               ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 16
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !32
  %.not.i.i.i.i = icmp eq ptr %.pr3.i, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNKSt8functionIFviEEclEi.exit.i.i

bb.e:                                             ; preds = %thread-pre-split.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit.i.i:               ; preds = %thread-pre-split.i, %.lr.ph.i.preheader.i
  %.sroa.04.09.i5.i = phi ptr [ %.sroa.04.07.i.i, %.lr.ph.i.preheader.i ], [ %.sroa.04.0.i.i, %thread-pre-split.i ]
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !85
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !4122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.i.i = load ptr, ptr %.sroa.04.09.i5.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.04.0.i.i, %i.al
  %.pr3.i = load ptr, ptr %i.ah, align 8, !tbaa !21 ; 3 uses
  br i1 %.not.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i, label %thread-pre-split.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i: ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i
  %.not.i2.i = icmp eq ptr %.pr3.i, null
  br i1 %.not.i2.i, label %_ZN3rrr20LevelBasePartitionerINS_10AndNetworkEE12ComputeLevelEv.exit, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.ar = phi ptr [ %.pr3.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i ], [ @_ZNSt17_Function_handlerIFviEZN3rrr20LevelBasePartitionerINS1_10AndNetworkEE12ComputeLevelEvEUliE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i ]
  %i.as = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !4123 ; 0 uses
  br label %_ZN3rrr20LevelBasePartitionerINS_10AndNetworkEE12ComputeLevelEv.exit

_ZN3rrr20LevelBasePartitionerINS_10AndNetworkEE12ComputeLevelEv.exit: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN3rrr20LevelBasePartitionerINS_10AndNetworkEE12ComputeLevelEv.exit, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.at = zext i32 %1 to i64                      ; 2 uses
  store i64 %i.at, ptr %3, align 8, !tbaa !184
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %store_forwarded = phi i64 [ %i.at, %bb.f ], [ %i.bg, %bb.h ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.f ], [ %i.bh, %bb.h ] ; 4 uses
  %i.au = getelementptr [8 x i8], ptr %3, i64 %.011.i.i
  %i.av = lshr i64 %store_forwarded, 30
  %i.aw = xor i64 %i.av, %store_forwarded
  %i.ax = mul nuw nsw i64 %i.aw, 1812433253
  %i.ay = add nuw i64 %i.ax, %.011.i.i            ; 2 uses
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !184
  %i.ba = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr [8 x i8], ptr %3, i64 %i.ba
  %i.bc = lshr i64 %i.az, 30
  %i.bd = xor i64 %i.bc, %i.ay
  %i.be = mul i64 %i.bd, 1812433253
  %i.bf = add i64 %i.be, %i.ba
  %i.bg = and i64 %i.bf, 4294967295               ; 2 uses
  store i64 %i.bg, ptr %i.bb, align 8, !tbaa !184
  %i.bh = add nuw nsw i64 %.011.i.i, 2
  br label %bb.g

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 4992
  store i64 624, ptr %i.bi, align 8, !tbaa !1071
  %i.bj = load ptr, ptr %0, align 8, !tbaa !811   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42, !noalias !4124 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !90, !noalias !4124 ; 4 uses
  %i.bo = icmp ugt i64 %i.bn, 2305843009213693951
  br i1 %i.bo, label %bb.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

bb.i:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27, !noalias !4124
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
  %.not.i7.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i7.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.bp = shl nuw nsw i64 %i.bn, 2
  %i.bq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #29, !noalias !4124
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.br = phi ptr [ %i.bq, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 7 uses
  %.not6.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bk
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK3rrr10AndNetwork7GetIntsEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.br, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bl, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !32, !noalias !4124
  store i32 %i.bt, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !32, !noalias !4124
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bv = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !42, !noalias !4124 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.bk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK3rrr10AndNetwork7GetIntsEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1454

_ZNK3rrr10AndNetwork7GetIntsEv.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.br, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %i.br, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(5000) %3)
  %i.bw = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = lshr exact i64 %i.by, 2                 ; 2 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %.not1955 = icmp sgt i32 %i.ca, 0
  br i1 %.not1955, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK3rrr10AndNetwork7GetIntsEv.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count = and i64 %i.bz, 2147483647
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi ptr [ %.pre, %.lr.ph ], [ %i.fd, %bb.q ] ; 2 uses
  %i.ch = phi ptr [ %.pre, %.lr.ph ], [ %i.fe, %bb.q ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !32 ; 6 uses
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = sdiv i32 %i.cj, 64
  %.sext50 = sext i32 %i.cl to i64                ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %.sext50
  %i.cn = and i64 %i.ck, -9223372036854775745
  %i.co = icmp ugt i64 %i.cn, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.co, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.cm, i64 %storemerge.idx.i.i.i.i.i
  %i.cp = and i64 %i.ck, 63
  %i.cq = shl nuw i64 1, %i.cp                    ; 2 uses
  %i.cr = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !184
  %i.cs = and i64 %i.cq, %i.cr
  %.not51 = icmp eq i64 %i.cs, 0
  br i1 %.not51, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ct = load ptr, ptr %i.cb, align 8, !tbaa !92 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ct, %bb.k ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cc, %bb.k ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !32
  %i.cw = icmp slt i32 %i.cv, %i.cj               ; 2 uses
  %.19.i.i.i = select i1 %i.cw, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.cw, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i23, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !153

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cx = icmp eq ptr %.19.i.i.i, %i.cc
  br i1 %i.cx, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit:      ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !32
  %.not52 = icmp slt i32 %i.cj, %i.cz
  br i1 %.not52, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread, label %bb.p

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread: ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i, %bb.k, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit
  %i.da = load i32, ptr %i.cd, align 8, !tbaa !772
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %bb.l, label %_ZN3rrr20LevelBasePartitionerINS_10AndNetworkEE5PrintIJPKciS5_iS5_iS5_EEEviDpT_.exit

bb.l:                                             ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread
  %i.dc = load ptr, ptr %i.ce, align 8, !tbaa !26
  %i.dd = load i64, ptr %i.cf, align 8, !tbaa !12
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.dc, i64 noundef %i.dd) #26 ; 0 uses
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.179, i64 noundef 26) #26 ; 0 uses
  %i.dg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  %i.dh = load ptr, ptr @_ZSt4cout, align 8, !tbaa !204
  %i.di = getelementptr i8, ptr %i.dh, i64 -24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 4, ptr %i.dl, align 8, !tbaa !1310
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.cj) #26
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  %i.do = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.128, i64 noundef 1) #26 ; 0 uses
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  %i.dq = load ptr, ptr @_ZSt4cout, align 8, !tbaa !204
  %i.dr = getelementptr i8, ptr %i.dq, i64 -24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 4, ptr %i.du, align 8, !tbaa !1310
  %i.dv = trunc nuw nsw i64 %indvars.iv to i32
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.dv) #26
  %i.dx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  %i.dy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.129, i64 noundef 1) #26 ; 0 uses
  %i.dz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  %i.ea = load ptr, ptr @_ZSt4cout, align 8, !tbaa !204
  %i.eb = getelementptr i8, ptr %i.ea, i64 -24
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i64 4, ptr %i.ee, align 8, !tbaa !1310
  %i.ef = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.ca) #26
  %i.eg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  %i.eh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 1) #26 ; 0 uses
  %i.ei = load ptr, ptr @_ZSt4cout, align 8, !tbaa !204
  %i.ej = getelementptr i8, ptr %i.ei, i64 -24
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 240
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !206 ; 6 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i24, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.l
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !221
  %.not.i1.i.i.i = icmp eq i8 %i.ep, 0
  br i1 %.not.i1.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 67
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.en) #26
  %i.es = load ptr, ptr %i.en, align 8, !tbaa !204
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call noundef signext i8 %i.eu(ptr noundef nonnull align 8 dereferenceable(570) %i.en, i8 noundef signext 10) #26, !inline_history !4127
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

end_hunk_15
begin_hunk_16_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJSt5_BindIFMN3rrr9SchedulerINS5_10AndNetworkENS5_9OptimizerIS7_NS5_15BddMspfAnalyzerIS7_EEEENS5_20LevelBasePartitionerIS7_EEEEFvPKNS5_9ParameterEEPSE_SH_EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bq) #28
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !460
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !461
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !459
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_15BddMspfAnalyzerIS6_EEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_15BddMspfAnalyzerIS6_EEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !911
  %.unpack.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !15 ; 3 uses
  %.elt3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack4.i.i.i.i.i.i.i.i = load i64, ptr %.elt3.i.i.i.i.i.i.i.i, align 8, !tbaa !15
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !204
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !158
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_15BddMspfAnalyzerIS5_EEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_15BddMspfAnalyzerIS5_EEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_15BddMspfAnalyzerIS5_EEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1104
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(872) %i.d, ptr noundef %i.m) #26, !inline_history !4260
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE6RunJobERS5_PNS8_3JobE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(5720) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::function.227", align 8 ; 7 uses
  %i.l = alloca ptr, align 8                      ; 27 uses
  %4 = alloca %"class.std::function.227", align 8 ; 9 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 19 uses
  %6 = alloca %"class.rrr::AndNetwork", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %12 = alloca %"class.rrr::AndNetwork", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::vector.269", align 16 ; 9 uses
  %32 = alloca %"class.std::vector.274", align 16 ; 9 uses
  store ptr %2, ptr %i.l, align 8, !tbaa !4224
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !908
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !863, !range !157, !noundef !158
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5720) %1, ptr noundef %i.o, i1 noundef zeroext %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.l, ptr %4, align 8, !tbaa !870
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !911
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.u, align 8, !tbaa !1106
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.t, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !139
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !139 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.x, align 8, !tbaa !139
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !139
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.y, align 8, !tbaa !139
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread: ; preds = %_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.a

_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit: ; preds = %_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #26, !inline_history !2266 ; 0 uses
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !21  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread, %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  %i.ac = phi ptr [ @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread ], [ %.pre, %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit ]
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !860
  switch i32 %i.af, label %bb.bp [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.u
    i32 3, label %bb.bk
  ]

bb.b:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !4224
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4261
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !867
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !867
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.01.0.copyload.i = load i64, ptr %i.ao, align 8, !tbaa !184
  %i.ap = sub nsw i64 %i.am, %.sroa.01.0.copyload.i
  %.neg.i = sdiv i64 %i.ap, -1000000000
  %i.aq = add i64 %.neg.i, %i.an                  ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %..i = select i1 %i.ar, i64 -1, i64 %i.aq
  br label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit: ; preds = %bb.b, %bb.c
  %.1.i = phi i64 [ %..i, %bb.c ], [ 0, %bb.b ]
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5720) %1, i32 noundef %i.ai, i64 noundef %.1.i)
  br label %bb.bp

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !4224 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !4261
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  store i64 %i.av, ptr %5, align 8, !tbaa !184
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.av, %bb.d ], [ %i.bi, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.bj, %bb.f ] ; 4 uses
  %i.aw = getelementptr [8 x i8], ptr %5, i64 %.011.i.i
  %i.ax = lshr i64 %store_forwarded, 30
  %i.ay = xor i64 %i.ax, %store_forwarded
  %i.az = mul nuw nsw i64 %i.ay, 1812433253
  %i.ba = add nuw i64 %i.az, %.011.i.i            ; 2 uses
  %i.bb = and i64 %i.ba, 4294967295               ; 2 uses
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !184
  %i.bc = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.bc, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr [8 x i8], ptr %5, i64 %i.bc
  %i.be = lshr i64 %i.bb, 30
  %i.bf = xor i64 %i.be, %i.ba
  %i.bg = mul i64 %i.bf, 1812433253
  %i.bh = add i64 %i.bg, %i.bc
  %i.bi = and i64 %i.bh, 4294967295               ; 2 uses
  store i64 %i.bi, ptr %i.bd, align 8, !tbaa !184
  %i.bj = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4992 ; 2 uses
  store i64 624, ptr %i.bk, align 8, !tbaa !1071
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !910 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !908
  call void @_ZN3rrr10AndNetworkC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef nonnull align 8 dereferenceable(264) %i.bo) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 20
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 1816
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 4984 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 3168
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 1808
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 1816
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 4984
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, %bb.t
  %i.ci = phi i64 [ 624, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.ih, %bb.t ]
  %.0292 = phi double [ %i.bm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %.2, %bb.t ]
  %.052291 = phi double [ %i.bm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %.153, %bb.t ] ; 2 uses
  %.062290 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.in, %bb.t ] ; 3 uses
  %i.cj = load i64, ptr %i.bp, align 8, !tbaa !867
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.cm = load i64, ptr %i.bp, align 8, !tbaa !867
  %.sroa.01.0.copyload.i71 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.cn = sub nsw i64 %i.cl, %.sroa.01.0.copyload.i71
  %.neg.i72 = sdiv i64 %i.cn, -1000000000
  %i.co = add i64 %.neg.i72, %i.cm
  %or.cond = icmp slt i64 %i.co, 1
  br i1 %or.cond, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267: ; preds = %bb.h, %bb.g
  %.not70 = icmp eq i32 %.062290, 0
  br i1 %.not70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !4224
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !908
  store ptr %i.br, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store i64 19, ptr %i.k, align 8, !tbaa !184
  %i.cs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0) #26 ; 2 uses
  store ptr %i.cs, ptr %7, align 8, !tbaa !26
  %i.ct = load i64, ptr %i.k, align 8, !tbaa !184 ; 3 uses
  store i64 %i.ct, ptr %i.br, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.cs, ptr noundef nonnull align 1 dereferenceable(19) @.str.16, i64 19, i1 false)
  store i64 %i.ct, ptr %i.bs, align 8, !tbaa !12
  %i.cu = load ptr, ptr %7, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  store i8 0, ptr %i.cv, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE7CallAbcEPS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef %i.cr, ptr noundef nonnull align 8 %7)
  %i.cw = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.br
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.cy = load i64, ptr %i.br, align 8, !tbaa !15
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !4224
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.dc, ptr %i.j, align 8, !tbaa !138
  %i.dd = load ptr, ptr %i.bt, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i, label %bb.i, label %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.de = load ptr, ptr %i.bv, align 8, !tbaa !498
  %i.df = call noundef double %i.de(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #26, !inline_history !499 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dg = load ptr, ptr %i.l, align 8, !tbaa !4224 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.bw, ptr %8, align 8, !tbaa !8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !26 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store i64 %i.dk, ptr %i.i, align 8, !tbaa !184
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %bb.j, label %._crit_edge.i.i76

bb.j:                                             ; preds = %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit
  %i.dm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) #26 ; 2 uses
  store ptr %i.dm, ptr %8, align 8, !tbaa !26
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !184
  store i64 %i.dn, ptr %i.bw, align 8, !tbaa !15
  br label %._crit_edge.i.i76

._crit_edge.i.i76:                                ; preds = %bb.j, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit
  %i.do = phi ptr [ %i.dm, %bb.j ], [ %i.bw, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit ] ; 2 uses
  switch i64 %i.dk, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i76
  %i.dp = load i8, ptr %i.di, align 1, !tbaa !15
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.l:                                             ; preds = %._crit_edge.i.i76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.di, i64 %i.dk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i76, %bb.k, %bb.l
  %i.dq = load i64, ptr %i.i, align 8, !tbaa !184 ; 2 uses
  store i64 %i.dq, ptr %i.bx, align 8, !tbaa !12
  %i.dr = load ptr, ptr %8, align 8, !tbaa !26
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  store i8 0, ptr %i.ds, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE5PrintIJPKciSB_SB_SB_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(872) %0, i32 noundef 1, ptr noundef nonnull align 8 %8, ptr noundef nonnull @.str.17, i32 noundef %.062290, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, double noundef %i.df)
  %i.dt = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bw
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.dv = load i64, ptr %i.bw, align 8, !tbaa !15
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267
  %.2.ph = phi double [ %.0292, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread267 ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.dx = phi i64 [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 3 uses
  %.060 = phi i32 [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 2 uses
  %.2 = phi double [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.2.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 4 uses
  %i.dy = load i64, ptr %i.bp, align 8, !tbaa !867
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ea = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.eb = load i64, ptr %i.bp, align 8, !tbaa !867 ; 2 uses
  %.sroa.01.0.copyload.i80 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.ec = sub nsw i64 %i.ea, %.sroa.01.0.copyload.i80
  %.neg.i81 = sdiv i64 %i.ec, -1000000000
  %i.ed = add i64 %.neg.i81, %i.eb
  %or.cond281 = icmp slt i64 %i.ed, 1
  br i1 %or.cond281, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ee = phi i64 [ %i.eb, %bb.m ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  %i.ef = icmp ugt i64 %i.dx, 623
  br i1 %i.ef, label %vector.ph526, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph526:                                     ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271
  %.pre.i.i = load i64, ptr %5, align 8, !tbaa !184
  %vector.recur.init529 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body527
end_hunk_16
begin_hunk_17_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE6RunJobERS5_PNS8_3JobE:_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  %i.fn = lshr exact <2 x i64> %i.fm, splat (i64 1)
  %i.fo = xor <2 x i64> %i.fn, %wide.load525
  %i.fp = and <2 x i64> %wide.load, splat (i64 1)
  %i.fq = icmp eq <2 x i64> %i.fp, zeroinitializer
  %i.fr = select <2 x i1> %i.fq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.fs = xor <2 x i64> %i.fo, %i.fr
  store <2 x i64> %i.fs, ptr %i.fg, align 8, !tbaa !184
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ft = icmp eq i64 %index.next, 396
  br i1 %i.ft, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body, !llvm.loop !4263

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body
  %i.fu = load i64, ptr %i.cd, align 8, !tbaa !184
  %i.fv = and i64 %i.fu, -2147483648
  %i.fw = load i64, ptr %5, align 8, !tbaa !184   ; 2 uses
  %i.fx = and i64 %i.fw, 2147483646
  %i.fy = or disjoint i64 %i.fx, %i.fv
  %i.fz = load i64, ptr %i.ce, align 8, !tbaa !184
  %i.ga = lshr exact i64 %i.fy, 1
  %i.gb = xor i64 %i.ga, %i.fz
  %i.gc = and i64 %i.fw, 1
  %.not.i.i408 = icmp eq i64 %i.gc, 0
  %i.gd = select i1 %.not.i.i408, i64 0, i64 2567483615
  %i.ge = xor i64 %i.gb, %i.gd
  store i64 %i.ge, ptr %i.cd, align 8, !tbaa !184
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.gf = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.dx, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread271 ] ; 2 uses
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 3 uses
  store i64 %i.gg, ptr %i.bk, align 8, !tbaa !1071
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gf
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !184 ; 2 uses
  %i.gj = lshr i64 %i.gi, 11
  %i.gk = and i64 %i.gj, 4294967295
  %i.gl = xor i64 %i.gk, %i.gi                    ; 2 uses
  %i.gm = shl i64 %i.gl, 7
  %i.gn = and i64 %i.gm, 2636928640
  %i.go = xor i64 %i.gn, %i.gl                    ; 2 uses
  %i.gp = shl i64 %i.go, 15
  %i.gq = and i64 %i.gp, 4022730752
  %i.gr = xor i64 %i.gq, %i.go                    ; 2 uses
  %i.gs = lshr i64 %i.gr, 18
  %i.gt = xor i64 %i.gs, %i.gr
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = icmp eq i64 %i.ee, 0
  br i1 %i.gv, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89, label %bb.n

bb.n:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.gw = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.gx = load i64, ptr %i.bp, align 8, !tbaa !867
  %.sroa.01.0.copyload.i85 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.gy = sub nsw i64 %i.gw, %.sroa.01.0.copyload.i85
  %.neg.i86 = sdiv i64 %i.gy, -1000000000
  %i.gz = add i64 %.neg.i86, %i.gx                ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  %..i87 = select i1 %i.ha, i64 -1, i64 %i.gz
  br label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89: ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %bb.n
  %.1.i88 = phi i64 [ %..i87, %bb.n ], [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5720) %1, i32 noundef %i.gu, i64 noundef %.1.i88)
  %i.hb = load ptr, ptr %i.l, align 8, !tbaa !4224
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !908
  store ptr %i.by, ptr %9, align 8, !tbaa !8
  store i32 845374502, ptr %i.by, align 8
  store i64 4, ptr %i.bz, align 8, !tbaa !12
  store i8 0, ptr %i.cc, align 4, !tbaa !15
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE7CallAbcEPS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef %i.hd, ptr noundef nonnull align 8 %9)
  %i.he = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.by
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89
  %i.hg = load i64, ptr %i.by, align 8, !tbaa !15
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %i.hi = load ptr, ptr %i.l, align 8, !tbaa !4224
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.hk, ptr %i.h, align 8, !tbaa !138
  %i.hl = load ptr, ptr %i.bt, align 8, !tbaa !21
  %.not.i.i95 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i95, label %bb.o, label %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hm = load ptr, ptr %i.bv, align 8, !tbaa !498
  %i.hn = call noundef double %i.hm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.h) #26, !inline_history !499 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ho = load ptr, ptr %i.l, align 8, !tbaa !4224 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  store ptr %i.ca, ptr %10, align 8, !tbaa !8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !26 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 %i.hs, ptr %i.g, align 8, !tbaa !184
  %i.ht = icmp ugt i64 %i.hs, 15
  br i1 %i.ht, label %bb.p, label %._crit_edge.i.i97

bb.p:                                             ; preds = %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96
  %i.hu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) #26 ; 2 uses
  store ptr %i.hu, ptr %10, align 8, !tbaa !26
  %i.hv = load i64, ptr %i.g, align 8, !tbaa !184
  store i64 %i.hv, ptr %i.ca, align 8, !tbaa !15
  br label %._crit_edge.i.i97

._crit_edge.i.i97:                                ; preds = %bb.p, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96
  %i.hw = phi ptr [ %i.hu, %bb.p ], [ %i.ca, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96 ] ; 2 uses
  switch i64 %i.hs, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98
  ]

bb.q:                                             ; preds = %._crit_edge.i.i97
  %i.hx = load i8, ptr %i.hq, align 1, !tbaa !15
  store i8 %i.hx, ptr %i.hw, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98

bb.r:                                             ; preds = %._crit_edge.i.i97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hw, ptr align 1 %i.hq, i64 %i.hs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98: ; preds = %._crit_edge.i.i97, %bb.q, %bb.r
  %i.hy = load i64, ptr %i.g, align 8, !tbaa !184 ; 2 uses
  store i64 %i.hy, ptr %i.cb, align 8, !tbaa !12
  %i.hz = load ptr, ptr %10, align 8, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hy
  store i8 0, ptr %i.ia, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE5PrintIJPKciSB_SB_SB_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(872) %0, i32 noundef 1, ptr noundef nonnull align 8 %10, ptr noundef nonnull @.str.22, i32 noundef %.060, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, double noundef %i.hn)
  %i.ib = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.ca
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98
  %i.id = load i64, ptr %i.ca, align 8, !tbaa !15
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  %i.if = fcmp olt double %i.hn, %.2
  %i.ig = add nuw nsw i32 %.060, 1
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, !llvm.loop !4264

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.ih = phi i64 [ %i.dx, %bb.m ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ]
  %i.ii = fcmp olt double %.2, %.052291
  br i1 %i.ii, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread
  %i.ij = load ptr, ptr %i.l, align 8, !tbaa !4224
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !908
  %i.im = call noundef nonnull align 8 dereferenceable(264) ptr @_ZN3rrr10AndNetworkaSERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef nonnull align 8 dereferenceable(264) %i.il) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, %bb.s
  %.163 = phi i32 [ 0, %bb.s ], [ %.062290, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread ] ; 2 uses
  %.153 = phi double [ %.2, %bb.s ], [ %.052291, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread ]
  %i.in = add nsw i32 %.163, 1
  %i.io = icmp slt i32 %.163, 9
  br i1 %i.io, label %bb.g, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread, !llvm.loop !4265

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread: ; preds = %bb.h, %bb.t
  %i.ip = load ptr, ptr %i.l, align 8, !tbaa !4224
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !908
  %i.is = call noundef nonnull align 8 dereferenceable(264) ptr @_ZN3rrr10AndNetworkaSERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %i.ir, ptr noundef nonnull align 8 dereferenceable(264) %6) ; 0 uses
  call void @_ZN3rrr10AndNetworkD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.bp

bb.u:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.it = load ptr, ptr %i.l, align 8, !tbaa !4224 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !4261
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  store i64 %i.iw, ptr %11, align 8, !tbaa !184
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %store_forwarded536 = phi i64 [ %i.iw, %bb.u ], [ %i.jj, %bb.w ] ; 2 uses
  %.011.i.i102 = phi i64 [ 1, %bb.u ], [ %i.jk, %bb.w ] ; 4 uses
  %i.ix = getelementptr [8 x i8], ptr %11, i64 %.011.i.i102
  %i.iy = lshr i64 %store_forwarded536, 30
  %i.iz = xor i64 %i.iy, %store_forwarded536
  %i.ja = mul nuw nsw i64 %i.iz, 1812433253
  %i.jb = add nuw i64 %i.ja, %.011.i.i102         ; 2 uses
  %i.jc = and i64 %i.jb, 4294967295               ; 2 uses
  store i64 %i.jc, ptr %i.ix, align 8, !tbaa !184
  %i.jd = add nuw nsw i64 %.011.i.i102, 1         ; 3 uses
  %exitcond.not.i.i103 = icmp eq i64 %i.jd, 624
  br i1 %exitcond.not.i.i103, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.je = getelementptr [8 x i8], ptr %11, i64 %i.jd
  %i.jf = lshr i64 %i.jc, 30
  %i.jg = xor i64 %i.jf, %i.jb
  %i.jh = mul i64 %i.jg, 1812433253
  %i.ji = add i64 %i.jh, %i.jd
  %i.jj = and i64 %i.ji, 4294967295               ; 2 uses
  store i64 %i.jj, ptr %i.je, align 8, !tbaa !184
  %i.jk = add nuw nsw i64 %.011.i.i102, 2
  br label %bb.v

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104: ; preds = %bb.v
  %i.jl = getelementptr inbounds nuw i8, ptr %11, i64 4992
  store i64 624, ptr %i.jl, align 8, !tbaa !1071
  %i.jm = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !910
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.jo = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !908
  call void @_ZN3rrr10AndNetworkC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %12, ptr noundef nonnull align 8 dereferenceable(264) %i.jp) #26
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.kz = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.la = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.lb = getelementptr inbounds nuw i8, ptr %26, i64 22
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %.055289 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %i.vi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 3 uses
  %.056288 = phi double [ %i.jn, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %.157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 2 uses
  %.058287 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %.159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 4 uses
  %i.lc = load i64, ptr %i.jq, align 8, !tbaa !867
  %i.ld = icmp eq i64 %i.lc, 0
  br i1 %i.ld, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.le = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.lf = load i64, ptr %i.jq, align 8, !tbaa !867
  %.sroa.01.0.copyload.i105 = load i64, ptr %i.jr, align 8, !tbaa !184
  %i.lg = sub nsw i64 %i.le, %.sroa.01.0.copyload.i105
  %.neg.i106 = sdiv i64 %i.lg, -1000000000
  %i.lh = add i64 %.neg.i106, %i.lf
  %or.cond282 = icmp slt i64 %i.lh, 1
  br i1 %or.cond282, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275: ; preds = %bb.y, %bb.x
  %i.li = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %11)
  %i.lj = trunc i64 %i.li to i32                  ; 3 uses
  %i.lk = and i32 %i.lj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %i.js, ptr %13, align 8, !tbaa !8
  store i64 0, ptr %i.jt, align 8, !tbaa !12
  store i8 0, ptr %i.js, align 8, !tbaa !15
  %i.ll = and i32 %i.lj, 2
  %.not = icmp eq i32 %i.ll, 0
  br i1 %.not, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread275
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store ptr %i.ju, ptr %16, align 8, !tbaa !8
  store i64 2322578080581165115, ptr %i.ju, align 8
  store i64 8, ptr %i.jv, align 8, !tbaa !12
  store i8 0, ptr %i.ky, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !4266)
  %i.lm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.24, i64 noundef 273) #26, !noalias !4266 ; 6 uses
  store ptr %i.jw, ptr %15, align 8, !tbaa !8, !alias.scope !4266
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !26 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 16 ; 5 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !12 ; 3 uses
  %i.ls = icmp ult i64 %i.lr, 16
  call void @llvm.assume(i1 %i.ls)
  %i.lt = add nuw nsw i64 %i.lr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jw, ptr noundef nonnull align 8 dereferenceable(1) %i.lo, i64 %i.lt, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ln, ptr %15, align 8, !tbaa !26, !alias.scope !4266
  %i.lu = load i64, ptr %i.lo, align 8, !tbaa !15
  store i64 %i.lu, ptr %i.jw, align 8, !tbaa !15, !alias.scope !4266
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !12
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %i.lv = phi i64 [ %i.lr, %bb.z ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store i64 %i.lv, ptr %i.jx, align 8, !tbaa !12, !alias.scope !4266
  store ptr %i.lo, ptr %i.lm, align 8, !tbaa !26
  store i64 0, ptr %i.lw, align 8, !tbaa !12
  store i8 0, ptr %i.lo, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !4269)
  %i.lx = load i64, ptr %i.jx, align 8, !tbaa !12, !noalias !4269
  %i.ly = add i64 %i.lx, -4611686018427387898
  %i.lz = icmp ult i64 %i.ly, 6
  br i1 %i.lz, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113

bb.aa:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.148) #27, !noalias !4269
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.ma = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.26, i64 noundef 6) #26, !noalias !4269 ; 6 uses
  store ptr %i.jy, ptr %14, align 8, !tbaa !8, !alias.scope !4269
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !26 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 5 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !12 ; 3 uses
  %i.mg = icmp ult i64 %i.mf, 16
  call void @llvm.assume(i1 %i.mg)
  %i.mh = add nuw nsw i64 %i.mf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jy, ptr noundef nonnull align 8 dereferenceable(1) %i.mc, i64 %i.mh, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113
  store ptr %i.mb, ptr %14, align 8, !tbaa !26, !alias.scope !4269
  %i.mi = load i64, ptr %i.mc, align 8, !tbaa !15
  store i64 %i.mi, ptr %i.jy, align 8, !tbaa !15, !alias.scope !4269
  %.phi.trans.insert.i115 = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %.pre.i116 = load i64, ptr %.phi.trans.insert.i115, align 8, !tbaa !12
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  %i.mj = phi i64 [ %i.mf, %bb.ab ], [ %.pre.i116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i64 %i.mj, ptr %i.jz, align 8, !tbaa !12, !alias.scope !4269
  store ptr %i.mc, ptr %i.ma, align 8, !tbaa !26
  store i64 0, ptr %i.mk, align 8, !tbaa !12
  store i8 0, ptr %i.mc, align 8, !tbaa !15
  %i.ml = load ptr, ptr %13, align 8, !tbaa !26   ; 6 uses
  %i.mm = icmp eq ptr %i.ml, %i.js
  %i.mn = load ptr, ptr %14, align 8, !tbaa !26   ; 5 uses
  %i.mo = icmp eq ptr %i.mn, %i.jy                ; 2 uses
  br i1 %i.mm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117
  br i1 %i.mo, label %bb.ac, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117
  br i1 %i.mo, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.mp = load i64, ptr %i.jz, align 8, !tbaa !12 ; 3 uses
  %i.mq = icmp ult i64 %i.mp, 16
  call void @llvm.assume(i1 %i.mq)
  switch i64 %i.mp, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
end_hunk_17
begin_hunk_18_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJSt5_BindIFMN3rrr9SchedulerINS5_10AndNetworkENS5_9OptimizerIS7_NS5_8AnalyzerIS7_NS5_9SimulatorIS7_EENS5_9SatSolverIS7_EEEEEENS5_20LevelBasePartitionerIS7_EEEEFvPKNS5_9ParameterEEPSI_SL_EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !460
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !461
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !459
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_8AnalyzerIS6_NS4_9SimulatorIS6_EENS4_9SatSolverIS6_EEEEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSH_SK_EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_8AnalyzerIS6_NS4_9SimulatorIS6_EENS4_9SatSolverIS6_EEEEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSH_SK_EEEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1005
  %.unpack.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !15 ; 3 uses
  %.elt3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack4.i.i.i.i.i.i.i.i = load i64, ptr %.elt3.i.i.i.i.i.i.i.i, align 8, !tbaa !15
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !204
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !158
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_8AnalyzerIS5_NS3_9SimulatorIS5_EENS3_9SatSolverIS5_EEEEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSG_SJ_EEEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_8AnalyzerIS5_NS3_9SimulatorIS5_EENS3_9SatSolverIS5_EEEEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSG_SJ_EEEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_8AnalyzerIS5_NS3_9SimulatorIS5_EENS3_9SatSolverIS5_EEEEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSG_SJ_EEEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1104
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(872) %i.d, ptr noundef %i.m) #26, !inline_history !4366
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE6RunJobERS9_PNSC_3JobE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(5848) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::function.227", align 8 ; 7 uses
  %i.l = alloca ptr, align 8                      ; 27 uses
  %4 = alloca %"class.std::function.227", align 8 ; 9 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 19 uses
  %6 = alloca %"class.rrr::AndNetwork", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %12 = alloca %"class.rrr::AndNetwork", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::vector.269", align 16 ; 9 uses
  %32 = alloca %"class.std::vector.274", align 16 ; 9 uses
  store ptr %2, ptr %i.l, align 8, !tbaa !4330
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1002
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !957, !range !157, !noundef !158
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5848) %1, ptr noundef %i.o, i1 noundef zeroext %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.l, ptr %4, align 8, !tbaa !964
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1005
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.u, align 8, !tbaa !1106
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation, ptr %i.t, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !139
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !139 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation, ptr %i.x, align 8, !tbaa !139
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !139
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.y, align 8, !tbaa !139
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread: ; preds = %_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.a

_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit: ; preds = %_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #26, !inline_history !3029 ; 0 uses
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !21  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread, %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  %i.ac = phi ptr [ @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation, %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit.thread ], [ %.pre, %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit ]
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12SetPrintLineERKSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !954
  switch i32 %i.af, label %bb.bp [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.u
    i32 3, label %bb.bk
  ]

bb.b:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !4330
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !4367
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !961
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !961
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.01.0.copyload.i = load i64, ptr %i.ao, align 8, !tbaa !184
  %i.ap = sub nsw i64 %i.am, %.sroa.01.0.copyload.i
  %.neg.i = sdiv i64 %i.ap, -1000000000
  %i.aq = add i64 %.neg.i, %i.an                  ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %..i = select i1 %i.ar, i64 -1, i64 %i.aq
  br label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit: ; preds = %bb.b, %bb.c
  %.1.i = phi i64 [ %..i, %bb.c ], [ 0, %bb.b ]
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5848) %1, i32 noundef %i.ai, i64 noundef %.1.i)
  br label %bb.bp

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !4330 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !4367
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  store i64 %i.av, ptr %5, align 8, !tbaa !184
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.av, %bb.d ], [ %i.bi, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.bj, %bb.f ] ; 4 uses
  %i.aw = getelementptr [8 x i8], ptr %5, i64 %.011.i.i
  %i.ax = lshr i64 %store_forwarded, 30
  %i.ay = xor i64 %i.ax, %store_forwarded
  %i.az = mul nuw nsw i64 %i.ay, 1812433253
  %i.ba = add nuw i64 %i.az, %.011.i.i            ; 2 uses
  %i.bb = and i64 %i.ba, 4294967295               ; 2 uses
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !184
  %i.bc = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.bc, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr [8 x i8], ptr %5, i64 %i.bc
  %i.be = lshr i64 %i.bb, 30
  %i.bf = xor i64 %i.be, %i.ba
  %i.bg = mul i64 %i.bf, 1812433253
  %i.bh = add i64 %i.bg, %i.bc
  %i.bi = and i64 %i.bh, 4294967295               ; 2 uses
  store i64 %i.bi, ptr %i.bd, align 8, !tbaa !184
  %i.bj = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4992 ; 2 uses
  store i64 624, ptr %i.bk, align 8, !tbaa !1071
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !1004 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1002
  call void @_ZN3rrr10AndNetworkC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef nonnull align 8 dereferenceable(264) %i.bo) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 20
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 1816
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 4984 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 3168
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 1808
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 1816
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 4984
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, %bb.t
  %i.ci = phi i64 [ 624, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.ih, %bb.t ]
  %.0294 = phi double [ %i.bm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %.2, %bb.t ]
  %.052293 = phi double [ %i.bm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %.153, %bb.t ] ; 2 uses
  %.062292 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.in, %bb.t ] ; 3 uses
  %i.cj = load i64, ptr %i.bp, align 8, !tbaa !961
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread269, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.cm = load i64, ptr %i.bp, align 8, !tbaa !961
  %.sroa.01.0.copyload.i71 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.cn = sub nsw i64 %i.cl, %.sroa.01.0.copyload.i71
  %.neg.i72 = sdiv i64 %i.cn, -1000000000
  %i.co = add i64 %.neg.i72, %i.cm
  %or.cond = icmp slt i64 %i.co, 1
  br i1 %or.cond, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread269

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread269: ; preds = %bb.h, %bb.g
  %.not70 = icmp eq i32 %.062292, 0
  br i1 %.not70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread269
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !4330
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1002
  store ptr %i.br, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store i64 19, ptr %i.k, align 8, !tbaa !184
  %i.cs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0) #26 ; 2 uses
  store ptr %i.cs, ptr %7, align 8, !tbaa !26
  %i.ct = load i64, ptr %i.k, align 8, !tbaa !184 ; 3 uses
  store i64 %i.ct, ptr %i.br, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.cs, ptr noundef nonnull align 1 dereferenceable(19) @.str.16, i64 19, i1 false)
  store i64 %i.ct, ptr %i.bs, align 8, !tbaa !12
  %i.cu = load ptr, ptr %7, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  store i8 0, ptr %i.cv, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE7CallAbcEPS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef %i.cr, ptr noundef nonnull align 8 %7)
  %i.cw = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.br
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.cy = load i64, ptr %i.br, align 8, !tbaa !15
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !4330
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.dc, ptr %i.j, align 8, !tbaa !138
  %i.dd = load ptr, ptr %i.bt, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i, label %bb.i, label %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.de = load ptr, ptr %i.bv, align 8, !tbaa !498
  %i.df = call noundef double %i.de(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #26, !inline_history !499 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dg = load ptr, ptr %i.l, align 8, !tbaa !4330 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.bw, ptr %8, align 8, !tbaa !8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !26 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store i64 %i.dk, ptr %i.i, align 8, !tbaa !184
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %bb.j, label %._crit_edge.i.i76

bb.j:                                             ; preds = %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit
  %i.dm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) #26 ; 2 uses
  store ptr %i.dm, ptr %8, align 8, !tbaa !26
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !184
  store i64 %i.dn, ptr %i.bw, align 8, !tbaa !15
  br label %._crit_edge.i.i76

._crit_edge.i.i76:                                ; preds = %bb.j, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit
  %i.do = phi ptr [ %i.dm, %bb.j ], [ %i.bw, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit ] ; 2 uses
  switch i64 %i.dk, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i76
  %i.dp = load i8, ptr %i.di, align 1, !tbaa !15
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.l:                                             ; preds = %._crit_edge.i.i76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.di, i64 %i.dk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i76, %bb.k, %bb.l
  %i.dq = load i64, ptr %i.i, align 8, !tbaa !184 ; 2 uses
  store i64 %i.dq, ptr %i.bx, align 8, !tbaa !12
  %i.dr = load ptr, ptr %8, align 8, !tbaa !26
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  store i8 0, ptr %i.ds, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE5PrintIJPKciSF_SF_SF_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(872) %0, i32 noundef 1, ptr noundef nonnull align 8 %8, ptr noundef nonnull @.str.17, i32 noundef %.062292, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, double noundef %i.df)
  %i.dt = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bw
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.dv = load i64, ptr %i.bw, align 8, !tbaa !15
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread269
  %.2.ph = phi double [ %.0294, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread269 ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.dx = phi i64 [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 3 uses
  %.060 = phi i32 [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 2 uses
  %.2 = phi double [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.2.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.preheader ] ; 4 uses
  %i.dy = load i64, ptr %i.bp, align 8, !tbaa !961
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread273, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ea = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.eb = load i64, ptr %i.bp, align 8, !tbaa !961 ; 2 uses
  %.sroa.01.0.copyload.i80 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.ec = sub nsw i64 %i.ea, %.sroa.01.0.copyload.i80
  %.neg.i81 = sdiv i64 %i.ec, -1000000000
  %i.ed = add i64 %.neg.i81, %i.eb
  %or.cond283 = icmp slt i64 %i.ed, 1
  br i1 %or.cond283, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread273

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread273: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ee = phi i64 [ %i.eb, %bb.m ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  %i.ef = icmp ugt i64 %i.dx, 623
  br i1 %i.ef, label %vector.ph534, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph534:                                     ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread273
  %.pre.i.i = load i64, ptr %5, align 8, !tbaa !184
  %vector.recur.init537 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body535
end_hunk_18
begin_hunk_19_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE6RunJobERS9_PNSC_3JobE:_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i
  %i.fn = lshr exact <2 x i64> %i.fm, splat (i64 1)
  %i.fo = xor <2 x i64> %i.fn, %wide.load533
  %i.fp = and <2 x i64> %wide.load, splat (i64 1)
  %i.fq = icmp eq <2 x i64> %i.fp, zeroinitializer
  %i.fr = select <2 x i1> %i.fq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.fs = xor <2 x i64> %i.fo, %i.fr
  store <2 x i64> %i.fs, ptr %i.fg, align 8, !tbaa !184
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ft = icmp eq i64 %index.next, 396
  br i1 %i.ft, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body, !llvm.loop !4369

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body
  %i.fu = load i64, ptr %i.cd, align 8, !tbaa !184
  %i.fv = and i64 %i.fu, -2147483648
  %i.fw = load i64, ptr %5, align 8, !tbaa !184   ; 2 uses
  %i.fx = and i64 %i.fw, 2147483646
  %i.fy = or disjoint i64 %i.fx, %i.fv
  %i.fz = load i64, ptr %i.ce, align 8, !tbaa !184
  %i.ga = lshr exact i64 %i.fy, 1
  %i.gb = xor i64 %i.ga, %i.fz
  %i.gc = and i64 %i.fw, 1
  %.not.i.i413 = icmp eq i64 %i.gc, 0
  %i.gd = select i1 %.not.i.i413, i64 0, i64 2567483615
  %i.ge = xor i64 %i.gb, %i.gd
  store i64 %i.ge, ptr %i.cd, align 8, !tbaa !184
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread273, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.gf = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.dx, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread273 ] ; 2 uses
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 3 uses
  store i64 %i.gg, ptr %i.bk, align 8, !tbaa !1071
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gf
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !184 ; 2 uses
  %i.gj = lshr i64 %i.gi, 11
  %i.gk = and i64 %i.gj, 4294967295
  %i.gl = xor i64 %i.gk, %i.gi                    ; 2 uses
  %i.gm = shl i64 %i.gl, 7
  %i.gn = and i64 %i.gm, 2636928640
  %i.go = xor i64 %i.gn, %i.gl                    ; 2 uses
  %i.gp = shl i64 %i.go, 15
  %i.gq = and i64 %i.gp, 4022730752
  %i.gr = xor i64 %i.gq, %i.go                    ; 2 uses
  %i.gs = lshr i64 %i.gr, 18
  %i.gt = xor i64 %i.gs, %i.gr
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = icmp eq i64 %i.ee, 0
  br i1 %i.gv, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89, label %bb.n

bb.n:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.gw = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.gx = load i64, ptr %i.bp, align 8, !tbaa !961
  %.sroa.01.0.copyload.i85 = load i64, ptr %i.bq, align 8, !tbaa !184
  %i.gy = sub nsw i64 %i.gw, %.sroa.01.0.copyload.i85
  %.neg.i86 = sdiv i64 %i.gy, -1000000000
  %i.gz = add i64 %.neg.i86, %i.gx                ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  %..i87 = select i1 %i.ha, i64 -1, i64 %i.gz
  br label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89: ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %bb.n
  %.1.i88 = phi i64 [ %..i87, %bb.n ], [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE3RunEil(ptr noundef nonnull align 8 dereferenceable(5848) %1, i32 noundef %i.gu, i64 noundef %.1.i88)
  %i.hb = load ptr, ptr %i.l, align 8, !tbaa !4330
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !1002
  store ptr %i.by, ptr %9, align 8, !tbaa !8
  store i32 845374502, ptr %i.by, align 8
  store i64 4, ptr %i.bz, align 8, !tbaa !12
  store i8 0, ptr %i.cc, align 4, !tbaa !15
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE7CallAbcEPS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef %i.hd, ptr noundef nonnull align 8 %9)
  %i.he = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.by
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89
  %i.hg = load i64, ptr %i.by, align 8, !tbaa !15
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %i.hi = load ptr, ptr %i.l, align 8, !tbaa !4330
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !1002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.hk, ptr %i.h, align 8, !tbaa !138
  %i.hl = load ptr, ptr %i.bt, align 8, !tbaa !21
  %.not.i.i95 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i95, label %bb.o, label %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hm = load ptr, ptr %i.bv, align 8, !tbaa !498
  %i.hn = call noundef double %i.hm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.h) #26, !inline_history !499 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ho = load ptr, ptr %i.l, align 8, !tbaa !4330 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  store ptr %i.ca, ptr %10, align 8, !tbaa !8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !26 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 %i.hs, ptr %i.g, align 8, !tbaa !184
  %i.ht = icmp ugt i64 %i.hs, 15
  br i1 %i.ht, label %bb.p, label %._crit_edge.i.i97

bb.p:                                             ; preds = %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96
  %i.hu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) #26 ; 2 uses
  store ptr %i.hu, ptr %10, align 8, !tbaa !26
  %i.hv = load i64, ptr %i.g, align 8, !tbaa !184
  store i64 %i.hv, ptr %i.ca, align 8, !tbaa !15
  br label %._crit_edge.i.i97

._crit_edge.i.i97:                                ; preds = %bb.p, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96
  %i.hw = phi ptr [ %i.hu, %bb.p ], [ %i.ca, %_ZNKSt8functionIFdPN3rrr10AndNetworkEEEclES2_.exit96 ] ; 2 uses
  switch i64 %i.hs, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98
  ]

bb.q:                                             ; preds = %._crit_edge.i.i97
  %i.hx = load i8, ptr %i.hq, align 1, !tbaa !15
  store i8 %i.hx, ptr %i.hw, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98

bb.r:                                             ; preds = %._crit_edge.i.i97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hw, ptr align 1 %i.hq, i64 %i.hs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98: ; preds = %._crit_edge.i.i97, %bb.q, %bb.r
  %i.hy = load i64, ptr %i.g, align 8, !tbaa !184 ; 2 uses
  store i64 %i.hy, ptr %i.cb, align 8, !tbaa !12
  %i.hz = load ptr, ptr %10, align 8, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hy
  store i8 0, ptr %i.ia, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE5PrintIJPKciSF_SF_SF_dEEEviNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_(ptr noundef nonnull align 8 dereferenceable(872) %0, i32 noundef 1, ptr noundef nonnull align 8 %10, ptr noundef nonnull @.str.22, i32 noundef %.060, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, double noundef %i.hn)
  %i.ib = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.ca
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98
  %i.id = load i64, ptr %i.ca, align 8, !tbaa !15
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  %i.if = fcmp olt double %i.hn, %.2
  %i.ig = add nuw nsw i32 %.060, 1
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, !llvm.loop !4370

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.ih = phi i64 [ %i.dx, %bb.m ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ]
  %i.ii = fcmp olt double %.2, %.052293
  br i1 %i.ii, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread
  %i.ij = load ptr, ptr %i.l, align 8, !tbaa !4330
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !1002
  %i.im = call noundef nonnull align 8 dereferenceable(264) ptr @_ZN3rrr10AndNetworkaSERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef nonnull align 8 dereferenceable(264) %i.il) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread, %bb.s
  %.163 = phi i32 [ 0, %bb.s ], [ %.062292, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread ] ; 2 uses
  %.153 = phi double [ %.2, %bb.s ], [ %.052293, %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit84.thread ]
  %i.in = add nsw i32 %.163, 1
  %i.io = icmp slt i32 %.163, 9
  br i1 %i.io, label %bb.g, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread, !llvm.loop !4371

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit75.thread: ; preds = %bb.h, %bb.t
  %i.ip = load ptr, ptr %i.l, align 8, !tbaa !4330
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !1002
  %i.is = call noundef nonnull align 8 dereferenceable(264) ptr @_ZN3rrr10AndNetworkaSERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %i.ir, ptr noundef nonnull align 8 dereferenceable(264) %6) ; 0 uses
  call void @_ZN3rrr10AndNetworkD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.bp

bb.u:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.it = load ptr, ptr %i.l, align 8, !tbaa !4330 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !4367
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  store i64 %i.iw, ptr %11, align 8, !tbaa !184
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %store_forwarded544 = phi i64 [ %i.iw, %bb.u ], [ %i.jj, %bb.w ] ; 2 uses
  %.011.i.i102 = phi i64 [ 1, %bb.u ], [ %i.jk, %bb.w ] ; 4 uses
  %i.ix = getelementptr [8 x i8], ptr %11, i64 %.011.i.i102
  %i.iy = lshr i64 %store_forwarded544, 30
  %i.iz = xor i64 %i.iy, %store_forwarded544
  %i.ja = mul nuw nsw i64 %i.iz, 1812433253
  %i.jb = add nuw i64 %i.ja, %.011.i.i102         ; 2 uses
  %i.jc = and i64 %i.jb, 4294967295               ; 2 uses
  store i64 %i.jc, ptr %i.ix, align 8, !tbaa !184
  %i.jd = add nuw nsw i64 %.011.i.i102, 1         ; 3 uses
  %exitcond.not.i.i103 = icmp eq i64 %i.jd, 624
  br i1 %exitcond.not.i.i103, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.je = getelementptr [8 x i8], ptr %11, i64 %i.jd
  %i.jf = lshr i64 %i.jc, 30
  %i.jg = xor i64 %i.jf, %i.jb
  %i.jh = mul i64 %i.jg, 1812433253
  %i.ji = add i64 %i.jh, %i.jd
  %i.jj = and i64 %i.ji, 4294967295               ; 2 uses
  store i64 %i.jj, ptr %i.je, align 8, !tbaa !184
  %i.jk = add nuw nsw i64 %.011.i.i102, 2
  br label %bb.v

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104: ; preds = %bb.v
  %i.jl = getelementptr inbounds nuw i8, ptr %11, i64 4992
  store i64 624, ptr %i.jl, align 8, !tbaa !1071
  %i.jm = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.jo = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !1002
  call void @_ZN3rrr10AndNetworkC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(264) %12, ptr noundef nonnull align 8 dereferenceable(264) %i.jp) #26
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.kz = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.la = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.lb = getelementptr inbounds nuw i8, ptr %26, i64 22
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %.055291 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %i.vi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 3 uses
  %.056290 = phi double [ %i.jn, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %.157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 2 uses
  %.058289 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit104 ], [ %.159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ] ; 4 uses
  %i.lc = load i64, ptr %i.jq, align 8, !tbaa !961
  %i.ld = icmp eq i64 %i.lc, 0
  br i1 %i.ld, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread277, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.le = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.lf = load i64, ptr %i.jq, align 8, !tbaa !961
  %.sroa.01.0.copyload.i105 = load i64, ptr %i.jr, align 8, !tbaa !184
  %i.lg = sub nsw i64 %i.le, %.sroa.01.0.copyload.i105
  %.neg.i106 = sdiv i64 %i.lg, -1000000000
  %i.lh = add i64 %.neg.i106, %i.lf
  %or.cond284 = icmp slt i64 %i.lh, 1
  br i1 %or.cond284, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread, label %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread277

_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread277: ; preds = %bb.y, %bb.x
  %i.li = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %11)
  %i.lj = trunc i64 %i.li to i32                  ; 3 uses
  %i.lk = and i32 %i.lj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %i.js, ptr %13, align 8, !tbaa !8
  store i64 0, ptr %i.jt, align 8, !tbaa !12
  store i8 0, ptr %i.js, align 8, !tbaa !15
  %i.ll = and i32 %i.lj, 2
  %.not = icmp eq i32 %i.ll, 0
  br i1 %.not, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE16GetRemainingTimeEv.exit109.thread277
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store ptr %i.ju, ptr %16, align 8, !tbaa !8
  store i64 2322578080581165115, ptr %i.ju, align 8
  store i64 8, ptr %i.jv, align 8, !tbaa !12
  store i8 0, ptr %i.ky, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !4372)
  %i.lm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.24, i64 noundef 273) #26, !noalias !4372 ; 6 uses
  store ptr %i.jw, ptr %15, align 8, !tbaa !8, !alias.scope !4372
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !26 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 16 ; 5 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !12 ; 3 uses
  %i.ls = icmp ult i64 %i.lr, 16
  call void @llvm.assume(i1 %i.ls)
  %i.lt = add nuw nsw i64 %i.lr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jw, ptr noundef nonnull align 8 dereferenceable(1) %i.lo, i64 %i.lt, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ln, ptr %15, align 8, !tbaa !26, !alias.scope !4372
  %i.lu = load i64, ptr %i.lo, align 8, !tbaa !15
  store i64 %i.lu, ptr %i.jw, align 8, !tbaa !15, !alias.scope !4372
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !12
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %i.lv = phi i64 [ %i.lr, %bb.z ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store i64 %i.lv, ptr %i.jx, align 8, !tbaa !12, !alias.scope !4372
  store ptr %i.lo, ptr %i.lm, align 8, !tbaa !26
  store i64 0, ptr %i.lw, align 8, !tbaa !12
  store i8 0, ptr %i.lo, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !4375)
  %i.lx = load i64, ptr %i.jx, align 8, !tbaa !12, !noalias !4375
  %i.ly = add i64 %i.lx, -4611686018427387898
  %i.lz = icmp ult i64 %i.ly, 6
  br i1 %i.lz, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113

bb.aa:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.148) #27, !noalias !4375
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.ma = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.26, i64 noundef 6) #26, !noalias !4375 ; 6 uses
  store ptr %i.jy, ptr %14, align 8, !tbaa !8, !alias.scope !4375
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !26 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 5 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !12 ; 3 uses
  %i.mg = icmp ult i64 %i.mf, 16
  call void @llvm.assume(i1 %i.mg)
  %i.mh = add nuw nsw i64 %i.mf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jy, ptr noundef nonnull align 8 dereferenceable(1) %i.mc, i64 %i.mh, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113
  store ptr %i.mb, ptr %14, align 8, !tbaa !26, !alias.scope !4375
  %i.mi = load i64, ptr %i.mc, align 8, !tbaa !15
  store i64 %i.mi, ptr %i.jy, align 8, !tbaa !15, !alias.scope !4375
  %.phi.trans.insert.i115 = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %.pre.i116 = load i64, ptr %.phi.trans.insert.i115, align 8, !tbaa !12
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  %i.mj = phi i64 [ %i.mf, %bb.ab ], [ %.pre.i116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i64 %i.mj, ptr %i.jz, align 8, !tbaa !12, !alias.scope !4375
  store ptr %i.mc, ptr %i.ma, align 8, !tbaa !26
  store i64 0, ptr %i.mk, align 8, !tbaa !12
  store i8 0, ptr %i.mc, align 8, !tbaa !15
  %i.ml = load ptr, ptr %13, align 8, !tbaa !26   ; 6 uses
  %i.mm = icmp eq ptr %i.ml, %i.js
  %i.mn = load ptr, ptr %14, align 8, !tbaa !26   ; 5 uses
  %i.mo = icmp eq ptr %i.mn, %i.jy                ; 2 uses
  br i1 %i.mm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117
  br i1 %i.mo, label %bb.ac, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit117
  br i1 %i.mo, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.mp = load i64, ptr %i.jz, align 8, !tbaa !12 ; 3 uses
  %i.mq = icmp ult i64 %i.mp, 16
  call void @llvm.assume(i1 %i.mq)
  switch i64 %i.mp, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
end_hunk_19
