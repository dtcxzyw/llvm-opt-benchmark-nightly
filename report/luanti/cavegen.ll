Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/cavegen?download=true
inline.NumInlined: 304
inline.NumDeleted: 78
begin_hunk_0_@_ZN15CavesRandomWalk10makeTunnelEb:bb.a
  %i.z = sdiv <2 x i32> %i.y, splat (i32 65536)
  %i.aa = trunc nsw <2 x i32> %i.z to <2 x i16>
  %i.ab = and <2 x i16> %i.aa, splat (i16 32767)
  %i.ac = urem <2 x i16> %i.ab, splat (i16 20)
  %i.ad = trunc nuw nsw <2 x i16> %i.ac to <2 x i8>
  %i.ae = add nsw <2 x i8> %i.ad, splat (i8 -10)
  %i.af = sitofp <2 x i8> %i.ae to <2 x float>
  %i.ag = fdiv nnan nsz <2 x float> %i.af, <float 1.000000e+01, float 3.000000e+01>
  store i32 %i.n, ptr %.pre, align 4, !tbaa !169
  %i.ah = extractelement <2 x i16> %i.t, i64 1
  %i.ai = uitofp nneg i16 %i.ah to float
  %i.aj = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ai, i64 1
  %i.al = fdiv nsz <2 x float> %i.ak, splat (float 1.000000e+01) ; 3 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul nsz <2 x float> %i.ag, %i.am
  store <2 x float> %i.an, ptr %i.f, align 8, !tbaa !81
  %shift = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x float> %i.al, %shift
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.ao, ptr %i.g, align 8, !tbaa !149
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !178
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !179
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.au = sext i16 %i.aq to i32
  %i.av = sext i16 %i.as to i32
  %i.aw = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %.pre, i32 noundef %i.au, i32 noundef %i.av) ; 2 uses
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  store i16 %i.ax, ptr %i.ay, align 4, !tbaa !195
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !176
  %i.bb = mul i32 %i.ba, %i.aw                    ; 4 uses
  %i.bc = trunc i32 %i.bb to i16                  ; 3 uses
  %i.bd = load i8, ptr %i.a, align 4, !tbaa !167, !range !117, !noundef !118
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %.thread164, label %bb.c

.thread164:                                       ; preds = %._crit_edge
  %i.bf = sdiv i16 %i.bc, 2
  %.pre155166 = load ptr, ptr %i.at, align 8, !tbaa !165 ; 2 uses
  %.pre156167 = load i32, ptr %.pre155166, align 4, !tbaa !169
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !165
  %sext = shl i32 %i.bb, 16
  %i.bh = ashr exact i32 %sext, 16
  %i.bi = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.bg, i32 noundef 1, i32 noundef %i.bh) ; 2 uses
  %i.bj = trunc i32 %i.bi to i16                  ; 3 uses
  %.pre154 = load i8, ptr %i.a, align 4, !tbaa !167, !range !117
  %i.bk = trunc nuw i8 %.pre154 to i1
  %.pre155 = load ptr, ptr %i.at, align 8, !tbaa !165 ; 5 uses
  %.pre156 = load i32, ptr %.pre155, align 4, !tbaa !169 ; 2 uses
  br i1 %i.bk, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = mul i32 %.pre156, 1103515245
  %i.bm = add i32 %i.bl, 12345                    ; 4 uses
  store i32 %i.bm, ptr %.pre155, align 4, !tbaa !169
  %i.bn = sdiv i32 %i.bm, 65536
  %i.bo = trunc nsw i32 %i.bn to i16
  %.lhs.trunc.i37 = and i16 %i.bo, 32767
  %i.bp = urem i16 %.lhs.trunc.i37, 13
  %i.bq = icmp eq i16 %i.bp, 0
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.br = mul i32 %i.bm, 1103515245
  %i.bs = add i32 %i.br, 12345                    ; 2 uses
  %i.bt = sdiv i32 %i.bs, 65536
  %i.bu = and i32 %i.bt, 32767
  %sext150 = shl i32 %i.bb, 16
  %i.bv = ashr exact i32 %sext150, 16             ; 2 uses
  %i.bw = urem i32 %i.bu, %i.bv
  %i.bx = uitofp nsz nneg i32 %i.bw to float
  %i.by = sitofp nsz i16 %i.bc to float
  %i.bz = fmul nnan nsz float %i.by, 5.000000e-01 ; 2 uses
  %i.ca = fsub nsz float %i.bx, %i.bz
  %i.cb = mul i32 %i.bs, 1103515245
  %i.cc = add i32 %i.cb, 12345                    ; 2 uses
  %i.cd = sdiv i32 %i.cc, 65536
  %i.ce = and i32 %i.cd, 32767
  %sext178 = shl i32 %i.bi, 16
  %i.cf = ashr exact i32 %sext178, 15
  %i.cg = urem i32 %i.ce, %i.cf
  %i.ch = uitofp nsz nneg i32 %i.cg to float
  %i.ci = sitofp nsz i16 %i.bj to float
  %i.cj = fsub nsz float %i.ch, %i.ci
  br label %bb.g

