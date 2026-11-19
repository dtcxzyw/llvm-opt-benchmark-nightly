Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cdef_apply_tmpl?download=true
inline.NumInlined: 17
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@dav1d_cdef_brow_16bpc.uv_dirs = internal unnamed_addr constant [2 x [8 x i8]] [[8 x i8] c"\00\01\02\03\04\05\06\07", [8 x i8] c"\07\00\02\04\05\06\06\06"], align 16

; Function Attrs: nounwind uwtable
define hidden void @dav1d_cdef_brow_16bpc(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x [3 x [8 x [2 x i16]]]], align 16 ; 16 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 23 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2172
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61
  %i.g = add nsw i32 %i.f, -8                     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 3288
  %i.i = load i32, ptr %i.h, align 8, !tbaa !62
  %i.j = shl i32 %i.i, 1                          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 847
  %i.n = load i8, ptr %i.m, align 1, !tbaa !79
  %i.o = zext i8 %i.n to i32
  %i.p = add nsw i32 %i.g, %i.o                   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 2168
  %i.r = load i32, ptr %i.q, align 8, !tbaa !80   ; 5 uses
  %i.s = icmp ne i32 %i.r, 3
  %i.t = zext i1 %i.s to i32                      ; 3 uses
  %i.u = icmp eq i32 %i.r, 2
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @dav1d_cdef_brow_16bpc.uv_dirs, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 3088
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !95
  %i.ab = icmp ult i32 %i.aa, 2                   ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 236
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !96
  %.not = icmp eq i32 %i.ad, %i.af                ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 2144 ; 7 uses
  %i.ah = load i64, ptr %i.ag, align 16, !tbaa !97 ; 4 uses
  %i.ai = and i64 %i.ah, 1
  %.not.i = icmp eq i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 2152 ; 7 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !97 ; 2 uses
  %i.al = and i64 %i.ak, 1
  %.not.i364 = icmp eq i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i364)
  %i.am = icmp slt i32 %3, %4
  br i1 %i.am, label %.lr.ph470, label %._crit_edge471

.lr.ph470:                                        ; preds = %bb.a
  %i.an = ashr exact i64 %i.ak, 1                 ; 7 uses
  %i.ao = ashr exact i64 %i.ah, 1                 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !98
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 392
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !100
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = icmp eq i32 %i.r, 1                     ; 5 uses
  %i.av = sub i32 3, %i.r
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !101
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !101
  %i.ba = load ptr, ptr %1, align 8, !tbaa !101
  %i.bb = icmp sgt i32 %3, 0
  %i.bc = select i1 %i.bb, i32 12, i32 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 3112
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !102 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 258544 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 3284
  %i.bh = icmp ne i32 %5, 0                       ; 3 uses
  %or.cond.not.not433 = or i1 %i.bh, %i.ab
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 4936 ; 2 uses
  %i.bj = select i1 %i.ab, i32 0, i32 %6          ; 2 uses
  %i.bk = shl nsw i32 %i.bj, 2
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul nsw i64 %i.ao, %i.bl
  %i.bn = shl nsw i32 %i.bj, 3
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul nsw i64 %i.an, %i.bo                ; 2 uses
  %.not.i365 = icmp eq i32 %i.r, 0                ; 4 uses
  %i.bq = select i1 %i.au, i64 2, i64 6
  %i.br = select i1 %i.au, i64 3, i64 7
  %i.bs = icmp sgt i32 %i.j, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 3280 ; 2 uses
  %i.bu = zext i1 %i.au to i32
  %i.bv = lshr exact i32 8, %i.bu
  %wide.trip.count.i = zext nneg i32 %i.bv to i64 ; 2 uses
  %i.bw = lshr exact i32 8, %i.t
  %i.bx = zext nneg i32 %i.bw to i64              ; 3 uses
  %i.by = add nsw i64 %i.bx, -2                   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 3296
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 4068 ; 5 uses
  %i.cb = shl i32 %6, 2                           ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %i.ao, %i.cc                ; 2 uses
  %i.ce = or disjoint i32 %i.cb, 2
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = mul nsw i64 %i.ao, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 4984 ; 2 uses
  %i.ci = shl i32 4, %i.at
  %i.cj = mul nsw i32 %i.ci, %6                   ; 2 uses
  %i.ck = shl nuw nsw i32 %i.at, 2
  %i.cl = add nsw i32 %i.cj, %i.ck
  %i.cm = or disjoint i32 %i.cl, 2
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = mul nsw i64 %i.ao, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 5008 ; 2 uses
  %i.cq = add i32 %i.cb, -4
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = mul nsw i64 %i.ao, %i.cr
  %i.ct = add nsw i32 %i.cj, -4
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = mul nsw i64 %i.ao, %i.cu
  %.idx349 = shl nsw i64 %i.ah, 3                 ; 2 uses
  %i.cw = select i1 %i.ab, i64 0, i64 %i.cd
  %i.cx = getelementptr inbounds nuw i8, ptr %i.be, i64 3304 ; 3 uses
  %.not.i365.not = xor i1 %.not.i365, true
  %i.cy = sext i32 %i.av to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cy ; 2 uses
  %i.da = add nsw i32 %i.p, -1                    ; 2 uses
  %i.db = shl nsw i32 %6, 3
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %i.an, %i.dc                ; 3 uses
  %i.de = mul nsw i64 %i.an, %i.cf                ; 2 uses
  %i.df = mul nsw i64 %i.an, %i.cn                ; 2 uses
  %i.dg = mul nsw i64 %i.an, %i.cr                ; 2 uses
  %i.dh = mul nsw i64 %i.an, %i.cu                ; 2 uses
  %i.di = select i1 %i.au, i64 2, i64 3
  %i.dj = shl i64 %i.an, %i.di                    ; 4 uses
  %i.dk = select i1 %i.ab, i64 0, i64 %i.dd       ; 2 uses
  %i.dl = lshr exact i32 64, %i.t
  %i.dm = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dn = zext i1 %i.au to i64
  %.pre = load i32, ptr %i.bf, align 16, !tbaa !103
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 4992
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 5016
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 4992
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 5016
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 5000
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 5024
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 5000
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 5024
  br label %bb.b

