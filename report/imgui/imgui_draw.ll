inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 354
begin_hunk_0_@_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi:bb.a
  %.promoted628 = load ptr, ptr %i.de, align 8, !tbaa !105
  br label %.backedge

.lr.ph552:                                        ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.pre596 = load ptr, ptr %i.dh, align 8, !tbaa !239
  br label %bb.t

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph546
  %i.di = phi ptr [ %.promoted628, %.lr.ph546 ], [ %i.fi, %.backedge.backedge ] ; 13 uses
  %indvars.iv565 = phi i64 [ 0, %.lr.ph546 ], [ %indvars.iv.next566, %.backedge.backedge ] ; 2 uses
  %.0423544 = phi i32 [ %i.dc, %.lr.ph546 ], [ %i.dn, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 5 uses
  %i.dj = icmp eq i64 %indvars.iv.next566, %i.av  ; 2 uses
  %i.dk = trunc nuw nsw i64 %indvars.iv.next566 to i32
  %i.dl = select i1 %i.dj, i32 0, i32 %i.dk       ; 2 uses
  %i.dm = add i32 %.0423544, %i.dd
  %i.dn = select i1 %i.dj, i32 %i.dc, i32 %i.dm   ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv565
  %i.dp = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dp
  %i.dr = load <2 x float>, ptr %i.do, align 4, !tbaa !8
  %i.ds = load <2 x float>, ptr %i.dq, align 4, !tbaa !8
  %i.dt = fadd <2 x float> %i.dr, %i.ds
  %i.du = fmul <2 x float> %i.dt, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop620 = fmul <2 x float> %i.du, %i.du
  %i.dv = extractelement <2 x float> %foldExtExtBinop620, i64 1
  %i.dw = extractelement <2 x float> %i.du, i64 0 ; 2 uses
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.dv) ; 2 uses
  %i.dy = fcmp ogt float %i.dx, f0x358637BD
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.backedge
  %i.dz = fdiv float 1.000000e+00, %i.dx          ; 2 uses
  %i.ea = fcmp ogt float %i.dz, 1.000000e+02
  %.0428 = select i1 %i.ea, float 1.000000e+02, float %i.dz
  %i.eb = insertelement <2 x float> poison, float %.0428, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %i.du, %i.ec
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.backedge
  %i.ee = phi <2 x float> [ %i.ed, %bb.p ], [ %i.du, %.backedge ]
  %i.ef = fmul <2 x float> %i.dg, %i.ee           ; 2 uses
  %i.eg = shl nuw nsw i32 %i.dl, 1
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dp ; 2 uses
  %i.ek = load <2 x float>, ptr %i.ej, align 4, !tbaa !8
  %i.el = fadd <2 x float> %i.ek, %i.ef
  store <2 x float> %i.el, ptr %i.ei, align 4, !tbaa !8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.en = load <2 x float>, ptr %i.ej, align 4, !tbaa !8
  %i.eo = fsub <2 x float> %i.en, %i.ef
  store <2 x float> %i.eo, ptr %i.em, align 4, !tbaa !8
  %i.ep = trunc i32 %i.dn to i16                  ; 4 uses
  store i16 %i.ep, ptr %i.di, align 2, !tbaa !240
  %i.eq = trunc i32 %.0423544 to i16              ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !240
  %i.es = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  br i1 %.not451, label %bb.r, label %.thread612

