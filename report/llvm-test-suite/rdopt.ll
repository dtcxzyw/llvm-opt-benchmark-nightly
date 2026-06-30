inline.NumInlined: 29
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 171
loop-unroll.NumUnrolled: 171
begin_hunk_0_@update_offset_params:bb.a
  %i.ey = trunc i32 %i.ex to i16
  store i16 %i.ey, ptr %i.er, align 2, !tbaa !68
  %i.ez = add nsw i32 %i.am, %i.au
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.fc = sext i32 %i.ez to i64
  %i.fd = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.fc ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !68
  %i.ff = trunc i32 %i.fb to i16
  %i.fg = add i16 %i.fe, %i.ff
  %i.fh = tail call i16 @llvm.smax.i16(i16 %i.fg, i16 0)
  %i.fi = zext nneg i16 %i.fh to i32
  %i.fj = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.fi, i32 %i.o)
  %i.fk = trunc i32 %i.fj to i16
  store i16 %i.fk, ptr %i.fd, align 2, !tbaa !68
  %i.fl = add nsw i32 %i.an, %i.au
  %i.fm = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !4
  %i.fo = sext i32 %i.fl to i64
  %i.fp = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.fo ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !68
  %i.fr = trunc i32 %i.fn to i16
  %i.fs = add i16 %i.fq, %i.fr
  %i.ft = tail call i16 @llvm.smax.i16(i16 %i.fs, i16 0)
  %i.fu = zext nneg i16 %i.ft to i32
  %i.fv = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.fu, i32 %i.o)
  %i.fw = trunc i32 %i.fv to i16
  store i16 %i.fw, ptr %i.fp, align 2, !tbaa !68
  %i.fx = add nsw i32 %i.ao, %i.au
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4
  %i.ga = sext i32 %i.fx to i64
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ga ; 2 uses
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !68
  %i.gd = trunc i32 %i.fz to i16
  %i.ge = add i16 %i.gc, %i.gd
  %i.gf = tail call i16 @llvm.smax.i16(i16 %i.ge, i16 0)
  %i.gg = zext nneg i16 %i.gf to i32
  %i.gh = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.gg, i32 %i.o)
  %i.gi = trunc i32 %i.gh to i16
  store i16 %i.gi, ptr %i.gb, align 2, !tbaa !68
  %i.gj = add nsw i32 %i.ap, %i.au
  %i.gk = getelementptr inbounds nuw i8, ptr %i.aw, i64 60
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4
  %i.gm = sext i32 %i.gj to i64
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.gm ; 2 uses
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !68
  %i.gp = trunc i32 %i.gl to i16
  %i.gq = add i16 %i.go, %i.gp
  %i.gr = tail call i16 @llvm.smax.i16(i16 %i.gq, i16 0)
  %i.gs = zext nneg i16 %i.gr to i32
  %i.gt = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.gs, i32 %i.o)
  %i.gu = trunc i32 %i.gt to i16
  store i16 %i.gu, ptr %i.gn, align 2, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !263

bb.d:                                             ; preds = %bb.c
  %i.gv = load ptr, ptr @input, align 8, !tbaa !16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 5660
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !222
  %.not67 = icmp eq i32 %i.gx, 0
  br i1 %.not67, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gy = load ptr, ptr @bestInterFAdjust4x4Cr, align 8
  %i.gz = load ptr, ptr @bestIntraFAdjust4x4Cr, align 8
  %i.ha = select i1 %spec.select, ptr %i.gy, ptr %i.gz ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 15548
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !26 ; 2 uses
  %i.hd = icmp sgt i32 %i.hc, 0
  br i1 %i.hd, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %bb.e
  %i.he = getelementptr inbounds nuw i8, ptr %i.g, i64 15544
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !38 ; 3 uses
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph73.split, label %.loopexit

.lr.ph73.split:                                   ; preds = %.lr.ph73
  %i.hh = zext i1 %spec.select to i64
  %i.hi = getelementptr inbounds nuw [20 x i8], ptr @AdaptRndCrPos, i64 %i.hh
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.hi, i64 %i.j
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !4
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr %i.t, i64 %i.hl ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hp = load ptr, ptr %i.ha, align 8, !tbaa !23
  %i.hq = load ptr, ptr %i.hm, align 8, !tbaa !66 ; 4 uses
  %i.hr = load ptr, ptr %i.ho, align 8, !tbaa !23
  %i.hs = load ptr, ptr %i.hn, align 8, !tbaa !66 ; 4 uses
  %wide.trip.count83 = zext nneg i32 %i.hc to i64
  %wide.trip.count = zext nneg i32 %i.hf to i64   ; 2 uses
  %i.ht = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %scevgep87 = getelementptr i8, ptr %i.hq, i64 %i.ht
  %scevgep90 = getelementptr i8, ptr %i.hs, i64 %i.ht
  %or.cond98.not = icmp eq i32 %i.hf, 4
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph73.split, %._crit_edge
  %indvars.iv80 = phi i64 [ 0, %.lr.ph73.split ], [ %indvars.iv.next81, %._crit_edge ] ; 5 uses
  %i.hu = shl i64 %indvars.iv80, 2
  %i.hv = and i64 %i.hu, 12                       ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv80
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !89 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv80
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !89 ; 2 uses
  br i1 %or.cond98.not, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ia = shl i64 %indvars.iv80, 3
  %i.ib = and i64 %i.ia, 24                       ; 4 uses
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.ib
  %scevgep89 = getelementptr i8, ptr %i.hs, i64 %i.ib
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.ib
  %scevgep = getelementptr i8, ptr %i.hq, i64 %i.ib
  %bound0 = icmp ult ptr %scevgep, %scevgep91
  %bound1 = icmp ult ptr %scevgep89, %scevgep88
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %wide.load = load <4 x i32>, ptr %i.hx, align 4, !tbaa !4
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %i.hv ; 2 uses
  %wide.load92 = load <4 x i16>, ptr %i.ic, align 2, !tbaa !68, !alias.scope !264, !noalias !267
  %i.id = trunc <4 x i32> %wide.load to <4 x i16>
  %i.ie = add <4 x i16> %wide.load92, %i.id
  %i.if = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ie, <4 x i16> zeroinitializer)
  %i.ig = zext nneg <4 x i16> %i.if to <4 x i32>
  %i.ih = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ig, <4 x i32> %broadcast.splat)
  %i.ii = trunc <4 x i32> %i.ih to <4 x i16>
  store <4 x i16> %i.ii, ptr %i.ic, align 2, !tbaa !68, !alias.scope !264, !noalias !267
  %wide.load93 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !4
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.hs, i64 %i.hv ; 2 uses
  %wide.load94 = load <4 x i16>, ptr %i.ij, align 2, !tbaa !68, !alias.scope !267
  %i.ik = trunc <4 x i32> %wide.load93 to <4 x i16>
  %i.il = add <4 x i16> %wide.load94, %i.ik
  %i.im = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.il, <4 x i16> zeroinitializer)
  %i.in = zext nneg <4 x i16> %i.im to <4 x i32>
  %i.io = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.in, <4 x i32> %broadcast.splat)
  %i.ip = trunc <4 x i32> %i.io to <4 x i16>
  store <4 x i16> %i.ip, ptr %i.ij, align 2, !tbaa !68, !alias.scope !267
  br label %._crit_edge

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %i.iq = and i64 %indvars.iv76, 3
  %i.ir = or disjoint i64 %i.iq, %i.hv            ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv76
  %i.it = load i32, ptr %i.is, align 4, !tbaa !4
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %i.ir ; 2 uses
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !68
  %i.iw = trunc i32 %i.it to i16
  %i.ix = add i16 %i.iv, %i.iw
  %i.iy = tail call i16 @llvm.smax.i16(i16 %i.ix, i16 0)
  %i.iz = zext nneg i16 %i.iy to i32
  %i.ja = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.iz, i32 %i.o)
  %i.jb = trunc i32 %i.ja to i16
  store i16 %i.jb, ptr %i.iu, align 2, !tbaa !68
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv76
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !4
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.hs, i64 %i.ir ; 2 uses
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !68
  %i.jg = trunc i32 %i.jd to i16
  %i.jh = add i16 %i.jf, %i.jg
  %i.ji = tail call i16 @llvm.smax.i16(i16 %i.jh, i16 0)
  %i.jj = zext nneg i16 %i.ji to i32
  %i.jk = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.jj, i32 %i.o)
  %i.jl = trunc i32 %i.jk to i16
  store i16 %i.jl, ptr %i.je, align 2, !tbaa !68
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count
  br i1 %exitcond79.not, label %._crit_edge, label %scalar.ph, !llvm.loop !269

._crit_edge:                                      ; preds = %scalar.ph, %vector.body
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %.loopexit, label %.lr.ph, !llvm.loop !270

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %.lr.ph73, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @SetRefAndMotionVectors(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !16   ; 7 uses
  %i.b = icmp eq i32 %1, 1                        ; 2 uses
  %i.c = add i32 %1, -1
  %or.cond3 = icmp ult i32 %i.c, 3
  %i.d = select i1 %or.cond3, i32 %1, i32 4
  %i.e = and i32 %0, -2                           ; 5 uses
  %i.f = shl i32 %0, 1
  %i.g = and i32 %i.f, 2                          ; 9 uses
  %i.h = load ptr, ptr @input, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = zext nneg i32 %i.d to i64                ; 7 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4    ; 3 uses
  %i.n = add nsw i32 %i.m, %i.e                   ; 4 uses
  %i.o = load i32, ptr %i.k, align 8, !tbaa !4    ; 4 uses
  %i.p = add i32 %i.o, %i.g                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !101
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [536 x i8], ptr %i.r, i64 %i.u ; 3 uses
  %i.w = icmp slt i32 %2, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = icmp sgt i32 %i.m, 0
  br i1 %i.x, label %.lr.ph238.preheader, label %.loopexit

.lr.ph238.preheader:                              ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.z = load i32, ptr %i.y, align 4, !tbaa !56
  %5 = xor i32 %i.g, -1
  %6 = or disjoint i32 %i.g, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = sext i32 %i.e to i64
  %i.ac = add nsw i64 %i.aa, %i.ab
  %i.ad = icmp sgt i32 %i.o, 0
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %._crit_edge235
  %indvars.iv255 = phi i64 [ %i.ac, %.lr.ph238.preheader ], [ %indvars.iv.next256, %._crit_edge235 ] ; 7 uses
  %i.ae = phi ptr [ %i.a, %.lr.ph238.preheader ], [ %i.dl, %._crit_edge235 ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !57 ; 4 uses
  %i.ah = add i32 %i.ag, %i.g                     ; 2 uses
  %.pre260.a = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 2 uses
  br i1 %i.ad, label %.lr.ph234, label %.lr.ph238.._crit_edge235_crit_edge

.lr.ph238.._crit_edge235_crit_edge:               ; preds = %.lr.ph238
  %.pre261.a = sext i32 %i.ah to i64
  br label %._crit_edge235

.lr.ph234:                                        ; preds = %.lr.ph238
  %i.ai = add i32 %i.ag, %i.p
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre260.a, i64 6496
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !141 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !142
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv255
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !144
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !142
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %indvars.iv255
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !144
  %i.as = sext i32 %i.ah to i64                   ; 2 uses
  %7 = shl nsw i64 %i.as, 3                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %7
  %8 = add i32 %6, %i.ag
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %8)
  %9 = add i32 %smax, %5
  %10 = sub i32 %9, %i.ag
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = add nuw nsw i64 %12, 8                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 -1, i64 %13, i1 false), !tbaa !147
  %scevgep252 = getelementptr i8, ptr %i.ar, i64 %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep252, i8 -1, i64 %13, i1 false), !tbaa !147
  br label %._crit_edge235

._crit_edge235:                                   ; preds = %.lr.ph238.._crit_edge235_crit_edge, %.lr.ph234
  %.pre-phi = phi i64 [ %.pre261.a, %.lr.ph238.._crit_edge235_crit_edge ], [ %i.as, %.lr.ph234 ]
  %i.at = getelementptr inbounds nuw i8, ptr %.pre260.a, i64 6488
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !135
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv255
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !45
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %.pre-phi
  %i.az = load ptr, ptr @input, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.j
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !4
  %i.bd = sext i32 %i.bc to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 -1, i64 %i.bd, i1 false)
  %i.be = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 6488
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !135
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !44
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv255
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !45
  %i.bl = load ptr, ptr @img, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 168
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !57
  %i.bo = add nsw i32 %i.bn, %i.g
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bp
  %i.br = load ptr, ptr @input, align 8, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.j
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !4
  %i.bv = sext i32 %i.bu to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 -1, i64 %i.bv, i1 false)
  %i.bw = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 6512
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !163
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !62
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %indvars.iv255
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !64
  %i.cc = load ptr, ptr @img, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 168
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !57
  %i.cf = add nsw i32 %i.ce, %i.g
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !66
  %i.cj = load ptr, ptr @input, align 8, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.j
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !4
  %i.cn = shl nsw i32 %i.cm, 1
  %i.co = sext i32 %i.cn to i64
  %i.cp = shl nsw i64 %i.co, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ci, i8 0, i64 %i.cp, i1 false)
  %i.cq = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 6512
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !163
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !62
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %indvars.iv255
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !64
  %i.cx = load ptr, ptr @img, align 8, !tbaa !16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 168
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !57
  %i.da = add nsw i32 %i.cz, %i.g
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !66
  %i.de = load ptr, ptr @input, align 8, !tbaa !16
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 136
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.j
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !4
  %i.di = shl nsw i32 %i.dh, 1
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.dd, i8 0, i64 %i.dk, i1 false)
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  %i.dl = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 172
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !56
  %i.do = add nsw i32 %i.dn, %i.n
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next256, %i.dp
  br i1 %i.dq, label %.lr.ph238, label %.loopexit, !llvm.loop !271

bb.c:                                             ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !41
  %i.dt = icmp eq i32 %i.ds, 1
  %i.du = icmp sgt i32 %i.m, 0                    ; 2 uses
  br i1 %i.dt, label %.preheader, label %.preheader215

.preheader215:                                    ; preds = %bb.c
  br i1 %i.du, label %.lr.ph219, label %.loopexit

