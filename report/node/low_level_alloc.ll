inline.NumInlined: 90
inline.NumDeleted: 45
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4absl13base_internalL8CoalesceEPNS0_12_GLOBAL__N_19AllocListE:bb.a
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.az = icmp ne ptr %i.ay, null
  %i.ba = icmp ult ptr %i.ay, %0
  %i.bb = and i1 %i.az, %i.ba
  br i1 %i.bb, label %bb.h, label %.preheader.i.i.1, !llvm.loop !14

.preheader.i.i.1:                                 ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store ptr %.1.i.i, ptr %i.bc, align 8
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i.i.1
  %.1.i.i.1 = phi ptr [ %i.bf, %bb.i ], [ %.1.i.i, %.preheader.i.i.1 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.i.i.1, i64 40
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i.i.1
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = icmp ult ptr %i.bf, %0
  %i.bi = and i1 %i.bg, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.j, !llvm.loop !14

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.1
  store ptr %.1.i.i.1, ptr %i.bj, align 8
  %i.bk = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.bk, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !15

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not21.i = icmp eq i32 %i.bp, 0
  br i1 %.not21.i, label %_ZN4absl13base_internalL18LLA_SkiplistInsertEPNS0_12_GLOBAL__N_19AllocListES3_PS3_.exit, label %.lr.ph23.i.preheader

.lr.ph23.i.preheader:                             ; preds = %._crit_edge.i.i, %.preheader.i
  br label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %._crit_edge.i.i, %.lr.ph.i
  %i.bl = phi i32 [ %i.bo, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.i ] ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bm
  store ptr %i.n, ptr %i.bn, align 8
  %i.bo = add nsw i32 %i.bl, 1                    ; 3 uses
  store i32 %i.bo, ptr %i.aj, align 8
  %i.bp = load i32, ptr %i.ai, align 8            ; 2 uses
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph.i, label %.preheader.i, !llvm.loop !16

.lr.ph23.i:                                       ; preds = %.lr.ph23.i.preheader, %.lr.ph23.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph23.i ], [ 0, %.lr.ph23.i.preheader ] ; 4 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store ptr %i.bv, ptr %i.bw, align 8
  store ptr %0, ptr %i.bu, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bx = load i32, ptr %i.ai, align 8
  %i.by = zext i32 %i.bx to i64
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.by
  br i1 %.not.i, label %_ZN4absl13base_internalL18LLA_SkiplistInsertEPNS0_12_GLOBAL__N_19AllocListES3_PS3_.exit, label %.lr.ph23.i, !llvm.loop !17

_ZN4absl13base_internalL18LLA_SkiplistInsertEPNS0_12_GLOBAL__N_19AllocListES3_PS3_.exit: ; preds = %.lr.ph23.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.k

