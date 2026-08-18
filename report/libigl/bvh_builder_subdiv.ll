inline.NumInlined: 2401
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZSt22__final_insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_:bb.a
  %i.cd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -128
  %i.ce = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -128
  %i.cf = load <4 x float>, ptr %i.cd, align 16
  store <4 x float> %i.cf, ptr %i.ce, align 16
  %i.cg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -112
  %i.ch = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -112
  %i.ci = load <4 x float>, ptr %i.cg, align 16
  store <4 x float> %i.ci, ptr %i.ch, align 16
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -96
  %i.ck = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -96
  %i.cl = load float, ptr %i.ck, align 16
  store float %i.cl, ptr %i.cj, align 16
  %i.cm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -92
  %i.cn = load float, ptr %i.cm, align 4
  %i.co = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -92
  store float %i.cn, ptr %i.co, align 4
  %i.cp = add nsw i64 %.010.i.i.i.i.i.i, -2
  %i.cq = icmp sgt i64 %.010.i.i.i.i.i.i, 2
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN6embree9PrimRefMBES2_ET0_T_S4_S3_.exit.i, !llvm.loop !1241

_ZSt13move_backwardIPN6embree9PrimRefMBES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store <4 x float> %i.z, ptr %0, align 16
  store <4 x float> %i.ab, ptr %i.g, align 16
  store <4 x float> %i.ad, ptr %i.h, align 16
  store <4 x float> %i.af, ptr %i.i, align 16
  store <2 x float> %i.ah, ptr %i.j, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %bc.i.i = bitcast <4 x float> %i.ab to <4 x i32>
  %i.cr = extractelement <4 x i32> %bc.i.i, i64 3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = shl nuw i64 %i.cs, 32
  %bc11.i.i = bitcast <4 x float> %i.z to <4 x i32>
  %i.cu = extractelement <4 x i32> %bc11.i.i, i64 3
  %i.cv = zext i32 %i.cu to i64
  %i.cw = or disjoint i64 %i.ct, %i.cv            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 28
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = zext i32 %i.cy to i64
  %i.da = shl nuw i64 %i.cz, 32
  %i.db = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 12
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = zext i32 %i.dc to i64
  %i.de = or disjoint i64 %i.da, %i.dd
  %i.df = icmp ult i64 %i.cw, %i.de
  br i1 %i.df, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN6embree9PrimRefMBEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.0912.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.d ] ; 12 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.0912.i.i, i64 -80 ; 3 uses
  %i.dg = load <4 x float>, ptr %.0.i.i, align 16
  store <4 x float> %i.dg, ptr %.0912.i.i, align 16
  %i.dh = getelementptr inbounds i8, ptr %.0912.i.i, i64 -64
  %i.di = getelementptr inbounds nuw i8, ptr %.0912.i.i, i64 16
  %i.dj = load <4 x float>, ptr %i.dh, align 16
  store <4 x float> %i.dj, ptr %i.di, align 16
  %i.dk = getelementptr inbounds i8, ptr %.0912.i.i, i64 -48
  %i.dl = getelementptr inbounds nuw i8, ptr %.0912.i.i, i64 32
  %i.dm = load <4 x float>, ptr %i.dk, align 16
  store <4 x float> %i.dm, ptr %i.dl, align 16
  %i.dn = getelementptr inbounds i8, ptr %.0912.i.i, i64 -32
  %i.do = getelementptr inbounds nuw i8, ptr %.0912.i.i, i64 48
  %i.dp = load <4 x float>, ptr %i.dn, align 16
  store <4 x float> %i.dp, ptr %i.do, align 16
  %i.dq = getelementptr inbounds nuw i8, ptr %.0912.i.i, i64 64
  %i.dr = getelementptr inbounds i8, ptr %.0912.i.i, i64 -16
  %i.ds = load <2 x float>, ptr %i.dr, align 16
  store <2 x float> %i.ds, ptr %i.dq, align 16
  %i.dt = getelementptr inbounds i8, ptr %.0912.i.i, i64 -132
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = zext i32 %i.du to i64
  %i.dw = shl nuw i64 %i.dv, 32
  %i.dx = getelementptr inbounds i8, ptr %.0912.i.i, i64 -148
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = zext i32 %i.dy to i64
  %i.ea = or disjoint i64 %i.dw, %i.dz
  %i.eb = icmp ult i64 %i.cw, %i.ea
  br i1 %i.eb, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN6embree9PrimRefMBEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !1242