bb.f:                                             ; preds = %.thread164, %bb.d, %bb.c
  %.pre155169 = phi ptr [ %.pre155, %bb.d ], [ %.pre155, %bb.c ], [ %.pre155166, %.thread164 ]
  %.sroa.7.0168 = phi i16 [ %i.bj, %bb.d ], [ %i.bj, %bb.c ], [ %i.bf, %.thread164 ] ; 2 uses
  %i.ck = phi i32 [ %i.bm, %bb.d ], [ %.pre156, %bb.c ], [ %.pre156167, %.thread164 ]
  %i.cl = mul i32 %i.ck, 1103515245
  %i.cm = add i32 %i.cl, 12345                    ; 2 uses
  %i.cn = sdiv i32 %i.cm, 65536
  %i.co = and i32 %i.cn, 32767
  %sext151 = shl i32 %i.bb, 16
  %i.cp = ashr exact i32 %sext151, 16             ; 2 uses
  %i.cq = urem i32 %i.co, %i.cp
  %i.cr = uitofp nsz nneg i32 %i.cq to float
  %i.cs = sitofp nsz i16 %i.bc to float
  %i.ct = fmul nnan nsz float %i.cs, 5.000000e-01 ; 2 uses
  %i.cu = fsub nsz float %i.cr, %i.ct
  %i.cv = mul i32 %i.cm, 1103515245
  %i.cw = add i32 %i.cv, 12345                    ; 2 uses
  %i.cx = sdiv i32 %i.cw, 65536
  %i.cy = and i32 %i.cx, 32767
  %i.cz = sext i16 %.sroa.7.0168 to i32
  %i.da = urem i32 %i.cy, %i.cz
  %i.db = uitofp nsz nneg i32 %i.da to float
  %i.dc = sitofp nsz i16 %.sroa.7.0168 to float
  %i.dd = fmul nnan nsz float %i.dc, 5.000000e-01
  %i.de = fsub nsz float %i.db, %i.dd
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink177 = phi float [ %i.de, %bb.f ], [ %i.cj, %bb.e ] ; 2 uses
  %.sink = phi i32 [ %i.cw, %bb.f ], [ %i.cc, %bb.e ]
  %.pre155169.sink = phi ptr [ %.pre155169, %bb.f ], [ %.pre155, %bb.e ] ; 2 uses
  %.sink173 = phi i32 [ %i.cp, %bb.f ], [ %i.bv, %bb.e ]
  %.sink171 = phi float [ %i.ct, %bb.f ], [ %i.bz, %bb.e ]
  %.sroa.19.0 = phi nsz float [ %i.cu, %bb.f ], [ %i.ca, %bb.e ] ; 2 uses
  %i.df = mul i32 %.sink, 1103515245
  %i.dg = add i32 %i.df, 12345                    ; 3 uses
  store i32 %i.dg, ptr %.pre155169.sink, align 4, !tbaa !169
  %i.dh = sdiv i32 %i.dg, 65536
  %i.di = and i32 %i.dh, 32767
  %i.dj = urem i32 %i.di, %.sink173
  %i.dk = uitofp nsz nneg i32 %i.dj to float
  %i.dl = fsub nsz float %i.dk, %.sink171         ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.dn = load <2 x float>, ptr %i.dm, align 4, !tbaa !81 ; 4 uses
  %i.do = extractelement <2 x float> %i.dn, i64 0
  %i.dp = fptosi float %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !189 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dt = load i16, ptr %i.ds, align 8, !tbaa !184
  %i.du = add i16 %i.dt, %i.dp
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.dw = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dx = insertelement <2 x float> %i.dw, float %i.dr, i64 1
  %i.dy = fptosi <2 x float> %i.dx to <2 x i16>
  %i.dz = load <2 x i16>, ptr %i.dv, align 2, !tbaa !32
  %i.ea = add <2 x i16> %i.dz, %i.dy              ; 2 uses
  %i.eb = load i16, ptr %i.ay, align 4, !tbaa !195
  %i.ec = sdiv i16 %i.eb, 2                       ; 3 uses
  %i.ed = add i16 %i.du, %i.ec                    ; 4 uses
  %i.ee = extractelement <2 x i16> %i.ea, i64 0
  %i.ef = add i16 %i.ee, %i.ec                    ; 4 uses
  %i.eg = extractelement <2 x i16> %i.ea, i64 1
  %i.eh = add i16 %i.eg, %i.ec                    ; 4 uses
  %i.ei = fptosi float %i.dl to i16
  %i.ej = fptosi float %.sink177 to i16
  %i.ek = fptosi float %.sroa.19.0 to i16
  %i.el = add i16 %i.ed, %i.ei                    ; 3 uses
  %i.em = add i16 %i.ef, %i.ej                    ; 2 uses
  %i.en = add i16 %i.eh, %i.ek                    ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !166 ; 3 uses
  %.not.i = icmp eq ptr %i.ep, null
  br i1 %.not.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eq = sext i16 %i.eh to i64
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.es = load i16, ptr %i.er, align 4, !tbaa !196 ; 3 uses
  %i.et = sext i16 %i.es to i64                   ; 2 uses
  %.not14.i = icmp slt i16 %i.eh, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.ev = load i16, ptr %i.eu, align 2            ; 2 uses
  %.not15.i = icmp sgt i16 %i.eh, %i.ev
  %or.cond21.i = select i1 %.not14.i, i1 true, i1 %.not15.i
  br i1 %or.cond21.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 86
  %i.ey = load i16, ptr %i.ew, align 8, !tbaa !197 ; 2 uses
  %.not16.i = icmp sgt i16 %i.ey, %i.ed
  %i.ez = load i16, ptr %i.ex, align 2
  %.not17.i = icmp slt i16 %i.ez, %i.ed
  %or.cond.i = select i1 %.not16.i, i1 true, i1 %.not17.i
  br i1 %or.cond.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fa = sext i16 %i.ey to i64
  %i.fb = sext i16 %i.ed to i64
  %i.fc = sub nsw i64 %i.eq, %i.et
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fe = load i16, ptr %i.fd, align 8, !tbaa !168
  %i.ff = zext i16 %i.fe to i64
  %i.fg = mul nuw nsw i64 %i.fc, %i.ff
  %i.fh = sub nsw i64 %i.fb, %i.fa
  %i.fi = add nsw i64 %i.fh, %i.fg
  %i.fj = and i64 %i.fi, 4294967295
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.fj
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !32
  %.not18.i = icmp slt i16 %i.fl, %i.ef
  br i1 %.not18.i, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread133

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.fm = sext i16 %i.ef to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !158
  %i.fp = icmp slt i32 %i.fo, %i.fm
  br i1 %i.fp, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread133

