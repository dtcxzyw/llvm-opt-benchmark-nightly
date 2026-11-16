Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/localplayer?download=true
inline.NumInlined: 802
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11LocalPlayer4moveEfP11EnvironmentPSt6vectorI13CollisionInfoSaIS3_EE:bb.a
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !139, !range !78, !noundef !79
  %i.di = trunc nuw i8 %i.dh to i1
  %i.dj = load float, ptr %4, align 16, !tbaa !80
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !81 ; 2 uses
  %i.dm = load float, ptr %.sroa.2243.0..sroa_idx, align 8, !tbaa !82
  %i.dn = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.dm, i64 1 ; 2 uses
  %i.dp = fcmp nsz ogt <2 x float> %i.do, zeroinitializer
  %i.dq = select <2 x i1> %i.dp, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.dr = fadd nsz <2 x float> %i.do, %i.dq
  %i.ds = fdiv nsz <2 x float> %i.dr, splat (float 1.000000e+01) ; 2 uses
  %i.dt = extractelement <2 x float> %i.ds, i64 0
  %i.du = fptosi float %i.dt to i16
  %i.dv = extractelement <2 x float> %i.ds, i64 1
  %i.dw = fptosi float %i.dv to i16
  %.sroa.3.0.insert.ext.i422 = zext i16 %i.dw to i48
  %.sroa.3.0.insert.shift.i423 = shl nuw i48 %.sroa.3.0.insert.ext.i422, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i427 = zext i16 %i.du to i48 ; 2 uses
  br i1 %i.di, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.dx = fadd nsz float %i.dl, 1.000000e+00      ; 2 uses
  %i.dy = fcmp nsz ogt float %i.dx, 0.000000e+00
  %i.dz = select nsz i1 %i.dy, float 5.000000e+00, float -5.000000e+00
  %i.ea = fadd nsz float %i.dx, %i.dz
  %i.eb = fdiv nsz float %i.ea, 1.000000e+01
  %i.ec = fptosi float %i.eb to i16
  %.sroa.2.0.insert.ext.i424 = zext i16 %i.ec to i48
  %.sroa.2.0.insert.shift.i425 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i424, 16
  %.sroa.2.0.insert.insert.i426 = or disjoint i48 %.sroa.3.0.insert.shift.i423, %.sroa.2.0.insert.shift.i425
  %.sroa.0.0.insert.insert.i428 = or disjoint i48 %.sroa.2.0.insert.insert.i426, %.sroa.0.0.insert.ext.i427
  %i.ed = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.ab, i48 %.sroa.0.0.insert.insert.i428, ptr noundef nonnull %i.a)
  %i.ee = load i8, ptr %i.a, align 1, !tbaa !83, !range !78, !noundef !79
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.eg = and i32 %i.ed, 65535
  %i.eh = zext nneg i32 %i.eg to i64              ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !86
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !87 ; 3 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = sdiv exact i64 %i.eo, 2080
  %i.eq = icmp ugt i64 %i.ep, %i.eh
  br i1 %i.eq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.er = getelementptr inbounds nuw [2080 x i8], ptr %i.el, i64 %i.eh ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load i64, ptr %i.es, align 8, !tbaa !21
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.s, label %_ZNK14NodeDefManager3getEt.exit

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit

_ZNK14NodeDefManager3getEt.exit:                  ; preds = %bb.r, %bb.s
  %i.ew = phi ptr [ %i.ev, %bb.s ], [ %i.er, %bb.r ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1458
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !140, !range !78, !noundef !79
  store i8 %i.ey, ptr %i.dg, align 1, !tbaa !139
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 1456
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !141
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 421
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !142
  br label %bb.z

bb.t:                                             ; preds = %bb.p
  store i8 0, ptr %i.dg, align 1, !tbaa !139
  br label %bb.z

bb.u:                                             ; preds = %bb.o
  %i.fc = fadd nsz float %i.dl, 5.000000e+00      ; 2 uses
  %i.fd = fcmp nsz ogt float %i.fc, 0.000000e+00
  %i.fe = select nsz i1 %i.fd, float 5.000000e+00, float -5.000000e+00
  %i.ff = fadd nsz float %i.fc, %i.fe
  %i.fg = fdiv nsz float %i.ff, 1.000000e+01
  %i.fh = fptosi float %i.fg to i16
  %.sroa.2.0.insert.ext.i437 = zext i16 %i.fh to i48
  %.sroa.2.0.insert.shift.i438 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i437, 16
  %.sroa.2.0.insert.insert.i439 = or disjoint i48 %.sroa.3.0.insert.shift.i423, %.sroa.2.0.insert.shift.i438
  %.sroa.0.0.insert.insert.i441 = or disjoint i48 %.sroa.2.0.insert.insert.i439, %.sroa.0.0.insert.ext.i427
  %i.fi = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.ab, i48 %.sroa.0.0.insert.insert.i441, ptr noundef nonnull %i.a)
  %i.fj = load i8, ptr %i.a, align 1, !tbaa !83, !range !78, !noundef !79
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.fl = and i32 %i.fi, 65535
  %i.fm = zext nneg i32 %i.fl to i64              ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !86
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !87 ; 3 uses
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = sdiv exact i64 %i.ft, 2080
  %i.fv = icmp ugt i64 %i.fu, %i.fm
  br i1 %i.fv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fw = getelementptr inbounds nuw [2080 x i8], ptr %i.fq, i64 %i.fm ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !21
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.x, label %_ZNK14NodeDefManager3getEt.exit442

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit442

_ZNK14NodeDefManager3getEt.exit442:               ; preds = %bb.w, %bb.x
  %i.gb = phi ptr [ %i.ga, %bb.x ], [ %i.fw, %bb.w ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1458
  %i.gd = load i8, ptr %i.gc, align 2, !tbaa !140, !range !78, !noundef !79
  store i8 %i.gd, ptr %i.dg, align 1, !tbaa !139
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 1456
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !141
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 421
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !142
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  store i8 0, ptr %i.dg, align 1, !tbaa !139
  br label %bb.z

bb.z:                                             ; preds = %_ZNK14NodeDefManager3getEt.exit442, %bb.y, %_ZNK14NodeDefManager3getEt.exit, %bb.t
  %i.gh = load float, ptr %4, align 16, !tbaa !80
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 5 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !81 ; 2 uses
  %i.gk = load float, ptr %.sroa.2243.0..sroa_idx, align 8, !tbaa !82
  %i.gl = fcmp nsz ogt float %i.gj, 0.000000e+00
  %i.gm = select nsz i1 %i.gl, float 5.000000e+00, float -5.000000e+00
  %i.gn = fadd nsz float %i.gj, %i.gm
  %i.go = fdiv nsz float %i.gn, 1.000000e+01
  %i.gp = fptosi float %i.go to i16
  %i.gq = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gr = insertelement <2 x float> %i.gq, float %i.gk, i64 1 ; 2 uses
  %i.gs = fcmp nsz ogt <2 x float> %i.gr, zeroinitializer
  %i.gt = select <2 x i1> %i.gs, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.gu = fadd nsz <2 x float> %i.gr, %i.gt
  %i.gv = fdiv nsz <2 x float> %i.gu, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i451 = zext i16 %i.gp to i48
  %.sroa.2.0.insert.shift.i452 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i451, 16
  %i.gw = fptosi <2 x float> %i.gv to <2 x i16>   ; 2 uses
  %i.gx = extractelement <2 x i16> %i.gw, i64 1
  %i.gy = zext i16 %i.gx to i48
  %.sroa.3.0.insert.shift.i450 = shl nuw i48 %i.gy, 32
  %.sroa.2.0.insert.insert.i453 = or disjoint i48 %.sroa.3.0.insert.shift.i450, %.sroa.2.0.insert.shift.i452
  %i.gz = extractelement <2 x i16> %i.gw, i64 0
  %i.ha = zext i16 %i.gz to i48
  %.sroa.0.0.insert.insert.i455 = or disjoint i48 %.sroa.2.0.insert.insert.i453, %i.ha
  %i.hb = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.ab, i48 %.sroa.0.0.insert.insert.i455, ptr noundef nonnull %i.a)
  %i.hc = load i8, ptr %i.a, align 1, !tbaa !83, !range !78, !noundef !79
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.he = and i32 %i.hb, 65535
  %i.hf = zext nneg i32 %i.he to i64              ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !86
  %i.hj = load ptr, ptr %i.hg, align 8, !tbaa !87 ; 3 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = sdiv exact i64 %i.hm, 2080
  %i.ho = icmp ugt i64 %i.hn, %i.hf
  br i1 %i.ho, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hp = getelementptr inbounds nuw [2080 x i8], ptr %i.hj, i64 %i.hf ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !21
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.ac, label %_ZNK14NodeDefManager3getEt.exit456

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit456