._crit_edge471:                                   ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph470, %._crit_edge
  %i.dw = phi i64 [ %i.ah, %.lr.ph470 ], [ %i.fw, %._crit_edge ] ; 3 uses
  %i.dx = phi i32 [ %.pre, %.lr.ph470 ], [ %i.gg, %._crit_edge ] ; 2 uses
  %.0303468 = phi i32 [ %i.bc, %.lr.ph470 ], [ %i.gh, %._crit_edge ] ; 2 uses
  %.0311467 = phi i32 [ undef, %.lr.ph470 ], [ %.1312.lcssa, %._crit_edge ] ; 2 uses
  %.0323466 = phi i32 [ %3, %.lr.ph470 ], [ %i.ea, %._crit_edge ] ; 4 uses
  %.0324465 = phi i32 [ 0, %.lr.ph470 ], [ %.1325.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0421.0464 = phi ptr [ %i.ba, %.lr.ph470 ], [ %i.fy, %._crit_edge ] ; 4 uses
  %.sroa.8.0463 = phi ptr [ %i.az, %.lr.ph470 ], [ %i.gd, %._crit_edge ] ; 4 uses
  %.sroa.14.0462 = phi ptr [ %i.ax, %.lr.ph470 ], [ %i.ge, %._crit_edge ] ; 4 uses
  %i.dy = lshr i32 %.0323466, 1
  %i.dz = and i32 %i.dy, 15
  %i.ea = add nsw i32 %.0323466, 2                ; 3 uses
  %i.eb = load i32, ptr %i.bg, align 4, !tbaa !104
  %.not334 = icmp slt i32 %i.ea, %i.eb
  %i.ec = and i32 %.0303468, -9
  %spec.select = select i1 %.not334, i32 %.0303468, i32 %i.ec ; 2 uses
  %i.ed = icmp slt i32 %i.ea, %4                  ; 3 uses
  %or.cond = select i1 %or.cond.not.not433, i1 true, i1 %i.ed
  %i.ee = and i32 %spec.select, 8
  %.not336 = icmp ne i32 %i.ee, 0
  %or.cond353.not = select i1 %or.cond, i1 %.not336, i1 false
  br i1 %or.cond353.not, label %bb.c, label %backup2lines.exit

bb.c:                                             ; preds = %bb.b
  %.not337 = icmp eq i32 %i.dx, 0
  %i.ef = zext i1 %.not337 to i64
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.ef ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !101
  %i.ei = getelementptr inbounds [2 x i8], ptr %i.eh, i64 %i.bm ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !101
  %i.el = getelementptr inbounds [2 x i8], ptr %i.ek, i64 %i.bp ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !101
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.en, i64 %i.bp ; 2 uses
  %i.ep = ashr exact i64 %i.dw, 1                 ; 4 uses
  %i.eq = icmp slt i64 %i.ep, 0
  br i1 %i.eq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.er = getelementptr inbounds i8, ptr %i.ei, i64 %i.dw
  %.idx40.i = mul nsw i64 %i.ep, 14
  %i.es = getelementptr inbounds i8, ptr %.sroa.0421.0464, i64 %.idx40.i
  %i.et = mul i64 %i.ep, -4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.er, ptr nonnull align 2 %i.es, i64 %i.et, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.idx.i = mul nuw nsw i64 %i.ep, 12
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0421.0464, i64 %.idx.i
  %i.ev = shl nuw i64 %i.dw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ei, ptr align 2 %i.eu, i64 %i.ev, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not.i365, label %backup2lines.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ew = load i64, ptr %i.aj, align 8, !tbaa !97 ; 5 uses
  %i.ex = and i64 %i.ew, 1
  %.not.i41.i = icmp eq i64 %i.ex, 0
  call void @llvm.assume(i1 %.not.i41.i)
  %i.ey = ashr exact i64 %i.ew, 1                 ; 4 uses
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fa = getelementptr inbounds i8, ptr %i.el, i64 %i.ew
  %i.fb = mul nsw i64 %i.ey, %i.br                ; 2 uses
  %i.fc = getelementptr inbounds [2 x i8], ptr %.sroa.8.0463, i64 %i.fb
  %i.fd = mul i64 %i.ey, -4                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.fa, ptr nonnull align 2 %i.fc, i64 %i.fd, i1 false)
  %i.fe = getelementptr inbounds i8, ptr %i.eo, i64 %i.ew
  %i.ff = getelementptr inbounds [2 x i8], ptr %.sroa.14.0462, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.fe, ptr nonnull align 2 %i.ff, i64 %i.fd, i1 false)
  br label %backup2lines.exit

bb.i:                                             ; preds = %bb.g
  %i.fg = mul nuw nsw i64 %i.ey, %i.bq            ; 2 uses
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0463, i64 %i.fg
  %i.fi = shl nuw i64 %i.ew, 1                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.el, ptr align 2 %i.fh, i64 %i.fi, i1 false)
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.14.0462, i64 %i.fg
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.eo, ptr align 2 %i.fj, i64 %i.fi, i1 false)
  br label %backup2lines.exit

backup2lines.exit:                                ; preds = %bb.i, %bb.h, %bb.f, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.fk = and i32 %spec.select, -4
  %i.fl = or disjoint i32 %i.fk, 2                ; 2 uses
  br i1 %i.bs, label %.lr.ph458, label %._crit_edge

.lr.ph458:                                        ; preds = %backup2lines.exit
  %i.fm = lshr i32 %.0323466, 3
  %i.fn = and i32 %i.fm, 2
  %i.fo = zext nneg i32 %i.dz to i64
  %i.fp = icmp eq i32 %.0323466, %3
  %or.cond357 = and i1 %i.bh, %i.fp               ; 3 uses
  %or.cond359 = select i1 %i.bh, i1 true, i1 %i.ed ; 3 uses
  %i.fq = sext i32 %i.dx to i64
  %i.fr = getelementptr inbounds [24 x i8], ptr %i.bi, i64 %i.fq ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  br label %bb.j

._crit_edge:                                      ; preds = %.loopexit434, %backup2lines.exit
  %.1325.lcssa = phi i32 [ %.0324465, %backup2lines.exit ], [ %.4328, %.loopexit434 ]
  %.1312.lcssa = phi i32 [ %.0311467, %backup2lines.exit ], [ %.5316, %.loopexit434 ]
  %.2.lcssa = phi i32 [ %i.fl, %backup2lines.exit ], [ %i.qv, %.loopexit434 ]
  %i.fw = load i64, ptr %i.ag, align 16, !tbaa !97 ; 3 uses
  %i.fx = and i64 %i.fw, 1
  %.not.i366 = icmp eq i64 %i.fx, 0
  call void @llvm.assume(i1 %.not.i366)
  %.idx = shl nsw i64 %i.fw, 3
  %i.fy = getelementptr inbounds i8, ptr %.sroa.0421.0464, i64 %.idx
  %i.fz = load i64, ptr %i.aj, align 8, !tbaa !97 ; 2 uses
  %i.ga = and i64 %i.fz, 1
  %.not.i367 = icmp eq i64 %i.ga, 0
  call void @llvm.assume(i1 %.not.i367)
  %i.gb = shl nsw i64 %i.fz, 2
  %i.gc = ashr exact i64 %i.gb, %i.dn             ; 2 uses
  %i.gd = getelementptr inbounds [2 x i8], ptr %.sroa.8.0463, i64 %i.gc
  %i.ge = getelementptr inbounds [2 x i8], ptr %.sroa.14.0462, i64 %i.gc
  %i.gf = load i32, ptr %i.bf, align 16, !tbaa !103
  %i.gg = xor i32 %i.gf, 1                        ; 2 uses
  store i32 %i.gg, ptr %i.bf, align 16, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.gh = or i32 %.2.lcssa, 4
  br i1 %i.ed, label %bb.b, label %._crit_edge471

bb.j:                                             ; preds = %.lr.ph458, %.loopexit434
  %indvars.iv = phi i32 [ 0, %.lr.ph458 ], [ %indvars.iv.next, %.loopexit434 ] ; 2 uses
  %.2457 = phi i32 [ %i.fl, %.lr.ph458 ], [ %i.qv, %.loopexit434 ] ; 4 uses
  %.1312456 = phi i32 [ %.0311467, %.lr.ph458 ], [ %.5316, %.loopexit434 ] ; 4 uses
  %.0318455 = phi i32 [ 0, %.lr.ph458 ], [ %i.qu, %.loopexit434 ] ; 4 uses
  %.0319454 = phi i32 [ 0, %.lr.ph458 ], [ %.3322, %.loopexit434 ] ; 2 uses
  %.sroa.0.0452 = phi ptr [ %.sroa.0421.0464, %.lr.ph458 ], [ %i.qr, %.loopexit434 ] ; 2 uses
  %.sroa.6.0450 = phi ptr [ %.sroa.8.0463, %.lr.ph458 ], [ %i.qs, %.loopexit434 ] ; 2 uses
  %.sroa.10.0448 = phi ptr [ %.sroa.14.0462, %.lr.ph458 ], [ %i.qt, %.loopexit434 ] ; 2 uses
  %.1325447 = phi i32 [ %.0324465, %.lr.ph458 ], [ %.4328, %.loopexit434 ] ; 4 uses
  %i.gi = zext i32 %indvars.iv to i64
  %i.gj = lshr i32 %.0318455, 1
  %i.gk = and i32 %.0318455, 1
  %i.gl = or disjoint i32 %i.gk, %i.fn
  %i.gm = zext nneg i32 %i.gj to i64
  %i.gn = getelementptr inbounds nuw [1348 x i8], ptr %2, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1280
  %i.gp = zext nneg i32 %i.gl to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !105 ; 2 uses
  %i.gs = icmp eq i8 %i.gr, -1
  br i1 %i.gs, label %.loopexit434, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gt = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 849
  %i.gv = sext i8 %i.gr to i64                    ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !105 ; 2 uses
  %.not338 = icmp ne i8 %i.gx, 0                  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gt, i64 857
  %.phi.trans.insert501 = getelementptr inbounds i8, ptr %.phi.trans.insert, i64 %i.gv
  %.pre502 = load i8, ptr %.phi.trans.insert501, align 1, !tbaa !105 ; 3 uses
  %.not339 = icmp ne i8 %.pre502, 0
  %or.cond526.not = select i1 %.not338, i1 true, i1 %.not339
  br i1 %or.cond526.not, label %._crit_edge500, label %.loopexit434

