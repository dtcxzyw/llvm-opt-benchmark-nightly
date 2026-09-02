Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ipred_prepare_tmpl?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@av1_mode_to_angle_map = internal unnamed_addr constant [8 x i8] c"Z\B4-\87q\9D\CBC", align 1
@av1_mode_conv = internal unnamed_addr constant [13 x [2 x [2 x i8]]] [[2 x [2 x i8]] [[2 x i8] c"\05\04", [2 x i8] c"\03\00"], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\05\01", [2 x i8] c"\02\0C"]], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden i32 @dav1d_prepare_intra_edges_16bpc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9, i32 noundef %10, ptr nofree noundef captures(none) %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr nofree noundef captures(none) %15, i32 noundef %16) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %16, i1 true)
  %i.b = sub nuw nsw i32 32, %i.a                 ; 3 uses
  %i.c = icmp slt i32 %2, %5
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp slt i32 %0, %4
  tail call void @llvm.assume(i1 %i.d)
  switch i32 %10, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 5, label %bb.b
    i32 6, label %bb.b
    i32 7, label %bb.b
    i32 8, label %bb.b
    i32 0, label %bb.f
    i32 12, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.e = zext nneg i32 %10 to i64
  %i.f = getelementptr i8, ptr @av1_mode_to_angle_map, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !42
  %i.i = zext i8 %i.h to i32
  %i.j = load i32, ptr %11, align 4, !tbaa !43
  %i.k = mul nsw i32 %i.j, 3
  %i.l = add nsw i32 %i.k, %i.i                   ; 5 uses
  store i32 %i.l, ptr %11, align 4, !tbaa !43
  %i.m = icmp slt i32 %i.l, 91
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ne i32 %i.l, 90
  %i.o = icmp ne i32 %3, 0
  %i.p = and i1 %i.o, %i.n
  %i.q = select i1 %i.p, i32 6, i32 1
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.r = icmp samesign ult i32 %i.l, 180
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ne i32 %i.l, 180
  %i.t = icmp ne i32 %1, 0
  %i.u = and i1 %i.t, %i.s
  %i.v = select i1 %i.u, i32 8, i32 2
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.w = zext nneg i32 %10 to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @av1_mode_conv, i64 %i.w
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.y
  %i.aa = sext i32 %3 to i64
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !42
  %i.ad = zext i8 %i.ac to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.c, %bb.e, %bb.f
  %.0167 = phi i32 [ %10, %bb.a ], [ %i.q, %bb.c ], [ %i.ad, %bb.f ], [ %i.v, %bb.e ], [ 7, %bb.d ] ; 5 uses
  %.not = icmp eq i32 %3, 0                       ; 5 uses
  %.pre = zext i32 %.0167 to i64                  ; 2 uses
  %.pre260 = shl nuw i64 1, %.pre                 ; 5 uses
  br i1 %.not, label %._crit_edge259, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = and i64 %.pre260, 300
  %.not178.not = icmp eq i64 %i.ae, 0
  %i.af = and i64 %.pre260, 3647
  %.not179.not = icmp eq i64 %i.af, 0
  %or.cond239 = or i1 %.not178.not, %.not179.not
  br i1 %or.cond239, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = lshr i64 114, %.pre
  %i.ah = trunc i64 %i.ag to i1
  %i.ai = icmp ne i32 %1, 0
  %or.cond = or i1 %i.ai, %i.ah
  br i1 %or.cond, label %._crit_edge259, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not180 = icmp eq ptr %9, null
  br i1 %.not180, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = shl nsw i32 %0, 2
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [2 x i8], ptr %9, i64 %i.ak ; 2 uses
  br label %._crit_edge259

bb.l:                                             ; preds = %bb.j
  %i.am = and i64 %8, 1
  %.not.i = icmp eq i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.an = ashr exact i64 %8, 1
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [2 x i8], ptr %7, i64 %i.ao ; 2 uses
  br label %._crit_edge259

._crit_edge259:                                   ; preds = %bb.g, %bb.k, %bb.l, %bb.i
  %..0166 = phi ptr [ undef, %bb.i ], [ %i.al, %bb.k ], [ %i.ap, %bb.l ], [ %7, %bb.g ]
  %.0166 = phi ptr [ undef, %bb.i ], [ %i.al, %bb.k ], [ %i.ap, %bb.l ], [ undef, %bb.g ] ; 4 uses
  %i.aq = and i64 %.pre260, 114
  %.not181.not = icmp eq i64 %i.aq, 0
  br i1 %.not181.not, label %bb.m, label %pixel_set.exit208

bb.m:                                             ; preds = %._crit_edge259
  %i.ar = shl i32 %13, 2                          ; 22 uses
  %i.as = sub i32 0, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [2 x i8], ptr %15, i64 %i.at ; 18 uses
  %.not182 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not182, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = sub nsw i32 %5, %2
  %i.aw = shl i32 %i.av, 2                        ; 2 uses
  %i.ax = tail call range(i32 0, -3) i32 @llvm.smin.i32(i32 range(i32 0, -3) %i.ar, i32 range(i32 0, -3) %i.aw) ; 4 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  %i.az = and i64 %8, 1
  %.not.i195 = icmp eq i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i195)
  %i.ba = ashr exact i64 %8, 1                    ; 12 uses
  %wide.trip.count = zext nneg i32 %i.ax to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ax, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.bb = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %17 = add i32 %i.ar, -1                         ; 2 uses
  %18 = trunc nsw i64 %i.bb to i32
  %19 = sub i32 %17, %18
  %20 = icmp sgt i32 %19, %17
  %21 = icmp ugt i64 %i.bb, 4294967295
  %22 = or i1 %20, %21
  %i.bc = mul i64 %i.ba, -2
  %scevgep = getelementptr i8, ptr %7, i64 -2     ; 4 uses
  %i.bd = icmp slt i64 %8, 0                      ; 2 uses
  %i.be = select i1 %i.bd, i64 %i.bc, i64 %8
  %mul286 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.be, i64 %i.bb) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul286, 0 ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul286, 1
  %i.bf = sub i64 0, %mul.result
  %i.bg = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.bh = getelementptr i8, ptr %scevgep, i64 %i.bf
  %i.bi = icmp ult ptr %i.bg, %scevgep
  %i.bj = icmp ugt ptr %i.bh, %scevgep
  %i.bk = select i1 %i.bd, i1 %i.bj, i1 %i.bi
  %23 = or i1 %i.bk, %mul.overflow
  %i.bl = or i1 %22, %23
  br i1 %i.bl, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %24 = add i32 %i.ar, -4
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 1                        ; 2 uses
  %27 = add nsw i64 %26, 8
  %28 = sext i32 %i.ar to i64                     ; 2 uses
  %29 = shl nsw i64 %28, 1
  %30 = add nsw i64 %28, %wide.trip.count
  %31 = shl nsw i64 %30, 1
  %32 = sub nsw i64 %27, %31
  %scevgep287 = getelementptr i8, ptr %15, i64 %32
  %33 = add nsw i64 %26, 8
  %34 = sub nsw i64 %33, %29
  %scevgep288.a = getelementptr i8, ptr %15, i64 %34
  %i.bm = add nuw i64 %wide.trip.count, 9223372036854775807
  %i.bn = mul i64 %i.ba, %i.bm
  %i.bo = shl i64 %i.bn, 1
  %i.bp = getelementptr i8, ptr %7, i64 %i.bo
  %scevgep289.a = getelementptr i8, ptr %i.bp, i64 -2 ; 4 uses
  %scevgep290 = getelementptr i8, ptr %7, i64 -2  ; 4 uses
  %i.bq = icmp ult ptr %scevgep289.a, %scevgep290
  %umin = select i1 %i.bq, ptr %scevgep289.a, ptr %scevgep290
  %i.br = icmp ugt ptr %scevgep289.a, %scevgep290
  %umax = select i1 %i.br, ptr %scevgep289.a, ptr %scevgep290
  %scevgep291 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep287, %scevgep291
  %bound1 = icmp ult ptr %umin, %scevgep288.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.bs = or disjoint i64 %index, 1
  %i.bt = or disjoint i64 %index, 2
  %i.bu = or disjoint i64 %index, 3
  %i.bv = or disjoint i64 %index, 4
  %i.bw = or disjoint i64 %index, 5
  %i.bx = or disjoint i64 %index, 6
  %i.by = or disjoint i64 %index, 7
  %i.bz = mul nsw i64 %i.ba, %index
  %i.ca = mul nsw i64 %i.ba, %i.bs
  %i.cb = mul nsw i64 %i.ba, %i.bt
  %i.cc = mul nsw i64 %i.ba, %i.bu
  %i.cd = mul nsw i64 %i.ba, %i.bv
  %i.ce = mul nsw i64 %i.ba, %i.bw
  %i.cf = mul nsw i64 %i.ba, %i.bx
  %i.cg = mul nsw i64 %i.ba, %i.by
  %i.ch = getelementptr [2 x i8], ptr %7, i64 %i.bz
  %i.ci = getelementptr [2 x i8], ptr %7, i64 %i.ca
  %i.cj = getelementptr [2 x i8], ptr %7, i64 %i.cb
  %i.ck = getelementptr [2 x i8], ptr %7, i64 %i.cc
  %i.cl = getelementptr [2 x i8], ptr %7, i64 %i.cd
  %i.cm = getelementptr [2 x i8], ptr %7, i64 %i.ce
  %i.cn = getelementptr [2 x i8], ptr %7, i64 %i.cf
  %i.co = getelementptr [2 x i8], ptr %7, i64 %i.cg
  %i.cp = getelementptr i8, ptr %i.ch, i64 -2
  %i.cq = getelementptr i8, ptr %i.ci, i64 -2
  %i.cr = getelementptr i8, ptr %i.cj, i64 -2
  %i.cs = getelementptr i8, ptr %i.ck, i64 -2
  %i.ct = getelementptr i8, ptr %i.cl, i64 -2
  %i.cu = getelementptr i8, ptr %i.cm, i64 -2
  %i.cv = getelementptr i8, ptr %i.cn, i64 -2
  %i.cw = getelementptr i8, ptr %i.co, i64 -2
  %i.cx = load i16, ptr %i.cp, align 2, !tbaa !45, !alias.scope !46
  %i.cy = load i16, ptr %i.cq, align 2, !tbaa !45, !alias.scope !46
  %i.cz = load i16, ptr %i.cr, align 2, !tbaa !45, !alias.scope !46
  %i.da = load i16, ptr %i.cs, align 2, !tbaa !45, !alias.scope !46
  %i.db = load i16, ptr %i.ct, align 2, !tbaa !45, !alias.scope !46
  %i.dc = load i16, ptr %i.cu, align 2, !tbaa !45, !alias.scope !46
  %i.dd = load i16, ptr %i.cv, align 2, !tbaa !45, !alias.scope !46
  %i.de = load i16, ptr %i.cw, align 2, !tbaa !45, !alias.scope !46
  %i.df = insertelement <8 x i16> poison, i16 %i.cx, i64 0
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 1
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 2
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 3
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.db, i64 4
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.dc, i64 5
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.dd, i64 6
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.de, i64 7
  %35 = trunc i64 %index to i32
  %36 = xor i32 %35, -1
  %37 = add i32 %i.ar, %36
  %38 = sext i32 %37 to i64
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.au, i64 %38
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -14
  %reverse = shufflevector <8 x i16> %i.dm, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse, ptr %i.do, align 2, !tbaa !45, !alias.scope !47, !noalias !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.n
  %i.dq = icmp slt i32 %i.aw, %i.ar
  br i1 %i.dq, label %bb.o, label %pixel_set.exit

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %indvars.iv = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %i.dr = mul nsw i64 %i.ba, %indvars.iv
  %i.ds = getelementptr [2 x i8], ptr %7, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 -2
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !45
  %39 = trunc i64 %indvars.iv to i32
  %40 = xor i32 %39, -1
  %41 = add i32 %i.ar, %40
  %42 = sext i32 %41 to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.au, i64 %42
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !45
  %indvars.iv.next.a = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dw = mul nsw i64 %i.ba, %indvars.iv.next.a
  %i.dx = getelementptr [2 x i8], ptr %7, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 -2
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !45
  %43 = trunc i64 %indvars.iv.next.a to i32
  %44 = xor i32 %43, -1
  %45 = add i32 %i.ar, %44
  %46 = sext i32 %45 to i64
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.au, i64 %46
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !12

