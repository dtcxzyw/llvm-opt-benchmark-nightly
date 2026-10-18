Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/localplayer?download=true
inline.NumInlined: 802
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11LocalPlayer8old_moveEfP11EnvironmentPSt6vectorI13CollisionInfoSaIS3_EE:bb.a
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
  %.sink905 = phi float [ %i.mj, %bb.av ], [ %i.md, %bb.au ]
  %i.mk = phi <2 x float> [ %i.mi, %bb.av ], [ %i.mc, %bb.au ]
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.mm = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !186, !range !78, !noundef !79
  store i8 %i.mn, ptr %i.li, align 2, !tbaa !138
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
  %13 = fadd nsz float %i.mu, %i.mx
  %14 = shufflevector <2 x float> %i.mk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = insertelement <4 x float> %14, float %.sink905, i64 2
  %16 = insertelement <4 x float> %15, float %13, i64 3
  %17 = fdiv nsz <4 x float> %16, splat (float 1.000000e+01) ; 2 uses
  %18 = extractelement <4 x float> %17, i64 3
  %19 = fptosi float %18 to i16
  %i.my = insertelement <2 x float> poison, float %i.ms, i64 0
  %i.mz = insertelement <2 x float> %i.my, float %i.mv, i64 1 ; 2 uses
  %i.na = fcmp nsz ogt <2 x float> %i.mz, zeroinitializer
  %i.nb = select <2 x i1> %i.na, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %20 = fadd nsz <2 x float> %i.mz, %i.nb
  %21 = fdiv nsz <2 x float> %20, splat (float 1.000000e+01) ; 2 uses
  %22 = extractelement <2 x float> %21, i64 0
  %23 = fptosi float %22 to i16
  %24 = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %25 = shufflevector <4 x float> %17, <4 x float> %24, <4 x i32> <i32 2, i32 1, i32 0, i32 5>
  %26 = fptosi <4 x float> %25 to <4 x i16>       ; 4 uses
  %27 = extractelement <4 x i16> %26, i64 0
  %28 = zext i16 %27 to i48
  %.sroa.3.0.insert.shift.i475 = shl nuw i48 %28, 32
  %i.nc = extractelement <4 x i16> %26, i64 1
  %i.nd = zext i16 %i.nc to i48
  %.sroa.2.0.insert.shift.i477 = shl nuw nsw i48 %i.nd, 16
  %.sroa.2.0.insert.insert.i478 = or disjoint i48 %.sroa.3.0.insert.shift.i475, %.sroa.2.0.insert.shift.i477
  %i.ne = extractelement <4 x i16> %26, i64 2
  %i.nf = zext i16 %i.ne to i48
  %.sroa.0.0.insert.insert.i480 = or disjoint i48 %.sroa.2.0.insert.insert.i478, %i.nf
  store i48 %.sroa.0.0.insert.insert.i480, ptr %i.ml, align 8, !tbaa !127
  %i.ng = extractelement <4 x i16> %26, i64 3
  %i.nh = zext i16 %i.ng to i48
  %.sroa.3.0.insert.shift.i488.a = shl nuw i48 %i.nh, 32
  %.sroa.2.0.insert.ext.i489 = zext i16 %19 to i48
  %.sroa.2.0.insert.shift.i490 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i489, 16
  %.sroa.2.0.insert.insert.i491 = or disjoint i48 %.sroa.3.0.insert.shift.i488.a, %.sroa.2.0.insert.shift.i490
  %.sroa.0.0.insert.ext.i492 = zext i16 %23 to i48
  %.sroa.0.0.insert.insert.i493 = or disjoint i48 %.sroa.2.0.insert.insert.i491, %.sroa.0.0.insert.ext.i492
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 6 uses
  %i.nj = load i8, ptr %i.ni, align 4, !tbaa !77, !range !78, !noundef !79
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %bb.aw
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 662
  %.sroa.0109.0.copyload = load i48, ptr %i.nl, align 2, !tbaa !127
  %i.nm = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0109.0.copyload, ptr noundef null)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.nn = and i32 %i.nm, 65535
  %i.no = zext nneg i32 %i.nn to i64              ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.nq = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !86
  %i.ns = load ptr, ptr %i.np, align 8, !tbaa !87 ; 4 uses
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = sdiv exact i64 %i.nv, 2080
  %i.nx = icmp ugt i64 %i.nw, %i.no
  br i1 %i.nx, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ny = getelementptr inbounds nuw [2080 x i8], ptr %i.ns, i64 %i.no ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !21 ; 2 uses
  %i.ob = icmp eq i64 %i.oa, 0
  br i1 %i.ob, label %bb.ba, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ns, i64 260000
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ns, i64 260016
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.ba, %bb.az
  %i.od = phi i64 [ %.pre, %bb.ba ], [ %i.oa, %bb.az ]
  %i.oe = phi ptr [ %i.oc, %bb.ba ], [ %i.ny, %bb.az ]
  %i.of = icmp eq i64 %i.od, 3
  br i1 %i.of, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !16 ; 2 uses
  %i.oi = load i16, ptr %i.oh, align 1
  %i.oj = xor i16 %i.oi, 26977
  %i.ok = getelementptr i8, ptr %i.oh, i64 2
  %i.ol = load i8, ptr %i.ok, align 1
  %i.om = zext i8 %i.ol to i16
  %i.on = xor i16 %i.om, 114
  %i.oo = or i16 %i.oj, %i.on
  %i.op = icmp ne i16 %i.oo, 0
  %i.oq = zext i1 %i.op to i32
  %i.or = icmp eq i32 %i.oq, 0
  br i1 %i.or, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !21
  %i.ou = icmp eq i64 %i.ot, 3
  br i1 %i.ou, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread899

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !16 ; 2 uses
  %i.ox = load i16, ptr %i.ow, align 1
  %i.oy = xor i16 %i.ox, 26977
  %i.oz = getelementptr i8, ptr %i.ow, i64 2
  %i.pa = load i8, ptr %i.oz, align 1
  %i.pb = zext i8 %i.pa to i16
  %i.pc = xor i16 %i.pb, 114
  %i.pd = or i16 %i.oy, %i.pc
  %i.pe = icmp ne i16 %i.pd, 0
  %i.pf = zext i1 %i.pe to i32
  %.not772 = icmp eq i32 %i.pf, 0
  br i1 %.not772, label %.critedge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread899

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread899: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 660
  store i8 0, ptr %i.pg, align 4, !tbaa !70
  store i8 0, ptr %i.ni, align 4, !tbaa !77
  br label %.critedge371

