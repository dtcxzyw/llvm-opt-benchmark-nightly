Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btBoxBoxDetector?download=true
inline.NumInlined: 309
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z8dBoxBox2RK9btVector3PKfS1_S1_S3_S1_RS_PfPiiP12dContactGeomiRN36btDiscreteCollisionDetectorInterface6ResultE:bb.a
  %i.rb = fmul float %i.ql, %i.ra
  %i.rc = tail call float @llvm.fmuladd.f32(float %i.qz, float %i.qn, float %i.rb)
  %i.rd = load float, ptr %i.y, align 4, !tbaa !18
  %i.re = tail call noundef float @llvm.fmuladd.f32(float %i.rd, float %i.qp, float %i.rc)
  %i.rf = extractelement <4 x float> %i.qk, i64 0
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sink = phi float [ %i.re, %bb.be ], [ %i.qj, %bb.bd ] ; 2 uses
  %i.rg = phi float [ %i.qx, %bb.be ], [ %i.qg, %bb.bd ]
  %i.rh = phi float [ %i.qr, %bb.be ], [ %i.qe, %bb.bd ]
  %.14730926943 = phi float [ %i.rf, %bb.be ], [ %.13729, %bb.bd ] ; 2 uses
  %.14694927941 = phi i32 [ %.14694927942, %bb.be ], [ %.13693, %bb.bd ]
  %.14679928939 = phi i32 [ %.14679928940, %bb.be ], [ %.13678, %bb.bd ] ; 6 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sink, ptr %i.ri, align 4, !tbaa !18
  %.not759 = icmp eq i32 %.14694927941, 0
  br i1 %.not759, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.rj = insertelement <2 x float> poison, float %i.rh, i64 0
  %i.rk = insertelement <2 x float> %i.rj, float %i.rg, i64 1
  %i.rl = fneg <2 x float> %i.rk
  store <2 x float> %i.rl, ptr %6, align 4, !tbaa !18
  %i.rm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.rn = fneg float %.sink
  store float %i.rn, ptr %i.rm, align 4, !tbaa !18
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ro = fneg float %.14730926943
  store float %i.ro, ptr %7, align 4, !tbaa !18
  %i.rp = icmp samesign ugt i32 %.14679928939, 6
  br i1 %i.rp, label %.preheader977, label %bb.bi