_ZNK14NodeDefManager3getEt.exit456:               ; preds = %bb.ab, %bb.ac
  %i.hu = phi ptr [ %i.ht, %bb.ac ], [ %i.hp, %bb.ab ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 1458
  %i.hw = load i8, ptr %i.hv, align 2, !tbaa !140, !range !78, !noundef !79
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %_ZNK14NodeDefManager3getEt.exit456
  %.sink = phi i8 [ %i.hw, %_ZNK14NodeDefManager3getEt.exit456 ], [ 0, %bb.z ]
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i8 %.sink, ptr %i.hx, align 4, !tbaa !143
  %i.hy = load <3 x float>, ptr %4, align 16, !tbaa !35
  %i.hz = shufflevector <3 x float> %i.hy, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.ia = fadd <4 x float> %i.hz, <float 5.000000e+00, float -0.000000e+00, float -0.000000e+00, float -2.000000e+00> ; 2 uses
  %i.ib = fcmp nsz ogt <4 x float> %i.ia, zeroinitializer
  %i.ic = select <4 x i1> %i.ib, <4 x float> splat (float 5.000000e+00), <4 x float> splat (float -5.000000e+00)
  %i.id = fadd nsz <4 x float> %i.ia, %i.ic
  %i.ie = fdiv nsz <4 x float> %i.id, splat (float 1.000000e+01) ; 3 uses
  %i.if = extractelement <4 x float> %i.ie, i64 1
  %i.ig = fptosi float %i.if to i16
  %i.ih = extractelement <4 x float> %i.ie, i64 2
  %i.ii = fptosi float %i.ih to i16
  %.sroa.3.0.insert.ext.i463 = zext i16 %i.ii to i48
  %.sroa.3.0.insert.shift.i464 = shl nuw i48 %.sroa.3.0.insert.ext.i463, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i468 = zext i16 %i.ig to i48 ; 2 uses
  %i.ij = shufflevector <4 x float> %i.ie, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ik = fptosi <2 x float> %i.ij to <2 x i16>
  %i.il = zext <2 x i16> %i.ik to <2 x i32>
  %i.im = shl nuw <2 x i32> %i.il, splat (i32 16) ; 2 uses
  %i.in = extractelement <2 x i32> %i.im, i64 0
  %i.io = zext i32 %i.in to i48
  %.sroa.2.0.insert.insert.i480 = or disjoint i48 %.sroa.3.0.insert.shift.i464, %i.io
  %.sroa.0.0.insert.insert.i482 = or disjoint i48 %.sroa.2.0.insert.insert.i480, %.sroa.0.0.insert.ext.i468
  %i.ip = extractelement <2 x i32> %i.im, i64 1
  %i.iq = zext i32 %i.ip to i48
  %.sroa.9685.0.insert.insert = or disjoint i48 %.sroa.3.0.insert.shift.i464, %i.iq
  %.sroa.0681.0.insert.insert = or disjoint i48 %.sroa.9685.0.insert.insert, %.sroa.0.0.insert.ext.i468
  %i.ir = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.ab, i48 %.sroa.0681.0.insert.insert, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.is = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.ab, i48 %.sroa.0.0.insert.insert.i482, ptr noundef nonnull %i.b)
  %i.it = load i8, ptr %i.a, align 1, !tbaa !83, !range !78, !noundef !79
  %i.iu = trunc nuw i8 %i.it to i1
  %i.iv = load i8, ptr %i.b, align 1, !range !78
  %i.iw = trunc nuw i8 %i.iv to i1
  %or.cond3 = select i1 %i.iu, i1 %i.iw, i1 false
  br i1 %or.cond3, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.ix = and i32 %i.ir, 65535
  %i.iy = zext nneg i32 %i.ix to i64              ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !86
  %i.jc = load ptr, ptr %i.iz, align 8, !tbaa !87 ; 5 uses
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = sdiv exact i64 %i.jf, 2080              ; 2 uses
  %i.jh = icmp ugt i64 %i.jg, %i.iy
  br i1 %i.jh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ji = getelementptr inbounds nuw [2080 x i8], ptr %i.jc, i64 %i.iy ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !21
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %bb.ag, label %_ZNK14NodeDefManager3getEt.exit483

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit483