.lr.ph219:                                        ; preds = %.preheader215
  %i.dv = trunc i32 %3 to i8                      ; 2 uses
  %i.dw = icmp sgt i32 %i.o, 0
  %i.dx = sext i32 %3 to i64                      ; 2 uses
  %i.dy = sext i32 %1 to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 432
  br i1 %i.dw, label %.lr.ph.us.preheader, label %.lr.ph219.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph219
  %i.ea = shl i32 %0, 1
  %i.eb = and i32 %i.ea, 2
  %i.ec = zext nneg i32 %i.eb to i64
  %14 = sext i32 %i.p to i64
  %i.ed = sext i32 %i.e to i64
  %i.ee = sext i32 %i.n to i64
  %.pre = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.pre258 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !57
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %i.ef = phi i32 [ %.pre258, %.lr.ph.us.preheader ], [ %i.fb, %._crit_edge.us ]
  %i.eg = phi ptr [ %.pre, %.lr.ph.us.preheader ], [ %i.fg, %._crit_edge.us ]
  %i.eh = phi ptr [ %i.a, %.lr.ph.us.preheader ], [ %i.ez, %._crit_edge.us ]
  %indvars.iv243 = phi i64 [ %i.ed, %.lr.ph.us.preheader ], [ %indvars.iv.next244, %._crit_edge.us ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 172
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !56
  %i.ek = sext i32 %i.ej to i64
  %i.el = add nsw i64 %indvars.iv243, %i.ek       ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 6488
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !135
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !44
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.el
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !45
  %i.er = add nsw i32 %i.ef, %i.g
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %i.eq, i64 %i.es
  %i.eu = load ptr, ptr @input, align 8, !tbaa !16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 136
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.j
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !4
  %i.ey = sext i32 %i.ex to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.et, i8 %i.dv, i64 %i.ey, i1 false)
  %i.ez = load ptr, ptr @img, align 8, !tbaa !16  ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 168
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !57 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 14384
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !55
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %indvars.iv243
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !58
  %i.fg = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 6512
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !163
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !62
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.el
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fn = load i32, ptr %i.dz, align 8, !tbaa !146
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [264 x i8], ptr %i.fm, i64 %i.fo
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.dx
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 6496
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !141
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !142
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.el
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !144
  %i.fw = sext i32 %i.fb to i64
  %.pre259 = load i64, ptr %i.fq, align 8, !tbaa !147
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us, %bb.d
  %indvars.iv = phi i64 [ %i.ec, %.lr.ph.us ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.fx = add nsw i64 %indvars.iv, %i.fw          ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !60
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !62
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.dx
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.dy
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !66 ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !68
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fx
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !66 ; 2 uses
  store i16 %i.gf, ptr %i.gh, align 2, !tbaa !68
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !68
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !68
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.fx
  store i64 %.pre259, ptr %i.gl, align 8, !tbaa !147
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %15 = icmp slt i64 %indvars.iv.next, %14
  br i1 %15, label %bb.d, label %._crit_edge.us, !llvm.loop !272

._crit_edge.us:                                   ; preds = %bb.d
  %indvars.iv.next244 = add nsw i64 %indvars.iv243, 1 ; 2 uses
  %i.gm = icmp slt i64 %indvars.iv.next244, %i.ee
  br i1 %i.gm, label %.lr.ph.us, label %.loopexit, !llvm.loop !273

.preheader:                                       ; preds = %bb.c
  br i1 %i.du, label %.lr.ph231, label %.loopexit

.lr.ph231:                                        ; preds = %.preheader
  %i.gn = icmp sgt i32 %i.o, 0
  %i.go = icmp eq i32 %1, 0
  %i.gp = getelementptr inbounds nuw i8, ptr %i.v, i64 480 ; 2 uses
  %i.gq = sext i32 %1 to i64                      ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.v, i64 432 ; 4 uses
  br i1 %i.gn, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph231
  %i.gs = shl i32 %0, 1
  %i.gt = and i32 %i.gs, 2
  %i.gu = zext nneg i32 %i.gt to i64
  %16 = sext i32 %i.p to i64
  %i.gv = sext i32 %i.e to i64
  %i.gw = sext i32 %i.n to i64
  br label %.lr.ph

.lr.ph219.split:                                  ; preds = %.lr.ph219, %.lr.ph219.split
  %.1203218 = phi i32 [ %i.hs, %.lr.ph219.split ], [ %i.e, %.lr.ph219 ] ; 2 uses
  %i.gx = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 172
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !56
  %i.ha = add nsw i32 %i.gz, %.1203218
  %i.hb = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 6488
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !135
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !44
  %i.hf = sext i32 %i.ha to i64
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hf
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !45
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gx, i64 168
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !57
  %i.hk = add nsw i32 %i.hj, %i.g
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds i8, ptr %i.hh, i64 %i.hl
  %i.hn = load ptr, ptr @input, align 8, !tbaa !16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 136
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.j
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !4
  %i.hr = sext i32 %i.hq to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hm, i8 %i.dv, i64 %i.hr, i1 false)
  %i.hs = add nsw i32 %.1203218, 1                ; 2 uses
  %i.ht = icmp slt i32 %i.hs, %i.n
  br i1 %i.ht, label %.lr.ph219.split, label %.loopexit, !llvm.loop !273

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv249 = phi i64 [ %i.gv, %.lr.ph.preheader ], [ %indvars.iv.next250, %._crit_edge ] ; 6 uses
  %.0230 = phi i32 [ %2, %.lr.ph.preheader ], [ %.2, %._crit_edge ]
  %.0193229 = phi i32 [ %3, %.lr.ph.preheader ], [ %.2195, %._crit_edge ]
  %.0196228 = phi i32 [ %4, %.lr.ph.preheader ], [ %.2198, %._crit_edge ]
  %i.hu = load ptr, ptr @img, align 8, !tbaa !16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 172
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !56
  %i.hx = sext i32 %i.hw to i64
  %i.hy = add nsw i64 %indvars.iv249, %i.hx       ; 18 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv246 = phi i64 [ %i.gu, %.lr.ph ], [ %indvars.iv.next247, %bb.p ] ; 6 uses
  %.1224 = phi i32 [ %.0230, %.lr.ph ], [ %.2, %bb.p ]
  %.1194223 = phi i32 [ %.0193229, %.lr.ph ], [ %.2195, %bb.p ]
  %.1197222 = phi i32 [ %.0196228, %.lr.ph ], [ %.2198, %bb.p ]
  %i.hz = load ptr, ptr @img, align 8, !tbaa !16  ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 168
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !57
  %i.ic = trunc nuw nsw i64 %indvars.iv246 to i32
  %i.id = add nsw i32 %i.ib, %i.ic                ; 5 uses
  br i1 %i.go, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ie = load ptr, ptr @direct_pdir, align 8, !tbaa !44
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.hy
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !45
  %i.ih = sext i32 %i.id to i64                   ; 3 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ig, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !46
  %i.ik = sext i8 %i.ij to i32
  %i.il = load ptr, ptr @direct_ref_idx, align 8, !tbaa !122 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !44
  %i.in = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.hy
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !45
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 %i.ih
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !46
  %i.ir = sext i8 %i.iq to i32
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !44
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.hy
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !45
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 %i.ih
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !46
  %i.iy = sext i8 %i.ix to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2198 = phi i32 [ %i.iy, %bb.f ], [ %.1197222, %bb.e ] ; 4 uses
  %.2195 = phi i32 [ %i.ir, %bb.f ], [ %.1194223, %bb.e ] ; 4 uses
  %.2 = phi i32 [ %i.ik, %bb.f ], [ %.1224, %bb.e ] ; 5 uses
  %i.iz = icmp eq i32 %.2, 2                      ; 2 uses
  switch i32 %.2, label %bb.j [
    i32 2, label %bb.h
    i32 0, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ja = load i16, ptr %i.gp, align 8, !tbaa !119 ; 2 uses
  %i.jb = icmp ne i16 %i.ja, 0
  %or.cond7 = and i1 %i.iz, %i.jb
  %or.cond9 = and i1 %i.b, %or.cond7
  %i.jc = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 6512
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !163
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !62
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %i.hy
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !64
  %i.ji = sext i32 %i.id to i64                   ; 6 uses
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %i.ji
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !66 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 2 ; 2 uses
  br i1 %or.cond9, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.jm = icmp eq i16 %i.ja, 1
  %. = select i1 %i.jm, i64 14392, i64 14400
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.
  %.pn265 = load ptr, ptr %i.jn, align 8, !tbaa !165
  %.pn264.in = getelementptr inbounds [8 x i8], ptr %.pn265, i64 %indvars.iv249
  %.pn264 = load ptr, ptr %.pn264.in, align 8, !tbaa !58
  %.pn.in.in.in = getelementptr inbounds nuw [8 x i8], ptr %.pn264, i64 %indvars.iv246
  %.pn.in.in = load ptr, ptr %.pn.in.in.in, align 8, !tbaa !60
  %.pn.in = load ptr, ptr %.pn.in.in, align 8, !tbaa !62
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !64
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.jo = load ptr, ptr %.in, align 8, !tbaa !66  ; 2 uses
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !68
  store i16 %i.jp, ptr %i.jk, align 2, !tbaa !68
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 2
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !68
  store i16 %i.jr, ptr %i.jl, align 2, !tbaa !68
  %i.js = getelementptr inbounds nuw i8, ptr %i.jc, i64 6488
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !135
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !44
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %i.hy
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !45
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 %i.ji
  store i8 0, ptr %i.jx, align 1, !tbaa !46
  %i.jy = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load i32, ptr %i.gr, align 8, !tbaa !146
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [264 x i8], ptr %i.jz, i64 %i.kb
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !147
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 6496
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !141
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !142
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.kg, i64 %i.hy
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !144
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.ki, i64 %i.ji
  store i64 %i.kd, ptr %i.kj, align 8, !tbaa !147
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.kk = getelementptr inbounds nuw i8, ptr %i.hz, i64 14384
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !55
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %indvars.iv249
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !58
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv246
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !60
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !62
  %i.kr = sext i32 %.2195 to i64
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.kr
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !64
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.kt, i64 %i.gq
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !66 ; 2 uses
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !68
  store i16 %i.kw, ptr %i.jk, align 2, !tbaa !68
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !68
  store i16 %i.ky, ptr %i.jl, align 2, !tbaa !68
  %i.kz = trunc i32 %.2195 to i8
  %i.la = getelementptr inbounds nuw i8, ptr %i.jc, i64 6488
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !135
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !44
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.hy
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !45
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 %i.ji
  store i8 %i.kz, ptr %i.lf, align 1, !tbaa !46
  %i.lg = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.li = load i32, ptr %i.gr, align 8, !tbaa !146
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [264 x i8], ptr %i.lh, i64 %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 6488
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !135
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !44
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.hy
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !45
  %i.lq = getelementptr inbounds i8, ptr %i.lp, i64 %i.ji
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !46
  %i.ls = sext i8 %i.lr to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.ls
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !147
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.lv = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 6512
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !163
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !62
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.ly, i64 %i.hy
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !64
  %i.mb = sext i32 %i.id to i64                   ; 3 uses
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %i.mb
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.md, align 2, !tbaa !68
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 2
  store i16 0, ptr %i.me, align 2, !tbaa !68
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lv, i64 6488
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !135
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !44
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.hy
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !45
  %i.mk = getelementptr inbounds i8, ptr %i.mj, i64 %i.mb
  store i8 -1, ptr %i.mk, align 1, !tbaa !46
  %i.ml = load ptr, ptr @enc_picture, align 8, !tbaa !81
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink279 = phi ptr [ %i.lg, %bb.i ], [ %i.ml, %bb.j ] ; 4 uses
  %.sink274 = phi i64 [ %i.ji, %bb.i ], [ %i.mb, %bb.j ]
  %.sink271 = phi i64 [ %i.lu, %bb.i ], [ -1, %bb.j ]
  %i.mm = getelementptr inbounds nuw i8, ptr %.sink279, i64 6496
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !141
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !142
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.hy
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !144
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.mq, i64 %.sink274
  store i64 %.sink271, ptr %i.mr, align 8, !tbaa !147
  %i.ms = add nsw i32 %.2, -1
  %or.cond11 = icmp ult i32 %i.ms, 2
  br i1 %or.cond11, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.thread, %bb.k
  %i.mt = phi ptr [ %i.jy, %.thread ], [ %.sink279, %bb.k ] ; 3 uses
  %i.mu = load i16, ptr %i.gp, align 8, !tbaa !119 ; 2 uses
  %i.mv = icmp ne i16 %i.mu, 0
  %or.cond13 = and i1 %i.iz, %i.mv
  %or.cond15 = and i1 %i.b, %or.cond13
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 6512
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !163
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !62
  %i.na = getelementptr inbounds [8 x i8], ptr %i.mz, i64 %i.hy
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !64
  %i.nc = sext i32 %i.id to i64                   ; 6 uses
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.nc
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !66 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 2 ; 2 uses
  br i1 %or.cond15, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ng = icmp eq i16 %i.mu, 1
  %i.nh = load ptr, ptr @img, align 8, !tbaa !16
  %.291 = select i1 %i.ng, i64 14392, i64 14400
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 %.291
  %.pn267 = load ptr, ptr %i.ni, align 8, !tbaa !165
  %.pn266.in = getelementptr inbounds [8 x i8], ptr %.pn267, i64 %indvars.iv249
  %.pn266 = load ptr, ptr %.pn266.in, align 8, !tbaa !58
  %.pn212.in = getelementptr inbounds nuw [8 x i8], ptr %.pn266, i64 %indvars.iv246
  %.pn212 = load ptr, ptr %.pn212.in, align 8, !tbaa !60
  %.pn211.in.in = getelementptr inbounds nuw i8, ptr %.pn212, i64 8
  %.pn211.in = load ptr, ptr %.pn211.in.in, align 8, !tbaa !62
  %.pn211 = load ptr, ptr %.pn211.in, align 8, !tbaa !64
  %.in210 = getelementptr inbounds nuw i8, ptr %.pn211, i64 8
  %i.nj = load ptr, ptr %.in210, align 8, !tbaa !66 ; 2 uses
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !68
  store i16 %i.nk, ptr %i.ne, align 2, !tbaa !68
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 2
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !68
  store i16 %i.nm, ptr %i.nf, align 2, !tbaa !68
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mt, i64 6488
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !135
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !44
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %i.hy
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !45
  %i.nt = getelementptr inbounds i8, ptr %i.ns, i64 %i.nc
  store i8 0, ptr %i.nt, align 1, !tbaa !46
  %i.nu = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 2 uses
  %i.nv = load i32, ptr %i.gr, align 8, !tbaa !146
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr [264 x i8], ptr %i.nu, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.nx, i64 288
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !147
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.oa = load ptr, ptr @img, align 8, !tbaa !16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 14384
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !55
  %i.od = getelementptr inbounds [8 x i8], ptr %i.oc, i64 %indvars.iv249
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !58
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv246
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !60
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !62
  %i.oj = sext i32 %.2198 to i64
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.oi, i64 %i.oj
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !64
  %i.om = getelementptr inbounds [8 x i8], ptr %i.ol, i64 %i.gq
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !66 ; 2 uses
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !68
  store i16 %i.oo, ptr %i.ne, align 2, !tbaa !68
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !68
  store i16 %i.oq, ptr %i.nf, align 2, !tbaa !68
  %i.or = trunc i32 %.2198 to i8
  %i.os = getelementptr inbounds nuw i8, ptr %i.mt, i64 6488
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !135
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !44
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.hy
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !45
  %i.oy = getelementptr inbounds i8, ptr %i.ox, i64 %i.nc
  store i8 %i.or, ptr %i.oy, align 1, !tbaa !46
  %i.oz = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.pa = load i32, ptr %i.gr, align 8, !tbaa !146
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr [264 x i8], ptr %i.oz, i64 %i.pb
  %i.pd = getelementptr i8, ptr %i.pc, i64 288
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oz, i64 6488
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !135
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !44
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.hy
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !45
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 %i.nc
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !46
  %i.pm = sext i8 %i.pl to i64
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.pd, i64 %i.pm
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !147
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.pp = getelementptr inbounds nuw i8, ptr %.sink279, i64 6512
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !163
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !62
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.ps, i64 %i.hy
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !64
  %i.pv = sext i32 %i.id to i64                   ; 3 uses
  %i.pw = getelementptr inbounds [8 x i8], ptr %i.pu, i64 %i.pv
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.px, align 2, !tbaa !68
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 2
  store i16 0, ptr %i.py, align 2, !tbaa !68
  %i.pz = getelementptr inbounds nuw i8, ptr %.sink279, i64 6488
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !135
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !44
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %i.hy
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !45
  %i.qf = getelementptr inbounds i8, ptr %i.qe, i64 %i.pv
  store i8 -1, ptr %i.qf, align 1, !tbaa !46
  %i.qg = load ptr, ptr @enc_picture, align 8, !tbaa !81
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sink290 = phi ptr [ %i.qg, %bb.o ], [ %i.oz, %bb.n ], [ %i.nu, %bb.m ]
  %.sink284 = phi i64 [ %i.pv, %bb.o ], [ %i.nc, %bb.n ], [ %i.nc, %bb.m ]
  %.sink281 = phi i64 [ -1, %bb.o ], [ %i.po, %bb.n ], [ %i.nz, %bb.m ]
  %i.qh = getelementptr inbounds nuw i8, ptr %.sink290, i64 6496
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !141
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !142
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.qk, i64 %i.hy
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !144
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.qm, i64 %.sink284
  store i64 %.sink281, ptr %i.qn, align 8, !tbaa !147
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %17 = icmp slt i64 %indvars.iv.next247, %16
  br i1 %17, label %bb.e, label %._crit_edge, !llvm.loop !274

._crit_edge:                                      ; preds = %bb.p
  %indvars.iv.next250 = add nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.qo = icmp slt i64 %indvars.iv.next250, %i.gw
  br i1 %i.qo, label %.lr.ph, label %.loopexit, !llvm.loop !275

.loopexit:                                        ; preds = %.lr.ph219.split, %._crit_edge.us, %._crit_edge, %._crit_edge235, %.preheader215, %.preheader, %.lr.ph231, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @StoreMVBlock8x8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !16   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 14384
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 14376
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 9 uses
  %i.f = sext i32 %0 to i64                       ; 5 uses
  %i.g = getelementptr inbounds [128 x i8], ptr @all_mv8x8, i64 %i.f ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 4 uses
  %i.i = and i32 %1, -2                           ; 5 uses
  %i.j = add nsw i32 %i.i, 2                      ; 4 uses
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = icmp sgt i32 %5, -1
  br i1 %i.k, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds [128 x i8], ptr @pred_mv8x8, i64 %i.f ; 2 uses
  %i.m = sext i32 %3 to i64                       ; 8 uses
  %i.n = shl i32 %1, 1
  %i.o = and i32 %i.n, 2
  %i.p = zext nneg i32 %i.o to i64                ; 9 uses
  %i.q = sext i32 %i.i to i64                     ; 5 uses
  %i.r = sext i32 %i.j to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58   ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.q
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58   ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.q ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.p
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.m
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !66 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !68
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.p ; 2 uses
  store i16 %i.af, ptr %i.ag, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !68
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.p
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.m
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !66 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !68
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.p ; 2 uses
  store i16 %i.ar, ptr %i.as, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !68
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i16 %i.au, ptr %i.av, align 2, !tbaa !68
  %indvars.iv.next253 = or disjoint i64 %i.p, 1   ; 8 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next253
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !60
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !62
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.m
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !66 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !68
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next253 ; 2 uses
  store i16 %i.bd, ptr %i.be, align 4, !tbaa !68
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !68
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !68
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next253
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !60
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.m
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !66 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !68
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next253 ; 2 uses
  store i16 %i.bp, ptr %i.bq, align 4, !tbaa !68
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !68
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !68
  %indvars.iv.next255 = or disjoint i64 %i.q, 1   ; 5 uses
  %i.bu = icmp slt i64 %indvars.iv.next255, %i.r
  br i1 %i.bu, label %.preheader.1, label %.loopexit

.preheader.1:                                     ; preds = %.preheader
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv.next255
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !58 ; 2 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.g, i64 %indvars.iv.next255 ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next255
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !58 ; 2 uses
  %i.ca = getelementptr inbounds [16 x i8], ptr %i.l, i64 %indvars.iv.next255 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.p
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !60
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !62
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.m
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !66 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !68
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.p ; 2 uses
  store i16 %i.ci, ptr %i.cj, align 8, !tbaa !68
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !68
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !68
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.p
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !60
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !62
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.m
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !66 ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !68
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.p ; 2 uses
  store i16 %i.cu, ptr %i.cv, align 8, !tbaa !68
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !68
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next253
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !60
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !62
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.m
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !66 ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !68
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next253 ; 2 uses
  store i16 %i.dg, ptr %i.dh, align 4, !tbaa !68
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !68
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !68
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next253
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !60
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !62
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.m
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !66 ; 2 uses
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !68
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.next253 ; 2 uses
  store i16 %i.ds, ptr %i.dt, align 4, !tbaa !68
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !68
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !68
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  switch i32 %5, label %bb.d [
    i32 0, label %.preheader218
    i32 1, label %.preheader220
    i32 2, label %.preheader224
  ]

.preheader218:                                    ; preds = %bb.c
  %i.dx = getelementptr inbounds [128 x i8], ptr @pred_mv8x8, i64 %i.f ; 2 uses
  %i.dy = sext i32 %3 to i64                      ; 8 uses
  %i.dz = sext i32 %2 to i64                      ; 8 uses
  %i.ea = shl i32 %1, 1
  %i.eb = and i32 %i.ea, 2
  %i.ec = zext nneg i32 %i.eb to i64              ; 9 uses
  %i.ed = sext i32 %i.i to i64                    ; 5 uses
  %i.ee = sext i32 %i.j to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ed
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !58 ; 2 uses
  %i.eh = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.ed ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ed
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !58 ; 2 uses
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.ed ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ec
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !60
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !62
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.dy
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.dz
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !66 ; 2 uses
  %i.es = load i16, ptr %i.er, align 2, !tbaa !68
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ec ; 2 uses
  store i16 %i.es, ptr %i.et, align 8, !tbaa !68
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !68
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 2
end_hunk_0
begin_hunk_1_@GetBestTransformP8x8:bb.a

.preheader:                                       ; preds = %.preheader53, %.preheader
  %indvars.iv85 = phi i64 [ %i.e, %.preheader53 ], [ %indvars.iv.next86, %.preheader ] ; 7 uses
  %.163 = phi i32 [ %.04366, %.preheader53 ], [ %i.fw, %.preheader ]
  %.04861 = phi i64 [ 0, %.preheader53 ], [ %indvars.iv.next.3.3.1, %.preheader ] ; 2 uses
  %i.m = or disjoint i64 %indvars.iv85, 3         ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @tr8x8, i64 6680), i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @tr4x4, i64 6680), i64 %i.m ; 2 uses
  %i.p = or disjoint i64 %indvars.iv85, 2         ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @tr8x8, i64 6680), i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @tr4x4, i64 6680), i64 %i.p ; 2 uses
  %i.s = or disjoint i64 %indvars.iv85, 1         ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @tr8x8, i64 6680), i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @tr4x4, i64 6680), i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @tr8x8, i64 6680), i64 %indvars.iv85 ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @tr4x4, i64 6680), i64 %indvars.iv85 ; 2 uses
  %i.x = load ptr, ptr @img, align 8, !tbaa !16   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 196
  %i.z = load i32, ptr %i.y, align 4, !tbaa !80
  %i.aa = sext i32 %i.z to i64
  %i.ab = add nsw i64 %indvars.iv85, %i.aa        ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !100
  %i.ae = sext i32 %i.ad to i64
  %i.af = add nsw i64 %i.h, %i.ae                 ; 4 uses
  %i.ag = load ptr, ptr @imgY_org, align 8, !tbaa !64 ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ab
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !66
  %sext = shl i64 %.04861, 32
  %i.aj = ashr exact i64 %sext, 32                ; 2 uses
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.h
  %i.am = getelementptr inbounds [4 x i8], ptr @diff4x4, i64 %i.aj ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.h
  %i.ao = getelementptr inbounds [4 x i8], ptr @diff8x8, i64 %i.aj
  %i.ap = load <4 x i16>, ptr %i.ak, align 2, !tbaa !68
  %i.aq = zext <4 x i16> %i.ap to <4 x i32>       ; 2 uses
  %i.ar = load <4 x i16>, ptr %i.al, align 4, !tbaa !68
  %i.as = zext <4 x i16> %i.ar to <4 x i32>
  %i.at = sub nsw <4 x i32> %i.aq, %i.as
  store <4 x i32> %i.at, ptr %i.am, align 4, !tbaa !4
  %i.au = load <4 x i16>, ptr %i.an, align 4, !tbaa !68
  %i.av = zext <4 x i16> %i.au to <4 x i32>
  %i.aw = sub nsw <4 x i32> %i.aq, %i.av
  store <4 x i32> %i.aw, ptr %i.ao, align 4, !tbaa !4
  %i.ax = getelementptr [8 x i8], ptr %i.ag, i64 %i.ab
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !66
  %i.ba = shl i64 %.04861, 32                     ; 3 uses
  %sext89 = add i64 %i.ba, 17179869184
  %i.bb = ashr exact i64 %sext89, 32              ; 2 uses
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.af
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.h
  %i.be = getelementptr inbounds [4 x i8], ptr @diff4x4, i64 %i.bb
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.h
  %i.bg = getelementptr inbounds [4 x i8], ptr @diff8x8, i64 %i.bb
  %i.bh = load <4 x i16>, ptr %i.bc, align 2, !tbaa !68
  %i.bi = zext <4 x i16> %i.bh to <4 x i32>       ; 2 uses
  %i.bj = load <4 x i16>, ptr %i.bd, align 4, !tbaa !68
  %i.bk = zext <4 x i16> %i.bj to <4 x i32>
  %i.bl = sub nsw <4 x i32> %i.bi, %i.bk
  store <4 x i32> %i.bl, ptr %i.be, align 4, !tbaa !4
  %i.bm = load <4 x i16>, ptr %i.bf, align 4, !tbaa !68
  %i.bn = zext <4 x i16> %i.bm to <4 x i32>
  %i.bo = sub nsw <4 x i32> %i.bi, %i.bn
  store <4 x i32> %i.bo, ptr %i.bg, align 4, !tbaa !4
  %i.bp = getelementptr [8 x i8], ptr %i.ag, i64 %i.ab
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !66
  %sext90 = add i64 %i.ba, 34359738368
  %i.bs = ashr exact i64 %sext90, 32              ; 2 uses
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.af
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.h
  %i.bv = getelementptr inbounds [4 x i8], ptr @diff4x4, i64 %i.bs
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.h
  %i.bx = getelementptr inbounds [4 x i8], ptr @diff8x8, i64 %i.bs
  %i.by = load <4 x i16>, ptr %i.bt, align 2, !tbaa !68
  %i.bz = zext <4 x i16> %i.by to <4 x i32>       ; 2 uses
  %i.ca = load <4 x i16>, ptr %i.bu, align 4, !tbaa !68
  %i.cb = zext <4 x i16> %i.ca to <4 x i32>
  %i.cc = sub nsw <4 x i32> %i.bz, %i.cb
  store <4 x i32> %i.cc, ptr %i.bv, align 4, !tbaa !4
  %i.cd = load <4 x i16>, ptr %i.bw, align 4, !tbaa !68
  %i.ce = zext <4 x i16> %i.cd to <4 x i32>
  %i.cf = sub nsw <4 x i32> %i.bz, %i.ce
  store <4 x i32> %i.cf, ptr %i.bx, align 4, !tbaa !4
  %i.cg = getelementptr [8 x i8], ptr %i.ag, i64 %i.ab
  %i.ch = getelementptr i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !66
  %sext91 = add i64 %i.ba, 51539607552
  %i.cj = ashr exact i64 %sext91, 32              ; 3 uses
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.af
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.h
  %i.cm = getelementptr inbounds [4 x i8], ptr @diff4x4, i64 %i.cj
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.h
  %i.co = getelementptr inbounds [4 x i8], ptr @diff8x8, i64 %i.cj
  %i.cp = load <4 x i16>, ptr %i.ck, align 2, !tbaa !68
  %i.cq = zext <4 x i16> %i.cp to <4 x i32>       ; 2 uses
  %i.cr = load <4 x i16>, ptr %i.cl, align 4, !tbaa !68
  %i.cs = zext <4 x i16> %i.cr to <4 x i32>
  %i.ct = sub nsw <4 x i32> %i.cq, %i.cs
  store <4 x i32> %i.ct, ptr %i.cm, align 4, !tbaa !4
  %i.cu = load <4 x i16>, ptr %i.cn, align 4, !tbaa !68
  %i.cv = zext <4 x i16> %i.cu to <4 x i32>
  %i.cw = sub nsw <4 x i32> %i.cq, %i.cv
  store <4 x i32> %i.cw, ptr %i.co, align 4, !tbaa !4
  %indvars.iv.next.3.3 = add nsw i64 %i.cj, 4     ; 2 uses
  %i.cx = tail call i32 @distortion4x4(ptr noundef nonnull %i.am) #14
  %i.cy = add nsw i32 %i.cx, %.163
  %i.cz = load ptr, ptr @img, align 8, !tbaa !16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 192
  %i.db = load i32, ptr %i.da, align 8, !tbaa !100
  %i.dc = sext i32 %i.db to i64
  %i.dd = add nsw i64 %indvars.iv.next81, %i.dc   ; 4 uses
  %i.de = load ptr, ptr @imgY_org, align 8, !tbaa !64 ; 4 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.ab
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !66
  %sext.1 = shl i64 %indvars.iv.next.3.3, 32
  %i.dh = ashr exact i64 %sext.1, 32              ; 2 uses
  %i.di = getelementptr inbounds [2 x i8], ptr %i.dg, i64 %i.dd
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next81
  %i.dk = getelementptr inbounds [4 x i8], ptr @diff4x4, i64 %i.dh ; 2 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next81
  %i.dm = getelementptr inbounds [4 x i8], ptr @diff8x8, i64 %i.dh
  %i.dn = load <4 x i16>, ptr %i.di, align 2, !tbaa !68
  %i.do = zext <4 x i16> %i.dn to <4 x i32>       ; 2 uses
  %i.dp = load <4 x i16>, ptr %i.dj, align 4, !tbaa !68
  %i.dq = zext <4 x i16> %i.dp to <4 x i32>
  %i.dr = sub nsw <4 x i32> %i.do, %i.dq
  store <4 x i32> %i.dr, ptr %i.dk, align 4, !tbaa !4
  %i.ds = load <4 x i16>, ptr %i.dl, align 4, !tbaa !68
  %i.dt = zext <4 x i16> %i.ds to <4 x i32>
  %i.du = sub nsw <4 x i32> %i.do, %i.dt
  store <4 x i32> %i.du, ptr %i.dm, align 4, !tbaa !4
  %i.dv = getelementptr [8 x i8], ptr %i.de, i64 %i.ab
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !66
  %i.dy = shl i64 %indvars.iv.next.3.3, 32        ; 3 uses
  %sext89.1 = add i64 %i.dy, 17179869184
  %i.dz = ashr exact i64 %sext89.1, 32            ; 2 uses
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.dd
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next81
  %i.ec = getelementptr inbounds [4 x i8], ptr @diff4x4, i64 %i.dz
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.next81
  %i.ee = getelementptr inbounds [4 x i8], ptr @diff8x8, i64 %i.dz
  %i.ef = load <4 x i16>, ptr %i.ea, align 2, !tbaa !68
  %i.eg = zext <4 x i16> %i.ef to <4 x i32>       ; 2 uses
  %i.eh = load <4 x i16>, ptr %i.eb, align 4, !tbaa !68
  %i.ei = zext <4 x i16> %i.eh to <4 x i32>
  %i.ej = sub nsw <4 x i32> %i.eg, %i.ei
  store <4 x i32> %i.ej, ptr %i.ec, align 4, !tbaa !4
  %i.ek = load <4 x i16>, ptr %i.ed, align 4, !tbaa !68
  %i.el = zext <4 x i16> %i.ek to <4 x i32>
  %i.em = sub nsw <4 x i32> %i.eg, %i.el
  store <4 x i32> %i.em, ptr %i.ee, align 4, !tbaa !4
  %i.en = getelementptr [8 x i8], ptr %i.de, i64 %i.ab
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !66
  %sext90.1 = add i64 %i.dy, 34359738368
  %i.eq = ashr exact i64 %sext90.1, 32            ; 2 uses
  %i.er = getelementptr inbounds [2 x i8], ptr %i.ep, i64 %i.dd
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next81
  %i.et = getelementptr inbounds [4 x i8], ptr @diff4x4, i64 %i.eq
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.next81
  %i.ev = getelementptr inbounds [4 x i8], ptr @diff8x8, i64 %i.eq
  %i.ew = load <4 x i16>, ptr %i.er, align 2, !tbaa !68
  %i.ex = zext <4 x i16> %i.ew to <4 x i32>       ; 2 uses
  %i.ey = load <4 x i16>, ptr %i.es, align 4, !tbaa !68
  %i.ez = zext <4 x i16> %i.ey to <4 x i32>
  %i.fa = sub nsw <4 x i32> %i.ex, %i.ez
  store <4 x i32> %i.fa, ptr %i.et, align 4, !tbaa !4
  %i.fb = load <4 x i16>, ptr %i.eu, align 4, !tbaa !68
  %i.fc = zext <4 x i16> %i.fb to <4 x i32>
  %i.fd = sub nsw <4 x i32> %i.ex, %i.fc
  store <4 x i32> %i.fd, ptr %i.ev, align 4, !tbaa !4
  %i.fe = getelementptr [8 x i8], ptr %i.de, i64 %i.ab
  %i.ff = getelementptr i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !66
  %sext91.1 = add i64 %i.dy, 51539607552
  %i.fh = ashr exact i64 %sext91.1, 32            ; 3 uses
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.fg, i64 %i.dd
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next81
  %i.fk = getelementptr inbounds [4 x i8], ptr @diff4x4, i64 %i.fh
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.next81
  %i.fm = getelementptr inbounds [4 x i8], ptr @diff8x8, i64 %i.fh
  %i.fn = load <4 x i16>, ptr %i.fi, align 2, !tbaa !68
  %i.fo = zext <4 x i16> %i.fn to <4 x i32>       ; 2 uses
  %i.fp = load <4 x i16>, ptr %i.fj, align 4, !tbaa !68
  %i.fq = zext <4 x i16> %i.fp to <4 x i32>
  %i.fr = sub nsw <4 x i32> %i.fo, %i.fq
  store <4 x i32> %i.fr, ptr %i.fk, align 4, !tbaa !4
  %i.fs = load <4 x i16>, ptr %i.fl, align 4, !tbaa !68
  %i.ft = zext <4 x i16> %i.fs to <4 x i32>
  %i.fu = sub nsw <4 x i32> %i.fo, %i.ft
  store <4 x i32> %i.fu, ptr %i.fm, align 4, !tbaa !4
  %indvars.iv.next.3.3.1 = add nsw i64 %i.fh, 4
  %i.fv = tail call i32 @distortion4x4(ptr noundef nonnull %i.dk) #14
  %i.fw = add nsw i32 %i.fv, %i.cy                ; 3 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 4 ; 2 uses
  %i.fx = icmp samesign ult i64 %indvars.iv.next86, %i.l
  br i1 %i.fx, label %.preheader, label %bb.b, !llvm.loop !276