.preheader977:                                    ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa !18
  %i.rq = load float, ptr %6, align 4, !tbaa !18
  %i.rr = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !18
  %i.rt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !18
  %i.rv = fneg <3 x float> %i.aa
  %i.rw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.rx = load float, ptr %i.rw, align 8, !tbaa !18
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.rz = load <2 x float>, ptr %13, align 8, !tbaa !18
  %i.sa = load <3 x float>, ptr %1, align 4, !tbaa !18 ; 4 uses
  %i.sb = load <3 x float>, ptr %i.q, align 4, !tbaa !18 ; 4 uses
  %i.sc = insertelement <3 x float> poison, float %i.rs, i64 0
  %i.sd = shufflevector <3 x float> %i.sc, <3 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.se = fmul <3 x float> %i.sd, %i.sb
  %i.sf = insertelement <3 x float> poison, float %i.rq, i64 0
  %i.sg = shufflevector <3 x float> %i.sf, <3 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.sh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sg, <3 x float> %i.sa, <3 x float> %i.se)
  %i.si = load <3 x float>, ptr %i.r, align 4, !tbaa !18 ; 3 uses
  %i.sj = load float, ptr %i.ry, align 4, !tbaa !18
  %i.sk = insertelement <3 x float> poison, float %i.ru, i64 0
  %i.sl = shufflevector <3 x float> %i.sk, <3 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.sm = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sl, <3 x float> %i.si, <3 x float> %i.sh)
  %i.sn = fcmp ogt <3 x float> %i.sm, zeroinitializer
  %i.so = select <3 x i1> %i.sn, <3 x float> %i.aa, <3 x float> %i.rv ; 6 uses
  %i.sp = shufflevector <3 x float> %i.so, <3 x float> poison, <2 x i32> zeroinitializer
  %i.sq = shufflevector <3 x float> %i.sa, <3 x float> %i.sb, <2 x i32> <i32 0, i32 3>
  %i.sr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sp, <2 x float> %i.sq, <2 x float> %i.rz)
  %i.ss = extractelement <3 x float> %i.so, i64 0
  %i.st = extractelement <3 x float> %i.si, i64 0
  %i.su = tail call float @llvm.fmuladd.f32(float %i.ss, float %i.st, float %i.rx)
  %i.sv = shufflevector <3 x float> %i.so, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.sw = shufflevector <3 x float> %i.sa, <3 x float> %i.sb, <2 x i32> <i32 1, i32 4>
  %i.sx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sv, <2 x float> %i.sw, <2 x float> %i.sr)
  %i.sy = extractelement <3 x float> %i.so, i64 1
  %i.sz = tail call float @llvm.fmuladd.f32(float %i.sy, float %i.sj, float %i.su)
  %i.ta = shufflevector <3 x float> %i.so, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.tb = shufflevector <3 x float> %i.sa, <3 x float> %i.sb, <2 x i32> <i32 2, i32 5>
  %i.tc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ta, <2 x float> %i.tb, <2 x float> %i.sx)
  store <2 x float> %i.tc, ptr %13, align 8, !tbaa !18
  %i.td = extractelement <3 x float> %i.so, i64 2
  %i.te = extractelement <3 x float> %i.si, i64 2
  %i.tf = tail call float @llvm.fmuladd.f32(float %i.td, float %i.te, float %i.sz)
  store float %i.tf, ptr %i.rw, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa !18
  %i.tg = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.th = load float, ptr %i.tg, align 8, !tbaa !18
  %i.ti = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.tj = load float, ptr %i.an, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  %i.tk = add nsw i32 %.14679928939, -7           ; 2 uses
  %.lhs.trunc = trunc i32 %i.tk to i8
  %i.tl = udiv i8 %.lhs.trunc, 3
  %i.tm = zext nneg i8 %i.tl to i64               ; 3 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tm
  %i.to = load float, ptr %i.tn, align 4, !tbaa !18
  store float %i.to, ptr %15, align 4, !tbaa !18
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tm
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !18
  %i.ts = getelementptr inbounds nuw i8, ptr %15, i64 4
  store float %i.tr, ptr %i.ts, align 4, !tbaa !18
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tm
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 32
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !18
  %i.tw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float %i.tv, ptr %i.tw, align 4, !tbaa !18
  %.lhs.trunc1111 = trunc i32 %i.tk to i8
  %i.tx = urem i8 %.lhs.trunc1111, 3
  %i.ty = zext nneg i8 %i.tx to i64               ; 3 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ty
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !18 ; 2 uses
  store float %i.ua, ptr %16, align 4, !tbaa !18
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ty
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !18 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %16, i64 4
  store float %i.ud, ptr %i.ue, align 4, !tbaa !18
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ty
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 32
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !18 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %16, i64 8
  store float %i.uh, ptr %i.ui, align 4, !tbaa !18
  %i.uj = load <2 x float>, ptr %14, align 8, !tbaa !18
  %i.uk = load <3 x float>, ptr %4, align 4, !tbaa !18 ; 4 uses
  %i.ul = load <3 x float>, ptr %i.ao, align 4, !tbaa !18 ; 4 uses
  %i.um = fmul <3 x float> %i.sd, %i.ul
  %i.un = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sg, <3 x float> %i.uk, <3 x float> %i.um)
  %i.uo = load <3 x float>, ptr %i.ap, align 4, !tbaa !18 ; 3 uses
  %i.up = load float, ptr %i.ti, align 4, !tbaa !18
  %i.uq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sl, <3 x float> %i.uo, <3 x float> %i.un)
  %i.ur = fcmp ogt <3 x float> %i.uq, zeroinitializer
  %i.us = shufflevector <3 x i1> %i.ur, <3 x i1> poison, <3 x i32> <i32 2, i32 1, i32 0>
  %i.ut = shufflevector <2 x float> %i.ag, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 0>
  %i.uu = insertelement <3 x float> %i.ut, float %i.tj, i64 0 ; 2 uses
  %i.uv = fneg <3 x float> %i.uu
  %i.uw = select <3 x i1> %i.us, <3 x float> %i.uv, <3 x float> %i.uu ; 6 uses
  %i.ux = shufflevector <3 x float> %i.uw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.uy = shufflevector <3 x float> %i.uk, <3 x float> %i.ul, <2 x i32> <i32 0, i32 3>
  %i.uz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ux, <2 x float> %i.uy, <2 x float> %i.uj)
  %i.va = extractelement <3 x float> %i.uw, i64 2
  %i.vb = extractelement <3 x float> %i.uo, i64 0
  %i.vc = tail call float @llvm.fmuladd.f32(float %i.va, float %i.vb, float %i.th)
  %i.vd = shufflevector <3 x float> %i.uw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ve = shufflevector <3 x float> %i.uk, <3 x float> %i.ul, <2 x i32> <i32 1, i32 4>
  %i.vf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vd, <2 x float> %i.ve, <2 x float> %i.uz)
  %i.vg = extractelement <3 x float> %i.uw, i64 1
  %i.vh = tail call float @llvm.fmuladd.f32(float %i.vg, float %i.up, float %i.vc)
  %i.vi = shufflevector <3 x float> %i.uw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.vj = shufflevector <3 x float> %i.uk, <3 x float> %i.ul, <2 x i32> <i32 2, i32 5>
  %i.vk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vi, <2 x float> %i.vj, <2 x float> %i.vf) ; 2 uses
  store <2 x float> %i.vk, ptr %14, align 8, !tbaa !18
  %i.vl = extractelement <3 x float> %i.uw, i64 0
  %i.vm = extractelement <3 x float> %i.uo, i64 2
  %i.vn = tail call float @llvm.fmuladd.f32(float %i.vl, float %i.vm, float %i.vh) ; 2 uses
  store float %i.vn, ptr %i.tg, align 8, !tbaa !18
  call void @_Z20dLineClosestApproachRK9btVector3S1_S1_S1_PfS2_(ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.vo = load float, ptr %i.d, align 4, !tbaa !18 ; 2 uses
  %i.vp = insertelement <2 x float> poison, float %i.ua, i64 0
  %i.vq = insertelement <2 x float> %i.vp, float %i.ud, i64 1
  %i.vr = insertelement <2 x float> poison, float %i.vo, i64 0
  %i.vs = shufflevector <2 x float> %i.vr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vq, <2 x float> %i.vs, <2 x float> %i.vk)
  store <2 x float> %i.vt, ptr %14, align 8, !tbaa !18
  %i.vu = tail call float @llvm.fmuladd.f32(float %i.uh, float %i.vo, float %i.vn)
  store float %i.vu, ptr %i.tg, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.vv = load <2 x float>, ptr %6, align 4, !tbaa !18
  %i.vw = fneg <2 x float> %i.vv
  %i.vx = load float, ptr %i.rt, align 4, !tbaa !18
  %i.vy = fneg float %i.vx
  %.sroa.3.12.vec.insert.i767 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vy, i64 0
  store <2 x float> %i.vw, ptr %17, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i767, ptr %i.vz, align 8
  %i.wa = load ptr, ptr %12, align 8, !tbaa !10
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 32
  %i.wc = load ptr, ptr %i.wb, align 8
  call void %i.wc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %14, float noundef %.14730926943)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  store i32 %.14679928939, ptr %8, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %bb.ck