bb.r:                                             ; preds = %bb.q
  %i.eu = trunc i32 %i.dn to i16
  %i.ev = insertelement <2 x i16> poison, i16 %i.eu, i64 0
  %i.ew = trunc i32 %.0423544 to i16
  %i.ex = insertelement <2 x i16> %i.ev, i16 %i.ew, i64 1
  %i.ey = shufflevector <2 x i16> %i.ex, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ez = add i16 %i.eq, 2                        ; 2 uses
  store i16 %i.ez, ptr %i.es, align 2, !tbaa !240
  %i.fa = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !240
  %i.fb = add <4 x i16> %i.ey, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.fb, ptr %i.et, align 2, !tbaa !240
  %i.fc = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i16 %i.eq, ptr %i.fc, align 2, !tbaa !240
  %i.fd = getelementptr inbounds nuw i8, ptr %i.di, i64 18
  store i16 %i.eq, ptr %i.fd, align 2, !tbaa !240
  %i.fe = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  store i16 %i.ep, ptr %i.fe, align 2, !tbaa !240
  %i.ff = getelementptr inbounds nuw i8, ptr %i.di, i64 22
  %i.fg = extractelement <4 x i16> %i.fb, i64 2
  store i16 %i.fg, ptr %i.ff, align 2, !tbaa !240
  %i.fh = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  store ptr %i.fh, ptr %i.de, align 8, !tbaa !105
  %exitcond569.not = icmp eq i64 %indvars.iv.next566, %wide.trip.count568
  br i1 %exitcond569.not, label %.lr.ph552, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.r, %.thread612
  %i.fi = phi ptr [ %i.fh, %bb.r ], [ %i.fn, %.thread612 ]
  br label %.backedge, !llvm.loop !246

.thread612:                                       ; preds = %bb.q
  %i.fj = getelementptr inbounds nuw i8, ptr %i.di, i64 10
  %i.fk = add i16 %i.eq, 1                        ; 2 uses
  store i16 %i.fk, ptr %i.es, align 2, !tbaa !240
  %i.fl = add i16 %i.ep, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !240
  store i16 %i.fk, ptr %i.et, align 2, !tbaa !240
  store i16 %i.ep, ptr %i.fj, align 2, !tbaa !240
  %i.fn = getelementptr inbounds nuw i8, ptr %i.di, i64 12 ; 2 uses
  store ptr %i.fn, ptr %i.de, align 8, !tbaa !105
  %exitcond569.not614 = icmp eq i64 %indvars.iv.next566, %wide.trip.count568
  br i1 %exitcond569.not614, label %.lr.ph550, label %.backedge.backedge

