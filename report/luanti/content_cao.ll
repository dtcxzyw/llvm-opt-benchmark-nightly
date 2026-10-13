Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/content_cao?download=true
inline.NumInlined: 3123
inline.NumDeleted: 1535
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN10GenericCAO4stepEfP17ClientEnvironment:bb.a

bb.ay:                                            ; preds = %bb.ax
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 628
  %.sroa.013.0.copyload.i = load <2 x float>, ptr %i.im, align 4, !tbaa !48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 636
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !48
  br label %_ZNK10GenericCAO11getPositionEv.exit

bb.az:                                            ; preds = %bb.ax
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !260
  %.not17.i = icmp eq ptr %i.io, null
  br i1 %.not17.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNK10GenericCAO17updateParentChainEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !187
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 408
  %.sroa.0.0.copyload.i.i = load i48, ptr %i.ir, align 8, !tbaa !259 ; 2 uses
  %i.is = load ptr, ptr %i.in, align 8, !tbaa !260 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !55
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 232
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = call { <2 x float>, float } %i.iv(ptr noundef nonnull align 8 dereferenceable(218) %i.is), !inline_history !601 ; 2 uses
  %.fca.0.extract8.i = extractvalue { <2 x float>, float } %i.iw, 0
  %.fca.1.extract9.i = extractvalue { <2 x float>, float } %i.iw, 1
  %.sroa.3.0.extract.shift.i.i = lshr i48 %.sroa.0.0.copyload.i.i, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i to i16
  %i.ix = sitofp nsz i16 %.sroa.3.0.extract.trunc.i.i to float
  %i.iy = fmul nnan nsz float %i.ix, 1.000000e+01
  %i.iz = bitcast i48 %.sroa.0.0.copyload.i.i to <3 x i16>
  %i.ja = shufflevector <3 x i16> %i.iz, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.jb = sitofp <2 x i16> %i.ja to <2 x float>
  %i.jc = fmul nnan nsz <2 x float> %i.jb, splat (float 1.000000e+01)
  %i.jd = fadd nsz <2 x float> %i.jc, %.fca.0.extract8.i
  %i.je = fadd nsz float %i.iy, %.fca.1.extract9.i
  br label %_ZNK10GenericCAO11getPositionEv.exit

bb.bb:                                            ; preds = %bb.az
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 564
  %.sroa.013.0.copyload14.i = load <2 x float>, ptr %i.jf, align 4, !tbaa !48
  %.sroa.4.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %0, i64 572
  %.sroa.4.0.copyload16.i = load float, ptr %.sroa.4.0..sroa_idx15.i, align 4, !tbaa !48
  br label %_ZNK10GenericCAO11getPositionEv.exit

_ZNK10GenericCAO11getPositionEv.exit:             ; preds = %bb.ay, %bb.ba, %bb.bb
  %.sroa.0.4.vec.insert.i.pn.i = phi <2 x float> [ %i.jd, %bb.ba ], [ %.sroa.013.0.copyload14.i, %bb.bb ], [ %.sroa.013.0.copyload.i, %bb.ay ]
  %.pn.i = phi float [ %i.je, %bb.ba ], [ %.sroa.4.0.copyload16.i, %bb.bb ], [ %.sroa.4.0.copyload.i, %bb.ay ]
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.pn.i, ptr %i.jg, align 4, !tbaa !48
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 572
  store float %.pn.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !48
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 628
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ji, ptr noundef nonnull align 4 dereferenceable(12) %i.jg, i64 12, i1 false), !tbaa.struct !457
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jj, ptr noundef nonnull align 4 dereferenceable(12) %i.jg, i64 12, i1 false), !tbaa.struct !457
  br label %bb.bz

bb.bc:                                            ; preds = %bb.aw
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 664
  call void @_ZN26SmoothTranslatorWrappedv3f9translateEf(ptr noundef nonnull align 4 dereferenceable(45) %i.jk, float noundef %1)
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 6 uses
  %.sroa.0392.0.copyload = load float, ptr %i.jm, align 4, !tbaa !48
  %.sroa.5393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %.sroa.5393.0.copyload = load float, ptr %.sroa.5393.0..sroa_idx, align 8, !tbaa !48
  %.sroa.6394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 4 uses
  %.sroa.6394.0.copyload = load float, ptr %.sroa.6394.0..sroa_idx, align 4, !tbaa !48
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 410
  %i.jo = load i8, ptr %i.jn, align 2, !tbaa !148, !range !46, !noundef !47
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %_ZN19collisionMoveResultaSEOS_.exit, label %bb.bg

