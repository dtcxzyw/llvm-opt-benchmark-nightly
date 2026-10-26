Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/localplayer?download=true
inline.NumInlined: 802
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11LocalPlayer8old_moveEfP11EnvironmentPSt6vectorI13CollisionInfoSaIS3_EE:bb.a
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
  br i1 %or.cond3, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.il = and i32 %i.if, 65535
  %i.im = zext nneg i32 %i.il to i64              ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !86
  %i.iq = load ptr, ptr %i.in, align 8, !tbaa !87 ; 5 uses
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = sdiv exact i64 %i.it, 2080              ; 2 uses
  %i.iv = icmp ugt i64 %i.iu, %i.im
  br i1 %i.iv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.iw = getelementptr inbounds nuw [2080 x i8], ptr %i.iq, i64 %i.im ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !21
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %bb.aa, label %_ZNK14NodeDefManager3getEt.exit454

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit454

_ZNK14NodeDefManager3getEt.exit454:               ; preds = %bb.z, %bb.aa
  %i.jb = phi ptr [ %i.ja, %bb.aa ], [ %i.iw, %bb.z ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 1415
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !144, !range !78, !noundef !79
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit454
  %i.jf = and i32 %i.ig, 65535
  %i.jg = zext nneg i32 %i.jf to i64              ; 2 uses
  %i.jh = icmp ugt i64 %i.iu, %i.jg
  br i1 %i.jh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ji = getelementptr inbounds nuw [2080 x i8], ptr %i.iq, i64 %i.jg ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !21
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %bb.ad, label %_ZNK14NodeDefManager3getEt.exit455

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iq, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit455

_ZNK14NodeDefManager3getEt.exit455:               ; preds = %bb.ac, %bb.ad
  %i.jn = phi ptr [ %i.jm, %bb.ad ], [ %i.ji, %bb.ac ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1415
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !144, !range !78, !noundef !79
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit455, %_ZNK14NodeDefManager3getEt.exit454
  br label %bb.af

bb.af:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit455, %bb.ae, %bb.x
  %.sink896 = phi i8 [ 0, %bb.x ], [ 0, %_ZNK14NodeDefManager3getEt.exit455 ], [ 1, %bb.ae ]
  %13 = phi i1 [ false, %bb.x ], [ false, %_ZNK14NodeDefManager3getEt.exit455 ], [ true, %bb.ae ]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 422
  store i8 %.sink896, ptr %14, align 2, !tbaa !145
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 243 ; 3 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !166, !range !78, !noundef !79
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.ag, label %bb.ap

bb.ag:                                            ; preds = %bb.af
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.jv = load i8, ptr %i.ju, align 4, !tbaa !77, !range !78, !noundef !79
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not.i.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jx = load i8, ptr %i.y, align 8, !tbaa !24, !range !78, !noundef !79
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.jz = load i8, ptr %i.cu, align 1, !tbaa !139, !range !78, !noundef !79
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.kc = load i8, ptr %i.kb, align 4, !tbaa !167, !range !78, !noundef !79
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit, label %bb.ap

_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit:           ; preds = %bb.ak
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 622
  %.sroa.0154.0.copyload = load i48, ptr %i.ke, align 2, !tbaa !127 ; 3 uses
  %.sroa.013.0.extract.trunc.i = trunc i48 %.sroa.0154.0.copyload to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0154.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.kf = sitofp nsz i16 %.sroa.013.0.extract.trunc.i to float
  %i.kg = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.kh = fmul nnan nsz float %i.kf, 1.000000e+01 ; 2 uses
  %i.ki = fmul nnan nsz float %i.kg, 1.000000e+01 ; 2 uses
  %i.kj = fadd nsz float %i.kh, -9.000000e+00     ; 2 uses
  %i.kk = fadd nsz float %i.kh, 9.000000e+00      ; 2 uses
  %i.kl = load float, ptr %4, align 16, !tbaa !35 ; 3 uses
  %i.km = fcmp nsz olt float %i.kl, %i.kj
  %i.kn = fcmp nsz ogt float %i.kl, %i.kk
  %..i = select nsz i1 %i.kn, float %i.kk, float %i.kl
  %.0.i = select nsz i1 %i.km, float %i.kj, float %..i
  store float %.0.i, ptr %4, align 16, !tbaa !80
  %i.ko = fadd nsz float %i.ki, -9.000000e+00     ; 2 uses
  %i.kp = fadd nsz float %i.ki, 9.000000e+00      ; 2 uses
  %i.kq = load float, ptr %.sroa.2252.0..sroa_idx, align 8, !tbaa !35 ; 3 uses
  %i.kr = fcmp nsz olt float %i.kq, %i.ko
  %i.ks = fcmp nsz ogt float %i.kq, %i.kp
  %..i456 = select nsz i1 %i.ks, float %i.kp, float %i.kq
  %.0.i457 = select nsz i1 %i.kr, float %i.ko, float %..i456
  store float %.0.i457, ptr %.sroa.2252.0..sroa_idx, align 8, !tbaa !82
  br i1 %13, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0154.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %i.kt = sitofp nsz i16 %.sroa.2.0.extract.trunc.i to float
  %i.ku = fmul nnan nsz float %i.kt, 1.000000e+01
  %i.kv = fadd nsz float %i.ku, -5.000000e+00
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.kx = load float, ptr %i.kw, align 8, !tbaa !69
  %i.ky = fadd nsz float %i.kv, %i.kx             ; 2 uses
  %i.kz = load float, ptr %i.fw, align 4, !tbaa !81
  %i.la = fcmp nsz olt float %i.kz, %i.ky
  br i1 %i.la, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store float %i.ky, ptr %i.fw, align 4, !tbaa !81
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.lb = load float, ptr %i.ci, align 4, !tbaa !187
  %i.lc = fcmp nsz olt float %i.lb, 0.000000e+00
  br i1 %i.lc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store float 0.000000e+00, ptr %i.ci, align 4, !tbaa !187
  br label %bb.ap

bb.ap:                                            ; preds = %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit, %bb.ao, %bb.an, %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.af
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 418 ; 6 uses
  %i.le = load i8, ptr %i.ld, align 2, !tbaa !138, !range !78, !noundef !79
  %i.lf = trunc nuw i8 %i.le to i1
  %i.lg = select nsz i1 %i.lf, float 6.000000e+00, float 2.000000e+00
  %.sroa.0144.0.copyload = load <2 x float>, ptr %4, align 16, !tbaa !35
  %.sroa.5145.0.copyload = load float, ptr %.sroa.2252.0..sroa_idx, align 8, !tbaa !35
  %.sroa.0142.0.copyload = load <2 x float>, ptr %i.cd, align 8, !tbaa !35
  %.sroa.5143.0.copyload = load float, ptr %i.ck, align 8, !tbaa !35
  %i.lh = load ptr, ptr %i.o, align 8, !tbaa !75  ; 3 uses
  %.not339 = icmp eq ptr %i.lh, null
  br i1 %.not339, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 422
  %i.lj = load i8, ptr %i.li, align 2, !tbaa !165
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0318 = phi i8 [ %i.lj, %bb.aq ], [ 0, %bb.ap ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.lk = load ptr, ptr %i.g, align 8, !tbaa !76  ; 2 uses
  %i.ll = icmp eq ptr %i.lk, null
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %spec.select = select i1 %i.ll, ptr null, ptr %i.lm
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 720
  call void @_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode(ptr dead_on_unwind nonnull writable sret(%struct.collisionMoveResult) align 8 %7, ptr noundef nonnull %2, ptr noundef %spec.select, ptr noundef nonnull align 4 dereferenceable(24) %i.ln, float noundef %i.lg, float noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %i.cd, <2 x float> zeroinitializer, float 0.000000e+00, ptr noundef %i.lh, i1 noundef zeroext true, i8 noundef zeroext %.0318)
  %i.lo = load i8, ptr %i.ld, align 2, !tbaa !138, !range !78, !noundef !79 ; 2 uses
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lq = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !82 ; 2 uses
  %i.lr = load <2 x float>, ptr %i.n, align 4, !tbaa !35
  %i.ls = fadd <2 x float> %i.lr, <float -0.000000e+00, float -1.000000e+00> ; 2 uses
  %i.lt = fcmp nsz ogt <2 x float> %i.ls, zeroinitializer
  %i.lu = select <2 x i1> %i.lt, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.lv = fcmp nsz ogt float %i.lq, 0.000000e+00
  %i.lw = select nsz i1 %i.lv, float 5.000000e+00, float -5.000000e+00
  %i.lx = fadd nsz <2 x float> %i.ls, %i.lu
  %i.ly = fadd nsz float %i.lq, %i.lw
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %.sroa.0125.0.copyload = load <2 x float>, ptr %i.n, align 4, !tbaa !35 ; 2 uses
  %.sroa.2126.0.copyload = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !35 ; 2 uses
  %i.lz = fcmp nsz ogt <2 x float> %.sroa.0125.0.copyload, zeroinitializer
  %i.ma = select <2 x i1> %i.lz, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.mb = fcmp nsz ogt float %.sroa.2126.0.copyload, 0.000000e+00
  %i.mc = select nsz i1 %i.mb, float 5.000000e+00, float -5.000000e+00
  %i.md = fadd nsz <2 x float> %.sroa.0125.0.copyload, %i.ma
  %i.me = fadd nsz float %.sroa.2126.0.copyload, %i.mc
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sink900 = phi float [ %i.me, %bb.at ], [ %i.ly, %bb.as ]
  %i.mf = phi <2 x float> [ %i.md, %bb.at ], [ %i.lx, %bb.as ] ; 2 uses
  %i.mg = insertelement <2 x float> %i.mf, float %.sink900, i64 0
  %i.mh = fdiv nsz <2 x float> %i.mg, splat (float 1.000000e+01)
  %i.mi = fptosi <2 x float> %i.mh to <2 x i16>
  %i.mj = zext <2 x i16> %i.mi to <2 x i48>
  %i.mk = shl nuw <2 x i48> %i.mj, <i48 32, i48 16>
  %.sroa.2.0.insert.insert.i478 = call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.mk)
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.mm = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !186, !range !78, !noundef !79
  store i8 %i.mn, ptr %i.ld, align 2, !tbaa !138
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.mp = load float, ptr %i.mo, align 8, !tbaa !69 ; 2 uses
  %i.mq = fcmp nsz ogt float %i.mp, 0.000000e+00
  %i.mr = fadd nsz float %i.mp, -5.000000e-01
  %.0319 = select nsz i1 %i.mq, float %i.mr, float 5.000000e-01 ; 2 uses
  %i.ms = load float, ptr %4, align 16, !tbaa !80
  %i.mt = load float, ptr %i.fw, align 4, !tbaa !81
  %i.mu = fsub nsz float %i.mt, %.0319            ; 2 uses
  %i.mv = load float, ptr %.sroa.2252.0..sroa_idx, align 8, !tbaa !82
  %i.mw = fcmp nsz ogt float %i.mu, 0.000000e+00
  %i.mx = select nsz i1 %i.mw, float 5.000000e+00, float -5.000000e+00
  %i.my = insertelement <2 x float> poison, float %i.ms, i64 0
  %i.mz = insertelement <2 x float> %i.my, float %i.mv, i64 1 ; 2 uses
  %i.na = fcmp nsz ogt <2 x float> %i.mz, zeroinitializer
  %i.nb = select <2 x i1> %i.na, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.nc = shufflevector <2 x float> %i.mz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nd = shufflevector <4 x float> %i.nc, <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 poison, i32 0, i32 1>
  %i.ne = insertelement <4 x float> %i.nd, float %i.mu, i64 1
  %i.nf = shufflevector <2 x float> %i.mf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ng = insertelement <4 x float> %i.nf, float %i.mx, i64 1
  %i.nh = shufflevector <2 x float> %i.nb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ni = shufflevector <4 x float> %i.ng, <4 x float> %i.nh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nj = fadd <4 x float> %i.ne, %i.ni
  %i.nk = fdiv nsz <4 x float> %i.nj, splat (float 1.000000e+01)
  %i.nl = fptosi <4 x float> %i.nk to <4 x i16>   ; 4 uses
  %i.nm = extractelement <4 x i16> %i.nl, i64 0
  %i.nn = zext i16 %i.nm to i48
  %.sroa.0.0.insert.insert.i480 = or disjoint i48 %.sroa.2.0.insert.insert.i478, %i.nn
  store i48 %.sroa.0.0.insert.insert.i480, ptr %i.ml, align 8, !tbaa !127
  %i.no = extractelement <4 x i16> %i.nl, i64 3
  %i.np = zext i16 %i.no to i48
  %.sroa.3.0.insert.shift.i488 = shl nuw i48 %i.np, 32
  %i.nq = extractelement <4 x i16> %i.nl, i64 1
  %i.nr = zext i16 %i.nq to i48
  %.sroa.2.0.insert.shift.i490 = shl nuw nsw i48 %i.nr, 16
  %.sroa.2.0.insert.insert.i491 = or disjoint i48 %.sroa.3.0.insert.shift.i488, %.sroa.2.0.insert.shift.i490
  %i.ns = extractelement <4 x i16> %i.nl, i64 2
  %i.nt = zext i16 %i.ns to i48
  %.sroa.0.0.insert.insert.i493 = or disjoint i48 %.sroa.2.0.insert.insert.i491, %i.nt
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 6 uses
  %i.nv = load i8, ptr %i.nu, align 4, !tbaa !77, !range !78, !noundef !79
  %i.nw = trunc nuw i8 %i.nv to i1
  br i1 %i.nw, label %bb.av, label %.critedge

bb.av:                                            ; preds = %bb.au
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 662
  %.sroa.0109.0.copyload = load i48, ptr %i.nx, align 2, !tbaa !127
  %i.ny = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0109.0.copyload, ptr noundef null)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  %i.nz = and i32 %i.ny, 65535
  %i.oa = zext nneg i32 %i.nz to i64              ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.oc = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !86
  %i.oe = load ptr, ptr %i.ob, align 8, !tbaa !87 ; 4 uses
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = ptrtoint ptr %i.oe to i64
  %i.oh = sub i64 %i.of, %i.og
  %i.oi = sdiv exact i64 %i.oh, 2080
  %i.oj = icmp ugt i64 %i.oi, %i.oa
  br i1 %i.oj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ok = getelementptr inbounds nuw [2080 x i8], ptr %i.oe, i64 %i.oa ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !21 ; 2 uses
  %i.on = icmp eq i64 %i.om, 0
  br i1 %i.on, label %bb.ay, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oe, i64 260000
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.oe, i64 260016
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.ay, %bb.ax
  %i.op = phi i64 [ %.pre, %bb.ay ], [ %i.om, %bb.ax ]
  %i.oq = phi ptr [ %i.oo, %bb.ay ], [ %i.ok, %bb.ax ]
  %i.or = icmp eq i64 %i.op, 3
  br i1 %i.or, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !16 ; 2 uses
  %i.ou = load i16, ptr %i.ot, align 1
  %i.ov = xor i16 %i.ou, 26977
  %i.ow = getelementptr i8, ptr %i.ot, i64 2
  %i.ox = load i8, ptr %i.ow, align 1
  %i.oy = zext i8 %i.ox to i16
  %i.oz = xor i16 %i.oy, 114
  %i.pa = or i16 %i.ov, %i.oz
  %i.pb = icmp ne i16 %i.pa, 0
  %i.pc = zext i1 %i.pb to i32
  %i.pd = icmp eq i32 %i.pc, 0
  br i1 %i.pd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !21
  %i.pg = icmp eq i64 %i.pf, 3
  br i1 %i.pg, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread894

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 672
end_hunk_0