._crit_edge500:                                   ; preds = %bb.k
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 1284
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.fo
  %i.ha = load i32, ptr %i.gz, align 2
  %i.hb = zext i8 %i.gx to i32                    ; 2 uses
  %i.hc = zext i8 %.pre502 to i32                 ; 2 uses
  %i.hd = zext i1 %.not338 to i32
  %.not340 = icmp eq i8 %.pre502, 0               ; 3 uses
  %i.he = select i1 %.not340, i32 0, i32 2
  %i.hf = or disjoint i32 %i.he, %i.hd            ; 2 uses
  %i.hg = lshr i32 %i.hb, 2
  %i.hh = shl i32 %i.hg, %i.g                     ; 2 uses
  %i.hi = and i32 %i.hb, 3                        ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 3
  %i.hk = select i1 %i.hj, i32 4, i32 %i.hi
  %i.hl = shl i32 %i.hk, %i.g                     ; 3 uses
  %i.hm = lshr i32 %i.hc, 2
  %i.hn = shl i32 %i.hm, %i.g                     ; 3 uses
  %i.ho = and i32 %i.hc, 3                        ; 2 uses
  %i.hp = icmp eq i32 %i.ho, 3
  %i.hq = select i1 %i.hp, i32 4, i32 %i.ho
  %i.hr = shl i32 %i.hq, %i.g                     ; 2 uses
  %i.hs = shl i32 %.0318455, 4                    ; 2 uses
  %i.ht = add i32 %i.hs, 16                       ; 2 uses
  %i.hu = load i32, ptr %i.bt, align 16, !tbaa !106 ; 2 uses
  %i.hv = call noundef i32 @llvm.smin.i32(i32 %i.ht, i32 %i.hu)
  %i.hw = icmp slt i32 %i.hs, %i.hv
  br i1 %i.hw, label %.lr.ph, label %.loopexit434

.lr.ph:                                           ; preds = %._crit_edge500
  %or.cond.i383 = select i1 %.not.i365, i1 true, i1 %.not340
  %i.hx = icmp ne i32 %i.hh, 0                    ; 2 uses
  %i.hy = icmp ne i32 %i.hn, 0                    ; 2 uses
  %or.cond3 = select i1 %i.hx, i1 true, i1 %i.hy
  %.not350 = icmp ne i32 %i.hl, 0                 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.bn
  %i.hz = phi i32 [ %i.hu, %.lr.ph ], [ %i.qk, %bb.bn ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %.sroa.10.0448, %.lr.ph ], [ %i.qn, %bb.bn ] ; 8 uses
  %.sroa.2.0 = phi ptr [ %.sroa.6.0450, %.lr.ph ], [ %i.qm, %bb.bn ] ; 8 uses
  %indvars.iv474 = phi i64 [ %i.gi, %.lr.ph ], [ %indvars.iv.next475, %bb.bn ] ; 5 uses
  %.3443 = phi i32 [ %.2457, %.lr.ph ], [ %i.qo, %bb.bn ] ; 2 uses
  %.2313442 = phi i32 [ %.1312456, %.lr.ph ], [ %.4315, %bb.bn ] ; 2 uses
  %.1320440 = phi i32 [ %.0319454, %.lr.ph ], [ %.2321, %bb.bn ]
  %.2326439 = phi i32 [ %.1325447, %.lr.ph ], [ %.3327, %bb.bn ] ; 7 uses
  %.sroa.0.0392436 = phi ptr [ %.sroa.0.0452, %.lr.ph ], [ %i.ql, %bb.bn ] ; 20 uses
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 2 ; 2 uses
  %i.ia = trunc nuw i64 %indvars.iv.next475 to i32 ; 2 uses
  %.not341 = icmp sgt i32 %i.hz, %i.ia
  %i.ib = and i32 %.3443, -3
  %spec.select354 = select i1 %.not341, i32 %.3443, i32 %i.ib ; 7 uses
  %i.ic = trunc nuw i64 %indvars.iv474 to i32     ; 2 uses
  %i.id = and i32 %i.ic, 30
  %i.ie = shl nuw i32 3, %i.id
  %i.if = and i32 %i.ie, %i.ha
  %.not342 = icmp eq i32 %i.if, 0
  br i1 %.not342, label %bb.bn, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ig = xor i32 %.1320440, -1
  %i.ih = and i32 %i.hf, %i.ig                    ; 3 uses
  %.not343 = icmp eq i32 %i.ih, 0
  %i.ii = and i32 %spec.select354, 1
  %.not344 = icmp eq i32 %i.ii, 0
  %or.cond355 = select i1 %.not343, i1 true, i1 %.not344
  br i1 %or.cond355, label %backup2x8.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ij = zext nneg i32 %.2326439 to i64
  %i.ik = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %i.ij ; 10 uses
  %i.il = and i32 %i.ih, 1
  %.not.i369 = icmp eq i32 %i.il, 0
  br i1 %.not.i369, label %.loopexit35.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %i.im = getelementptr i8, ptr %.sroa.0.0392436, i64 -4
  %i.in = load i32, ptr %i.im, align 2
  store i32 %i.in, ptr %i.ik, align 16
  %i.io = load i64, ptr %i.ag, align 16, !tbaa !97 ; 5 uses
  %i.ip = and i64 %i.io, 1
  %.not.i.i370 = icmp eq i64 %i.ip, 0
  call void @llvm.assume(i1 %.not.i.i370)
  %i.iq = ashr exact i64 %i.io, 1                 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.is = getelementptr i8, ptr %.sroa.0.0392436, i64 %i.io ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 -4
  %i.iu = load i32, ptr %i.it, align 2
  store i32 %i.iu, ptr %i.ir, align 4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.iw = getelementptr [2 x i8], ptr %.sroa.0.0392436, i64 %i.io
  %i.ix = getelementptr i8, ptr %i.iw, i64 -4
  %i.iy = load i32, ptr %i.ix, align 2
  store i32 %i.iy, ptr %i.iv, align 8
  %i.iz = add nsw i64 %i.iq, %i.io                ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  %i.jb = getelementptr [2 x i8], ptr %.sroa.0.0392436, i64 %i.iz
  %i.jc = getelementptr i8, ptr %i.jb, i64 -4
  %i.jd = load i32, ptr %i.jc, align 2
  store i32 %i.jd, ptr %i.ja, align 4
  %i.je = add nsw i64 %i.iq, %i.iz                ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.jg = getelementptr [2 x i8], ptr %.sroa.0.0392436, i64 %i.je
  %i.jh = getelementptr i8, ptr %i.jg, i64 -4
  %i.ji = load i32, ptr %i.jh, align 2
  store i32 %i.ji, ptr %i.jf, align 16
  %i.jj = add nsw i64 %i.iq, %i.je                ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ik, i64 20
  %i.jl = getelementptr [2 x i8], ptr %.sroa.0.0392436, i64 %i.jj
  %i.jm = getelementptr i8, ptr %i.jl, i64 -4
  %i.jn = load i32, ptr %i.jm, align 2
  store i32 %i.jn, ptr %i.jk, align 4
  %i.jo = add nsw i64 %i.iq, %i.jj                ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.jq = getelementptr [2 x i8], ptr %.sroa.0.0392436, i64 %i.jo
  %i.jr = getelementptr i8, ptr %i.jq, i64 -4
  %i.js = load i32, ptr %i.jr, align 2
  store i32 %i.js, ptr %i.jp, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ik, i64 28
  %i.ju = getelementptr [2 x i8], ptr %i.is, i64 %i.jo
  %i.jv = getelementptr i8, ptr %i.ju, i64 -4
  %i.jw = load i32, ptr %i.jv, align 2
  store i32 %i.jw, ptr %i.jt, align 4
  br label %.loopexit35.i