.thread:                                          ; preds = %bb.g
  %i.fq = sext i16 %i.ef to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !158
  %i.ft = icmp slt i32 %i.fs, %i.fq
  br i1 %i.ft, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread140

_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread133: ; preds = %bb.k, %bb.j
  %i.fu = sext i16 %i.en to i64
  %.not14.i57 = icmp slt i16 %i.en, %i.es
  %.not15.i58 = icmp sgt i16 %i.en, %i.ev
  %or.cond21.i59 = select i1 %.not14.i57, i1 true, i1 %.not15.i58
  br i1 %or.cond21.i59, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread140, label %bb.l

bb.l:                                             ; preds = %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread133
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 86
  %i.fx = load i16, ptr %i.fv, align 8, !tbaa !197 ; 2 uses
  %.not16.i60 = icmp sgt i16 %i.fx, %i.el
  %i.fy = load i16, ptr %i.fw, align 2
  %.not17.i61 = icmp slt i16 %i.fy, %i.el
  %or.cond.i62 = select i1 %.not16.i60, i1 true, i1 %.not17.i61
  br i1 %or.cond.i62, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread140, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fz = sext i16 %i.fx to i64
  %i.ga = sext i16 %i.el to i64
  %i.gb = sub nsw i64 %i.fu, %i.et
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gd = load i16, ptr %i.gc, align 8, !tbaa !168
  %i.ge = zext i16 %i.gd to i64
  %i.gf = mul nuw nsw i64 %i.gb, %i.ge
  %i.gg = sub nsw i64 %i.ga, %i.fz
  %i.gh = add nsw i64 %i.gg, %i.gf
  %i.gi = and i64 %i.gh, 4294967295
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !32
  %.not18.i63 = icmp slt i16 %i.gk, %i.em
  br i1 %.not18.i63, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit65

_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread140: ; preds = %.thread, %bb.l, %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread133
  %i.gl = sext i16 %i.em to i32
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !158
  %i.go = icmp slt i32 %i.gn, %i.gl
  br i1 %i.go, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread, label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit65

_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit65: ; preds = %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread140, %bb.m
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gr = load float, ptr %i.gq, align 8, !tbaa !149
  %i.gs = fadd nsz float %.sroa.19.0, %i.gr
  %i.gt = load <2 x float>, ptr %i.gp, align 8, !tbaa !81
  %i.gu = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %.sink177, i64 1
  %i.gw = fadd nsz <2 x float> %i.gv, %i.gt
  %i.gx = fadd nsz <2 x float> %i.dn, %i.gw       ; 4 uses
  %i.gy = fadd nsz float %i.gs, %i.dr             ; 3 uses
  %i.gz = extractelement <2 x float> %i.gx, i64 0 ; 2 uses
  %i.ha = fcmp nsz olt float %i.gz, 0.000000e+00
  br i1 %i.ha, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit65
  %.sroa.0.0.vec.insert = insertelement <2 x float> %i.gx, float 0.000000e+00, i64 0
  br label %bb.q