_ZSt25__unguarded_linear_insertIPN6embree9PrimRefMBEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.09.lcssa.i.i = phi ptr [ %.020.i.ptr, %bb.d ], [ %.0.i.i, %.lr.ph.i.i ] ; 5 uses
  store <4 x float> %i.z, ptr %.09.lcssa.i.i, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i, i64 16
  store <4 x float> %i.ab, ptr %i.ec, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i, i64 32
  store <4 x float> %i.ad, ptr %i.ed, align 16
  %i.ee = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i, i64 48
  store <4 x float> %i.af, ptr %i.ee, align 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i, i64 64
  store <2 x float> %i.ah, ptr %i.ef, align 16
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN6embree9PrimRefMBEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIPN6embree9PrimRefMBES2_ET0_T_S4_S3_.exit.i
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 80   ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 1280
  %indvar.next.a = add i64 %indvar.a, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %bb.c, !llvm.loop !1243

_ZSt16__insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit: ; preds = %bb.e
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %.not5.i = icmp eq ptr %i.eg, %1
  br i1 %.not5.i, label %_ZSt26__unguarded_insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, %_ZSt25__unguarded_linear_insertIPN6embree9PrimRefMBEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10
  %.06.i = phi ptr [ %i.gf, %_ZSt25__unguarded_linear_insertIPN6embree9PrimRefMBEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10 ], [ %i.eg, %_ZSt16__insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit ] ; 10 uses
  %i.eh = load <4 x float>, ptr %.06.i, align 16  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %i.ej = load <4 x float>, ptr %i.ei, align 16   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.06.i, i64 32
  %i.el = load <4 x float>, ptr %i.ek, align 16
  %i.em = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  %i.en = load <4 x float>, ptr %i.em, align 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.06.i, i64 64
  %i.ep = load <2 x float>, ptr %i.eo, align 16
  %bc.i.i8 = bitcast <4 x float> %i.ej to <4 x i32>
  %i.eq = extractelement <4 x i32> %bc.i.i8, i64 3
  %i.er = zext i32 %i.eq to i64
  %i.es = shl nuw i64 %i.er, 32
  %bc11.i.i9 = bitcast <4 x float> %i.eh to <4 x i32>
  %i.et = extractelement <4 x i32> %bc11.i.i9, i64 3
  %i.eu = zext i32 %i.et to i64
  %i.ev = or disjoint i64 %i.es, %i.eu            ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %.06.i, i64 -52
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = zext i32 %i.ex to i64
  %i.ez = shl nuw i64 %i.ey, 32
  %i.fa = getelementptr inbounds i8, ptr %.06.i, i64 -68
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = zext i32 %i.fb to i64
  %i.fd = or disjoint i64 %i.ez, %i.fc
  %i.fe = icmp ult i64 %i.ev, %i.fd
  br i1 %i.fe, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIPN6embree9PrimRefMBEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i13
  %.0912.i.i14 = phi ptr [ %.0.i.i15, %.lr.ph.i.i13 ], [ %.06.i, %.lr.ph.i ] ; 12 uses
  %.0.i.i15 = getelementptr inbounds i8, ptr %.0912.i.i14, i64 -80 ; 3 uses
  %i.ff = load <4 x float>, ptr %.0.i.i15, align 16
  store <4 x float> %i.ff, ptr %.0912.i.i14, align 16
  %i.fg = getelementptr inbounds i8, ptr %.0912.i.i14, i64 -64
  %i.fh = getelementptr inbounds nuw i8, ptr %.0912.i.i14, i64 16
  %i.fi = load <4 x float>, ptr %i.fg, align 16
  store <4 x float> %i.fi, ptr %i.fh, align 16
  %i.fj = getelementptr inbounds i8, ptr %.0912.i.i14, i64 -48
  %i.fk = getelementptr inbounds nuw i8, ptr %.0912.i.i14, i64 32
  %i.fl = load <4 x float>, ptr %i.fj, align 16
  store <4 x float> %i.fl, ptr %i.fk, align 16
  %i.fm = getelementptr inbounds i8, ptr %.0912.i.i14, i64 -32
  %i.fn = getelementptr inbounds nuw i8, ptr %.0912.i.i14, i64 48
  %i.fo = load <4 x float>, ptr %i.fm, align 16
  store <4 x float> %i.fo, ptr %i.fn, align 16
  %i.fp = getelementptr inbounds nuw i8, ptr %.0912.i.i14, i64 64
  %i.fq = getelementptr inbounds i8, ptr %.0912.i.i14, i64 -16
  %i.fr = load <2 x float>, ptr %i.fq, align 16
  store <2 x float> %i.fr, ptr %i.fp, align 16
  %i.fs = getelementptr inbounds i8, ptr %.0912.i.i14, i64 -132
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = zext i32 %i.ft to i64
  %i.fv = shl nuw i64 %i.fu, 32
  %i.fw = getelementptr inbounds i8, ptr %.0912.i.i14, i64 -148
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = zext i32 %i.fx to i64
  %i.fz = or disjoint i64 %i.fv, %i.fy
  %i.ga = icmp ult i64 %i.ev, %i.fz
  br i1 %i.ga, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIPN6embree9PrimRefMBEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10, !llvm.loop !1242