_ZNK14NodeDefManager3getEt.exit483:               ; preds = %bb.af, %bb.ag
  %i.jn = phi ptr [ %i.jm, %bb.ag ], [ %i.ji, %bb.af ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1415
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !144, !range !78, !noundef !79
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit483
  %i.jr = and i32 %i.is, 65535
  %i.js = zext nneg i32 %i.jr to i64              ; 2 uses
  %i.jt = icmp ugt i64 %i.jg, %i.js
  br i1 %i.jt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ju = getelementptr inbounds nuw [2080 x i8], ptr %i.jc, i64 %i.js ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !21
  %i.jx = icmp eq i64 %i.jw, 0
  br i1 %i.jx, label %bb.aj, label %_ZNK14NodeDefManager3getEt.exit484

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jc, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit484

_ZNK14NodeDefManager3getEt.exit484:               ; preds = %bb.ai, %bb.aj
  %i.jz = phi ptr [ %i.jy, %bb.aj ], [ %i.ju, %bb.ai ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 1415
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !144, !range !78, !noundef !79
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit484, %_ZNK14NodeDefManager3getEt.exit483
  %i.kd = xor i1 %i.bv, true
  %i.ke = zext i1 %i.kd to i8
  br label %bb.al

bb.al:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit484, %bb.ak, %bb.ad
  %.sink832 = phi i8 [ 0, %bb.ad ], [ 0, %_ZNK14NodeDefManager3getEt.exit484 ], [ %i.ke, %bb.ak ]
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 422
  store i8 %.sink832, ptr %i.kf, align 2, !tbaa !145
  %i.kg = load ptr, ptr %i.ak, align 8, !tbaa !75 ; 4 uses
  %i.kh = icmp eq ptr %i.kg, null                 ; 2 uses
  br i1 %i.kh, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 418
  %i.kj = load i8, ptr %i.ki, align 2, !tbaa !138, !range !78, !noundef !79
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 368
  %i.km = load float, ptr %i.kl, align 8, !tbaa !259
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.kn = phi nsz float [ 0.000000e+00, %bb.al ], [ %i.km, %bb.an ], [ 2.000000e+00, %bb.am ]
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !164
  %i.kq = fneg nsz float %i.kp
  %.sroa.0661.4.vec.insert = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.kq, i64 1
  %.sroa.0155.0.copyload = load <2 x float>, ptr %4, align 16, !tbaa !35
  %.sroa.5156.0.copyload = load float, ptr %.sroa.2243.0..sroa_idx, align 8, !tbaa !35
  %.sroa.0153.0.copyload = load <2 x float>, ptr %i.cw, align 8, !tbaa !35
  %.sroa.5154.0.copyload = load float, ptr %i.dd, align 8, !tbaa !35
  br i1 %i.kh, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kg, i64 422
  %i.ks = load i8, ptr %i.kr, align 2, !tbaa !165
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0325 = phi i8 [ %i.ks, %bb.ap ], [ 0, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.kt = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, null
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %spec.select = select i1 %i.ku, ptr null, ptr %i.kv
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  call void @_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode(ptr dead_on_unwind nonnull writable sret(%struct.collisionMoveResult) align 8 %7, ptr noundef nonnull %2, ptr noundef %spec.select, ptr noundef nonnull align 4 dereferenceable(24) %i.kw, float noundef %i.kn, float noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %i.cw, <2 x float> %.sroa.0661.4.vec.insert, float 0.000000e+00, ptr noundef %i.kg, i1 noundef zeroext true, i8 noundef zeroext %.0325)
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 243 ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !166, !range !78, !noundef !79
  %i.kz = trunc nuw i8 %i.ky to i1
  %.not = xor i1 %i.kz, true
  %or.cond5 = select i1 %.not, i1 true, i1 %i.bv
  br i1 %or.cond5, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.la = load i8, ptr %i.dg, align 1, !tbaa !139, !range !78, !noundef !79
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 422
  %i.ld = load i8, ptr %i.lc, align 2, !tbaa !145, !range !78, !noundef !79
  %i.le = trunc nuw i8 %i.ld to i1
  br i1 %i.le, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.lg = load i8, ptr %i.lf, align 4, !tbaa !167, !range !78, !noundef !79
  %i.lh = trunc nuw i8 %i.lg to i1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.li = phi i1 [ false, %bb.as ], [ false, %bb.ar ], [ %i.lh, %bb.at ], [ false, %bb.aq ] ; 2 uses
  %or.cond7 = select i1 %.not344, i1 true, i1 %i.bv
  br i1 %or.cond7, label %.loopexit749, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !135 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !135 ; 2 uses
  %.not747757 = icmp eq ptr %i.lm, %i.lo
  br i1 %.not747757, label %.loopexit749, label %.lr.ph

.lr.ph:                                           ; preds = %bb.av
  %i.lp = load ptr, ptr %3, align 8, !tbaa !135
  %i.lq = load ptr, ptr %i.lk, align 8, !tbaa !135
  %i.lr = icmp eq ptr %i.lp, %i.lq
  %.sroa.0144.0.copyload = load i48, ptr %i.lj, align 8, !tbaa !127 ; 3 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0144.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.ls = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.lt = fmul nnan nsz float %i.ls, 1.000000e+01
  %i.lu = load float, ptr %.sroa.2243.0..sroa_idx, align 8, !tbaa !82
  %i.lv = fsub nsz float %i.lt, %i.lu             ; 2 uses
  %.sroa.013.0.extract.trunc.i = trunc i48 %.sroa.0144.0.copyload to i16
  %i.lw = sitofp nsz i16 %.sroa.013.0.extract.trunc.i to float
  %i.lx = fmul nnan nsz float %i.lw, 1.000000e+01
  %i.ly = load float, ptr %4, align 16, !tbaa !80
  %i.lz = fsub nsz float %i.lx, %i.ly             ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0144.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %i.ma = sitofp nsz i16 %.sroa.2.0.extract.trunc.i to float
  %i.mb = fmul nnan nsz float %i.ma, 1.000000e+01
  %i.mc = load float, ptr %i.gi, align 4, !tbaa !81
  %i.md = fsub nsz float %i.mb, %i.mc             ; 2 uses
  %i.me = fmul nsz float %i.md, %i.md
end_hunk_0
begin_hunk_1_@_ZN11LocalPlayer8old_moveEfP11EnvironmentPSt6vectorI13CollisionInfoSaIS3_EE:bb.a
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !139, !range !78, !noundef !79
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = load float, ptr %4, align 16, !tbaa !80
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !81 ; 2 uses
  %i.da = load float, ptr %.sroa.2252.0..sroa_idx, align 8, !tbaa !82
  %i.db = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.da, i64 1 ; 2 uses
  %i.dd = fcmp nsz ogt <2 x float> %i.dc, zeroinitializer
  %i.de = select <2 x i1> %i.dd, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.df = fadd nsz <2 x float> %i.dc, %i.de
  %i.dg = fdiv nsz <2 x float> %i.df, splat (float 1.000000e+01) ; 2 uses
  %i.dh = extractelement <2 x float> %i.dg, i64 0
  %i.di = fptosi float %i.dh to i16
  %i.dj = extractelement <2 x float> %i.dg, i64 1
  %i.dk = fptosi float %i.dj to i16
  %.sroa.3.0.insert.ext.i = zext i16 %i.dk to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i16 %i.di to i48 ; 2 uses
  br i1 %i.cw, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.critedge369
  %i.dl = fadd nsz float %i.cz, 1.000000e+00      ; 2 uses
  %i.dm = fcmp nsz ogt float %i.dl, 0.000000e+00
  %i.dn = select nsz i1 %i.dm, float 5.000000e+00, float -5.000000e+00
  %i.do = fadd nsz float %i.dl, %i.dn
  %i.dp = fdiv nsz float %i.do, 1.000000e+01
  %i.dq = fptosi float %i.dp to i16
  %.sroa.2.0.insert.ext.i = zext i16 %i.dq to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.dr = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0.0.insert.insert.i, ptr noundef nonnull %i.a)
  %i.ds = load i8, ptr %i.a, align 1, !tbaa !83, !range !78, !noundef !79
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.du = and i32 %i.dr, 65535
  %i.dv = zext nneg i32 %i.du to i64              ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !86
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !87 ; 3 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = sdiv exact i64 %i.ec, 2080
  %i.ee = icmp ugt i64 %i.ed, %i.dv
  br i1 %i.ee, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ef = getelementptr inbounds nuw [2080 x i8], ptr %i.dz, i64 %i.dv ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !21
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.m, label %_ZNK14NodeDefManager3getEt.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit

_ZNK14NodeDefManager3getEt.exit:                  ; preds = %bb.l, %bb.m
  %i.ek = phi ptr [ %i.ej, %bb.m ], [ %i.ef, %bb.l ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1458
  %i.em = load i8, ptr %i.el, align 2, !tbaa !140, !range !78, !noundef !79
  store i8 %i.em, ptr %i.cu, align 1, !tbaa !139
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 1456
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !141
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 421
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !142
  br label %bb.t

bb.n:                                             ; preds = %bb.j
  store i8 0, ptr %i.cu, align 1, !tbaa !139
  br label %bb.t

bb.o:                                             ; preds = %.critedge369
  %i.eq = fadd nsz float %i.cz, 5.000000e+00      ; 2 uses
  %i.er = fcmp nsz ogt float %i.eq, 0.000000e+00
  %i.es = select nsz i1 %i.er, float 5.000000e+00, float -5.000000e+00
  %i.et = fadd nsz float %i.eq, %i.es
  %i.eu = fdiv nsz float %i.et, 1.000000e+01
  %i.ev = fptosi float %i.eu to i16
  %.sroa.2.0.insert.ext.i408 = zext i16 %i.ev to i48
  %.sroa.2.0.insert.shift.i409 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i408, 16
  %.sroa.2.0.insert.insert.i410 = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i409
  %.sroa.0.0.insert.insert.i412 = or disjoint i48 %.sroa.2.0.insert.insert.i410, %.sroa.0.0.insert.ext.i
  %i.ew = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0.0.insert.insert.i412, ptr noundef nonnull %i.a)
  %i.ex = load i8, ptr %i.a, align 1, !tbaa !83, !range !78, !noundef !79
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ez = and i32 %i.ew, 65535
  %i.fa = zext nneg i32 %i.ez to i64              ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !86
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !87 ; 3 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = sdiv exact i64 %i.fh, 2080
  %i.fj = icmp ugt i64 %i.fi, %i.fa
  br i1 %i.fj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fk = getelementptr inbounds nuw [2080 x i8], ptr %i.fe, i64 %i.fa ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !21
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.r, label %_ZNK14NodeDefManager3getEt.exit413

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit413

_ZNK14NodeDefManager3getEt.exit413:               ; preds = %bb.q, %bb.r
  %i.fp = phi ptr [ %i.fo, %bb.r ], [ %i.fk, %bb.q ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1458
  %i.fr = load i8, ptr %i.fq, align 2, !tbaa !140, !range !78, !noundef !79
  store i8 %i.fr, ptr %i.cu, align 1, !tbaa !139
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 1456
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !141
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 421
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !142
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  store i8 0, ptr %i.cu, align 1, !tbaa !139
  br label %bb.t

bb.t:                                             ; preds = %_ZNK14NodeDefManager3getEt.exit413, %bb.s, %_ZNK14NodeDefManager3getEt.exit, %bb.n
  %i.fv = load float, ptr %4, align 16, !tbaa !80
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !81 ; 2 uses
  %i.fy = load float, ptr %.sroa.2252.0..sroa_idx, align 8, !tbaa !82
  %i.fz = fcmp nsz ogt float %i.fx, 0.000000e+00
  %i.ga = select nsz i1 %i.fz, float 5.000000e+00, float -5.000000e+00
  %i.gb = fadd nsz float %i.fx, %i.ga
  %i.gc = fdiv nsz float %i.gb, 1.000000e+01
  %i.gd = fptosi float %i.gc to i16
  %i.ge = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %i.fy, i64 1 ; 2 uses
  %i.gg = fcmp nsz ogt <2 x float> %i.gf, zeroinitializer
  %i.gh = select <2 x i1> %i.gg, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.gi = fadd nsz <2 x float> %i.gf, %i.gh
  %i.gj = fdiv nsz <2 x float> %i.gi, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i422 = zext i16 %i.gd to i48
  %.sroa.2.0.insert.shift.i423 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i422, 16
  %i.gk = fptosi <2 x float> %i.gj to <2 x i16>   ; 2 uses
  %i.gl = extractelement <2 x i16> %i.gk, i64 1
  %i.gm = zext i16 %i.gl to i48
  %.sroa.3.0.insert.shift.i421 = shl nuw i48 %i.gm, 32
  %.sroa.2.0.insert.insert.i424 = or disjoint i48 %.sroa.3.0.insert.shift.i421, %.sroa.2.0.insert.shift.i423
  %i.gn = extractelement <2 x i16> %i.gk, i64 0
  %i.go = zext i16 %i.gn to i48
  %.sroa.0.0.insert.insert.i426 = or disjoint i48 %.sroa.2.0.insert.insert.i424, %i.go
  %i.gp = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0.0.insert.insert.i426, ptr noundef nonnull %i.a)
  %i.gq = load i8, ptr %i.a, align 1, !tbaa !83, !range !78, !noundef !79
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.gs = and i32 %i.gp, 65535
  %i.gt = zext nneg i32 %i.gs to i64              ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.gv = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !86
  %i.gx = load ptr, ptr %i.gu, align 8, !tbaa !87 ; 3 uses
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = sdiv exact i64 %i.ha, 2080
  %i.hc = icmp ugt i64 %i.hb, %i.gt
  br i1 %i.hc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hd = getelementptr inbounds nuw [2080 x i8], ptr %i.gx, i64 %i.gt ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !21
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %bb.w, label %_ZNK14NodeDefManager3getEt.exit427

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gx, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit427

_ZNK14NodeDefManager3getEt.exit427:               ; preds = %bb.v, %bb.w
  %i.hi = phi ptr [ %i.hh, %bb.w ], [ %i.hd, %bb.v ]
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1458
  %i.hk = load i8, ptr %i.hj, align 2, !tbaa !140, !range !78, !noundef !79
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %_ZNK14NodeDefManager3getEt.exit427
  %.sink = phi i8 [ %i.hk, %_ZNK14NodeDefManager3getEt.exit427 ], [ 0, %bb.t ]
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i8 %.sink, ptr %i.hl, align 4, !tbaa !143
  %i.hm = load <3 x float>, ptr %4, align 16, !tbaa !35
  %i.hn = shufflevector <3 x float> %i.hm, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.ho = fadd <4 x float> %i.hn, <float 5.000000e+00, float -0.000000e+00, float -0.000000e+00, float -2.000000e+00> ; 2 uses
  %i.hp = fcmp nsz ogt <4 x float> %i.ho, zeroinitializer
  %i.hq = select <4 x i1> %i.hp, <4 x float> splat (float 5.000000e+00), <4 x float> splat (float -5.000000e+00)
  %i.hr = fadd nsz <4 x float> %i.ho, %i.hq
  %i.hs = fdiv nsz <4 x float> %i.hr, splat (float 1.000000e+01) ; 3 uses
  %i.ht = extractelement <4 x float> %i.hs, i64 1
  %i.hu = fptosi float %i.ht to i16
  %i.hv = extractelement <4 x float> %i.hs, i64 2
  %i.hw = fptosi float %i.hv to i16
  %.sroa.3.0.insert.ext.i434 = zext i16 %i.hw to i48
  %.sroa.3.0.insert.shift.i435 = shl nuw i48 %.sroa.3.0.insert.ext.i434, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i439 = zext i16 %i.hu to i48 ; 2 uses
  %i.hx = shufflevector <4 x float> %i.hs, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.hy = fptosi <2 x float> %i.hx to <2 x i16>
  %i.hz = zext <2 x i16> %i.hy to <2 x i32>
  %i.ia = shl nuw <2 x i32> %i.hz, splat (i32 16) ; 2 uses
  %i.ib = extractelement <2 x i32> %i.ia, i64 0
  %i.ic = zext i32 %i.ib to i48
  %.sroa.2.0.insert.insert.i451 = or disjoint i48 %.sroa.3.0.insert.shift.i435, %i.ic
  %.sroa.0.0.insert.insert.i453 = or disjoint i48 %.sroa.2.0.insert.insert.i451, %.sroa.0.0.insert.ext.i439
  %i.id = extractelement <2 x i32> %i.ia, i64 1
  %i.ie = zext i32 %i.id to i48
  %.sroa.9.0.insert.insert = or disjoint i48 %.sroa.3.0.insert.shift.i435, %i.ie
  %.sroa.0707.0.insert.insert = or disjoint i48 %.sroa.9.0.insert.insert, %.sroa.0.0.insert.ext.i439
  %i.if = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0707.0.insert.insert, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ig = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0.0.insert.insert.i453, ptr noundef nonnull %i.b)
  %i.ih = load i8, ptr %i.a, align 1, !tbaa !83, !range !78, !noundef !79
  %i.ii = trunc nuw i8 %i.ih to i1
  %i.ij = load i8, ptr %i.b, align 1, !range !78
  %i.ik = trunc nuw i8 %i.ij to i1
  %or.cond3 = select i1 %i.ii, i1 %i.ik, i1 false
  br i1 %or.cond3, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 422
  store i8 0, ptr %i.il, align 2, !tbaa !145
  br label %bb.ah

bb.z:                                             ; preds = %bb.x
  %i.im = and i32 %i.if, 65535
  %i.in = zext nneg i32 %i.im to i64              ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ip = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !86
  %i.ir = load ptr, ptr %i.io, align 8, !tbaa !87 ; 5 uses
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = sdiv exact i64 %i.iu, 2080              ; 2 uses
  %i.iw = icmp ugt i64 %i.iv, %i.in
  br i1 %i.iw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ix = getelementptr inbounds nuw [2080 x i8], ptr %i.ir, i64 %i.in ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !21
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %bb.ab, label %_ZNK14NodeDefManager3getEt.exit454

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ir, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit454

_ZNK14NodeDefManager3getEt.exit454:               ; preds = %bb.aa, %bb.ab
  %i.jc = phi ptr [ %i.jb, %bb.ab ], [ %i.ix, %bb.aa ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1415
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !144, !range !78, !noundef !79
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit454
  %i.jg = and i32 %i.ig, 65535
  %i.jh = zext nneg i32 %i.jg to i64              ; 2 uses
  %i.ji = icmp ugt i64 %i.iv, %i.jh
  br i1 %i.ji, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jj = getelementptr inbounds nuw [2080 x i8], ptr %i.ir, i64 %i.jh ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !21
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %bb.ae, label %_ZNK14NodeDefManager3getEt.exit455

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ir, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit455

_ZNK14NodeDefManager3getEt.exit455:               ; preds = %bb.ad, %bb.ae
  %i.jo = phi ptr [ %i.jn, %bb.ae ], [ %i.jj, %bb.ad ]
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 1415
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !144, !range !78, !noundef !79
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit455, %_ZNK14NodeDefManager3getEt.exit454
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNK14NodeDefManager3getEt.exit455
  %i.js = phi i8 [ 0, %_ZNK14NodeDefManager3getEt.exit455 ], [ 1, %bb.af ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 422
  store i8 %i.js, ptr %i.jt, align 2, !tbaa !145
  %i.ju = trunc nuw i8 %i.js to i1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.y
  %i.jv = phi i1 [ %i.ju, %bb.ag ], [ false, %bb.y ]
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 243 ; 3 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !166, !range !78, !noundef !79
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.ai, label %bb.ar

bb.ai:                                            ; preds = %bb.ah
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.ka = load i8, ptr %i.jz, align 4, !tbaa !77, !range !78, !noundef !79
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not.i.i.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.kc = load i8, ptr %i.y, align 8, !tbaa !24, !range !78, !noundef !79
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.ar, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ke = load i8, ptr %i.cu, align 1, !tbaa !139, !range !78, !noundef !79
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.kh = load i8, ptr %i.kg, align 4, !tbaa !167, !range !78, !noundef !79
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit, label %bb.ar

_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit:           ; preds = %bb.am
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 622
  %.sroa.0154.0.copyload = load i48, ptr %i.kj, align 2, !tbaa !127 ; 3 uses
  %.sroa.013.0.extract.trunc.i = trunc i48 %.sroa.0154.0.copyload to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0154.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.kk = sitofp nsz i16 %.sroa.013.0.extract.trunc.i to float
  %i.kl = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.km = fmul nnan nsz float %i.kk, 1.000000e+01 ; 2 uses
  %i.kn = fmul nnan nsz float %i.kl, 1.000000e+01 ; 2 uses
  %i.ko = fadd nsz float %i.km, -9.000000e+00     ; 2 uses
  %i.kp = fadd nsz float %i.km, 9.000000e+00      ; 2 uses
  %i.kq = load float, ptr %4, align 16, !tbaa !35 ; 3 uses
  %i.kr = fcmp nsz olt float %i.kq, %i.ko
  %i.ks = fcmp nsz ogt float %i.kq, %i.kp
  %..i = select nsz i1 %i.ks, float %i.kp, float %i.kq
  %.0.i = select nsz i1 %i.kr, float %i.ko, float %..i
  store float %.0.i, ptr %4, align 16, !tbaa !80
  %i.kt = fadd nsz float %i.kn, -9.000000e+00     ; 2 uses
  %i.ku = fadd nsz float %i.kn, 9.000000e+00      ; 2 uses
  %i.kv = load float, ptr %.sroa.2252.0..sroa_idx, align 8, !tbaa !35 ; 3 uses
  %i.kw = fcmp nsz olt float %i.kv, %i.kt
  %i.kx = fcmp nsz ogt float %i.kv, %i.ku
  %..i456 = select nsz i1 %i.kx, float %i.ku, float %i.kv
  %.0.i457 = select nsz i1 %i.kw, float %i.kt, float %..i456
  store float %.0.i457, ptr %.sroa.2252.0..sroa_idx, align 8, !tbaa !82
  br i1 %i.jv, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0154.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %i.ky = sitofp nsz i16 %.sroa.2.0.extract.trunc.i to float
  %i.kz = fmul nnan nsz float %i.ky, 1.000000e+01
  %i.la = fadd nsz float %i.kz, -5.000000e+00
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.lc = load float, ptr %i.lb, align 8, !tbaa !69
  %i.ld = fadd nsz float %i.la, %i.lc             ; 2 uses
  %i.le = load float, ptr %i.fw, align 4, !tbaa !81
  %i.lf = fcmp nsz olt float %i.le, %i.ld
  br i1 %i.lf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store float %i.ld, ptr %i.fw, align 4, !tbaa !81
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.lg = load float, ptr %i.ci, align 4, !tbaa !187
  %i.lh = fcmp nsz olt float %i.lg, 0.000000e+00
  br i1 %i.lh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store float 0.000000e+00, ptr %i.ci, align 4, !tbaa !187
  br label %bb.ar

bb.ar:                                            ; preds = %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit, %bb.aq, %bb.ap, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ah
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 418 ; 6 uses
  %i.lj = load i8, ptr %i.li, align 2, !tbaa !138, !range !78, !noundef !79
  %i.lk = trunc nuw i8 %i.lj to i1
  %i.ll = select nsz i1 %i.lk, float 6.000000e+00, float 2.000000e+00
  %.sroa.0144.0.copyload = load <2 x float>, ptr %4, align 16, !tbaa !35
  %.sroa.5145.0.copyload = load float, ptr %.sroa.2252.0..sroa_idx, align 8, !tbaa !35
  %.sroa.0142.0.copyload = load <2 x float>, ptr %i.cd, align 8, !tbaa !35
  %.sroa.5143.0.copyload = load float, ptr %i.ck, align 8, !tbaa !35
  %i.lm = load ptr, ptr %i.o, align 8, !tbaa !75  ; 3 uses
  %.not339 = icmp eq ptr %i.lm, null
  br i1 %.not339, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 422
  %i.lo = load i8, ptr %i.ln, align 2, !tbaa !165
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0318 = phi i8 [ %i.lo, %bb.as ], [ 0, %bb.ar ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.lp = load ptr, ptr %i.g, align 8, !tbaa !76  ; 2 uses
  %i.lq = icmp eq ptr %i.lp, null
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %spec.select = select i1 %i.lq, ptr null, ptr %i.lr
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 720
  call void @_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode(ptr dead_on_unwind nonnull writable sret(%struct.collisionMoveResult) align 8 %7, ptr noundef nonnull %2, ptr noundef %spec.select, ptr noundef nonnull align 4 dereferenceable(24) %i.ls, float noundef %i.ll, float noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %i.cd, <2 x float> zeroinitializer, float 0.000000e+00, ptr noundef %i.lm, i1 noundef zeroext true, i8 noundef zeroext %.0318)
  %i.lt = load i8, ptr %i.li, align 2, !tbaa !138, !range !78, !noundef !79 ; 2 uses
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.lv = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !82 ; 2 uses
  %i.lw = load <2 x float>, ptr %i.n, align 4, !tbaa !35
  %i.lx = fadd <2 x float> %i.lw, <float -0.000000e+00, float -1.000000e+00> ; 2 uses
  %i.ly = fcmp nsz ogt <2 x float> %i.lx, zeroinitializer
  %i.lz = select <2 x i1> %i.ly, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ma = fcmp nsz ogt float %i.lv, 0.000000e+00
  %i.mb = select nsz i1 %i.ma, float 5.000000e+00, float -5.000000e+00
  %i.mc = fadd nsz <2 x float> %i.lx, %i.lz
  %i.md = fadd nsz float %i.lv, %i.mb
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %.sroa.0125.0.copyload = load <2 x float>, ptr %i.n, align 4, !tbaa !35 ; 2 uses
  %.sroa.2126.0.copyload = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !35 ; 2 uses
  %i.me = fcmp nsz ogt <2 x float> %.sroa.0125.0.copyload, zeroinitializer
  %i.mf = select <2 x i1> %i.me, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.mg = fcmp nsz ogt float %.sroa.2126.0.copyload, 0.000000e+00
  %i.mh = select nsz i1 %i.mg, float 5.000000e+00, float -5.000000e+00
  %i.mi = fadd nsz <2 x float> %.sroa.0125.0.copyload, %i.mf
  %i.mj = fadd nsz float %.sroa.2126.0.copyload, %i.mh
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sink900 = phi float [ %i.mj, %bb.av ], [ %i.md, %bb.au ]
  %i.mk = phi <2 x float> [ %i.mi, %bb.av ], [ %i.mc, %bb.au ] ; 2 uses
  %i.ml = insertelement <2 x float> %i.mk, float %.sink900, i64 0
  %i.mm = fdiv nsz <2 x float> %i.ml, splat (float 1.000000e+01)
  %i.mn = fptosi <2 x float> %i.mm to <2 x i16>
  %i.mo = zext <2 x i16> %i.mn to <2 x i48>
  %i.mp = shl nuw <2 x i48> %i.mo, <i48 32, i48 16>
  %.sroa.2.0.insert.insert.i478 = call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.mp)
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.mr = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !186, !range !78, !noundef !79
  store i8 %i.ms, ptr %i.li, align 2, !tbaa !138
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.mu = load float, ptr %i.mt, align 8, !tbaa !69 ; 2 uses
  %i.mv = fcmp nsz ogt float %i.mu, 0.000000e+00
  %i.mw = fadd nsz float %i.mu, -5.000000e-01
  %.0319 = select nsz i1 %i.mv, float %i.mw, float 5.000000e-01 ; 2 uses
  %i.mx = load float, ptr %4, align 16, !tbaa !80
  %i.my = load float, ptr %i.fw, align 4, !tbaa !81
  %i.mz = fsub nsz float %i.my, %.0319            ; 2 uses
  %i.na = load float, ptr %.sroa.2252.0..sroa_idx, align 8, !tbaa !82
  %i.nb = fcmp nsz ogt float %i.mz, 0.000000e+00
  %i.nc = select nsz i1 %i.nb, float 5.000000e+00, float -5.000000e+00
  %i.nd = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.ne = insertelement <2 x float> %i.nd, float %i.na, i64 1 ; 2 uses
  %i.nf = fcmp nsz ogt <2 x float> %i.ne, zeroinitializer
  %i.ng = select <2 x i1> %i.nf, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.nh = shufflevector <2 x float> %i.ne, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 poison, i32 0, i32 1>
  %i.nj = insertelement <4 x float> %i.ni, float %i.mz, i64 1
  %i.nk = shufflevector <2 x float> %i.mk, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.nl = insertelement <4 x float> %i.nk, float %i.nc, i64 1
  %i.nm = shufflevector <2 x float> %i.ng, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nn = shufflevector <4 x float> %i.nl, <4 x float> %i.nm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.no = fadd <4 x float> %i.nj, %i.nn
  %i.np = fdiv nsz <4 x float> %i.no, splat (float 1.000000e+01)
  %i.nq = fptosi <4 x float> %i.np to <4 x i16>   ; 4 uses
  %i.nr = extractelement <4 x i16> %i.nq, i64 0
  %i.ns = zext i16 %i.nr to i48
  %.sroa.0.0.insert.insert.i480 = or disjoint i48 %.sroa.2.0.insert.insert.i478, %i.ns
  store i48 %.sroa.0.0.insert.insert.i480, ptr %i.mq, align 8, !tbaa !127
  %i.nt = extractelement <4 x i16> %i.nq, i64 3
  %i.nu = zext i16 %i.nt to i48
  %.sroa.3.0.insert.shift.i488 = shl nuw i48 %i.nu, 32
  %i.nv = extractelement <4 x i16> %i.nq, i64 1
  %i.nw = zext i16 %i.nv to i48
  %.sroa.2.0.insert.shift.i490 = shl nuw nsw i48 %i.nw, 16
  %.sroa.2.0.insert.insert.i491 = or disjoint i48 %.sroa.3.0.insert.shift.i488, %.sroa.2.0.insert.shift.i490
  %i.nx = extractelement <4 x i16> %i.nq, i64 2
  %i.ny = zext i16 %i.nx to i48
  %.sroa.0.0.insert.insert.i493 = or disjoint i48 %.sroa.2.0.insert.insert.i491, %i.ny
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 6 uses
  %i.oa = load i8, ptr %i.nz, align 4, !tbaa !77, !range !78, !noundef !79
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %bb.aw
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 662
  %.sroa.0109.0.copyload = load i48, ptr %i.oc, align 2, !tbaa !127
  %i.od = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0109.0.copyload, ptr noundef null)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax
  %i.oe = and i32 %i.od, 65535
  %i.of = zext nneg i32 %i.oe to i64              ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.oh = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !86
  %i.oj = load ptr, ptr %i.og, align 8, !tbaa !87 ; 4 uses
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = sdiv exact i64 %i.om, 2080
  %i.oo = icmp ugt i64 %i.on, %i.of
  br i1 %i.oo, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.op = getelementptr inbounds nuw [2080 x i8], ptr %i.oj, i64 %i.of ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !21 ; 2 uses
  %i.os = icmp eq i64 %i.or, 0
  br i1 %i.os, label %bb.ba, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oj, i64 260000
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.oj, i64 260016
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.ba, %bb.az
  %i.ou = phi i64 [ %.pre, %bb.ba ], [ %i.or, %bb.az ]
  %i.ov = phi ptr [ %i.ot, %bb.ba ], [ %i.op, %bb.az ]
  %i.ow = icmp eq i64 %i.ou, 3
  br i1 %i.ow, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !16 ; 2 uses
  %i.oz = load i16, ptr %i.oy, align 1
  %i.pa = xor i16 %i.oz, 26977
  %i.pb = getelementptr i8, ptr %i.oy, i64 2
  %i.pc = load i8, ptr %i.pb, align 1
  %i.pd = zext i8 %i.pc to i16
  %i.pe = xor i16 %i.pd, 114
  %i.pf = or i16 %i.pa, %i.pe
  %i.pg = icmp ne i16 %i.pf, 0
  %i.ph = zext i1 %i.pg to i32
  %i.pi = icmp eq i32 %i.ph, 0
  br i1 %i.pi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !21
  %i.pl = icmp eq i64 %i.pk, 3
  br i1 %i.pl, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread894

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !16 ; 2 uses
  %i.po = load i16, ptr %i.pn, align 1
  %i.pp = xor i16 %i.po, 26977
  %i.pq = getelementptr i8, ptr %i.pn, i64 2
  %i.pr = load i8, ptr %i.pq, align 1
  %i.ps = zext i8 %i.pr to i16
  %i.pt = xor i16 %i.ps, 114
  %i.pu = or i16 %i.pp, %i.pt
  %i.pv = icmp ne i16 %i.pu, 0
  %i.pw = zext i1 %i.pv to i32
  %.not772 = icmp eq i32 %i.pw, 0
  br i1 %.not772, label %.critedge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread894

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread894: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 660
  store i8 0, ptr %i.px, align 4, !tbaa !70
  store i8 0, ptr %i.nz, align 4, !tbaa !77
  br label %.critedge371

.critedge:                                        ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.aw, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.py = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0.0.insert.insert.i493, ptr noundef null)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.critedge
  %i.pz = and i32 %i.py, 65535
  %i.qa = zext nneg i32 %i.pz to i64              ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.qc = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !86
  %i.qe = load ptr, ptr %i.qb, align 8, !tbaa !87 ; 4 uses
  %i.qf = ptrtoint ptr %i.qd to i64
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = sdiv exact i64 %i.qh, 2080
  %i.qj = icmp ugt i64 %i.qi, %i.qa
  br i1 %i.qj, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.qk = getelementptr inbounds nuw [2080 x i8], ptr %i.qe, i64 %i.qa ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !21 ; 2 uses
  %i.qn = icmp eq i64 %i.qm, 0
  br i1 %i.qn, label %bb.bd, label %_ZNK14NodeDefManager3getERK7MapNode.exit494

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qe, i64 260000
  %.phi.trans.insert826 = getelementptr inbounds nuw i8, ptr %i.qe, i64 260016
  %.pre827 = load i64, ptr %.phi.trans.insert826, align 8, !tbaa !21
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit494

_ZNK14NodeDefManager3getERK7MapNode.exit494:      ; preds = %bb.bd, %bb.bc
  %i.qp = phi i64 [ %.pre827, %bb.bd ], [ %i.qm, %bb.bc ]
  %i.qq = phi ptr [ %i.qo, %bb.bd ], [ %i.qk, %bb.bc ]
  %i.qr = icmp eq i64 %i.qp, 3
  br i1 %i.qr, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496: ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit494
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !16 ; 2 uses
  %i.qu = load i16, ptr %i.qt, align 1
  %i.qv = xor i16 %i.qu, 26977
  %i.qw = getelementptr i8, ptr %i.qt, i64 2
  %i.qx = load i8, ptr %i.qw, align 1
end_hunk_1
begin_hunk_2_@_ZN4core8vector3dIfE9normalizeEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.i = fpext nsz float %i.g to double
  %i.j = tail call nsz double @llvm.sqrt.f64(double %i.i)
  %i.k = fdiv nsz double 1.000000e+00, %i.j       ; 2 uses
  %i.l = fpext nsz <2 x float> %i.a to <2 x double>
  %i.m = insertelement <2 x double> poison, double %i.k, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul nsz <2 x double> %i.n, %i.l
  %i.p = fptrunc nsz <2 x double> %i.o to <2 x float>
  store <2 x float> %i.p, ptr %0, align 4, !tbaa !35
  %i.q = fpext nsz float %i.f to double
  %i.r = fmul nsz double %i.k, %i.q
  %i.s = fptrunc nsz double %i.r to float
  store float %i.s, ptr %i.e, align 4, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN11LocalPlayer13getSlipFactorEP11EnvironmentRKN4core8vector3dIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !0 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(144) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.l = load i8, ptr %i.k, align 4, !tbaa !77, !range !78, !noundef !79
  %i.m = trunc nuw i8 %i.l to i1
  %.sroa.0.0.in.v.i = select i1 %i.m, i64 622, i64 616
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i = load i48, ptr %.sroa.0.0.in.i, align 2, !tbaa !127
  %i.n = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.j, i48 %.sroa.0.0.i, ptr noundef null)
  %i.o = and i32 %i.n, 65535
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !87   ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 2080
  %i.y = icmp ugt i64 %i.x, %i.p
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw [2080 x i8], ptr %i.t, i64 %i.p ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !21
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.ad, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1412
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !125, !range !78, !noundef !79
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %._crit_edge.i.i, label %.thread

