inline.NumInlined: 196
inline.NumDeleted: 78
begin_hunk_0_@_ZN2v86bigint13ProcessorImpl24FromStringBasePowerOfTwoENS0_8RWDigitsEPNS0_21FromStringAccumulatorE:bb.a
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %.lr.ph121.preheader189

.lr.ph121.preheader189:                           ; preds = %vector.memcheck, %.lr.ph121.preheader, %middle.block
  %indvars.iv130.ph = phi i64 [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph121.preheader ], [ %i.ag, %middle.block ] ; 2 uses
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph121.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph121.prol.loopexit, label %.lr.ph121.prol

.lr.ph121.prol:                                   ; preds = %.lr.ph121.preheader189, %.lr.ph121.prol
  %indvars.iv130.prol = phi i64 [ %indvars.iv.next131.prol, %.lr.ph121.prol ], [ %indvars.iv130.ph, %.lr.ph121.preheader189 ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph121.prol ], [ %indvars.iv.ph, %.lr.ph121.preheader189 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph121.prol ], [ 0, %.lr.ph121.preheader189 ]
  %indvars.iv.next131.prol = add nsw i64 %indvars.iv130.prol, -1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %indvars.iv130.prol
  %.0.copyload.i.i.prol = load i64, ptr %i.ao, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.prol
  store i64 %.0.copyload.i.i.prol, ptr %i.ap, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph121.prol.loopexit, label %.lr.ph121.prol, !llvm.loop !35

.lr.ph121.prol.loopexit:                          ; preds = %.lr.ph121.prol, %.lr.ph121.preheader189
  %indvars.iv130.unr = phi i64 [ %indvars.iv130.ph, %.lr.ph121.preheader189 ], [ %indvars.iv.next131.prol, %.lr.ph121.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph121.preheader189 ], [ %indvars.iv.next.prol, %.lr.ph121.prol ]
  %i.aq = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %.preheader, label %.lr.ph121

.preheader:                                       ; preds = %.lr.ph121.prol.loopexit, %.lr.ph121, %middle.block, %.preheader93
  %.0.lcssa = phi i32 [ 0, %.preheader93 ], [ %.sroa.speculated.i, %middle.block ], [ %.sroa.speculated.i, %.lr.ph121 ], [ %.sroa.speculated.i, %.lr.ph121.prol.loopexit ] ; 2 uses
  %i.as = icmp ult i32 %.0.lcssa, %2
  br i1 %i.as, label %.loopexit.sink.split, label %.loopexit

.lr.ph121:                                        ; preds = %.lr.ph121.prol.loopexit, %.lr.ph121
  %indvars.iv130 = phi i64 [ %indvars.iv.next131.3, %.lr.ph121 ], [ %indvars.iv130.unr, %.lr.ph121.prol.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph121 ], [ %indvars.iv.unr, %.lr.ph121.prol.loopexit ] ; 5 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %indvars.iv130
  %.0.copyload.i.i = load i64, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %.0.copyload.i.i, ptr %i.au, align 4
  %i.av = getelementptr [8 x i8], ptr %spec.select, i64 %indvars.iv130
  %i.aw = getelementptr i8, ptr %i.av, i64 -8
  %.0.copyload.i.i.1 = load i64, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.0.copyload.i.i.1, ptr %i.ay, align 4
  %i.az = getelementptr [8 x i8], ptr %spec.select, i64 %indvars.iv130
  %i.ba = getelementptr i8, ptr %i.az, i64 -16
  %.0.copyload.i.i.2 = load i64, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.0.copyload.i.i.2, ptr %i.bc, align 4
  %indvars.iv.next131.3 = add nsw i64 %indvars.iv130, -4
  %i.bd = getelementptr [8 x i8], ptr %spec.select, i64 %indvars.iv130
  %i.be = getelementptr i8, ptr %i.bd, i64 -24
  %.0.copyload.i.i.3 = load i64, ptr %i.be, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 %.0.copyload.i.i.3, ptr %i.bg, align 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph121, !llvm.loop !36

bb.b:                                             ; preds = %bb.a
  %i.bh = add i32 %.sroa.speculated.i, -2         ; 2 uses
  %i.bi = zext i32 %i.x to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.bi
  %.0.copyload.i.i73 = load i64, ptr %i.bj, align 1 ; 2 uses
  %i.bk = sub nsw i32 64, %i.t                    ; 2 uses
  %i.bl = icmp sgt i32 %i.bh, -1
  br i1 %i.bl, label %.preheader95, label %._crit_edge