_ZSt25__unguarded_linear_insertIPN6embree9PrimRefMBEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10: ; preds = %.lr.ph.i.i13, %.lr.ph.i
  %.09.lcssa.i.i11 = phi ptr [ %.06.i, %.lr.ph.i ], [ %.0.i.i15, %.lr.ph.i.i13 ] ; 5 uses
  store <4 x float> %i.eh, ptr %.09.lcssa.i.i11, align 16
  %i.gb = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i11, i64 16
  store <4 x float> %i.ej, ptr %i.gb, align 16
  %i.gc = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i11, i64 32
  store <4 x float> %i.el, ptr %i.gc, align 16
  %i.gd = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i11, i64 48
  store <4 x float> %i.en, ptr %i.gd, align 16
  %i.ge = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i11, i64 64
  store <2 x float> %i.ep, ptr %i.ge, align 16
  %i.gf = getelementptr inbounds nuw i8, ptr %.06.i, i64 80 ; 2 uses
  %.not.i12 = icmp eq ptr %i.gf, %1
  br i1 %.not.i12, label %_ZSt26__unguarded_insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.lr.ph.i, !llvm.loop !1244

bb.f:                                             ; preds = %bb.a
  %i.gg = icmp eq ptr %0, %1
  br i1 %i.gg, label %_ZSt26__unguarded_insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %.017.i16 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i16, %1
  br i1 %.not18.i, label %_ZSt26__unguarded_insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.preheader.i
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i17
  %.020.i18 = phi ptr [ %.017.i16, %.lr.ph.i17 ], [ %.0.i25, %bb.j ] ; 7 uses
  %.pn19.i19 = phi ptr [ %0, %.lr.ph.i17 ], [ %.020.i18, %bb.j ] ; 9 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.pn19.i19, i64 108
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = zext i32 %i.go to i64
  %i.gq = shl nuw i64 %i.gp, 32
  %i.gr = getelementptr inbounds nuw i8, ptr %.pn19.i19, i64 92
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = zext i32 %i.gs to i64
  %i.gu = or disjoint i64 %i.gq, %i.gt
  %i.gv = load i32, ptr %i.gh, align 4
  %i.gw = zext i32 %i.gv to i64
  %i.gx = shl nuw i64 %i.gw, 32
  %i.gy = load i32, ptr %i.gi, align 4
  %i.gz = zext i32 %i.gy to i64
  %i.ha = or disjoint i64 %i.gx, %i.gz
  %i.hb = icmp ult i64 %i.gu, %i.ha
  %i.hc = load <4 x float>, ptr %.020.i18, align 16 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.pn19.i19, i64 96
  %i.he = load <4 x float>, ptr %i.hd, align 16   ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.pn19.i19, i64 112
  %i.hg = load <4 x float>, ptr %i.hf, align 16   ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.pn19.i19, i64 128
  %i.hi = load <4 x float>, ptr %i.hh, align 16   ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.pn19.i19, i64 144
  %i.hk = load <2 x float>, ptr %i.hj, align 16   ; 2 uses
  br i1 %i.hb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.hl = ptrtoint ptr %.020.i18 to i64
  %i.hm = sub i64 %i.hl, %i.b                     ; 2 uses
  %i.hn = icmp sgt i64 %i.hm, 0
  br i1 %i.hn, label %.lr.ph.preheader.i.i.i.i.i.i31.a, label %_ZSt13move_backwardIPN6embree9PrimRefMBES2_ET0_T_S4_S3_.exit.i30