bb.b:                                             ; preds = %.preheader
  %i.fy = tail call i32 @distortion8x8(ptr noundef nonnull @diff8x8) #14
  %i.fz = add nsw i32 %i.fy, %.04465              ; 2 uses
  %i.ga = add nuw nsw i32 %.04564, 1              ; 2 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 4
  %exitcond.not = icmp eq i32 %i.ga, 4
  br i1 %exitcond.not, label %bb.c, label %.preheader53, !llvm.loop !277

bb.c:                                             ; preds = %bb.b
  %i.gb = icmp slt i32 %i.fz, %i.fw
  %i.gc = zext i1 %i.gb to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i32 [ %i.gc, %bb.c ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i32 @distortion8x8(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_mbaff_parameters() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !16   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !101
  %i.f = load i16, ptr @best_mode, align 2, !tbaa !68 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.k = load ptr, ptr @rdopt, align 8, !tbaa !16 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 6440 ; 9 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 180 ; 8 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !79
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !66
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 8 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !78
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 2 dereferenceable(32) %i.x, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.aa = load i32, ptr %i.p, align 4, !tbaa !79
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [8 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !66
  %i.af = load i32, ptr %i.u, align 8, !tbaa !78
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 2 dereferenceable(32) %i.ah, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.ak = load i32, ptr %i.p, align 4, !tbaa !79
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [8 x i8], ptr %i.aj, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !66
  %i.ap = load i32, ptr %i.u, align 8, !tbaa !78
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 2 dereferenceable(32) %i.ar, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.au = load i32, ptr %i.p, align 4, !tbaa !79
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !66
  %i.az = load i32, ptr %i.u, align 8, !tbaa !78
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.ay, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 2 dereferenceable(32) %i.bb, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.be = load i32, ptr %i.p, align 4, !tbaa !79
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr [8 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !66
  %i.bj = load i32, ptr %i.u, align 8, !tbaa !78
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 2 dereferenceable(32) %i.bl, i64 32, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.bn = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.bo = load i32, ptr %i.p, align 4, !tbaa !79
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr [8 x i8], ptr %i.bn, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !66
  %i.bt = load i32, ptr %i.u, align 8, !tbaa !78
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.bu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 2 dereferenceable(32) %i.bv, i64 32, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.bx = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.by = load i32, ptr %i.p, align 4, !tbaa !79
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr [8 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !66
  %i.cd = load i32, ptr %i.u, align 8, !tbaa !78
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 2 dereferenceable(32) %i.cf, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %i.ch = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.ci = load i32, ptr %i.p, align 4, !tbaa !79
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr [8 x i8], ptr %i.ch, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !66
  %i.cn = load i32, ptr %i.u, align 8, !tbaa !78
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.co
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 2 dereferenceable(32) %i.cp, i64 32, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %i.cr = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.cs = load ptr, ptr @img, align 8, !tbaa !16  ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 180 ; 8 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !79
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr [8 x i8], ptr %i.cr, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !66
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 176 ; 8 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !78
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 2 dereferenceable(32) %i.dc, i64 32, i1 false)
  %i.dd = load ptr, ptr @rdopt, align 8, !tbaa !16 ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 296
  %i.df = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 6440 ; 7 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !83
  %i.di = load i32, ptr %i.ct, align 4, !tbaa !79
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr [8 x i8], ptr %i.dh, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 72
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !66
  %i.dn = load i32, ptr %i.cz, align 8, !tbaa !78
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.do
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 2 dereferenceable(32) %i.dp, i64 32, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 328
  %i.dr = load ptr, ptr %i.dg, align 8, !tbaa !83
  %i.ds = load i32, ptr %i.ct, align 4, !tbaa !79
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr [8 x i8], ptr %i.dr, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !66
  %i.dx = load i32, ptr %i.cz, align 8, !tbaa !78
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.dw, i64 %i.dy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, ptr noundef nonnull align 2 dereferenceable(32) %i.dz, i64 32, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dd, i64 360
  %i.eb = load ptr, ptr %i.dg, align 8, !tbaa !83
  %i.ec = load i32, ptr %i.ct, align 4, !tbaa !79
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr [8 x i8], ptr %i.eb, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 88
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !66
  %i.eh = load i32, ptr %i.cz, align 8, !tbaa !78
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.ei
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 2 dereferenceable(32) %i.ej, i64 32, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dd, i64 392
  %i.el = load ptr, ptr %i.dg, align 8, !tbaa !83
  %i.em = load i32, ptr %i.ct, align 4, !tbaa !79
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr [8 x i8], ptr %i.el, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 96
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !66
  %i.er = load i32, ptr %i.cz, align 8, !tbaa !78
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %i.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr noundef nonnull align 2 dereferenceable(32) %i.et, i64 32, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dd, i64 424
  %i.ev = load ptr, ptr %i.dg, align 8, !tbaa !83
  %i.ew = load i32, ptr %i.ct, align 4, !tbaa !79
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 104
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !66
  %i.fb = load i32, ptr %i.cz, align 8, !tbaa !78
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.fc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull align 2 dereferenceable(32) %i.fd, i64 32, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dd, i64 456
  %i.ff = load ptr, ptr %i.dg, align 8, !tbaa !83
  %i.fg = load i32, ptr %i.ct, align 4, !tbaa !79
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr [8 x i8], ptr %i.ff, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 112
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !66
  %i.fl = load i32, ptr %i.cz, align 8, !tbaa !78
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [2 x i8], ptr %i.fk, i64 %i.fm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noundef nonnull align 2 dereferenceable(32) %i.fn, i64 32, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dd, i64 488
  %i.fp = load ptr, ptr %i.dg, align 8, !tbaa !83
  %i.fq = load i32, ptr %i.ct, align 4, !tbaa !79
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr [8 x i8], ptr %i.fp, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fs, i64 120
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !66
  %i.fv = load i32, ptr %i.cz, align 8, !tbaa !78
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [2 x i8], ptr %i.fu, i64 %i.fw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fo, ptr noundef nonnull align 2 dereferenceable(32) %i.fx, i64 32, i1 false)
  %i.fy = sext i32 %i.e to i64
  %i.fz = getelementptr inbounds [536 x i8], ptr %i.c, i64 %i.fy ; 9 uses
  %i.ga = sext i16 %i.f to i32
  %i.gb = icmp eq i32 %i.h, 1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cs, i64 15536
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !198
  %.not = icmp eq i32 %i.gd, 0
  %.pre105 = load ptr, ptr @img, align 8, !tbaa !16 ; 4 uses
  br i1 %.not, label %.loopexit67, label %.preheader66

.preheader66:                                     ; preds = %bb.a
  %i.ge = getelementptr inbounds nuw i8, ptr %.pre105, i64 15548
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !26
  %i.gg = icmp sgt i32 %i.gf, 0
  br i1 %i.gg, label %.lr.ph, label %.loopexit67

.lr.ph:                                           ; preds = %.preheader66, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader66 ] ; 4 uses
  %i.gh = phi ptr [ %i.ib, %.lr.ph ], [ %.pre105, %.preheader66 ] ; 3 uses
  %i.gi = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 520
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.gj, i64 %indvars.iv
  %i.gl = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 6472
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !202
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 188
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !200
  %i.gr = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.gs = add nsw i32 %i.gq, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.gt
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !66
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gh, i64 184
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !230
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.gv, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gh, i64 15544
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !38
  %i.hc = sext i32 %i.hb to i64
  %i.hd = shl nsw i64 %i.hc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gk, ptr align 2 %i.gz, i64 %i.hd, i1 false)
  %i.he = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1032
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.hf, i64 %indvars.iv
  %i.hh = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 6472
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !202
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !64
  %i.hm = load ptr, ptr @img, align 8, !tbaa !16  ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 188
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !200
  %i.hp = add nsw i32 %i.ho, %i.gr
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 184
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !230
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hm, i64 15544
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !38
  %i.hz = sext i32 %i.hy to i64
  %i.ia = shl nsw i64 %i.hz, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hg, ptr align 2 %i.hw, i64 %i.ia, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ib = load ptr, ptr @img, align 8, !tbaa !16  ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 15548
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !26
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next, %i.ie
  br i1 %i.if, label %.lr.ph, label %.loopexit67.loopexit, !llvm.loop !278

.loopexit67.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr @rdopt, align 8, !tbaa !16
  br label %.loopexit67

.loopexit67:                                      ; preds = %.loopexit67.loopexit, %.preheader66, %bb.a
  %i.ig = phi ptr [ %i.ib, %.loopexit67.loopexit ], [ %.pre105, %.preheader66 ], [ %.pre105, %bb.a ] ; 4 uses
  %i.ih = phi ptr [ %.pre, %.loopexit67.loopexit ], [ %i.dd, %.preheader66 ], [ %i.dd, %bb.a ] ; 7 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1656 ; 2 uses
  store i32 %i.ga, ptr %i.ii, align 8, !tbaa !241
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 15244
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !212
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 1712
  store i32 %i.ik, ptr %i.il, align 8, !tbaa !242
  %i.im = getelementptr inbounds nuw i8, ptr %i.fz, i64 364
  %i.in = load i32, ptr %i.im, align 4, !tbaa !149
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 1640
  store i32 %i.in, ptr %i.io, align 8, !tbaa !243
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fz, i64 368
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !156
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ih, i64 1648
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !244
  %i.is = getelementptr inbounds nuw i8, ptr %i.fz, i64 72
  %i.it = load i32, ptr %i.is, align 8, !tbaa !134 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ih, i64 1560
  store i32 %i.it, ptr %i.iu, align 8, !tbaa !245
  %i.iv = getelementptr inbounds nuw i8, ptr %i.fz, i64 472
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !133
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ih, i64 1720
  store i32 %i.iw, ptr %i.ix, align 8, !tbaa !251
  %i.iy = icmp eq i32 %i.it, 0
  %i.iz = icmp ne i16 %i.f, 0
  %or.cond = select i1 %i.iy, i1 %i.iz, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit67
  store i32 0, ptr %i.ii, align 8, !tbaa !241
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit67
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ig, i64 15528
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !150
  %i.jc = icmp sgt i32 %i.jb, -4
  br i1 %i.jc, label %.preheader65, label %.preheader63

.preheader65:                                     ; preds = %bb.c, %.preheader65
  %i.jd = phi ptr [ %i.of, %.preheader65 ], [ %i.ig, %bb.c ]
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %.preheader65 ], [ 0, %bb.c ] ; 18 uses
  %i.je = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 1544
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !248
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv87
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !23
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !89
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jd, i64 14160
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !114
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv87
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !23
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.jk, ptr noundef nonnull align 4 dereferenceable(260) %i.jq, i64 260, i1 false)
  %i.jr = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 1544
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !248
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv87
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !23
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !89
  %i.jz = load ptr, ptr @img, align 8, !tbaa !16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 14160
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !114
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %indvars.iv87
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !23
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.jy, ptr noundef nonnull align 4 dereferenceable(260) %i.kg, i64 260, i1 false)
  %i.kh = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1544
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !248
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv87
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !23
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !89
  %i.kp = load ptr, ptr @img, align 8, !tbaa !16
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 14160
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !114
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv87
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !23
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.ko, ptr noundef nonnull align 4 dereferenceable(260) %i.kw, i64 260, i1 false)
  %i.kx = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 1544
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !248
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv87
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !23
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !89
  %i.lg = load ptr, ptr @img, align 8, !tbaa !16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 14160
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !114
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv87
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !23
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.lf, ptr noundef nonnull align 4 dereferenceable(260) %i.lo, i64 260, i1 false)
  %i.lp = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 1544
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !248
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %indvars.iv87
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !23
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !89
  %i.lx = load ptr, ptr @img, align 8, !tbaa !16
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 14160
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !114
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv87
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !23
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.lw, ptr noundef nonnull align 4 dereferenceable(260) %i.me, i64 260, i1 false)
  %i.mf = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 1544
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !248
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv87
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !23
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !89
  %i.mo = load ptr, ptr @img, align 8, !tbaa !16
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 14160
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !114
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv87
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !23
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.mn, ptr noundef nonnull align 4 dereferenceable(260) %i.mw, i64 260, i1 false)
  %i.mx = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 1544
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !248
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %indvars.iv87
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !23
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !89
  %i.nf = load ptr, ptr @img, align 8, !tbaa !16
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 14160
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !114
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv87
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !23
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.ne, ptr noundef nonnull align 4 dereferenceable(260) %i.nm, i64 260, i1 false)
  %i.nn = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 1544
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !248
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv87
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !23
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !89
  %i.nw = load ptr, ptr @img, align 8, !tbaa !16
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 14160
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !114
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %indvars.iv87
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !23
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.nv, ptr noundef nonnull align 4 dereferenceable(260) %i.oe, i64 260, i1 false)
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %i.of = load ptr, ptr @img, align 8, !tbaa !16  ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 15528
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !150
  %i.oi = add nsw i32 %i.oh, 3
  %i.oj = sext i32 %i.oi to i64
  %i.ok = icmp slt i64 %indvars.iv87, %i.oj
  br i1 %i.ok, label %.preheader65, label %.preheader63.loopexit, !llvm.loop !279

.preheader63.loopexit:                            ; preds = %.preheader65
  %.pre106 = load ptr, ptr @rdopt, align 8, !tbaa !16
  br label %.preheader63

.preheader63:                                     ; preds = %.preheader63.loopexit, %bb.c
  %i.ol = phi ptr [ %i.of, %.preheader63.loopexit ], [ %i.ig, %bb.c ]
  %i.om = phi ptr [ %.pre106, %.preheader63.loopexit ], [ %i.ih, %bb.c ]
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 1552
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !250
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !23
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !89
  %i.or = getelementptr inbounds nuw i8, ptr %i.ol, i64 14168
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !237
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !23
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.oq, ptr noundef nonnull align 4 dereferenceable(72) %i.ou, i64 72, i1 false)
  %i.ov = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 1552
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !250
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !23
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !89
  %i.pb = load ptr, ptr @img, align 8, !tbaa !16
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 14168
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !237
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !23
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.pa, ptr noundef nonnull align 4 dereferenceable(72) %i.pg, i64 72, i1 false)
  %i.ph = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 1552
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !250
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !23
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !89
  %i.pn = load ptr, ptr @img, align 8, !tbaa !16
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 14168
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !237
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !23
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.pm, ptr noundef nonnull align 4 dereferenceable(72) %i.ps, i64 72, i1 false)
  %i.pt = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 1552
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !250
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !23
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !89
  %i.qa = load ptr, ptr @img, align 8, !tbaa !16
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 14168
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !237
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !23
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.pz, ptr noundef nonnull align 4 dereferenceable(72) %i.qg, i64 72, i1 false)
  %i.qh = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 1552
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !250
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !23
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !89
  %i.qn = load ptr, ptr @img, align 8, !tbaa !16
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 14168
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !237
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !23
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.qm, ptr noundef nonnull align 4 dereferenceable(72) %i.qs, i64 72, i1 false)
  %i.qt = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 1552
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !250
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !23
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !89
  %i.ra = load ptr, ptr @img, align 8, !tbaa !16
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 14168
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !237
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !23
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.qz, ptr noundef nonnull align 4 dereferenceable(72) %i.rg, i64 72, i1 false)
  %i.rh = load ptr, ptr @rdopt, align 8, !tbaa !16 ; 14 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 1568
  %i.rj = getelementptr inbounds nuw i8, ptr %i.fz, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ri, ptr noundef nonnull align 8 dereferenceable(16) %i.rj, i64 16, i1 false)
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 1584
  %i.rl = getelementptr inbounds nuw i8, ptr %i.fz, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rk, ptr noundef nonnull align 8 dereferenceable(16) %i.rl, i64 16, i1 false)
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rh, i64 1680
  %i.rn = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 6488 ; 10 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !44
  %i.rr = load ptr, ptr @img, align 8, !tbaa !16  ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 172 ; 11 uses
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr inbounds [8 x i8], ptr %i.rq, i64 %i.ru
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !45
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rr, i64 168 ; 10 uses
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds i8, ptr %i.rw, i64 %i.rz
  %i.sb = load i32, ptr %i.sa, align 1
  store i32 %i.sb, ptr %i.rm, align 4
  %i.sc = load ptr, ptr %i.ro, align 8, !tbaa !135 ; 2 uses
  %i.sd = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.se = sext i32 %i.sd to i64                   ; 2 uses
  br i1 %i.gb, label %.preheader.preheader, label %.preheader61.preheader

.preheader61.preheader:                           ; preds = %.preheader63
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rh, i64 1684
  %i.sg = load ptr, ptr %i.sc, align 8, !tbaa !44
  %i.sh = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr [8 x i8], ptr %i.sg, i64 %i.si
  %i.sk = getelementptr i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !45
  %i.sm = getelementptr inbounds i8, ptr %i.sl, i64 %i.se
  %i.sn = load i32, ptr %i.sm, align 1
  store i32 %i.sn, ptr %i.sf, align 4
  %i.so = getelementptr inbounds nuw i8, ptr %i.rh, i64 1688
  %i.sp = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !44
  %i.sr = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr [8 x i8], ptr %i.sq, i64 %i.ss
  %i.su = getelementptr i8, ptr %i.st, i64 16
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !45
  %i.sw = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds i8, ptr %i.sv, i64 %i.sx
  %i.sz = load i32, ptr %i.sy, align 1
  store i32 %i.sz, ptr %i.so, align 4
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rh, i64 1692
  %i.tb = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !44
  %i.td = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr [8 x i8], ptr %i.tc, i64 %i.te
  %i.tg = getelementptr i8, ptr %i.tf, i64 24
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !45
  %i.ti = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds i8, ptr %i.th, i64 %i.tj
  %i.tl = load i32, ptr %i.tk, align 1
  store i32 %i.tl, ptr %i.ta, align 4
  br label %.lr.ph78.preheader

.preheader.preheader:                             ; preds = %.preheader63
  %i.tm = getelementptr inbounds nuw i8, ptr %i.rh, i64 1696
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !44
  %i.tp = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr inbounds [8 x i8], ptr %i.to, i64 %i.tq
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !45
  %i.tt = getelementptr inbounds i8, ptr %i.ts, i64 %i.se
  %i.tu = load i32, ptr %i.tt, align 1
  store i32 %i.tu, ptr %i.tm, align 4
  %i.tv = getelementptr inbounds nuw i8, ptr %i.rh, i64 1684
  %i.tw = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !44
  %i.ty = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr [8 x i8], ptr %i.tx, i64 %i.tz
  %i.ub = getelementptr i8, ptr %i.ua, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !45
  %i.ud = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds i8, ptr %i.uc, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 1
  store i32 %i.ug, ptr %i.tv, align 4
  %i.uh = getelementptr inbounds nuw i8, ptr %i.rh, i64 1700
  %i.ui = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !44
  %i.ul = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr [8 x i8], ptr %i.uk, i64 %i.um
  %i.uo = getelementptr i8, ptr %i.un, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !45
  %i.uq = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds i8, ptr %i.up, i64 %i.ur
  %i.ut = load i32, ptr %i.us, align 1
  store i32 %i.ut, ptr %i.uh, align 4
  %i.uu = getelementptr inbounds nuw i8, ptr %i.rh, i64 1688
  %i.uv = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !44
  %i.ux = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr [8 x i8], ptr %i.uw, i64 %i.uy
  %i.va = getelementptr i8, ptr %i.uz, i64 16
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !45
  %i.vc = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds i8, ptr %i.vb, i64 %i.vd
  %i.vf = load i32, ptr %i.ve, align 1
  store i32 %i.vf, ptr %i.uu, align 4
  %i.vg = getelementptr inbounds nuw i8, ptr %i.rh, i64 1704
  %i.vh = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !44
  %i.vk = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr [8 x i8], ptr %i.vj, i64 %i.vl
  %i.vn = getelementptr i8, ptr %i.vm, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !45
  %i.vp = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds i8, ptr %i.vo, i64 %i.vq
  %i.vs = load i32, ptr %i.vr, align 1
  store i32 %i.vs, ptr %i.vg, align 4
  %i.vt = getelementptr inbounds nuw i8, ptr %i.rh, i64 1692
  %i.vu = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !44
  %i.vw = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr [8 x i8], ptr %i.vv, i64 %i.vx
  %i.vz = getelementptr i8, ptr %i.vy, i64 24
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !45
  %i.wb = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds i8, ptr %i.wa, i64 %i.wc
  %i.we = load i32, ptr %i.wd, align 1
  store i32 %i.we, ptr %i.vt, align 4
  %i.wf = getelementptr inbounds nuw i8, ptr %i.rh, i64 1708
  %i.wg = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !44
  %i.wj = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr [8 x i8], ptr %i.wi, i64 %i.wk
  %i.wm = getelementptr i8, ptr %i.wl, i64 24
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !45
  %i.wo = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.wp = sext i32 %i.wo to i64
  %i.wq = getelementptr inbounds i8, ptr %i.wn, i64 %i.wp
  %i.wr = load i32, ptr %i.wq, align 1
  store i32 %i.wr, ptr %i.wf, align 4
  %i.ws = getelementptr inbounds nuw i8, ptr %i.fz, i64 480
  %i.wt = load i16, ptr %i.ws, align 8, !tbaa !119
  %i.wu = load ptr, ptr @rdopt, align 8, !tbaa !16 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 1564
  store i16 %i.wt, ptr %i.wv, align 4, !tbaa !280
  %.pre107 = load ptr, ptr @img, align 8, !tbaa !16
  br label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %.preheader.preheader, %.preheader61.preheader
  %i.ww = phi ptr [ %i.rr, %.preheader61.preheader ], [ %.pre107, %.preheader.preheader ] ; 2 uses
  %i.wx = phi ptr [ %i.rh, %.preheader61.preheader ], [ %i.wu, %.preheader.preheader ] ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 1608
  %i.wz = getelementptr inbounds nuw i8, ptr %i.fz, i64 332
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wy, ptr noundef nonnull align 4 dereferenceable(16) %i.wz, i64 16, i1 false)
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 1624
  %i.xb = getelementptr inbounds nuw i8, ptr %i.fz, i64 348
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xa, ptr noundef nonnull align 4 dereferenceable(16) %i.xb, i64 16, i1 false)
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ww, i64 172
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !56
  %i.xe = sext i32 %i.xd to i64
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %.lr.ph78
  %indvars.iv102 = phi i64 [ %i.xe, %.lr.ph78.preheader ], [ %indvars.iv.next103, %.lr.ph78 ] ; 4 uses
  %i.xf = phi ptr [ %i.ww, %.lr.ph78.preheader ], [ %i.xt, %.lr.ph78 ]
  %i.xg = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 1600
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !261
  %i.xj = getelementptr inbounds [8 x i8], ptr %i.xi, i64 %indvars.iv102
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !45
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xf, i64 168
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !57
  %i.xn = sext i32 %i.xm to i64                   ; 2 uses
  %i.xo = getelementptr inbounds i8, ptr %i.xk, i64 %i.xn
  %i.xp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv102
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !45
  %i.xr = getelementptr inbounds i8, ptr %i.xq, i64 %i.xn
  %i.xs = load i32, ptr %i.xr, align 1
  store i32 %i.xs, ptr %i.xo, align 1
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1
  %i.xt = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 172
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !56
  %i.xw = add nsw i32 %i.xv, 3
  %i.xx = sext i32 %i.xw to i64
  %i.xy = icmp slt i64 %indvars.iv102, %i.xx
  br i1 %i.xy, label %.lr.ph78, label %._crit_edge, !llvm.loop !281