bb.bi:                                            ; preds = %bb.bh
  %i.wd = icmp samesign ult i32 %.14679928939, 4  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  %i.we = load float, ptr %6, align 4, !tbaa !18  ; 2 uses
  br i1 %i.wd, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.wf = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.wg = load <2 x float>, ptr %i.wf, align 4, !tbaa !18
  %27 = shufflevector <2 x float> %i.wg, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %28 = insertelement <3 x float> %27, float %i.we, i64 1
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.wh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.wi = load <2 x float>, ptr %i.wh, align 4, !tbaa !18
  %29 = shufflevector <2 x float> %i.wi, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %30 = insertelement <3 x float> %29, float %i.we, i64 1
  %31 = fneg <3 x float> %30
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0659965 = phi ptr [ %i.b, %bb.bj ], [ %i.a, %bb.bk ] ; 3 uses
  %.0660963 = phi ptr [ %i.a, %bb.bj ], [ %i.b, %bb.bk ] ; 3 uses
  %.0661961 = phi ptr [ %3, %bb.bj ], [ %0, %bb.bk ] ; 2 uses
  %.0662959 = phi ptr [ %0, %bb.bj ], [ %3, %bb.bk ] ; 7 uses
  %.0663957 = phi ptr [ %4, %bb.bj ], [ %1, %bb.bk ] ; 17 uses
  %.0664955 = phi ptr [ %1, %bb.bj ], [ %4, %bb.bk ] ; 2 uses
  %32 = phi <3 x float> [ %28, %bb.bj ], [ %31, %bb.bk ] ; 6 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.0663957, i64 16
  %i.wk = getelementptr inbounds nuw i8, ptr %.0663957, i64 32
  %i.wl = load <2 x float>, ptr %.0663957, align 4, !tbaa !18
  %i.wm = load <2 x float>, ptr %i.wj, align 4, !tbaa !18
  %33 = shufflevector <3 x float> %32, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.wn = fmul <2 x float> %33, %i.wm
  %34 = shufflevector <3 x float> %32, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wl, <2 x float> %34, <2 x float> %i.wn)
  %i.wp = load <2 x float>, ptr %i.wk, align 4, !tbaa !18
  %35 = shufflevector <3 x float> %32, <3 x float> poison, <2 x i32> zeroinitializer
  %i.wq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wp, <2 x float> %35, <2 x float> %i.wo) ; 2 uses
  store <2 x float> %i.wq, ptr %18, align 8, !tbaa !18
  %i.wr = getelementptr inbounds nuw i8, ptr %.0663957, i64 8
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !18
  %i.wt = getelementptr inbounds nuw i8, ptr %.0663957, i64 24
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !18
  %i.wv = extractelement <3 x float> %32, i64 2   ; 2 uses
  %i.ww = fmul float %i.wv, %i.wu
  %36 = extractelement <3 x float> %32, i64 1     ; 2 uses
  %i.wx = tail call float @llvm.fmuladd.f32(float %i.ws, float %36, float %i.ww)
  %i.wy = getelementptr inbounds nuw i8, ptr %.0663957, i64 40
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !18
  %i.xa = extractelement <3 x float> %32, i64 0   ; 2 uses
  %i.xb = tail call noundef float @llvm.fmuladd.f32(float %i.wz, float %i.xa, float %i.wx) ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %18, i64 8
  store float %i.xb, ptr %i.xc, align 8, !tbaa !18
  %i.xd = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wq) ; 2 uses
  %i.xe = tail call noundef float @llvm.fabs.f32(float %i.xb) ; 2 uses
  %i.xf = extractelement <2 x float> %i.xd, i64 0 ; 2 uses
  %i.xg = extractelement <2 x float> %i.xd, i64 1 ; 2 uses
  %i.xh = fcmp ogt float %i.xg, %i.xf
  br i1 %i.xh, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.xi = fcmp ogt float %i.xg, %i.xe             ; 2 uses
  %. = select i1 %i.xi, i64 1, i64 2
  %.761 = select i1 %i.xi, i32 2, i32 1
  br label %.loopexit982