._crit_edge.i.i:                                  ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !20
  store i64 8751168559530994803, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 8, ptr %i.aj, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 0, ptr %i.ak, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.am = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc18 unwind label %bb.e   ; 2 uses

.noexc18:                                         ; preds = %._crit_edge.i.i
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, label %bb.d

bb.d:                                             ; preds = %.noexc18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !195
  br label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit: ; preds = %bb.d, %.noexc18
  %.0.i = phi i32 [ %i.ap, %bb.d ], [ 0, %.noexc18 ] ; 4 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ai
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit
  %i.as = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ai
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.az = icmp sgt i32 %.0.i, 0
  br i1 %i.az, label %bb.f, label %.thread

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ba = load float, ptr %2, align 4, !tbaa !80
  %i.bb = fcmp nsz oeq float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.g, label %_ZNK4core8vector3dIfEeqERKS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !81
  %i.be = fcmp nsz oeq float %i.bd, 0.000000e+00
  br i1 %i.be, label %_ZNK4core8vector3dIfEeqERKS1_.exit, label %_ZNK4core8vector3dIfEeqERKS1_.exit.thread

_ZNK4core8vector3dIfEeqERKS1_.exit:               ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !82
  %.fr = freeze float %i.bg
  %i.bh = fcmp nsz oeq float %.fr, 0.000000e+00
  %i.bi = zext i1 %i.bh to i32
  %spec.select = shl nuw nsw i32 %.0.i, %i.bi
  br label %_ZNK4core8vector3dIfEeqERKS1_.exit.thread