bb.k:                                             ; preds = %_ZN4absl13base_internalL18LLA_SkiplistInsertEPNS0_12_GLOBAL__N_19AllocListES3_PS3_.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl13base_internalL18LLA_SkiplistDeleteEPNS0_12_GLOBAL__N_19AllocListES3_PS3_(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.preheader.i, label %._crit_edge.i

.preheader.preheader.i:                           ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64                ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.preheader.i
  %indvars.iv.next.i.prol = add nsw i64 %i.d, -1  ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i.prol
  %.1.i.prol = phi ptr [ %i.g, %bb.b ], [ %0, %.preheader.i.prol ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.1.i.prol, i64 40
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i.prol
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp ne ptr %i.g, null
  %i.i = icmp ult ptr %i.g, %1
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %.preheader.i.prol.loopexit.unr-lcssa, !llvm.loop !14

.preheader.i.prol.loopexit.unr-lcssa:             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.prol
  store ptr %.1.i.prol, ptr %i.k, align 8
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol.loopexit.unr-lcssa, %.preheader.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.d, %.preheader.preheader.i ], [ %indvars.iv.next.i.prol, %.preheader.i.prol.loopexit.unr-lcssa ]
  %.01316.i.unr = phi ptr [ %0, %.preheader.preheader.i ], [ %.1.i.prol, %.preheader.i.prol.loopexit.unr-lcssa ]
  %i.l = icmp eq i32 %i.b, 1
  br i1 %i.l, label %._crit_edge.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.e ], [ %indvars.iv.i.unr, %.preheader.i.prol.loopexit ] ; 3 uses
  %.01316.i = phi ptr [ %.1.i.1, %bb.e ], [ %.01316.i.unr, %.preheader.i.prol.loopexit ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  br label %bb.c

._crit_edge.loopexit.i:                           ; preds = %bb.e, %.preheader.i.prol.loopexit
  %.pre.i = load i32, ptr %i.a, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %i.m = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN4absl13base_internalL18LLA_SkiplistSearchEPNS0_12_GLOBAL__N_19AllocListES3_PS3_.exit, label %bb.f

bb.c:                                             ; preds = %bb.c, %.preheader.i
  %.1.i = phi ptr [ %i.q, %bb.c ], [ %.01316.i, %.preheader.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i, i64 40
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = icmp ne ptr %i.q, null
  %i.s = icmp ult ptr %i.q, %1
  %i.t = and i1 %i.r, %i.s
  br i1 %i.t, label %bb.c, label %.preheader.i.1, !llvm.loop !14

.preheader.i.1:                                   ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i
  store ptr %.1.i, ptr %i.u, align 8
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.1
  %.1.i.1 = phi ptr [ %i.x, %bb.d ], [ %.1.i, %.preheader.i.1 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i.1, i64 40
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.1
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.y = icmp ne ptr %i.x, null
  %i.z = icmp ult ptr %i.x, %1
  %i.aa = and i1 %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e, !llvm.loop !14

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.1
  store ptr %.1.i.1, ptr %i.ab, align 8
  %i.ac = icmp sgt i64 %indvars.iv.i, 2
  br i1 %i.ac, label %.preheader.i, label %._crit_edge.loopexit.i, !llvm.loop !15

bb.f:                                             ; preds = %._crit_edge.i
  %i.ad = load ptr, ptr %2, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  br label %_ZN4absl13base_internalL18LLA_SkiplistSearchEPNS0_12_GLOBAL__N_19AllocListES3_PS3_.exit

_ZN4absl13base_internalL18LLA_SkiplistSearchEPNS0_12_GLOBAL__N_19AllocListES3_PS3_.exit: ; preds = %._crit_edge.i, %bb.f
  %i.ag = phi ptr [ %i.af, %bb.f ], [ null, %._crit_edge.i ]
  %.not = icmp eq ptr %1, %i.ag
  br i1 %.not, label %.preheader, label %bb.g, !prof !5

.preheader:                                       ; preds = %_ZN4absl13base_internalL18LLA_SkiplistSearchEPNS0_12_GLOBAL__N_19AllocListES3_PS3_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %.not2425 = icmp eq i32 %i.ai, 0
  br i1 %.not2425, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.h

bb.g:                                             ; preds = %_ZN4absl13base_internalL18LLA_SkiplistSearchEPNS0_12_GLOBAL__N_19AllocListES3_PS3_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 56), i32 noundef 191, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #11
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 191, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13base_internalL18LLA_SkiplistDeleteEPNS0_12_GLOBAL__N_19AllocListES3_PS3_) #12
  unreachable

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.ao, %1
  br i1 %i.ap, label %bb.i, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.i, %bb.h
  %.pr.pre = load i32, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.pr = phi i32 [ %.pr.pre, %.critedge.loopexit ], [ %i.m, %.preheader ] ; 2 uses
  %i.aq = icmp sgt i32 %.pr, 0
  br i1 %i.aq, label %.lr.ph28, label %.critedge2

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.as, ptr %i.an, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load i32, ptr %i.ah, align 8
  %i.au = zext i32 %i.at to i64
  %.not24 = icmp eq i64 %indvars.iv.next, %i.au
  br i1 %.not24, label %.critedge.loopexit, label %bb.h, !llvm.loop !19

.lr.ph28:                                         ; preds = %.critedge, %bb.j
  %3 = phi i32 [ %5, %bb.j ], [ %.pr, %.critedge ] ; 3 uses
  %4 = zext nneg i32 %3 to i64
  %i.av = getelementptr [8 x i8], ptr %0, i64 %4
  %i.aw = getelementptr i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %.lr.ph28
  %5 = add nsw i32 %3, -1                         ; 2 uses
  store i32 %5, ptr %i.a, align 8
  %i.az = icmp sgt i32 %3, 1
  br i1 %i.az, label %.lr.ph28, label %.critedge2, !llvm.loop !20

.critedge2:                                       ; preds = %.lr.ph28, %bb.j, %.critedge
  ret void
}

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @prctl(i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl13base_internal12CallOnceImplIRFvvEJEEEvPSt6atomicIjENS0_14SchedulingModeEOT_DpOT0_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 2 uses
  switch i32 %i.a, label %bb.b [
    i32 1707250555, label %bb.c
    i32 94570706, label %bb.c
    i32 221, label %bb.c
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %i.a to i64
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.48, i64 47), i32 noundef 164, ptr noundef nonnull @.str.49, i64 noundef %i.b) #11
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.48, i32 noundef 164, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13base_internal12CallOnceImplIRFvvEJEEEvPSt6atomicIjENS0_14SchedulingModeEOT_DpOT0_) #12
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = cmpxchg ptr %0, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit: ; preds = %bb.c
  %i.e = tail call noundef i32 @_ZN4absl13base_internal12SpinLockWaitEPSt6atomicIjEiPKNS0_22SpinLockWaitTransitionENS0_14SchedulingModeE(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @_ZZN4absl13base_internal12CallOnceImplIRFvvEJEEEvPSt6atomicIjENS0_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef %1) #11
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread, label %bb.e

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread: ; preds = %bb.c, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit
  tail call void %2() #11, !inline_history !21
  %i.g = atomicrmw xchg ptr %0, i32 221 release, align 4
  %i.h = icmp eq i32 %i.g, 94570706
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread
  tail call void @AbslInternalSpinLockWake(ptr noundef nonnull %0, i1 noundef zeroext true) #11
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread, %bb.d, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit
  ret void
}

declare noundef i32 @_ZN4absl13base_internal12SpinLockWaitEPSt6atomicIjEiPKNS0_22SpinLockWaitTransitionENS0_14SchedulingModeE(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @AbslInternalSpinLockWake(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"branch_weights", !"expected", i32 2144510956, i32 2972692}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{null, null, null}
end_hunk_0