bb.bn:                                            ; preds = %bb.bl
  %i.xj = fcmp ogt float %i.xf, %i.xe             ; 3 uses
  %.762 = select i1 %i.xj, i64 0, i64 2
  %.764 = select i1 %i.xj, i32 2, i32 1
  %i.xk = zext i1 %i.xj to i64
  br label %.loopexit982

.loopexit982:                                     ; preds = %bb.bn, %bb.bm
  %.0658 = phi i64 [ %., %bb.bm ], [ %.762, %bb.bn ] ; 5 uses
  %.0657 = phi i64 [ 0, %bb.bm ], [ %i.xk, %bb.bn ] ; 5 uses
  %.0656 = phi i32 [ %.761, %bb.bm ], [ %.764, %bb.bn ] ; 2 uses
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %.0658
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !18
  %i.xn = fcmp olt float %i.xm, 0.000000e+00
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %.0659965, i64 %.0658
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !18 ; 2 uses
  %i.xq = fneg float %i.xp
  %.sink1133 = select i1 %i.xn, float %i.xp, float %i.xq ; 2 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %.0658
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !18
  %i.xt = load <2 x float>, ptr %.0661961, align 4, !tbaa !18
  %i.xu = load <2 x float>, ptr %.0662959, align 4, !tbaa !18
  %i.xv = fsub <2 x float> %i.xt, %i.xu
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %.0658
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 16
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !18
  %i.xz = insertelement <2 x float> poison, float %.sink1133, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yb = insertelement <2 x float> poison, float %i.xs, i64 0
  %i.yc = insertelement <2 x float> %i.yb, float %i.xy, i64 1
  %i.yd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ya, <2 x float> %i.yc, <2 x float> %i.xv) ; 3 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %.0661961, i64 8
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !18
  %i.yg = getelementptr inbounds nuw i8, ptr %.0662959, i64 8
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !18
  %i.yi = fsub float %i.yf, %i.yh
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %.0658
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 32
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !18
  %i.ym = tail call float @llvm.fmuladd.f32(float %.sink1133, float %i.yl, float %i.yi) ; 2 uses
  %.0655.v = select i1 %i.wd, i32 -1, i32 -4
  %.0655 = add nsw i32 %.0655.v, %.14679928939    ; 2 uses
  switch i32 %.0655, label %bb.bp [
    i32 0, label %bb.bq
    i32 1, label %bb.bo
  ]

bb.bo:                                            ; preds = %.loopexit982
  br label %bb.bq