_ZN19collisionMoveResultaSEOS_.exit:              ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.jq, i64 24, i1 false), !tbaa.struct !265
  %i.jr = load <4 x float>, ptr %9, align 16, !tbaa !48
  %i.js = fmul nsz <4 x float> %i.jr, splat (float 1.000000e+01)
  store <4 x float> %i.js, ptr %9, align 16, !tbaa !48
  %i.jt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ju = load <2 x float>, ptr %i.jt, align 16, !tbaa !48
  %i.jv = fmul nsz <2 x float> %i.ju, splat (float 1.000000e+01)
  store <2 x float> %i.jv, ptr %i.jt, align 16, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.jw, i64 12, i1 false), !tbaa.struct !457
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %i.jx, i64 12, i1 false), !tbaa.struct !457
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !840 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, null
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kc = select i1 %i.ka, ptr null, ptr %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ke = load float, ptr %i.kd, align 8, !tbaa !841
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 588
  %.sroa.058.0.copyload = load <2 x float>, ptr %i.kf, align 4, !tbaa !48
  %.sroa.259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 596
  %.sroa.259.0.copyload = load float, ptr %.sroa.259.0..sroa_idx, align 4, !tbaa !48
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 411
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !150, !range !46, !noundef !47
  %i.ki = trunc nuw i8 %i.kh to i1
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 422
  %i.kk = load i8, ptr %i.kj, align 2, !tbaa !842
  call void @_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode(ptr dead_on_unwind nonnull writable sret(%struct.collisionMoveResult) align 8 %12, ptr noundef nonnull %2, ptr noundef %i.kc, ptr noundef nonnull align 4 dereferenceable(24) %9, float noundef %i.ke, float noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %11, <2 x float> %.sroa.058.0.copyload, float %.sroa.259.0.copyload, ptr noundef nonnull %0, i1 noundef zeroext %i.ki, i8 noundef zeroext %i.kk)
  %.sroa.0385.0.copyload = load i8, ptr %12, align 8 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !845 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !846
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jw, ptr noundef nonnull align 4 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jx, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !457
  %.sroa.053.0.copyload = load <2 x float>, ptr %i.jw, align 4, !tbaa !48 ; 2 uses
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 572
  %.sroa.254.0.copyload = load float, ptr %.sroa.254.0..sroa_idx, align 4, !tbaa !48 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 660 ; 2 uses
  store i8 %.sroa.0385.0.copyload, ptr %i.kp, align 4, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.jl, ptr noundef nonnull align 4 dereferenceable(12) %i.jm, i64 12, i1 false), !tbaa.struct !457
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  store <2 x float> %.sroa.053.0.copyload, ptr %i.kq, align 8, !tbaa !48
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  store float %.sroa.254.0.copyload, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !48
  %i.kr = fcmp nsz ogt float %1, 0.000000e+00
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 3 uses
  br i1 %i.kr, label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN19collisionMoveResultaSEOS_.exit
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !52 ; 2 uses
  %i.ku = fpext nsz float %i.kt to double         ; 2 uses
  %i.kv = fcmp nsz olt double %i.ku, 1.000000e-03
  %i.kw = fcmp nsz ogt float %i.kt, 1.000000e+00
  %or.cond.i = or i1 %i.kw, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ky = load float, ptr %i.kx, align 8, !tbaa !51 ; 2 uses
  br i1 %or.cond.i, label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kz = fpext nsz float %i.ky to double
  %i.la = fmul nsz double %i.kz, 1.000000e-01
  %i.lb = call nsz double @llvm.fmuladd.f64(double %i.ku, double 9.000000e-01, double %i.la)
  %i.lc = fptrunc nsz double %i.lb to float
  br label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit

_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit: ; preds = %_ZN19collisionMoveResultaSEOS_.exit, %bb.bd, %bb.be
  %.sink.i = phi float [ %1, %_ZN19collisionMoveResultaSEOS_.exit ], [ %i.lc, %bb.be ], [ %i.ky, %bb.bd ] ; 2 uses
  store float %.sink.i, ptr %i.ks, align 4, !tbaa !52
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  store float 0.000000e+00, ptr %i.ld, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %.not.i.i.i.i297 = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i.i297, label %_ZN19collisionMoveResultD2Ev.exit298, label %bb.bf

bb.bf:                                            ; preds = %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit
  %i.le = ptrtoint ptr %i.ko to i64
  %i.lf = ptrtoint ptr %i.km to i64
  %i.lg = sub i64 %i.le, %i.lf
  call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef %i.lg) #35
  %.pre.pre = load float, ptr %i.ld, align 8, !tbaa !51
  %i.lh = load <2 x float>, ptr %i.kq, align 8, !tbaa !48
  %.pre450.pre = load float, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !149
  %.pre452.pre = load float, ptr %i.ks, align 4, !tbaa !52
  %.pre454.pre = load i8, ptr %i.kp, align 4, !tbaa !53, !range !46
  %i.li = fadd nsz float %1, %.pre.pre
  br label %_ZN19collisionMoveResultD2Ev.exit298

_ZN19collisionMoveResultD2Ev.exit298:             ; preds = %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit, %bb.bf
  %.pre454 = phi i8 [ %.sroa.0385.0.copyload, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit ], [ %.pre454.pre, %bb.bf ]
  %.pre452 = phi float [ %.sink.i, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit ], [ %.pre452.pre, %bb.bf ]
  %.pre450 = phi float [ %.sroa.254.0.copyload, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit ], [ %.pre450.pre, %bb.bf ]
  %.pre = phi float [ %1, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit ], [ %i.li, %bb.bf ]
  %i.lj = phi <2 x float> [ %.sroa.053.0.copyload, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit ], [ %i.lh, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bj

bb.bg:                                            ; preds = %bb.bc
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.lm = fpext nsz float %1 to double            ; 2 uses
  %i.ln = fmul nsz double %i.lm, 5.000000e-01
  %i.lo = fmul nsz double %i.ln, %i.lm
  %i.lp = fptrunc nsz double %i.lo to float
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 3 uses
  %i.lt = load <4 x float>, ptr %i.lk, align 8, !tbaa !48 ; 3 uses
  %i.lu = load <2 x float>, ptr %i.lq, align 8, !tbaa !48 ; 2 uses
  %i.lv = load float, ptr %i.lr, align 4, !tbaa !149
  %i.lw = shufflevector <2 x float> %i.lu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lx = shufflevector <4 x float> %i.lt, <4 x float> %i.lw, <4 x i32> <i32 3, i32 4, i32 5, i32 poison>
  %i.ly = insertelement <4 x float> %i.lx, float -0.000000e+00, i64 3
  %i.lz = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.lp, i64 0
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mb = fmul <4 x float> %i.ly, %i.ma
  %i.mc = load <4 x float>, ptr %i.ls, align 4, !tbaa !48
  %i.md = insertelement <4 x float> poison, float %1, i64 0
  %i.me = shufflevector <4 x float> %i.md, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mf = fmul nsz <4 x float> %i.me, %i.lt
  %i.mg = fadd nsz <4 x float> %i.mf, %i.mb
  %i.mh = fadd nsz <4 x float> %i.mc, %i.mg       ; 2 uses
  store <4 x float> %i.mh, ptr %i.ls, align 4, !tbaa !48
  %i.mi = insertelement <2 x float> poison, float %1, i64 0
  %i.mj = shufflevector <2 x float> %i.mi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mk = insertelement <2 x float> %i.lu, float %i.lv, i64 1
  %i.ml = fmul nsz <2 x float> %i.mj, %i.mk
  %i.mm = shufflevector <4 x float> %i.lt, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.mn = fadd nsz <2 x float> %i.mm, %i.ml
  store <2 x float> %i.mn, ptr %i.ll, align 4, !tbaa !48
  %.sroa.033.0.copyload = load <2 x float>, ptr %i.ls, align 4, !tbaa !48 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.mp = load i8, ptr %i.mo, align 4, !tbaa !847, !range !46, !noundef !47
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !848 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.jl, ptr noundef nonnull align 4 dereferenceable(12) %i.jm, i64 12, i1 false), !tbaa.struct !457
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 640
  store <2 x float> %.sroa.033.0.copyload, ptr %i.ms, align 8, !tbaa !48
  %.sroa.24.0..sroa_idx.i313 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.mt = extractelement <4 x float> %i.mh, i64 2 ; 2 uses
  store float %i.mt, ptr %.sroa.24.0..sroa_idx.i313, align 8, !tbaa !48
  %i.mu = fcmp nsz ogt float %i.mr, 0.000000e+00
  br i1 %i.mu, label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mv = fpext nsz float %i.mr to double         ; 2 uses
  %i.mw = fcmp nsz olt double %i.mv, 1.000000e-03
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.my = load float, ptr %i.mx, align 8, !tbaa !51 ; 2 uses
  br i1 %i.mw, label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mz = fpext nsz float %i.my to double
  %i.na = fmul nsz double %i.mz, 1.000000e-01
  %i.nb = call nsz double @llvm.fmuladd.f64(double %i.mv, double 9.000000e-01, double %i.na)
  %i.nc = fptrunc nsz double %i.nb to float
  br label %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316