bb.bb:                                            ; preds = %bb.ax
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

.critedge:                                        ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.aw, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.pi = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i48 %.sroa.0.0.insert.insert.i493, ptr noundef null)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %.critedge
  %i.pj = and i32 %i.pi, 65535
  %i.pk = zext nneg i32 %i.pj to i64              ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.pm = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !86
  %i.po = load ptr, ptr %i.pl, align 8, !tbaa !87 ; 4 uses
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = sub i64 %i.pp, %i.pq
  %i.ps = sdiv exact i64 %i.pr, 2080
  %i.pt = icmp ugt i64 %i.ps, %i.pk
  br i1 %i.pt, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.pu = getelementptr inbounds nuw [2080 x i8], ptr %i.po, i64 %i.pk ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !21 ; 2 uses
  %i.px = icmp eq i64 %i.pw, 0
  br i1 %i.px, label %bb.be, label %_ZNK14NodeDefManager3getERK7MapNode.exit494

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.py = getelementptr inbounds nuw i8, ptr %i.po, i64 260000
  %.phi.trans.insert831 = getelementptr inbounds nuw i8, ptr %i.po, i64 260016
  %.pre832 = load i64, ptr %.phi.trans.insert831, align 8, !tbaa !21
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit494

_ZNK14NodeDefManager3getERK7MapNode.exit494:      ; preds = %bb.be, %bb.bd
  %i.pz = phi i64 [ %.pre832, %bb.be ], [ %i.pw, %bb.bd ]
  %i.qa = phi ptr [ %i.py, %bb.be ], [ %i.pu, %bb.bd ]
  %i.qb = icmp eq i64 %i.pz, 3
  br i1 %i.qb, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496: ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit494
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !16 ; 2 uses
  %i.qe = load i16, ptr %i.qd, align 1
  %i.qf = xor i16 %i.qe, 26977
  %i.qg = getelementptr i8, ptr %i.qd, i64 2
  %i.qh = load i8, ptr %i.qg, align 1
  %i.qi = zext i8 %i.qh to i16
  %i.qj = xor i16 %i.qi, 114
  %i.qk = or i16 %i.qf, %i.qj
  %i.ql = icmp ne i16 %i.qk, 0
  %i.qm = zext i1 %i.ql to i32
  %.not773 = icmp eq i32 %i.qm, 0
  br i1 %.not773, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496, %_ZNK14NodeDefManager3getERK7MapNode.exit494
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 660
  store i8 1, ptr %i.qn, align 4, !tbaa !70
  br label %bb.bg