bb.o:                                             ; preds = %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit65
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 110
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !191 ; 2 uses
  %i.hd = sitofp i16 %i.hc to float
  %i.he = fcmp nsz ult float %i.gz, %i.hd
  br i1 %i.he, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hf = sext i16 %i.hc to i32
  %i.hg = add nsw i32 %i.hf, -1
  %i.hh = sitofp nsz i32 %i.hg to float
  %.sroa.0.0.vec.insert74 = insertelement <2 x float> %i.gx, float %i.hh, i64 0
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.sroa.0.0 = phi nsz <2 x float> [ %.sroa.0.0.vec.insert, %bb.n ], [ %i.gx, %bb.o ], [ %.sroa.0.0.vec.insert74, %bb.p ] ; 4 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 1 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.hj = load i16, ptr %i.hi, align 4, !tbaa !185
  %i.hk = sitofp i16 %i.hj to float               ; 2 uses
  %i.hl = fcmp nsz olt float %.sroa.0.4.vec.extract, %i.hk
  br i1 %i.hl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.4.vec.insert78 = insertelement <2 x float> %.sroa.0.0, float %i.hk, i64 1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !186 ; 2 uses
  %i.ho = sitofp i16 %i.hn to float
  %i.hp = fcmp nsz ult float %.sroa.0.4.vec.extract, %i.ho
  br i1 %i.hp, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hq = sext i16 %i.hn to i32
  %i.hr = add nsw i32 %i.hq, -1
  %i.hs = sitofp nsz i32 %i.hr to float
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0, float %i.hs, i64 1
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  %.sroa.0.1 = phi nsz <2 x float> [ %.sroa.0.4.vec.insert78, %bb.r ], [ %.sroa.0.0, %bb.s ], [ %.sroa.0.4.vec.insert, %bb.t ] ; 2 uses
  %i.ht = fcmp nsz olt float %i.gy, 0.000000e+00
  br i1 %i.ht, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !188 ; 2 uses
  %i.hw = sitofp i16 %i.hv to float
  %i.hx = fcmp nsz ult float %i.gy, %i.hw
  br i1 %i.hx, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hy = sext i16 %i.hv to i32
  %i.hz = add nsw i32 %i.hy, -1
  %i.ia = sitofp nsz i32 %i.hz to float
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %.sroa.12.0 = phi nsz float [ %i.ia, %bb.w ], [ %i.gy, %bb.v ], [ 0.000000e+00, %bb.u ] ; 2 uses
  %i.ib = fsub nsz <2 x float> %.sroa.0.1, %i.dn  ; 4 uses
  %i.ic = fsub nsz float %.sroa.12.0, %i.dr       ; 3 uses
  %foldExtExtBinop181 = fmul nsz <2 x float> %i.ib, %i.ib
  %i.id = extractelement <2 x float> %foldExtExtBinop181, i64 1
  %i.ie = extractelement <2 x float> %i.ib, i64 0 ; 2 uses
  %i.if = tail call nsz float @llvm.fmuladd.f32(float %i.ie, float %i.ie, float %i.id)
  %i.ig = tail call nsz float @llvm.fmuladd.f32(float %i.ic, float %i.ic, float %i.if)
  %i.ih = tail call nsz noundef float @llvm.sqrt.f32(float %i.ig) ; 2 uses
  %i.ii = fcmp nsz olt float %i.ih, 5.000000e-02
  %i.ij = mul i32 %i.dg, 1103515245
  %i.ik = add i32 %i.ij, 12345                    ; 2 uses
  store i32 %i.ik, ptr %.pre155169.sink, align 4, !tbaa !169
  %i.il = sdiv i32 %i.ik, 65536
  %.zext.i71 = and i32 %i.il, 1
  %i.im = icmp eq i32 %.zext.i71, 0
  %i.in = fdiv nsz float 1.000000e+00, %i.ih
  %i.io = select i1 %i.ii, float 1.000000e+00, float %i.in
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  store <2 x float> %.sroa.0.1, ptr %i.dm, align 4
  store float %.sroa.12.0, ptr %i.dq, align 4, !tbaa !81
  br label %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread

bb.z:                                             ; preds = %bb.x, %bb.z
  %.0153 = phi float [ 0.000000e+00, %bb.x ], [ %i.ip, %bb.z ] ; 2 uses
  tail call void @_ZN15CavesRandomWalk10carveRouteEN4core8vector3dIfEEfb(ptr noundef nonnull align 8 dereferenceable(150) %0, <2 x float> %i.ib, float %i.ic, float noundef %.0153, i1 noundef zeroext %i.im)
  %i.ip = fadd nsz float %i.io, %.0153            ; 2 uses
  %i.iq = fcmp nsz olt float %i.ip, 1.000000e+00
  br i1 %i.iq, label %bb.z, label %bb.y, !llvm.loop !198

_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread: ; preds = %_ZN15CavesRandomWalk17isPosAboveSurfaceEN4core8vector3dIsEE.exit.thread140, %bb.m, %.thread, %bb.k, %bb.j, %bb.y
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15CavesRandomWalk10carveRouteEN4core8vector3dIfEEfb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(150) %0, <2 x float> %1, float %2, float noundef %3, i1 noundef zeroext %4) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.MapNode, align 4            ; 7 uses
  %6 = alloca %struct.MapNode, align 4            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i16, ptr %i.a, align 8, !tbaa !162
  store i16 %i.b, ptr %5, align 4, !tbaa !71
  %.2..2..2..sroa_idx174 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 0, ptr %.2..2..2..sroa_idx174, align 2, !tbaa !199
  %.3..3..3..sroa_idx175 = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 0, ptr %.3..3..3..sroa_idx175, align 1, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.d = load i16, ptr %i.c, align 2, !tbaa !163
  store i16 %i.d, ptr %6, align 4, !tbaa !71
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 0, ptr %.2..2..2..sroa_idx, align 2, !tbaa !199
  %.3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 0, ptr %.3..3..3..sroa_idx, align 1, !tbaa !200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.f = load float, ptr %i.e, align 4, !tbaa !192 ; 2 uses
  %i.g = fptosi float %i.f to i16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !184
  %i.k = add i16 %i.j, %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.n = load <2 x float>, ptr %i.h, align 8, !tbaa !81 ; 3 uses
  %i.o = fptosi <2 x float> %i.n to <2 x i16>
  %i.p = load <2 x i16>, ptr %i.l, align 2, !tbaa !32
  %i.q = add <2 x i16> %i.p, %i.o                 ; 2 uses
  %.sroa.0125.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.r = fmul nsz float %.sroa.0125.4.vec.extract, %3
  %i.s = extractelement <2 x float> %i.n, i64 0
  %i.t = fadd nsz float %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !165  ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !169
  %i.x = mul i32 %i.w, 1103515245
  %i.y = insertelement <2 x float> %1, float %2, i64 1
  %i.z = insertelement <2 x float> poison, float %3, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul nsz <2 x float> %i.y, %i.aa
  %i.ac = insertelement <2 x float> %i.n, float %i.f, i64 0
  %i.ad = fadd nsz <2 x float> %i.ab, %i.ac
  %i.ae = add i32 %i.x, 12345                     ; 2 uses
  %i.af = mul i32 %i.ae, 1103515245
  %i.ag = add i32 %i.af, 12345                    ; 2 uses
  store i32 %i.ag, ptr %i.v, align 4, !tbaa !169
  %i.ah = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ai = insertelement <2 x i32> %i.ah, i32 %i.ag, i64 1
  %i.aj = sdiv <2 x i32> %i.ai, splat (i32 65536)
  %i.ak = trunc nsw <2 x i32> %i.aj to <2 x i16>
  %i.al = and <2 x i16> %i.ak, splat (i16 32767)
  %i.am = urem <2 x i16> %i.al, splat (i16 21)
  %i.an = trunc nuw nsw <2 x i16> %i.am to <2 x i8>
  %i.ao = add nsw <2 x i8> %i.an, splat (i8 -10)
  %i.ap = sitofp <2 x i8> %i.ao to <2 x float>
  %i.aq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> splat (float 1.000000e-01), <2 x float> %i.ad) ; 2 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = fptosi float %i.ar to i16
  %i.at = fptosi float %i.t to i16
  %i.au = extractelement <2 x float> %i.aq, i64 1
  %i.av = fptosi float %i.au to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !171, !range !117, !noundef !118
  %i.ay = trunc nuw i8 %i.ax to i1
