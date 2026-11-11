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
  %i.bv = shl nsw i64 %i.bu, 1
  %i.bw = sext i32 %i.ar to i64
  %i.bx = shl nsw i64 %i.bw, 1
  %i.by = shl nuw nsw i64 %wide.trip.count, 1
  %i.bz = add nsw i64 %i.bv, 8
  %i.ca = sub nsw i64 %i.bz, %i.bx                ; 2 uses
  %i.cb = sub nsw i64 %i.ca, %i.by
  %i.cc = getelementptr i8, ptr %15, i64 %i.cb
  %i.cd = getelementptr i8, ptr %15, i64 %i.ca
  %i.ce = add nuw i64 %wide.trip.count, 9223372036854775807
  %i.cf = mul i64 %i.ba, %i.ce
  %i.cg = shl i64 %i.cf, 1
  %i.ch = getelementptr i8, ptr %7, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -2     ; 4 uses
  %i.cj = getelementptr i8, ptr %7, i64 -2        ; 4 uses
  %i.ck = icmp ult ptr %i.ci, %i.cj
  %i.cl = select i1 %i.ck, ptr %i.ci, ptr %i.cj
  %i.cm = icmp ugt ptr %i.ci, %i.cj
  %i.cn = select i1 %i.cm, ptr %i.ci, ptr %i.cj
  %i.co = getelementptr i8, ptr %i.cn, i64 2
  %bound0 = icmp ult ptr %i.cc, %i.co
  %bound1 = icmp ult ptr %i.cl, %i.cd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.cp = or disjoint i64 %index, 1
  %i.cq = or disjoint i64 %index, 2
  %i.cr = or disjoint i64 %index, 3
  %i.cs = or disjoint i64 %index, 4
  %i.ct = or disjoint i64 %index, 5
  %i.cu = or disjoint i64 %index, 6
  %i.cv = or disjoint i64 %index, 7
  %i.cw = mul nsw i64 %i.ba, %index
  %i.cx = mul nsw i64 %i.ba, %i.cp
  %i.cy = mul nsw i64 %i.ba, %i.cq
  %i.cz = mul nsw i64 %i.ba, %i.cr
  %i.da = mul nsw i64 %i.ba, %i.cs
  %i.db = mul nsw i64 %i.ba, %i.ct
  %i.dc = mul nsw i64 %i.ba, %i.cu
  %i.dd = mul nsw i64 %i.ba, %i.cv
  %i.de = getelementptr [2 x i8], ptr %7, i64 %i.cw
  %i.df = getelementptr [2 x i8], ptr %7, i64 %i.cx
  %i.dg = getelementptr [2 x i8], ptr %7, i64 %i.cy
  %i.dh = getelementptr [2 x i8], ptr %7, i64 %i.cz
  %i.di = getelementptr [2 x i8], ptr %7, i64 %i.da
  %i.dj = getelementptr [2 x i8], ptr %7, i64 %i.db
  %i.dk = getelementptr [2 x i8], ptr %7, i64 %i.dc
  %i.dl = getelementptr [2 x i8], ptr %7, i64 %i.dd
  %i.dm = getelementptr i8, ptr %i.de, i64 -2
  %i.dn = getelementptr i8, ptr %i.df, i64 -2
  %i.do = getelementptr i8, ptr %i.dg, i64 -2
  %i.dp = getelementptr i8, ptr %i.dh, i64 -2
  %i.dq = getelementptr i8, ptr %i.di, i64 -2
  %i.dr = getelementptr i8, ptr %i.dj, i64 -2
  %i.ds = getelementptr i8, ptr %i.dk, i64 -2
  %i.dt = getelementptr i8, ptr %i.dl, i64 -2
  %i.du = load i16, ptr %i.dm, align 2, !tbaa !45, !alias.scope !46
  %i.dv = load i16, ptr %i.dn, align 2, !tbaa !45, !alias.scope !46
  %i.dw = load i16, ptr %i.do, align 2, !tbaa !45, !alias.scope !46
  %i.dx = load i16, ptr %i.dp, align 2, !tbaa !45, !alias.scope !46
  %i.dy = load i16, ptr %i.dq, align 2, !tbaa !45, !alias.scope !46
  %i.dz = load i16, ptr %i.dr, align 2, !tbaa !45, !alias.scope !46
  %i.ea = load i16, ptr %i.ds, align 2, !tbaa !45, !alias.scope !46
  %i.eb = load i16, ptr %i.dt, align 2, !tbaa !45, !alias.scope !46
  %i.ec = insertelement <8 x i16> poison, i16 %i.du, i64 0
  %i.ed = insertelement <8 x i16> %i.ec, i16 %i.dv, i64 1
  %i.ee = insertelement <8 x i16> %i.ed, i16 %i.dw, i64 2
  %i.ef = insertelement <8 x i16> %i.ee, i16 %i.dx, i64 3
  %i.eg = insertelement <8 x i16> %i.ef, i16 %i.dy, i64 4
  %i.eh = insertelement <8 x i16> %i.eg, i16 %i.dz, i64 5
  %i.ei = insertelement <8 x i16> %i.eh, i16 %i.ea, i64 6
  %i.ej = insertelement <8 x i16> %i.ei, i16 %i.eb, i64 7
  %i.ek = trunc i64 %index to i32
  %i.el = xor i32 %i.ek, -1
  %i.em = add i32 %i.ar, %i.el
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.en
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -14
  %reverse = shufflevector <8 x i16> %i.ej, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse, ptr %i.ep, align 2, !tbaa !45, !alias.scope !47, !noalias !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.n
  %i.er = icmp slt i32 %i.aw, %i.ar
  br i1 %i.er, label %bb.o, label %pixel_set.exit

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %indvars.iv = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %i.es = mul nsw i64 %i.ba, %indvars.iv
  %i.et = getelementptr [2 x i8], ptr %7, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.et, i64 -2
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !45
  %i.ew = trunc i64 %indvars.iv to i32
  %i.ex = xor i32 %i.ew, -1
  %i.ey = add i32 %i.ar, %i.ex
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ez
  store i16 %i.ev, ptr %i.fa, align 2, !tbaa !45
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fb = mul nsw i64 %i.ba, %indvars.iv.next
  %i.fc = getelementptr [2 x i8], ptr %7, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 -2
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !45
  %i.ff = trunc i64 %indvars.iv.next to i32
  %i.fg = xor i32 %i.ff, -1
  %i.fh = add i32 %i.ar, %i.fg
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.fi
  store i16 %i.fe, ptr %i.fj, align 2, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !12