_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316: ; preds = %bb.bg, %bb.bh, %bb.bi
  %.sink.i315 = phi float [ %i.mr, %bb.bg ], [ %i.nc, %bb.bi ], [ %i.my, %bb.bh ] ; 2 uses
  store float %.sink.i315, ptr %i.mq, align 4, !tbaa !52
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 656
  store float 0.000000e+00, ptr %i.nd, align 8, !tbaa !51
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316, %_ZN19collisionMoveResultD2Ev.exit298
  %i.ne = phi i8 [ %i.mp, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %.pre454, %_ZN19collisionMoveResultD2Ev.exit298 ]
  %i.nf = phi float [ %.sink.i315, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %.pre452, %_ZN19collisionMoveResultD2Ev.exit298 ] ; 2 uses
  %i.ng = phi float [ %i.mt, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %.pre450, %_ZN19collisionMoveResultD2Ev.exit298 ]
  %i.nh = phi float [ %1, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %.pre, %_ZN19collisionMoveResultD2Ev.exit298 ] ; 2 uses
  %i.ni = phi <2 x float> [ %.sroa.033.0.copyload, %_ZN16SmoothTranslatorIN4core8vector3dIfEEE6updateES2_bf.exit316 ], [ %i.lj, %_ZN19collisionMoveResultD2Ev.exit298 ]
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 656
  store float %i.nh, ptr %i.nj, align 8, !tbaa !51
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.nl = load float, ptr %i.nk, align 8, !tbaa !149 ; 2 uses
  %i.nm = fsub nsz float %i.ng, %i.nl
  %i.nn = fpext nsz float %i.nf to double
  %i.no = fcmp nsz ogt double %i.nn, 1.000000e-03
  %i.np = fdiv nsz float %i.nh, %i.nf
  %i.nq = fmul nsz float %i.np, 8.000000e-01
  %.0.i = select i1 %i.no, float %i.nq, float 8.000000e-01 ; 2 uses
  %i.nr = trunc nuw i8 %i.ne to i1
  %i.ns = select i1 %i.nr, float 1.000000e+00, float 1.500000e+00 ; 2 uses
  %i.nt = fcmp nsz olt float %i.ns, %.0.i
  %.sroa.speculated.i = select i1 %i.nt, float %i.ns, float %.0.i ; 2 uses
  %i.nu = fmul nsz float %i.nm, %.sroa.speculated.i
  %i.nv = load <2 x float>, ptr %i.jl, align 8, !tbaa !48 ; 2 uses
  %i.nw = fsub nsz <2 x float> %i.ni, %i.nv
  %i.nx = insertelement <2 x float> poison, float %.sroa.speculated.i, i64 0
  %i.ny = shufflevector <2 x float> %i.nx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nz = fmul nsz <2 x float> %i.nw, %i.ny
  %i.oa = fadd nsz <2 x float> %i.nv, %i.nz
  %i.ob = fadd nsz float %i.nl, %i.nu
  store <2 x float> %i.oa, ptr %i.jm, align 4, !tbaa !48
  store float %i.ob, ptr %.sroa.6394.0..sroa_idx, align 4, !tbaa !48
  call void @_ZN10GenericCAO13updateNodePosEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %i.oc = load float, ptr %i.jm, align 4, !tbaa !262
  %i.od = fsub nsz float %.sroa.0392.0.copyload, %i.oc ; 2 uses
  %i.oe = load float, ptr %.sroa.5393.0..sroa_idx, align 8, !tbaa !263
  %i.of = fsub nsz float %.sroa.5393.0.copyload, %i.oe ; 2 uses
  %i.og = load float, ptr %.sroa.6394.0..sroa_idx, align 4, !tbaa !149
  %i.oh = fsub nsz float %.sroa.6394.0.copyload, %i.og ; 2 uses
  %i.oi = fmul nsz float %i.of, %i.of
  %i.oj = call nsz float @llvm.fmuladd.f32(float %i.od, float %i.od, float %i.oi)
  %i.ok = call nsz float @llvm.fmuladd.f32(float %i.oh, float %i.oh, float %i.oj)
  %i.ol = call nsz noundef float @llvm.sqrt.f32(float %i.ok)
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 3 uses
  %i.on = load float, ptr %i.om, align 8, !tbaa !133
  %i.oo = fadd nsz float %i.on, %i.ol             ; 2 uses
  store float %i.oo, ptr %i.om, align 8, !tbaa !133
  %i.op = fcmp nsz ogt float %i.oo, 1.500000e+01
  br i1 %i.op, label %bb.bk, label %bb.bz