bb.o:                                             ; preds = %._crit_edge
  %i.eb = sub nsw i32 %i.ar, %i.ax                ; 3 uses
  %i.ec = zext nneg i32 %i.eb to i64              ; 6 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !45 ; 3 uses
  %i.ef = icmp sgt i32 %i.eb, 0
  br i1 %i.ef, label %vector.main.loop.iter.check, label %pixel_set.exit

vector.main.loop.iter.check:                      ; preds = %bb.o
  %min.iters.check293 = icmp ult i32 %i.eb, 16
  br i1 %min.iters.check293, label %vec.epilog.ph, label %vector.ph294

vector.ph294:                                     ; preds = %vector.main.loop.iter.check
  %i.eg = and i64 %i.ec, 12
  %n.vec295 = and i64 %i.ec, 2147483632           ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ee, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body296

vector.body296:                                   ; preds = %vector.body296, %vector.ph294
  %index297 = phi i64 [ 0, %vector.ph294 ], [ %index.next298, %vector.body296 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index297 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.eh, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat, ptr %i.ei, align 2, !tbaa !45
  %index.next298 = add nuw i64 %index297, 16      ; 2 uses
  %i.ej = icmp eq i64 %index.next298, %n.vec295
  br i1 %i.ej, label %middle.block299, label %vector.body296, !llvm.loop !13

middle.block299:                                  ; preds = %vector.body296
  %cmp.n300 = icmp eq i64 %n.vec295, %i.ec
  br i1 %cmp.n300, label %pixel_set.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block299
  %min.epilog.iters.check = icmp eq i64 %i.eg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec295, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert302 = insertelement <4 x i16> poison, i16 %i.ee, i64 0
  %broadcast.splat303 = shufflevector <4 x i16> %broadcast.splatinsert302, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index304 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next305, %vec.epilog.vector.body ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index304
  store <4 x i16> %broadcast.splat303, ptr %i.ek, align 2, !tbaa !45
  %index.next305 = add nuw i64 %index304, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next305, %i.ec
  br i1 %i.el, label %pixel_set.exit, label %vec.epilog.vector.body, !llvm.loop !14

.lr.ph.i:                                         ; preds = %vec.epilog.iter.check, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %n.vec295, %vec.epilog.iter.check ] ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i
  store i16 %i.ee, ptr %i.em, align 2, !tbaa !45
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ec
  br i1 %exitcond.not.i, label %pixel_set.exit, label %.lr.ph.i, !llvm.loop !15