_ZNK4core8vector3dIfEeqERKS1_.exit.thread:        ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit, %bb.f, %bb.g
  %i.bj = phi i32 [ %.0.i, %bb.f ], [ %spec.select, %_ZNK4core8vector3dIfEeqERKS1_.exit ], [ %.0.i, %bb.g ]
  %i.bk = add nuw nsw i32 %i.bj, 1
  %i.bl = uitofp nneg i32 %i.bk to float
  %i.bm = fdiv nsz float 1.000000e+00, %i.bl      ; 2 uses
  %i.bn = fcmp nsz olt float %i.bm, 1.000000e-03
  %i.bo = select i1 %i.bn, float 1.000000e-03, float %i.bm ; 2 uses
  %i.bp = fcmp nsz olt float %i.bo, 1.000000e+00
  %i.bq = select i1 %i.bp, float %i.bo, float 1.000000e+00
  br label %.thread

.thread:                                          ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNK4core8vector3dIfEeqERKS1_.exit.thread
  %.016 = phi nsz float [ %i.bq, %_ZNK4core8vector3dIfEeqERKS1_.exit.thread ], [ 1.000000e+00, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ 1.000000e+00, %_ZNK14NodeDefManager3getERK7MapNode.exit ]
  ret float %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11LocalPlayer10accelerateERKN4core8vector3dIfEEffb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(864) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, float noundef %2, float noundef %3, i1 noundef zeroext %4) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = load float, ptr %i.a, align 8, !tbaa !295 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.d = load float, ptr %i.c, align 4, !tbaa !296 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.sroa.0101.0.copyload = load float, ptr %i.e, align 8, !tbaa !35 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !35 ; 3 uses
  %.sroa.11104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %.sroa.11104.0.copyload = load float, ptr %.sroa.11104.0..sroa_idx, align 8, !tbaa !35 ; 2 uses
  %i.f = fneg nsz float %i.b
  %i.g = fpext nsz float %i.f to double
  %i.h = fmul nsz double %i.g, f0x3F91DF46A2529D39
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.h) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.i = fpext nsz float %.sroa.0101.0.copyload to double
  %i.j = fpext nsz float %.sroa.11104.0.copyload to double ; 2 uses
  %i.k = fneg nsz double %i.j
  %i.l = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.m = insertelement <2 x double> %i.l, double %sin.i, i64 1 ; 2 uses
  %i.n = insertelement <2 x double> poison, double %i.j, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.k, i64 1
  %i.p = fmul nsz <2 x double> %i.m, %i.o
  %i.q = insertelement <2 x double> poison, double %i.i, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.t = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.s, <2 x double> %i.p) ; 2 uses
  %i.u = extractelement <2 x double> %i.t, i64 1
  %i.v = fptrunc nsz double %i.u to float
  %i.w = extractelement <2 x double> %i.t, i64 0
  %i.x = fptrunc nsz double %i.w to float         ; 2 uses
  %i.y = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = fneg nsz float %i.d
  %i.ab = fpext nsz float %i.aa to double
  %i.ac = fmul nsz double %i.ab, f0x3F91DF46A2529D39
  %sincos.i28 = tail call nsz { double, double } @llvm.sincos.f64(double %i.ac) ; 2 uses
  %sin.i29 = extractvalue { double, double } %sincos.i28, 0
  %cos.i30 = extractvalue { double, double } %sincos.i28, 1
  %i.ad = fpext nsz float %.sroa.7.0.copyload to double
  %i.ae = fpext nsz float %i.x to double          ; 2 uses
  %i.af = fneg nsz double %i.ae
  %i.ag = insertelement <2 x double> poison, double %sin.i29, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %cos.i30, i64 1 ; 2 uses
  %i.ai = insertelement <2 x double> poison, double %i.af, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ae, i64 1
  %i.ak = fmul nsz <2 x double> %i.ah, %i.aj
  %i.al = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ao = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.an, <2 x double> %i.ak)
  %i.ap = fptrunc nsz <2 x double> %i.ao to <2 x float>
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aq = phi <2 x float> [ %i.ap, %bb.b ], [ %i.z, %bb.a ]
  %5 = load float, ptr %1, align 4, !tbaa !80
  %6 = fsub nsz float %5, %i.v                    ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %7 = load <2 x float>, ptr %i.ar, align 4, !tbaa !35
  %8 = fsub nsz <2 x float> %7, %i.aq             ; 4 uses
  %i.as = fcmp nsz ogt float %2, 0.000000e+00
  br i1 %i.as, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.at = fmul nsz <2 x float> %8, <float 0.000000e+00, float 1.000000e+00> ; 5 uses
  %foldExtExtBinop = fmul ninf nsz <2 x float> %i.at, %i.at
  %i.au = extractelement <2 x float> %foldExtExtBinop, i64 0
  %9 = tail call nsz float @llvm.fmuladd.f32(float %6, float %6, float %i.au)
  %i.av = extractelement <2 x float> %8, i64 1    ; 4 uses
  %i.aw = tail call nsz float @llvm.fmuladd.f32(float %i.av, float %i.av, float %9) ; 3 uses
  %i.ax = tail call nsz noundef float @llvm.sqrt.f32(float %i.aw)
  %i.ay = fcmp nsz ogt float %i.ax, %2
  br i1 %i.ay, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %6, i64 0
  %10 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.at, <2 x i32> <i32 0, i32 2>
  %i.az = fcmp nsz oeq float %i.aw, 0.000000e+00
  br i1 %i.az, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = fpext nsz float %i.aw to double
  %i.bb = tail call nsz double @llvm.sqrt.f64(double %i.ba)
  %i.bc = fdiv nsz double 1.000000e+00, %i.bb     ; 2 uses
  %11 = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %12 = insertelement <2 x float> %11, float %6, i64 0
  %i.bd = fpext nsz <2 x float> %12 to <2 x double>
  %i.be = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fmul nsz <2 x double> %i.bf, %i.bd
  %i.bh = fptrunc nsz <2 x double> %i.bg to <2 x float>
  %i.bi = fpext nsz float %i.av to double
  %i.bj = fmul nsz double %i.bc, %i.bi
  %i.bk = fptrunc nsz double %i.bj to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.e, %bb.f
  %.sroa.055.0 = phi nsz <2 x float> [ %10, %bb.e ], [ %i.bh, %bb.f ] ; 2 uses
  %.sroa.13.0 = phi nsz float [ %i.av, %bb.e ], [ %i.bk, %bb.f ]
  %.sroa.055.0.vec.extract60 = extractelement <2 x float> %.sroa.055.0, i64 0
  %i.bl = fmul nsz float %2, %.sroa.055.0.vec.extract60
  %13 = insertelement <2 x float> poison, float %2, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = shufflevector <2 x float> %.sroa.055.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %16 = insertelement <2 x float> %15, float %.sroa.13.0, i64 1
  %17 = fmul nsz <2 x float> %14, %16
  br label %bb.g