bb.bk:                                            ; preds = %bb.bj
  store float 0.000000e+00, ptr %i.om, align 8, !tbaa !133
  %i.oq = load i8, ptr %i.c, align 1, !tbaa !117, !range !46, !noundef !47
  %i.or = trunc nuw i8 %i.oq to i1
  br i1 %i.or, label %bb.bz, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 414
  %i.ot = load i8, ptr %i.os, align 2, !tbaa !602, !range !46, !noundef !47
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.bm, label %bb.bz

bb.bm:                                            ; preds = %bb.bl
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !135
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !55
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = call noundef ptr %i.pa(ptr noundef nonnull align 8 dereferenceable(8) %i.ox), !inline_history !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.pc = load ptr, ptr %0, align 8, !tbaa !55
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 160
  %i.pe = load ptr, ptr %i.pd, align 8
  %i.pf = call noundef ptr %i.pe(ptr noundef nonnull align 8 dereferenceable(1076) %0), !inline_history !601
  %.not.i318 = icmp eq ptr %i.pf, null
  br i1 %.not.i318, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.sroa.013.0.copyload.i339 = load <2 x float>, ptr %i.jm, align 4, !tbaa !48
  %.sroa.4.0.copyload.i341 = load float, ptr %.sroa.6394.0..sroa_idx, align 4, !tbaa !48
  br label %_ZNK10GenericCAO11getPositionEv.exit342

bb.bo:                                            ; preds = %bb.bm
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !260
  %.not17.i319 = icmp eq ptr %i.ph, null
  br i1 %.not17.i319, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZNK10GenericCAO17updateParentChainEv(ptr noundef nonnull align 8 dereferenceable(1076) %0)
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !187
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 408
  %.sroa.0.0.copyload.i.i320 = load i48, ptr %i.pk, align 8, !tbaa !259 ; 2 uses
  %i.pl = load ptr, ptr %i.pg, align 8, !tbaa !260 ; 2 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !55
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 232
  %i.po = load ptr, ptr %i.pn, align 8
  %i.pp = call { <2 x float>, float } %i.po(ptr noundef nonnull align 8 dereferenceable(218) %i.pl), !inline_history !601 ; 2 uses
  %.fca.0.extract8.i321 = extractvalue { <2 x float>, float } %i.pp, 0
  %.fca.1.extract9.i322 = extractvalue { <2 x float>, float } %i.pp, 1
  %.sroa.3.0.extract.shift.i.i326 = lshr i48 %.sroa.0.0.copyload.i.i320, 32
  %.sroa.3.0.extract.trunc.i.i327 = trunc nuw i48 %.sroa.3.0.extract.shift.i.i326 to i16
  %i.pq = sitofp nsz i16 %.sroa.3.0.extract.trunc.i.i327 to float
  %i.pr = fmul nnan nsz float %i.pq, 1.000000e+01
  %i.ps = bitcast i48 %.sroa.0.0.copyload.i.i320 to <3 x i16>
  %i.pt = shufflevector <3 x i16> %i.ps, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.pu = sitofp <2 x i16> %i.pt to <2 x float>
  %i.pv = fmul nnan nsz <2 x float> %i.pu, splat (float 1.000000e+01)
  %i.pw = fadd nsz <2 x float> %i.pv, %.fca.0.extract8.i321
  %i.px = fadd nsz float %i.pr, %.fca.1.extract9.i322
  br label %_ZNK10GenericCAO11getPositionEv.exit342