end_hunk_0
begin_hunk_1_@_ZN7CavesV610makeTunnelEb:bb.a
  %i.ah = extractelement <2 x i16> %i.t, i64 1
  %i.ai = uitofp nneg i16 %i.ah to float
  %i.aj = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ai, i64 1
  %i.al = fdiv nsz <2 x float> %i.ak, splat (float 1.000000e+01) ; 3 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul nsz <2 x float> %i.ag, %i.am
  store <2 x float> %i.an, ptr %i.f, align 8, !tbaa !81
  %shift = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x float> %i.al, %shift
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.ao, ptr %i.g, align 8, !tbaa !149
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !220
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !221
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.au = sext i16 %i.aq to i32
  %i.av = sext i16 %i.as to i32
  %i.aw = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %.pre, i32 noundef %i.au, i32 noundef %i.av) ; 2 uses
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  store i16 %i.ax, ptr %i.ay, align 4, !tbaa !236
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !222
  %i.bb = mul i32 %i.ba, %i.aw                    ; 2 uses
  %i.bc = trunc i32 %i.bb to i16                  ; 2 uses
  %i.bd = load i8, ptr %i.a, align 4, !tbaa !218, !range !117, !noundef !118
  %i.be = trunc nuw i8 %i.bd to i1
  %.pre157 = shl i32 %i.bb, 16
  %.pre158 = ashr exact i32 %.pre157, 16          ; 4 uses
  br i1 %i.be, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bf = sdiv i16 %i.bc, 2
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !215
  %i.bh = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.bg, i32 noundef 1, i32 noundef %.pre158)
  %i.bi = trunc i32 %i.bh to i16
  %.pre156 = load i8, ptr %i.a, align 4, !tbaa !218, !range !117
  %i.bj = trunc nuw i8 %.pre156 to i1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bk = phi i1 [ %i.bj, %bb.d ], [ true, %bb.c ]
  %.sroa.7130.0 = phi i16 [ %i.bi, %bb.d ], [ %i.bf, %bb.c ] ; 2 uses
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !215 ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !169
  %i.bn = mul i32 %i.bm, 1103515245
  %i.bo = add i32 %i.bn, 12345                    ; 3 uses
  %i.bp = sitofp nsz i16 %i.bc to float
  %i.bq = fmul nnan nsz float %i.bp, 5.000000e-01 ; 3 uses
  %i.br = mul i32 %i.bo, 1103515245
  %i.bs = add i32 %i.br, 12345                    ; 2 uses
  %i.bt = sdiv i32 %i.bs, 65536
  %i.bu = and i32 %i.bt, 32767
  %i.bv = sext i16 %.sroa.7130.0 to i32           ; 2 uses
  %i.bw = urem i32 %i.bu, %i.bv
  %i.bx = uitofp nsz nneg i32 %i.bw to float
  %i.by = sitofp nsz i16 %.sroa.7130.0 to float   ; 2 uses
  %i.bz = fmul nnan nsz float %i.by, 5.000000e-01
  %i.ca = fsub nsz float %i.bx, %i.bz
  %i.cb = mul i32 %i.bs, 1103515245
  %i.cc = add i32 %i.cb, 12345                    ; 3 uses
  store i32 %i.cc, ptr %i.bl, align 4, !tbaa !169
  %i.cd = sdiv i32 %i.cc, 65536
  %i.ce = and i32 %i.cd, 32767
  %i.cf = urem i32 %i.ce, %.pre158
  %i.cg = uitofp nsz nneg i32 %i.cf to float
  %i.ch = fsub nsz float %i.cg, %i.bq
  %i.ci = insertelement <2 x float> poison, float %i.ch, i64 0
  %.sroa.091.0.vec.insert = insertelement <2 x float> %i.ci, float %i.ca, i64 1 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cj = mul i32 %i.cc, 1103515245
  %i.ck = add i32 %i.cj, 12345                    ; 3 uses
  store i32 %i.ck, ptr %i.bl, align 4, !tbaa !169
  %i.cl = sdiv i32 %i.ck, 65536
  %i.cm = trunc nsw i32 %i.cl to i16
  %.lhs.trunc.i39 = and i16 %i.cm, 32767
  %i.cn = urem i16 %.lhs.trunc.i39, 13
  %i.co = icmp eq i16 %i.cn, 0
  br i1 %i.co, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cp = mul i32 %i.ck, 1103515245
  %i.cq = add i32 %i.cp, 12345                    ; 2 uses
  %i.cr = mul i32 %i.cq, 1103515245
  %i.cs = add i32 %i.cr, 12345                    ; 2 uses
  %i.ct = sdiv i32 %i.cs, 65536
  %i.cu = and i32 %i.ct, 32767
  %i.cv = shl nsw i32 %i.bv, 1
  %i.cw = urem i32 %i.cu, %i.cv
  %i.cx = uitofp nsz nneg i32 %i.cw to float
  %i.cy = fsub nsz float %i.cx, %i.by
  %i.cz = mul i32 %i.cs, 1103515245
  %i.da = add i32 %i.cz, 12345                    ; 2 uses
  store i32 %i.da, ptr %i.bl, align 4, !tbaa !169
  %i.db = sdiv i32 %i.da, 65536
  %i.dc = and i32 %i.db, 32767
  %i.dd = urem i32 %i.dc, %.pre158
  %i.de = uitofp nsz nneg i32 %i.dd to float
  %i.df = fsub nsz float %i.de, %i.bq
  %i.dg = insertelement <2 x float> poison, float %i.df, i64 0
  %.sroa.091.0.vec.insert95 = insertelement <2 x float> %i.dg, float %i.cy, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.091.0 = phi nsz <2 x float> [ %.sroa.091.0.vec.insert, %bb.e ], [ %.sroa.091.0.vec.insert95, %bb.g ], [ %.sroa.091.0.vec.insert, %bb.f ] ; 3 uses
  %.pn153.in.in = phi i32 [ %i.bo, %bb.e ], [ %i.cq, %bb.g ], [ %i.bo, %bb.f ]
  %.pn153.in = sdiv i32 %.pn153.in.in, 65536
  %.pn153 = and i32 %.pn153.in, 32767
  %.pn.in = urem i32 %.pn153, %.pre158
  %.pn = uitofp nneg i32 %.pn.in to float
  %.sroa.20.0 = fsub nsz float %.pn, %i.bq        ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.di = load <2 x float>, ptr %i.dh, align 4, !tbaa !81 ; 4 uses
  %i.dj = extractelement <2 x float> %i.di, i64 0
  %i.dk = fptosi float %i.dj to i16
  %i.dl = extractelement <2 x float> %i.di, i64 1
  %i.dm = fptosi float %i.dl to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !230 ; 3 uses
  %i.dp = fptosi float %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dr = load i16, ptr %i.dq, align 8, !tbaa !184
  %i.ds = add i16 %i.dr, %i.dk
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !182
  %i.dv = add i16 %i.du, %i.dm
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.dx = load i16, ptr %i.dw, align 4, !tbaa !181
  %i.dy = add i16 %i.dx, %i.dp
  %i.dz = load i16, ptr %i.ay, align 4, !tbaa !236
  %i.ea = sdiv i16 %i.dz, 2                       ; 3 uses
  %i.eb = add i16 %i.ds, %i.ea                    ; 4 uses
  %i.ec = add i16 %i.dv, %i.ea                    ; 4 uses
  %i.ed = add i16 %i.dy, %i.ea                    ; 4 uses
  %.sroa.091.0.vec.extract = extractelement <2 x float> %.sroa.091.0, i64 0
  %i.ee = fptosi float %.sroa.091.0.vec.extract to i16
  %.sroa.091.4.vec.extract = extractelement <2 x float> %.sroa.091.0, i64 1
  %i.ef = fptosi float %.sroa.091.4.vec.extract to i16
  %i.eg = fptosi float %.sroa.20.0 to i16
  %i.eh = add i16 %i.eb, %i.ee                    ; 3 uses
  %i.ei = add i16 %i.ec, %i.ef
  %i.ej = add i16 %i.ed, %i.eg                    ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !217 ; 3 uses
  %.not.i = icmp eq ptr %i.el, null
  br i1 %.not.i, label %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit.thread142, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.em = sext i16 %i.ed to i64
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !237 ; 3 uses
  %i.ep = sext i16 %i.eo to i64                   ; 2 uses
  %.not12.i = icmp slt i16 %i.ed, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.er = load i16, ptr %i.eq, align 8            ; 2 uses
  %.not13.i = icmp sgt i16 %i.ed, %i.er
  %or.cond18.i = select i1 %.not12.i, i1 true, i1 %.not13.i
  br i1 %or.cond18.i, label %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.eu = load i16, ptr %i.es, align 2, !tbaa !238 ; 2 uses
  %.not14.i = icmp sgt i16 %i.eu, %i.eb
  %i.ev = load i16, ptr %i.et, align 4
  %.not15.i = icmp slt i16 %i.ev, %i.eb
  %or.cond.i = select i1 %.not14.i, i1 true, i1 %.not15.i
  br i1 %or.cond.i, label %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit, label %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit.thread