bb.o:                                             ; preds = %._crit_edge
  %i.fk = sub nsw i32 %i.ar, %i.ax                ; 3 uses
  %i.fl = zext nneg i32 %i.fk to i64              ; 6 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !45 ; 3 uses
  %i.fo = icmp sgt i32 %i.fk, 0
  br i1 %i.fo, label %vector.main.loop.iter.check, label %pixel_set.exit

vector.main.loop.iter.check:                      ; preds = %bb.o
  %min.iters.check293 = icmp ult i32 %i.fk, 16
  br i1 %min.iters.check293, label %vec.epilog.ph, label %vector.ph294

vector.ph294:                                     ; preds = %vector.main.loop.iter.check
  %i.fp = and i64 %i.fl, 12
  %n.vec295 = and i64 %i.fl, 2147483632           ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.fn, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body296

vector.body296:                                   ; preds = %vector.ph294, %vector.body296
  %index297 = phi i64 [ 0, %vector.ph294 ], [ %index.next298, %vector.body296 ] ; 2 uses
end_hunk_0
begin_hunk_1_@dav1d_prepare_intra_edges_16bpc:bb.a
  %i.hg = icmp ugt ptr %i.he, %scevgep337
  %i.hh = select i1 %i.ha, i1 %i.hg, i1 %i.hf
  %i.hi = or i1 %i.hh, %mul.overflow339
  br i1 %i.hi, label %scalar.ph348.preheader, label %vector.memcheck350

vector.memcheck350:                               ; preds = %vector.scevcheck336
  %i.hj = mul nsw i64 %i.gu, -2
  %i.hk = shl nuw nsw i64 %wide.trip.count257, 1
  %i.hl = sub nsw i64 %i.hj, %i.hk
  %i.hm = getelementptr i8, ptr %15, i64 %i.hl
  %i.hn = mul i64 %i.gt, %i.gu
  %i.ho = shl i64 %i.hn, 1
  %i.hp = getelementptr i8, ptr %7, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 -2     ; 4 uses
  %i.hr = add nsw i64 %i.gu, %wide.trip.count257
  %i.hs = shl nsw i64 %i.hr, 1
  %i.ht = add nsw i64 %i.hs, -2
  %i.hu = mul i64 %i.gt, %i.ht
  %i.hv = getelementptr i8, ptr %7, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 -2     ; 4 uses
  %i.hx = icmp ult ptr %i.hq, %i.hw
  %i.hy = select i1 %i.hx, ptr %i.hq, ptr %i.hw
  %i.hz = icmp ugt ptr %i.hq, %i.hw
  %i.ia = select i1 %i.hz, ptr %i.hq, ptr %i.hw
  %i.ib = getelementptr i8, ptr %i.ia, i64 2
  %bound0351 = icmp ult ptr %i.hm, %i.ib
  %bound1352 = icmp ult ptr %i.hy, %i.au
  %found.conflict353 = and i1 %bound0351, %bound1352
  br i1 %found.conflict353, label %scalar.ph348.preheader, label %vector.ph354