._crit_edge:                                      ; preds = %.lr.ph78
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @store_coding_state_cs_cm() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @cs_cm, align 8, !tbaa !16
  tail call void @store_coding_state(ptr noundef %i.a) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @reset_coding_state_cs_cm() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @cs_cm, align 8, !tbaa !16
  tail call void @reset_coding_state(ptr noundef %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @assign_enc_picture_params(i32 noundef %0, i8 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  switch i32 %0, label %.preheader [
    i32 1, label %bb.d
    i32 2, label %.preheader307
  ]

.preheader307:                                    ; preds = %bb.a
  %i.a = shl nsw i32 %2, 1                        ; 2 uses
  %i.b = icmp eq i8 %1, 1
  %i.c = sext i32 %4 to i64                       ; 8 uses
  %i.d = trunc i32 %4 to i8                       ; 4 uses
  %i.e = sext i32 %3 to i64                       ; 12 uses
  %.not285 = icmp eq i32 %6, 0                    ; 8 uses
  %i.f = icmp eq i8 %1, 0                         ; 4 uses
  %i.g = trunc i32 %5 to i8                       ; 8 uses
  %i.h = icmp sgt i32 %5, -1                      ; 8 uses
  %i.i = zext nneg i32 %5 to i64                  ; 16 uses
  %i.j = sext i32 %i.a to i64
  br label %bb.o

.preheader:                                       ; preds = %bb.a
  %i.k = shl nsw i32 %2, 1                        ; 11 uses
  %i.l = icmp eq i8 %1, 1
  %i.m = sext i32 %4 to i64                       ; 4 uses
  %i.n = sext i32 %0 to i64                       ; 6 uses
  %i.o = trunc i32 %4 to i8                       ; 2 uses
  %i.p = sext i32 %3 to i64                       ; 6 uses
  %.not = icmp eq i32 %6, 0                       ; 3 uses
  %i.q = icmp eq i8 %1, 0                         ; 2 uses
  %i.r = trunc i32 %5 to i8                       ; 4 uses
  %i.s = icmp sgt i32 %5, -1                      ; 4 uses
  %i.t = zext nneg i32 %5 to i64                  ; 8 uses
  br i1 %i.l, label %.preheader.split.us, label %.split330.preheader

.split330.preheader:                              ; preds = %.preheader
  %i.u = sext i32 %i.k to i64                     ; 3 uses
  %.pre435 = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.v = or disjoint i32 %i.k, 1
  %i.w = or disjoint i64 %i.u, 1                  ; 2 uses
  br label %.split330

.preheader.split.us:                              ; preds = %.preheader
  br i1 %.not, label %.split330.us.us.us.preheader, label %.split330.us.us.preheader

.split330.us.us.preheader:                        ; preds = %.preheader.split.us
  %i.x = sext i32 %i.k to i64                     ; 2 uses
  %i.y = or disjoint i32 %i.k, 1
  br label %.split330.us.us

.split330.us.us.us.preheader:                     ; preds = %.preheader.split.us
  %i.z = load ptr, ptr @img, align 8, !tbaa !16   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 172
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !56
  %i.ac = sext i32 %i.ab to i64                   ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !57
  %i.af = add i32 %i.k, %i.ae
  %i.ag = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6488
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !135
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ac
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !45
  %i.am = sext i32 %i.af to i64                   ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.am
  store i8 -1, ptr %i.an, align 1, !tbaa !46
  %i.ao = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 6496
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !141
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !142
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ac
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !144
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.am
  store i64 -1, ptr %i.au, align 8, !tbaa !147
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 6512
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !163
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !62
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ac
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.am
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.bb, align 2, !tbaa !68
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i16 0, ptr %i.bc, align 2, !tbaa !68
  %i.bd = load ptr, ptr @img, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 168
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !57
  %i.bg = or disjoint i32 %i.k, 1                 ; 4 uses
  %i.bh = add i32 %i.bg, %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 6488
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !135
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !44
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.ac
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !45
  %i.bn = sext i32 %i.bh to i64                   ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bn
  store i8 -1, ptr %i.bo, align 1, !tbaa !46
  %i.bp = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 6496
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !141
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !142
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.ac
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !144
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bn
  store i64 -1, ptr %i.bv, align 8, !tbaa !147
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 6512
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !163
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !62
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.ac
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.bn
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.cc, align 2, !tbaa !68
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i16 0, ptr %i.cd, align 2, !tbaa !68
  %i.ce = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 172
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !56
  %i.ch = add nsw i32 %i.cg, 1
  %i.ci = sext i32 %i.ch to i64                   ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 168
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !57
  %i.cl = add i32 %i.k, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 6488
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !135
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !44
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.ci
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !45
  %i.cr = sext i32 %i.cl to i64                   ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  store i8 -1, ptr %i.cs, align 1, !tbaa !46
  %i.ct = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 6496
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !141
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !142
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.ci
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !144
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.cr
  store i64 -1, ptr %i.cz, align 8, !tbaa !147
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 6512
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !163
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !62
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.ci
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.cr
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.dg, align 2, !tbaa !68
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  store i16 0, ptr %i.dh, align 2, !tbaa !68
  %i.di = load ptr, ptr @img, align 8, !tbaa !16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 168
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !57
  %i.dl = add i32 %i.bg, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ct, i64 6488
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !135
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !44
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ci
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !45
  %i.dr = sext i32 %i.dl to i64                   ; 3 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 %i.dr
  store i8 -1, ptr %i.ds, align 1, !tbaa !46
  %i.dt = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 6496
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !141
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !142
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ci
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !144
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dr
  store i64 -1, ptr %i.dz, align 8, !tbaa !147
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 6512
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !163
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !62
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ci
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.dr
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.eg, align 2, !tbaa !68
end_hunk_1
begin_hunk_2_@assign_enc_picture_params:bb.a
  store i8 -1, ptr %i.ia, align 1, !tbaa !46
  %i.ib = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 6496
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !141
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !142
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.gq
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !144
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.hz
  store i64 -1, ptr %i.ih, align 8, !tbaa !147
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ib, i64 6512
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !163
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !62
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %i.gq
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !64
  %i.in = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.hz
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.io, align 2, !tbaa !68
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  store i16 0, ptr %i.ip, align 2, !tbaa !68
  br label %.loopexit

.split330.us.us:                                  ; preds = %.split330.us.us.preheader, %.split332.us.us.split
  %indvars.iv414 = phi i64 [ 0, %.split330.us.us.preheader ], [ %indvars.iv.next415, %.split332.us.us.split ] ; 4 uses
  %i.iq = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 172
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !56
  %i.it = trunc nuw nsw i64 %indvars.iv414 to i32
  %i.iu = add nsw i32 %i.is, %i.it
  %i.iv = sext i32 %i.iu to i64                   ; 12 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 168
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !57
  %i.iy = add i32 %i.k, %i.ix
  %i.iz = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 6488
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !135
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !44
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.iv
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !45
  %i.jf = sext i32 %i.iy to i64                   ; 6 uses
  %i.jg = getelementptr inbounds i8, ptr %i.je, i64 %i.jf
  store i8 -1, ptr %i.jg, align 1, !tbaa !46
  %i.jh = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 6496
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !141
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !142
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.iv
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !144
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.jm, i64 %i.jf
  store i64 -1, ptr %i.jn, align 8, !tbaa !147
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 6512
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !163
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !62
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.iv
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.js, i64 %i.jf
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.ju, align 2, !tbaa !68
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 2
  store i16 0, ptr %i.jv, align 2, !tbaa !68
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jh, i64 6488
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !135
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !44
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.iv
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !45
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 %i.jf
  store i8 %i.r, ptr %i.kc, align 1, !tbaa !46
  %.pre437 = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 4 uses
  br i1 %i.s, label %bb.b, label %.thread294.us.us.1

bb.b:                                             ; preds = %.split330.us.us
  %i.kd = load ptr, ptr @img, align 8, !tbaa !16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 14384
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !55
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv414
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !58
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.kh, i64 %i.x
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !60
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !62
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.t
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.n
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !66 ; 2 uses
  %i.kq = getelementptr [264 x i8], ptr %.pre437, i64 %i.p
  %i.kr = getelementptr i8, ptr %i.kq, i64 288
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.t
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !147
  %i.ku = getelementptr inbounds nuw i8, ptr %.pre437, i64 6496
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !141
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !142
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.iv
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !144
  %i.la = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.jf
  store i64 %i.kt, ptr %i.la, align 8, !tbaa !147
  %i.lb = load i16, ptr %i.kp, align 2, !tbaa !68
  %i.lc = getelementptr inbounds nuw i8, ptr %.pre437, i64 6512
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !163
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !62
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.iv
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.lh, i64 %i.jf
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !66 ; 2 uses
  store i16 %i.lb, ptr %i.lj, align 2, !tbaa !68
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kp, i64 2
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !68
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  store i16 %i.ll, ptr %i.lm, align 2, !tbaa !68
  br label %.thread294.us.us.1

.thread294.us.us.1:                               ; preds = %bb.b, %.split330.us.us
  %i.ln = load ptr, ptr @img, align 8, !tbaa !16
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 168
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !57
  %i.lq = add i32 %i.y, %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %.pre437, i64 6488
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !135
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !44
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.iv
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !45
  %i.lw = sext i32 %i.lq to i64                   ; 6 uses
  %i.lx = getelementptr inbounds i8, ptr %i.lv, i64 %i.lw
  store i8 -1, ptr %i.lx, align 1, !tbaa !46
  %i.ly = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 6496
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !141
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !142
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.iv
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !144
  %i.me = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.lw
  store i64 -1, ptr %i.me, align 8, !tbaa !147
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ly, i64 6512
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !163
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !62
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.iv
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !64
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.lw
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.ml, align 2, !tbaa !68
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 2
  store i16 0, ptr %i.mm, align 2, !tbaa !68
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ly, i64 6488
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !135
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !44
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.mq, i64 %i.iv
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !45
  %i.mt = getelementptr inbounds i8, ptr %i.ms, i64 %i.lw
  store i8 %i.r, ptr %i.mt, align 1, !tbaa !46
  br i1 %i.s, label %bb.c, label %.split332.us.us.split

bb.c:                                             ; preds = %.thread294.us.us.1
  %i.mu = load ptr, ptr @img, align 8, !tbaa !16
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 14384
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !55
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv414
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !58
  %i.mz = getelementptr [8 x i8], ptr %i.my, i64 %i.x
  %i.na = getelementptr i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !60
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !62
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.t
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.n
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !66 ; 2 uses
  %i.ni = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.nj = getelementptr [264 x i8], ptr %i.ni, i64 %i.p
  %i.nk = getelementptr i8, ptr %i.nj, i64 288
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.t
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !147
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 6496
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !141
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !142
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %i.iv
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !144
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.ns, i64 %i.lw
  store i64 %i.nm, ptr %i.nt, align 8, !tbaa !147
  %i.nu = load i16, ptr %i.nh, align 2, !tbaa !68
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ni, i64 6512
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !163
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !62
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.ny, i64 %i.iv
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !64
  %i.ob = getelementptr inbounds [8 x i8], ptr %i.oa, i64 %i.lw
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !66 ; 2 uses
  store i16 %i.nu, ptr %i.oc, align 2, !tbaa !68
  %i.od = getelementptr inbounds nuw i8, ptr %i.nh, i64 2
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !68
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 2
  store i16 %i.oe, ptr %i.of, align 2, !tbaa !68
  br label %.split332.us.us.split

.split332.us.us.split:                            ; preds = %bb.c, %.thread294.us.us.1
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next415, 4
  br i1 %exitcond417.not, label %.loopexit, label %.split330.us.us, !llvm.loop !282

bb.d:                                             ; preds = %bb.a
  %i.og = icmp eq i8 %1, 1
  %i.oh = load ptr, ptr @img, align 8, !tbaa !16  ; 7 uses
  br i1 %i.og, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 172
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !56 ; 3 uses
  %i.ok = and i32 %2, 2                           ; 2 uses
  %i.ol = add nsw i32 %i.oj, %i.ok
  %i.om = or disjoint i32 %i.ok, 4                ; 2 uses
  %i.on = add i32 %i.om, %i.oj
  %i.oo = icmp slt i32 %i.ol, %i.on
  br i1 %i.oo, label %.lr.ph, label %.loopexit302

.lr.ph:                                           ; preds = %bb.e
  %i.op = shl i32 %2, 1
  %i.oq = and i32 %i.op, 2                        ; 2 uses
  %.mask = shl i32 %2, 4
  %i.or = and i32 %.mask, 16
  %i.os = zext nneg i32 %i.or to i64
  %i.ot = trunc i32 %2 to i1
  %i.ou = select i1 %i.ot, i32 -2, i32 0
  %i.ov = add nuw nsw i32 %i.oq, 3
  %.lobit = and i32 %2, 2
  %i.ow = zext nneg i32 %.lobit to i64
  %i.ox = sext i32 %i.oj to i64
  %i.oy = add nsw i64 %i.ow, %i.ox
  %.pre430 = load ptr, ptr @enc_picture, align 8, !tbaa !81
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.oz = phi ptr [ %.pre430, %.lr.ph ], [ %i.pt, %bb.f ]
  %indvars.iv372 = phi i64 [ %i.oy, %.lr.ph ], [ %indvars.iv.next373, %bb.f ] ; 4 uses
  %i.pa = phi ptr [ %i.oh, %.lr.ph ], [ %i.qh, %bb.f ]
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 168
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !57 ; 4 uses
  %i.pd = add nsw i32 %i.pc, %i.oq                ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oz, i64 6488
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !135
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !44
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %indvars.iv372
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !45
  %i.pj = sext i32 %i.pd to i64                   ; 2 uses
  %i.pk = getelementptr inbounds i8, ptr %i.pi, i64 %i.pj
  store i32 -1, ptr %i.pk, align 1
  %i.pl = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 6512
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !163
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !62
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.po, i64 %indvars.iv372
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !64
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.pq, i64 %i.pj
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ps, i8 0, i64 16, i1 false)
  %i.pt = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 6496
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !141
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !142
  %i.px = getelementptr inbounds [8 x i8], ptr %i.pw, i64 %indvars.iv372
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !144
  %scevgep = getelementptr i8, ptr %i.py, i64 %i.os
  %i.pz = sext i32 %i.pc to i64
  %i.qa = shl nsw i64 %i.pz, 3
  %scevgep368 = getelementptr i8, ptr %scevgep, i64 %i.qa
  %i.qb = add i32 %i.ov, %i.pc
  %smax = tail call i32 @llvm.smax.i32(i32 %i.qb, i32 %i.pd)
  %i.qc = add i32 %i.ou, %smax
  %i.qd = sub i32 %i.qc, %i.pc
  %i.qe = zext i32 %i.qd to i64
  %i.qf = shl nuw nsw i64 %i.qe, 3
  %i.qg = add nuw nsw i64 %i.qf, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep368, i8 -1, i64 %i.qg, i1 false), !tbaa !147
  %indvars.iv.next373 = add nsw i64 %indvars.iv372, 1 ; 2 uses
  %i.qh = load ptr, ptr @img, align 8, !tbaa !16  ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 172
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !56
  %i.qk = add i32 %i.om, %i.qj
  %i.ql = sext i32 %i.qk to i64
  %i.qm = icmp slt i64 %indvars.iv.next373, %i.ql
  br i1 %i.qm, label %bb.f, label %.loopexit302, !llvm.loop !283

bb.g:                                             ; preds = %bb.d
  %i.qn = getelementptr inbounds nuw i8, ptr %i.oh, i64 14410
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !68
  %.not286 = icmp eq i16 %i.qo, 0
  %i.qp = and i32 %2, 2                           ; 5 uses
  %i.qq = shl i32 %2, 1
  %i.qr = and i32 %i.qq, 2                        ; 5 uses
  br i1 %.not286, label %.preheader303, label %.preheader305

.preheader305:                                    ; preds = %bb.g
  %i.qs = sext i32 %3 to i64
  %.pre429 = load ptr, ptr @enc_picture, align 8, !tbaa !81
  br label %bb.h

.preheader303:                                    ; preds = %bb.g
  %i.qt = trunc i32 %4 to i8                      ; 4 uses
  %i.qu = sext i32 %4 to i64                      ; 20 uses
  %i.qv = sext i32 %3 to i64                      ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.oh, i64 172
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !56
  %i.qy = add i32 %i.qp, %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.oh, i64 168
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !57
  %i.rb = add nsw i32 %i.ra, %i.qr
  %i.rc = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 6488
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !135
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !44
  %i.rg = sext i32 %i.qy to i64                   ; 3 uses
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.rf, i64 %i.rg
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !45
  %i.rj = sext i32 %i.rb to i64                   ; 6 uses
  %i.rk = getelementptr inbounds i8, ptr %i.ri, i64 %i.rj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.rk, i8 %i.qt, i64 4, i1 false)
  %i.rl = load ptr, ptr @img, align 8, !tbaa !16  ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 14384
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !55
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !58 ; 4 uses
  %i.rp = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.rr = getelementptr inbounds [264 x i8], ptr %i.rq, i64 %i.qv
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.rr, i64 %i.qu ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 6496
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !141
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !142
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.rv, i64 %i.rg
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !144 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rp, i64 6512
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !163
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !62
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.sa, i64 %i.rg
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !64 ; 4 uses
  %i.sd = load ptr, ptr %i.ro, align 8, !tbaa !60
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !62
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.se, i64 %i.qu
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !64
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !66 ; 2 uses
  %i.sj = load i64, ptr %i.rs, align 8, !tbaa !147 ; 2 uses
  %i.sk = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.rj
  store i64 %i.sj, ptr %i.sk, align 8, !tbaa !147
  %i.sl = load i16, ptr %i.si, align 2, !tbaa !68
  %i.sm = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.rj
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !66 ; 2 uses
  store i16 %i.sl, ptr %i.sn, align 2, !tbaa !68
  %i.so = getelementptr inbounds nuw i8, ptr %i.si, i64 2
  %i.sp = load i16, ptr %i.so, align 2, !tbaa !68
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 2
  store i16 %i.sp, ptr %i.sq, align 2, !tbaa !68
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !60
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !62
  %i.su = getelementptr inbounds [8 x i8], ptr %i.st, i64 %i.qu
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !64
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !66 ; 2 uses
  %i.sy = add nsw i64 %i.rj, 1                    ; 2 uses
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.sy
  store i64 %i.sj, ptr %i.sz, align 8, !tbaa !147
  %i.ta = load i16, ptr %i.sx, align 2, !tbaa !68
  %i.tb = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.sy
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !66 ; 2 uses
  store i16 %i.ta, ptr %i.tc, align 2, !tbaa !68
  %i.td = getelementptr inbounds nuw i8, ptr %i.sx, i64 2
  %i.te = load i16, ptr %i.td, align 2, !tbaa !68
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 2
  store i16 %i.te, ptr %i.tf, align 2, !tbaa !68
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !60
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !62
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.ti, i64 %i.qu
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !64
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !66 ; 2 uses
  %i.tn = load i64, ptr %i.rs, align 8, !tbaa !147 ; 2 uses
  %i.to = add nsw i64 %i.rj, 2                    ; 2 uses
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.to
  store i64 %i.tn, ptr %i.tp, align 8, !tbaa !147
  %i.tq = load i16, ptr %i.tm, align 2, !tbaa !68
  %i.tr = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.to
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !66 ; 2 uses
  store i16 %i.tq, ptr %i.ts, align 2, !tbaa !68
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tm, i64 2
  %i.tu = load i16, ptr %i.tt, align 2, !tbaa !68
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 2
  store i16 %i.tu, ptr %i.tv, align 2, !tbaa !68
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !60
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !62
  %i.tz = getelementptr inbounds [8 x i8], ptr %i.ty, i64 %i.qu
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !64
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !66 ; 2 uses
  %i.ud = add nsw i64 %i.rj, 3                    ; 2 uses
  %i.ue = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.ud
  store i64 %i.tn, ptr %i.ue, align 8, !tbaa !147
  %i.uf = load i16, ptr %i.uc, align 2, !tbaa !68
  %i.ug = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.ud
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !66 ; 2 uses
  store i16 %i.uf, ptr %i.uh, align 2, !tbaa !68
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uc, i64 2
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !68
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 2
  store i16 %i.uj, ptr %i.uk, align 2, !tbaa !68
  %i.ul = getelementptr inbounds nuw i8, ptr %i.rl, i64 172
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !56
  %i.un = or disjoint i32 %i.qp, 1
  %i.uo = add i32 %i.un, %i.um
  %i.up = getelementptr inbounds nuw i8, ptr %i.rl, i64 168
  %i.uq = load i32, ptr %i.up, align 8, !tbaa !57
  %i.ur = add nsw i32 %i.uq, %i.qr
  %i.us = getelementptr inbounds nuw i8, ptr %i.rp, i64 6488
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !135
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !44
  %i.uv = sext i32 %i.uo to i64                   ; 3 uses
  %i.uw = getelementptr inbounds [8 x i8], ptr %i.uu, i64 %i.uv
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !45
  %i.uy = sext i32 %i.ur to i64                   ; 6 uses
  %i.uz = getelementptr inbounds i8, ptr %i.ux, i64 %i.uy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.uz, i8 %i.qt, i64 4, i1 false)
  %i.va = load ptr, ptr @img, align 8, !tbaa !16  ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 14384
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !55
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !58 ; 4 uses
  %i.vf = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.vh = getelementptr inbounds [264 x i8], ptr %i.vg, i64 %i.qv
  %i.vi = getelementptr inbounds [8 x i8], ptr %i.vh, i64 %i.qu ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 6496
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !141
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !142
  %i.vm = getelementptr inbounds [8 x i8], ptr %i.vl, i64 %i.uv
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !144 ; 4 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vf, i64 6512
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !163
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !62
  %i.vr = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %i.uv
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !64 ; 4 uses
  %i.vt = load ptr, ptr %i.ve, align 8, !tbaa !60
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !62
  %i.vv = getelementptr inbounds [8 x i8], ptr %i.vu, i64 %i.qu
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !64
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !66 ; 2 uses
  %i.vz = load i64, ptr %i.vi, align 8, !tbaa !147 ; 2 uses
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.vn, i64 %i.uy
  store i64 %i.vz, ptr %i.wa, align 8, !tbaa !147
  %i.wb = load i16, ptr %i.vy, align 2, !tbaa !68
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.vs, i64 %i.uy
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !66 ; 2 uses
  store i16 %i.wb, ptr %i.wd, align 2, !tbaa !68
  %i.we = getelementptr inbounds nuw i8, ptr %i.vy, i64 2
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !68
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wd, i64 2
  store i16 %i.wf, ptr %i.wg, align 2, !tbaa !68
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !60
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !62
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.wj, i64 %i.qu
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !64
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !66 ; 2 uses
  %i.wo = add nsw i64 %i.uy, 1                    ; 2 uses
  %i.wp = getelementptr inbounds [8 x i8], ptr %i.vn, i64 %i.wo
  store i64 %i.vz, ptr %i.wp, align 8, !tbaa !147
  %i.wq = load i16, ptr %i.wn, align 2, !tbaa !68
  %i.wr = getelementptr inbounds [8 x i8], ptr %i.vs, i64 %i.wo
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !66 ; 2 uses
  store i16 %i.wq, ptr %i.ws, align 2, !tbaa !68
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wn, i64 2
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !68
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ws, i64 2
  store i16 %i.wu, ptr %i.wv, align 2, !tbaa !68
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !60
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !62
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.wy, i64 %i.qu
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !64
end_hunk_2
begin_hunk_3_@assign_enc_picture_params:bb.a
  %i.ade = load i64, ptr %i.acn, align 8, !tbaa !147 ; 2 uses
  %i.adf = getelementptr inbounds [8 x i8], ptr %i.acs, i64 %i.acd
  store i64 %i.ade, ptr %i.adf, align 8, !tbaa !147
  %i.adg = load i16, ptr %i.add, align 2, !tbaa !68
  %i.adh = getelementptr inbounds [8 x i8], ptr %i.acx, i64 %i.acd
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !66 ; 2 uses
  store i16 %i.adg, ptr %i.adi, align 2, !tbaa !68
  %i.adj = getelementptr inbounds nuw i8, ptr %i.add, i64 2
  %i.adk = load i16, ptr %i.adj, align 2, !tbaa !68
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adi, i64 2
  store i16 %i.adk, ptr %i.adl, align 2, !tbaa !68
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !60
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !62
  %i.adp = getelementptr inbounds [8 x i8], ptr %i.ado, i64 %i.qu
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !64
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !66 ; 2 uses
  %i.adt = add nsw i64 %i.acd, 1                  ; 2 uses
  %i.adu = getelementptr inbounds [8 x i8], ptr %i.acs, i64 %i.adt
  store i64 %i.ade, ptr %i.adu, align 8, !tbaa !147
  %i.adv = load i16, ptr %i.ads, align 2, !tbaa !68
  %i.adw = getelementptr inbounds [8 x i8], ptr %i.acx, i64 %i.adt
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !66 ; 2 uses
  store i16 %i.adv, ptr %i.adx, align 2, !tbaa !68
  %i.ady = getelementptr inbounds nuw i8, ptr %i.ads, i64 2
  %i.adz = load i16, ptr %i.ady, align 2, !tbaa !68
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adx, i64 2
  store i16 %i.adz, ptr %i.aea, align 2, !tbaa !68
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !60
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !62
  %i.aee = getelementptr inbounds [8 x i8], ptr %i.aed, i64 %i.qu
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !64
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !66 ; 2 uses
  %i.aei = load i64, ptr %i.acn, align 8, !tbaa !147 ; 2 uses
  %i.aej = add nsw i64 %i.acd, 2                  ; 2 uses
  %i.aek = getelementptr inbounds [8 x i8], ptr %i.acs, i64 %i.aej
  store i64 %i.aei, ptr %i.aek, align 8, !tbaa !147
  %i.ael = load i16, ptr %i.aeh, align 2, !tbaa !68
  %i.aem = getelementptr inbounds [8 x i8], ptr %i.acx, i64 %i.aej
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !66 ; 2 uses
  store i16 %i.ael, ptr %i.aen, align 2, !tbaa !68
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeh, i64 2
  %i.aep = load i16, ptr %i.aeo, align 2, !tbaa !68
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aen, i64 2
  store i16 %i.aep, ptr %i.aeq, align 2, !tbaa !68
  %i.aer = getelementptr inbounds nuw i8, ptr %i.acj, i64 24
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !60
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !62
  %i.aeu = getelementptr inbounds [8 x i8], ptr %i.aet, i64 %i.qu
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !64
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 8
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !66 ; 2 uses
  %i.aey = add nsw i64 %i.acd, 3                  ; 2 uses
  %i.aez = getelementptr inbounds [8 x i8], ptr %i.acs, i64 %i.aey
  store i64 %i.aei, ptr %i.aez, align 8, !tbaa !147
  %i.afa = load i16, ptr %i.aex, align 2, !tbaa !68
  %i.afb = getelementptr inbounds [8 x i8], ptr %i.acx, i64 %i.aey
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !66 ; 2 uses
  store i16 %i.afa, ptr %i.afc, align 2, !tbaa !68
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aex, i64 2
  %i.afe = load i16, ptr %i.afd, align 2, !tbaa !68
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afc, i64 2
  store i16 %i.afe, ptr %i.aff, align 2, !tbaa !68
  br label %.loopexit302