_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit: ; preds = %bb.i, %bb.j
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !211
  %i.ey = trunc i32 %i.ex to i16
  %i.ez = icmp sgt i16 %i.ec, %i.ey
  br i1 %i.ez, label %.thread, label %bb.m

_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit.thread142: ; preds = %bb.h
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !211
  %i.fc = trunc i32 %i.fb to i16
  %i.fd = icmp sgt i16 %i.ec, %i.fc
  br i1 %i.fd, label %.thread143, label %bb.m

_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit.thread: ; preds = %bb.j
  %i.fe = sext i16 %i.eu to i64
  %i.ff = sext i16 %i.eb to i64
  %i.fg = sub nsw i64 %i.em, %i.ep
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fi = load i16, ptr %i.fh, align 8, !tbaa !219
  %i.fj = zext i16 %i.fi to i64
  %i.fk = mul nuw nsw i64 %i.fg, %i.fj
  %i.fl = sub nsw i64 %i.ff, %i.fe
  %i.fm = add nsw i64 %i.fl, %i.fk
  %i.fn = and i64 %i.fm, 4294967295
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.el, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !32
  %i.fq = icmp sgt i16 %i.ec, %i.fp
  br i1 %i.fq, label %.thread, label %bb.m

.thread:                                          ; preds = %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit, %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit.thread
  %i.fr = sext i16 %i.ej to i64
  %.not12.i57 = icmp slt i16 %i.ej, %i.eo
  %.not13.i58 = icmp sgt i16 %i.ej, %i.er
  %or.cond18.i59 = select i1 %.not12.i57, i1 true, i1 %.not13.i58
  br i1 %or.cond18.i59, label %.thread143, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.fu = load i16, ptr %i.fs, align 2, !tbaa !238 ; 2 uses
  %.not14.i60 = icmp sgt i16 %i.fu, %i.eh
  %i.fv = load i16, ptr %i.ft, align 4
  %.not15.i61 = icmp slt i16 %i.fv, %i.eh
  %or.cond.i62 = select i1 %.not14.i60, i1 true, i1 %.not15.i61
  br i1 %or.cond.i62, label %.thread143, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fw = sext i16 %i.fu to i64
  %i.fx = sext i16 %i.eh to i64
  %i.fy = sub nsw i64 %i.fr, %i.ep
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ga = load i16, ptr %i.fz, align 8, !tbaa !219
  %i.gb = zext i16 %i.ga to i64
  %i.gc = mul nuw nsw i64 %i.fy, %i.gb
  %i.gd = sub nsw i64 %i.fx, %i.fw
  %i.ge = add nsw i64 %i.gd, %i.gc
  %i.gf = and i64 %i.ge, 4294967295
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.el, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !32
  br label %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit64

