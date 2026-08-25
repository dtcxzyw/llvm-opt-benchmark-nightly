Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/luaentity_sao?download=true
inline.NumInlined: 1527
inline.NumDeleted: 763
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12LuaEntitySAO4stepEfb:bb.a
  %.pn = phi { ptr, i32 } [ %i.ff, %bb.af ], [ %i.fe, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.bk

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1044 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !272
  %i.fk = fmul nsz float %i.fj, 5.000000e-01
  %i.fl = fmul nsz float %1, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 3 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !272
  %i.fo = fadd nsz float %i.fl, %i.fn
  %i.fp = load <2 x float>, ptr %i.fh, align 8, !tbaa !136
  %i.fq = fmul nsz <2 x float> %i.fp, splat (float 5.000000e-01)
  %i.fr = insertelement <2 x float> poison, float %1, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ft = fmul nsz <2 x float> %i.fs, %i.fq
  %i.fu = load <2 x float>, ptr %i.fg, align 4, !tbaa !136
  %i.fv = fadd nsz <2 x float> %i.ft, %i.fu
  %i.fw = fmul nsz <2 x float> %i.fs, %i.fv
  %i.fx = fmul nsz float %1, %i.fo
  store <2 x float> %i.fw, ptr %10, align 8
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store float %i.fx, ptr %.sroa.216.0..sroa_idx, align 8
  %i.fy = load ptr, ptr %0, align 8, !tbaa !9
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 128
  %i.ga = load ptr, ptr %i.fz, align 8
  invoke void %i.ga(ptr noundef nonnull align 8 dereferenceable(324) %0, ptr noundef nonnull align 4 dereferenceable(12) %10)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.gb = load float, ptr %i.fi, align 8, !tbaa !272
  %i.gc = fmul nsz float %1, %i.gb
  %i.gd = load <2 x float>, ptr %i.fh, align 8, !tbaa !136
  %i.ge = fmul nsz <2 x float> %i.fs, %i.gd
  %i.gf = load <2 x float>, ptr %i.fg, align 4, !tbaa !136
  %i.gg = fadd nsz <2 x float> %i.ge, %i.gf
  store <2 x float> %i.gg, ptr %i.fg, align 4, !tbaa !136
  %i.gh = load float, ptr %i.fm, align 4, !tbaa !272
  %i.gi = fadd nsz float %i.gc, %i.gh
  store float %i.gi, ptr %i.fm, align 4, !tbaa !272
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.bk

bb.ak:                                            ; preds = %bb.ai, %bb.ad
  %.073 = phi ptr [ %5, %bb.ad ], [ null, %bb.ai ] ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 751
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !273, !range !152, !noundef !114
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.al, label %_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit

bb.al:                                            ; preds = %bb.ak
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.gp = load float, ptr %i.go, align 4, !tbaa !274 ; 2 uses
  %i.gq = call nsz float @llvm.fabs.f32(float %i.gp)
  %i.gr = fpext float %i.gq to double
  %i.gs = fcmp nsz ogt double %i.gr, 1.000000e-03
  %.pre147 = load float, ptr %i.gn, align 4, !tbaa !275 ; 2 uses
  br i1 %i.gs, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gt = call nsz float @llvm.fabs.f32(float %.pre147)
  %i.gu = fpext float %i.gt to double
  %i.gv = fcmp nsz ogt double %i.gu, 1.000000e-03
  br i1 %i.gv, label %bb.an, label %_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gw = fpext nsz float %i.gp to double
  %i.gx = fpext nsz float %.pre147 to double
  %i.gy = call nsz double @llvm.atan2.f64(double %i.gw, double %i.gx)
  %i.gz = fmul nsz double %i.gy, 1.800000e+02
  %i.ha = fdiv nsz double %i.gz, f0x400921FB54442D18
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.hc = load float, ptr %i.hb, align 8, !tbaa !276
  %i.hd = fpext nsz float %i.hc to double
  %i.he = fadd nsz double %i.ha, %i.hd
  %i.hf = fptrunc nsz double %i.he to float       ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !277 ; 2 uses
  %i.hi = fcmp nsz ogt float %i.hh, 0.000000e+00
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 5 uses
  br i1 %i.hi, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !278
  %i.hl = frem nsz float %i.hk, 3.600000e+02      ; 3 uses
  %i.hm = fcmp nsz olt float %i.hl, 0.000000e+00
  %i.hn = fadd nsz float %i.hl, 3.600000e+02
  %i.ho = select nsz i1 %i.hm, float %i.hn, float %i.hl ; 3 uses
  store float %i.ho, ptr %i.hj, align 4, !tbaa !278
  %i.hp = fmul nsz float %1, %i.hh                ; 4 uses
  %i.hq = fsub nsz float %i.hf, %i.ho             ; 3 uses
  %i.hr = fcmp nsz olt float %i.hq, 0.000000e+00
  %i.hs = fadd nsz float %i.hq, 3.600000e+02
  %.0.i = select nsz i1 %i.hr, float %i.hs, float %i.hq ; 3 uses
  %i.ht = fcmp nsz ogt float %.0.i, %i.hp
  %i.hu = fsub nsz float 3.600000e+02, %.0.i
  %i.hv = fcmp nsz ogt float %i.hu, %i.hp
  %or.cond.i = and i1 %i.ht, %i.hv
  br i1 %or.cond.i, label %bb.ap, label %.sink.split.i

bb.ap:                                            ; preds = %bb.ao
  %i.hw = fcmp nsz olt float %.0.i, 1.800000e+02
  %i.hx = fneg nsz float %i.hp
  %i.hy = select nsz i1 %i.hw, float %i.hp, float %i.hx
  %i.hz = fadd nsz float %i.ho, %i.hy             ; 3 uses
  store float %i.hz, ptr %i.hj, align 4, !tbaa !136
  %i.ia = fcmp nsz ult float %i.hz, 3.600000e+02
  br i1 %i.ia, label %_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ib = fadd nsz float %i.hz, -3.600000e+02
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.aq, %bb.ao
  %.sink.i = phi float [ %i.ib, %bb.aq ], [ %i.hf, %bb.ao ]
  store float %.sink.i, ptr %i.hj, align 4, !tbaa !136
  br label %_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit

bb.ar:                                            ; preds = %bb.an
  store float %i.hf, ptr %i.hj, align 4, !tbaa !278
  br label %_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit

_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit: ; preds = %.sink.split.i, %bb.ap, %bb.ar, %bb.ak, %bb.am, %bb.z
  %.174 = phi ptr [ null, %bb.z ], [ %.073, %bb.ak ], [ %.073, %bb.am ], [ %.073, %bb.ar ], [ %.073, %bb.ap ], [ %.073, %.sink.split.i ]
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.id = load float, ptr %i.ic, align 4, !tbaa !279 ; 2 uses
  %i.ie = call nsz noundef float @llvm.fabs.f32(float %i.id)
  %i.if = fcmp nsz ogt float %i.ie, 1.000000e-03
  br i1 %i.if, label %bb.as, label %bb.au

bb.as:                                            ; preds = %_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !280
  %i.ii = fmul nsz float %1, f0x42652EE0
  %i.ij = call nsz float @llvm.fmuladd.f32(float %i.ii, float %i.id, float %i.ih)
  %i.ik = frem nsz float %i.ij, 3.600000e+02
  store float %i.ik, ptr %i.ig, align 4, !tbaa !280
  br label %bb.au

bb.at:                                            ; preds = %bb.bh, %bb.av
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.au:                                            ; preds = %bb.as, %_Z23wrappedApproachShortestIfEvRT_S0_S0_S0_.exit
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.in = load i8, ptr %i.im, align 8, !tbaa !19, !range !152, !noundef !114
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !153
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 96
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !154
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 488
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iv = load i16, ptr %i.iu, align 8, !tbaa !239
  invoke void @_ZN15ScriptApiEntity14luaentity_StepEtfPK19collisionMoveResult(ptr noundef nonnull align 8 dereferenceable(64) %i.it, i16 noundef zeroext %i.iv, float noundef %1, ptr noundef %.174)
          to label %bb.aw unwind label %bb.at

bb.aw:                                            ; preds = %bb.av, %bb.au
  br i1 %2, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %bb.aw
  %i.iw = load i16, ptr %i.at, align 8, !tbaa !250
  %.not143 = icmp eq i16 %i.iw, 0
  br i1 %.not143, label %bb.ay, label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  %i.ix = load float, ptr %i.dm, align 8, !tbaa !253 ; 2 uses
  %i.iy = fcmp nsz ogt float %i.ix, 1.000000e+00
  br i1 %i.iy, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.iz = fpext nsz float %i.ix to double
  %i.ja = fcmp nsz ogt double %i.iz, 2.000000e-01
  br i1 %i.ja, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ay, %bb.az, %bb.ba
  %.072 = phi nsz float [ 2.000000e+00, %bb.az ], [ 5.000000e-01, %bb.ba ], [ 1.000000e-01, %bb.ay ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.01.0.copyload.i122 = load <2 x float>, ptr %i.jb, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %11 = load <4 x float>, ptr %.sroa.22.0..sroa_idx.i123, align 8
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.je = load float, ptr %i.jd, align 4, !tbaa !281
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !272
  %i.jj = load <4 x float>, ptr %i.jc, align 4, !tbaa !136 ; 3 uses
  %i.jk = load <2 x float>, ptr %i.jf, align 4, !tbaa !136 ; 2 uses
  %i.jl = shufflevector <2 x float> %.sroa.01.0.copyload.i122, <2 x float> %i.jk, <2 x i32> <i32 0, i32 2>
  %i.jm = shufflevector <4 x float> %i.jj, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.jn = fsub nsz <2 x float> %i.jl, %i.jm       ; 2 uses
  %i.jo = load <2 x float>, ptr %i.jg, align 4, !tbaa !136 ; 2 uses
  %i.jp = shufflevector <2 x float> %.sroa.01.0.copyload.i122, <2 x float> %i.jk, <2 x i32> <i32 1, i32 3>
  %i.jq = shufflevector <4 x float> %i.jj, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.jr = shufflevector <2 x float> %i.jo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.js = shufflevector <4 x float> %i.jj, <4 x float> %i.jr, <2 x i32> <i32 1, i32 4>
  %i.jt = fsub nsz <2 x float> %i.jp, %i.js       ; 2 uses
  %i.ju = insertelement <2 x float> %12, float %i.ji, i64 1
  %i.jv = shufflevector <2 x float> %i.jq, <2 x float> %i.jo, <2 x i32> <i32 0, i32 3>
  %i.jw = fsub nsz <2 x float> %i.ju, %i.jv       ; 2 uses
  %i.jx = fmul nsz <2 x float> %i.jt, %i.jt
  %i.jy = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jn, <2 x float> %i.jn, <2 x float> %i.jx)
  %i.jz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> %i.jw, <2 x float> %i.jy)
  %i.ka = call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.jz) ; 2 uses
  %i.kb = extractelement <2 x float> %i.ka, i64 0
  %i.kc = fadd nsz float %i.je, %i.kb
  %i.kd = fcmp nsz ogt float %i.kc, %.072
  %i.ke = extractelement <2 x float> %i.ka, i64 1
  %i.kf = fcmp nsz ogt float %i.ke, %.072
  %or.cond = or i1 %i.kd, %i.kf
  br i1 %or.cond, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.kh = load float, ptr %i.kg, align 8, !tbaa !282
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !283
  %i.kk = fsub nsz float %i.kh, %i.kj
  %i.kl = call nsz noundef float @llvm.fabs.f32(float %i.kk)
  %i.km = fcmp nsz ogt float %i.kl, 1.000000e+00
  br i1 %i.km, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !278
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.kq = load float, ptr %i.kp, align 8, !tbaa !284
  %i.kr = fsub nsz float %i.ko, %i.kq
  %i.ks = call nsz noundef float @llvm.fabs.f32(float %i.kr)
  %i.kt = fcmp nsz ogt float %i.ks, 1.000000e+00
  br i1 %i.kt, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.kv = load float, ptr %i.ku, align 8, !tbaa !285
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 1100
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !286
  %i.ky = fsub nsz float %i.kv, %i.kx
  %i.kz = call nsz noundef float @llvm.fabs.f32(float %i.ky)
  %i.la = fcmp nsz ogt float %i.kz, 1.000000e+00
  br i1 %i.la, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb
  invoke void @_ZN12LuaEntitySAO12sendPositionEbb(ptr noundef nonnull align 8 dereferenceable(1145) %0, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bh:                                            ; preds = %bb.be, %bb.bf, %bb.ax
  invoke void @_ZN7UnitSAO16sendOutdatedDataEv(ptr noundef nonnull align 8 dereferenceable(954) %0)
          to label %bb.bi unwind label %bb.at

bb.bi:                                            ; preds = %bb.bh, %bb.aw
  %i.lc = load ptr, ptr %i.dr, align 8, !tbaa !287 ; 3 uses
  %.not.i.i.i.i127 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i.i127, label %_ZN19collisionMoveResultD2Ev.exit128, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !271
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lh) #30
  br label %_ZN19collisionMoveResultD2Ev.exit128