vector.ph354:                                     ; preds = %vector.memcheck350
  %n.vec355 = and i64 %wide.trip.count257, 2147483640 ; 3 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next359, %vector.body356 ] ; 10 uses
  %i.ic = or disjoint i64 %index357, 1
  %i.id = or disjoint i64 %index357, 2
  %i.ie = or disjoint i64 %index357, 3
  %i.if = or disjoint i64 %index357, 4
  %i.ig = or disjoint i64 %index357, 5
  %i.ih = or disjoint i64 %index357, 6
  %i.ii = or disjoint i64 %index357, 7
  %i.ij = add nuw nsw i64 %index357, %i.gu
  %i.ik = add nuw nsw i64 %i.ic, %i.gu
  %i.il = add nuw nsw i64 %i.id, %i.gu
  %i.im = add nuw nsw i64 %i.ie, %i.gu
  %i.in = add nuw nsw i64 %i.if, %i.gu
  %i.io = add nuw nsw i64 %i.ig, %i.gu
  %i.ip = add nuw nsw i64 %i.ih, %i.gu
  %i.iq = add nuw nsw i64 %i.ii, %i.gu
  %i.ir = mul nsw i64 %i.gt, %i.ij
  %i.is = mul nsw i64 %i.gt, %i.ik
  %i.it = mul nsw i64 %i.gt, %i.il
  %i.iu = mul nsw i64 %i.gt, %i.im
  %i.iv = mul nsw i64 %i.gt, %i.in
  %i.iw = mul nsw i64 %i.gt, %i.io
  %i.ix = mul nsw i64 %i.gt, %i.ip
  %i.iy = mul nsw i64 %i.gt, %i.iq
  %i.iz = getelementptr [2 x i8], ptr %7, i64 %i.ir
  %i.ja = getelementptr [2 x i8], ptr %7, i64 %i.is
  %i.jb = getelementptr [2 x i8], ptr %7, i64 %i.it
  %i.jc = getelementptr [2 x i8], ptr %7, i64 %i.iu
  %i.jd = getelementptr [2 x i8], ptr %7, i64 %i.iv
  %i.je = getelementptr [2 x i8], ptr %7, i64 %i.iw
  %i.jf = getelementptr [2 x i8], ptr %7, i64 %i.ix
  %i.jg = getelementptr [2 x i8], ptr %7, i64 %i.iy
  %i.jh = getelementptr i8, ptr %i.iz, i64 -2
  %i.ji = getelementptr i8, ptr %i.ja, i64 -2
  %i.jj = getelementptr i8, ptr %i.jb, i64 -2
  %i.jk = getelementptr i8, ptr %i.jc, i64 -2
  %i.jl = getelementptr i8, ptr %i.jd, i64 -2
  %i.jm = getelementptr i8, ptr %i.je, i64 -2
  %i.jn = getelementptr i8, ptr %i.jf, i64 -2
  %i.jo = getelementptr i8, ptr %i.jg, i64 -2
  %i.jp = load i16, ptr %i.jh, align 2, !tbaa !45, !alias.scope !51
  %i.jq = load i16, ptr %i.ji, align 2, !tbaa !45, !alias.scope !51
  %i.jr = load i16, ptr %i.jj, align 2, !tbaa !45, !alias.scope !51
  %i.js = load i16, ptr %i.jk, align 2, !tbaa !45, !alias.scope !51
  %i.jt = load i16, ptr %i.jl, align 2, !tbaa !45, !alias.scope !51
  %i.ju = load i16, ptr %i.jm, align 2, !tbaa !45, !alias.scope !51
  %i.jv = load i16, ptr %i.jn, align 2, !tbaa !45, !alias.scope !51
  %i.jw = load i16, ptr %i.jo, align 2, !tbaa !45, !alias.scope !51
  %i.jx = insertelement <8 x i16> poison, i16 %i.jp, i64 0
  %i.jy = insertelement <8 x i16> %i.jx, i16 %i.jq, i64 1
  %i.jz = insertelement <8 x i16> %i.jy, i16 %i.jr, i64 2
  %i.ka = insertelement <8 x i16> %i.jz, i16 %i.js, i64 3
  %i.kb = insertelement <8 x i16> %i.ka, i16 %i.jt, i64 4
  %i.kc = insertelement <8 x i16> %i.kb, i16 %i.ju, i64 5
  %i.kd = insertelement <8 x i16> %i.kc, i16 %i.jv, i64 6
  %i.ke = insertelement <8 x i16> %i.kd, i16 %i.jw, i64 7
  %i.kf = xor i64 %index357, -1
  %i.kg = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.kf
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 -14
  %reverse358 = shufflevector <8 x i16> %i.ke, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse358, ptr %i.kh, align 2, !tbaa !45, !alias.scope !52, !noalias !51
  %index.next359 = add nuw i64 %index357, 8       ; 2 uses
  %i.ki = icmp eq i64 %index.next359, %n.vec355
  br i1 %i.ki, label %middle.block360, label %vector.body356, !llvm.loop !22