.lr.ph550:                                        ; preds = %.thread612
  %i.fo = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !247
  %i.fr = sext i32 %i.u to i64
  %i.fs = getelementptr inbounds [16 x i8], ptr %i.fq, i64 %i.fr ; 2 uses
  %i.ft = load <2 x i32>, ptr %i.fs, align 4, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.pre595 = load ptr, ptr %i.fv, align 8, !tbaa !239
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph550, %bb.s
  %i.fw = phi ptr [ %.pre595, %.lr.ph550 ], [ %i.gk, %bb.s ]
  %indvars.iv570 = phi i64 [ 0, %.lr.ph550 ], [ %indvars.iv.next571, %bb.s ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv570, 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 4
  store i64 %i.fy, ptr %i.fw, align 4
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !239
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store <2 x i32> %i.ft, ptr %i.ga, align 4
  %i.gb = load ptr, ptr %i.fv, align 8, !tbaa !239 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i32 %3, ptr %i.gc, align 4, !tbaa !241
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  %i.gf = load i64, ptr %i.gd, align 4
  store i64 %i.gf, ptr %i.ge, align 4
  %i.gg = load ptr, ptr %i.fv, align 8, !tbaa !239
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 28
  store <2 x i32> %i.fu, ptr %i.gh, align 4
  %i.gi = load ptr, ptr %i.fv, align 8, !tbaa !239 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  store i32 %3, ptr %i.gj, align 4, !tbaa !241
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 40 ; 2 uses
  store ptr %i.gk, ptr %i.fv, align 8, !tbaa !239
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %exitcond574.not = icmp eq i64 %indvars.iv.next571, %i.av
  br i1 %exitcond574.not, label %.loopexit538, label %bb.s, !llvm.loop !248

bb.t:                                             ; preds = %.lr.ph552, %bb.t
  %i.gl = phi ptr [ %.pre596, %.lr.ph552 ], [ %i.hg, %bb.t ]
  %indvars.iv575 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next576, %bb.t ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv575
  %i.gn = load i64, ptr %i.gm, align 4
  store i64 %i.gn, ptr %i.gl, align 4
  %i.go = load ptr, ptr %i.dh, align 8, !tbaa !239
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.f, ptr %i.gp, align 4
  %i.gq = load ptr, ptr %i.dh, align 8, !tbaa !239 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store i32 %3, ptr %i.gr, align 4, !tbaa !241
  %.idx610 = shl nuw nsw i64 %indvars.iv575, 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx610 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 20
  %i.gu = load i64, ptr %i.gs, align 4
  store i64 %i.gu, ptr %i.gt, align 4
  %i.gv = load ptr, ptr %i.dh, align 8, !tbaa !239
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 28
  store i64 %i.f, ptr %i.gw, align 4
  %i.gx = load ptr, ptr %i.dh, align 8, !tbaa !239 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 36
  store i32 %i.r, ptr %i.gy, align 4, !tbaa !241
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hb = load i64, ptr %i.gz, align 4
  store i64 %i.hb, ptr %i.ha, align 4
  %i.hc = load ptr, ptr %i.dh, align 8, !tbaa !239
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  store i64 %i.f, ptr %i.hd, align 4
  %i.he = load ptr, ptr %i.dh, align 8, !tbaa !239 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  store i32 %i.r, ptr %i.hf, align 4, !tbaa !241
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 60 ; 2 uses
  store ptr %i.hg, ptr %i.dh, align 8, !tbaa !239
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %exitcond579.not = icmp eq i64 %indvars.iv.next576, %i.av
  br i1 %exitcond579.not, label %.loopexit538, label %bb.t, !llvm.loop !249

bb.u:                                             ; preds = %bb.n
  %i.hh = fsub float %i.t, %i.j
  %i.hi = fmul float %i.hh, 5.000000e-01          ; 3 uses
  %i.hj = fadd float %i.j, %i.hi
  %i.hk = load <2 x float>, ptr %i.au, align 4, !tbaa !8
  %i.hl = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hn = fmul <2 x float> %i.hm, %i.hk
  %i.ho = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.hp = fadd <2 x float> %i.hn, %i.ho
  store <2 x float> %i.hp, ptr %i.aw, align 4
  %6 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.hq = load <2 x float>, ptr %i.au, align 4, !tbaa !8 ; 2 uses
  %i.hr = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ht = fmul <2 x float> %i.hs, %i.hq           ; 2 uses
  %i.hu = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.hv = fadd <2 x float> %i.ht, %i.hu
  store <2 x float> %i.hv, ptr %6, align 4
  %i.hw = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.hx = fsub <2 x float> %i.hw, %i.ht
  store <2 x float> %i.hx, ptr %7, align 4
  %i.hy = fmul <2 x float> %i.hm, %i.hq
  %i.hz = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.ia = fsub <2 x float> %i.hz, %i.hy
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store <2 x float> %i.ia, ptr %i.ib, align 4
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 4 uses
  %i.id = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.ie = fmul <2 x float> %i.hm, %i.id
  %i.if = load <2 x float>, ptr %i.ic, align 4, !tbaa !8
  %i.ig = fadd <2 x float> %i.ie, %i.if
  %i.ih = shl nsw i32 %i.g, 2                     ; 2 uses
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ii
  store <2 x float> %i.ig, ptr %i.ij, align 4
  %i.ik = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.il = fmul <2 x float> %i.hs, %i.ik
  %i.im = load <2 x float>, ptr %i.ic, align 4, !tbaa !8
  %i.in = fadd <2 x float> %i.il, %i.im
  %i.io = zext nneg i32 %i.ih to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.io ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store <2 x float> %i.in, ptr %i.iq, align 4
  %i.ir = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.is = fmul <2 x float> %i.hs, %i.ir
  %i.it = load <2 x float>, ptr %i.ic, align 4, !tbaa !8
  %i.iu = fsub <2 x float> %i.it, %i.is
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <2 x float> %i.iu, ptr %i.iv, align 4
  %i.iw = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.ix = fmul <2 x float> %i.hm, %i.iw
  %i.iy = load <2 x float>, ptr %i.ic, align 4, !tbaa !8
  %i.iz = fsub <2 x float> %i.iy, %i.ix
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  store <2 x float> %i.iz, ptr %i.ja, align 4
  br label %.lr.ph556

.lr.ph556:                                        ; preds = %bb.u, %.thread532
  %i.jb = phi float [ %i.bx, %.thread532 ], [ %i.hi, %bb.u ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !75 ; 2 uses
  %i.je = fadd float %i.j, %i.jb
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load ptr, ptr %i.jf, align 8, !tbaa !105
  %wide.trip.count583 = zext nneg i32 %i.h to i64
  %i.jg = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.v

.lr.ph558:                                        ; preds = %bb.x
  store ptr %i.lv, ptr %i.jf, align 8, !tbaa !105
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %.pre597 = load ptr, ptr %i.jk, align 8, !tbaa !239
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph556, %bb.x
  %indvars.iv580 = phi i64 [ 0, %.lr.ph556 ], [ %indvars.iv.next581, %bb.x ] ; 2 uses
  %i.jl = phi ptr [ %.promoted, %.lr.ph556 ], [ %i.lv, %bb.x ] ; 9 uses
  %.0432554 = phi i32 [ %i.jd, %.lr.ph556 ], [ %spec.select, %bb.x ] ; 3 uses
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1 ; 4 uses
  %i.jm = icmp eq i64 %indvars.iv.next581, %i.av  ; 2 uses
  %i.jn = trunc nuw nsw i64 %indvars.iv.next581 to i32
  %i.jo = select i1 %i.jm, i32 0, i32 %i.jn       ; 2 uses
  %i.jp = add i32 %.0432554, 4
  %spec.select = select i1 %i.jm, i32 %i.jd, i32 %i.jp ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv580
  %i.jr = zext nneg i32 %i.jo to i64              ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.jr
  %i.jt = load <2 x float>, ptr %i.jq, align 4, !tbaa !8
  %i.ju = load <2 x float>, ptr %i.js, align 4, !tbaa !8
  %i.jv = fadd <2 x float> %i.jt, %i.ju
  %i.jw = fmul <2 x float> %i.jv, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop622 = fmul <2 x float> %i.jw, %i.jw
  %i.jx = extractelement <2 x float> %foldExtExtBinop622, i64 1
  %i.jy = extractelement <2 x float> %i.jw, i64 0 ; 2 uses
  %i.jz = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.jy, float %i.jx) ; 2 uses
  %i.ka = fcmp ogt float %i.jz, f0x358637BD
  br i1 %i.ka, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kb = fdiv float 1.000000e+00, %i.jz          ; 2 uses
  %i.kc = fcmp ogt float %i.kb, 1.000000e+02
  %.0431 = select i1 %i.kc, float 1.000000e+02, float %i.kb
  %i.kd = insertelement <2 x float> poison, float %.0431, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x float> %i.jw, %i.ke
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.kg = phi <2 x float> [ %i.kf, %bb.w ], [ %i.jw, %bb.v ] ; 2 uses
  %i.kh = fmul <2 x float> %i.jh, %i.kg           ; 2 uses
  %i.ki = shl nsw i32 %i.jo, 2
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.kj ; 4 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jr ; 4 uses
  %i.km = load <2 x float>, ptr %i.kl, align 4, !tbaa !8
  %i.kn = fadd <2 x float> %i.kh, %i.km
  store <2 x float> %i.kn, ptr %i.kk, align 4, !tbaa !8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.kp = fmul <2 x float> %i.jj, %i.kg           ; 2 uses
  %i.kq = load <2 x float>, ptr %i.kl, align 4, !tbaa !8
  %i.kr = fadd <2 x float> %i.kp, %i.kq
  store <2 x float> %i.kr, ptr %i.ko, align 4, !tbaa !8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.kt = load <2 x float>, ptr %i.kl, align 4, !tbaa !8
  %i.ku = fsub <2 x float> %i.kt, %i.kp
  store <2 x float> %i.ku, ptr %i.ks, align 4, !tbaa !8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.kw = load <2 x float>, ptr %i.kl, align 4, !tbaa !8
  %i.kx = fsub <2 x float> %i.kw, %i.kh
  store <2 x float> %i.kx, ptr %i.kv, align 4, !tbaa !8
  %i.ky = trunc i32 %spec.select to i16
  %i.kz = insertelement <2 x i16> poison, i16 %i.ky, i64 0
  %i.la = trunc i32 %.0432554 to i16
  %i.lb = insertelement <2 x i16> %i.kz, i16 %i.la, i64 1
  %i.lc = shufflevector <2 x i16> %i.lb, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.ld = trunc i32 %spec.select to i16           ; 3 uses
  %i.le = trunc i32 %.0432554 to i16              ; 3 uses
  %i.lf = add <4 x i16> %i.lc, <i16 1, i16 1, i16 2, i16 2> ; 3 uses
  %i.lg = shufflevector <4 x i16> %i.lf, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0, i32 1>
  %i.lh = add i16 %i.ld, 1
  store <8 x i16> %i.lg, ptr %i.jl, align 2, !tbaa !240
  %i.li = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store i16 %i.le, ptr %i.li, align 2, !tbaa !240
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jl, i64 18
  store i16 %i.le, ptr %i.lj, align 2, !tbaa !240
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jl, i64 20
  store i16 %i.ld, ptr %i.lk, align 2, !tbaa !240
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jl, i64 22
  store i16 %i.lh, ptr %i.ll, align 2, !tbaa !240
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.ln = extractelement <4 x i16> %i.lf, i64 3   ; 2 uses
  store i16 %i.ln, ptr %i.lm, align 2, !tbaa !240
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jl, i64 26
  %i.lp = shufflevector <4 x i16> %i.lf, <4 x i16> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.lq = insertelement <4 x i16> %i.lp, i16 %i.le, i64 1
  %i.lr = insertelement <4 x i16> %i.lq, i16 %i.ld, i64 3
  %i.ls = add <4 x i16> %i.lr, <i16 0, i16 3, i16 poison, i16 3>
  %i.lt = shufflevector <4 x i16> %i.ls, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x i16> %i.lt, ptr %i.lo, align 2, !tbaa !240
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jl, i64 34
  store i16 %i.ln, ptr %i.lu, align 2, !tbaa !240
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jl, i64 36 ; 2 uses
  %exitcond584.not = icmp eq i64 %indvars.iv.next581, %wide.trip.count583
  br i1 %exitcond584.not, label %.lr.ph558, label %bb.v, !llvm.loop !250

bb.y:                                             ; preds = %.lr.ph558, %bb.y
  %i.lw = phi ptr [ %.pre597, %.lr.ph558 ], [ %i.my, %bb.y ]
  %indvars.iv585 = phi i64 [ 0, %.lr.ph558 ], [ %indvars.iv.next586, %bb.y ] ; 2 uses
  %.idx611 = shl nuw nsw i64 %indvars.iv585, 5
  %i.lx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx611 ; 4 uses
  %i.ly = load i64, ptr %i.lx, align 4
  store i64 %i.ly, ptr %i.lw, align 4
  %i.lz = load ptr, ptr %i.jk, align 8, !tbaa !239
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store i64 %i.f, ptr %i.ma, align 4
  %i.mb = load ptr, ptr %i.jk, align 8, !tbaa !239 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  store i32 %i.r, ptr %i.mc, align 4, !tbaa !241
  %i.md = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  %i.mf = load i64, ptr %i.md, align 4
  store i64 %i.mf, ptr %i.me, align 4
  %i.mg = load ptr, ptr %i.jk, align 8, !tbaa !239
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 28
  store i64 %i.f, ptr %i.mh, align 4
  %i.mi = load ptr, ptr %i.jk, align 8, !tbaa !239 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 36
  store i32 %3, ptr %i.mj, align 4, !tbaa !241
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 40
  %i.mm = load i64, ptr %i.mk, align 4
  store i64 %i.mm, ptr %i.ml, align 4
  %i.mn = load ptr, ptr %i.jk, align 8, !tbaa !239
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 48
  store i64 %i.f, ptr %i.mo, align 4
  %i.mp = load ptr, ptr %i.jk, align 8, !tbaa !239 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 56
  store i32 %3, ptr %i.mq, align 4, !tbaa !241
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 60
  %i.mt = load i64, ptr %i.mr, align 4
  store i64 %i.mt, ptr %i.ms, align 4
  %i.mu = load ptr, ptr %i.jk, align 8, !tbaa !239
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 68
  store i64 %i.f, ptr %i.mv, align 4
  %i.mw = load ptr, ptr %i.jk, align 8, !tbaa !239 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 76
  store i32 %i.r, ptr %i.mx, align 4, !tbaa !241
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 80 ; 2 uses
  store ptr %i.my, ptr %i.jk, align 8, !tbaa !239
  %indvars.iv.next586 = add nuw nsw i64 %indvars.iv585, 1 ; 2 uses
  %exitcond589.not = icmp eq i64 %indvars.iv.next586, %i.av
  br i1 %exitcond589.not, label %.loopexit538, label %bb.y, !llvm.loop !251

.loopexit538:                                     ; preds = %bb.s, %bb.t, %bb.y
  %i.mz = and i32 %i.ai, 65535
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff:bb.a

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !853
  %i.u = extractelement <2 x i32> %i.k, i64 1     ; 4 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !852
  %.not20.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not20.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 %i.u, ptr %i.s, align 4, !tbaa !853
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !854
  %i.aa = icmp sgt i32 %i.z, %i.o
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !852
  %.not21.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not21.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.o, ptr %i.y, align 8, !tbaa !854
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !855
  %i.af = icmp sgt i32 %i.ae, %i.u
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !852
  %.not22.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not22.i.i.i, label %bb.n, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 %i.u, ptr %i.ad, align 8, !tbaa !855
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i: ; preds = %bb.n, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !852
  %.phi.trans.insert7.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre8.i = load i32, ptr %.phi.trans.insert7.i, align 8, !tbaa !856
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !857
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !856 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [14 x i8], ptr %i.ak, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i8 2, ptr %i.ap, align 2, !tbaa !725
  %i.aq = trunc <2 x i32> %i.k to <2 x i16>
  store <2 x i16> %i.aq, ptr %i.ao, align 2, !tbaa !240
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i64 0, ptr %i.ar, align 2
  %.pre.pre = load float, ptr %i.b, align 8, !tbaa !868
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i

_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i: ; preds = %bb.o, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i
  %.pre = phi float [ %i.c, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %.pre.pre, %bb.o ]
  %i.as = phi i32 [ %.pre8.i, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %i.am, %bb.o ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = add nsw i32 %i.as, 1
  store i32 %i.au, ptr %i.at, align 8, !tbaa !856
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre13 = load float, ptr %.phi.trans.insert, align 4, !tbaa !869
  br label %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit

_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit: ; preds = %bb.b, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i
  %i.av = phi float [ %i.h, %bb.b ], [ %.pre13, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i ]
  %i.aw = phi float [ %i.c, %bb.b ], [ %.pre, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i ]
  %i.ax = fadd float %1, %i.aw                    ; 3 uses
  store float %i.ax, ptr %i.b, align 8, !tbaa !868
  store float %i.ax, ptr %i.a, align 8, !tbaa !871
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.az = fadd float %2, %i.av                    ; 3 uses
  store float %i.az, ptr %i.ay, align 4, !tbaa !869
  store float %i.az, ptr %.phi.trans.insert.i, align 4, !tbaa !872
  %i.ba = fptosi float %i.ax to i32               ; 5 uses
  %i.bb = fptosi float %i.az to i32               ; 5 uses
  %i.bc = load i32, ptr %0, align 8, !tbaa !849
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !851
  %i.bf = icmp slt i32 %i.be, %i.ba
  br i1 %i.bf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !852
  %.not.i.i12 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i12, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !851
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !853
  %i.bk = icmp slt i32 %i.bj, %i.bb
  br i1 %i.bk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !852
  %.not20.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not20.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !853
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !854
  %i.bp = icmp sgt i32 %i.bo, %i.ba
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !852
  %.not21.i.i = icmp eq i32 %i.br, 0
  br i1 %.not21.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.ba, ptr %i.bn, align 8, !tbaa !854
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !855
  %i.bu = icmp sgt i32 %i.bt, %i.bb
  br i1 %i.bu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !852
  %.not22.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not22.i.i, label %bb.aa, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i32 %i.bb, ptr %i.bs, align 8, !tbaa !855
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i: ; preds = %bb.aa, %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bx, align 4, !tbaa !852
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre15 = load i32, ptr %.phi.trans.insert14, align 8, !tbaa !856
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit

bb.ab:                                            ; preds = %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !857
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !856 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [14 x i8], ptr %i.bz, i64 %i.cc ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i8 1, ptr %i.ce, align 2, !tbaa !725
  %i.cf = trunc i32 %i.ba to i16
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !734
  %i.cg = trunc i32 %i.bb to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !735
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i64 0, ptr %i.ci, align 2
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit

_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit:   ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i, %bb.ab
  %i.cj = phi i32 [ %.pre15, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i ], [ %i.cb, %bb.ab ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cl = add nsw i32 %i.cj, 1
  store i32 %i.cl, ptr %i.ck, align 8, !tbaa !856
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %7 = load float, ptr %i.a, align 8, !tbaa !868
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %9 = load float, ptr %8, align 4, !tbaa !869
  %10 = fadd float %1, %7                         ; 2 uses
  %i.b = fadd float %2, %9                        ; 2 uses
  %11 = fadd float %3, %10                        ; 2 uses
  %i.c = fadd float %4, %i.b                      ; 2 uses
  %i.d = fadd float %5, %11                       ; 2 uses
  store float %i.d, ptr %i.a, align 8, !tbaa !868
  %i.e = fadd float %6, %i.c                      ; 2 uses
  store float %i.e, ptr %8, align 4, !tbaa !869
  %i.f = insertelement <4 x float> poison, float %i.d, i64 0
  %i.g = insertelement <4 x float> %i.f, float %i.e, i64 1
  %12 = insertelement <4 x float> %i.g, float %10, i64 2
  %13 = insertelement <4 x float> %12, float %i.b, i64 3
  %i.h = fptosi <4 x float> %13 to <4 x i32>      ; 5 uses
  %i.i = fptosi float %11 to i32                  ; 5 uses
  %i.j = fptosi float %i.c to i32                 ; 5 uses
  %i.k = load i32, ptr %0, align 8, !tbaa !849
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !851  ; 2 uses
  %i.n = extractelement <4 x i32> %i.h, i64 0     ; 6 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !852
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %i.n, ptr %i.l, align 4, !tbaa !851
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %i.n, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !853  ; 2 uses
  %i.u = extractelement <4 x i32> %i.h, i64 1     ; 6 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !852
  %.not20.i.i = icmp eq i32 %i.x, 0
  br i1 %.not20.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.u, ptr %i.s, align 4, !tbaa !853
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i32 [ %i.u, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !854 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, %i.n
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !852
  %.not21.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not21.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 %i.n, ptr %i.z, align 8, !tbaa !854
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = phi i32 [ %i.n, %bb.j ], [ %i.aa, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !855 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, %i.u
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !852
  %.not22.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not22.i.i, label %bb.m, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 %i.u, ptr %i.af, align 8, !tbaa !855
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i: ; preds = %bb.m, %bb.l
  %i.ak = phi i32 [ %i.ag, %bb.l ], [ %i.u, %bb.m ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 1, ptr %i.al, align 4, !tbaa !852
  %i.am = extractelement <4 x i32> %i.h, i64 2    ; 6 uses
  %i.an = icmp slt i32 %i.r, %i.am
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i
  store i32 %i.am, ptr %i.l, align 4, !tbaa !851
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i
  %i.ao = phi i32 [ %i.r, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i ], [ %i.am, %bb.n ]
  %i.ap = extractelement <4 x i32> %i.h, i64 3    ; 6 uses
  %i.aq = icmp slt i32 %i.y, %i.ap
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.ap, ptr %i.s, align 4, !tbaa !853
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ar = phi i32 [ %i.y, %bb.o ], [ %i.ap, %bb.p ]
  %i.as = icmp sgt i32 %i.ae, %i.am
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.am, ptr %i.z, align 8, !tbaa !854
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.at = phi i32 [ %i.ae, %bb.q ], [ %i.am, %bb.r ]
  %i.au = icmp sgt i32 %i.ak, %i.ap
  br i1 %i.au, label %bb.t, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i

bb.t:                                             ; preds = %bb.s
  store i32 %i.ap, ptr %i.af, align 8, !tbaa !855
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i: ; preds = %bb.t, %bb.s
  %i.av = phi i32 [ %i.ak, %bb.s ], [ %i.ap, %bb.t ]
  %i.aw = icmp slt i32 %i.ao, %i.i
  br i1 %i.aw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i
  store i32 %i.i, ptr %i.l, align 4, !tbaa !851
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i
  %i.ax = icmp slt i32 %i.ar, %i.j
  br i1 %i.ax, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.j, ptr %i.s, align 4, !tbaa !853
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ay = icmp sgt i32 %i.at, %i.i
  br i1 %i.ay, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %i.i, ptr %i.z, align 8, !tbaa !854
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.az = icmp sgt i32 %i.av, %i.j
  br i1 %i.az, label %bb.aa, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i

bb.aa:                                            ; preds = %bb.z
  store i32 %i.j, ptr %i.af, align 8, !tbaa !855
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i: ; preds = %bb.aa, %bb.z
  store i32 1, ptr %i.al, align 4, !tbaa !852
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !856
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit

bb.ab:                                            ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !857
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !856 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [14 x i8], ptr %i.bb, i64 %i.be ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i8 4, ptr %i.bg, align 2, !tbaa !725
  %i.bh = trunc <4 x i32> %i.h to <4 x i16>
  store <4 x i16> %i.bh, ptr %i.bf, align 2, !tbaa !240
  %i.bi = trunc i32 %i.i to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !732
  %i.bk = trunc i32 %i.j to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !733
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit

_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit:   ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i, %bb.ab
  %i.bm = phi i32 [ %.pre, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i ], [ %i.bd, %bb.ab ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = add nsw i32 %i.bm, 1
  store i32 %i.bo, ptr %i.bn, align 8, !tbaa !856
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #10 {
bb.a:
  %3 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %4 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4, !tbaa !848
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.cb

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !697  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !714
  %.not.i17 = icmp slt i32 %1, %i.g
  br i1 %.not.i17, label %bb.c, label %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread

bb.c:                                             ; preds = %bb.b
end_hunk_1