bb.g:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit, %bb.d, %bb.c
  %.sroa.073.1 = phi nsz float [ 0.000000e+00, %bb.c ], [ %i.bl, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %6, %bb.d ]
  %18 = phi <2 x float> [ zeroinitializer, %bb.c ], [ %17, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.at, %bb.d ] ; 4 uses
  %19 = fcmp nsz ogt float %3, 0.000000e+00
  %20 = extractelement <2 x float> %18, i64 0     ; 3 uses
  br i1 %19, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bm = extractelement <2 x float> %8, i64 0    ; 2 uses
  %i.bn = fcmp nsz ogt float %i.bm, %3
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = fadd nsz float %3, %20
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.bp = fneg nsz float %3
  %i.bq = fcmp nsz olt float %i.bm, %i.bp
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = fsub nsz float %20, %3
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %foldExtExtBinop111 = fadd nsz <2 x float> %8, %18
  %21 = extractelement <2 x float> %foldExtExtBinop111, i64 0
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k, %bb.g
  %.sroa.11.2 = phi nsz float [ %i.bo, %bb.i ], [ %i.br, %bb.k ], [ %21, %bb.l ], [ %20, %bb.g ] ; 2 uses
  %i.bs = insertelement <2 x float> %18, float %.sroa.11.2, i64 0
  br i1 %4, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = fpext nsz float %i.d to double
  %i.bu = fmul nsz double %i.bt, f0x3F91DF46A2529D39
  %sincos.i39 = tail call nsz { double, double } @llvm.sincos.f64(double %i.bu) ; 2 uses
  %sin.i40 = extractvalue { double, double } %sincos.i39, 0
  %cos.i41 = extractvalue { double, double } %sincos.i39, 1
  %i.bv = fpext nsz float %.sroa.11.2 to double
  %22 = extractelement <2 x float> %18, i64 1
  %i.bw = fpext nsz float %22 to double           ; 2 uses
  %i.bx = fneg nsz double %i.bw
  %i.by = insertelement <2 x double> poison, double %sin.i40, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %cos.i41, i64 1 ; 2 uses
  %i.ca = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bw, i64 1
  %i.cc = fmul nsz <2 x double> %i.bz, %i.cb
  %i.cd = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.cf, <2 x double> %i.cc)
  %i.ch = fptrunc nsz <2 x double> %i.cg to <2 x float>
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ci = phi <2 x float> [ %i.ch, %bb.n ], [ %i.bs, %bb.m ] ; 2 uses
  %i.cj = fpext nsz float %i.b to double
  %i.ck = fmul nsz double %i.cj, f0x3F91DF46A2529D39
  %sincos.i42 = tail call nsz { double, double } @llvm.sincos.f64(double %i.ck) ; 2 uses
  %sin.i43 = extractvalue { double, double } %sincos.i42, 0
  %cos.i44 = extractvalue { double, double } %sincos.i42, 1
  %i.cl = fpext nsz float %.sroa.073.1 to double
  %i.cm = extractelement <2 x float> %i.ci, i64 1
  %i.cn = fpext nsz float %i.cm to double         ; 2 uses
  %i.co = fneg nsz double %i.cn
  %i.cp = insertelement <2 x double> poison, double %cos.i44, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %sin.i43, i64 1 ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.co, i64 1
  %i.ct = fmul nsz <2 x double> %i.cq, %i.cs
  %i.cu = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.cw, <2 x double> %i.ct)
  %i.cy = fptrunc nsz <2 x double> %i.cx to <2 x float> ; 2 uses
  %i.cz = extractelement <2 x float> %i.cy, i64 1
  %i.da = fadd nsz float %.sroa.0101.0.copyload, %i.cz
  store float %i.da, ptr %i.e, align 8, !tbaa !80
  %i.db = extractelement <2 x float> %i.ci, i64 0
  %i.dc = fadd nsz float %.sroa.7.0.copyload, %i.db
  store float %i.dc, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !81
  %i.dd = extractelement <2 x float> %i.cy, i64 0
  %i.de = fadd nsz float %.sroa.11104.0.copyload, %i.dd
  store float %i.de, ptr %.sroa.11104.0..sroa_idx, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i48 @_ZN11LocalPlayer18getStandingNodePosEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.b = load i8, ptr %i.a, align 4, !tbaa !77, !range !78, !noundef !79
  %i.c = trunc nuw i8 %i.b to i1
  %.sroa.0.0.in.v = select i1 %i.c, i64 622, i64 616
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.in.v
  %.sroa.0.0 = load i48, ptr %.sroa.0.0.in, align 2, !tbaa !127
  ret i48 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i48 @_ZN11LocalPlayer18getFootstepNodePosEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 604
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.a, align 4, !tbaa !35 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 612
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !35 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.c = load float, ptr %i.b, align 4, !tbaa !133
  %.sroa.060.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1
  %i.d = fadd nsz float %.sroa.060.4.vec.extract, %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.f = load i8, ptr %i.e, align 4, !tbaa !143, !range !78, !noundef !79
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.060.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0 ; 2 uses
  %i.h = fcmp nsz ogt float %.sroa.060.0.vec.extract, 0.000000e+00
  %i.i = select nsz i1 %i.h, float 5.000000e+00, float -5.000000e+00
  %i.j = insertelement <2 x float> poison, float %i.d, i64 0
  %i.k = insertelement <2 x float> %i.j, float %.sroa.22.0.copyload.i, i64 1 ; 2 uses
  %i.l = fcmp nsz ogt <2 x float> %i.k, zeroinitializer
  %i.m = fadd nsz float %.sroa.060.0.vec.extract, %i.i
  %i.n = fdiv nsz float %i.m, 1.000000e+01
  %i.o = fptosi float %i.n to i16
  %i.p = select <2 x i1> %i.l, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.q = fadd nsz <2 x float> %i.k, %i.p
  %i.r = fdiv nsz <2 x float> %i.q, splat (float 1.000000e+01)
  %i.s = fptosi <2 x float> %i.r to <2 x i16>
  %i.t = zext <2 x i16> %i.s to <2 x i48>
  %i.u = shl nuw <2 x i48> %i.t, <i48 16, i48 32>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.u)
  %.sroa.0.0.insert.ext.i = zext i16 %i.o to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 418
  %i.w = load i8, ptr %i.v, align 2, !tbaa !138, !range !78, !noundef !79
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = insertelement <2 x float> %.sroa.01.0.copyload.i, float %.sroa.22.0.copyload.i, i64 1 ; 2 uses
  %i.z = fcmp nsz ogt <2 x float> %i.y, zeroinitializer
  %i.aa = select <2 x i1> %i.z, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ab = fadd nsz <2 x float> %i.y, %i.aa
  %i.ac = fdiv nsz <2 x float> %i.ab, splat (float 1.000000e+01) ; 2 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 0
  %i.ae = fptosi float %i.ad to i16
  %i.af = extractelement <2 x float> %i.ac, i64 1
  %i.ag = fptosi float %i.af to i16
  %.sroa.3.0.insert.ext.i34 = zext i16 %i.ag to i48
  %.sroa.3.0.insert.shift.i35 = shl nuw i48 %.sroa.3.0.insert.ext.i34, 32 ; 2 uses
  %.sroa.0.0.insert.ext.i39 = zext i16 %i.ae to i48 ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = fadd nsz float %i.d, -5.000000e-01      ; 2 uses
  %i.ai = fcmp nsz ogt float %i.ah, 0.000000e+00
  %i.aj = select nsz i1 %i.ai, float 5.000000e+00, float -5.000000e+00
  %i.ak = fadd nsz float %i.ah, %i.aj
  %i.al = fdiv nsz float %i.ak, 1.000000e+01
  %i.am = fptosi float %i.al to i16
  %.sroa.2.0.insert.ext.i36 = zext i16 %i.am to i48
  %.sroa.2.0.insert.shift.i37 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i36, 16
  %.sroa.2.0.insert.insert.i38 = or disjoint i48 %.sroa.2.0.insert.shift.i37, %.sroa.3.0.insert.shift.i35
  %.sroa.0.0.insert.insert.i40 = or disjoint i48 %.sroa.2.0.insert.insert.i38, %.sroa.0.0.insert.ext.i39
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.an = fadd nsz float %i.d, -5.000000e+00      ; 2 uses
  %i.ao = fcmp nsz ogt float %i.an, 0.000000e+00
  %i.ap = select nsz i1 %i.ao, float 5.000000e+00, float -5.000000e+00
  %i.aq = fadd nsz float %i.an, %i.ap
  %i.ar = fdiv nsz float %i.aq, 1.000000e+01
  %i.as = fptosi float %i.ar to i16
  %.sroa.2.0.insert.ext.i49 = zext i16 %i.as to i48
  %.sroa.2.0.insert.shift.i50 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i49, 16
  %.sroa.2.0.insert.insert.i51 = or disjoint i48 %.sroa.2.0.insert.shift.i50, %.sroa.3.0.insert.shift.i35
  %.sroa.0.0.insert.insert.i53 = or disjoint i48 %.sroa.2.0.insert.insert.i51, %.sroa.0.0.insert.ext.i39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.025.0 = phi i48 [ %.sroa.0.0.insert.insert.i, %bb.b ], [ %.sroa.0.0.insert.insert.i40, %bb.d ], [ %.sroa.0.0.insert.insert.i53, %bb.e ]
  ret i48 %.sroa.025.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i48 @_ZNK11LocalPlayer16getLightPositionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.b = load float, ptr %i.a, align 4, !tbaa !80 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.d = fcmp nsz ogt float %i.b, 0.000000e+00
  %i.e = select nsz i1 %i.d, float 5.000000e+00, float -5.000000e+00
  %i.f = fadd nsz float %i.b, %i.e
  %i.g = fdiv nsz float %i.f, 1.000000e+01
  %i.h = fptosi float %i.g to i16
  %i.i = load <2 x float>, ptr %i.c, align 8, !tbaa !35
  %i.j = fadd <2 x float> %i.i, <float 1.500000e+01, float -0.000000e+00> ; 2 uses
  %i.k = fcmp nsz ogt <2 x float> %i.j, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.m = fadd nsz <2 x float> %i.j, %i.l
  %i.n = fdiv nsz <2 x float> %i.m, splat (float 1.000000e+01)
  %i.o = fptosi <2 x float> %i.n to <2 x i16>
  %i.p = zext <2 x i16> %i.o to <2 x i48>
  %i.q = shl nuw <2 x i48> %i.p, <i48 16, i48 32>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.q)
  %.sroa.0.0.insert.ext.i = zext i16 %i.h to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  ret i48 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZNK11LocalPlayer12getEyeOffsetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.b = load float, ptr %i.a, align 8, !tbaa !297
  %i.c = fmul nsz float %i.b, 1.000000e+01
  %.sroa.0.4.vec.insert = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.c, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float 0.000000e+00, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11LocalPlayer6isDeadEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 778, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK11LocalPlayer6isDeadEv) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK10GenericCAO10isImmortalEv(ptr noundef nonnull align 8 dereferenceable(1076) %i.b)
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.e = load i16, ptr %i.d, align 8, !tbaa !298
  %i.f = icmp eq i16 %i.e, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i1 [ false, %bb.c ], [ %i.f, %bb.d ]
  ret i1 %i.g
}

; Function Attrs: noreturn
declare void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #17

declare noundef zeroext i1 @_ZNK10GenericCAO10isImmortalEv(ptr noundef nonnull align 8 dereferenceable(1076)) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal void @__cxx_global_var_init.18() #18 section ".text.startup" comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev, ptr nonnull @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr nonnull @__dso_handle) #26 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !301    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit

_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #26, !inline_history !299
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !305
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !208 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !208 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split.us, !llvm.loop !302

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !208 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split, !llvm.loop !302

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #27
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !306  ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !307
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !209 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !208 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !211 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !21
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !208 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !211 ; 2 uses
end_hunk_2