bb.h:                                             ; preds = %.preheader305, %bb.h
  %i.afg = phi ptr [ %.pre429, %.preheader305 ], [ %i.aga, %bb.h ]
  %i.afh = phi ptr [ %i.oh, %.preheader305 ], [ %i.afy, %bb.h ] ; 2 uses
  %indvars.iv356 = phi i64 [ 0, %.preheader305 ], [ %indvars.iv.next357, %bb.h ] ; 6 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 172
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !56
  %i.afk = trunc i64 %indvars.iv356 to i32
  %i.afl = add i32 %i.qp, %i.afk
  %i.afm = add i32 %i.afl, %i.afj
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afh, i64 168
  %i.afo = load i32, ptr %i.afn, align 8, !tbaa !57
  %i.afp = add nsw i32 %i.afo, %i.qr
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afg, i64 6488
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !135
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !44
  %i.aft = sext i32 %i.afm to i64                 ; 3 uses
  %i.afu = getelementptr inbounds [8 x i8], ptr %i.afs, i64 %i.aft
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !45
  %i.afw = sext i32 %i.afp to i64                 ; 6 uses
  %i.afx = getelementptr inbounds i8, ptr %i.afv, i64 %i.afw
  store i32 0, ptr %i.afx, align 1
  %i.afy = load ptr, ptr @img, align 8, !tbaa !16 ; 5 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 14410 ; 4 uses
  %i.aga = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 4 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 24
  %i.agc = getelementptr inbounds [264 x i8], ptr %i.agb, i64 %i.qs ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.aga, i64 6496
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !141
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !142
  %i.agg = getelementptr inbounds [8 x i8], ptr %i.agf, i64 %i.aft
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !144 ; 4 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.aga, i64 6512
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !163
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !62
  %i.agl = getelementptr inbounds [8 x i8], ptr %i.agk, i64 %i.aft
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !64 ; 4 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.afy, i64 14400 ; 4 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.afy, i64 14392 ; 4 uses
  %i.agp = load i16, ptr %i.afz, align 2, !tbaa !68
  %i.agq = icmp eq i16 %i.agp, 1
  %spec.select = select i1 %i.agq, ptr %i.ago, ptr %i.agn
  %.pn438.in = load ptr, ptr %spec.select, align 8, !tbaa !165
  %.pn438 = load ptr, ptr %.pn438.in, align 8, !tbaa !58
  %.pn.in.in.in = getelementptr inbounds nuw [8 x i8], ptr %.pn438, i64 %indvars.iv356
  %.pn.in.in = load ptr, ptr %.pn.in.in.in, align 8, !tbaa !60
  %.pn.in = load ptr, ptr %.pn.in.in, align 8, !tbaa !62
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !64
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.agr = load ptr, ptr %.in, align 8, !tbaa !66 ; 2 uses
  %i.ags = load i64, ptr %i.agc, align 8, !tbaa !147 ; 2 uses
  %i.agt = getelementptr inbounds [8 x i8], ptr %i.agh, i64 %i.afw
  store i64 %i.ags, ptr %i.agt, align 8, !tbaa !147
  %i.agu = load i16, ptr %i.agr, align 2, !tbaa !68
  %i.agv = getelementptr inbounds [8 x i8], ptr %i.agm, i64 %i.afw
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !66 ; 2 uses
  store i16 %i.agu, ptr %i.agw, align 2, !tbaa !68
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agr, i64 2
  %i.agy = load i16, ptr %i.agx, align 2, !tbaa !68
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agw, i64 2
  store i16 %i.agy, ptr %i.agz, align 2, !tbaa !68
  %i.aha = load i16, ptr %i.afz, align 2, !tbaa !68
  %i.ahb = icmp eq i16 %i.aha, 1
  %.pn440.in = select i1 %i.ahb, ptr %i.ago, ptr %i.agn
  %.pn440 = load ptr, ptr %.pn440.in, align 8, !tbaa !165
  %.pn439.in = getelementptr inbounds nuw i8, ptr %.pn440, i64 8
  %.pn439 = load ptr, ptr %.pn439.in, align 8, !tbaa !58
  %.pn.in.in.in.1 = getelementptr inbounds nuw [8 x i8], ptr %.pn439, i64 %indvars.iv356
  %.pn.in.in.1 = load ptr, ptr %.pn.in.in.in.1, align 8, !tbaa !60
  %.pn.in.1 = load ptr, ptr %.pn.in.in.1, align 8, !tbaa !62
  %.pn.1 = load ptr, ptr %.pn.in.1, align 8, !tbaa !64
  %.in.1 = getelementptr inbounds nuw i8, ptr %.pn.1, i64 8
  %i.ahc = load ptr, ptr %.in.1, align 8, !tbaa !66 ; 2 uses
  %i.ahd = add nsw i64 %i.afw, 1                  ; 2 uses
  %i.ahe = getelementptr inbounds [8 x i8], ptr %i.agh, i64 %i.ahd
  store i64 %i.ags, ptr %i.ahe, align 8, !tbaa !147
  %i.ahf = load i16, ptr %i.ahc, align 2, !tbaa !68
  %i.ahg = getelementptr inbounds [8 x i8], ptr %i.agm, i64 %i.ahd
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !66 ; 2 uses
  store i16 %i.ahf, ptr %i.ahh, align 2, !tbaa !68
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahc, i64 2
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !68
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahh, i64 2
  store i16 %i.ahj, ptr %i.ahk, align 2, !tbaa !68
  %i.ahl = load i16, ptr %i.afz, align 2, !tbaa !68
  %i.ahm = icmp eq i16 %i.ahl, 1
  %.pn442.in = select i1 %i.ahm, ptr %i.ago, ptr %i.agn
  %.pn442 = load ptr, ptr %.pn442.in, align 8, !tbaa !165
  %.pn441.in = getelementptr inbounds nuw i8, ptr %.pn442, i64 16
  %.pn441 = load ptr, ptr %.pn441.in, align 8, !tbaa !58
  %.pn.in.in.in.2 = getelementptr inbounds nuw [8 x i8], ptr %.pn441, i64 %indvars.iv356
  %.pn.in.in.2 = load ptr, ptr %.pn.in.in.in.2, align 8, !tbaa !60
  %.pn.in.2 = load ptr, ptr %.pn.in.in.2, align 8, !tbaa !62
  %.pn.2 = load ptr, ptr %.pn.in.2, align 8, !tbaa !64
  %.in.2 = getelementptr inbounds nuw i8, ptr %.pn.2, i64 8
  %i.ahn = load ptr, ptr %.in.2, align 8, !tbaa !66 ; 2 uses
  %i.aho = load i64, ptr %i.agc, align 8, !tbaa !147 ; 2 uses
  %i.ahp = add nsw i64 %i.afw, 2                  ; 2 uses
  %i.ahq = getelementptr inbounds [8 x i8], ptr %i.agh, i64 %i.ahp
  store i64 %i.aho, ptr %i.ahq, align 8, !tbaa !147
  %i.ahr = load i16, ptr %i.ahn, align 2, !tbaa !68
  %i.ahs = getelementptr inbounds [8 x i8], ptr %i.agm, i64 %i.ahp
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !66 ; 2 uses
  store i16 %i.ahr, ptr %i.aht, align 2, !tbaa !68
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahn, i64 2
  %i.ahv = load i16, ptr %i.ahu, align 2, !tbaa !68
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aht, i64 2
  store i16 %i.ahv, ptr %i.ahw, align 2, !tbaa !68
  %i.ahx = load i16, ptr %i.afz, align 2, !tbaa !68
  %i.ahy = icmp eq i16 %i.ahx, 1
  %.pn444.in = select i1 %i.ahy, ptr %i.ago, ptr %i.agn
  %.pn444 = load ptr, ptr %.pn444.in, align 8, !tbaa !165
  %.pn443.in = getelementptr inbounds nuw i8, ptr %.pn444, i64 24
  %.pn443 = load ptr, ptr %.pn443.in, align 8, !tbaa !58
  %.pn.in.in.in.3 = getelementptr inbounds nuw [8 x i8], ptr %.pn443, i64 %indvars.iv356
  %.pn.in.in.3 = load ptr, ptr %.pn.in.in.in.3, align 8, !tbaa !60
  %.pn.in.3 = load ptr, ptr %.pn.in.in.3, align 8, !tbaa !62
  %.pn.3 = load ptr, ptr %.pn.in.3, align 8, !tbaa !64
  %.in.3 = getelementptr inbounds nuw i8, ptr %.pn.3, i64 8
  %i.ahz = load ptr, ptr %.in.3, align 8, !tbaa !66 ; 2 uses
  %i.aia = add nsw i64 %i.afw, 3                  ; 2 uses
  %i.aib = getelementptr inbounds [8 x i8], ptr %i.agh, i64 %i.aia
  store i64 %i.aho, ptr %i.aib, align 8, !tbaa !147
  %i.aic = load i16, ptr %i.ahz, align 2, !tbaa !68
  %i.aid = getelementptr inbounds [8 x i8], ptr %i.agm, i64 %i.aia
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !66 ; 2 uses
  store i16 %i.aic, ptr %i.aie, align 2, !tbaa !68
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahz, i64 2
  %i.aig = load i16, ptr %i.aif, align 2, !tbaa !68
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aie, i64 2
  store i16 %i.aig, ptr %i.aih, align 2, !tbaa !68
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %exitcond359.not = icmp eq i64 %indvars.iv.next357, 4
  br i1 %exitcond359.not, label %.loopexit302, label %bb.h, !llvm.loop !284

.loopexit302:                                     ; preds = %bb.h, %bb.f, %.preheader303, %bb.e
  %i.aii = phi ptr [ %i.qh, %bb.f ], [ %i.acf, %.preheader303 ], [ %i.oh, %bb.e ], [ %i.afy, %bb.h ] ; 2 uses
  %.not287 = icmp eq i32 %6, 0
  br i1 %.not287, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.loopexit302
  %i.aij = icmp eq i8 %1, 0
  %i.aik = and i32 %2, 2                          ; 4 uses
  br i1 %i.aij, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ail = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 172
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !56 ; 3 uses
  %i.aio = add nsw i32 %i.ain, %i.aik
  %i.aip = or disjoint i32 %i.aik, 4              ; 2 uses
  %i.aiq = add i32 %i.aip, %i.ain
  %i.air = icmp slt i32 %i.aio, %i.aiq
  br i1 %i.air, label %.lr.ph328, label %.loopexit

.lr.ph328:                                        ; preds = %bb.j
  %i.ais = shl i32 %2, 1
  %i.ait = and i32 %i.ais, 2                      ; 2 uses
  %.mask452 = shl i32 %2, 4
  %i.aiu = and i32 %.mask452, 16
  %i.aiv = zext nneg i32 %i.aiu to i64
  %i.aiw = trunc i32 %2 to i1
  %i.aix = select i1 %i.aiw, i32 -2, i32 0
  %i.aiy = add nuw nsw i32 %i.ait, 3
  %.lobit453 = and i32 %2, 2
  %i.aiz = zext nneg i32 %.lobit453 to i64
  %i.aja = sext i32 %i.ain to i64
  %i.ajb = add nsw i64 %i.aiz, %i.aja
  %.pre433 = load ptr, ptr @enc_picture, align 8, !tbaa !81
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph328, %bb.k
  %i.ajc = phi ptr [ %.pre433, %.lr.ph328 ], [ %i.ajy, %bb.k ]
  %indvars.iv401 = phi i64 [ %i.ajb, %.lr.ph328 ], [ %indvars.iv.next402, %bb.k ] ; 4 uses
  %i.ajd = phi ptr [ %i.ail, %.lr.ph328 ], [ %i.akn, %bb.k ]
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 168
  %i.ajf = load i32, ptr %i.aje, align 8, !tbaa !57 ; 4 uses
  %i.ajg = add nsw i32 %i.ajf, %i.ait             ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajc, i64 6488
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !135
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !44
  %i.ajl = getelementptr inbounds [8 x i8], ptr %i.ajk, i64 %indvars.iv401
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !45
  %i.ajn = sext i32 %i.ajg to i64                 ; 2 uses
  %i.ajo = getelementptr inbounds i8, ptr %i.ajm, i64 %i.ajn
  store i32 -1, ptr %i.ajo, align 1
  %i.ajp = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 6512
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !163
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !62
  %i.aju = getelementptr inbounds [8 x i8], ptr %i.ajt, i64 %indvars.iv401
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !64
  %i.ajw = getelementptr inbounds [8 x i8], ptr %i.ajv, i64 %i.ajn
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ajx, i8 0, i64 16, i1 false)
  %i.ajy = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 6496
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !141
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !142
  %i.akd = getelementptr inbounds [8 x i8], ptr %i.akc, i64 %indvars.iv401
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !144
  %scevgep395 = getelementptr i8, ptr %i.ake, i64 %i.aiv
  %i.akf = sext i32 %i.ajf to i64
  %i.akg = shl nsw i64 %i.akf, 3
  %scevgep396 = getelementptr i8, ptr %scevgep395, i64 %i.akg
  %i.akh = add i32 %i.aiy, %i.ajf
  %smax397 = tail call i32 @llvm.smax.i32(i32 %i.akh, i32 %i.ajg)
  %i.aki = add i32 %i.aix, %smax397
  %i.akj = sub i32 %i.aki, %i.ajf
  %i.akk = zext i32 %i.akj to i64
  %i.akl = shl nuw nsw i64 %i.akk, 3
  %i.akm = add nuw nsw i64 %i.akl, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep396, i8 -1, i64 %i.akm, i1 false), !tbaa !147
  %indvars.iv.next402 = add nsw i64 %indvars.iv401, 1 ; 2 uses
  %i.akn = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 172
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !56
  %i.akq = add i32 %i.aip, %i.akp
  %i.akr = sext i32 %i.akq to i64
  %i.aks = icmp slt i64 %indvars.iv.next402, %i.akr
  br i1 %i.aks, label %bb.k, label %.loopexit, !llvm.loop !285

bb.l:                                             ; preds = %bb.i
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aii, i64 14410
  %i.aku = load i16, ptr %i.akt, align 2, !tbaa !68
  %.not288 = icmp eq i16 %i.aku, 0
  %i.akv = shl i32 %2, 1
  %i.akw = and i32 %i.akv, 2                      ; 2 uses
  br i1 %.not288, label %.preheader298, label %.preheader300

.preheader300:                                    ; preds = %bb.l
  %i.akx = sext i32 %3 to i64
  %.pre431 = load ptr, ptr @enc_picture, align 8, !tbaa !81
  br label %bb.m

.preheader298:                                    ; preds = %bb.l
  %i.aky = trunc i32 %5 to i8
  %i.akz = sext i32 %3 to i64
  %i.ala = sext i32 %5 to i64                     ; 5 uses
  %i.alb = icmp sgt i32 %5, -1
  %.pre432 = load ptr, ptr @enc_picture, align 8, !tbaa !81
  br label %bb.n

bb.m:                                             ; preds = %.preheader300, %bb.m
  %i.alc = phi ptr [ %.pre431, %.preheader300 ], [ %i.alx, %bb.m ]
  %i.ald = phi ptr [ %i.aii, %.preheader300 ], [ %i.alv, %bb.m ] ; 2 uses
  %indvars.iv379 = phi i64 [ 0, %.preheader300 ], [ %indvars.iv.next380, %bb.m ] ; 6 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 172
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !56
  %i.alg = trunc i64 %indvars.iv379 to i32
  %i.alh = add i32 %i.aik, %i.alg
  %i.ali = add i32 %i.alh, %i.alf
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ald, i64 168
  %i.alk = load i32, ptr %i.alj, align 8, !tbaa !57
  %i.all = add nsw i32 %i.alk, %i.akw
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alc, i64 6488
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !135
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 8
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !44
  %i.alq = sext i32 %i.ali to i64                 ; 3 uses
  %i.alr = getelementptr inbounds [8 x i8], ptr %i.alp, i64 %i.alq
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !45
  %i.alt = sext i32 %i.all to i64                 ; 6 uses
  %i.alu = getelementptr inbounds i8, ptr %i.als, i64 %i.alt
  store i32 0, ptr %i.alu, align 1
  %i.alv = load ptr, ptr @img, align 8, !tbaa !16 ; 4 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 14410 ; 4 uses
  %i.alx = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 4 uses
  %i.aly = getelementptr [264 x i8], ptr %i.alx, i64 %i.akx
  %i.alz = getelementptr i8, ptr %i.aly, i64 288  ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alx, i64 6496
  %i.amb = load ptr, ptr %i.ama, align 8, !tbaa !141
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 8
  %i.amd = load ptr, ptr %i.amc, align 8, !tbaa !142
  %i.ame = getelementptr inbounds [8 x i8], ptr %i.amd, i64 %i.alq
  %i.amf = load ptr, ptr %i.ame, align 8, !tbaa !144 ; 4 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alx, i64 6512
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !163
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 8
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !62
  %i.amk = getelementptr inbounds [8 x i8], ptr %i.amj, i64 %i.alq
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !64 ; 4 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.alv, i64 14400 ; 4 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.alv, i64 14392 ; 4 uses
  %i.amo = load i16, ptr %i.alw, align 2, !tbaa !68
  %i.amp = icmp eq i16 %i.amo, 1
  %spec.select461 = select i1 %i.amp, ptr %i.amn, ptr %i.amm
  %.pn445.in = load ptr, ptr %spec.select461, align 8, !tbaa !165
  %.pn445 = load ptr, ptr %.pn445.in, align 8, !tbaa !58
  %.pn291.in = getelementptr inbounds nuw [8 x i8], ptr %.pn445, i64 %indvars.iv379
  %.pn291 = load ptr, ptr %.pn291.in, align 8, !tbaa !60
  %.pn290.in.in = getelementptr inbounds nuw i8, ptr %.pn291, i64 8
  %.pn290.in = load ptr, ptr %.pn290.in.in, align 8, !tbaa !62
  %.pn290 = load ptr, ptr %.pn290.in, align 8, !tbaa !64
  %.in289 = getelementptr inbounds nuw i8, ptr %.pn290, i64 8
  %i.amq = load ptr, ptr %.in289, align 8, !tbaa !66 ; 2 uses
  %i.amr = load i64, ptr %i.alz, align 8, !tbaa !147 ; 2 uses
  %i.ams = getelementptr inbounds [8 x i8], ptr %i.amf, i64 %i.alt
  store i64 %i.amr, ptr %i.ams, align 8, !tbaa !147
  %i.amt = load i16, ptr %i.amq, align 2, !tbaa !68
  %i.amu = getelementptr inbounds [8 x i8], ptr %i.aml, i64 %i.alt
  %i.amv = load ptr, ptr %i.amu, align 8, !tbaa !66 ; 2 uses
  store i16 %i.amt, ptr %i.amv, align 2, !tbaa !68
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amq, i64 2
  %i.amx = load i16, ptr %i.amw, align 2, !tbaa !68
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amv, i64 2
  store i16 %i.amx, ptr %i.amy, align 2, !tbaa !68
  %i.amz = load i16, ptr %i.alw, align 2, !tbaa !68
  %i.ana = icmp eq i16 %i.amz, 1
  %.pn447.in = select i1 %i.ana, ptr %i.amn, ptr %i.amm
  %.pn447 = load ptr, ptr %.pn447.in, align 8, !tbaa !165
  %.pn446.in = getelementptr inbounds nuw i8, ptr %.pn447, i64 8
  %.pn446 = load ptr, ptr %.pn446.in, align 8, !tbaa !58
  %.pn291.in.1 = getelementptr inbounds nuw [8 x i8], ptr %.pn446, i64 %indvars.iv379
  %.pn291.1 = load ptr, ptr %.pn291.in.1, align 8, !tbaa !60
  %.pn290.in.in.1 = getelementptr inbounds nuw i8, ptr %.pn291.1, i64 8
  %.pn290.in.1 = load ptr, ptr %.pn290.in.in.1, align 8, !tbaa !62
  %.pn290.1 = load ptr, ptr %.pn290.in.1, align 8, !tbaa !64
  %.in289.1 = getelementptr inbounds nuw i8, ptr %.pn290.1, i64 8
  %i.anb = load ptr, ptr %.in289.1, align 8, !tbaa !66 ; 2 uses
  %i.anc = add nsw i64 %i.alt, 1                  ; 2 uses
  %i.and = getelementptr inbounds [8 x i8], ptr %i.amf, i64 %i.anc
  store i64 %i.amr, ptr %i.and, align 8, !tbaa !147
  %i.ane = load i16, ptr %i.anb, align 2, !tbaa !68
  %i.anf = getelementptr inbounds [8 x i8], ptr %i.aml, i64 %i.anc
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !66 ; 2 uses
  store i16 %i.ane, ptr %i.ang, align 2, !tbaa !68
  %i.anh = getelementptr inbounds nuw i8, ptr %i.anb, i64 2
  %i.ani = load i16, ptr %i.anh, align 2, !tbaa !68
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ang, i64 2
  store i16 %i.ani, ptr %i.anj, align 2, !tbaa !68
  %i.ank = load i16, ptr %i.alw, align 2, !tbaa !68
  %i.anl = icmp eq i16 %i.ank, 1
  %.pn449.in = select i1 %i.anl, ptr %i.amn, ptr %i.amm
  %.pn449 = load ptr, ptr %.pn449.in, align 8, !tbaa !165
  %.pn448.in = getelementptr inbounds nuw i8, ptr %.pn449, i64 16
  %.pn448 = load ptr, ptr %.pn448.in, align 8, !tbaa !58
  %.pn291.in.2 = getelementptr inbounds nuw [8 x i8], ptr %.pn448, i64 %indvars.iv379
  %.pn291.2 = load ptr, ptr %.pn291.in.2, align 8, !tbaa !60
  %.pn290.in.in.2 = getelementptr inbounds nuw i8, ptr %.pn291.2, i64 8
  %.pn290.in.2 = load ptr, ptr %.pn290.in.in.2, align 8, !tbaa !62
  %.pn290.2 = load ptr, ptr %.pn290.in.2, align 8, !tbaa !64
  %.in289.2 = getelementptr inbounds nuw i8, ptr %.pn290.2, i64 8
  %i.anm = load ptr, ptr %.in289.2, align 8, !tbaa !66 ; 2 uses
  %i.ann = load i64, ptr %i.alz, align 8, !tbaa !147 ; 2 uses
  %i.ano = add nsw i64 %i.alt, 2                  ; 2 uses
  %i.anp = getelementptr inbounds [8 x i8], ptr %i.amf, i64 %i.ano
  store i64 %i.ann, ptr %i.anp, align 8, !tbaa !147
  %i.anq = load i16, ptr %i.anm, align 2, !tbaa !68
  %i.anr = getelementptr inbounds [8 x i8], ptr %i.aml, i64 %i.ano
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !66 ; 2 uses
  store i16 %i.anq, ptr %i.ans, align 2, !tbaa !68
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anm, i64 2
  %i.anu = load i16, ptr %i.ant, align 2, !tbaa !68
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ans, i64 2
  store i16 %i.anu, ptr %i.anv, align 2, !tbaa !68
  %i.anw = load i16, ptr %i.alw, align 2, !tbaa !68
  %i.anx = icmp eq i16 %i.anw, 1
  %.pn451.in = select i1 %i.anx, ptr %i.amn, ptr %i.amm
  %.pn451 = load ptr, ptr %.pn451.in, align 8, !tbaa !165
  %.pn450.in = getelementptr inbounds nuw i8, ptr %.pn451, i64 24
  %.pn450 = load ptr, ptr %.pn450.in, align 8, !tbaa !58
  %.pn291.in.3 = getelementptr inbounds nuw [8 x i8], ptr %.pn450, i64 %indvars.iv379
  %.pn291.3 = load ptr, ptr %.pn291.in.3, align 8, !tbaa !60
  %.pn290.in.in.3 = getelementptr inbounds nuw i8, ptr %.pn291.3, i64 8
  %.pn290.in.3 = load ptr, ptr %.pn290.in.in.3, align 8, !tbaa !62
  %.pn290.3 = load ptr, ptr %.pn290.in.3, align 8, !tbaa !64
  %.in289.3 = getelementptr inbounds nuw i8, ptr %.pn290.3, i64 8
  %i.any = load ptr, ptr %.in289.3, align 8, !tbaa !66 ; 2 uses
  %i.anz = add nsw i64 %i.alt, 3                  ; 2 uses
  %i.aoa = getelementptr inbounds [8 x i8], ptr %i.amf, i64 %i.anz
  store i64 %i.ann, ptr %i.aoa, align 8, !tbaa !147
  %i.aob = load i16, ptr %i.any, align 2, !tbaa !68
  %i.aoc = getelementptr inbounds [8 x i8], ptr %i.aml, i64 %i.anz
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !66 ; 2 uses
  store i16 %i.aob, ptr %i.aod, align 2, !tbaa !68
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.any, i64 2
  %i.aof = load i16, ptr %i.aoe, align 2, !tbaa !68
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aod, i64 2
  store i16 %i.aof, ptr %i.aog, align 2, !tbaa !68
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next380, 4
  br i1 %exitcond382.not, label %.loopexit, label %bb.m, !llvm.loop !286

