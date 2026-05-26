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
  %i.j = add nsw i32 %i.i, %5                     ; 4 uses
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
  %9 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 14)
  %reass.sub133 = sub i32 %i.r, %9
  %i.t = add i32 %reass.sub133, 21
  %i.u = and i32 %i.t, -8                         ; 2 uses
  store i32 %i.u, ptr %i.s, align 4, !tbaa !28
  %i.v = mul nsw i32 %i.u, %i.n                   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store i32 %i.v, ptr %i.w, align 8, !tbaa !29
  %i.x = icmp slt i32 %5, 32
  %i.y = and i32 %i.v, -2147483144
  %.not125 = icmp eq i32 %i.y, 64
  %or.cond = select i1 %i.x, i1 true, i1 %.not125
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.z = phi i32 [ %i.aa, %.lr.ph ], [ %i.v, %bb.a ]
  %i.aa = add nsw i32 %i.z, 8                     ; 3 uses
  %i.ab = and i32 %i.aa, -2147483144
  %.not = icmp eq i32 %i.ab, 64
  br i1 %.not, label %..loopexit_crit_edge, label %.lr.ph, !llvm.loop !30

..loopexit_crit_edge:                             ; preds = %.lr.ph
  store i32 %i.aa, ptr %i.w, align 8, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ad = sext i32 %1 to i64
  %i.ae = shl nsw i64 %i.ad, 3
  %i.af = tail call i32 @posix_memalign(ptr noundef nonnull %i.ac, i64 noundef 64, i64 noundef %i.ae) #7 ; 0 uses
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ah = load i32, ptr %i.w, align 8, !tbaa !29
  %i.ai = mul nsw i32 %i.ah, %i.ag
  %i.aj = sext i32 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 3
  %i.al = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef %i.ak) #7 ; 0 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.an = load i32, ptr %i.w, align 8, !tbaa !29
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !8
  %i.ap = mul nsw i32 %i.ao, %i.an
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %i.ar, i1 false)
  %i.as = load i32, ptr %i.w, align 8, !tbaa !29  ; 2 uses
  %i.at = load i32, ptr %i.b, align 4, !tbaa !8   ; 4 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph127, label %._crit_edge

