Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btRaycastVehicle?download=true
inline.NumInlined: 513
inline.NumDeleted: 147
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16btRaycastVehicle14updateFrictionEf:bb.a
  br i1 %i.qx, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.qy = getelementptr inbounds nuw [296 x i8], ptr %i.qq, i64 %indvars.iv260
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 292 ; 2 uses
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !132 ; 2 uses
  %i.rb = fcmp olt float %i.ra, 1.000000e+00
  br i1 %i.rb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv260 ; 2 uses
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !51
  %i.re = fmul float %i.ra, %i.rd
  store float %i.re, ptr %i.rc, align 4, !tbaa !51
  %i.rf = load float, ptr %i.qz, align 4, !tbaa !132
  %i.rg = load float, ptr %i.qv, align 4, !tbaa !51
  %i.rh = fmul float %i.rf, %i.rg
  store float %i.rh, ptr %i.qv, align 4, !tbaa !51
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %bb.z
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit235, label %bb.y, !llvm.loop !127

.loopexit235:                                     ; preds = %bb.ab, %._crit_edge
  %i.ri = icmp sgt i32 %i.qs, 0
  br i1 %i.ri, label %.lr.ph251, label %.loopexit

.lr.ph251:                                        ; preds = %.loopexit235
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ro = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.rq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.rs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ru = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph251, %bb.ag
  %indvars.iv266 = phi i64 [ 0, %.lr.ph251 ], [ %indvars.iv.next267, %bb.ag ] ; 7 uses
  %i.rw = load ptr, ptr %i.rj, align 8, !tbaa !43
  %i.rx = getelementptr inbounds nuw [296 x i8], ptr %i.rw, i64 %indvars.iv266 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16 ; 2 uses
  %i.rz = load ptr, ptr %i.rk, align 8, !tbaa !46 ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 56
  %i.sb = load <2 x float>, ptr %i.ry, align 4, !tbaa !51
  %i.sc = load <2 x float>, ptr %i.sa, align 4, !tbaa !51
  %i.sd = fsub <2 x float> %i.sb, %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.rx, i64 24 ; 2 uses
  %i.sf = load float, ptr %i.se, align 4, !tbaa !51
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rz, i64 64
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !51
  %i.si = fsub float %i.sf, %i.sh
  %.sroa.3.12.vec.insert.i189 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.si, i64 0
  store <2 x float> %i.sd, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i189, ptr %i.rl, align 8
  %i.sj = load ptr, ptr %i.rm, align 8, !tbaa !30
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv266 ; 2 uses
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !51
  %i.sm = fcmp une float %i.sl, 0.000000e+00
  br i1 %i.sm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.sn = load ptr, ptr %i.rn, align 8, !tbaa !23
  %i.so = getelementptr inbounds nuw [16 x i8], ptr %i.sn, i64 %indvars.iv266 ; 2 uses
  %i.sp = load float, ptr %i.sk, align 4, !tbaa !51 ; 2 uses
  %i.sq = load <2 x float>, ptr %i.so, align 4, !tbaa !51
  %i.sr = insertelement <2 x float> poison, float %i.sp, i64 0
  %i.ss = shufflevector <2 x float> %i.sr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.st = fmul <2 x float> %i.ss, %i.sq
  %i.su = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.sv = load float, ptr %i.su, align 4, !tbaa !51
  %i.sw = fmul float %i.sp, %i.sv
  %.sroa.3.12.vec.insert.i194 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sw, i64 0
  store <2 x float> %i.st, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i194, ptr %i.ro, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %i.rz, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.sx = load ptr, ptr %i.rp, align 8, !tbaa !30
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv266 ; 2 uses
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !51
  %i.ta = fcmp une float %i.sz, 0.000000e+00
  br i1 %i.ta, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.tb = load ptr, ptr %i.rj, align 8, !tbaa !43
  %i.tc = getelementptr inbounds nuw [296 x i8], ptr %i.tb, i64 %indvars.iv266
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 88
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !76 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 56
  %i.tg = load <2 x float>, ptr %i.ry, align 4, !tbaa !51
  %i.th = load <2 x float>, ptr %i.tf, align 4, !tbaa !51
  %i.ti = fsub <2 x float> %i.tg, %i.th
  %i.tj = load float, ptr %i.se, align 4, !tbaa !51
  %i.tk = getelementptr inbounds nuw i8, ptr %i.te, i64 64
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !51
  %i.tm = fsub float %i.tj, %i.tl
  %.sroa.3.12.vec.insert.i199 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.tm, i64 0
  store <2 x float> %i.ti, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i199, ptr %i.rq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.tn = load ptr, ptr %i.rr, align 8, !tbaa !23
  %i.to = getelementptr inbounds nuw [16 x i8], ptr %i.tn, i64 %indvars.iv266 ; 2 uses
  %i.tp = load float, ptr %i.sy, align 4, !tbaa !51 ; 2 uses
  %i.tq = load <2 x float>, ptr %i.to, align 4, !tbaa !51
  %i.tr = insertelement <2 x float> poison, float %i.tp, i64 0
  %i.ts = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tt = fmul <2 x float> %i.ts, %i.tq
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !51
  %i.tw = fmul float %i.tp, %i.tv
  %.sroa.3.12.vec.insert.i204 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.tw, i64 0
  store <2 x float> %i.tt, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i204, ptr %i.rs, align 8
  %i.tx = load ptr, ptr %i.rk, align 8, !tbaa !46 ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.tz = load i32, ptr %i.rt, align 4, !tbaa !48
  %i.ua = sext i32 %i.tz to i64                   ; 3 uses
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.ua
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tx, i64 24
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.ua
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tx, i64 40
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.ua
  %i.ug = load float, ptr %i.ub, align 4, !tbaa !51 ; 2 uses
  %i.uh = load float, ptr %i.ud, align 4, !tbaa !51 ; 2 uses
  %i.ui = load float, ptr %i.uf, align 4, !tbaa !51 ; 2 uses
  %i.uj = load float, ptr %4, align 8, !tbaa !51  ; 2 uses
  %i.uk = load float, ptr %i.ru, align 4, !tbaa !51 ; 2 uses
  %i.ul = fmul float %i.uh, %i.uk
  %i.um = call float @llvm.fmuladd.f32(float %i.ug, float %i.uj, float %i.ul)
  %i.un = load float, ptr %i.rl, align 8, !tbaa !51 ; 2 uses
  %i.uo = call noundef float @llvm.fmuladd.f32(float %i.ui, float %i.un, float %i.um)
  %i.up = getelementptr inbounds nuw i8, ptr %i.rx, i64 248
  %i.uq = load float, ptr %i.up, align 8, !tbaa !134
  %i.ur = fsub float 1.000000e+00, %i.uq
  %i.us = fmul float %i.uo, %i.ur                 ; 3 uses
  %i.ut = fmul float %i.ug, %i.us
  %i.uu = fmul float %i.uh, %i.us
  %i.uv = fmul float %i.ui, %i.us
  %i.uw = fsub float %i.uj, %i.ut
  store float %i.uw, ptr %4, align 8, !tbaa !51
  %i.ux = fsub float %i.uk, %i.uu
  store float %i.ux, ptr %i.ru, align 4, !tbaa !51
  %i.uy = fsub float %i.un, %i.uv
  store float %i.uy, ptr %i.rl, align 8, !tbaa !51
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %i.tx, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.uz = load <2 x float>, ptr %7, align 8, !tbaa !51
  %i.va = fneg <2 x float> %i.uz
  %i.vb = load float, ptr %i.rs, align 8, !tbaa !51
  %i.vc = fneg float %i.vb
  %.sroa.3.12.vec.insert.i219 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vc, i64 0
  store <2 x float> %i.va, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i219, ptr %i.rv, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %i.te, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.vd = load i32, ptr %i.a, align 4, !tbaa !44
  %i.ve = sext i32 %i.vd to i64
  %i.vf = icmp slt i64 %indvars.iv.next267, %i.ve
  br i1 %i.vf, label %bb.ac, label %.loopexit, !llvm.loop !128