.preheader95:                                     ; preds = %bb.b, %.thread
  %.2112 = phi i32 [ %i.cb, %.thread ], [ 0, %bb.b ] ; 3 uses
  %.047111 = phi i32 [ %.451, %.thread ], [ undef, %bb.b ]
  %.052110 = phi i64 [ %.456, %.thread ], [ undef, %bb.b ]
  %.057109 = phi i32 [ %.451, %.thread ], [ %i.bk, %bb.b ] ; 2 uses
  %.061108 = phi i64 [ %.456, %.thread ], [ %.0.copyload.i.i73, %bb.b ] ; 2 uses
  %.166107 = phi i32 [ %.368, %.thread ], [ %i.bh, %bb.b ] ; 2 uses
  %i.bm = icmp slt i32 %.057109, 64
  br i1 %i.bm, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader95, %bb.d
  %.15898 = phi i32 [ %i.bz, %bb.d ], [ %.057109, %.preheader95 ] ; 4 uses
  %.16297 = phi i64 [ %i.bs, %bb.d ], [ %.061108, %.preheader95 ]
  %.26796 = phi i32 [ %i.bn, %bb.d ], [ %.166107, %.preheader95 ] ; 3 uses
  %i.bn = add nsw i32 %.26796, -1                 ; 3 uses
  %i.bo = zext i32 %.26796 to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.bo
  %.0.copyload.i.i74 = load i64, ptr %i.bp, align 1 ; 2 uses
  %i.bq = zext nneg i32 %.15898 to i64
  %i.br = shl i64 %.0.copyload.i.i74, %i.bq
  %i.bs = or i64 %i.br, %.16297                   ; 4 uses
  %i.bt = icmp slt i32 %.15898, %.zext
  br i1 %i.bt, label %bb.c, label %.thread142

bb.c:                                             ; preds = %.lr.ph
  %i.bu = icmp slt i32 %.26796, 1
  br i1 %i.bu, label %.sink.split, label %bb.d

.thread142:                                       ; preds = %.lr.ph
  %i.bv = sub nuw nsw i32 64, %.15898             ; 2 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = lshr i64 %.0.copyload.i.i74, %i.bw
  %i.by = sub nsw i32 %i.w, %i.bv
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.bz = add nsw i32 %.15898, %i.w               ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 64
  br i1 %i.ca, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.d, %.thread142, %.preheader95
  %.368 = phi i32 [ %.166107, %.preheader95 ], [ %i.bn, %.thread142 ], [ %i.bn, %bb.d ] ; 2 uses
  %.263 = phi i64 [ %.061108, %.preheader95 ], [ %i.bs, %.thread142 ], [ %i.bs, %bb.d ]
  %.456 = phi i64 [ %.052110, %.preheader95 ], [ %i.bx, %.thread142 ], [ 0, %bb.d ] ; 3 uses
  %.451 = phi i32 [ %.047111, %.preheader95 ], [ %i.by, %.thread142 ], [ 0, %bb.d ] ; 3 uses
  %i.cb = add i32 %.2112, 1                       ; 2 uses
  %i.cc = zext i32 %.2112 to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cc
  store i64 %.263, ptr %i.cd, align 4
  %i.ce = icmp sgt i32 %.368, -1
  br i1 %i.ce, label %.preheader95, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.thread, %bb.b
  %.061.lcssa = phi i64 [ %.0.copyload.i.i73, %bb.b ], [ %.456, %.thread ]
  %.057.lcssa = phi i32 [ %i.bk, %bb.b ], [ %.451, %.thread ]
  %.2.lcssa = phi i32 [ 0, %bb.b ], [ %i.cb, %.thread ] ; 2 uses
  %i.cf = icmp sgt i32 %.057.lcssa, 0
  br i1 %i.cf, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.c, %._crit_edge
  %.2112.lcssa.sink167 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.2112, %bb.c ] ; 2 uses
  %.lcssa155.sink = phi i64 [ %.061.lcssa, %._crit_edge ], [ %i.bs, %bb.c ]
  %i.cg = add i32 %.2112.lcssa.sink167, 1
  %i.ch = zext i32 %.2112.lcssa.sink167 to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ch
  store i64 %.lcssa155.sink, ptr %i.ci, align 4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %._crit_edge
  %.3 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %i.cg, %.sink.split ] ; 2 uses
  %i.cj = icmp ult i32 %.3, %2
  br i1 %i.cj, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.e, %.preheader
  %.3.sink171 = phi i32 [ %.0.lcssa, %.preheader ], [ %.3, %bb.e ] ; 2 uses
  %i.ck = zext i32 %.3.sink171 to i64
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.cl
  %i.cm = xor i32 %.3.sink171, -1
  %i.cn = add i32 %2, %i.cm
  %i.co = zext i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 3
  %i.cq = add nuw nsw i64 %i.cp, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.cq, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.e, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v86bigint13ProcessorImpl10FromStringENS0_8RWDigitsEPNS0_21FromStringAccumulatorE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.b = load i8, ptr %i.a, align 4, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not44 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.c, label %.preheader36, label %bb.b

