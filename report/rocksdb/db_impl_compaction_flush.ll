Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_compaction_flush?download=true
inline.NumInlined: 9898
inline.NumDeleted: 4271
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7rocksdb6DBImpl20ResumeAllCompactionsEv:bb.a
  tail call void @__clang_call_terminate(ptr %i.o) #37
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit11:    ; preds = %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define range(i64 4294967296, 9223372034707292160) i64 @_ZNK7rocksdb6DBImpl14GetBGJobLimitsEv(ptr noundef nonnull align 64 dereferenceable(7336) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2048
  tail call void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.d = load i32, ptr %i.c, align 16, !tbaa !1684 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1580
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1685 ; 2 uses
  %i.g = load i32, ptr %i.b, align 8, !tbaa !1686 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5032
  %i.i = tail call noundef zeroext i1 @_ZNK7rocksdb15WriteController9IsStoppedEv(ptr noundef nonnull align 8 dereferenceable(56) %i.h)
  br i1 %i.i, label %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5036
  %i.k = load atomic i32, ptr %i.j seq_cst, align 4
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5040
  %i.n = load atomic i32, ptr %i.m seq_cst, align 16
  %i.o = icmp sgt i32 %i.n, 0
  br label %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit

_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.p = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.o, %bb.c ]
  %i.q = and i32 %i.f, %i.d
  %or.cond.i = icmp eq i32 %i.q, -1
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit
  %i.r = sdiv i32 %i.g, 4
  %.sroa.speculated20.i = tail call i32 @llvm.smax.i32(i32 %i.r, i32 1) ; 2 uses
  %i.s = sub nsw i32 %i.g, %.sroa.speculated20.i
  br label %_ZN7rocksdb6DBImpl14GetBGJobLimitsEiiib.exit

bb.e:                                             ; preds = %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit
  %.sroa.speculated10.i = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  br label %_ZN7rocksdb6DBImpl14GetBGJobLimitsEiiib.exit

_ZN7rocksdb6DBImpl14GetBGJobLimitsEiiib.exit:     ; preds = %bb.d, %bb.e
  %.sink.i = phi i32 [ %i.f, %bb.e ], [ %i.s, %bb.d ]
  %.sroa.0.0.i = phi i32 [ %.sroa.speculated10.i, %bb.e ], [ %.sroa.speculated20.i, %bb.d ]
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %.sink.i, i32 1)
  %i.t = zext nneg i32 %.sroa.speculated.i to i64
  %i.u = shl nuw nsw i64 %i.t, 32
  %.sroa.4.0.insert.shift.i = select i1 %i.p, i64 %i.u, i64 4294967296
  %.sroa.0.0.insert.ext.i = zext nneg i32 %.sroa.0.0.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: uwtable
define void @_ZN7rocksdb6DBImpl11BGWorkFlushEPv(ptr noundef %0) #13 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !1920
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !2048 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 16) #33
  %.not.i = icmp eq ptr @_ZTHN7rocksdb15iostats_contextE, null
  br i1 %.not.i, label %_ZTWN7rocksdb15iostats_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN7rocksdb15iostats_contextE()
  br label %_ZTWN7rocksdb15iostats_contextE.exit