.loopexit:                                        ; preds = %bb.ag, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit175, %.preheader236, %.loopexit235, %bb.a
  ret void
}

declare void @_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff(ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %5) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !85
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !53
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %5, ptr %i.d, align 4, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load float, ptr %i.e, align 4, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.i = load float, ptr %i.h, align 4, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load float, ptr %i.k, align 4, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 372
  %i.p = load float, ptr %i.o, align 4, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.r = load float, ptr %i.q, align 4, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 404
  %i.t = load float, ptr %i.s, align 4, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.v = load float, ptr %i.u, align 4, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.x = load float, ptr %i.w, align 4, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.z = load float, ptr %i.y, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 380
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.af = load float, ptr %i.ae, align 4, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 452
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  %6 = load float, ptr %i.ak, align 4, !tbaa !51
  %i.al = load float, ptr %3, align 4, !tbaa !51  ; 2 uses
  %7 = fsub float %i.al, %i.f                     ; 4 uses
  %i.am = load float, ptr %i.g, align 4, !tbaa !51 ; 2 uses
  %i.an = fsub float %i.am, %i.i                  ; 4 uses
  %i.ao = load float, ptr %i.j, align 4, !tbaa !51 ; 2 uses
  %i.ap = fsub float %i.ao, %i.l                  ; 4 uses
  %i.aq = load float, ptr %i.m, align 4, !tbaa !51 ; 5 uses
  %i.ar = load float, ptr %i.n, align 4, !tbaa !51 ; 5 uses
  %i.as = fneg float %i.ar                        ; 2 uses
  %i.at = fmul float %i.ap, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.an, float %i.aq, float %i.at) ; 3 uses
  %i.av = load float, ptr %4, align 4, !tbaa !51  ; 4 uses
  %i.aw = fneg float %i.aq                        ; 2 uses
  %i.ax = fmul float %7, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.av, float %i.ax) ; 3 uses
  %i.az = fneg float %i.av                        ; 2 uses
  %i.ba = fmul float %i.an, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %7, float %i.ar, float %i.ba) ; 3 uses
  %i.bc = fmul float %i.ay, %i.r
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.p, float %i.au, float %i.bc)
  %i.be = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.bb, float %i.bd) ; 2 uses
  %i.bf = fmul float %i.ay, %i.x
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.v, float %i.au, float %i.bf)
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.bb, float %i.bg) ; 2 uses
  %i.bi = fmul float %i.ay, %i.ad
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.au, float %i.bi)
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.bb, float %i.bj) ; 2 uses
  %i.bl = fneg float %i.an
  %i.bm = fmul float %i.bk, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.ap, float %i.bm)
  %i.bo = fneg float %i.ap
  %i.bp = fmul float %i.be, %i.bo
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bk, float %7, float %i.bp)
  %8 = fneg float %7
  %i.br = fmul float %i.bh, %8
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.be, float %i.an, float %i.br)
  %i.bt = load float, ptr %i.ai, align 4, !tbaa !51
  %i.bu = fsub float %i.al, %i.bt                 ; 3 uses
  %i.bv = load float, ptr %i.aj, align 4, !tbaa !51
  %i.bw = fsub float %i.am, %i.bv                 ; 3 uses
  %i.bx = fsub float %i.ao, %6                    ; 3 uses
  %i.by = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.bz = insertelement <4 x float> %i.by, float %i.bx, i64 1
  %i.ca = insertelement <4 x float> %i.bz, float %i.bu, i64 2
  %i.cb = insertelement <4 x float> %i.ca, float %i.bw, i64 3 ; 2 uses
  %i.cc = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.cd = insertelement <4 x float> %i.cc, float %i.as, i64 1
  %i.ce = insertelement <4 x float> %i.cd, float %i.aw, i64 2
  %i.cf = insertelement <4 x float> %i.ce, float %i.az, i64 3
  %i.cg = fmul <4 x float> %i.cb, %i.cf
  %i.ch = insertelement <4 x float> poison, float %i.av, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.aq, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.ar, i64 2
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.cl = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> %i.cb, <4 x i32> <i32 0, i32 7, i32 5, i32 6>
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> %i.cm, <4 x float> %i.cg) ; 4 uses
  %i.co = extractelement <4 x float> %i.cn, i64 0
  %i.cp = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.bs, float %i.co)
  %i.cq = fadd float %i.ah, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 372
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !51
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 388
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !51
  %i.cv = extractelement <4 x float> %i.cn, i64 2 ; 3 uses
  %i.cw = fmul float %i.cv, %i.cu
  %i.cx = extractelement <4 x float> %i.cn, i64 1 ; 3 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cx, float %i.cw)
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 404
  %i.da = load float, ptr %i.cz, align 4, !tbaa !51
  %i.db = extractelement <4 x float> %i.cn, i64 3 ; 3 uses
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %i.da, float %i.db, float %i.cy) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 376
  %i.de = load float, ptr %i.dd, align 4, !tbaa !51
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 392
  %i.dg = load float, ptr %i.df, align 4, !tbaa !51
  %i.dh = fmul float %i.cv, %i.dg
  %i.di = tail call float @llvm.fmuladd.f32(float %i.de, float %i.cx, float %i.dh)
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !51
  %i.dl = tail call noundef float @llvm.fmuladd.f32(float %i.dk, float %i.db, float %i.di) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 380
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 396
  %i.dp = load float, ptr %i.do, align 4, !tbaa !51
  %i.dq = fmul float %i.cv, %i.dp
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.cx, float %i.dq)
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 412
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !51
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.db, float %i.dr) ; 2 uses
  %i.dv = fneg float %i.bw
  %i.dw = fmul float %i.du, %i.dv
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.bx, float %i.dw)
  %i.dy = fneg float %i.bx
  %i.dz = fmul float %i.dc, %i.dy
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.du, float %i.bu, float %i.dz)
  %i.eb = fneg float %i.bu
  %i.ec = fmul float %i.dl, %i.eb
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.bw, float %i.ec)
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 452
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !79
  %i.eg = fmul float %i.ar, %i.ea
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.av, float %i.dx, float %i.eg)
  %i.ei = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.ed, float %i.eh)
  %i.ej = fadd float %i.ef, %i.ei
  %i.ek = fadd float %i.cq, %i.ej
  %i.el = fdiv float 1.000000e+00, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.el, ptr %i.em, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btRaycastVehicle9debugDrawEP12btIDebugDraw(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr noundef %1) unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 4           ; 7 uses
  %3 = alloca %class.btVector3, align 8           ; 7 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw [296 x i8], ptr %i.j, i64 %indvars.iv ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.m = load i8, ptr %i.l, align 4, !tbaa !61, !range !18, !noundef !55
  %i.n = trunc nuw i8 %i.m to i1
  %. = select i1 %i.n, float 0.000000e+00, float 1.000000e+00
  store float %., ptr %2, align 4, !tbaa !51
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.d, align 4, !tbaa !51
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !53
  %i.q = load i32, ptr %i.g, align 8, !tbaa !47
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.r
  %i.x = load float, ptr %i.s, align 4, !tbaa !51
  %i.y = load float, ptr %i.u, align 4, !tbaa !51
  %i.z = load float, ptr %i.w, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = load <2 x float>, ptr %3, align 8, !tbaa !51
  %i.ab = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.y, i64 1
  %i.ad = fadd <2 x float> %i.ac, %i.aa
  %i.ae = load float, ptr %i.h, align 8, !tbaa !51
  %i.af = fadd float %i.z, %i.ae
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %i.ad, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.i, align 8
  %i.ag = load ptr, ptr %1, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw [296 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %1, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !44
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !135
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN25btDefaultVehicleRaycaster7castRayERK9btVector3S2_RN18btVehicleRaycaster24btVehicleRaycasterResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(36) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.btCollisionWorld::ClosestRayResultCallback", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.a, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.c, align 8, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 -1, ptr %i.d, align 4, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !136
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN16btCollisionWorld24ClosestRayResultCallbackE, i64 16), ptr %4, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !53
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(121) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(36) %4)
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !92   ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %i.o = load i32, ptr %i.n, align 8, !tbaa !141
  %i.p = and i32 %i.o, 2
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.r = load i32, ptr %i.q, align 8, !tbaa !142
  %i.s = and i32 %i.r, 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !53
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
end_hunk_0