.thread143:                                       ; preds = %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit.thread142, %bb.k, %.thread
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !211
  %i.gk = trunc i32 %i.gj to i16
  br label %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit64

_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit64: ; preds = %bb.l, %.thread143
  %.0.i63 = phi i16 [ %i.gh, %bb.l ], [ %i.gk, %.thread143 ]
  %i.gl = icmp slt i16 %.0.i63, %i.ei
  br label %bb.m

bb.m:                                             ; preds = %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit.thread142, %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit.thread, %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit64, %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit
  %i.gm = phi i1 [ false, %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit ], [ %i.gl, %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit64 ], [ false, %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit.thread ], [ false, %_ZN7CavesV623getSurfaceFromHeightmapEN4core8vector3dIsEE.exit.thread142 ]
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gp = load float, ptr %i.go, align 8, !tbaa !149
  %i.gq = fadd nsz float %.sroa.20.0, %i.gp
  %i.gr = load <2 x float>, ptr %i.gn, align 8, !tbaa !81
  %i.gs = fadd nsz <2 x float> %.sroa.091.0, %i.gr
  %i.gt = fadd nsz <2 x float> %i.di, %i.gs       ; 4 uses
  %i.gu = fadd nsz float %i.gq, %i.do             ; 3 uses
  %i.gv = extractelement <2 x float> %i.gt, i64 0 ; 2 uses
  %i.gw = fcmp nsz olt float %i.gv, 0.000000e+00
  br i1 %i.gw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.vec.insert = insertelement <2 x float> %i.gt, float 0.000000e+00, i64 0
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 102
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !232 ; 2 uses
  %i.gz = sitofp i16 %i.gy to float
  %i.ha = fcmp nsz ult float %i.gv, %i.gz
  br i1 %i.ha, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hb = sext i16 %i.gy to i32
  %i.hc = add nsw i32 %i.hb, -1
  %i.hd = sitofp nsz i32 %i.hc to float
  %.sroa.0.0.vec.insert73 = insertelement <2 x float> %i.gt, float %i.hd, i64 0
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.sroa.0.0 = phi nsz <2 x float> [ %.sroa.0.0.vec.insert, %bb.n ], [ %i.gt, %bb.o ], [ %.sroa.0.0.vec.insert73, %bb.p ] ; 4 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 1 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.hf = load i16, ptr %i.he, align 4, !tbaa !225
  %i.hg = sitofp i16 %i.hf to float               ; 2 uses
  %i.hh = fcmp nsz olt float %.sroa.0.4.vec.extract, %i.hg
  br i1 %i.hh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.4.vec.insert77 = insertelement <2 x float> %.sroa.0.0, float %i.hg, i64 1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 126
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !227 ; 2 uses
  %i.hk = sitofp i16 %i.hj to float
  %i.hl = fcmp nsz ult float %.sroa.0.4.vec.extract, %i.hk
  br i1 %i.hl, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hm = sext i16 %i.hj to i32
  %i.hn = add nsw i32 %i.hm, -1
  %i.ho = sitofp nsz i32 %i.hn to float
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0, float %i.ho, i64 1
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  %.sroa.0.1 = phi nsz <2 x float> [ %.sroa.0.4.vec.insert77, %bb.r ], [ %.sroa.0.0, %bb.s ], [ %.sroa.0.4.vec.insert, %bb.t ] ; 2 uses
  %i.hp = fcmp nsz olt float %i.gu, 0.000000e+00
  br i1 %i.hp, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !229 ; 2 uses
  %i.hs = sitofp i16 %i.hr to float
  %i.ht = fcmp nsz ult float %i.gu, %i.hs
  br i1 %i.ht, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hu = sext i16 %i.hr to i32
  %i.hv = add nsw i32 %i.hu, -1
  %i.hw = sitofp nsz i32 %i.hv to float
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %.sroa.12.0 = phi nsz float [ %i.hw, %bb.w ], [ %i.gu, %bb.v ], [ 0.000000e+00, %bb.u ] ; 2 uses
  %i.hx = fsub nsz <2 x float> %.sroa.0.1, %i.di  ; 4 uses
  %i.hy = fsub nsz float %.sroa.12.0, %i.do       ; 3 uses
  %foldExtExtBinop168 = fmul nsz <2 x float> %i.hx, %i.hx
  %i.hz = extractelement <2 x float> %foldExtExtBinop168, i64 1
  %i.ia = extractelement <2 x float> %i.hx, i64 0 ; 2 uses
  %i.ib = tail call nsz float @llvm.fmuladd.f32(float %i.ia, float %i.ia, float %i.hz)
  %i.ic = tail call nsz float @llvm.fmuladd.f32(float %i.hy, float %i.hy, float %i.ib)
  %i.id = tail call nsz noundef float @llvm.sqrt.f32(float %i.ic) ; 2 uses
  %i.ie = fcmp nsz olt float %i.id, 5.000000e-02
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !216 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !169
  %i.ii = mul i32 %i.ih, 1103515245
  %i.ij = add i32 %i.ii, 12345                    ; 2 uses
  store i32 %i.ij, ptr %i.ig, align 4, !tbaa !169
  %i.ik = sdiv i32 %i.ij, 65536
  %.zext.i70 = and i32 %i.ik, 1
  %i.il = icmp eq i32 %.zext.i70, 0
  %i.im = fdiv nsz float 1.000000e+00, %i.id
  %i.in = select i1 %i.ie, float 1.000000e+00, float %i.im
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  store <2 x float> %.sroa.0.1, ptr %i.dh, align 4
  store float %.sroa.12.0, ptr %i.dn, align 4, !tbaa !81
  ret void