middle.block360:                                  ; preds = %vector.body356
  %cmp.n361 = icmp eq i64 %n.vec355, %wide.trip.count257
  br i1 %cmp.n361, label %._crit_edge248, label %scalar.ph348.preheader

scalar.ph348.preheader:                           ; preds = %vector.memcheck350, %vector.scevcheck336, %.lr.ph247, %middle.block360
  %indvars.iv254.ph = phi i64 [ 0, %vector.memcheck350 ], [ 0, %vector.scevcheck336 ], [ 0, %.lr.ph247 ], [ %n.vec355, %middle.block360 ]
  br label %scalar.ph348

._crit_edge248:                                   ; preds = %scalar.ph348, %middle.block360, %bb.u
  %i.kj = icmp slt i32 %i.gp, %i.ar
  br i1 %i.kj, label %bb.v, label %pixel_set.exit208

scalar.ph348:                                     ; preds = %scalar.ph348, %scalar.ph348.preheader
  %indvars.iv254 = phi i64 [ %indvars.iv254.ph, %scalar.ph348.preheader ], [ %indvars.iv.next255.1, %scalar.ph348 ] ; 5 uses
  %i.kk = add nuw nsw i64 %indvars.iv254, %i.gu
  %i.kl = mul nsw i64 %i.gt, %i.kk
  %i.km = getelementptr [2 x i8], ptr %7, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.km, i64 -2
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !45
  %indvars.iv.next255 = or disjoint i64 %indvars.iv254, 1
  %i.kp = xor i64 %indvars.iv254, -1
  %i.kq = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.kp
  store i16 %i.ko, ptr %i.kq, align 2, !tbaa !45
  %i.kr = add nuw nsw i64 %indvars.iv.next255, %i.gu
  %i.ks = mul nsw i64 %i.gt, %i.kr
  %i.kt = getelementptr [2 x i8], ptr %7, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.kt, i64 -2
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !45
  %indvars.iv.next255.1 = add nuw nsw i64 %indvars.iv254, 2 ; 2 uses
  %i.kw = xor i64 %indvars.iv254, -2
  %i.kx = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.kw
  store i16 %i.kv, ptr %i.kx, align 2, !tbaa !45
  %exitcond258.not.1 = icmp eq i64 %indvars.iv.next255.1, %wide.trip.count257
  br i1 %exitcond258.not.1, label %._crit_edge248, label %scalar.ph348, !llvm.loop !23

bb.v:                                             ; preds = %._crit_edge248
  %i.ky = sext i32 %i.ar to i64
  %i.kz = sub nsw i64 0, %i.ky
  %i.la = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.kz ; 3 uses
  %i.lb = sub nsw i32 0, %i.gq
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.lc
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !45 ; 3 uses
  %i.lf = sub nsw i32 %i.ar, %i.gq                ; 3 uses
  %i.lg = icmp sgt i32 %i.lf, 0
  br i1 %i.lg, label %iter.check375, label %pixel_set.exit208

iter.check375:                                    ; preds = %bb.v
  %wide.trip.count.i204 = zext nneg i32 %i.lf to i64 ; 5 uses
  %min.iters.check365 = icmp ult i32 %i.lf, 16
  br i1 %min.iters.check365, label %vec.epilog.ph379, label %vector.ph366

vector.ph366:                                     ; preds = %iter.check375
  %i.lh = and i64 %wide.trip.count.i204, 12
  %n.vec367 = and i64 %wide.trip.count.i204, 2147483632 ; 4 uses
  %broadcast.splatinsert368 = insertelement <8 x i16> poison, i16 %i.le, i64 0
  %broadcast.splat369 = shufflevector <8 x i16> %broadcast.splatinsert368, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body370

vector.body370:                                   ; preds = %vector.ph366, %vector.body370
  %index371 = phi i64 [ 0, %vector.ph366 ], [ %index.next372, %vector.body370 ] ; 2 uses
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.la, i64 %index371 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  store <8 x i16> %broadcast.splat369, ptr %i.li, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat369, ptr %i.lj, align 2, !tbaa !45
  %index.next372 = add nuw i64 %index371, 16      ; 2 uses
  %i.lk = icmp eq i64 %index.next372, %n.vec367
  br i1 %i.lk, label %middle.block373, label %vector.body370, !llvm.loop !24

middle.block373:                                  ; preds = %vector.body370
  %cmp.n374 = icmp eq i64 %n.vec367, %wide.trip.count.i204
  br i1 %cmp.n374, label %pixel_set.exit208, label %vec.epilog.iter.check376

vec.epilog.iter.check376:                         ; preds = %middle.block373
  %min.epilog.iters.check378 = icmp eq i64 %i.lh, 0
  br i1 %min.epilog.iters.check378, label %vec.epilog.scalar.ph377, label %vec.epilog.ph379, !prof !50