.preheader36:                                     ; preds = %bb.a
  br i1 %.not44, label %.preheader, label %.lr.ph41

.preheader.loopexit:                              ; preds = %.lr.ph41
  %i.f = trunc nuw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader36
  %.0.lcssa = phi i32 [ 0, %.preheader36 ], [ %i.f, %.preheader.loopexit ] ; 3 uses
  %i.g = icmp ult i32 %.0.lcssa, %2
  br i1 %i.g, label %.lr.ph43.preheader, label %.loopexit

.lr.ph43.preheader:                               ; preds = %.preheader
  %i.h = zext i32 %.0.lcssa to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.i
  %i.j = xor i32 %.0.lcssa, -1
  %i.k = add i32 %2, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = add nuw nsw i64 %i.m, 8
  br label %.loopexit.sink.split

.lr.ph41:                                         ; preds = %.preheader36, %.lr.ph41
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph41 ], [ 0, %.preheader36 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.p, ptr %i.q, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.r = load i32, ptr %i.d, align 8
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %.lr.ph41, label %.preheader.loopexit, !llvm.loop !40

bb.b:                                             ; preds = %bb.a
  br i1 %.not44, label %.preheader37, label %bb.c

.preheader37:                                     ; preds = %bb.b
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader37
  %i.u = zext i32 %2 to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 117
  %i.x = load i8, ptr %i.w, align 1
  %i.y = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.x)
  %or.cond = icmp eq i8 %i.y, 1
  br i1 %or.cond, label %bb.d, label %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v86bigint13ProcessorImpl24FromStringBasePowerOfTwoENS0_8RWDigitsEPNS0_21FromStringAccumulatorE(ptr nonnull align 8 poison, ptr %1, i32 %2, ptr noundef nonnull %3)
  br label %.loopexit

_ZN2v86bigint12IsPowerOfTwoEi.exit.thread:        ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.z, align 8
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = trunc i64 %i.ag to i32
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.e, i32 %i.ah)
  %i.ai = icmp ult i32 %.sroa.speculated.i, 300
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread
  tail call void @_ZN2v86bigint13ProcessorImpl17FromStringClassicENS0_8RWDigitsEPNS0_21FromStringAccumulatorE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull %3)
  br label %.loopexit

bb.f:                                             ; preds = %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread
  tail call void @_ZN2v86bigint13ProcessorImpl15FromStringLargeENS0_8RWDigitsEPNS0_21FromStringAccumulatorE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull %3)
  br label %.loopexit

.loopexit.sink.split:                             ; preds = %.lr.ph43.preheader, %.lr.ph.preheader
  %.sink52 = phi i64 [ %i.v, %.lr.ph.preheader ], [ %i.n, %.lr.ph43.preheader ]
  %.sink = phi ptr [ %1, %.lr.ph.preheader ], [ %scevgep, %.lr.ph43.preheader ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %.sink, i8 0, i64 %.sink52, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.preheader37, %.preheader, %bb.e, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v86bigint9Processor10FromStringENS0_8RWDigitsEPNS0_21FromStringAccumulatorE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i32 %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v86bigint13ProcessorImpl10FromStringENS0_8RWDigitsEPNS0_21FromStringAccumulatorE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef %3)
  %i.a = tail call noundef i32 @_ZN2v86bigint13ProcessorImpl20get_and_clear_statusEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  ret i32 %i.a
}

declare noundef i32 @_ZN2v86bigint13ProcessorImpl20get_and_clear_statusEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #8

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.peeled.count", i32 1}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6, !11}
!11 = !{!"llvm.loop.peeled.count", i32 2}
!12 = distinct !{null}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !6, !16}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6, !16, !17}
!21 = distinct !{!21, !6, !16}
!22 = distinct !{!22, !6, !16, !17}
!23 = distinct !{!23, !6, !16}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6, !16, !17}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !6, !16}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !6, !16, !17}
!35 = distinct !{!35, !27}
!36 = distinct !{!36, !6, !16}
!37 = distinct !{!37, !6}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = distinct !{!40, !6}
end_hunk_0