bb.bp:                                            ; preds = %.loopexit982
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit982, %bb.bo, %bb.bp
  %.0654 = phi i64 [ 0, %bb.bp ], [ 0, %bb.bo ], [ 1, %.loopexit982 ] ; 2 uses
  %.0653 = phi i64 [ 1, %bb.bp ], [ 2, %bb.bo ], [ 2, %.loopexit982 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.0664955, i64 %.0654 ; 3 uses
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !18
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !18
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yn, i64 32
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !18
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %.0664955, i64 %.0653 ; 3 uses
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !18 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %i.yw = load float, ptr %i.yv, align 4, !tbaa !18 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yt, i64 32
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !18 ; 2 uses
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %.0657 ; 3 uses
  %i.za = load float, ptr %i.yz, align 4, !tbaa !18
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 16
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !18
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 32
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !18
  %i.zf = zext nneg i32 %.0656 to i64             ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %i.zf ; 3 uses
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !18
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !18
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zg, i64 32
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !18
  %i.zm = insertelement <2 x float> poison, float %i.yq, i64 0 ; 2 uses
  %i.zn = shufflevector <2 x float> %i.zm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zo = insertelement <2 x float> poison, float %i.zc, i64 0
  %i.zp = insertelement <2 x float> %i.zo, float %i.zj, i64 1 ; 2 uses
  %i.zq = fmul <2 x float> %i.zn, %i.zp
  %i.zr = insertelement <2 x float> poison, float %i.yo, i64 0 ; 2 uses
  %i.zs = shufflevector <2 x float> %i.zr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zt = insertelement <2 x float> poison, float %i.za, i64 0
  %i.zu = insertelement <2 x float> %i.zt, float %i.zh, i64 1 ; 2 uses
  %i.zv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zs, <2 x float> %i.zu, <2 x float> %i.zq)
  %i.zw = insertelement <2 x float> poison, float %i.ys, i64 0 ; 2 uses
  %i.zx = shufflevector <2 x float> %i.zw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zy = insertelement <2 x float> poison, float %i.ze, i64 0
  %i.zz = insertelement <2 x float> %i.zy, float %i.zl, i64 1 ; 2 uses
  %i.aaa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zx, <2 x float> %i.zz, <2 x float> %i.zv) ; 5 uses
  %i.aab = insertelement <2 x float> poison, float %i.yw, i64 0
  %i.aac = shufflevector <2 x float> %i.aab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aad = fmul <2 x float> %i.aac, %i.zp
  %i.aae = insertelement <2 x float> poison, float %i.yu, i64 0
  %i.aaf = shufflevector <2 x float> %i.aae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaf, <2 x float> %i.zu, <2 x float> %i.aad)
  %i.aah = insertelement <2 x float> poison, float %i.yy, i64 0
  %i.aai = shufflevector <2 x float> %i.aah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aai, <2 x float> %i.zz, <2 x float> %i.aag) ; 5 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %.0659965, i64 %.0657
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !18
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %.0659965, i64 %i.zf
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !18
  %i.aao = shufflevector <2 x float> %i.yd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aap = insertelement <2 x float> %i.zm, float %i.yw, i64 1
  %i.aaq = fmul <2 x float> %i.aao, %i.aap
  %i.aar = shufflevector <2 x float> %i.yd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aas = insertelement <2 x float> %i.zr, float %i.yu, i64 1
  %i.aat = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aar, <2 x float> %i.aas, <2 x float> %i.aaq)
  %i.aau = insertelement <2 x float> poison, float %i.ym, i64 0
  %i.aav = shufflevector <2 x float> %i.aau, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaw = insertelement <2 x float> %i.zw, float %i.yy, i64 1
  %i.aax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aav, <2 x float> %i.aaw, <2 x float> %i.aat) ; 4 uses
  %i.aay = shufflevector <2 x float> %i.aaa, <2 x float> %i.aaj, <2 x i32> <i32 0, i32 2>
  %i.aaz = insertelement <2 x float> poison, float %i.aal, i64 0
  %i.aba = shufflevector <2 x float> %i.aaz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abb = fmul <2 x float> %i.aay, %i.aba        ; 2 uses
  %i.abc = insertelement <2 x float> poison, float %i.aan, i64 0
  %i.abd = shufflevector <2 x float> %i.aaa, <2 x float> %i.aaj, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.abe = shufflevector <2 x float> %i.abc, <2 x float> poison, <4 x i32> zeroinitializer
  %i.abf = fmul <4 x float> %i.abd, %i.abe        ; 4 uses
  %i.abg = fsub <2 x float> %i.aax, %i.abb
  %i.abh = shufflevector <2 x float> %i.abg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.abi = fsub <4 x float> %i.abh, %i.abf
  %i.abj = fadd <4 x float> %i.abh, %i.abf
  %i.abk = shufflevector <4 x float> %i.abi, <4 x float> %i.abj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.abk, ptr %i.e, align 16, !tbaa !18
  %i.abl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.abm = fadd <2 x float> %i.aax, %i.abb
  %i.abn = shufflevector <2 x float> %i.abm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.abo = fadd <4 x float> %i.abn, %i.abf
  %i.abp = fsub <4 x float> %i.abn, %i.abf
  %i.abq = shufflevector <4 x float> %i.abo, <4 x float> %i.abp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.abq, ptr %i.abl, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %.0660963, i64 %.0654
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !18
  store float %i.abs, ptr %i.f, align 4, !tbaa !18
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %.0660963, i64 %.0653
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !18
  %i.abv = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store float %i.abu, ptr %i.abv, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.abw = call fastcc noundef i32 @_ZL18intersectRectQuad2PfS_S_(ptr noundef %i.f, ptr noundef %i.e, ptr noundef %i.g) ; 2 uses
  %i.abx = icmp slt i32 %i.abw, 1
  br i1 %i.abx, label %bb.cj, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  %i.aby = extractelement <2 x float> %i.aaj, i64 0
  %i.abz = fneg float %i.aby
  %i.aca = extractelement <2 x float> %i.aaa, i64 1
  %i.acb = fmul float %i.aca, %i.abz
  %i.acc = extractelement <2 x float> %i.aaj, i64 1
  %i.acd = extractelement <2 x float> %i.aaa, i64 0
  %i.ace = tail call float @llvm.fmuladd.f32(float %i.acd, float %i.acc, float %i.acb)
  %i.acf = fdiv float 1.000000e+00, %i.ace        ; 2 uses
  %i.acg = insertelement <2 x float> poison, float %i.acf, i64 0
  %i.ach = shufflevector <2 x float> %i.acg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aci = fmul <2 x float> %i.aaa, %i.ach
  %i.acj = fneg float %i.acf
  %i.ack = insertelement <2 x float> %i.ach, float %i.acj, i64 0
  %i.acl = fmul <2 x float> %i.aaj, %i.ack
  %i.acm = zext nneg i32 %.0655 to i64
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %.0660963, i64 %i.acm
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !18
  %i.acp = zext nneg i32 %.0656 to i64            ; 3 uses
  %wide.trip.count = zext nneg i32 %i.abw to i64
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %.0657
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !18
  %.phi.trans.insert1092 = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %i.acp
  %.pre1093 = load float, ptr %.phi.trans.insert1092, align 4, !tbaa !18
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %.0657
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 16
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !18
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %i.acp
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 16
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !18
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %.0657
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 32
  %i.acy = load float, ptr %i.acx, align 4, !tbaa !18
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %.0663957, i64 %i.acp
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 32
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !18
  %i.adc = insertelement <2 x float> poison, float %.pre1093, i64 0
  %i.add = insertelement <2 x float> %i.adc, float %i.acv, i64 1
  %i.ade = insertelement <2 x float> poison, float %.pre, i64 0
  %i.adf = insertelement <2 x float> %i.ade, float %i.acs, i64 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bu
  %indvars.iv = phi i64 [ 0, %bb.br ], [ %indvars.iv.next, %bb.bu ] ; 2 uses
  %.0643989 = phi i32 [ 0, %bb.br ], [ %.1644, %bb.bu ] ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.adg = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.adh = load <2 x float>, ptr %i.adg, align 8, !tbaa !18 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.adh, %i.aax
  %foldExtExtBinop1141 = fsub <2 x float> %i.adh, %i.aax ; 2 uses
  %i.adi = mul nsw i32 %.0643989, 3
  %i.adj = sext i32 %i.adi to i64                 ; 2 uses
  %i.adk = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.adj ; 4 uses
  %i.adl = fneg <2 x float> %foldExtExtBinop1141
  %i.adm = shufflevector <2 x float> %foldExtExtBinop1141, <2 x float> %i.adl, <2 x i32> <i32 1, i32 3>
  %i.adn = fmul <2 x float> %i.aci, %i.adm
  %i.ado = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acl, <2 x float> %i.ado, <2 x float> %i.adn) ; 4 uses
  %i.adq = shufflevector <2 x float> %i.adp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.adr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adq, <2 x float> %i.adf, <2 x float> %i.yd)
  %i.ads = shufflevector <2 x float> %i.adp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ads, <2 x float> %i.add, <2 x float> %i.adr)
  store <2 x float> %i.adt, ptr %i.adk, align 4, !tbaa !18
  %i.adu = extractelement <2 x float> %i.adp, i64 1
  %i.adv = tail call float @llvm.fmuladd.f32(float %i.adu, float %i.acy, float %i.ym)
  %i.adw = extractelement <2 x float> %i.adp, i64 0
  %i.adx = tail call float @llvm.fmuladd.f32(float %i.adw, float %i.adb, float %i.adv)
  %i.ady = getelementptr [4 x i8], ptr %i.h, i64 %i.adj
  %i.adz = getelementptr i8, ptr %i.ady, i64 8
  store float %i.adx, ptr %i.adz, align 4, !tbaa !18
  %i.aea = load float, ptr %i.adk, align 4, !tbaa !18
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adk, i64 4
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !18
  %i.aed = fmul float %i.wv, %i.aec
  %i.aee = tail call float @llvm.fmuladd.f32(float %36, float %i.aea, float %i.aed)
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !18
  %i.aeh = tail call noundef float @llvm.fmuladd.f32(float %i.xa, float %i.aeg, float %i.aee)
  %i.aei = fsub float %i.aco, %i.aeh              ; 2 uses
  %i.aej = sext i32 %.0643989 to i64
  %i.aek = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aej
  store float %i.aei, ptr %i.aek, align 4, !tbaa !18
  %i.ael = fcmp ult float %i.aei, 0.000000e+00
  br i1 %i.ael, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.aem = shl nsw i32 %.0643989, 1
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.aen
  store <2 x float> %i.adh, ptr %i.aeo, align 8, !tbaa !18
  %i.aep = add nsw i32 %.0643989, 1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1644 = phi i32 [ %i.aep, %bb.bt ], [ %.0643989, %bb.bs ] ; 10 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.bv, label %bb.bs, !llvm.loop !31