vec.epilog.ph379:                                 ; preds = %iter.check375, %vec.epilog.iter.check376
  %vec.epilog.resume.val380 = phi i64 [ %n.vec367, %vec.epilog.iter.check376 ], [ 0, %iter.check375 ]
  %broadcast.splatinsert382 = insertelement <4 x i16> poison, i16 %i.le, i64 0
  %broadcast.splat383 = shufflevector <4 x i16> %broadcast.splatinsert382, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body384

vec.epilog.vector.body384:                        ; preds = %vec.epilog.vector.body384, %vec.epilog.ph379
  %index385 = phi i64 [ %vec.epilog.resume.val380, %vec.epilog.ph379 ], [ %index.next386, %vec.epilog.vector.body384 ] ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.la, i64 %index385
  store <4 x i16> %broadcast.splat383, ptr %i.ll, align 2, !tbaa !45
  %index.next386 = add nuw i64 %index385, 4       ; 2 uses
  %i.lm = icmp eq i64 %index.next386, %wide.trip.count.i204
  br i1 %i.lm, label %pixel_set.exit208, label %vec.epilog.vector.body384, !llvm.loop !25

vec.epilog.scalar.ph377:                          ; preds = %vec.epilog.iter.check376, %vec.epilog.scalar.ph377
  %indvars.iv.i205 = phi i64 [ %indvars.iv.next.i206, %vec.epilog.scalar.ph377 ], [ %n.vec367, %vec.epilog.iter.check376 ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.la, i64 %indvars.iv.i205
  store i16 %i.le, ptr %i.ln, align 2, !tbaa !45
  %indvars.iv.next.i206 = add nuw nsw i64 %indvars.iv.i205, 1 ; 2 uses
  %exitcond.not.i207 = icmp eq i64 %indvars.iv.next.i206, %wide.trip.count.i204
  br i1 %exitcond.not.i207, label %pixel_set.exit208, label %vec.epilog.scalar.ph377, !llvm.loop !26

bb.w:                                             ; preds = %bb.t
  %17 = sext i32 %i.ar to i64
  %i.lo = sub nsw i64 0, %17
  %i.lp = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.lo ; 3 uses
  %i.lq = load i16, ptr %i.au, align 2, !tbaa !45 ; 3 uses
  %i.lr = icmp sgt i32 %i.ar, 0
  br i1 %i.lr, label %iter.check403, label %pixel_set.exit208

iter.check403:                                    ; preds = %bb.w
  %wide.trip.count.i210 = zext nneg i32 %i.ar to i64 ; 5 uses
  %min.iters.check393 = icmp ult i32 %i.ar, 16
  br i1 %min.iters.check393, label %vec.epilog.ph407, label %vector.ph394

vector.ph394:                                     ; preds = %iter.check403
  %i.ls = and i64 %wide.trip.count.i210, 12
  %n.vec395 = and i64 %wide.trip.count.i210, 2147483632 ; 4 uses
  %broadcast.splatinsert396 = insertelement <8 x i16> poison, i16 %i.lq, i64 0
  %broadcast.splat397 = shufflevector <8 x i16> %broadcast.splatinsert396, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body398

vector.body398:                                   ; preds = %vector.ph394, %vector.body398
  %index399 = phi i64 [ 0, %vector.ph394 ], [ %index.next400, %vector.body398 ] ; 2 uses
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.lp, i64 %index399 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store <8 x i16> %broadcast.splat397, ptr %i.lt, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat397, ptr %i.lu, align 2, !tbaa !45
  %index.next400 = add nuw i64 %index399, 16      ; 2 uses
  %i.lv = icmp eq i64 %index.next400, %n.vec395
  br i1 %i.lv, label %middle.block401, label %vector.body398, !llvm.loop !27

middle.block401:                                  ; preds = %vector.body398
  %cmp.n402 = icmp eq i64 %n.vec395, %wide.trip.count.i210
  br i1 %cmp.n402, label %pixel_set.exit208, label %vec.epilog.iter.check404

vec.epilog.iter.check404:                         ; preds = %middle.block401
  %min.epilog.iters.check406 = icmp eq i64 %i.ls, 0
  br i1 %min.epilog.iters.check406, label %vec.epilog.scalar.ph405, label %vec.epilog.ph407, !prof !50

vec.epilog.ph407:                                 ; preds = %iter.check403, %vec.epilog.iter.check404
  %vec.epilog.resume.val408 = phi i64 [ %n.vec395, %vec.epilog.iter.check404 ], [ 0, %iter.check403 ]
  %broadcast.splatinsert410 = insertelement <4 x i16> poison, i16 %i.lq, i64 0
  %broadcast.splat411 = shufflevector <4 x i16> %broadcast.splatinsert410, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body412

vec.epilog.vector.body412:                        ; preds = %vec.epilog.vector.body412, %vec.epilog.ph407
  %index413 = phi i64 [ %vec.epilog.resume.val408, %vec.epilog.ph407 ], [ %index.next414, %vec.epilog.vector.body412 ] ; 2 uses
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.lp, i64 %index413
  store <4 x i16> %broadcast.splat411, ptr %i.lw, align 2, !tbaa !45
  %index.next414 = add nuw i64 %index413, 4       ; 2 uses
  %i.lx = icmp eq i64 %index.next414, %wide.trip.count.i210
  br i1 %i.lx, label %pixel_set.exit208, label %vec.epilog.vector.body412, !llvm.loop !28

vec.epilog.scalar.ph405:                          ; preds = %vec.epilog.iter.check404, %vec.epilog.scalar.ph405
  %indvars.iv.i211 = phi i64 [ %indvars.iv.next.i212, %vec.epilog.scalar.ph405 ], [ %n.vec395, %vec.epilog.iter.check404 ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.lp, i64 %indvars.iv.i211
  store i16 %i.lq, ptr %i.ly, align 2, !tbaa !45
  %indvars.iv.next.i212 = add nuw nsw i64 %indvars.iv.i211, 1 ; 2 uses
  %exitcond.not.i213 = icmp eq i64 %indvars.iv.next.i212, %wide.trip.count.i210
  br i1 %exitcond.not.i213, label %pixel_set.exit208, label %vec.epilog.scalar.ph405, !llvm.loop !29

pixel_set.exit208:                                ; preds = %vec.epilog.scalar.ph377, %vec.epilog.vector.body384, %vec.epilog.scalar.ph405, %vec.epilog.vector.body412, %middle.block373, %middle.block401, %bb.w, %bb.v, %pixel_set.exit, %._crit_edge248, %._crit_edge259
  %i.lz = and i64 %.pre260, 300
  %.not186.not = icmp eq i64 %i.lz, 0
  br i1 %.not186.not, label %bb.x, label %pixel_set.exit232

bb.x:                                             ; preds = %pixel_set.exit208
  %i.ma = shl i32 %12, 2                          ; 15 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %15, i64 2 ; 8 uses
  br i1 %.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.mc = sub nsw i32 %4, %0
  %i.md = shl i32 %i.mc, 2                        ; 2 uses
  %i.me = tail call range(i32 0, -3) i32 @llvm.smin.i32(i32 range(i32 0, -3) %i.ma, i32 range(i32 0, -3) %i.md) ; 3 uses
  %i.mf = shl i32 %i.me, 1
  %i.mg = sext i32 %i.mf to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.mb, ptr align 2 %.0166, i64 %i.mg, i1 false)
  %i.mh = icmp slt i32 %i.md, %i.ma
  br i1 %i.mh, label %bb.z, label %pixel_set.exit220

bb.z:                                             ; preds = %bb.y
  %i.mi = sext i32 %i.me to i64
  %i.mj = getelementptr [2 x i8], ptr %i.mb, i64 %i.mi ; 4 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 -2
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !45 ; 3 uses
  %i.mm = sub nsw i32 %i.ma, %i.me                ; 3 uses
  %i.mn = icmp sgt i32 %i.mm, 0
  br i1 %i.mn, label %iter.check430, label %pixel_set.exit220

iter.check430:                                    ; preds = %bb.z
  %wide.trip.count.i216 = zext nneg i32 %i.mm to i64 ; 5 uses
  %min.iters.check420 = icmp ult i32 %i.mm, 16
  br i1 %min.iters.check420, label %vec.epilog.ph434, label %vector.ph421

vector.ph421:                                     ; preds = %iter.check430
  %i.mo = and i64 %wide.trip.count.i216, 12
  %n.vec422 = and i64 %wide.trip.count.i216, 2147483632 ; 4 uses
  %broadcast.splatinsert423 = insertelement <8 x i16> poison, i16 %i.ml, i64 0
  %broadcast.splat424 = shufflevector <8 x i16> %broadcast.splatinsert423, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body425

vector.body425:                                   ; preds = %vector.ph421, %vector.body425
  %index426 = phi i64 [ 0, %vector.ph421 ], [ %index.next427, %vector.body425 ] ; 2 uses
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %i.mj, i64 %index426 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  store <8 x i16> %broadcast.splat424, ptr %i.mp, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat424, ptr %i.mq, align 2, !tbaa !45
  %index.next427 = add nuw i64 %index426, 16      ; 2 uses
  %i.mr = icmp eq i64 %index.next427, %n.vec422
  br i1 %i.mr, label %middle.block428, label %vector.body425, !llvm.loop !30

middle.block428:                                  ; preds = %vector.body425
  %cmp.n429 = icmp eq i64 %n.vec422, %wide.trip.count.i216
  br i1 %cmp.n429, label %pixel_set.exit220, label %vec.epilog.iter.check431

vec.epilog.iter.check431:                         ; preds = %middle.block428
  %min.epilog.iters.check433 = icmp eq i64 %i.mo, 0
  br i1 %min.epilog.iters.check433, label %vec.epilog.scalar.ph432, label %vec.epilog.ph434, !prof !50

vec.epilog.ph434:                                 ; preds = %iter.check430, %vec.epilog.iter.check431
  %vec.epilog.resume.val435 = phi i64 [ %n.vec422, %vec.epilog.iter.check431 ], [ 0, %iter.check430 ]
  %broadcast.splatinsert437 = insertelement <4 x i16> poison, i16 %i.ml, i64 0
  %broadcast.splat438 = shufflevector <4 x i16> %broadcast.splatinsert437, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body439

vec.epilog.vector.body439:                        ; preds = %vec.epilog.vector.body439, %vec.epilog.ph434
  %index440 = phi i64 [ %vec.epilog.resume.val435, %vec.epilog.ph434 ], [ %index.next441, %vec.epilog.vector.body439 ] ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.mj, i64 %index440
  store <4 x i16> %broadcast.splat438, ptr %i.ms, align 2, !tbaa !45
  %index.next441 = add nuw i64 %index440, 4       ; 2 uses
  %i.mt = icmp eq i64 %index.next441, %wide.trip.count.i216
  br i1 %i.mt, label %pixel_set.exit220, label %vec.epilog.vector.body439, !llvm.loop !31

vec.epilog.scalar.ph432:                          ; preds = %vec.epilog.iter.check431, %vec.epilog.scalar.ph432
  %indvars.iv.i217 = phi i64 [ %indvars.iv.next.i218, %vec.epilog.scalar.ph432 ], [ %n.vec422, %vec.epilog.iter.check431 ] ; 2 uses
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.mj, i64 %indvars.iv.i217
  store i16 %i.ml, ptr %i.mu, align 2, !tbaa !45
  %indvars.iv.next.i218 = add nuw nsw i64 %indvars.iv.i217, 1 ; 2 uses
  %exitcond.not.i219 = icmp eq i64 %indvars.iv.next.i218, %wide.trip.count.i216
  br i1 %exitcond.not.i219, label %pixel_set.exit220, label %vec.epilog.scalar.ph432, !llvm.loop !32

bb.aa:                                            ; preds = %bb.x
  %.not187 = icmp eq i32 %1, 0
  br i1 %.not187, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mv = getelementptr inbounds i8, ptr %7, i64 -2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !45
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.mx = shl nuw i32 1, %i.b
  %i.my = lshr i32 %i.mx, 1
  %i.mz = trunc i32 %i.my to i16
  %i.na = add i16 %i.mz, -1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.nb = phi i16 [ %i.mw, %bb.ab ], [ %i.na, %bb.ac ] ; 3 uses
  %i.nc = icmp sgt i32 %i.ma, 0
  br i1 %i.nc, label %iter.check458, label %pixel_set.exit220

iter.check458:                                    ; preds = %bb.ad
  %wide.trip.count.i222 = zext nneg i32 %i.ma to i64 ; 5 uses
  %min.iters.check448 = icmp ult i32 %i.ma, 16
  br i1 %min.iters.check448, label %vec.epilog.ph462, label %vector.ph449

vector.ph449:                                     ; preds = %iter.check458
  %i.nd = and i64 %wide.trip.count.i222, 12
  %n.vec450 = and i64 %wide.trip.count.i222, 2147483632 ; 4 uses
  %broadcast.splatinsert451 = insertelement <8 x i16> poison, i16 %i.nb, i64 0
  %broadcast.splat452 = shufflevector <8 x i16> %broadcast.splatinsert451, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body453

vector.body453:                                   ; preds = %vector.ph449, %vector.body453
  %index454 = phi i64 [ 0, %vector.ph449 ], [ %index.next455, %vector.body453 ] ; 2 uses
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.mb, i64 %index454 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store <8 x i16> %broadcast.splat452, ptr %i.ne, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat452, ptr %i.nf, align 2, !tbaa !45
  %index.next455 = add nuw i64 %index454, 16      ; 2 uses
  %i.ng = icmp eq i64 %index.next455, %n.vec450
  br i1 %i.ng, label %middle.block456, label %vector.body453, !llvm.loop !33

middle.block456:                                  ; preds = %vector.body453
  %cmp.n457 = icmp eq i64 %n.vec450, %wide.trip.count.i222
  br i1 %cmp.n457, label %pixel_set.exit220, label %vec.epilog.iter.check459

vec.epilog.iter.check459:                         ; preds = %middle.block456
  %min.epilog.iters.check461 = icmp eq i64 %i.nd, 0
  br i1 %min.epilog.iters.check461, label %vec.epilog.scalar.ph460, label %vec.epilog.ph462, !prof !50

vec.epilog.ph462:                                 ; preds = %iter.check458, %vec.epilog.iter.check459
  %vec.epilog.resume.val463 = phi i64 [ %n.vec450, %vec.epilog.iter.check459 ], [ 0, %iter.check458 ]
  %broadcast.splatinsert465 = insertelement <4 x i16> poison, i16 %i.nb, i64 0
  %broadcast.splat466 = shufflevector <4 x i16> %broadcast.splatinsert465, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body467

vec.epilog.vector.body467:                        ; preds = %vec.epilog.vector.body467, %vec.epilog.ph462
  %index468 = phi i64 [ %vec.epilog.resume.val463, %vec.epilog.ph462 ], [ %index.next469, %vec.epilog.vector.body467 ] ; 2 uses
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %i.mb, i64 %index468
  store <4 x i16> %broadcast.splat466, ptr %i.nh, align 2, !tbaa !45
  %index.next469 = add nuw i64 %index468, 4       ; 2 uses
  %i.ni = icmp eq i64 %index.next469, %wide.trip.count.i222
  br i1 %i.ni, label %pixel_set.exit220, label %vec.epilog.vector.body467, !llvm.loop !34

vec.epilog.scalar.ph460:                          ; preds = %vec.epilog.iter.check459, %vec.epilog.scalar.ph460
  %indvars.iv.i223 = phi i64 [ %indvars.iv.next.i224, %vec.epilog.scalar.ph460 ], [ %n.vec450, %vec.epilog.iter.check459 ] ; 2 uses
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.mb, i64 %indvars.iv.i223
  store i16 %i.nb, ptr %i.nj, align 2, !tbaa !45
  %indvars.iv.next.i224 = add nuw nsw i64 %indvars.iv.i223, 1 ; 2 uses
  %exitcond.not.i225 = icmp eq i64 %indvars.iv.next.i224, %wide.trip.count.i222
  br i1 %exitcond.not.i225, label %pixel_set.exit220, label %vec.epilog.scalar.ph460, !llvm.loop !35

pixel_set.exit220:                                ; preds = %vec.epilog.scalar.ph432, %vec.epilog.vector.body439, %vec.epilog.scalar.ph460, %vec.epilog.vector.body467, %middle.block428, %middle.block456, %bb.ad, %bb.z, %bb.y
  %.not188.not = icmp eq i32 %.0167, 6
  br i1 %.not188.not, label %bb.ae, label %pixel_set.exit232

bb.ae:                                            ; preds = %pixel_set.exit220
  %i.nk = add i32 %12, %0                         ; 2 uses
  %.not189 = icmp sge i32 %i.nk, %4
  %i.nl = and i32 %6, 1
  %i.nm = icmp eq i32 %i.nl, 0
  %i.nn = or i1 %i.nm, %.not189
  %.not190 = or i1 %.not, %i.nn
  br i1 %.not190, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.no = sub i32 %4, %i.nk
  %i.np = shl i32 %i.no, 2                        ; 2 uses
  %i.nq = tail call range(i32 0, -3) i32 @llvm.smin.i32(i32 range(i32 0, -3) %i.ma, i32 range(i32 0, -3) %i.np) ; 4 uses
  %i.nr = sext i32 %i.ma to i64                   ; 2 uses
  %i.ns = getelementptr inbounds [2 x i8], ptr %i.mb, i64 %i.nr ; 2 uses
  %i.nt = getelementptr inbounds [2 x i8], ptr %.0166, i64 %i.nr
  %i.nu = shl i32 %i.nq, 1
  %i.nv = sext i32 %i.nu to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ns, ptr align 2 %i.nt, i64 %i.nv, i1 false)
  %i.nw = icmp slt i32 %i.np, %i.ma
  br i1 %i.nw, label %bb.ag, label %pixel_set.exit232

bb.ag:                                            ; preds = %bb.af
  %i.nx = sext i32 %i.nq to i64
  %i.ny = getelementptr inbounds [2 x i8], ptr %i.ns, i64 %i.nx ; 3 uses
  %i.nz = add nsw i32 %i.nq, %i.ma
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr [2 x i8], ptr %i.mb, i64 %i.oa
  %i.oc = getelementptr i8, ptr %i.ob, i64 -2
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !45 ; 3 uses
  %i.oe = sub nsw i32 %i.ma, %i.nq                ; 3 uses
  %i.of = icmp sgt i32 %i.oe, 0
  br i1 %i.of, label %iter.check485, label %pixel_set.exit232

iter.check485:                                    ; preds = %bb.ag
  %wide.trip.count.i228 = zext nneg i32 %i.oe to i64 ; 5 uses
  %min.iters.check475 = icmp ult i32 %i.oe, 16
  br i1 %min.iters.check475, label %vec.epilog.ph489, label %vector.ph476

vector.ph476:                                     ; preds = %iter.check485
end_hunk_1