bb.bq:                                            ; preds = %bb.bo
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 564
  %.sroa.013.0.copyload14.i336 = load <2 x float>, ptr %i.py, align 4, !tbaa !48
  %.sroa.4.0..sroa_idx15.i337 = getelementptr inbounds nuw i8, ptr %0, i64 572
  %.sroa.4.0.copyload16.i338 = load float, ptr %.sroa.4.0..sroa_idx15.i337, align 4, !tbaa !48
  br label %_ZNK10GenericCAO11getPositionEv.exit342

_ZNK10GenericCAO11getPositionEv.exit342:          ; preds = %bb.bn, %bb.bp, %bb.bq
  %.sroa.0.4.vec.insert.i.pn.i332 = phi <2 x float> [ %i.pw, %bb.bp ], [ %.sroa.013.0.copyload14.i336, %bb.bq ], [ %.sroa.013.0.copyload.i339, %bb.bn ] ; 2 uses
  %.pn.i333 = phi float [ %i.px, %bb.bp ], [ %.sroa.4.0.copyload16.i338, %bb.bq ], [ %.sroa.4.0.copyload.i341, %bb.bn ]
  %.sroa.0374.0.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i.pn.i332, i64 0
  %i.pz = fmul nsz float %.sroa.0374.0.vec.extract, 1.000000e-01 ; 3 uses
  %.sroa.0374.4.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i.pn.i332, i64 1
  %i.qa = fmul nsz float %.sroa.0374.4.vec.extract, 1.000000e-01
  %.sroa.0.0.vec.insert.i343 = insertelement <2 x float> poison, float %i.pz, i64 0
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !849
  %i.qd = fadd nsz float %i.qa, %i.qc             ; 2 uses
  %.sroa.0.4.vec.insert.i348 = insertelement <2 x float> %.sroa.0.0.vec.insert.i343, float %i.qd, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i348, ptr %13, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.qe = fcmp nsz ogt float %i.pz, 0.000000e+00
  %i.qf = select nsz i1 %i.qe, float 5.000000e-01, float -5.000000e-01
  %i.qg = fadd nsz float %i.pz, %i.qf
  %i.qh = fptosi float %i.qg to i16
  %i.qi = fmul nsz float %.pn.i333, 1.000000e-01  ; 2 uses
  store float %i.qi, ptr %.sroa.220.0..sroa_idx, align 8
  %i.qj = fadd nsz float %i.qd, -5.000000e-01
  %i.qk = insertelement <2 x float> poison, float %i.qj, i64 0
  %i.ql = insertelement <2 x float> %i.qk, float %i.qi, i64 1 ; 2 uses
  %i.qm = fcmp nsz ogt <2 x float> %i.ql, zeroinitializer
  %i.qn = select <2 x i1> %i.qm, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float -5.000000e-01)
  %i.qo = fadd nsz <2 x float> %i.ql, %i.qn
  %i.qp = fptosi <2 x float> %i.qo to <2 x i16>
  %i.qq = zext <2 x i16> %i.qp to <2 x i48>
  %i.qr = shl nuw <2 x i48> %i.qq, <i48 16, i48 32>
  %.sroa.2.0.insert.insert.i = call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.qr)
  %.sroa.0.0.insert.ext.i = zext i16 %i.qh to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
end_hunk_0