bb.bv:                                            ; preds = %bb.bu
  %i.aeq = icmp slt i32 %.1644, 1
  br i1 %i.aeq, label %bb.ci, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %spec.select = tail call i32 @llvm.smin.i32(i32 %9, i32 %.1644)
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 1) ; 4 uses
  %.not760 = icmp samesign ugt i32 %.1644, %spec.store.select
  br i1 %.not760, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.aer = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %wide.trip.count1034 = zext nneg i32 %.1644 to i64 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.0662959, i64 8 ; 2 uses
  br i1 %i.wd, label %.lr.ph994, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bx
  %i.aet = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.aeu = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %bb.bz

.lr.ph994:                                        ; preds = %bb.bx
  %i.aev = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.aew = getelementptr inbounds nuw i8, ptr %19, i64 8
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph994, %bb.by
  %indvars.iv1030 = phi i64 [ 0, %.lr.ph994 ], [ %indvars.iv.next1031, %bb.by ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  %i.aex = mul nuw nsw i64 %indvars.iv1030, 3     ; 2 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aex
  %i.aez = load <2 x float>, ptr %i.aey, align 4, !tbaa !18
  %i.afa = load <2 x float>, ptr %.0662959, align 4, !tbaa !18
  %i.afb = fadd <2 x float> %i.aez, %i.afa
  store <2 x float> %i.afb, ptr %19, align 8, !tbaa !18
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aex
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 8
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !18
  %i.aff = load float, ptr %i.aes, align 4, !tbaa !18
  %i.afg = fadd float %i.afe, %i.aff
  store float %i.afg, ptr %i.aew, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  %i.afh = load <2 x float>, ptr %6, align 4, !tbaa !18
  %i.afi = fneg <2 x float> %i.afh
  %i.afj = load float, ptr %i.aer, align 4, !tbaa !18
  %i.afk = fneg float %i.afj
  %.sroa.3.12.vec.insert.i772 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.afk, i64 0
  store <2 x float> %i.afi, ptr %20, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i772, ptr %i.aev, align 8
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv1030
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !18
  %i.afn = fneg float %i.afm
  %i.afo = load ptr, ptr %12, align 8, !tbaa !10
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 32
  %i.afq = load ptr, ptr %i.afp, align 8
  call void %i.afq(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %19, float noundef %i.afn)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  %indvars.iv.next1031 = add nuw nsw i64 %indvars.iv1030, 1 ; 2 uses
  %exitcond1035.not = icmp eq i64 %indvars.iv.next1031, %wide.trip.count1034
  br i1 %exitcond1035.not, label %.loopexit, label %bb.by, !llvm.loop !32

bb.bz:                                            ; preds = %.lr.ph, %bb.bz
  %indvars.iv1020 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1021, %bb.bz ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #11
  %i.afr = mul nuw nsw i64 %indvars.iv1020, 3     ; 2 uses
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv1020
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !18 ; 3 uses
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.afr
  %i.afv = load <2 x float>, ptr %i.afu, align 4, !tbaa !18
  %i.afw = load <2 x float>, ptr %.0662959, align 4, !tbaa !18
  %i.afx = fadd <2 x float> %i.afv, %i.afw
  %i.afy = load <2 x float>, ptr %6, align 4, !tbaa !18
  %i.afz = fneg <2 x float> %i.afy                ; 2 uses
  %i.aga = insertelement <2 x float> poison, float %i.aft, i64 0
  %i.agb = shufflevector <2 x float> %i.aga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afz, <2 x float> %i.agb, <2 x float> %i.afx)
  store <2 x float> %i.agc, ptr %21, align 8, !tbaa !18
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.afr
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %i.agf = load float, ptr %i.age, align 4, !tbaa !18
  %i.agg = load float, ptr %i.aes, align 4, !tbaa !18
  %i.agh = fadd float %i.agf, %i.agg
  %i.agi = load float, ptr %i.aer, align 4, !tbaa !18
  %i.agj = fneg float %i.agi                      ; 2 uses
  %i.agk = call float @llvm.fmuladd.f32(float %i.agj, float %i.aft, float %i.agh)
  store float %i.agk, ptr %i.aeu, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #11
  %.sroa.3.12.vec.insert.i777 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agj, i64 0
  store <2 x float> %i.afz, ptr %22, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i777, ptr %i.aet, align 8
  %i.agl = fneg float %i.aft
  %i.agm = load ptr, ptr %12, align 8, !tbaa !10
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 32
  %i.ago = load ptr, ptr %i.agn, align 8
  call void %i.ago(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef nonnull align 4 dereferenceable(16) %21, float noundef %i.agl)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  %indvars.iv.next1021 = add nuw nsw i64 %indvars.iv1020, 1 ; 2 uses
  %exitcond1025.not = icmp eq i64 %indvars.iv.next1021, %wide.trip.count1034
  br i1 %exitcond1025.not, label %.loopexit, label %bb.bz, !llvm.loop !33

