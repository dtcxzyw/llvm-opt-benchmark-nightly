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
  %i.bc = add i32 %i.ar, -1                       ; 2 uses
  %i.bd = trunc nsw i64 %i.bb to i32
  %i.be = sub i32 %i.bc, %i.bd
  %i.bf = icmp sgt i32 %i.be, %i.bc
  %i.bg = icmp ugt i64 %i.bb, 4294967295
  %i.bh = or i1 %i.bf, %i.bg
  %i.bi = mul i64 %i.ba, -2
  %scevgep = getelementptr i8, ptr %7, i64 -2     ; 4 uses
  %i.bj = icmp slt i64 %8, 0                      ; 2 uses
  %i.bk = select i1 %i.bj, i64 %i.bi, i64 %8
  %mul286 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bk, i64 %i.bb) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul286, 0 ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul286, 1
  %i.bl = sub i64 0, %mul.result
  %i.bm = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.bn = getelementptr i8, ptr %scevgep, i64 %i.bl
  %i.bo = icmp ult ptr %i.bm, %scevgep
  %i.bp = icmp ugt ptr %i.bn, %scevgep
  %i.bq = select i1 %i.bj, i1 %i.bp, i1 %i.bo
  %i.br = or i1 %i.bq, %mul.overflow
  %i.bs = or i1 %i.bh, %i.br
  br i1 %i.bs, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bt = add i32 %i.ar, -4
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 1                    ; 2 uses
  %17 = add nsw i64 %i.bv, 8
  %i.bw = sext i32 %i.ar to i64                   ; 2 uses
  %i.bx = shl nsw i64 %i.bw, 1
  %18 = add nsw i64 %i.bw, %wide.trip.count
  %i.by = shl nsw i64 %18, 1
  %19 = sub nsw i64 %17, %i.by
  %scevgep287 = getelementptr i8, ptr %15, i64 %19
  %20 = add nsw i64 %i.bv, 8
  %21 = sub nsw i64 %20, %i.bx
  %scevgep288 = getelementptr i8, ptr %15, i64 %21
  %i.bz = add nuw i64 %wide.trip.count, 9223372036854775807
  %i.ca = mul i64 %i.ba, %i.bz
  %i.cb = shl i64 %i.ca, 1
  %i.cc = getelementptr i8, ptr %7, i64 %i.cb
  %scevgep289 = getelementptr i8, ptr %i.cc, i64 -2 ; 4 uses
  %scevgep290 = getelementptr i8, ptr %7, i64 -2  ; 4 uses
  %i.cd = icmp ult ptr %scevgep289, %scevgep290
  %umin = select i1 %i.cd, ptr %scevgep289, ptr %scevgep290
  %i.ce = icmp ugt ptr %scevgep289, %scevgep290
  %umax = select i1 %i.ce, ptr %scevgep289, ptr %scevgep290
  %scevgep291 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep287, %scevgep291
  %bound1 = icmp ult ptr %umin, %scevgep288
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.cf = or disjoint i64 %index, 1
  %i.cg = or disjoint i64 %index, 2
  %i.ch = or disjoint i64 %index, 3
  %i.ci = or disjoint i64 %index, 4
  %i.cj = or disjoint i64 %index, 5
  %i.ck = or disjoint i64 %index, 6
  %i.cl = or disjoint i64 %index, 7
  %i.cm = mul nsw i64 %i.ba, %index
  %i.cn = mul nsw i64 %i.ba, %i.cf
  %i.co = mul nsw i64 %i.ba, %i.cg
  %i.cp = mul nsw i64 %i.ba, %i.ch
  %i.cq = mul nsw i64 %i.ba, %i.ci
  %i.cr = mul nsw i64 %i.ba, %i.cj
  %i.cs = mul nsw i64 %i.ba, %i.ck
  %i.ct = mul nsw i64 %i.ba, %i.cl
  %i.cu = getelementptr [2 x i8], ptr %7, i64 %i.cm
  %i.cv = getelementptr [2 x i8], ptr %7, i64 %i.cn
  %i.cw = getelementptr [2 x i8], ptr %7, i64 %i.co
  %i.cx = getelementptr [2 x i8], ptr %7, i64 %i.cp
  %i.cy = getelementptr [2 x i8], ptr %7, i64 %i.cq
  %i.cz = getelementptr [2 x i8], ptr %7, i64 %i.cr
  %i.da = getelementptr [2 x i8], ptr %7, i64 %i.cs
  %i.db = getelementptr [2 x i8], ptr %7, i64 %i.ct
  %i.dc = getelementptr i8, ptr %i.cu, i64 -2
  %i.dd = getelementptr i8, ptr %i.cv, i64 -2
  %i.de = getelementptr i8, ptr %i.cw, i64 -2
  %i.df = getelementptr i8, ptr %i.cx, i64 -2
  %i.dg = getelementptr i8, ptr %i.cy, i64 -2
  %i.dh = getelementptr i8, ptr %i.cz, i64 -2
  %i.di = getelementptr i8, ptr %i.da, i64 -2
  %i.dj = getelementptr i8, ptr %i.db, i64 -2
  %i.dk = load i16, ptr %i.dc, align 2, !tbaa !45, !alias.scope !46
  %i.dl = load i16, ptr %i.dd, align 2, !tbaa !45, !alias.scope !46
  %i.dm = load i16, ptr %i.de, align 2, !tbaa !45, !alias.scope !46
  %i.dn = load i16, ptr %i.df, align 2, !tbaa !45, !alias.scope !46
  %i.do = load i16, ptr %i.dg, align 2, !tbaa !45, !alias.scope !46
  %i.dp = load i16, ptr %i.dh, align 2, !tbaa !45, !alias.scope !46
  %i.dq = load i16, ptr %i.di, align 2, !tbaa !45, !alias.scope !46
  %i.dr = load i16, ptr %i.dj, align 2, !tbaa !45, !alias.scope !46
  %i.ds = insertelement <8 x i16> poison, i16 %i.dk, i64 0
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 1
  %i.du = insertelement <8 x i16> %i.dt, i16 %i.dm, i64 2
  %i.dv = insertelement <8 x i16> %i.du, i16 %i.dn, i64 3
  %i.dw = insertelement <8 x i16> %i.dv, i16 %i.do, i64 4
  %i.dx = insertelement <8 x i16> %i.dw, i16 %i.dp, i64 5
  %i.dy = insertelement <8 x i16> %i.dx, i16 %i.dq, i64 6
  %i.dz = insertelement <8 x i16> %i.dy, i16 %i.dr, i64 7
  %i.ea = trunc i64 %index to i32
  %i.eb = xor i32 %i.ea, -1
  %i.ec = add i32 %i.ar, %i.eb
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -14
  %reverse = shufflevector <8 x i16> %i.dz, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse, ptr %i.ef, align 2, !tbaa !45, !alias.scope !47, !noalias !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.n
  %i.eh = icmp slt i32 %i.aw, %i.ar
  br i1 %i.eh, label %bb.o, label %pixel_set.exit

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %indvars.iv = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %i.ei = mul nsw i64 %i.ba, %indvars.iv
  %i.ej = getelementptr [2 x i8], ptr %7, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 -2
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !45
  %i.em = trunc i64 %indvars.iv to i32
  %i.en = xor i32 %i.em, -1
  %i.eo = add i32 %i.ar, %i.en
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ep
  store i16 %i.el, ptr %i.eq, align 2, !tbaa !45
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.er = mul nsw i64 %i.ba, %indvars.iv.next
  %i.es = getelementptr [2 x i8], ptr %7, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 -2
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !45
  %i.ev = trunc i64 %indvars.iv.next to i32
  %i.ew = xor i32 %i.ev, -1
  %i.ex = add i32 %i.ar, %i.ew
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ey
  store i16 %i.eu, ptr %i.ez, align 2, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !12