.lr.ph.preheader.i.i.i.i.i.i31.a:                 ; preds = %bb.h
  %i.ho = getelementptr inbounds nuw i8, ptr %.pn19.i19, i64 160
  %2 = udiv exact i64 %i.hm, 80
  br label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %.lr.ph.i.i.i.i.i.i32, %.lr.ph.preheader.i.i.i.i.i.i31.a
  %.010.i.i.i.i.i.i33 = phi i64 [ %i.ih, %.lr.ph.i.i.i.i.i.i32 ], [ %2, %.lr.ph.preheader.i.i.i.i.i.i31.a ] ; 2 uses
  %.069.i.i.i.i.i.i34 = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i.i32 ], [ %i.ho, %.lr.ph.preheader.i.i.i.i.i.i31.a ] ; 6 uses
  %.078.i.i.i.i.i.i35 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.i32 ], [ %.020.i18, %.lr.ph.preheader.i.i.i.i.i.i31.a ] ; 6 uses
  %i.hp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35, i64 -80 ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34, i64 -80 ; 2 uses
  %i.hr = load <4 x float>, ptr %i.hp, align 16
  store <4 x float> %i.hr, ptr %i.hq, align 16
  %i.hs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35, i64 -64
  %i.ht = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34, i64 -64
  %i.hu = load <4 x float>, ptr %i.hs, align 16
  store <4 x float> %i.hu, ptr %i.ht, align 16
  %i.hv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35, i64 -48
  %i.hw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34, i64 -48
  %i.hx = load <4 x float>, ptr %i.hv, align 16
  store <4 x float> %i.hx, ptr %i.hw, align 16
  %i.hy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35, i64 -32
  %i.hz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34, i64 -32
  %i.ia = load <4 x float>, ptr %i.hy, align 16
  store <4 x float> %i.ia, ptr %i.hz, align 16
  %i.ib = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34, i64 -16
  %i.ic = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35, i64 -16
  %i.id = load float, ptr %i.ic, align 16
  store float %i.id, ptr %i.ib, align 16
  %i.ie = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35, i64 -12
  %i.if = load float, ptr %i.ie, align 4
  %i.ig = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34, i64 -12
  store float %i.if, ptr %i.ig, align 4
  %i.ih = add nsw i64 %.010.i.i.i.i.i.i33, -1
  %3 = icmp samesign ugt i64 %.010.i.i.i.i.i.i33, 1
  br i1 %3, label %.lr.ph.i.i.i.i.i.i32, label %_ZSt13move_backwardIPN6embree9PrimRefMBES2_ET0_T_S4_S3_.exit.i30, !llvm.loop !1241

_ZSt13move_backwardIPN6embree9PrimRefMBES2_ET0_T_S4_S3_.exit.i30: ; preds = %.lr.ph.i.i.i.i.i.i32, %bb.h
  store <4 x float> %i.hc, ptr %0, align 16
  store <4 x float> %i.he, ptr %i.gj, align 16
  store <4 x float> %i.hg, ptr %i.gk, align 16
  store <4 x float> %i.hi, ptr %i.gl, align 16
  store <2 x float> %i.hk, ptr %i.gm, align 16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %bc.i.i21 = bitcast <4 x float> %i.he to <4 x i32>
  %i.ii = extractelement <4 x i32> %bc.i.i21, i64 3
  %i.ij = zext i32 %i.ii to i64
  %i.ik = shl nuw i64 %i.ij, 32
  %bc11.i.i22 = bitcast <4 x float> %i.hc to <4 x i32>
  %i.il = extractelement <4 x i32> %bc11.i.i22, i64 3
  %i.im = zext i32 %i.il to i64
  %i.in = or disjoint i64 %i.ik, %i.im            ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.pn19.i19, i64 28
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = zext i32 %i.ip to i64
  %i.ir = shl nuw i64 %i.iq, 32
  %i.is = getelementptr inbounds nuw i8, ptr %.pn19.i19, i64 12
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = zext i32 %i.it to i64
  %i.iv = or disjoint i64 %i.ir, %i.iu
  %i.iw = icmp ult i64 %i.in, %i.iv
  br i1 %i.iw, label %.lr.ph.i.i27, label %_ZSt25__unguarded_linear_insertIPN6embree9PrimRefMBEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i23