_ZN19collisionMoveResultD2Ev.exit128:             ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.bk:                                            ; preds = %bb.bg, %bb.aa, %bb.ag, %bb.aj, %bb.at
  %.pn85 = phi { ptr, i32 } [ %i.il, %bb.at ], [ %i.gj, %bb.aj ], [ %i.dy, %bb.aa ], [ %i.lb, %bb.bg ], [ %.pn, %bb.ag ]
  %i.li = load ptr, ptr %i.dr, align 8, !tbaa !287 ; 3 uses
  %.not.i.i.i.i129 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i.i129, label %_ZN19collisionMoveResultD2Ev.exit130, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !271
  %i.ll = ptrtoint ptr %i.lk to i64
  %i.lm = ptrtoint ptr %i.li to i64
  %i.ln = sub i64 %i.ll, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.ln) #30
  br label %_ZN19collisionMoveResultD2Ev.exit130

_ZN19collisionMoveResultD2Ev.exit130:             ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN19collisionMoveResultD2Ev.exit130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %.pn85.pn = phi { ptr, i32 } [ %.pn85, %_ZN19collisionMoveResultD2Ev.exit130 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ]
  resume { ptr, i32 } %.pn85.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12LuaEntitySAO17getPropertyPacketB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1145) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 408
  tail call void @_ZNK7UnitSAO28generateSetPropertiesCommandB5cxx11ERK16ObjectProperties(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(954) %1, ptr noundef nonnull align 8 dereferenceable(351) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12LuaEntitySAO28generateSetTextureModCommandB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1145) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 2, ptr %i.a, align 1, !tbaa !18
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  invoke void @_Z17serializeString16B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %i.f, ptr %i.d)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %3, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.k = load ptr, ptr %3, align 8, !tbaa !100    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !18
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !11, !alias.scope !294
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !15, !alias.scope !294
  store i8 0, ptr %i.p, align 8, !tbaa !18, !alias.scope !294
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !295, !noalias !294 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !noalias !294 ; 2 uses
  %i.v = icmp ugt ptr %i.s, %i.u
  %.08.i.i.i = select i1 %i.v, ptr %i.s, ptr %i.u ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !296, !noalias !294 ; 2 uses
  %i.y = ptrtoint ptr %.08.i.i.i to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !100, !alias.scope !294 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.p
  br i1 %i.ae, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.af = load i64, ptr %i.p, align 8, !tbaa !18, !alias.scope !294
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %.body

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.ai = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !9
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
end_hunk_0
