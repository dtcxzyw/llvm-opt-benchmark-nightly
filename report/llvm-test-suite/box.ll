begin_hunk_0_@create_box:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.j, i32 14)
  %reass.sub133 = sub i32 %i.r, %i.t
  %i.u = add i32 %reass.sub133, 21
  %i.v = and i32 %i.u, -8                         ; 2 uses
  store i32 %i.v, ptr %i.s, align 4, !tbaa !28
  %i.w = mul nsw i32 %i.v, %i.n                   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store i32 %i.w, ptr %i.x, align 8, !tbaa !29
  %i.y = icmp slt i32 %5, 32
  %i.z = and i32 %i.w, -2147483144
  %.not125 = icmp eq i32 %i.z, 64
  %or.cond = select i1 %i.y, i1 true, i1 %.not125
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.aa = phi i32 [ %i.ab, %.lr.ph ], [ %i.w, %bb.a ]
  %i.ab = add nsw i32 %i.aa, 8                    ; 3 uses
  %i.ac = and i32 %i.ab, -2147483144
  %.not = icmp eq i32 %i.ac, 64
  br i1 %.not, label %..loopexit_crit_edge, label %.lr.ph, !llvm.loop !30

..loopexit_crit_edge:                             ; preds = %.lr.ph
  store i32 %i.ab, ptr %i.x, align 8, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ae = sext i32 %1 to i64
  %i.af = shl nsw i64 %i.ae, 3
  %i.ag = tail call i32 @posix_memalign(ptr noundef nonnull %i.ad, i64 noundef 64, i64 noundef %i.af) #7 ; 0 uses
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ai = load i32, ptr %i.x, align 8, !tbaa !29
  %i.aj = mul nsw i32 %i.ai, %i.ah
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef %i.al) #7 ; 0 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ao = load i32, ptr %i.x, align 8, !tbaa !29
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !8
  %i.aq = mul nsw i32 %i.ap, %i.ao
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.an, i8 0, i64 %i.as, i1 false)
  %i.at = load i32, ptr %i.x, align 8, !tbaa !29  ; 2 uses
  %i.au = load i32, ptr %i.b, align 4, !tbaa !8   ; 4 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph127, label %._crit_edge

.lr.ph127:                                        ; preds = %.loopexit
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 8 uses
  %i.ax = sext i32 %i.at to i64                   ; 6 uses
  %wide.trip.count = zext nneg i32 %i.au to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.au, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph127
  %i.ay = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.ay
  %scevgep153 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %bound0 = icmp ult ptr %i.aw, %scevgep153
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !32, !alias.scope !35 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ba = mul nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.bb = mul nsw <2 x i64> %step.add, %broadcast.splat
  %wide.gep = getelementptr inbounds [8 x i8], ptr %i.az, <2 x i64> %i.ba
  %wide.gep154 = getelementptr inbounds [8 x i8], ptr %i.az, <2 x i64> %i.bb
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x ptr> %wide.gep, ptr %i.bc, align 8, !tbaa !32, !alias.scope !38, !noalias !35
  store <2 x ptr> %wide.gep154, ptr %i.bd, align 8, !tbaa !32, !alias.scope !38, !noalias !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph127, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph127 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bg = mul nsw i64 %indvars.iv.prol, %i.ax
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.prol
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !32
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !43

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bj = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bm = mul nsw i64 %indvars.iv, %i.ax
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bq = mul nsw i64 %indvars.iv.next, %i.ax
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bu = mul nsw i64 %indvars.iv.next.1, %i.ax
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.1
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !32
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.by = mul nsw i64 %indvars.iv.next.2, %i.ax
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.2
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.loopexit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.cc = load i32, ptr %i.s, align 4, !tbaa !28
  %i.cd = sext i32 %i.cc to i64
  %i.ce = shl nsw i64 %i.cd, 3
  %i.cf = call i32 @posix_memalign(ptr noundef nonnull %i.cb, i64 noundef 64, i64 noundef %i.ce) #7 ; 0 uses
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !46
  %i.ch = load i32, ptr %i.s, align 4, !tbaa !28
  %i.ci = sext i32 %i.ch to i64
  %i.cj = shl nsw i64 %i.ci, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cg, i8 0, i64 %i.cj, i1 false)
  %i.ck = load i32, ptr %i.s, align 4, !tbaa !28  ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = shl nsw i64 %i.cl, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.co = call i32 @posix_memalign(ptr noundef nonnull %i.cn, i64 noundef 64, i64 noundef %i.cm) #7 ; 0 uses
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !32
  %i.cq = load i32, ptr %i.s, align 4, !tbaa !28
  %i.cr = sext i32 %i.cq to i64
  %i.cs = shl nsw i64 %i.cr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cp, i8 0, i64 %i.cs, i1 false)
  %i.ct = load i32, ptr %i.s, align 4, !tbaa !28  ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = shl nsw i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.cx = call i32 @posix_memalign(ptr noundef nonnull %i.cw, i64 noundef 64, i64 noundef %i.cv) #7 ; 0 uses
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !32
  %i.cz = load i32, ptr %i.s, align 4, !tbaa !28
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cy, i8 0, i64 %i.db, i1 false)
  %i.dc = load i32, ptr %i.s, align 4, !tbaa !28
  %i.dd = sub nsw i32 0, %8                       ; 4 uses
  %i.de = load i32, ptr %i.g, align 8, !tbaa !21
  %i.df = add nsw i32 %i.de, %8                   ; 2 uses
  %i.dg = icmp sgt i32 %i.df, %i.dd
  br i1 %i.dg, label %.preheader.lr.ph, label %._crit_edge132

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.dh = load i32, ptr %i.f, align 4, !tbaa !20
  %i.di = add nsw i32 %i.dh, %8                   ; 2 uses
  %i.dj = icmp sgt i32 %i.di, %i.dd
  br i1 %i.dj, label %.preheader.lr.ph.split.us, label %._crit_edge132

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.dk = load i32, ptr %i.q, align 8, !tbaa !27
  %i.dl = zext i32 %i.dd to i64
  %i.dm = load ptr, ptr %i.cb, align 8, !tbaa !46
  %i.dn = load ptr, ptr %i.cn, align 8, !tbaa !32
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !32
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge130.us, %.preheader.lr.ph.split.us
  %.0131.us = phi i32 [ %i.dd, %.preheader.lr.ph.split.us ], [ %i.dx, %._crit_edge130.us ] ; 3 uses
  %i.dp = add nsw i32 %.0131.us, %8
  %i.dq = mul nsw i32 %i.dk, %i.dp
  %invariant.op.us = add i32 %8, %i.dq
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv136 = phi i64 [ %i.dl, %.preheader.us ], [ %indvars.iv.next137, %bb.b ] ; 2 uses
  %i.dr = trunc i64 %indvars.iv136 to i32         ; 2 uses
  %.reass.us = add i32 %invariant.op.us, %i.dr
  %i.ds = xor i32 %.0131.us, %i.dr
  %.not122.us = trunc i32 %i.ds to i1             ; 3 uses
  %i.dt = sext i32 %.reass.us to i64              ; 3 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dt
  %. = sext i1 %.not122.us to i64
  %.151.a = select i1 %.not122.us, double 1.000000e+00, double 0.000000e+00
  %.152 = select i1 %.not122.us, double 0.000000e+00, double 1.000000e+00
  store i64 %., ptr %i.du, align 8, !tbaa !47
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.dt
  store double %.151.a, ptr %i.dv, align 8, !tbaa !49
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dt
  store double %.152, ptr %i.dw, align 8, !tbaa !49
  %indvars.iv.next137 = add i64 %indvars.iv136, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next137 to i32
  %exitcond139.not.a = icmp eq i32 %i.di, %lftr.wideiv
  br i1 %exitcond139.not.a, label %._crit_edge130.us, label %bb.b, !llvm.loop !50