.lr.ph.i.i27:                                     ; preds = %bb.i, %.lr.ph.i.i27
  %.0912.i.i28 = phi ptr [ %.0.i.i29, %.lr.ph.i.i27 ], [ %.020.i18, %bb.i ] ; 12 uses
  %.0.i.i29 = getelementptr inbounds i8, ptr %.0912.i.i28, i64 -80 ; 3 uses
  %i.ix = load <4 x float>, ptr %.0.i.i29, align 16
  store <4 x float> %i.ix, ptr %.0912.i.i28, align 16
  %i.iy = getelementptr inbounds i8, ptr %.0912.i.i28, i64 -64
  %i.iz = getelementptr inbounds nuw i8, ptr %.0912.i.i28, i64 16
  %i.ja = load <4 x float>, ptr %i.iy, align 16
  store <4 x float> %i.ja, ptr %i.iz, align 16
  %i.jb = getelementptr inbounds i8, ptr %.0912.i.i28, i64 -48
  %i.jc = getelementptr inbounds nuw i8, ptr %.0912.i.i28, i64 32
  %i.jd = load <4 x float>, ptr %i.jb, align 16
  store <4 x float> %i.jd, ptr %i.jc, align 16
  %i.je = getelementptr inbounds i8, ptr %.0912.i.i28, i64 -32
  %i.jf = getelementptr inbounds nuw i8, ptr %.0912.i.i28, i64 48
  %i.jg = load <4 x float>, ptr %i.je, align 16
  store <4 x float> %i.jg, ptr %i.jf, align 16
  %i.jh = getelementptr inbounds nuw i8, ptr %.0912.i.i28, i64 64
  %i.ji = getelementptr inbounds i8, ptr %.0912.i.i28, i64 -16
  %i.jj = load <2 x float>, ptr %i.ji, align 16
  store <2 x float> %i.jj, ptr %i.jh, align 16
  %i.jk = getelementptr inbounds i8, ptr %.0912.i.i28, i64 -132
  %i.jl = load i32, ptr %i.jk, align 4
  %i.jm = zext i32 %i.jl to i64
  %i.jn = shl nuw i64 %i.jm, 32
  %i.jo = getelementptr inbounds i8, ptr %.0912.i.i28, i64 -148
  %i.jp = load i32, ptr %i.jo, align 4
  %i.jq = zext i32 %i.jp to i64
  %i.jr = or disjoint i64 %i.jn, %i.jq
  %i.js = icmp ult i64 %i.in, %i.jr
  br i1 %i.js, label %.lr.ph.i.i27, label %_ZSt25__unguarded_linear_insertIPN6embree9PrimRefMBEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i23, !llvm.loop !1242

_ZSt25__unguarded_linear_insertIPN6embree9PrimRefMBEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i23: ; preds = %.lr.ph.i.i27, %bb.i
  %.09.lcssa.i.i24 = phi ptr [ %.020.i18, %bb.i ], [ %.0.i.i29, %.lr.ph.i.i27 ] ; 5 uses
  store <4 x float> %i.hc, ptr %.09.lcssa.i.i24, align 16
  %i.jt = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i24, i64 16
  store <4 x float> %i.he, ptr %i.jt, align 16
  %i.ju = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i24, i64 32
  store <4 x float> %i.hg, ptr %i.ju, align 16
  %i.jv = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i24, i64 48
  store <4 x float> %i.hi, ptr %i.jv, align 16
  %i.jw = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i24, i64 64
  store <2 x float> %i.hk, ptr %i.jw, align 16
  br label %bb.j