.loopexit35.i:                                    ; preds = %.preheader.i, %bb.n
  %.not33.i = icmp samesign ult i32 %i.ih, 2
  %or.cond.i = select i1 %.not.i365, i1 true, i1 %.not33.i
  br i1 %or.cond.i, label %backup2x8.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit35.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ik, i64 32 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ik, i64 64 ; 2 uses
  %.pre503 = load i64, ptr %i.aj, align 8, !tbaa !97 ; 2 uses
  %i.jz = and i64 %.pre503, 1
  %.not.i34.i = icmp eq i64 %i.jz, 0
  call void @llvm.assume(i1 %.not.i34.i)
  %i.ka = ashr exact i64 %.pre503, 1              ; 2 uses
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %bb.o
  %indvars.iv.i = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i.1, %scalar.ph ] ; 4 uses
  %.138.i = phi i64 [ 0, %bb.o ], [ %i.kq, %scalar.ph ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv.i
  %i.kc = add i64 %.138.i, -2                     ; 2 uses
  %i.kd = getelementptr inbounds [2 x i8], ptr %.sroa.2.0, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 2
  store i32 %i.ke, ptr %i.kb, align 8
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i
  %i.kg = getelementptr inbounds [2 x i8], ptr %.sroa.7.0, i64 %i.kc
  %i.kh = load i32, ptr %i.kg, align 2
  store i32 %i.kh, ptr %i.kf, align 8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ki = add nsw i64 %i.ka, %.138.i              ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv.next.i
  %i.kk = add i64 %i.ki, -2                       ; 2 uses
  %i.kl = getelementptr inbounds [2 x i8], ptr %.sroa.2.0, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 2
  store i32 %i.km, ptr %i.kj, align 4
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.next.i
  %i.ko = getelementptr inbounds [2 x i8], ptr %.sroa.7.0, i64 %i.kk
  %i.kp = load i32, ptr %i.ko, align 2
  store i32 %i.kp, ptr %i.kn, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.kq = add nsw i64 %i.ka, %i.ki
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %backup2x8.exit, label %scalar.ph

backup2x8.exit:                                   ; preds = %scalar.ph, %.loopexit35.i, %bb.m
  %i.kr = and i32 %spec.select354, 2
  %.not345 = icmp eq i32 %i.kr, 0
  br i1 %.not345, label %backup2x8.exit390, label %bb.p

bb.p:                                             ; preds = %backup2x8.exit
  %.not346 = icmp eq i32 %.2326439, 0             ; 10 uses
  br i1 %.not338, label %.preheader.i372, label %.loopexit35.i381

.preheader.i372:                                  ; preds = %bb.p
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not346, i64 96, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.ks = getelementptr i8, ptr %.sroa.0.0392436, i64 12
  %i.kt = load i32, ptr %i.ks, align 2
  store i32 %i.kt, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 16
  %i.ku = load i64, ptr %i.ag, align 16, !tbaa !97 ; 5 uses
  %i.kv = and i64 %i.ku, 1
  %.not.i.i373 = icmp eq i64 %i.kv, 0
  call void @llvm.assume(i1 %.not.i.i373)
  %i.kw = ashr exact i64 %i.ku, 1                 ; 4 uses
  %.sroa.sel.sroa.sel419.v.sroa.sel.v.sroa.sel.v = select i1 %.not346, i64 100, i64 4
  %.sroa.sel.sroa.sel419.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel419.v.sroa.sel.v.sroa.sel.v
  %i.kx = getelementptr i8, ptr %.sroa.0.0392436, i64 %i.ku ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kx, i64 12
  %i.kz = load i32, ptr %i.ky, align 2
  store i32 %i.kz, ptr %.sroa.sel.sroa.sel419.v.sroa.sel.v.sroa.sel, align 4
  %.sroa.sel.sroa.sel416.v.sroa.sel.v.sroa.sel.v = select i1 %.not346, i64 104, i64 8
  %.sroa.sel.sroa.sel416.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel416.v.sroa.sel.v.sroa.sel.v
  %i.la = getelementptr [2 x i8], ptr %.sroa.0.0392436, i64 %i.ku
  %i.lb = getelementptr i8, ptr %i.la, i64 12
  %i.lc = load i32, ptr %i.lb, align 2
  store i32 %i.lc, ptr %.sroa.sel.sroa.sel416.v.sroa.sel.v.sroa.sel, align 8
  %i.ld = add nsw i64 %i.kw, %i.ku                ; 2 uses
  %.sroa.sel.sroa.sel413.v.sroa.sel.v.sroa.sel.v = select i1 %.not346, i64 108, i64 12
  %.sroa.sel.sroa.sel413.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel413.v.sroa.sel.v.sroa.sel.v
  %i.le = getelementptr [2 x i8], ptr %.sroa.0.0392436, i64 %i.ld
  %i.lf = getelementptr i8, ptr %i.le, i64 12
  %i.lg = load i32, ptr %i.lf, align 2
  store i32 %i.lg, ptr %.sroa.sel.sroa.sel413.v.sroa.sel.v.sroa.sel, align 4
  %i.lh = add nsw i64 %i.ld, %i.kw                ; 2 uses
  %.sroa.sel.sroa.sel410.v.sroa.sel.v.sroa.sel.v = select i1 %.not346, i64 112, i64 16
  %.sroa.sel.sroa.sel410.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel410.v.sroa.sel.v.sroa.sel.v
  %i.li = getelementptr [2 x i8], ptr %.sroa.0.0392436, i64 %i.lh
  %i.lj = getelementptr i8, ptr %i.li, i64 12
  %i.lk = load i32, ptr %i.lj, align 2
  store i32 %i.lk, ptr %.sroa.sel.sroa.sel410.v.sroa.sel.v.sroa.sel, align 16
  %i.ll = add nsw i64 %i.lh, %i.kw                ; 2 uses
  %.sroa.sel.sroa.sel407.v.sroa.sel.v.sroa.sel.v = select i1 %.not346, i64 116, i64 20
  %.sroa.sel.sroa.sel407.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel407.v.sroa.sel.v.sroa.sel.v
  %i.lm = getelementptr [2 x i8], ptr %.sroa.0.0392436, i64 %i.ll
  %i.ln = getelementptr i8, ptr %i.lm, i64 12
  %i.lo = load i32, ptr %i.ln, align 2
  store i32 %i.lo, ptr %.sroa.sel.sroa.sel407.v.sroa.sel.v.sroa.sel, align 4
  %i.lp = add nsw i64 %i.ll, %i.kw                ; 2 uses
  %.sroa.sel.sroa.sel404.v.sroa.sel.v.sroa.sel.v = select i1 %.not346, i64 120, i64 24
  %.sroa.sel.sroa.sel404.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel404.v.sroa.sel.v.sroa.sel.v
  %i.lq = getelementptr [2 x i8], ptr %.sroa.0.0392436, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 12
  %i.ls = load i32, ptr %i.lr, align 2
  store i32 %i.ls, ptr %.sroa.sel.sroa.sel404.v.sroa.sel.v.sroa.sel, align 8
  %.sroa.sel.sroa.sel401.v.sroa.sel.v.sroa.sel.v = select i1 %.not346, i64 124, i64 28
  %.sroa.sel.sroa.sel401.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel401.v.sroa.sel.v.sroa.sel.v
  %i.lt = getelementptr [2 x i8], ptr %i.kx, i64 %i.lp
  %i.lu = getelementptr i8, ptr %i.lt, i64 12
  %i.lv = load i32, ptr %i.lu, align 2
  store i32 %i.lv, ptr %.sroa.sel.sroa.sel401.v.sroa.sel.v.sroa.sel, align 4
  br label %.loopexit35.i381

.loopexit35.i381:                                 ; preds = %.preheader.i372, %bb.p
  br i1 %or.cond.i383, label %backup2x8.exit390, label %bb.q

bb.q:                                             ; preds = %.loopexit35.i381
  %.sroa.sel.sroa.sel398.v.sroa.sel.v.sroa.sel.v = select i1 %.not346, i64 128, i64 32
  %.sroa.sel.sroa.sel398.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel398.v.sroa.sel.v.sroa.sel.v ; 2 uses
  %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not346, i64 160, i64 64
  %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v ; 2 uses
  %.pre504 = load i64, ptr %i.aj, align 8, !tbaa !97 ; 2 uses
  %i.lw = and i64 %.pre504, 1
  %.not.i34.i388 = icmp eq i64 %i.lw, 0
  call void @llvm.assume(i1 %.not.i34.i388)
  %i.lx = ashr exact i64 %.pre504, 1              ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i385 = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i387.1, %bb.r ] ; 4 uses
  %.138.i386 = phi i64 [ 0, %bb.q ], [ %i.mn, %bb.r ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.sroa.sel398.v.sroa.sel.v.sroa.sel, i64 %indvars.iv.i385
  %i.lz = add i64 %i.by, %.138.i386               ; 2 uses
  %i.ma = getelementptr inbounds [2 x i8], ptr %.sroa.2.0, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 2
  store i32 %i.mb, ptr %i.ly, align 8
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %indvars.iv.i385
  %i.md = getelementptr inbounds [2 x i8], ptr %.sroa.7.0, i64 %i.lz
  %i.me = load i32, ptr %i.md, align 2
  store i32 %i.me, ptr %i.mc, align 8
  %indvars.iv.next.i387 = or disjoint i64 %indvars.iv.i385, 1 ; 2 uses
  %i.mf = add nsw i64 %i.lx, %.138.i386           ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.sroa.sel398.v.sroa.sel.v.sroa.sel, i64 %indvars.iv.next.i387
  %i.mh = add i64 %i.by, %i.mf                    ; 2 uses
  %i.mi = getelementptr inbounds [2 x i8], ptr %.sroa.2.0, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 2
  store i32 %i.mj, ptr %i.mg, align 4
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %indvars.iv.next.i387
  %i.ml = getelementptr inbounds [2 x i8], ptr %.sroa.7.0, i64 %i.mh
  %i.mm = load i32, ptr %i.ml, align 2
  store i32 %i.mm, ptr %i.mk, align 4
  %indvars.iv.next.i387.1 = add nuw nsw i64 %indvars.iv.i385, 2 ; 2 uses
  %i.mn = add nsw i64 %i.lx, %i.mf
  %exitcond.not.i389.1 = icmp eq i64 %indvars.iv.next.i387.1, %wide.trip.count.i
  br i1 %exitcond.not.i389.1, label %backup2x8.exit390, label %bb.r

backup2x8.exit390:                                ; preds = %bb.r, %.loopexit35.i381, %backup2x8.exit
  br i1 %or.cond3, label %bb.s, label %bb.t

bb.s:                                             ; preds = %backup2x8.exit390
  %i.mo = load ptr, ptr %i.bz, align 8, !tbaa !115
  %i.mp = load i64, ptr %i.ag, align 16, !tbaa !97
  %i.mq = load i32, ptr %i.ca, align 4, !tbaa !116
  %i.mr = call i32 %i.mo(ptr noundef %.sroa.0.0392436, i64 noundef %i.mp, ptr noundef nonnull %i.b, i32 noundef %i.mq) #5
  br label %bb.t

bb.t:                                             ; preds = %backup2x8.exit390, %bb.s
  %.3314 = phi i32 [ %i.mr, %bb.s ], [ %.2313442, %backup2x8.exit390 ] ; 3 uses
  br i1 %i.ab, label %._crit_edge505, label %bb.u

._crit_edge505:                                   ; preds = %bb.t
  %.pre506 = load ptr, ptr %i.fr, align 8, !tbaa !101
  br label %bb.ad

bb.u:                                             ; preds = %bb.t
  br i1 %or.cond357, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.ms = shl i64 %indvars.iv474, 2
  %i.mt = and i64 %i.ms, 4294967288
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.mu = load ptr, ptr %i.ch, align 8, !tbaa !101
  %i.mv = getelementptr [2 x i8], ptr %i.mu, i64 %i.cs
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.mw = load ptr, ptr %i.cp, align 16, !tbaa !101
  %i.mx = getelementptr [2 x i8], ptr %i.mw, i64 %i.cv
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink = phi ptr [ %i.mx, %bb.x ], [ %i.mv, %bb.w ]
  %i.my = getelementptr [2 x i8], ptr %.sink, i64 %i.mt
  %i.mz = getelementptr inbounds i8, ptr %.sroa.0.0392436, i64 %.idx349
  br label %bb.ae

bb.z:                                             ; preds = %bb.u
  %.pre507 = load ptr, ptr %i.fr, align 8, !tbaa !101 ; 2 uses
  br i1 %or.cond359, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.na = shl i64 %indvars.iv474, 2
  %i.nb = and i64 %i.na, 4294967288               ; 3 uses
  %i.nc = getelementptr [2 x i8], ptr %.pre507, i64 %i.cd
  %i.nd = getelementptr [2 x i8], ptr %i.nc, i64 %i.nb ; 2 uses
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ne = load ptr, ptr %i.ch, align 8, !tbaa !101
  %i.nf = getelementptr [2 x i8], ptr %i.ne, i64 %i.cg
  %i.ng = getelementptr [2 x i8], ptr %i.nf, i64 %i.nb
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.nh = load ptr, ptr %i.cp, align 16, !tbaa !101
  %i.ni = getelementptr [2 x i8], ptr %i.nh, i64 %i.co
  %i.nj = getelementptr [2 x i8], ptr %i.ni, i64 %i.nb
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge505, %bb.z
  %i.nk = phi ptr [ %.pre506, %._crit_edge505 ], [ %.pre507, %bb.z ]
  %i.nl = shl i64 %indvars.iv474, 2
  %i.nm = and i64 %i.nl, 4294967288
  %i.nn = getelementptr [2 x i8], ptr %i.nk, i64 %i.cw
  %i.no = getelementptr [2 x i8], ptr %i.nn, i64 %i.nm
  %i.np = getelementptr inbounds i8, ptr %.sroa.0.0392436, i64 %.idx349
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y
  %.1308 = phi ptr [ %i.my, %bb.y ], [ %i.no, %bb.ad ], [ %i.nd, %bb.ab ], [ %i.nd, %bb.ac ] ; 2 uses
  %.0304 = phi ptr [ %i.mz, %bb.y ], [ %i.np, %bb.ad ], [ %i.ng, %bb.ab ], [ %i.nj, %bb.ac ] ; 2 uses
  br i1 %i.hx, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.nq = load i32, ptr %i.b, align 4, !tbaa !96  ; 2 uses
  %.not.i391 = icmp eq i32 %i.nq, 0
  br i1 %.not.i391, label %adjust_strength.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.nr = lshr i32 %i.nq, 6                       ; 2 uses
  %.not8.i = icmp eq i32 %i.nr, 0
  br i1 %.not8.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ns = call range(i32 6, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 67108864) %i.nr, i1 true)
  %i.nt = xor i32 %i.ns, 31
  %i.nu = call i32 @llvm.umin.i32(i32 %i.nt, i32 12)
  %i.nv = add nuw nsw i32 %i.nu, 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.nw = phi i32 [ %i.nv, %bb.ah ], [ 4, %bb.ag ]
  %i.nx = mul nsw i32 %i.nw, %i.hh
  %i.ny = add nsw i32 %i.nx, 8
  %i.nz = ashr i32 %i.ny, 4
  br label %adjust_strength.exit