bb.n:                                             ; preds = %.preheader298, %.split324.us
  %i.aoh = phi ptr [ %.pre432, %.preheader298 ], [ %i.apa, %.split324.us ]
  %indvars.iv391 = phi i64 [ 0, %.preheader298 ], [ %indvars.iv.next392, %.split324.us ] ; 3 uses
  %i.aoi = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 172
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !56
  %i.aol = trunc i64 %indvars.iv391 to i32
  %i.aom = add i32 %i.aik, %i.aol
  %i.aon = add i32 %i.aom, %i.aok
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aoi, i64 168
  %i.aop = load i32, ptr %i.aoo, align 8, !tbaa !57
  %i.aoq = add nsw i32 %i.aop, %i.akw
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoh, i64 6488
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !135
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 8
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !44
  %i.aov = sext i32 %i.aon to i64                 ; 3 uses
  %i.aow = getelementptr inbounds [8 x i8], ptr %i.aou, i64 %i.aov
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !45
  %i.aoy = sext i32 %i.aoq to i64                 ; 10 uses
  %i.aoz = getelementptr inbounds i8, ptr %i.aox, i64 %i.aoy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.aoz, i8 %i.aky, i64 4, i1 false)
  %i.apa = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 4 uses
  %i.apb = getelementptr [264 x i8], ptr %i.apa, i64 %i.akz
  %i.apc = getelementptr i8, ptr %i.apb, i64 288
  %i.apd = getelementptr inbounds [8 x i8], ptr %i.apc, i64 %i.ala ; 4 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apa, i64 6496
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !141
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 8
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !142
  %i.api = getelementptr inbounds [8 x i8], ptr %i.aph, i64 %i.aov
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !144 ; 8 uses
  br i1 %i.alb, label %.split322.us, label %.split322.preheader

.split322.preheader:                              ; preds = %bb.n
  %i.apk = load i64, ptr %i.apd, align 8, !tbaa !147 ; 2 uses
  %i.apl = getelementptr inbounds [8 x i8], ptr %i.apj, i64 %i.aoy
  store i64 %i.apk, ptr %i.apl, align 8, !tbaa !147
  %i.apm = getelementptr [8 x i8], ptr %i.apj, i64 %i.aoy
  %i.apn = getelementptr i8, ptr %i.apm, i64 8
  store i64 %i.apk, ptr %i.apn, align 8, !tbaa !147
  %i.apo = load i64, ptr %i.apd, align 8, !tbaa !147 ; 2 uses
  %i.app = getelementptr [8 x i8], ptr %i.apj, i64 %i.aoy
  %i.apq = getelementptr i8, ptr %i.app, i64 16
  store i64 %i.apo, ptr %i.apq, align 8, !tbaa !147
  %i.apr = getelementptr [8 x i8], ptr %i.apj, i64 %i.aoy
  %i.aps = getelementptr i8, ptr %i.apr, i64 24
  store i64 %i.apo, ptr %i.aps, align 8, !tbaa !147
  br label %.split324.us

.split322.us:                                     ; preds = %bb.n
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apa, i64 6512
  %i.apu = load ptr, ptr @img, align 8
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 14384
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !55
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %i.apw, i64 %indvars.iv391
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !58 ; 4 uses
  %i.apz = load ptr, ptr %i.apt, align 8, !tbaa !163
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 8
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !62
  %i.aqc = getelementptr inbounds [8 x i8], ptr %i.aqb, i64 %i.aov
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !64 ; 4 uses
  %i.aqe = load i64, ptr %i.apd, align 8, !tbaa !147 ; 2 uses
  %i.aqf = getelementptr inbounds [8 x i8], ptr %i.apj, i64 %i.aoy
  store i64 %i.aqe, ptr %i.aqf, align 8, !tbaa !147
  %i.aqg = load ptr, ptr %i.apy, align 8, !tbaa !60
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !62
  %i.aqj = getelementptr inbounds nuw [8 x i8], ptr %i.aqi, i64 %i.ala
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !64
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !66 ; 2 uses
  %i.aqn = load i16, ptr %i.aqm, align 2, !tbaa !68
  %i.aqo = getelementptr inbounds [8 x i8], ptr %i.aqd, i64 %i.aoy
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !66 ; 2 uses
  store i16 %i.aqn, ptr %i.aqp, align 2, !tbaa !68
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqm, i64 2
  %i.aqr = load i16, ptr %i.aqq, align 2, !tbaa !68
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqp, i64 2
  store i16 %i.aqr, ptr %i.aqs, align 2, !tbaa !68
  %i.aqt = add nsw i64 %i.aoy, 1                  ; 2 uses
  %i.aqu = getelementptr inbounds [8 x i8], ptr %i.apj, i64 %i.aqt
  store i64 %i.aqe, ptr %i.aqu, align 8, !tbaa !147
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.apy, i64 8
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !60
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 8
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !62
  %i.aqz = getelementptr inbounds nuw [8 x i8], ptr %i.aqy, i64 %i.ala
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !64
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !66 ; 2 uses
  %i.ard = load i16, ptr %i.arc, align 2, !tbaa !68
  %i.are = getelementptr inbounds [8 x i8], ptr %i.aqd, i64 %i.aqt
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !66 ; 2 uses
  store i16 %i.ard, ptr %i.arf, align 2, !tbaa !68
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arc, i64 2
  %i.arh = load i16, ptr %i.arg, align 2, !tbaa !68
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arf, i64 2
  store i16 %i.arh, ptr %i.ari, align 2, !tbaa !68
  %i.arj = load i64, ptr %i.apd, align 8, !tbaa !147 ; 2 uses
  %i.ark = add nsw i64 %i.aoy, 2                  ; 2 uses
  %i.arl = getelementptr inbounds [8 x i8], ptr %i.apj, i64 %i.ark
  store i64 %i.arj, ptr %i.arl, align 8, !tbaa !147
  %i.arm = getelementptr inbounds nuw i8, ptr %i.apy, i64 16
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !60
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !62
  %i.arq = getelementptr inbounds nuw [8 x i8], ptr %i.arp, i64 %i.ala
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !64
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 8
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !66 ; 2 uses
  %i.aru = load i16, ptr %i.art, align 2, !tbaa !68
  %i.arv = getelementptr inbounds [8 x i8], ptr %i.aqd, i64 %i.ark
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !66 ; 2 uses
  store i16 %i.aru, ptr %i.arw, align 2, !tbaa !68
  %i.arx = getelementptr inbounds nuw i8, ptr %i.art, i64 2
  %i.ary = load i16, ptr %i.arx, align 2, !tbaa !68
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arw, i64 2
  store i16 %i.ary, ptr %i.arz, align 2, !tbaa !68
  %i.asa = add nsw i64 %i.aoy, 3                  ; 2 uses
  %i.asb = getelementptr inbounds [8 x i8], ptr %i.apj, i64 %i.asa
  store i64 %i.arj, ptr %i.asb, align 8, !tbaa !147
  %i.asc = getelementptr inbounds nuw i8, ptr %i.apy, i64 24
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !60
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 8
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !62
  %i.asg = getelementptr inbounds nuw [8 x i8], ptr %i.asf, i64 %i.ala
  %i.ash = load ptr, ptr %i.asg, align 8, !tbaa !64
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 8
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !66 ; 2 uses
  %i.ask = load i16, ptr %i.asj, align 2, !tbaa !68
  %i.asl = getelementptr inbounds [8 x i8], ptr %i.aqd, i64 %i.asa
  %i.asm = load ptr, ptr %i.asl, align 8, !tbaa !66 ; 2 uses
  store i16 %i.ask, ptr %i.asm, align 2, !tbaa !68
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asj, i64 2
  %i.aso = load i16, ptr %i.asn, align 2, !tbaa !68
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asm, i64 2
  store i16 %i.aso, ptr %i.asp, align 2, !tbaa !68
  br label %.split324.us

.split324.us:                                     ; preds = %.split322.preheader, %.split322.us
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1 ; 2 uses
  %exitcond394.not = icmp eq i64 %indvars.iv.next392, 4
  br i1 %exitcond394.not, label %.loopexit, label %bb.n, !llvm.loop !287

bb.o:                                             ; preds = %.preheader307, %.split311.us
  %i.asq = phi i1 [ true, %.preheader307 ], [ false, %.split311.us ]
  %indvars.iv349 = phi i64 [ 0, %.preheader307 ], [ 1, %.split311.us ] ; 2 uses
  %i.asr = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 172
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !56
  %i.asu = trunc nuw nsw i64 %indvars.iv349 to i32
  %i.asv = or disjoint i32 %i.a, %i.asu
  %i.asw = add i32 %i.asv, %i.ast
  %i.asx = or disjoint i64 %indvars.iv349, %i.j   ; 12 uses
  %i.asy = sext i32 %i.asw to i64                 ; 56 uses
  br i1 %i.b, label %.thread.us.preheader, label %.split

.thread.us.preheader:                             ; preds = %bb.o
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asr, i64 168
  %i.ata = load i32, ptr %i.asz, align 8, !tbaa !57
  %i.atb = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 6488
  %i.atd = load ptr, ptr %i.atc, align 8, !tbaa !135
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !44
  %i.atf = getelementptr inbounds [8 x i8], ptr %i.ate, i64 %i.asy
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !45
  %i.ath = sext i32 %i.ata to i64                 ; 6 uses
  %i.ati = getelementptr inbounds i8, ptr %i.atg, i64 %i.ath
  store i8 -1, ptr %i.ati, align 1, !tbaa !46
  %i.atj = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 4 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 6496
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !141
  %i.atm = load ptr, ptr %i.atl, align 8, !tbaa !142
  %i.atn = getelementptr inbounds [8 x i8], ptr %i.atm, i64 %i.asy
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !144
  %i.atp = getelementptr inbounds [8 x i8], ptr %i.ato, i64 %i.ath
  store i64 -1, ptr %i.atp, align 8, !tbaa !147
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atj, i64 6512
  %i.atr = load ptr, ptr %i.atq, align 8, !tbaa !163
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !62
  %i.att = getelementptr inbounds [8 x i8], ptr %i.ats, i64 %i.asy
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !64
  %i.atv = getelementptr inbounds [8 x i8], ptr %i.atu, i64 %i.ath
  %i.atw = load ptr, ptr %i.atv, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.atw, align 2, !tbaa !68
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 2
  store i16 0, ptr %i.atx, align 2, !tbaa !68
  br i1 %.not285, label %.thread.us.preheader..thread.us.1_crit_edge, label %.thread293.us

.thread.us.preheader..thread.us.1_crit_edge:      ; preds = %.thread.us.preheader
  %.pre420 = load ptr, ptr @img, align 8, !tbaa !16
  br label %.thread.us.1

.thread293.us:                                    ; preds = %.thread.us.preheader
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atj, i64 6488
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !135
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 8
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !44
  %i.auc = getelementptr inbounds [8 x i8], ptr %i.aub, i64 %i.asy
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !45
  %i.aue = getelementptr inbounds i8, ptr %i.aud, i64 %i.ath
  store i8 %i.g, ptr %i.aue, align 1, !tbaa !46
  %.pre421 = load ptr, ptr @img, align 8, !tbaa !16 ; 3 uses
  %.pre422 = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  br i1 %i.h, label %bb.p, label %.thread.us.1

bb.p:                                             ; preds = %.thread293.us
  %i.auf = getelementptr inbounds nuw i8, ptr %.pre421, i64 14384
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !55
  %i.auh = getelementptr inbounds [8 x i8], ptr %i.aug, i64 %i.asx
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !58
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !60
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 8
  %i.aul = load ptr, ptr %i.auk, align 8, !tbaa !62
  %i.aum = getelementptr inbounds nuw [8 x i8], ptr %i.aul, i64 %i.i
  %i.aun = load ptr, ptr %i.aum, align 8, !tbaa !64
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 16
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !66 ; 2 uses
  %i.auq = getelementptr [264 x i8], ptr %.pre422, i64 %i.e
  %i.aur = getelementptr i8, ptr %i.auq, i64 288
  %i.aus = getelementptr inbounds nuw [8 x i8], ptr %i.aur, i64 %i.i
  %i.aut = load i64, ptr %i.aus, align 8, !tbaa !147
  %i.auu = getelementptr inbounds nuw i8, ptr %.pre422, i64 6496
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !141
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 8
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !142
  %i.auy = getelementptr inbounds [8 x i8], ptr %i.aux, i64 %i.asy
  %i.auz = load ptr, ptr %i.auy, align 8, !tbaa !144
  %i.ava = getelementptr inbounds [8 x i8], ptr %i.auz, i64 %i.ath
  store i64 %i.aut, ptr %i.ava, align 8, !tbaa !147
  %i.avb = load i16, ptr %i.aup, align 2, !tbaa !68
  %i.avc = getelementptr inbounds nuw i8, ptr %.pre422, i64 6512
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !163
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 8
  %i.avf = load ptr, ptr %i.ave, align 8, !tbaa !62
  %i.avg = getelementptr inbounds [8 x i8], ptr %i.avf, i64 %i.asy
  %i.avh = load ptr, ptr %i.avg, align 8, !tbaa !64
  %i.avi = getelementptr inbounds [8 x i8], ptr %i.avh, i64 %i.ath
  %i.avj = load ptr, ptr %i.avi, align 8, !tbaa !66 ; 2 uses
  store i16 %i.avb, ptr %i.avj, align 2, !tbaa !68
  %i.avk = getelementptr inbounds nuw i8, ptr %i.aup, i64 2
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !68
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avj, i64 2
  store i16 %i.avl, ptr %i.avm, align 2, !tbaa !68
  br label %.thread.us.1

.thread.us.1:                                     ; preds = %.thread.us.preheader..thread.us.1_crit_edge, %bb.p, %.thread293.us
  %i.avn = phi ptr [ %i.atj, %.thread.us.preheader..thread.us.1_crit_edge ], [ %.pre422, %bb.p ], [ %.pre422, %.thread293.us ]
  %i.avo = phi ptr [ %.pre420, %.thread.us.preheader..thread.us.1_crit_edge ], [ %.pre421, %bb.p ], [ %.pre421, %.thread293.us ]
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 168
  %i.avq = load i32, ptr %i.avp, align 8, !tbaa !57
  %i.avr = add nsw i32 %i.avq, 1
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avn, i64 6488
  %i.avt = load ptr, ptr %i.avs, align 8, !tbaa !135
  %i.avu = load ptr, ptr %i.avt, align 8, !tbaa !44
  %i.avv = getelementptr inbounds [8 x i8], ptr %i.avu, i64 %i.asy
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !45
  %i.avx = sext i32 %i.avr to i64                 ; 6 uses
  %i.avy = getelementptr inbounds i8, ptr %i.avw, i64 %i.avx
  store i8 -1, ptr %i.avy, align 1, !tbaa !46
  %i.avz = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 4 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avz, i64 6496
  %i.awb = load ptr, ptr %i.awa, align 8, !tbaa !141
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !142
  %i.awd = getelementptr inbounds [8 x i8], ptr %i.awc, i64 %i.asy
  %i.awe = load ptr, ptr %i.awd, align 8, !tbaa !144
  %i.awf = getelementptr inbounds [8 x i8], ptr %i.awe, i64 %i.avx
  store i64 -1, ptr %i.awf, align 8, !tbaa !147
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avz, i64 6512
  %i.awh = load ptr, ptr %i.awg, align 8, !tbaa !163
  %i.awi = load ptr, ptr %i.awh, align 8, !tbaa !62
  %i.awj = getelementptr inbounds [8 x i8], ptr %i.awi, i64 %i.asy
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !64
  %i.awl = getelementptr inbounds [8 x i8], ptr %i.awk, i64 %i.avx
  %i.awm = load ptr, ptr %i.awl, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.awm, align 2, !tbaa !68
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 2
  store i16 0, ptr %i.awn, align 2, !tbaa !68
  br i1 %.not285, label %.thread.us.1..thread.us.2_crit_edge, label %.thread293.us.1

.thread.us.1..thread.us.2_crit_edge:              ; preds = %.thread.us.1
  %.pre423 = load ptr, ptr @img, align 8, !tbaa !16
  br label %.thread.us.2

.thread293.us.1:                                  ; preds = %.thread.us.1
  %i.awo = getelementptr inbounds nuw i8, ptr %i.avz, i64 6488
  %i.awp = load ptr, ptr %i.awo, align 8, !tbaa !135
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awp, i64 8
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !44
  %i.aws = getelementptr inbounds [8 x i8], ptr %i.awr, i64 %i.asy
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !45
  %i.awu = getelementptr inbounds i8, ptr %i.awt, i64 %i.avx
  store i8 %i.g, ptr %i.awu, align 1, !tbaa !46
  %.pre424 = load ptr, ptr @img, align 8, !tbaa !16 ; 3 uses
  %.pre425 = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  br i1 %i.h, label %bb.q, label %.thread.us.2

bb.q:                                             ; preds = %.thread293.us.1
  %i.awv = getelementptr inbounds nuw i8, ptr %.pre424, i64 14384
  %i.aww = load ptr, ptr %i.awv, align 8, !tbaa !55
  %i.awx = getelementptr inbounds [8 x i8], ptr %i.aww, i64 %i.asx
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !58
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 8
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !60
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 8
  %i.axc = load ptr, ptr %i.axb, align 8, !tbaa !62
  %i.axd = getelementptr inbounds nuw [8 x i8], ptr %i.axc, i64 %i.i
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !64
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 16
  %i.axg = load ptr, ptr %i.axf, align 8, !tbaa !66 ; 2 uses
  %i.axh = getelementptr [264 x i8], ptr %.pre425, i64 %i.e
  %i.axi = getelementptr i8, ptr %i.axh, i64 288
  %i.axj = getelementptr inbounds nuw [8 x i8], ptr %i.axi, i64 %i.i
  %i.axk = load i64, ptr %i.axj, align 8, !tbaa !147
  %i.axl = getelementptr inbounds nuw i8, ptr %.pre425, i64 6496
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !141
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.axo = load ptr, ptr %i.axn, align 8, !tbaa !142
  %i.axp = getelementptr inbounds [8 x i8], ptr %i.axo, i64 %i.asy
  %i.axq = load ptr, ptr %i.axp, align 8, !tbaa !144
  %i.axr = getelementptr inbounds [8 x i8], ptr %i.axq, i64 %i.avx
  store i64 %i.axk, ptr %i.axr, align 8, !tbaa !147
  %i.axs = load i16, ptr %i.axg, align 2, !tbaa !68
  %i.axt = getelementptr inbounds nuw i8, ptr %.pre425, i64 6512
  %i.axu = load ptr, ptr %i.axt, align 8, !tbaa !163
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 8
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !62
  %i.axx = getelementptr inbounds [8 x i8], ptr %i.axw, i64 %i.asy
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !64
  %i.axz = getelementptr inbounds [8 x i8], ptr %i.axy, i64 %i.avx
  %i.aya = load ptr, ptr %i.axz, align 8, !tbaa !66 ; 2 uses
  store i16 %i.axs, ptr %i.aya, align 2, !tbaa !68
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axg, i64 2
  %i.ayc = load i16, ptr %i.ayb, align 2, !tbaa !68
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.aya, i64 2
  store i16 %i.ayc, ptr %i.ayd, align 2, !tbaa !68
  br label %.thread.us.2

.thread.us.2:                                     ; preds = %.thread.us.1..thread.us.2_crit_edge, %bb.q, %.thread293.us.1
  %i.aye = phi ptr [ %i.avz, %.thread.us.1..thread.us.2_crit_edge ], [ %.pre425, %bb.q ], [ %.pre425, %.thread293.us.1 ]
  %i.ayf = phi ptr [ %.pre423, %.thread.us.1..thread.us.2_crit_edge ], [ %.pre424, %bb.q ], [ %.pre424, %.thread293.us.1 ]
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 168
  %i.ayh = load i32, ptr %i.ayg, align 8, !tbaa !57
end_hunk_3
begin_hunk_4_@assign_enc_picture_params:bb.a
  %i.bnq = load ptr, ptr %i.bnp, align 8, !tbaa !60
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnq, i64 8
  %i.bns = load ptr, ptr %i.bnr, align 8, !tbaa !62
  %i.bnt = getelementptr inbounds nuw [8 x i8], ptr %i.bns, i64 %i.i
  %i.bnu = load ptr, ptr %i.bnt, align 8, !tbaa !64
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnu, i64 16
  %i.bnw = load ptr, ptr %i.bnv, align 8, !tbaa !66 ; 2 uses
  %i.bnx = getelementptr [264 x i8], ptr %.pre.2, i64 %i.e
  %i.bny = getelementptr i8, ptr %i.bnx, i64 288
  %i.bnz = getelementptr inbounds nuw [8 x i8], ptr %i.bny, i64 %i.i
  %i.boa = load i64, ptr %i.bnz, align 8, !tbaa !147
  %i.bob = getelementptr inbounds nuw i8, ptr %.pre.2, i64 6496
  %i.boc = load ptr, ptr %i.bob, align 8, !tbaa !141
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 8
  %i.boe = load ptr, ptr %i.bod, align 8, !tbaa !142
  %i.bof = getelementptr inbounds [8 x i8], ptr %i.boe, i64 %i.asy
  %i.bog = load ptr, ptr %i.bof, align 8, !tbaa !144
  %i.boh = getelementptr inbounds [8 x i8], ptr %i.bog, i64 %i.bmf
  store i64 %i.boa, ptr %i.boh, align 8, !tbaa !147
  %i.boi = load i16, ptr %i.bnw, align 2, !tbaa !68
  %i.boj = getelementptr inbounds nuw i8, ptr %.pre.2, i64 6512
  %i.bok = load ptr, ptr %i.boj, align 8, !tbaa !163
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bok, i64 8
  %i.bom = load ptr, ptr %i.bol, align 8, !tbaa !62
  %i.bon = getelementptr inbounds [8 x i8], ptr %i.bom, i64 %i.asy
  %i.boo = load ptr, ptr %i.bon, align 8, !tbaa !64
  %i.bop = getelementptr inbounds [8 x i8], ptr %i.boo, i64 %i.bmf
  %i.boq = load ptr, ptr %i.bop, align 8, !tbaa !66 ; 2 uses
  store i16 %i.boi, ptr %i.boq, align 2, !tbaa !68
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bnw, i64 2
  %i.bos = load i16, ptr %i.bor, align 2, !tbaa !68
  br label %.sink.split.2