.lr.ph127:                                        ; preds = %.loopexit
  %i.av = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 8 uses
  %i.aw = sext i32 %i.as to i64                   ; 6 uses
  %wide.trip.count = zext nneg i32 %i.at to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.at, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph127
  %i.ax = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.ax
  %scevgep153 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %bound0 = icmp ult ptr %i.av, %scevgep153
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !32, !alias.scope !35 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.az = mul nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.ba = mul nsw <2 x i64> %step.add, %broadcast.splat
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ay, <2 x i64> %i.az
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ay, <2 x i64> %i.ba
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x ptr> %i.bb, ptr %i.bd, align 8, !tbaa !32, !alias.scope !38, !noalias !35
  store <2 x ptr> %i.bc, ptr %i.be, align 8, !tbaa !32, !alias.scope !38, !noalias !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !40

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
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bh = mul nsw i64 %indvars.iv.prol, %i.aw
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.prol
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !32
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !43

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bk = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bn = mul nsw i64 %indvars.iv, %i.aw
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.br = mul nsw i64 %indvars.iv.next, %i.aw
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bv = mul nsw i64 %indvars.iv.next.1, %i.aw
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next.1
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !32
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bz = mul nsw i64 %indvars.iv.next.2, %i.aw
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next.2
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.loopexit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.cd = load i32, ptr %i.s, align 4, !tbaa !28
  %i.ce = sext i32 %i.cd to i64
  %i.cf = shl nsw i64 %i.ce, 3
  %i.cg = call i32 @posix_memalign(ptr noundef nonnull %i.cc, i64 noundef 64, i64 noundef %i.cf) #7 ; 0 uses
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !46
  %i.ci = load i32, ptr %i.s, align 4, !tbaa !28
  %i.cj = sext i32 %i.ci to i64
  %i.ck = shl nsw i64 %i.cj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ch, i8 0, i64 %i.ck, i1 false)
  %i.cl = load i32, ptr %i.s, align 4, !tbaa !28  ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = shl nsw i64 %i.cm, 3
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.cp = call i32 @posix_memalign(ptr noundef nonnull %i.co, i64 noundef 64, i64 noundef %i.cn) #7 ; 0 uses
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !32
  %i.cr = load i32, ptr %i.s, align 4, !tbaa !28
  %i.cs = sext i32 %i.cr to i64
  %i.ct = shl nsw i64 %i.cs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cq, i8 0, i64 %i.ct, i1 false)
  %i.cu = load i32, ptr %i.s, align 4, !tbaa !28  ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.cy = call i32 @posix_memalign(ptr noundef nonnull %i.cx, i64 noundef 64, i64 noundef %i.cw) #7 ; 0 uses
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !32
  %i.da = load i32, ptr %i.s, align 4, !tbaa !28
  %i.db = sext i32 %i.da to i64
  %i.dc = shl nsw i64 %i.db, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cz, i8 0, i64 %i.dc, i1 false)
  %i.dd = load i32, ptr %i.s, align 4, !tbaa !28
  %i.de = sub nsw i32 0, %8                       ; 4 uses
  %i.df = load i32, ptr %i.g, align 8, !tbaa !21
  %i.dg = add nsw i32 %i.df, %8                   ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, %i.de
  br i1 %i.dh, label %.preheader.lr.ph, label %._crit_edge132

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.di = load i32, ptr %i.f, align 4, !tbaa !20
  %i.dj = add nsw i32 %i.di, %8                   ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, %i.de
  br i1 %i.dk, label %.preheader.lr.ph.split.us, label %._crit_edge132

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.dl = load i32, ptr %i.q, align 8, !tbaa !27
  %i.dm = zext i32 %i.de to i64
  %i.dn = load ptr, ptr %i.cc, align 8, !tbaa !46
  %i.do = load ptr, ptr %i.co, align 8, !tbaa !32
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !32
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge130.us, %.preheader.lr.ph.split.us
  %.0131.us = phi i32 [ %i.de, %.preheader.lr.ph.split.us ], [ %i.dy, %._crit_edge130.us ] ; 3 uses
  %i.dq = add nsw i32 %.0131.us, %8
  %i.dr = mul nsw i32 %i.dl, %i.dq
  %invariant.op.us = add i32 %8, %i.dr
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv136 = phi i64 [ %i.dm, %.preheader.us ], [ %indvars.iv.next137, %bb.b ] ; 2 uses
  %i.ds = trunc i64 %indvars.iv136 to i32         ; 2 uses
  %.reass.us = add i32 %invariant.op.us, %i.ds
  %i.dt = xor i32 %.0131.us, %i.ds
  %.not122.us = trunc i32 %i.dt to i1             ; 3 uses
  %i.du = sext i32 %.reass.us to i64              ; 3 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.du
  %. = sext i1 %.not122.us to i64
  %.151.a = select i1 %.not122.us, double 1.000000e+00, double 0.000000e+00
  %.152 = select i1 %.not122.us, double 0.000000e+00, double 1.000000e+00
  store i64 %., ptr %i.dv, align 8, !tbaa !47
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.du
  store double %.151.a, ptr %i.dw, align 8, !tbaa !49
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.du
  store double %.152, ptr %i.dx, align 8, !tbaa !49
  %indvars.iv.next137 = add i64 %indvars.iv136, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next137 to i32
  %exitcond139.not.a = icmp eq i32 %i.dj, %lftr.wideiv
  br i1 %exitcond139.not.a, label %._crit_edge130.us, label %bb.b, !llvm.loop !50

._crit_edge130.us:                                ; preds = %bb.b
  %i.dy = add nsw i32 %.0131.us, 1                ; 2 uses
  %exitcond140.not = icmp eq i32 %i.dy, %i.dg
  br i1 %exitcond140.not, label %._crit_edge132, label %.preheader.us, !llvm.loop !51

._crit_edge132:                                   ; preds = %._crit_edge130.us, %.preheader.lr.ph, %._crit_edge
  %i.dz = mul nsw i32 %i.at, %i.as
  %i.ea = add i32 %i.dz, %i.ag
  %i.eb = add i32 %i.ea, %i.cl
  %i.ec = add i32 %i.eb, %i.cu
  %i.ed = add i32 %i.ec, %i.dd
  %i.ee = shl i32 %i.ed, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.ee
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