adjust_strength.exit:                             ; preds = %bb.af, %bb.ai
  %.0.i = phi i32 [ %i.nz, %bb.ai ], [ 0, %bb.af ] ; 2 uses
  %i.oa = icmp ne i32 %.0.i, 0
  %or.cond5 = select i1 %i.oa, i1 true, i1 %.not350
  br i1 %or.cond5, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %adjust_strength.exit
  %i.ob = load ptr, ptr %i.cx, align 8, !tbaa !117
  %i.oc = load i64, ptr %i.ag, align 16, !tbaa !97
  %i.od = zext nneg i32 %.2326439 to i64
  %i.oe = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %i.od
  %i.of = load i32, ptr %i.ca, align 4, !tbaa !116
  call void %i.ob(ptr noundef %.sroa.0.0392436, i64 noundef %i.oc, ptr noundef nonnull %i.oe, ptr noundef %.1308, ptr noundef %.0304, i32 noundef %.0.i, i32 noundef %i.hl, i32 noundef %.3314, i32 noundef %i.p, i32 noundef %spec.select354, i32 noundef %i.of) #5
  br label %bb.am

bb.ak:                                            ; preds = %bb.ae
  br i1 %.not350, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.og = load ptr, ptr %i.cx, align 8, !tbaa !117
  %i.oh = load i64, ptr %i.ag, align 16, !tbaa !97
  %i.oi = zext nneg i32 %.2326439 to i64
  %i.oj = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %i.oi
  %i.ok = load i32, ptr %i.ca, align 4, !tbaa !116
  call void %i.og(ptr noundef %.sroa.0.0392436, i64 noundef %i.oh, ptr noundef nonnull %i.oj, ptr noundef %.1308, ptr noundef %.0304, i32 noundef 0, i32 noundef %i.hl, i32 noundef 0, i32 noundef %i.p, i32 noundef %spec.select354, i32 noundef %i.ok) #5
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %adjust_strength.exit, %bb.ak, %bb.al
  br i1 %.not340, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 %.not.i365.not)
  br i1 %i.hy, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ol = sext i32 %.3314 to i64
  %i.om = getelementptr inbounds i8, ptr %i.w, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !105
  %i.oo = zext i8 %i.on to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.op = phi i32 [ %i.oo, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %i.oq = zext nneg i32 %.2326439 to i64
  %i.or = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %i.oq ; 2 uses
  %i.os = shl nsw i32 %i.ic, 2
  %i.ot = lshr exact i32 %i.os, %i.t
  %i.ou = zext nneg i32 %i.ot to i64              ; 8 uses
  br i1 %i.ab, label %bb.ba, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %or.cond357, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ov = load ptr, ptr %i.dq, align 16, !tbaa !101
  %i.ow = getelementptr [2 x i8], ptr %i.ov, i64 %i.dg
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.ox = load ptr, ptr %i.dr, align 8, !tbaa !101
  %i.oy = getelementptr [2 x i8], ptr %i.ox, i64 %i.dh
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn523 = phi ptr [ %i.ow, %bb.as ], [ %i.oy, %bb.at ]
  %.2309 = getelementptr [2 x i8], ptr %.pn523, i64 %i.ou
  %i.oz = getelementptr inbounds [2 x i8], ptr %.sroa.2.0, i64 %i.dj
  br label %bb.bb

bb.av:                                            ; preds = %bb.aq
  br i1 %or.cond359, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pa = load ptr, ptr %i.fs, align 8, !tbaa !101
  %i.pb = getelementptr [2 x i8], ptr %i.pa, i64 %i.dd
  %i.pc = getelementptr [2 x i8], ptr %i.pb, i64 %i.ou
  br i1 %.not, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.pd = load ptr, ptr %i.do, align 16, !tbaa !101
  %i.pe = getelementptr [2 x i8], ptr %i.pd, i64 %i.de
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.pf = load ptr, ptr %i.dp, align 8, !tbaa !101
  %i.pg = getelementptr [2 x i8], ptr %i.pf, i64 %i.df
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn = phi ptr [ %i.pe, %bb.ax ], [ %i.pg, %bb.ay ]
  %.1305 = getelementptr [2 x i8], ptr %.pn, i64 %i.ou
  br label %bb.bb

bb.ba:                                            ; preds = %bb.av, %bb.ap
  %i.ph = load ptr, ptr %i.ft, align 8, !tbaa !101
  %i.pi = getelementptr [2 x i8], ptr %i.ph, i64 %i.dk
  %i.pj = getelementptr [2 x i8], ptr %i.pi, i64 %i.ou
  %i.pk = getelementptr inbounds [2 x i8], ptr %.sroa.2.0, i64 %i.dj
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %bb.au
  %.3310 = phi ptr [ %.2309, %bb.au ], [ %i.pj, %bb.ba ], [ %i.pc, %bb.az ]
  %.2306 = phi ptr [ %i.oz, %bb.au ], [ %i.pk, %bb.ba ], [ %.1305, %bb.az ]
  %i.pl = load ptr, ptr %i.cz, align 8, !tbaa !117
  %i.pm = load i64, ptr %i.aj, align 8, !tbaa !97
  %i.pn = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.po = load i32, ptr %i.ca, align 4, !tbaa !116
  call void %i.pl(ptr noundef %.sroa.2.0, i64 noundef %i.pm, ptr noundef nonnull %i.pn, ptr noundef %.3310, ptr noundef %.2306, i32 noundef %i.hn, i32 noundef %i.hr, i32 noundef %i.op, i32 noundef %i.da, i32 noundef %spec.select354, i32 noundef %i.po) #5
  br i1 %i.ab, label %bb.bm, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  br i1 %or.cond357, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %or.cond359, label %bb.bm, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pp = load ptr, ptr %i.fu, align 8, !tbaa !101
  %i.pq = getelementptr [2 x i8], ptr %i.pp, i64 %i.dd
  %i.pr = getelementptr [2 x i8], ptr %i.pq, i64 %i.ou
  br i1 %.not, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ps = load ptr, ptr %i.ds, align 8, !tbaa !101
  %i.pt = getelementptr [2 x i8], ptr %i.ps, i64 %i.de
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.pu = load ptr, ptr %i.dt, align 16, !tbaa !101
  %i.pv = getelementptr [2 x i8], ptr %i.pu, i64 %i.df
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn.1 = phi ptr [ %i.pt, %bb.bf ], [ %i.pv, %bb.bg ]
  %.1305.1 = getelementptr [2 x i8], ptr %.pn.1, i64 %i.ou
  br label %.loopexit.loopexit

bb.bi:                                            ; preds = %bb.bc
  br i1 %.not, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.pw = load ptr, ptr %i.du, align 8, !tbaa !101
  %i.px = getelementptr [2 x i8], ptr %i.pw, i64 %i.dg
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.py = load ptr, ptr %i.dv, align 16, !tbaa !101
  %i.pz = getelementptr [2 x i8], ptr %i.py, i64 %i.dh
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn524 = phi ptr [ %i.px, %bb.bj ], [ %i.pz, %bb.bk ]
  %.2309.1 = getelementptr [2 x i8], ptr %.pn524, i64 %i.ou
  %i.qa = getelementptr inbounds [2 x i8], ptr %.sroa.7.0, i64 %i.dj
  br label %.loopexit.loopexit

bb.bm:                                            ; preds = %bb.bd, %bb.bb
  %i.qb = load ptr, ptr %i.fv, align 8, !tbaa !101
  %i.qc = getelementptr [2 x i8], ptr %i.qb, i64 %i.dk
  %i.qd = getelementptr [2 x i8], ptr %i.qc, i64 %i.ou
  %i.qe = getelementptr inbounds [2 x i8], ptr %.sroa.7.0, i64 %i.dj
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.bm, %bb.bl, %bb.bh
  %.3310.1 = phi ptr [ %.2309.1, %bb.bl ], [ %i.qd, %bb.bm ], [ %i.pr, %bb.bh ]
  %.2306.1 = phi ptr [ %i.qa, %bb.bl ], [ %i.qe, %bb.bm ], [ %.1305.1, %bb.bh ]
  %i.qf = load ptr, ptr %i.cz, align 8, !tbaa !117
  %i.qg = load i64, ptr %i.aj, align 8, !tbaa !97
  %i.qh = getelementptr inbounds nuw i8, ptr %i.or, i64 64
  %i.qi = load i32, ptr %i.ca, align 4, !tbaa !116
  call void %i.qf(ptr noundef %.sroa.7.0, i64 noundef %i.qg, ptr noundef nonnull %i.qh, ptr noundef %.3310.1, ptr noundef %.2306.1, i32 noundef %i.hn, i32 noundef %i.hr, i32 noundef %i.op, i32 noundef %i.da, i32 noundef %spec.select354, i32 noundef %i.qi) #5
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.am
  %i.qj = xor i32 %.2326439, 1
  %.pre508 = load i32, ptr %i.bt, align 16, !tbaa !106
  br label %bb.bn

bb.bn:                                            ; preds = %bb.l, %.loopexit
  %i.qk = phi i32 [ %.pre508, %.loopexit ], [ %i.hz, %bb.l ] ; 2 uses
  %.3327 = phi i32 [ %i.qj, %.loopexit ], [ %.2326439, %bb.l ] ; 2 uses
  %.2321 = phi i32 [ %i.hf, %.loopexit ], [ 0, %bb.l ] ; 2 uses
  %.4315 = phi i32 [ %.3314, %.loopexit ], [ %.2313442, %bb.l ] ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.0.0392436, i64 16
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.2.0, i64 %i.bx
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0, i64 %i.bx
  %i.qo = or i32 %spec.select354, 1               ; 2 uses
  %i.qp = call noundef i32 @llvm.smin.i32(i32 %i.ht, i32 %i.qk)
  %i.qq = icmp sgt i32 %i.qp, %i.ia
  br i1 %i.qq, label %bb.l, label %.loopexit434

.loopexit434:                                     ; preds = %bb.bn, %bb.k, %._crit_edge500, %bb.j
  %.4328 = phi i32 [ %.1325447, %bb.j ], [ %.1325447, %bb.k ], [ %.1325447, %._crit_edge500 ], [ %.3327, %bb.bn ] ; 2 uses
  %.3322 = phi i32 [ 0, %bb.j ], [ 0, %bb.k ], [ %.0319454, %._crit_edge500 ], [ %.2321, %bb.bn ]
  %.5316 = phi i32 [ %.1312456, %bb.j ], [ %.1312456, %bb.k ], [ %.1312456, %._crit_edge500 ], [ %.4315, %bb.bn ] ; 2 uses
  %.5 = phi i32 [ %.2457, %bb.j ], [ %.2457, %bb.k ], [ %.2457, %._crit_edge500 ], [ %i.qo, %bb.bn ]
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0.0452, i64 128
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6.0450, i64 %i.dm
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.10.0448, i64 %i.dm
  %i.qu = add nuw nsw i32 %.0318455, 1            ; 2 uses
  %i.qv = or i32 %.5, 1                           ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 16
  %exitcond.not = icmp eq i32 %i.qu, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS12Dav1dContext", !8, i64 0}
!10 = !{!"p1 _ZTS17Dav1dFrameContext", !8, i64 0}
!11 = !{!"p1 _ZTS14Dav1dTileState", !8, i64 0}
!12 = !{!"BlockContext", !4, i64 0, !4, i64 32, !4, i64 64, !4, i64 128, !4, i64 160, !4, i64 192, !4, i64 224, !4, i64 256, !4, i64 288, !4, i64 352, !4, i64 416, !4, i64 448, !4, i64 480, !4, i64 512, !4, i64 544, !4, i64 560, !4, i64 592}
!13 = !{!"p1 _ZTS12BlockContext", !8, i64 0}
!14 = !{!"p1 _ZTS12refmvs_frame", !8, i64 0}
!15 = !{!"p1 _ZTS21refmvs_temporal_block", !8, i64 0}
!16 = !{!"", !5, i64 0, !5, i64 4}
!17 = !{!"refmvs_tile", !14, i64 0, !4, i64 8, !15, i64 304, !16, i64 312, !16, i64 320}
!18 = !{!"Dav1dWarpedMotionParams", !5, i64 0, !4, i64 4, !4, i64 28}
!19 = !{!"p1 _ZTS9Av1Filter", !8, i64 0}
!20 = !{!"p1 omnipotent char", !8, i64 0}
!21 = !{!"", !5, i64 0}
!22 = !{!"long", !4, i64 0}
!23 = !{!"thread_data", !22, i64 0, !4, i64 8, !4, i64 56, !5, i64 96}
!24 = !{!"p1 _ZTS14TaskThreadData", !8, i64 0}
!25 = !{!"p1 _ZTS19FrameTileThreadData", !8, i64 0}
!26 = !{!"", !23, i64 0, !24, i64 104, !25, i64 112, !5, i64 120, !5, i64 124}
!27 = !{!"Dav1dTaskContext", !9, i64 0, !10, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !12, i64 32, !13, i64 656, !17, i64 664, !4, i64 1024, !4, i64 5120, !4, i64 8192, !4, i64 8256, !18, i64 258496, !19, i64 258536, !5, i64 258544, !20, i64 258552, !5, i64 258560, !21, i64 258564, !26, i64 258568}
!28 = !{!27, !10, i64 8}
!29 = !{!"p1 _ZTS8Dav1dRef", !8, i64 0}
!30 = !{!"p1 _ZTS19Dav1dSequenceHeader", !8, i64 0}
!31 = !{!"p1 _ZTS16Dav1dFrameHeader", !8, i64 0}
!32 = !{!"Dav1dPictureParameters", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!33 = !{!"Dav1dUserData", !20, i64 0, !29, i64 8}
!34 = !{!"Dav1dDataProps", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !33, i64 32}
!35 = !{!"p1 _ZTS22Dav1dContentLightLevel", !8, i64 0}
!36 = !{!"p1 _ZTS21Dav1dMasteringDisplay", !8, i64 0}
!37 = !{!"p1 _ZTS12Dav1dITUTT35", !8, i64 0}
!38 = !{!"Dav1dPicture", !30, i64 0, !31, i64 8, !4, i64 16, !4, i64 40, !32, i64 56, !34, i64 72, !35, i64 120, !36, i64 128, !37, i64 136, !22, i64 144, !4, i64 152, !29, i64 184, !29, i64 192, !29, i64 200, !29, i64 208, !29, i64 216, !4, i64 224, !29, i64 256, !8, i64 264}
!39 = !{!"Dav1dThreadPicture", !38, i64 0, !5, i64 272, !5, i64 276, !5, i64 280, !8, i64 288}
!40 = !{!"CdfThreadContext", !29, i64 0, !4, i64 8, !8, i64 16}
!41 = !{!"p1 _ZTS14Dav1dTileGroup", !8, i64 0}
!42 = !{!"p1 _ZTS15Dav1dDSPContext", !8, i64 0}
!43 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104}
!44 = !{!"any p2 pointer", !8, i64 0}
!45 = !{!"p2 _ZTS21refmvs_temporal_block", !44, i64 0}
!46 = !{!"p1 _ZTS12refmvs_block", !8, i64 0}
!47 = !{!"refmvs_frame", !31, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !4, i64 32, !4, i64 39, !4, i64 46, !4, i64 53, !4, i64 56, !4, i64 59, !5, i64 80, !5, i64 84, !15, i64 88, !45, i64 96, !15, i64 104, !22, i64 112, !46, i64 120, !5, i64 128, !5, i64 132}
!48 = !{!"p1 _ZTS8Av1Block", !8, i64 0}
!49 = !{!"p1 short", !8, i64 0}
!50 = !{!"p1 int", !8, i64 0}
!51 = !{!"", !4, i64 0, !4, i64 8, !4, i64 12, !8, i64 16, !8, i64 24, !48, i64 32, !49, i64 40, !49, i64 48, !20, i64 56, !50, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !50, i64 96}
!52 = !{!"p1 _ZTS14Av1Restoration", !8, i64 0}
!53 = !{!"Av1FilterLUT", !4, i64 0, !4, i64 64, !4, i64 128}
!54 = !{!"", !20, i64 0, !19, i64 8, !52, i64 16, !5, i64 24, !5, i64 28, !4, i64 32, !5, i64 40, !4, i64 44, !5, i64 52, !53, i64 64, !4, i64 208, !5, i64 720, !4, i64 728, !20, i64 744, !20, i64 752, !4, i64 760, !4, i64 808, !4, i64 832, !20, i64 856, !5, i64 864, !5, i64 868, !4, i64 872, !4, i64 896, !5, i64 920}
!55 = !{!"p1 _ZTS9Dav1dTask", !8, i64 0}
!56 = !{!"Dav1dTask", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !55, i64 24}
!57 = !{!"", !4, i64 0, !4, i64 8, !55, i64 48, !55, i64 56}
!58 = !{!"", !4, i64 0, !4, i64 40, !24, i64 88, !55, i64 96, !4, i64 104, !56, i64 120, !5, i64 152, !5, i64 156, !4, i64 160, !4, i64 164, !5, i64 172, !5, i64 176, !4, i64 180, !4, i64 184, !55, i64 192, !55, i64 200, !55, i64 208, !57, i64 216}
!59 = !{!"FrameTileThreadData", !50, i64 0, !5, i64 8}
!60 = !{!"Dav1dFrameContext", !29, i64 0, !30, i64 8, !29, i64 16, !31, i64 24, !4, i64 32, !38, i64 2104, !39, i64 2376, !29, i64 2672, !15, i64 2680, !4, i64 2688, !4, i64 2744, !29, i64 2800, !29, i64 2808, !20, i64 2816, !20, i64 2824, !4, i64 2832, !4, i64 2839, !4, i64 2888, !40, i64 2896, !40, i64 2920, !41, i64 2944, !5, i64 2952, !5, i64 2956, !4, i64 2960, !4, i64 3072, !4, i64 3080, !9, i64 3088, !11, i64 3096, !5, i64 3104, !42, i64 3112, !43, i64 3120, !5, i64 3232, !4, i64 3240, !22, i64 3264, !5, i64 3272, !5, i64 3276, !5, i64 3280, !5, i64 3284, !5, i64 3288, !5, i64 3292, !5, i64 3296, !5, i64 3300, !5, i64 3304, !5, i64 3308, !4, i64 3312, !4, i64 3408, !13, i64 3864, !5, i64 3872, !47, i64 3880, !4, i64 4016, !5, i64 4068, !51, i64 4072, !54, i64 4176, !58, i64 5104, !59, i64 5384}
!61 = !{!60, !5, i64 2172}
!62 = !{!60, !5, i64 3288}
!63 = !{!60, !31, i64 24}
!64 = !{!"Dav1dFilmGrainData", !5, i64 0, !5, i64 4, !4, i64 8, !5, i64 36, !4, i64 40, !4, i64 48, !5, i64 88, !5, i64 92, !4, i64 96, !4, i64 120, !22, i64 176, !5, i64 184, !4, i64 188, !4, i64 196, !4, i64 204, !5, i64 212, !5, i64 216}
!65 = !{!"", !64, i64 0, !4, i64 224, !4, i64 225}
!66 = !{!"", !4, i64 0, !4, i64 1}
!67 = !{!"short", !4, i64 0}
!68 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 140, !67, i64 270}
!69 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7, !4, i64 8, !4, i64 9}
!70 = !{!"Dav1dSegmentationDataSet", !4, i64 0, !4, i64 80, !4, i64 81}
!71 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !70, i64 4, !4, i64 86, !4, i64 94}
!72 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!73 = !{!"", !66, i64 0, !72, i64 2}
!74 = !{!"Dav1dLoopfilterModeRefDeltas", !4, i64 0, !4, i64 2}
!75 = !{!"", !4, i64 0, !4, i64 2, !4, i64 3, !4, i64 4, !4, i64 5, !74, i64 6, !4, i64 16}
!76 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 10}
!77 = !{!"", !4, i64 0, !4, i64 12}
!78 = !{!"Dav1dFrameHeader", !65, i64 0, !5, i64 232, !4, i64 236, !5, i64 244, !4, i64 248, !4, i64 249, !4, i64 250, !4, i64 251, !4, i64 252, !5, i64 256, !5, i64 260, !4, i64 264, !4, i64 265, !4, i64 266, !4, i64 267, !4, i64 268, !4, i64 269, !4, i64 270, !4, i64 271, !4, i64 272, !4, i64 276, !4, i64 404, !5, i64 408, !5, i64 412, !66, i64 416, !4, i64 418, !4, i64 419, !4, i64 420, !4, i64 421, !4, i64 428, !5, i64 432, !4, i64 436, !4, i64 437, !4, i64 438, !68, i64 440, !69, i64 712, !71, i64 722, !73, i64 824, !4, i64 829, !75, i64 830, !76, i64 847, !77, i64 868, !5, i64 884, !4, i64 888, !4, i64 889, !4, i64 890, !4, i64 891, !4, i64 893, !4, i64 894, !4, i64 896}
!79 = !{!78, !4, i64 847}
!80 = !{!60, !5, i64 2168}
!81 = !{!60, !9, i64 3088}
!82 = !{!"p1 _ZTS16Dav1dTaskContext", !8, i64 0}
!83 = !{!"p1 _ZTS12Dav1dMemPool", !8, i64 0}
!84 = !{!"Dav1dData", !20, i64 0, !22, i64 8, !29, i64 16, !34, i64 24}
!85 = !{!"p1 _ZTS18Dav1dThreadPicture", !8, i64 0}
!86 = !{!"", !85, i64 0, !5, i64 8}
!87 = !{!"p1 _ZTS12Dav1dPicture", !8, i64 0}
!88 = !{!"", !5, i64 0, !5, i64 4, !4, i64 8, !87, i64 56, !87, i64 64, !5, i64 72, !4, i64 76, !4, i64 128}
!89 = !{!"TaskThreadData", !4, i64 0, !4, i64 40, !4, i64 88, !5, i64 92, !4, i64 96, !4, i64 100, !88, i64 128, !5, i64 48960}
!90 = !{!"Dav1dPalDSPContext", !8, i64 0}
!91 = !{!"Dav1dRefmvsDSPContext", !8, i64 0, !8, i64 8, !8, i64 16}
!92 = !{!"Dav1dPicAllocator", !8, i64 0, !8, i64 8, !8, i64 16}
!93 = !{!"Dav1dLogger", !8, i64 0, !8, i64 8}
!94 = !{!"Dav1dContext", !10, i64 0, !5, i64 8, !82, i64 16, !5, i64 24, !41, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !83, i64 56, !29, i64 64, !30, i64 72, !83, i64 80, !29, i64 88, !31, i64 96, !29, i64 104, !35, i64 112, !29, i64 120, !36, i64 128, !29, i64 136, !37, i64 144, !5, i64 152, !84, i64 160, !39, i64 232, !39, i64 528, !4, i64 824, !8, i64 832, !86, i64 840, !89, i64 896, !83, i64 49920, !83, i64 49928, !4, i64 49936, !83, i64 52496, !4, i64 52504, !4, i64 52696, !90, i64 62800, !91, i64 62808, !92, i64 62832, !5, i64 62856, !5, i64 62860, !5, i64 62864, !5, i64 62868, !5, i64 62872, !5, i64 62876, !5, i64 62880, !5, i64 62884, !5, i64 62888, !5, i64 62892, !5, i64 62896, !5, i64 62900, !5, i64 62904, !34, i64 62912, !5, i64 62960, !93, i64 62968, !83, i64 62984, !83, i64 62992}
!95 = !{!94, !5, i64 24}
!96 = !{!5, !5, i64 0}
!97 = !{!22, !22, i64 0}
!98 = !{!60, !30, i64 8}
!99 = !{!"Dav1dSequenceHeader", !4, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !4, i64 32, !4, i64 33, !4, i64 34, !4, i64 36, !4, i64 356, !4, i64 357, !4, i64 358, !5, i64 360, !5, i64 364, !4, i64 368, !5, i64 372, !4, i64 376, !4, i64 377, !5, i64 380, !4, i64 384, !4, i64 385, !4, i64 386, !4, i64 387, !4, i64 388, !4, i64 389, !4, i64 390, !4, i64 391, !4, i64 392, !4, i64 393, !4, i64 394, !4, i64 395, !4, i64 396, !4, i64 397, !4, i64 398, !4, i64 399, !4, i64 400, !4, i64 401, !5, i64 404, !5, i64 408, !4, i64 412, !4, i64 413, !4, i64 414, !4, i64 415, !4, i64 416, !4, i64 417, !4, i64 418, !4, i64 419, !4, i64 420, !4, i64 421, !4, i64 424}
!100 = !{!99, !4, i64 392}
!101 = !{!49, !49, i64 0}
!102 = !{!60, !42, i64 3112}
!103 = !{!27, !5, i64 258544}
!104 = !{!60, !5, i64 3284}
!105 = !{!4, !4, i64 0}
!106 = !{!60, !5, i64 3280}
!107 = !{!"Dav1dFilmGrainDSPContext", !8, i64 0, !4, i64 8, !8, i64 32, !4, i64 40}
!108 = !{!"Dav1dIntraPredDSPContext", !4, i64 0, !4, i64 112, !4, i64 136, !8, i64 184}
!109 = !{!"Dav1dMCDSPContext", !4, i64 0, !4, i64 80, !4, i64 160, !4, i64 240, !8, i64 320, !8, i64 328, !8, i64 336, !4, i64 344, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416}
!110 = !{!"Dav1dInvTxfmDSPContext", !4, i64 0}
!111 = !{!"Dav1dLoopFilterDSPContext", !4, i64 0}
!112 = !{!"Dav1dCdefDSPContext", !8, i64 0, !4, i64 8}
!113 = !{!"Dav1dLoopRestorationDSPContext", !4, i64 0, !4, i64 16}
!114 = !{!"Dav1dDSPContext", !107, i64 0, !108, i64 64, !109, i64 256, !110, i64 680, !111, i64 3264, !112, i64 3296, !113, i64 3328}
!115 = !{!114, !8, i64 3296}
!116 = !{!60, !5, i64 4068}
!117 = !{!8, !8, i64 0}
end_hunk_0