bb.ab:                                            ; preds = %bb.z
  store i8 -1, ptr %i.bnj, align 1, !tbaa !46
  %i.bot = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bot, i64 6496
  %i.bov = load ptr, ptr %i.bou, align 8, !tbaa !141
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 8
  %i.box = load ptr, ptr %i.bow, align 8, !tbaa !142
  %i.boy = getelementptr inbounds [8 x i8], ptr %i.box, i64 %i.asy
  %i.boz = load ptr, ptr %i.boy, align 8, !tbaa !144
  %i.bpa = getelementptr inbounds [8 x i8], ptr %i.boz, i64 %i.bmf
  store i64 -1, ptr %i.bpa, align 8, !tbaa !147
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bot, i64 6512
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !163
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 8
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !62
  %i.bpf = getelementptr inbounds [8 x i8], ptr %i.bpe, i64 %i.asy
  %i.bpg = load ptr, ptr %i.bpf, align 8, !tbaa !64
  %i.bph = getelementptr inbounds [8 x i8], ptr %i.bpg, i64 %i.bmf
  %i.bpi = load ptr, ptr %i.bph, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.bpi, align 2, !tbaa !68
  br label %.sink.split.2

.sink.split.2:                                    ; preds = %bb.ab, %bb.aa
  %.sink463.2 = phi ptr [ %i.boq, %bb.aa ], [ %i.bpi, %bb.ab ]
  %.sink.2 = phi i16 [ %i.bos, %bb.aa ], [ 0, %bb.ab ]
  %.ph.2 = phi ptr [ %.pre.2, %bb.aa ], [ %i.bot, %bb.ab ]
  %i.bpj = getelementptr inbounds nuw i8, ptr %.sink463.2, i64 2
  store i16 %.sink.2, ptr %i.bpj, align 2, !tbaa !68
  br label %.split.3

.split.3:                                         ; preds = %.sink.split.2, %.thread293.2, %.split.2
  %i.bpk = phi ptr [ %i.bmh, %.split.2 ], [ %.pre.2, %.thread293.2 ], [ %.ph.2, %.sink.split.2 ]
  %i.bpl = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpl, i64 168
  %i.bpn = load i32, ptr %i.bpm, align 8, !tbaa !57
  %i.bpo = add nsw i32 %i.bpn, 3
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpl, i64 14384
  %i.bpq = load ptr, ptr %i.bpp, align 8, !tbaa !55
  %i.bpr = getelementptr inbounds [8 x i8], ptr %i.bpq, i64 %i.asx
  %i.bps = load ptr, ptr %i.bpr, align 8, !tbaa !58
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bps, i64 24
  %i.bpu = load ptr, ptr %i.bpt, align 8, !tbaa !60
  %i.bpv = load ptr, ptr %i.bpu, align 8, !tbaa !62
  %i.bpw = getelementptr inbounds [8 x i8], ptr %i.bpv, i64 %i.c
  %i.bpx = load ptr, ptr %i.bpw, align 8, !tbaa !64
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpx, i64 16
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !66 ; 2 uses
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpk, i64 6488
  %i.bqb = load ptr, ptr %i.bqa, align 8, !tbaa !135
  %i.bqc = load ptr, ptr %i.bqb, align 8, !tbaa !44
  %i.bqd = getelementptr inbounds [8 x i8], ptr %i.bqc, i64 %i.asy
  %i.bqe = load ptr, ptr %i.bqd, align 8, !tbaa !45
  %i.bqf = sext i32 %i.bpo to i64                 ; 8 uses
  %i.bqg = getelementptr inbounds i8, ptr %i.bqe, i64 %i.bqf
  store i8 %i.d, ptr %i.bqg, align 1, !tbaa !46
  %i.bqh = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 4 uses
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqh, i64 24
  %i.bqj = getelementptr inbounds [264 x i8], ptr %i.bqi, i64 %i.e
  %i.bqk = getelementptr inbounds [8 x i8], ptr %i.bqj, i64 %i.c
  %i.bql = load i64, ptr %i.bqk, align 8, !tbaa !147
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqh, i64 6496
  %i.bqn = load ptr, ptr %i.bqm, align 8, !tbaa !141
  %i.bqo = load ptr, ptr %i.bqn, align 8, !tbaa !142
  %i.bqp = getelementptr inbounds [8 x i8], ptr %i.bqo, i64 %i.asy
  %i.bqq = load ptr, ptr %i.bqp, align 8, !tbaa !144
  %i.bqr = getelementptr inbounds [8 x i8], ptr %i.bqq, i64 %i.bqf
  store i64 %i.bql, ptr %i.bqr, align 8, !tbaa !147
  %i.bqs = load i16, ptr %i.bpz, align 2, !tbaa !68
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqh, i64 6512
  %i.bqu = load ptr, ptr %i.bqt, align 8, !tbaa !163
  %i.bqv = load ptr, ptr %i.bqu, align 8, !tbaa !62
  %i.bqw = getelementptr inbounds [8 x i8], ptr %i.bqv, i64 %i.asy
  %i.bqx = load ptr, ptr %i.bqw, align 8, !tbaa !64
  %i.bqy = getelementptr inbounds [8 x i8], ptr %i.bqx, i64 %i.bqf
  %i.bqz = load ptr, ptr %i.bqy, align 8, !tbaa !66 ; 2 uses
  store i16 %i.bqs, ptr %i.bqz, align 2, !tbaa !68
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bpz, i64 2
  %i.brb = load i16, ptr %i.bra, align 2, !tbaa !68
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bqz, i64 2
  store i16 %i.brb, ptr %i.brc, align 2, !tbaa !68
  br i1 %.not285, label %.split311.us, label %bb.ac

bb.ac:                                            ; preds = %.split.3
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bqh, i64 6488
  %i.bre = load ptr, ptr %i.brd, align 8, !tbaa !135
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bre, i64 8
  %i.brg = load ptr, ptr %i.brf, align 8, !tbaa !44
  %i.brh = getelementptr inbounds [8 x i8], ptr %i.brg, i64 %i.asy
  %i.bri = load ptr, ptr %i.brh, align 8, !tbaa !45
  %i.brj = getelementptr inbounds i8, ptr %i.bri, i64 %i.bqf ; 2 uses
  br i1 %i.f, label %bb.ae, label %.thread293.3

.thread293.3:                                     ; preds = %bb.ac
  store i8 %i.g, ptr %i.brj, align 1, !tbaa !46
  br i1 %i.h, label %bb.ad, label %.split311.us

bb.ad:                                            ; preds = %.thread293.3
  %.pre.3 = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.brk = load ptr, ptr @img, align 8, !tbaa !16
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brk, i64 14384
  %i.brm = load ptr, ptr %i.brl, align 8, !tbaa !55
  %i.brn = getelementptr inbounds [8 x i8], ptr %i.brm, i64 %i.asx
  %i.bro = load ptr, ptr %i.brn, align 8, !tbaa !58
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 24
  %i.brq = load ptr, ptr %i.brp, align 8, !tbaa !60
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brq, i64 8
  %i.brs = load ptr, ptr %i.brr, align 8, !tbaa !62
  %i.brt = getelementptr inbounds nuw [8 x i8], ptr %i.brs, i64 %i.i
  %i.bru = load ptr, ptr %i.brt, align 8, !tbaa !64
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bru, i64 16
  %i.brw = load ptr, ptr %i.brv, align 8, !tbaa !66 ; 2 uses
  %i.brx = getelementptr [264 x i8], ptr %.pre.3, i64 %i.e
  %i.bry = getelementptr i8, ptr %i.brx, i64 288
  %i.brz = getelementptr inbounds nuw [8 x i8], ptr %i.bry, i64 %i.i
  %i.bsa = load i64, ptr %i.brz, align 8, !tbaa !147
  %i.bsb = getelementptr inbounds nuw i8, ptr %.pre.3, i64 6496
  %i.bsc = load ptr, ptr %i.bsb, align 8, !tbaa !141
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsc, i64 8
  %i.bse = load ptr, ptr %i.bsd, align 8, !tbaa !142
  %i.bsf = getelementptr inbounds [8 x i8], ptr %i.bse, i64 %i.asy
  %i.bsg = load ptr, ptr %i.bsf, align 8, !tbaa !144
  %i.bsh = getelementptr inbounds [8 x i8], ptr %i.bsg, i64 %i.bqf
  store i64 %i.bsa, ptr %i.bsh, align 8, !tbaa !147
  %i.bsi = load i16, ptr %i.brw, align 2, !tbaa !68
  %i.bsj = getelementptr inbounds nuw i8, ptr %.pre.3, i64 6512
  %i.bsk = load ptr, ptr %i.bsj, align 8, !tbaa !163
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsk, i64 8
  %i.bsm = load ptr, ptr %i.bsl, align 8, !tbaa !62
  %i.bsn = getelementptr inbounds [8 x i8], ptr %i.bsm, i64 %i.asy
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !64
  %i.bsp = getelementptr inbounds [8 x i8], ptr %i.bso, i64 %i.bqf
  %i.bsq = load ptr, ptr %i.bsp, align 8, !tbaa !66 ; 2 uses
  store i16 %i.bsi, ptr %i.bsq, align 2, !tbaa !68
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.brw, i64 2
  %i.bss = load i16, ptr %i.bsr, align 2, !tbaa !68
  br label %.sink.split.3

bb.ae:                                            ; preds = %bb.ac
  store i8 -1, ptr %i.brj, align 1, !tbaa !46
  %i.bst = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 2 uses
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bst, i64 6496
  %i.bsv = load ptr, ptr %i.bsu, align 8, !tbaa !141
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsv, i64 8
  %i.bsx = load ptr, ptr %i.bsw, align 8, !tbaa !142
  %i.bsy = getelementptr inbounds [8 x i8], ptr %i.bsx, i64 %i.asy
  %i.bsz = load ptr, ptr %i.bsy, align 8, !tbaa !144
  %i.bta = getelementptr inbounds [8 x i8], ptr %i.bsz, i64 %i.bqf
  store i64 -1, ptr %i.bta, align 8, !tbaa !147
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bst, i64 6512
  %i.btc = load ptr, ptr %i.btb, align 8, !tbaa !163
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btc, i64 8
  %i.bte = load ptr, ptr %i.btd, align 8, !tbaa !62
  %i.btf = getelementptr inbounds [8 x i8], ptr %i.bte, i64 %i.asy
  %i.btg = load ptr, ptr %i.btf, align 8, !tbaa !64
  %i.bth = getelementptr inbounds [8 x i8], ptr %i.btg, i64 %i.bqf
  %i.bti = load ptr, ptr %i.bth, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.bti, align 2, !tbaa !68
  br label %.sink.split.3

.sink.split.3:                                    ; preds = %bb.ae, %bb.ad
  %.sink463.3 = phi ptr [ %i.bsq, %bb.ad ], [ %i.bti, %bb.ae ]
  %.sink.3 = phi i16 [ %i.bss, %bb.ad ], [ 0, %bb.ae ]
  %i.btj = getelementptr inbounds nuw i8, ptr %.sink463.3, i64 2
  store i16 %.sink.3, ptr %i.btj, align 2, !tbaa !68
  br label %.split311.us

.split311.us:                                     ; preds = %.split.3, %.thread293.3, %.sink.split.3, %.thread.us.3, %.thread293.us.3, %bb.s
  br i1 %i.asq, label %bb.o, label %.loopexit, !llvm.loop !288

.split330:                                        ; preds = %.split330.preheader, %.split332
  %i.btk = phi ptr [ %.pre435, %.split330.preheader ], [ %i.cbp, %.split332 ]
  %indvars.iv407 = phi i64 [ 0, %.split330.preheader ], [ %indvars.iv.next408, %.split332 ] ; 6 uses
  %i.btl = load ptr, ptr @img, align 8, !tbaa !16 ; 3 uses
  %i.btm = getelementptr inbounds nuw i8, ptr %i.btl, i64 172
  %i.btn = load i32, ptr %i.btm, align 4, !tbaa !56
  %i.bto = trunc nuw nsw i64 %indvars.iv407 to i32
  %i.btp = add nsw i32 %i.btn, %i.bto
  %i.btq = sext i32 %i.btp to i64                 ; 16 uses
  %i.btr = getelementptr inbounds nuw i8, ptr %i.btl, i64 168
  %i.bts = load i32, ptr %i.btr, align 8, !tbaa !57
  %i.btt = add i32 %i.k, %i.bts
  %i.btu = getelementptr inbounds nuw i8, ptr %i.btl, i64 14384
  %i.btv = load ptr, ptr %i.btu, align 8, !tbaa !55
  %i.btw = getelementptr inbounds nuw [8 x i8], ptr %i.btv, i64 %indvars.iv407
  %i.btx = load ptr, ptr %i.btw, align 8, !tbaa !58
  %i.bty = getelementptr inbounds [8 x i8], ptr %i.btx, i64 %i.u
  %i.btz = load ptr, ptr %i.bty, align 8, !tbaa !60
  %i.bua = load ptr, ptr %i.btz, align 8, !tbaa !62
  %i.bub = getelementptr inbounds [8 x i8], ptr %i.bua, i64 %i.m
  %i.buc = load ptr, ptr %i.bub, align 8, !tbaa !64
  %i.bud = getelementptr inbounds [8 x i8], ptr %i.buc, i64 %i.n
  %i.bue = load ptr, ptr %i.bud, align 8, !tbaa !66 ; 2 uses
  %i.buf = getelementptr inbounds nuw i8, ptr %i.btk, i64 6488
  %i.bug = load ptr, ptr %i.buf, align 8, !tbaa !135
  %i.buh = load ptr, ptr %i.bug, align 8, !tbaa !44
  %i.bui = getelementptr inbounds [8 x i8], ptr %i.buh, i64 %i.btq
  %i.buj = load ptr, ptr %i.bui, align 8, !tbaa !45
  %i.buk = sext i32 %i.btt to i64                 ; 8 uses
  %i.bul = getelementptr inbounds i8, ptr %i.buj, i64 %i.buk
  store i8 %i.o, ptr %i.bul, align 1, !tbaa !46
  %i.bum = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bum, i64 24
  %i.buo = getelementptr inbounds [264 x i8], ptr %i.bun, i64 %i.p
  %i.bup = getelementptr inbounds [8 x i8], ptr %i.buo, i64 %i.m
  %i.buq = load i64, ptr %i.bup, align 8, !tbaa !147
  %i.bur = getelementptr inbounds nuw i8, ptr %i.bum, i64 6496
  %i.bus = load ptr, ptr %i.bur, align 8, !tbaa !141
  %i.but = load ptr, ptr %i.bus, align 8, !tbaa !142
  %i.buu = getelementptr inbounds [8 x i8], ptr %i.but, i64 %i.btq
  %i.buv = load ptr, ptr %i.buu, align 8, !tbaa !144
  %i.buw = getelementptr inbounds [8 x i8], ptr %i.buv, i64 %i.buk
  store i64 %i.buq, ptr %i.buw, align 8, !tbaa !147
  %i.bux = load i16, ptr %i.bue, align 2, !tbaa !68
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bum, i64 6512
  %i.buz = load ptr, ptr %i.buy, align 8, !tbaa !163
  %i.bva = load ptr, ptr %i.buz, align 8, !tbaa !62
  %i.bvb = getelementptr inbounds [8 x i8], ptr %i.bva, i64 %i.btq
  %i.bvc = load ptr, ptr %i.bvb, align 8, !tbaa !64
  %i.bvd = getelementptr inbounds [8 x i8], ptr %i.bvc, i64 %i.buk
  %i.bve = load ptr, ptr %i.bvd, align 8, !tbaa !66 ; 2 uses
  store i16 %i.bux, ptr %i.bve, align 2, !tbaa !68
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bue, i64 2
  %i.bvg = load i16, ptr %i.bvf, align 2, !tbaa !68
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bve, i64 2
  store i16 %i.bvg, ptr %i.bvh, align 2, !tbaa !68
  br i1 %.not, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.split330
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bum, i64 6488
  %i.bvj = load ptr, ptr %i.bvi, align 8, !tbaa !135
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bvj, i64 8
  %i.bvl = load ptr, ptr %i.bvk, align 8, !tbaa !44
  %i.bvm = getelementptr inbounds [8 x i8], ptr %i.bvl, i64 %i.btq
  %i.bvn = load ptr, ptr %i.bvm, align 8, !tbaa !45
  %i.bvo = getelementptr inbounds i8, ptr %i.bvn, i64 %i.buk ; 2 uses
  br i1 %i.q, label %bb.ag, label %.thread296

bb.ag:                                            ; preds = %bb.af
  store i8 -1, ptr %i.bvo, align 1, !tbaa !46
  %i.bvp = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvp, i64 6496
  %i.bvr = load ptr, ptr %i.bvq, align 8, !tbaa !141
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvr, i64 8
  %i.bvt = load ptr, ptr %i.bvs, align 8, !tbaa !142
  %i.bvu = getelementptr inbounds [8 x i8], ptr %i.bvt, i64 %i.btq
  %i.bvv = load ptr, ptr %i.bvu, align 8, !tbaa !144
  %i.bvw = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %i.buk
  store i64 -1, ptr %i.bvw, align 8, !tbaa !147
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bvp, i64 6512
  %i.bvy = load ptr, ptr %i.bvx, align 8, !tbaa !163
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvy, i64 8
  %i.bwa = load ptr, ptr %i.bvz, align 8, !tbaa !62
  %i.bwb = getelementptr inbounds [8 x i8], ptr %i.bwa, i64 %i.btq
  %i.bwc = load ptr, ptr %i.bwb, align 8, !tbaa !64
  %i.bwd = getelementptr inbounds [8 x i8], ptr %i.bwc, i64 %i.buk
  %i.bwe = load ptr, ptr %i.bwd, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.bwe, align 2, !tbaa !68
  br label %.sink.split464

.thread296:                                       ; preds = %bb.af
  store i8 %i.r, ptr %i.bvo, align 1, !tbaa !46
  %.pre436 = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  br i1 %i.s, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread296
  %i.bwf = load ptr, ptr @img, align 8, !tbaa !16
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwf, i64 14384
  %i.bwh = load ptr, ptr %i.bwg, align 8, !tbaa !55
  %i.bwi = getelementptr inbounds nuw [8 x i8], ptr %i.bwh, i64 %indvars.iv407
  %i.bwj = load ptr, ptr %i.bwi, align 8, !tbaa !58
  %i.bwk = getelementptr inbounds [8 x i8], ptr %i.bwj, i64 %i.u
  %i.bwl = load ptr, ptr %i.bwk, align 8, !tbaa !60
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwl, i64 8
  %i.bwn = load ptr, ptr %i.bwm, align 8, !tbaa !62
  %i.bwo = getelementptr inbounds nuw [8 x i8], ptr %i.bwn, i64 %i.t
  %i.bwp = load ptr, ptr %i.bwo, align 8, !tbaa !64
  %i.bwq = getelementptr inbounds [8 x i8], ptr %i.bwp, i64 %i.n
  %i.bwr = load ptr, ptr %i.bwq, align 8, !tbaa !66 ; 2 uses
  %i.bws = getelementptr [264 x i8], ptr %.pre436, i64 %i.p
  %i.bwt = getelementptr i8, ptr %i.bws, i64 288
  %i.bwu = getelementptr inbounds nuw [8 x i8], ptr %i.bwt, i64 %i.t
  %i.bwv = load i64, ptr %i.bwu, align 8, !tbaa !147
  %i.bww = getelementptr inbounds nuw i8, ptr %.pre436, i64 6496
  %i.bwx = load ptr, ptr %i.bww, align 8, !tbaa !141
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwx, i64 8
  %i.bwz = load ptr, ptr %i.bwy, align 8, !tbaa !142
  %i.bxa = getelementptr inbounds [8 x i8], ptr %i.bwz, i64 %i.btq
  %i.bxb = load ptr, ptr %i.bxa, align 8, !tbaa !144
  %i.bxc = getelementptr inbounds [8 x i8], ptr %i.bxb, i64 %i.buk
  store i64 %i.bwv, ptr %i.bxc, align 8, !tbaa !147
  %i.bxd = load i16, ptr %i.bwr, align 2, !tbaa !68
  %i.bxe = getelementptr inbounds nuw i8, ptr %.pre436, i64 6512
  %i.bxf = load ptr, ptr %i.bxe, align 8, !tbaa !163
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bxf, i64 8
  %i.bxh = load ptr, ptr %i.bxg, align 8, !tbaa !62
  %i.bxi = getelementptr inbounds [8 x i8], ptr %i.bxh, i64 %i.btq
  %i.bxj = load ptr, ptr %i.bxi, align 8, !tbaa !64
  %i.bxk = getelementptr inbounds [8 x i8], ptr %i.bxj, i64 %i.buk
  %i.bxl = load ptr, ptr %i.bxk, align 8, !tbaa !66 ; 2 uses
  store i16 %i.bxd, ptr %i.bxl, align 2, !tbaa !68
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bwr, i64 2
  %i.bxn = load i16, ptr %i.bxm, align 2, !tbaa !68
  br label %.sink.split464

.sink.split464:                                   ; preds = %bb.ag, %bb.ah
  %.sink468 = phi ptr [ %i.bxl, %bb.ah ], [ %i.bwe, %bb.ag ]
  %.sink466 = phi i16 [ %i.bxn, %bb.ah ], [ 0, %bb.ag ]
  %.ph465 = phi ptr [ %.pre436, %bb.ah ], [ %i.bvp, %bb.ag ]
  %i.bxo = getelementptr inbounds nuw i8, ptr %.sink468, i64 2
  store i16 %.sink466, ptr %i.bxo, align 2, !tbaa !68
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split464, %.split330, %.thread296
  %i.bxp = phi ptr [ %i.bum, %.split330 ], [ %.pre436, %.thread296 ], [ %.ph465, %.sink.split464 ]
  %i.bxq = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bxq, i64 168
  %i.bxs = load i32, ptr %i.bxr, align 8, !tbaa !57
  %i.bxt = add i32 %i.v, %i.bxs
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxq, i64 14384
  %i.bxv = load ptr, ptr %i.bxu, align 8, !tbaa !55
  %i.bxw = getelementptr inbounds nuw [8 x i8], ptr %i.bxv, i64 %indvars.iv407
  %i.bxx = load ptr, ptr %i.bxw, align 8, !tbaa !58
  %i.bxy = getelementptr inbounds [8 x i8], ptr %i.bxx, i64 %i.w
  %i.bxz = load ptr, ptr %i.bxy, align 8, !tbaa !60
  %i.bya = load ptr, ptr %i.bxz, align 8, !tbaa !62
  %i.byb = getelementptr inbounds [8 x i8], ptr %i.bya, i64 %i.m
  %i.byc = load ptr, ptr %i.byb, align 8, !tbaa !64
  %i.byd = getelementptr inbounds [8 x i8], ptr %i.byc, i64 %i.n
  %i.bye = load ptr, ptr %i.byd, align 8, !tbaa !66 ; 2 uses
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bxp, i64 6488
  %i.byg = load ptr, ptr %i.byf, align 8, !tbaa !135
  %i.byh = load ptr, ptr %i.byg, align 8, !tbaa !44
  %i.byi = getelementptr inbounds [8 x i8], ptr %i.byh, i64 %i.btq
  %i.byj = load ptr, ptr %i.byi, align 8, !tbaa !45
  %i.byk = sext i32 %i.bxt to i64                 ; 8 uses
  %i.byl = getelementptr inbounds i8, ptr %i.byj, i64 %i.byk
  store i8 %i.o, ptr %i.byl, align 1, !tbaa !46
  %i.bym = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bym, i64 24
  %i.byo = getelementptr inbounds [264 x i8], ptr %i.byn, i64 %i.p
  %i.byp = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %i.m
  %i.byq = load i64, ptr %i.byp, align 8, !tbaa !147
  %i.byr = getelementptr inbounds nuw i8, ptr %i.bym, i64 6496
  %i.bys = load ptr, ptr %i.byr, align 8, !tbaa !141
  %i.byt = load ptr, ptr %i.bys, align 8, !tbaa !142
  %i.byu = getelementptr inbounds [8 x i8], ptr %i.byt, i64 %i.btq
  %i.byv = load ptr, ptr %i.byu, align 8, !tbaa !144
  %i.byw = getelementptr inbounds [8 x i8], ptr %i.byv, i64 %i.byk
  store i64 %i.byq, ptr %i.byw, align 8, !tbaa !147
  %i.byx = load i16, ptr %i.bye, align 2, !tbaa !68
  %i.byy = getelementptr inbounds nuw i8, ptr %i.bym, i64 6512
  %i.byz = load ptr, ptr %i.byy, align 8, !tbaa !163
  %i.bza = load ptr, ptr %i.byz, align 8, !tbaa !62
  %i.bzb = getelementptr inbounds [8 x i8], ptr %i.bza, i64 %i.btq
  %i.bzc = load ptr, ptr %i.bzb, align 8, !tbaa !64
  %i.bzd = getelementptr inbounds [8 x i8], ptr %i.bzc, i64 %i.byk
  %i.bze = load ptr, ptr %i.bzd, align 8, !tbaa !66 ; 2 uses
  store i16 %i.byx, ptr %i.bze, align 2, !tbaa !68
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bye, i64 2
  %i.bzg = load i16, ptr %i.bzf, align 2, !tbaa !68
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bze, i64 2
  store i16 %i.bzg, ptr %i.bzh, align 2, !tbaa !68
  br i1 %.not, label %.split332, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bym, i64 6488
  %i.bzj = load ptr, ptr %i.bzi, align 8, !tbaa !135
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bzj, i64 8
  %i.bzl = load ptr, ptr %i.bzk, align 8, !tbaa !44
  %i.bzm = getelementptr inbounds [8 x i8], ptr %i.bzl, i64 %i.btq
  %i.bzn = load ptr, ptr %i.bzm, align 8, !tbaa !45
  %i.bzo = getelementptr inbounds i8, ptr %i.bzn, i64 %i.byk ; 2 uses
  br i1 %i.q, label %bb.al, label %.thread296.1