bb.bf:                                            ; preds = %.critedge
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496
  %.phi.trans.insert833 = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.pre834 = load i8, ptr %.phi.trans.insert833, align 4, !tbaa !70, !range !78
  %i.qp = trunc nuw i8 %.pre834 to i1
  br i1 %i.qp, label %bb.bg, label %.critedge371

bb.bg:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit496.thread767
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.qr = load i8, ptr %i.qq, align 4, !tbaa !167, !range !78, !noundef !79
  %i.qs = trunc nuw i8 %i.qr to i1
  br i1 %i.qs, label %bb.bh, label %.critedge371

bb.bh:                                            ; preds = %bb.bg
  store float 0.000000e+00, ptr %i.mo, align 8, !tbaa !69
  %i.qt = load float, ptr %4, align 16, !tbaa !80 ; 2 uses
  %i.qu = load float, ptr %i.fw, align 4, !tbaa !81
  %i.qv = fsub nsz float %i.qu, %.0319            ; 2 uses
  %i.qw = load float, ptr %.sroa.2252.0..sroa_idx, align 8, !tbaa !82 ; 2 uses
  %i.qx = fcmp nsz ogt float %i.qv, 0.000000e+00
  %i.qy = select nsz i1 %i.qx, float 5.000000e+00, float -5.000000e+00
  %i.qz = fadd nsz float %i.qv, %i.qy
  %i.ra = fdiv nsz float %i.qz, 1.000000e+01
  %i.rb = fptosi float %i.ra to i16               ; 4 uses
  %i.rc = insertelement <2 x float> poison, float %i.qt, i64 0
  %i.rd = insertelement <2 x float> %i.rc, float %i.qw, i64 1 ; 2 uses
  %i.re = fcmp nsz ogt <2 x float> %i.rd, zeroinitializer
  %i.rf = select <2 x i1> %i.re, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.rg = fadd nsz <2 x float> %i.rd, %i.rf
  %i.rh = fdiv nsz <2 x float> %i.rg, splat (float 1.000000e+01) ; 2 uses
  %i.ri = extractelement <2 x float> %i.rh, i64 0
  %i.rj = fptosi float %i.ri to i16
  %i.rk = extractelement <2 x float> %i.rh, i64 1
  %i.rl = fptosi float %i.rk to i16
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 622 ; 3 uses
  %.sroa.0656.0.copyload = load i16, ptr %i.rm, align 2, !tbaa !127
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !127
  %.sroa.7660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 626 ; 2 uses
  %.sroa.7660.0.copyload = load i16, ptr %.sroa.7660.0..sroa_idx, align 2, !tbaa !127
  %.sroa.8.0.insert.ext = zext i16 %i.rb to i48
  %.sroa.8.0.insert.shift = shl nuw nsw i48 %.sroa.8.0.insert.ext, 16
  %i.rn = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  %i.rp = add i16 %i.rb, 1
  %.sroa.2.0.insert.ext.i529 = zext i16 %i.rp to i48
  %.sroa.2.0.insert.shift.i530 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i529, 16
end_hunk_0