bb.z:                                             ; preds = %bb.x, %bb.z
  %.0155 = phi float [ 0.000000e+00, %bb.x ], [ %i.io, %bb.z ] ; 2 uses
  tail call void @_ZN7CavesV610carveRouteEN4core8vector3dIfEEfbb(ptr noundef nonnull align 8 dereferenceable(128) %0, <2 x float> %i.hx, float %i.hy, float noundef %.0155, i1 noundef zeroext %i.il, i1 noundef zeroext %i.gm)
  %i.io = fadd nsz float %i.in, %.0155            ; 2 uses
  %i.ip = fcmp nsz olt float %i.io, 1.000000e+00
  br i1 %i.ip, label %bb.z, label %bb.y, !llvm.loop !239
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN7CavesV610carveRouteEN4core8vector3dIfEEfbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, <2 x float> %1, float %2, float noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i16, ptr %i.a, align 8, !tbaa !212
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.d = load i16, ptr %i.c, align 2, !tbaa !213
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.f = load <4 x float>, ptr %i.e, align 4
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load float, ptr %i.h, align 8, !tbaa !231 ; 2 uses
  %i.j = fptosi float %i.i to i16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 98 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !182
  %i.n = add i16 %i.m, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.0117.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.p = fmul nsz float %.sroa.0117.4.vec.extract, %3
  %i.q = fadd nsz float %i.p, %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.s = load float, ptr %i.r, align 4, !tbaa !149
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !215  ; 6 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !169
  %i.w = mul i32 %i.v, 1103515245
  %i.x = insertelement <2 x float> %1, float %2, i64 1
  %i.y = insertelement <2 x float> poison, float %3, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul nsz <2 x float> %i.x, %i.z
  %i.ab = insertelement <2 x float> %i.g, float %i.s, i64 1
  %i.ac = fadd nsz <2 x float> %i.aa, %i.ab
  %i.ad = add i32 %i.w, 12345                     ; 2 uses
  %i.ae = mul i32 %i.ad, 1103515245
  %i.af = add i32 %i.ae, 12345                    ; 4 uses
  store i32 %i.af, ptr %i.u, align 4, !tbaa !169
  %i.ag = insertelement <2 x i32> poison, i32 %i.ad, i64 0
  %i.ah = insertelement <2 x i32> %i.ag, i32 %i.af, i64 1
  %i.ai = sdiv <2 x i32> %i.ah, splat (i32 65536)
  %i.aj = trunc nsw <2 x i32> %i.ai to <2 x i16>
  %i.ak = and <2 x i16> %i.aj, splat (i16 32767)
  %i.al = urem <2 x i16> %i.ak, splat (i16 21)
  %i.am = trunc nuw nsw <2 x i16> %i.al to <2 x i8>
  %i.an = add nsw <2 x i8> %i.am, splat (i8 -10)
  %i.ao = sitofp <2 x i8> %i.an to <2 x float>
  %i.ap = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> splat (float 1.000000e-01), <2 x float> %i.ac) ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  %i.ar = fptosi float %i.aq to i16
  %i.as = fptosi float %i.q to i16
  %i.at = extractelement <2 x float> %i.ap, i64 1
  %i.au = fptosi float %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !236 ; 2 uses
  %i.ax = sdiv i16 %i.aw, -2                      ; 2 uses
  %i.ay = add i16 %i.ax, %i.aw
  %i.az = insertelement <2 x i16> poison, i16 %i.ax, i64 0
  %i.ba = insertelement <2 x i16> %i.az, i16 %i.ay, i64 1 ; 2 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = mul i32 %i.af, 1103515245
  %i.bc = add <2 x i16> %i.ba, splat (i16 -1)
  %i.bd = add i32 %i.bb, 12345                    ; 2 uses
  %i.be = mul i32 %i.bd, 1103515245
  %i.bf = add i32 %i.be, 12345                    ; 3 uses
  %i.bg = insertelement <2 x i32> poison, i32 %i.bd, i64 0
  %i.bh = insertelement <2 x i32> %i.bg, i32 %i.bf, i64 1
end_hunk_1