.thread296.1:                                     ; preds = %bb.aj
  store i8 %i.r, ptr %i.bzo, align 1, !tbaa !46
  %.pre434 = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  br i1 %i.s, label %bb.ak, label %.split332

bb.ak:                                            ; preds = %.thread296.1
  %i.bzp = load ptr, ptr @img, align 8, !tbaa !16
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzp, i64 14384
  %i.bzr = load ptr, ptr %i.bzq, align 8, !tbaa !55
  %i.bzs = getelementptr inbounds nuw [8 x i8], ptr %i.bzr, i64 %indvars.iv407
  %i.bzt = load ptr, ptr %i.bzs, align 8, !tbaa !58
  %i.bzu = getelementptr inbounds [8 x i8], ptr %i.bzt, i64 %i.w
  %i.bzv = load ptr, ptr %i.bzu, align 8, !tbaa !60
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.bzv, i64 8
  %i.bzx = load ptr, ptr %i.bzw, align 8, !tbaa !62
  %i.bzy = getelementptr inbounds nuw [8 x i8], ptr %i.bzx, i64 %i.t
  %i.bzz = load ptr, ptr %i.bzy, align 8, !tbaa !64
  %i.caa = getelementptr inbounds [8 x i8], ptr %i.bzz, i64 %i.n
  %i.cab = load ptr, ptr %i.caa, align 8, !tbaa !66 ; 2 uses
  %i.cac = getelementptr [264 x i8], ptr %.pre434, i64 %i.p
  %i.cad = getelementptr i8, ptr %i.cac, i64 288
  %i.cae = getelementptr inbounds nuw [8 x i8], ptr %i.cad, i64 %i.t
  %i.caf = load i64, ptr %i.cae, align 8, !tbaa !147
  %i.cag = getelementptr inbounds nuw i8, ptr %.pre434, i64 6496
  %i.cah = load ptr, ptr %i.cag, align 8, !tbaa !141
  %i.cai = getelementptr inbounds nuw i8, ptr %i.cah, i64 8
  %i.caj = load ptr, ptr %i.cai, align 8, !tbaa !142
  %i.cak = getelementptr inbounds [8 x i8], ptr %i.caj, i64 %i.btq
  %i.cal = load ptr, ptr %i.cak, align 8, !tbaa !144
  %i.cam = getelementptr inbounds [8 x i8], ptr %i.cal, i64 %i.byk
  store i64 %i.caf, ptr %i.cam, align 8, !tbaa !147
  %i.can = load i16, ptr %i.cab, align 2, !tbaa !68
  %i.cao = getelementptr inbounds nuw i8, ptr %.pre434, i64 6512
  %i.cap = load ptr, ptr %i.cao, align 8, !tbaa !163
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cap, i64 8
  %i.car = load ptr, ptr %i.caq, align 8, !tbaa !62
  %i.cas = getelementptr inbounds [8 x i8], ptr %i.car, i64 %i.btq
  %i.cat = load ptr, ptr %i.cas, align 8, !tbaa !64
  %i.cau = getelementptr inbounds [8 x i8], ptr %i.cat, i64 %i.byk
  %i.cav = load ptr, ptr %i.cau, align 8, !tbaa !66 ; 2 uses
  store i16 %i.can, ptr %i.cav, align 2, !tbaa !68
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cab, i64 2
  %i.cax = load i16, ptr %i.caw, align 2, !tbaa !68
  br label %.split332.sink.split

bb.al:                                            ; preds = %bb.aj
  store i8 -1, ptr %i.bzo, align 1, !tbaa !46
  %i.cay = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cay, i64 6496
  %i.cba = load ptr, ptr %i.caz, align 8, !tbaa !141
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cba, i64 8
  %i.cbc = load ptr, ptr %i.cbb, align 8, !tbaa !142
  %i.cbd = getelementptr inbounds [8 x i8], ptr %i.cbc, i64 %i.btq
  %i.cbe = load ptr, ptr %i.cbd, align 8, !tbaa !144
  %i.cbf = getelementptr inbounds [8 x i8], ptr %i.cbe, i64 %i.byk
  store i64 -1, ptr %i.cbf, align 8, !tbaa !147
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cay, i64 6512
  %i.cbh = load ptr, ptr %i.cbg, align 8, !tbaa !163
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbh, i64 8
  %i.cbj = load ptr, ptr %i.cbi, align 8, !tbaa !62
  %i.cbk = getelementptr inbounds [8 x i8], ptr %i.cbj, i64 %i.btq
  %i.cbl = load ptr, ptr %i.cbk, align 8, !tbaa !64
  %i.cbm = getelementptr inbounds [8 x i8], ptr %i.cbl, i64 %i.byk
  %i.cbn = load ptr, ptr %i.cbm, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.cbn, align 2, !tbaa !68
  br label %.split332.sink.split

.split332.sink.split:                             ; preds = %bb.ak, %bb.al
  %.sink472 = phi ptr [ %i.cbn, %bb.al ], [ %i.cav, %bb.ak ]
  %.sink470 = phi i16 [ 0, %bb.al ], [ %i.cax, %bb.ak ]
  %.ph469 = phi ptr [ %i.cay, %bb.al ], [ %.pre434, %bb.ak ]
  %i.cbo = getelementptr inbounds nuw i8, ptr %.sink472, i64 2
  store i16 %.sink470, ptr %i.cbo, align 2, !tbaa !68
  br label %.split332

.split332:                                        ; preds = %.split332.sink.split, %.thread296.1, %bb.ai
  %i.cbp = phi ptr [ %.pre434, %.thread296.1 ], [ %i.bym, %bb.ai ], [ %.ph469, %.split332.sink.split ]
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %exitcond410.not = icmp eq i64 %indvars.iv.next408, 4
  br i1 %exitcond410.not, label %.loopexit, label %.split330, !llvm.loop !282

.loopexit:                                        ; preds = %.split311.us, %bb.m, %.split324.us, %bb.k, %.split332, %.split332.us.us.split, %.split330.us.us.us.preheader, %bb.j, %.loopexit302
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @update_refresh_map(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4732
  %i.c = load i32, ptr %i.b, align 4, !tbaa !289
  switch i32 %i.c, label %bb.r [
    i32 1, label %bb.b
    i32 2, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not = icmp ne i32 %0, 0
  %i.g = zext i1 %.not to i8                      ; 4 uses
  %i.h = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.i = load ptr, ptr @img, align 8, !tbaa !16   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 164
  %i.k = load i32, ptr %i.j, align 4, !tbaa !253
  %i.l = shl nsw i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.q = load i32, ptr %i.p, align 8, !tbaa !254
  %i.r = shl nsw i32 %i.q, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s
  store i8 %i.g, ptr %i.t, align 1, !tbaa !46
  %i.u = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.v = load ptr, ptr @img, align 8, !tbaa !16   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 164
  %i.x = load i32, ptr %i.w, align 4, !tbaa !253
  %i.y = shl nsw i32 %i.x, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !254
  %i.ae = shl nsw i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %i.ab, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 1
  store i8 %i.g, ptr %i.ah, align 1, !tbaa !46
  %i.ai = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.aj = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 164
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !253
  %i.am = shl nsw i32 %i.al, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.ai, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !254
  %i.at = shl nsw i32 %i.as, 1
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.aq, i64 %i.au
  store i8 %i.g, ptr %i.av, align 1, !tbaa !46
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.aw = icmp eq i32 %i.e, 3
  br i1 %i.aw, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.ax = icmp eq i32 %1, 0                       ; 4 uses
  br i1 %i.ax, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !134 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 10
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = icmp eq i32 %i.az, 9
  %i.bc = zext i1 %i.bb to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.bd = phi i8 [ 0, %bb.e ], [ 1, %bb.f ], [ %i.bc, %bb.g ]
  %i.be = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.bf = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 164
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !253
  %i.bi = shl nsw i32 %i.bh, 1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 160
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !254
  %i.bo = shl nsw i32 %i.bn, 1
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %i.bp
  store i8 %i.bd, ptr %i.bq, align 1, !tbaa !46
  br i1 %i.ax, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !134 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 10
  br i1 %i.bt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = icmp eq i32 %i.bs, 9
  %i.bv = zext i1 %i.bu to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.bw = phi i8 [ 0, %bb.h ], [ 1, %bb.i ], [ %i.bv, %bb.j ]
  %i.bx = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.by = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 164
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !253
  %i.cb = shl nsw i32 %i.ca, 1
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !45
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !254
  %i.ch = shl nsw i32 %i.cg, 1
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr i8, ptr %i.ce, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 1
  store i8 %i.bw, ptr %i.ck, align 1, !tbaa !46
  br i1 %i.ax, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !134 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 10
  br i1 %i.cn, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = icmp eq i32 %i.cm, 9
  %i.cp = zext i1 %i.co to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.cq = phi i8 [ 0, %bb.k ], [ 1, %bb.l ], [ %i.cp, %bb.m ]
  %i.cr = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.cs = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 164
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !253
  %i.cv = shl nsw i32 %i.cu, 1
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %i.cr, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !45
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 160
  %i.db = load i32, ptr %i.da, align 8, !tbaa !254
  %i.dc = shl nsw i32 %i.db, 1
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.cz, i64 %i.dd
  store i8 %i.cq, ptr %i.de, align 1, !tbaa !46
  br i1 %i.ax, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !134 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 10
  br i1 %i.dh, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = icmp eq i32 %i.dg, 9
  %i.dj = zext i1 %i.di to i8
  br label %.sink.split

bb.q:                                             ; preds = %bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !134
  %i.dm = add i32 %i.dl, -9
  %narrow = icmp ult i32 %i.dm, 2
  %i.dn = zext i1 %narrow to i8
  %i.do = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.dp = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 164
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !253
  %i.ds = shl nsw i32 %i.dr, 1
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !45
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 160
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !254
  %i.dy = shl nsw i32 %i.dx, 1
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %i.dv, i64 %i.dz
  store i8 %i.dn, ptr %i.ea, align 1, !tbaa !46
  %i.eb = load i32, ptr %i.dk, align 8, !tbaa !134
  %i.ec = add i32 %i.eb, -9
  %narrow32 = icmp ult i32 %i.ec, 2
  %i.ed = zext i1 %narrow32 to i8
  %i.ee = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.ef = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 164
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !253
  %i.ei = shl nsw i32 %i.eh, 1
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !45
end_hunk_4
begin_hunk_5_@llvm.smin.v4i32
!71 = distinct !{!71, !48}
!72 = distinct !{!72, !48}
!73 = distinct !{!73, !48}
!74 = distinct !{!74, !48}
!75 = distinct !{!75, !48}
!76 = distinct !{!76, !48}
!77 = distinct !{!77, !48}
!78 = !{!27, !5, i64 176}
!79 = !{!27, !5, i64 180}
!80 = !{!27, !5, i64 196}
!81 = !{!82, !82, i64 0}
!82 = !{!"p1 _ZTS16storable_picture", !12, i64 0}
!83 = !{!84, !65, i64 6440}
!84 = !{!"storable_picture", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 1608, !6, i64 3192, !6, i64 4776, !5, i64 6360, !5, i64 6364, !5, i64 6368, !5, i64 6372, !5, i64 6376, !5, i64 6380, !5, i64 6384, !5, i64 6388, !5, i64 6392, !5, i64 6396, !5, i64 6400, !5, i64 6404, !5, i64 6408, !5, i64 6412, !5, i64 6416, !5, i64 6420, !5, i64 6424, !5, i64 6428, !5, i64 6432, !65, i64 6440, !61, i64 6448, !61, i64 6456, !59, i64 6464, !63, i64 6472, !21, i64 6480, !85, i64 6488, !86, i64 6496, !86, i64 6504, !61, i64 6512, !29, i64 6520, !29, i64 6528, !82, i64 6536, !82, i64 6544, !82, i64 6552, !5, i64 6560, !5, i64 6564, !5, i64 6568, !5, i64 6572, !5, i64 6576, !5, i64 6580, !5, i64 6584}
!85 = !{!"p3 omnipotent char", !10, i64 0}
!86 = !{!"p3 long long", !10, i64 0}
!87 = !{!27, !12, i64 14216}
!88 = !{!18, !5, i64 4016}
!89 = !{!20, !20, i64 0}
!90 = !{!27, !20, i64 14232}
!91 = !{!92, !5, i64 4}
!92 = !{!"syntaxelement", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !12, i64 32}
!93 = !{!92, !5, i64 24}
!94 = !{!92, !5, i64 0}
!95 = !{!96, !97, i64 24}
!96 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !97, i64 24, !12, i64 32, !12, i64 40, !5, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !5, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !12, i64 112, !6, i64 120}
!97 = !{!"p1 _ZTS13datapartition", !12, i64 0}
!98 = !{!92, !5, i64 12}
!99 = !{!18, !5, i64 4008}
!100 = !{!27, !5, i64 192}
!101 = !{!27, !5, i64 12}
!102 = !{!18, !5, i64 272}
!103 = !{!104, !5, i64 0}
!104 = !{!"pix_pos", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!105 = !{!27, !20, i64 14240}
!106 = !{!104, !5, i64 4}
!107 = !{!27, !29, i64 128}
!108 = !{!104, !5, i64 20}
!109 = !{!104, !5, i64 16}
!110 = !{!18, !5, i64 4048}
!111 = !{!18, !5, i64 4052}
!112 = !{!18, !5, i64 4056}
!113 = !{!18, !5, i64 4060}
!114 = !{!27, !14, i64 14160}
!115 = !{!27, !5, i64 15260}
!116 = !{!27, !9, i64 14176}
!117 = distinct !{!117, !48}
!118 = !{!27, !30, i64 14224}
!119 = !{!120, !37, i64 480}
!120 = !{!"macroblock", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !5, i64 20, !6, i64 24, !30, i64 56, !30, i64 64, !5, i64 72, !6, i64 76, !6, i64 332, !6, i64 348, !5, i64 364, !121, i64 368, !6, i64 376, !6, i64 392, !121, i64 408, !5, i64 416, !5, i64 420, !5, i64 424, !5, i64 428, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !37, i64 480, !19, i64 488, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !5, i64 524, !5, i64 528}
!121 = !{!"long long", !6, i64 0}
!122 = !{!85, !85, i64 0}
!123 = !{!124, !5, i64 196}
!124 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !5, i64 56, !5, i64 60, !5, i64 64, !6, i64 68, !6, i64 100, !6, i64 132, !5, i64 164, !5, i64 168, !5, i64 172, !21, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232}
!125 = !{!18, !5, i64 4728}
!126 = !{!127, !63, i64 8}
!127 = !{!"", !24, i64 0, !63, i64 8, !61, i64 16, !63, i64 24, !65, i64 32, !29, i64 40, !29, i64 48}
!128 = distinct !{!128, !48}
!129 = distinct !{!129, !48}
!130 = distinct !{!130, !48}
!131 = !{!27, !5, i64 14456}
!132 = !{!27, !5, i64 14460}
!133 = !{!120, !5, i64 472}
!134 = !{!120, !5, i64 72}
!135 = !{!84, !85, i64 6488}
!136 = distinct !{!136, !48}
!137 = distinct !{!137, !48}
!138 = distinct !{!138, !48}
!139 = distinct !{!139, !48}
!140 = distinct !{!140, !48}
!141 = !{!84, !86, i64 6496}
!142 = !{!143, !143, i64 0}
!143 = !{!"p2 long long", !11, i64 0}
!144 = !{!145, !145, i64 0}
!145 = !{!"p1 long long", !12, i64 0}
!146 = !{!120, !5, i64 432}
!147 = !{!121, !121, i64 0}
!148 = distinct !{!148, !48}
!149 = !{!120, !5, i64 364}
!150 = !{!27, !5, i64 15528}
!151 = distinct !{!151, !48}
!152 = !{i64 0, i64 4, !4, i64 4, i64 1024, !46, i64 1028, i64 1024, !46, i64 2052, i64 1024, !46, i64 3076, i64 3072, !46, i64 6148, i64 8, !46, i64 6156, i64 4, !46, i64 6160, i64 4, !46, i64 6164, i64 4, !46, i64 6168, i64 512, !46, i64 6680, i64 512, !46, i64 7192, i64 1024, !46}
!153 = distinct !{!153, !48}
!154 = !{!27, !5, i64 44}
!155 = !{!27, !5, i64 15540}
!156 = !{!120, !121, i64 368}
!157 = distinct !{!157, !48}
!158 = distinct !{!158, !48}
!159 = distinct !{!159, !48}
!160 = distinct !{!160, !48}
!161 = distinct !{!161, !48}
!162 = !{!27, !31, i64 14376}
!163 = !{!84, !61, i64 6512}
!164 = distinct !{!164, !48}
!165 = !{!31, !31, i64 0}
!166 = distinct !{!166, !48}
!167 = distinct !{!167, !48}
!168 = !{!27, !5, i64 15268}
!169 = !{!27, !5, i64 32}
!170 = !{!171, !31, i64 1672}
!171 = !{!"", !19, i64 0, !6, i64 8, !6, i64 520, !6, i64 1032, !14, i64 1544, !9, i64 1552, !5, i64 1560, !37, i64 1564, !6, i64 1568, !6, i64 1584, !29, i64 1600, !6, i64 1608, !6, i64 1624, !5, i64 1640, !121, i64 1648, !5, i64 1656, !31, i64 1664, !31, i64 1672, !6, i64 1680, !5, i64 1712, !5, i64 1716, !5, i64 1720, !5, i64 1724, !5, i64 1728, !5, i64 1732, !5, i64 1736, !5, i64 1740, !5, i64 1744}
!172 = !{!171, !31, i64 1664}
!173 = distinct !{!173, !48}
!174 = distinct !{!174, !48}
!175 = distinct !{!175, !48}
!176 = !{!120, !5, i64 424}
!177 = !{!27, !5, i64 8}
!178 = !{!27, !9, i64 14184}
!179 = !{!27, !14, i64 14192}
!180 = !{!27, !5, i64 15256}
!181 = distinct !{!181, !48, !182}
!182 = !{!"llvm.loop.isvectorized", i32 1}
!183 = distinct !{!183, !48, !182}
!184 = distinct !{!184, !48, !182}
!185 = distinct !{!185, !48, !182}
!186 = distinct !{!186, !48, !182}
!187 = distinct !{!187, !48, !182}
!188 = distinct !{!188, !48, !182}
!189 = distinct !{!189, !48, !182}
!190 = distinct !{!190, !48, !182}
!191 = distinct !{!191, !48, !182}
!192 = distinct !{!192, !48, !182}
!193 = distinct !{!193, !48, !182}
!194 = distinct !{!194, !48, !182}
!195 = distinct !{!195, !48, !182}
!196 = distinct !{!196, !48, !182}
!197 = distinct !{!197, !48, !182}
!198 = !{!27, !5, i64 15536}
!199 = !{!27, !5, i64 200}
!200 = !{!27, !5, i64 188}
!201 = !{!27, !5, i64 204}
!202 = !{!84, !63, i64 6472}
!203 = distinct !{!203, !48, !182, !204}
!204 = !{!"llvm.loop.unroll.runtime.disable"}
!205 = !{!"branch_weights", i32 4, i32 12}
!206 = distinct !{!206, !48, !182, !204}
!207 = distinct !{!207, !48, !182}
!208 = distinct !{!208, !48}
!209 = !{!27, !9, i64 152}
!210 = distinct !{!210, !48}
!211 = !{!18, !5, i64 5116}
!212 = !{!27, !5, i64 15244}
!213 = distinct !{!213, !48}
!214 = distinct !{!214, !48}
!215 = distinct !{!215, !48}
!216 = distinct !{!216, !48}
!217 = distinct !{!217, !48}
!218 = !{!27, !5, i64 144}
!219 = !{!18, !5, i64 0}
!220 = !{!120, !5, i64 452}
!221 = !{!120, !5, i64 456}
!222 = !{!18, !5, i64 5660}
!223 = !{!27, !14, i64 14200}
!224 = distinct !{!224, !48}
!225 = distinct !{!225, !48}
!226 = distinct !{!226, !48}
!227 = distinct !{!227, !48}
!228 = !{!120, !5, i64 416}
!229 = !{!27, !29, i64 136}
!230 = !{!27, !5, i64 184}
!231 = distinct !{!231, !48}
!232 = distinct !{!232, !48}
!233 = !{!127, !63, i64 24}
!234 = distinct !{!234, !48, !182}
!235 = distinct !{!235, !48}
!236 = distinct !{!236, !48}
!237 = !{!27, !9, i64 14168}
!238 = distinct !{!238, !48}
!239 = distinct !{!239, !48}
!240 = distinct !{!240, !48}
!241 = !{!171, !5, i64 1656}
!242 = !{!171, !5, i64 1712}
!243 = !{!171, !5, i64 1640}
!244 = !{!171, !121, i64 1648}
!245 = !{!171, !5, i64 1560}
!246 = !{!120, !5, i64 504}
!247 = !{!171, !5, i64 1744}
!248 = !{!171, !14, i64 1544}
!249 = distinct !{!249, !48}
!250 = !{!171, !9, i64 1552}
!251 = !{!171, !5, i64 1720}
!252 = !{!127, !29, i64 48}
!253 = !{!27, !5, i64 164}
!254 = !{!27, !5, i64 160}
!255 = distinct !{!255, !48}
!256 = distinct !{!256, !48}
!257 = distinct !{!257, !48}
!258 = distinct !{!258, !48}
!259 = distinct !{!259, !48}
!260 = !{!171, !5, i64 1716}
!261 = !{!171, !29, i64 1600}
!262 = distinct !{!262, !48}
!263 = distinct !{!263, !48}
!264 = !{!265}
!265 = distinct !{!265, !266}
!266 = distinct !{!266, !"LVerDomain"}
!267 = !{!268}
!268 = distinct !{!268, !266}
!269 = distinct !{!269, !48, !182}
!270 = distinct !{!270, !48}
!271 = distinct !{!271, !48}
!272 = distinct !{!272, !48}
!273 = distinct !{!273, !48}
!274 = distinct !{!274, !48}
!275 = distinct !{!275, !48}
!276 = distinct !{!276, !48}
!277 = distinct !{!277, !48}
!278 = distinct !{!278, !48}
!279 = distinct !{!279, !48}
!280 = !{!171, !37, i64 1564}
!281 = distinct !{!281, !48}
!282 = distinct !{!282, !48}
!283 = distinct !{!283, !48}
!284 = distinct !{!284, !48}
!285 = distinct !{!285, !48}
!286 = distinct !{!286, !48}
!287 = distinct !{!287, !48}
!288 = distinct !{!288, !48}
!289 = !{!18, !5, i64 4732}
end_hunk_5