bb.p:                                             ; preds = %bb.m
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.en = load i16, ptr %.0166, align 2, !tbaa !45
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.eo = shl nuw i32 1, %i.b
  %i.ep = lshr i32 %i.eo, 1
  %i.eq = trunc i32 %i.ep to i16
  %i.er = add i16 %i.eq, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.es = phi i16 [ %i.en, %bb.q ], [ %i.er, %bb.r ] ; 3 uses
  %i.et = icmp sgt i32 %i.ar, 0
  br i1 %i.et, label %iter.check322, label %pixel_set.exit

iter.check322:                                    ; preds = %bb.s
  %wide.trip.count.i197 = zext nneg i32 %i.ar to i64 ; 5 uses
  %min.iters.check311 = icmp ult i32 %i.ar, 16
  br i1 %min.iters.check311, label %vec.epilog.ph326, label %vector.ph312

vector.ph312:                                     ; preds = %iter.check322
  %i.eu = and i64 %wide.trip.count.i197, 12
  %n.vec313 = and i64 %wide.trip.count.i197, 2147483632 ; 4 uses
  %broadcast.splatinsert314 = insertelement <8 x i16> poison, i16 %i.es, i64 0
  %broadcast.splat315 = shufflevector <8 x i16> %broadcast.splatinsert314, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph312
  %index317 = phi i64 [ 0, %vector.ph312 ], [ %index.next318, %vector.body316 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index317 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <8 x i16> %broadcast.splat315, ptr %i.ev, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat315, ptr %i.ew, align 2, !tbaa !45
  %index.next318 = add nuw i64 %index317, 16      ; 2 uses
  %i.ex = icmp eq i64 %index.next318, %n.vec313
  br i1 %i.ex, label %middle.block319, label %vector.body316, !llvm.loop !16

middle.block319:                                  ; preds = %vector.body316
  %cmp.n320 = icmp eq i64 %n.vec313, %wide.trip.count.i197
  br i1 %cmp.n320, label %pixel_set.exit, label %vec.epilog.iter.check324

vec.epilog.iter.check324:                         ; preds = %middle.block319
  %min.epilog.iters.check325 = icmp eq i64 %i.eu, 0
  br i1 %min.epilog.iters.check325, label %vec.epilog.scalar.ph323, label %vec.epilog.ph326, !prof !50

vec.epilog.ph326:                                 ; preds = %iter.check322, %vec.epilog.iter.check324
  %vec.epilog.resume.val321 = phi i64 [ %n.vec313, %vec.epilog.iter.check324 ], [ 0, %iter.check322 ]
  %broadcast.splatinsert328 = insertelement <4 x i16> poison, i16 %i.es, i64 0
  %broadcast.splat329 = shufflevector <4 x i16> %broadcast.splatinsert328, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body330

vec.epilog.vector.body330:                        ; preds = %vec.epilog.vector.body330, %vec.epilog.ph326
  %index331 = phi i64 [ %vec.epilog.resume.val321, %vec.epilog.ph326 ], [ %index.next332, %vec.epilog.vector.body330 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index331
  store <4 x i16> %broadcast.splat329, ptr %i.ey, align 2, !tbaa !45
  %index.next332 = add nuw i64 %index331, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next332, %wide.trip.count.i197
  br i1 %i.ez, label %pixel_set.exit, label %vec.epilog.vector.body330, !llvm.loop !17

vec.epilog.scalar.ph323:                          ; preds = %vec.epilog.iter.check324, %vec.epilog.scalar.ph323
  %indvars.iv.i198 = phi i64 [ %indvars.iv.next.i199, %vec.epilog.scalar.ph323 ], [ %n.vec313, %vec.epilog.iter.check324 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i198
  store i16 %i.es, ptr %i.fa, align 2, !tbaa !45
  %indvars.iv.next.i199 = add nuw nsw i64 %indvars.iv.i198, 1 ; 2 uses
  %exitcond.not.i200 = icmp eq i64 %indvars.iv.next.i199, %wide.trip.count.i197
  br i1 %exitcond.not.i200, label %pixel_set.exit, label %vec.epilog.scalar.ph323, !llvm.loop !18

pixel_set.exit:                                   ; preds = %.lr.ph.i, %vec.epilog.vector.body, %vec.epilog.scalar.ph323, %vec.epilog.vector.body330, %middle.block299, %middle.block319, %bb.s, %bb.o, %._crit_edge
  %.not183.not = icmp eq i32 %.0167, 8
  br i1 %.not183.not, label %bb.t, label %pixel_set.exit208

bb.t:                                             ; preds = %pixel_set.exit
  %i.fb = add i32 %13, %2                         ; 2 uses
  %.not184 = icmp sge i32 %i.fb, %5
  %i.fc = and i32 %6, 8
  %i.fd = icmp eq i32 %i.fc, 0
  %i.fe = or i1 %i.fd, %.not184
  %.not185 = or i1 %.not182, %i.fe
  br i1 %.not185, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ff = sub i32 %5, %i.fb
  %i.fg = shl i32 %i.ff, 2                        ; 2 uses
  %i.fh = tail call range(i32 0, -3) i32 @llvm.smin.i32(i32 range(i32 0, -3) %i.ar, i32 range(i32 0, -3) %i.fg) ; 5 uses
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph247, label %._crit_edge248

.lr.ph247:                                        ; preds = %bb.u
  %i.fj = and i64 %8, 1
  %.not.i202 = icmp eq i64 %i.fj, 0
  tail call void @llvm.assume(i1 %.not.i202)
  %i.fk = ashr exact i64 %8, 1                    ; 14 uses
  %i.fl = sext i32 %i.ar to i64                   ; 14 uses
  %wide.trip.count257 = zext nneg i32 %i.fh to i64 ; 6 uses
  %min.iters.check351 = icmp ult i32 %i.fh, 56
  br i1 %min.iters.check351, label %scalar.ph350.preheader, label %vector.scevcheck336

vector.scevcheck336:                              ; preds = %.lr.ph247
  %i.fm = add nsw i64 %wide.trip.count257, -1
  %i.fn = mul i64 %i.fk, -2
  %i.fo = mul i64 %i.fk, %i.fl
  %i.fp = shl i64 %i.fo, 1
  %i.fq = getelementptr i8, ptr %7, i64 %i.fp
  %scevgep337 = getelementptr i8, ptr %i.fq, i64 -2 ; 4 uses
  %i.fr = icmp slt i64 %8, 0                      ; 2 uses
  %i.fs = select i1 %i.fr, i64 %i.fn, i64 %8
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fs, i64 %i.fm) ; 2 uses
  %mul.result338 = extractvalue { i64, i1 } %mul, 0 ; 2 uses
  %mul.overflow339 = extractvalue { i64, i1 } %mul, 1
  %i.ft = sub i64 0, %mul.result338
  %i.fu = getelementptr i8, ptr %scevgep337, i64 %mul.result338
  %i.fv = getelementptr i8, ptr %scevgep337, i64 %i.ft
  %i.fw = icmp ult ptr %i.fu, %scevgep337
  %i.fx = icmp ugt ptr %i.fv, %scevgep337
  %i.fy = select i1 %i.fr, i1 %i.fx, i1 %i.fw
  %i.fz = or i1 %i.fy, %mul.overflow339
  br i1 %i.fz, label %scalar.ph350.preheader, label %vector.memcheck340

vector.memcheck340:                               ; preds = %vector.scevcheck336
  %i.ga = mul nsw i64 %i.fl, -2
  %i.gb = shl nuw nsw i64 %wide.trip.count257, 1
  %i.gc = sub nsw i64 %i.ga, %i.gb
  %scevgep341.a = getelementptr i8, ptr %15, i64 %i.gc
  %i.gd = mul i64 %i.fk, %i.fl
  %i.ge = shl i64 %i.gd, 1
  %i.gf = getelementptr i8, ptr %7, i64 %i.ge
  %scevgep342.a = getelementptr i8, ptr %i.gf, i64 -2 ; 4 uses
  %i.gg = add nsw i64 %i.fl, %wide.trip.count257
  %i.gh = shl nsw i64 %i.gg, 1
  %i.gi = add nsw i64 %i.gh, -2
  %i.gj = mul i64 %i.fk, %i.gi
  %i.gk = getelementptr i8, ptr %7, i64 %i.gj
  %scevgep343 = getelementptr i8, ptr %i.gk, i64 -2 ; 4 uses
  %i.gl = icmp ult ptr %scevgep342.a, %scevgep343
end_hunk_0