_ZTWN7rocksdb15iostats_contextE.exit:             ; preds = %bb.a, %bb.b
  %i.a = zext i32 %.sroa.4.0.copyload to i64
  %i.b = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb15iostats_contextE)
  store i64 %i.a, ptr %i.b, align 8, !tbaa !1922
  tail call void @_ZN7rocksdb6DBImpl19BackgroundCallFlushENS_3Env8PriorityE(ptr noundef nonnull align 64 dereferenceable(7336) %.sroa.0.0.copyload, i32 noundef %.sroa.4.0.copyload)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb6DBImpl23UnscheduleFlushCallbackEPv(ptr noundef %0) #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1689
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5888 ; 2 uses
  %i.c = load i32, ptr %i.b, align 64, !tbaa !1688
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr %i.b, align 64, !tbaa !1688
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 16) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7rocksdb6DBImpl28HasExclusiveManualCompactionEv(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(7336) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5944
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1563, !noalias !2049 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5976
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1563, !noalias !2052 ; 2 uses
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !1570, !noalias !2049
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1571, !noalias !2049
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit
  %.sroa.13.07 = phi ptr [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.06 = phi ptr [ %.sroa.10.1, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.sroa.02.05 = phi ptr [ %.sroa.02.1, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.02.05, align 8, !tbaa !1554
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 43
  %i.k = load i8, ptr %i.j, align 1, !tbaa !1542, !range !36, !noundef !37
  %i.l = trunc nuw i8 %i.k to i1                  ; 3 uses
  br i1 %i.l, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.05, i64 8 ; 2 uses
  %i.n = icmp eq ptr %i.m, %.sroa.10.06
  br i1 %i.n, label %bb.c, label %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.13.07, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1572 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 512
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit

_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit: ; preds = %bb.b, %bb.c
  %.sroa.02.1 = phi ptr [ %i.p, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %i.q, %bb.c ], [ %.sroa.10.06, %bb.b ]
  %.sroa.13.1 = phi ptr [ %i.o, %bb.c ], [ %.sroa.13.07, %bb.b ]
  %.not10 = icmp eq ptr %.sroa.02.1, %i.d
  br i1 %.not10, label %._crit_edge, label %.lr.ph, !llvm.loop !1700

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.l, %_ZNSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_EppEv.exit ], [ %i.l, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 4294967296, 9223372034707292160) i64 @_ZN7rocksdb6DBImpl14GetBGJobLimitsEiiib(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = and i32 %1, %0
  %or.cond = icmp eq i32 %i.a, -1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i32 %2, 4
  %.sroa.speculated20 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1) ; 2 uses
  %i.c = sub nsw i32 %2, %.sroa.speculated20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated10 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %1, %bb.c ], [ %i.c, %bb.b ]
  %.sroa.0.0 = phi i32 [ %.sroa.speculated10, %bb.c ], [ %.sroa.speculated20, %bb.b ]
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.sink, i32 1)
  %i.d = zext nneg i32 %.sroa.speculated to i64
  %i.e = shl nuw nsw i64 %i.d, 32
  %.sroa.4.0.insert.shift = select i1 %3, i64 %i.e, i64 4294967296
  %.sroa.0.0.insert.ext = zext nneg i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb6DBImpl28CaptureBackgroundJobPressureEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.rocksdb::BackgroundJobPressure") align 4 captures(none) initializes((0, 32), (36, 37)) %0, ptr noundef nonnull align 64 dereferenceable(7336) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2048
  tail call void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5876
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1559 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 5872
  %i.e = load i32, ptr %i.d, align 16, !tbaa !1558 ; 2 uses
  %i.f = add nsw i32 %i.e, %i.c
  store i32 %i.f, ptr %0, align 4, !tbaa !2055
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5880
  %i.h = load i32, ptr %i.g, align 8, !tbaa !2057 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !2058
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.j, align 4, !tbaa !2059
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 5884
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2060 ; 2 uses
  %i.m = sub nsw i32 %i.h, %i.l
  %.sroa.speculated34 = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.speculated34, ptr %i.n, align 4, !tbaa !2061
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 5888
  %2 = load <2 x i32>, ptr %i.p, align 64, !tbaa !628
  %i.q = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %i.r = insertelement <4 x i32> %i.q, i32 %i.l, i64 1
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> %3, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x i32> %i.s, ptr %i.o, align 4, !tbaa !628
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 5032
  %i.u = tail call noundef zeroext i1 @_ZNK7rocksdb15WriteController9IsStoppedEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  br i1 %i.u, label %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 5036
  %i.w = load atomic i32, ptr %i.v seq_cst, align 4
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 5040
  %i.z = load atomic i32, ptr %i.y seq_cst, align 16
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i8
  br label %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit

_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.ac = phi i8 [ 1, %bb.b ], [ 1, %bb.a ], [ %i.ab, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.ac, ptr %i.ad, align 4, !tbaa !2062
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !563
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !564
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 448
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !916 ; 3 uses
  %.sroa.025.0.in42 = getelementptr inbounds nuw i8, ptr %i.aj, i64 2856
  %.sroa.025.043 = load ptr, ptr %.sroa.025.0.in42, align 8, !tbaa !924 ; 2 uses
  %.not4044 = icmp eq ptr %.sroa.025.043, %i.aj
  br i1 %.not4044, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit
  %.0.lcssa = phi i32 [ 0, %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit ], [ %.1, %bb.j ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.lcssa, ptr %i.ak, align 4, !tbaa !2063
  ret void

.lr.ph:                                           ; preds = %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit, %bb.j
  %.sroa.025.046 = phi ptr [ %.sroa.025.0, %bb.j ], [ %.sroa.025.043, %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit ] ; 5 uses
  %.045 = phi i32 [ %.1, %bb.j ], [ 0, %_ZNK7rocksdb15WriteController21NeedSpeedupCompactionEv.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.025.046, i64 61
  %i.am = load atomic i8, ptr %i.al monotonic, align 1, !range !36, !noundef !37
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.025.046, i64 60
  %i.ap = load atomic i8, ptr %i.ao seq_cst, align 1, !range !36, !noundef !37
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.025.046, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !775 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.025.046, i64 2832
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !622 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 172
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !872 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = select i1 %i.ax, i32 %i.aw, i32 %i.az   ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 4184
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1957
  %i.be = sitofp i32 %i.bd to double
  %i.bf = fmul nnan double %i.be, 1.000000e+02
  %i.bg = uitofp nneg i32 %i.ba to double
  %i.bh = fdiv double %i.bf, %i.bg
  %i.bi = fptosi double %i.bh to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.048 = phi i32 [ %i.bi, %bb.f ], [ 0, %bb.e ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 152
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !2064 ; 2 uses
  %.not = icmp eq i64 %i.bk, 0
  br i1 %.not, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !2065 ; 2 uses
  %.not21 = icmp eq i64 %i.bm, 0
  br i1 %.not21, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h
  %i.bn = phi i64 [ %i.bm, %bb.h ], [ %i.bk, %bb.g ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 4280
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !1959
  %i.bq = uitofp i64 %i.bp to double
  %i.br = fmul nnan double %i.bq, 1.000000e+02
  %i.bs = uitofp i64 %i.bn to double
  %i.bt = fdiv double %i.br, %i.bs
  %i.bu = fptosi double %i.bt to i32
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ %i.bu, %.thread ]
  %i.bv = tail call i32 @llvm.smax.i32(i32 %.048, i32 %.0)
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.045, i32 %i.bv)
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.d, %bb.i
  %.1 = phi i32 [ %.045, %.lr.ph ], [ %.sroa.speculated, %bb.i ], [ %.045, %bb.d ] ; 2 uses
  %.sroa.025.0.in = getelementptr inbounds nuw i8, ptr %.sroa.025.046, i64 2856
  %.sroa.025.0 = load ptr, ptr %.sroa.025.0.in, align 8, !tbaa !924 ; 2 uses
  %.not40 = icmp eq ptr %.sroa.025.0, %i.aj
  br i1 %.not40, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl36NotifyOnBackgroundJobPressureChangedEv(ptr noundef nonnull align 64 dereferenceable(7336) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.rocksdb::BackgroundJobPressure", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 3 uses
  tail call void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !759
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !759
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @_ZNK7rocksdb6DBImpl28CaptureBackgroundJobPressureEv(ptr dead_on_unwind nonnull writable sret(%"struct.rocksdb::BackgroundJobPressure") align 4 %1, ptr noundef nonnull align 64 dereferenceable(7336) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !2066
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !2066
  tail call void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.j = load ptr, ptr %i.b, align 16, !tbaa !759 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !759  ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.m = load i32, ptr %i.g, align 4, !tbaa !2066
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.g, align 4, !tbaa !2066
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.04.07 = phi ptr [ %i.s, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.04.07, align 8, !tbaa !901 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !418
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 400
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.k
  br i1 %i.t, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl20AddToCompactionQueueEPNS_16ColumnFamilyDataE(ptr noundef nonnull align 64 dereferenceable(7336) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !561
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = atomicrmw add ptr %i.b, i32 1 seq_cst, align 4 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5560 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !928  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5576
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !929
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %.not.i = icmp eq ptr %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !561  ; 2 uses
  store ptr %i.i, ptr %i.e, align 8, !tbaa !561
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.j, ptr %i.d, align 8, !tbaa !928
  br label %_ZNSt5dequeIPN7rocksdb16ColumnFamilyDataESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5512
  call void @_ZNSt5dequeIPN7rocksdb16ColumnFamilyDataESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !561
  br label %_ZNSt5dequeIPN7rocksdb16ColumnFamilyDataESaIS2_EE9push_backERKS2_.exit

_ZNSt5dequeIPN7rocksdb16ColumnFamilyDataESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %i.i, %bb.b ], [ %.pre, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2905
  store i8 1, ptr %i.m, align 1, !tbaa !927
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5868 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !930
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !930
end_hunk_0