bb.j:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN6embree9PrimRefMBEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i23, %_ZSt13move_backwardIPN6embree9PrimRefMBES2_ET0_T_S4_S3_.exit.i30
  %.0.i25 = getelementptr inbounds nuw i8, ptr %.020.i18, i64 80 ; 2 uses
  %.not.i26 = icmp eq ptr %.0.i25, %1
  br i1 %.not.i26, label %_ZSt26__unguarded_insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %bb.g, !llvm.loop !1243

_ZSt26__unguarded_insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit: ; preds = %bb.j, %_ZSt25__unguarded_linear_insertIPN6embree9PrimRefMBEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10, %.preheader.i, %bb.f, %_ZSt16__insertion_sortIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 80
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit
  %.07 = phi ptr [ %1, %.lr.ph ], [ %i.j, %_ZSt10__pop_heapIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit ] ; 6 uses
  %i.j = getelementptr inbounds i8, ptr %.07, i64 -80 ; 4 uses
  %i.k = load <4 x float>, ptr %i.j, align 16     ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.07, i64 -64 ; 2 uses
  %i.m = load <4 x float>, ptr %i.l, align 16     ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.07, i64 -48 ; 2 uses
  %i.o = load <4 x float>, ptr %i.n, align 16
  %i.p = getelementptr inbounds i8, ptr %.07, i64 -32 ; 2 uses
  %i.q = load <4 x float>, ptr %i.p, align 16
  %i.r = getelementptr inbounds i8, ptr %.07, i64 -16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 16
  %i.t = load <4 x float>, ptr %0, align 16
  store <4 x float> %i.t, ptr %i.j, align 16
  %i.u = load <4 x float>, ptr %i.e, align 16
  store <4 x float> %i.u, ptr %i.l, align 16
  %i.v = load <4 x float>, ptr %i.f, align 16
  store <4 x float> %i.v, ptr %i.n, align 16
  %i.w = load <4 x float>, ptr %i.g, align 16
  store <4 x float> %i.w, ptr %i.p, align 16
  %i.x = load float, ptr %i.h, align 16
  store float %i.x, ptr %i.r, align 16
  %i.y = load float, ptr %i.i, align 4
  %i.z = getelementptr inbounds i8, ptr %.07, i64 -12
  store float %i.y, ptr %i.z, align 4
  %i.aa = ptrtoint ptr %i.j to i64
  %i.ab = sub i64 %i.aa, %i.a                     ; 3 uses
  %i.ac = sdiv exact i64 %i.ab, 80                ; 3 uses
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = sdiv i64 %i.ad, 2
  %i.af = icmp sgt i64 %i.ab, 160
  br i1 %i.af, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.031.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.ag = shl i64 %.031.i.i, 1                    ; 3 uses
  %i.ah = add i64 %i.ag, 2                        ; 2 uses
  %i.ai = getelementptr inbounds [80 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = getelementptr [80 x i8], ptr %0, i64 %i.ag ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw i64 %i.am, 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = zext i32 %i.ap to i64
  %i.ar = or disjoint i64 %i.an, %i.aq
  %i.as = getelementptr i8, ptr %i.aj, i64 108
  %i.at = load i32, ptr %i.as, align 4
  %i.au = zext i32 %i.at to i64
  %i.av = shl nuw i64 %i.au, 32
  %i.aw = getelementptr i8, ptr %i.aj, i64 92
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = zext i32 %i.ax to i64
  %i.az = or disjoint i64 %i.av, %i.ay
  %i.ba = icmp ult i64 %i.ar, %i.az
  %i.bb = or disjoint i64 %i.ag, 1
  %spec.select.i.i = select i1 %i.ba, i64 %i.bb, i64 %i.ah ; 4 uses
  %i.bc = getelementptr inbounds [80 x i8], ptr %0, i64 %spec.select.i.i ; 5 uses
  %i.bd = getelementptr inbounds [80 x i8], ptr %0, i64 %.031.i.i ; 5 uses
  %i.be = load <4 x float>, ptr %i.bc, align 16
  store <4 x float> %i.be, ptr %i.bd, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bh = load <4 x float>, ptr %i.bf, align 16
  store <4 x float> %i.bh, ptr %i.bg, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bk = load <4 x float>, ptr %i.bi, align 16
  store <4 x float> %i.bk, ptr %i.bj, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bn = load <4 x float>, ptr %i.bl, align 16
  store <4 x float> %i.bn, ptr %i.bm, align 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bq = load <2 x float>, ptr %i.bp, align 16
  store <2 x float> %i.bq, ptr %i.bo, align 16
  %i.br = icmp slt i64 %spec.select.i.i, %i.ae
  br i1 %i.br, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1245

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.bs = and i64 %i.ac, 1
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.bu = add nsw i64 %i.ac, -2
  %i.bv = ashr exact i64 %i.bu, 1
  %i.bw = icmp eq i64 %.0.lcssa.i.i, %i.bv
  br i1 %i.bw, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.bx = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.by = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.by ; 5 uses
  %i.ca = getelementptr inbounds [80 x i8], ptr %0, i64 %.0.lcssa.i.i ; 5 uses
  %i.cb = load <4 x float>, ptr %i.bz, align 16
  store <4 x float> %i.cb, ptr %i.ca, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ce = load <4 x float>, ptr %i.cc, align 16
  store <4 x float> %i.ce, ptr %i.cd, align 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.ch = load <4 x float>, ptr %i.cf, align 16
  store <4 x float> %i.ch, ptr %i.cg, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.ck = load <4 x float>, ptr %i.ci, align 16
  store <4 x float> %i.ck, ptr %i.cj, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cn = load <2 x float>, ptr %i.cm, align 16
  store <2 x float> %i.cn, ptr %i.cl, align 16
  br label %.lr.ph.i.preheader.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.d, %.thread.i
  %.127.i13.i = phi i64 [ %i.by, %.thread.i ], [ %.0.lcssa.i.i, %bb.d ]
  %bc.i.i = bitcast <4 x float> %i.m to <4 x i32>
  %i.co = extractelement <4 x i32> %bc.i.i, i64 3
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw i64 %i.cp, 32
  %bc30.i.i = bitcast <4 x float> %i.k to <4 x i32>
  %i.cr = extractelement <4 x i32> %bc30.i.i, i64 3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = or disjoint i64 %i.cq, %i.cs
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.preheader.i.i
  %.01316.i.i.i = phi i64 [ %.017.i.i1415.i, %bb.e ], [ %.127.i13.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i1415.i = lshr i64 %.017.in.i.i.i, 1    ; 3 uses
  %i.cu = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.017.i.i1415.i ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 28
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = zext i32 %i.cw to i64
  %i.cy = shl nuw i64 %i.cx, 32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = zext i32 %i.da to i64
  %i.dc = or disjoint i64 %i.cy, %i.db
  %i.dd = icmp ult i64 %i.dc, %i.ct
  br i1 %i.dd, label %bb.e, label %_ZSt10__pop_heapIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.de = getelementptr inbounds [80 x i8], ptr %0, i64 %.01316.i.i.i ; 5 uses
  %i.df = load <4 x float>, ptr %i.cu, align 16
  store <4 x float> %i.df, ptr %i.de, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = load <4 x float>, ptr %i.dg, align 16
  store <4 x float> %i.di, ptr %i.dh, align 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dl = load <4 x float>, ptr %i.dj, align 16
  store <4 x float> %i.dl, ptr %i.dk, align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.do = load <4 x float>, ptr %i.dm, align 16
  store <4 x float> %i.do, ptr %i.dn, align 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  %i.dr = load <2 x float>, ptr %i.dq, align 16
  store <2 x float> %i.dr, ptr %i.dp, align 16
  %.not16.i = icmp eq i64 %.017.i.i1415.i, 0
  br i1 %.not16.i, label %_ZSt10__pop_heapIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1246

_ZSt10__pop_heapIPN6embree9PrimRefMBEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.013.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.01316.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.ds = getelementptr inbounds [80 x i8], ptr %0, i64 %.013.lcssa.i.i.i ; 5 uses
  store <4 x float> %i.k, ptr %i.ds, align 16
end_hunk_0
