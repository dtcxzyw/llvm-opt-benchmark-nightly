begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@RandomPadding = dso_local local_unnamed_addr global i32 -1, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, -7) i32 @create_box(ptr noundef initializes((8, 64)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  store i32 %1, ptr %i.b, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %i.d, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %4, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 %5, ptr %i.f, align 4, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 %6, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %7, ptr %i.h, align 4, !tbaa !22
  %i.i = shl nsw i32 %8, 1                        ; 3 uses
  %i.j = add nsw i32 %i.i, %5                     ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.j, ptr %i.k, align 8, !tbaa !23
  %i.l = add nsw i32 %i.i, %6                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.l, ptr %i.m, align 4, !tbaa !24
  %i.n = add nsw i32 %i.i, %7                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.n, ptr %i.o, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %8, ptr %i.p, align 4, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 %i.j, ptr %i.q, align 8, !tbaa !27
  %i.r = mul nsw i32 %i.j, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  %9 = icmp slt i32 %i.j, 14
  %i.t = sub nsw i32 14, %i.j
  %spec.select = select i1 %9, i32 %i.t, i32 0
  %10 = add i32 %i.r, 7
  %i.u = add i32 %10, %spec.select
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
  %i.ag = tail call i32 @posix_memalign(ptr noundef nonnull %i.ad, i64 noundef 64, i64 noundef %i.af) #6 ; 0 uses
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ai = load i32, ptr %i.x, align 8, !tbaa !29
  %i.aj = mul nsw i32 %i.ai, %i.ah
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef %i.al) #6 ; 0 uses
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
  %scevgep152 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %bound0 = icmp ult ptr %i.aw, %scevgep152
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
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, <2 x i64> %i.ba
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.az, <2 x i64> %i.bb
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x ptr> %i.bc, ptr %i.be, align 8, !tbaa !32, !alias.scope !38, !noalias !35
  store <2 x ptr> %i.bd, ptr %i.bf, align 8, !tbaa !32, !alias.scope !38, !noalias !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !40

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
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bi = mul nsw i64 %indvars.iv.prol, %i.ax
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.prol
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !32
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !43

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bl = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bo = mul nsw i64 %indvars.iv, %i.ax
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bs = mul nsw i64 %indvars.iv.next, %i.ax
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bw = mul nsw i64 %indvars.iv.next.1, %i.ax
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.1
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !32
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ca = mul nsw i64 %indvars.iv.next.2, %i.ax
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next.2
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.loopexit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ce = load i32, ptr %i.s, align 4, !tbaa !28
  %i.cf = sext i32 %i.ce to i64
  %i.cg = shl nsw i64 %i.cf, 3
  %i.ch = call i32 @posix_memalign(ptr noundef nonnull %i.cd, i64 noundef 64, i64 noundef %i.cg) #6 ; 0 uses
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !46
  %i.cj = load i32, ptr %i.s, align 4, !tbaa !28
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ci, i8 0, i64 %i.cl, i1 false)
  %i.cm = load i32, ptr %i.s, align 4, !tbaa !28  ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.cq = call i32 @posix_memalign(ptr noundef nonnull %i.cp, i64 noundef 64, i64 noundef %i.co) #6 ; 0 uses
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !32
  %i.cs = load i32, ptr %i.s, align 4, !tbaa !28
  %i.ct = sext i32 %i.cs to i64
  %i.cu = shl nsw i64 %i.ct, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cr, i8 0, i64 %i.cu, i1 false)
  %i.cv = load i32, ptr %i.s, align 4, !tbaa !28  ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i64 %i.cw, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.cz = call i32 @posix_memalign(ptr noundef nonnull %i.cy, i64 noundef 64, i64 noundef %i.cx) #6 ; 0 uses
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !32
  %i.db = load i32, ptr %i.s, align 4, !tbaa !28
  %i.dc = sext i32 %i.db to i64
  %i.dd = shl nsw i64 %i.dc, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.da, i8 0, i64 %i.dd, i1 false)
  %i.de = load i32, ptr %i.s, align 4, !tbaa !28
  %i.df = sub nsw i32 0, %8                       ; 4 uses
  %i.dg = load i32, ptr %i.g, align 8, !tbaa !21
  %i.dh = add nsw i32 %i.dg, %8                   ; 2 uses
  %i.di = icmp sgt i32 %i.dh, %i.df
  br i1 %i.di, label %.preheader.lr.ph, label %._crit_edge132

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.dj = load i32, ptr %i.f, align 4, !tbaa !20
  %i.dk = add nsw i32 %i.dj, %8                   ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, %i.df
  br i1 %i.dl, label %.preheader.lr.ph.split.us, label %._crit_edge132

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.dm = load i32, ptr %i.q, align 8, !tbaa !27
  %i.dn = zext i32 %i.df to i64
  %i.do = load ptr, ptr %i.cd, align 8, !tbaa !46
  %i.dp = load ptr, ptr %i.cp, align 8, !tbaa !32
  %i.dq = load ptr, ptr %i.cy, align 8, !tbaa !32
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge130.us, %.preheader.lr.ph.split.us
  %.0131.us = phi i32 [ %i.df, %.preheader.lr.ph.split.us ], [ %i.dz, %._crit_edge130.us ] ; 3 uses
  %i.dr = add nsw i32 %.0131.us, %8
  %i.ds = mul nsw i32 %i.dm, %i.dr
  %invariant.op.us = add i32 %8, %i.ds
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv135 = phi i64 [ %i.dn, %.preheader.us ], [ %indvars.iv.next136, %bb.b ] ; 2 uses
  %i.dt = trunc i64 %indvars.iv135 to i32         ; 2 uses
  %.reass.us = add i32 %invariant.op.us, %i.dt
  %i.du = xor i32 %.0131.us, %i.dt
  %.not122.us = trunc i32 %i.du to i1             ; 3 uses
  %i.dv = sext i32 %.reass.us to i64              ; 3 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dv
  %. = sext i1 %.not122.us to i64
  %.150 = select i1 %.not122.us, double 1.000000e+00, double 0.000000e+00
  %.151 = select i1 %.not122.us, double 0.000000e+00, double 1.000000e+00
  store i64 %., ptr %i.dw, align 8, !tbaa !47
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dv
  store double %.150, ptr %i.dx, align 8, !tbaa !49
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dv
  store double %.151, ptr %i.dy, align 8, !tbaa !49
  %indvars.iv.next136 = add i64 %indvars.iv135, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next136 to i32
  %exitcond138.not = icmp eq i32 %i.dk, %lftr.wideiv
  br i1 %exitcond138.not, label %._crit_edge130.us, label %bb.b, !llvm.loop !50

._crit_edge130.us:                                ; preds = %bb.b
  %i.dz = add nsw i32 %.0131.us, 1                ; 2 uses
  %exitcond139.not = icmp eq i32 %i.dz, %i.dh
  br i1 %exitcond139.not, label %._crit_edge132, label %.preheader.us, !llvm.loop !51

._crit_edge132:                                   ; preds = %._crit_edge130.us, %.preheader.lr.ph, %._crit_edge
  %i.ea = mul nsw i32 %i.au, %i.at
  %i.eb = add i32 %i.ea, %i.ah
  %i.ec = add i32 %i.eb, %i.cm
  %i.ed = add i32 %i.ec, %i.cv
  %i.ee = add i32 %i.ed, %i.de
  %i.ef = shl i32 %i.ee, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.ef
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
define dso_local void @destroy_box(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.c) #6
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.d) #6
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