bb.ca:                                            ; preds = %bb.bw
  %i.agp = load float, ptr %i.i, align 16, !tbaa !18 ; 2 uses
  %wide.trip.count1040 = zext nneg i32 %.1644 to i64
  %i.agq = add nsw i64 %wide.trip.count1040, -1   ; 3 uses
  %xtraiter = and i64 %i.agq, 1
  %i.agr = icmp eq i32 %.1644, 2
  br i1 %i.agr, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ca
  %unroll_iter = and i64 %i.agq, -2
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.new
  %indvars.iv1036 = phi i64 [ 1, %.new ], [ %indvars.iv.next1037.1, %bb.cb ] ; 4 uses
  %.0997 = phi float [ %i.agp, %.new ], [ %.1.1, %bb.cb ] ; 2 uses
  %.0641996 = phi i32 [ 0, %.new ], [ %.1642.1, %bb.cb ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.cb ]
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv1036
  %i.agt = load float, ptr %i.ags, align 4, !tbaa !18 ; 2 uses
  %i.agu = fcmp ogt float %i.agt, %.0997          ; 2 uses
  %i.agv = trunc nuw nsw i64 %indvars.iv1036 to i32
  %.1642 = select i1 %i.agu, i32 %i.agv, i32 %.0641996
  %.1 = select i1 %i.agu, float %i.agt, float %.0997 ; 2 uses
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 1 ; 2 uses
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next1037
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !18 ; 2 uses
  %i.agy = fcmp ogt float %i.agx, %.1             ; 2 uses
  %i.agz = trunc nuw nsw i64 %indvars.iv.next1037 to i32
  %.1642.1 = select i1 %i.agy, i32 %i.agz, i32 %.1642 ; 3 uses
  %.1.1 = select i1 %i.agy, float %i.agx, float %.1 ; 2 uses
  %indvars.iv.next1037.1 = add nuw nsw i64 %indvars.iv1036, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.cb, !llvm.loop !34