bb.o:                                             ; preds = %._crit_edge
  %i.fa = sub nsw i32 %i.ar, %i.ax                ; 3 uses
  %i.fb = zext nneg i32 %i.fa to i64              ; 6 uses
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !45 ; 3 uses
  %i.fe = icmp sgt i32 %i.fa, 0
  br i1 %i.fe, label %vector.main.loop.iter.check, label %pixel_set.exit

vector.main.loop.iter.check:                      ; preds = %bb.o
  %min.iters.check293 = icmp ult i32 %i.fa, 16
  br i1 %min.iters.check293, label %vec.epilog.ph, label %vector.ph294

vector.ph294:                                     ; preds = %vector.main.loop.iter.check
  %i.ff = and i64 %i.fb, 12
  %n.vec295 = and i64 %i.fb, 2147483632           ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.fd, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body296

vector.body296:                                   ; preds = %vector.ph294, %vector.body296
  %index297 = phi i64 [ 0, %vector.ph294 ], [ %index.next298, %vector.body296 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index297 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.fg, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat, ptr %i.fh, align 2, !tbaa !45
  %index.next298 = add nuw i64 %index297, 16      ; 2 uses
  %i.fi = icmp eq i64 %index.next298, %n.vec295
  br i1 %i.fi, label %middle.block299, label %vector.body296, !llvm.loop !13

middle.block299:                                  ; preds = %vector.body296
  %cmp.n300 = icmp eq i64 %n.vec295, %i.fb
  br i1 %cmp.n300, label %pixel_set.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block299
  %min.epilog.iters.check = icmp eq i64 %i.ff, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec295, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert302 = insertelement <4 x i16> poison, i16 %i.fd, i64 0
  %broadcast.splat303 = shufflevector <4 x i16> %broadcast.splatinsert302, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index304 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next305, %vec.epilog.vector.body ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index304
  store <4 x i16> %broadcast.splat303, ptr %i.fj, align 2, !tbaa !45
  %index.next305 = add nuw i64 %index304, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next305, %i.fb
  br i1 %i.fk, label %pixel_set.exit, label %vec.epilog.vector.body, !llvm.loop !14

.lr.ph.i:                                         ; preds = %vec.epilog.iter.check, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %n.vec295, %vec.epilog.iter.check ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i
  store i16 %i.fd, ptr %i.fl, align 2, !tbaa !45
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.fb
  br i1 %exitcond.not.i, label %pixel_set.exit, label %.lr.ph.i, !llvm.loop !15

bb.p:                                             ; preds = %bb.m
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = load i16, ptr %.0166, align 2, !tbaa !45
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.fn = shl nuw i32 1, %i.b
  %i.fo = lshr i32 %i.fn, 1
  %i.fp = trunc i32 %i.fo to i16
  %i.fq = add i16 %i.fp, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fr = phi i16 [ %i.fm, %bb.q ], [ %i.fq, %bb.r ] ; 3 uses
  %i.fs = icmp sgt i32 %i.ar, 0
  br i1 %i.fs, label %iter.check322, label %pixel_set.exit

iter.check322:                                    ; preds = %bb.s
  %wide.trip.count.i197 = zext nneg i32 %i.ar to i64 ; 5 uses
  %min.iters.check311 = icmp ult i32 %i.ar, 16
  br i1 %min.iters.check311, label %vec.epilog.ph326, label %vector.ph312

vector.ph312:                                     ; preds = %iter.check322
  %i.ft = and i64 %wide.trip.count.i197, 12
  %n.vec313 = and i64 %wide.trip.count.i197, 2147483632 ; 4 uses
  %broadcast.splatinsert314 = insertelement <8 x i16> poison, i16 %i.fr, i64 0
  %broadcast.splat315 = shufflevector <8 x i16> %broadcast.splatinsert314, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body316

vector.body316:                                   ; preds = %vector.ph312, %vector.body316
  %index317 = phi i64 [ 0, %vector.ph312 ], [ %index.next318, %vector.body316 ] ; 2 uses
end_hunk_0