._crit_edge130.us:                                ; preds = %bb.b
  %i.dx = add nsw i32 %.0131.us, 1                ; 2 uses
  %exitcond140.not = icmp eq i32 %i.dx, %i.df
  br i1 %exitcond140.not, label %._crit_edge132, label %.preheader.us, !llvm.loop !51

._crit_edge132:                                   ; preds = %._crit_edge130.us, %.preheader.lr.ph, %._crit_edge
  %i.dy = mul nsw i32 %i.au, %i.at
  %i.dz = add i32 %i.dy, %i.ah
  %i.ea = add i32 %i.dz, %i.ck
  %i.eb = add i32 %i.ea, %i.ct
  %i.ec = add i32 %i.eb, %i.dc
  %i.ed = shl i32 %i.ec, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.ed
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @destroy_box(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.c) #7
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.d) #7
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 60}
!9 = !{!"", !10, i64 0, !11, i64 8, !11, i64 20, !11, i64 32, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !6, i64 64, !12, i64 176, !15, i64 184, !6, i64 192, !16, i64 208}
!10 = !{!"double", !6, i64 0}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!12 = !{!"p2 double", !13, i64 0}
!13 = !{!"any p2 pointer", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 long", !14, i64 0}
!16 = !{!"p1 omnipotent char", !14, i64 0}
!17 = !{!9, !5, i64 8}
!18 = !{!9, !5, i64 12}
!19 = !{!9, !5, i64 16}
!20 = !{!9, !5, i64 20}
!21 = !{!9, !5, i64 24}
!22 = !{!9, !5, i64 28}
!23 = !{!9, !5, i64 32}
!24 = !{!9, !5, i64 36}
!25 = !{!9, !5, i64 40}
!26 = !{!9, !5, i64 44}
!27 = !{!9, !5, i64 48}
!28 = !{!9, !5, i64 52}
!29 = !{!9, !5, i64 56}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 double", !14, i64 0}
!34 = !{!9, !12, i64 176}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !31, !41, !42}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !31, !41}
!46 = !{!9, !15, i64 184}
!47 = !{!48, !48, i64 0}
!48 = !{!"long", !6, i64 0}
!49 = !{!10, !10, i64 0}
!50 = distinct !{!50, !31}
!51 = distinct !{!51, !31}
end_hunk_0