.unr-lcssa:                                       ; preds = %bb.cb
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.cc, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.ca
  %indvars.iv1036.epil.init = phi i64 [ 1, %bb.ca ], [ %indvars.iv.next1037.1, %.unr-lcssa ] ; 2 uses
  %.0997.epil.init = phi float [ %i.agp, %bb.ca ], [ %.1.1, %.unr-lcssa ]
  %.0641996.epil.init = phi i32 [ 0, %bb.ca ], [ %.1642.1, %.unr-lcssa ]
  %lcmp.mod1145 = trunc i64 %i.agq to i1
  tail call void @llvm.assume(i1 %lcmp.mod1145)
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv1036.epil.init
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !18
  %i.ahc = fcmp ogt float %i.ahb, %.0997.epil.init
  %i.ahd = trunc nuw nsw i64 %indvars.iv1036.epil.init to i32
  %.1642.epil = select i1 %i.ahc, i32 %i.ahd, i32 %.0641996.epil.init
  br label %bb.cc

bb.cc:                                            ; preds = %.unr-lcssa, %.epil.preheader
  %.1642.lcssa = phi i32 [ %.1642.1, %.unr-lcssa ], [ %.1642.epil, %.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  call void @_Z11cullPoints2iPfiiPi(i32 noundef %.1644, ptr noundef nonnull %i.g, i32 noundef %spec.store.select, i32 noundef %.1642.lcssa, ptr noundef nonnull %i.j)
  %i.ahe = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ahg = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ahh = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ahi = getelementptr inbounds nuw i8, ptr %24, i64 8
  %wide.trip.count1049 = zext nneg i32 %spec.store.select to i64
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0662959, i64 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cg
  %indvars.iv1046 = phi i64 [ 0, %bb.cc ], [ %indvars.iv.next1047, %bb.cg ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv1046
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !20 ; 3 uses
  %i.ahm = mul nsw i32 %i.ahl, 3
  %i.ahn = sext i32 %i.ahm to i64                 ; 2 uses
  %i.aho = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ahn
  %i.ahp = load <2 x float>, ptr %i.aho, align 4, !tbaa !18
end_hunk_0
