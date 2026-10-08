Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN10btSoftBody22appendDeformableAnchorEiP11btRigidBody:bb.a
  %i.eh = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.dt, i64 1
  %i.ej = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ek, <2 x float> %i.eg)
  %i.em = load float, ptr %i.cn, align 8, !tbaa !253
  %i.en = load float, ptr %i.dp, align 4, !tbaa !253
  %i.eo = fmul float %i.dw, %i.en
  %i.ep = call float @llvm.fmuladd.f32(float %i.em, float %i.du, float %i.eo)
  %i.eq = load float, ptr %i.cq, align 8, !tbaa !253
  %i.er = call noundef float @llvm.fmuladd.f32(float %i.eq, float %i.dx, float %i.ep)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.er, i64 0
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %i.el, ptr %i.es, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.53.0..sroa_idx, align 8, !tbaa !259
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.do, ptr %i.et, align 8, !tbaa !351
  %i.eu = load ptr, ptr %i.bv, align 8, !tbaa !170
  %i.ev = getelementptr inbounds [256 x i8], ptr %i.eu, i64 %i.bx
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 848 ; 2 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !353
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !354
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.fa = load float, ptr %i.ez, align 8, !tbaa !355
  %i.fb = fmul float %i.ey, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 128
  store float %i.ca, ptr %i.fc, align 8, !tbaa !356
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 132
  store float %i.fb, ptr %i.fd, align 4, !tbaa !357
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !290
  %i.fg = and i32 %i.ff, 3
  %.not47 = icmp eq i32 %i.fg, 0
  %.in.v = select i1 %.not47, i64 452, i64 456
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.fh = load float, ptr %.in, align 4, !tbaa !253
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 136
  store float %i.fh, ptr %i.fi, align 8, !tbaa !358
  %i.fj = load atomic i8, ptr @_ZGVZN10btSoftBody22appendDeformableAnchorEiP11btRigidBodyE9iwiStatic acquire, align 8
  %i.fk = icmp eq i8 %i.fj, 0
  br i1 %i.fk, label %bb.c, label %bb.e, !prof !359

bb.c:                                             ; preds = %bb.b
  %i.fl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN10btSoftBody22appendDeformableAnchorEiP11btRigidBodyE9iwiStatic) #39
  %.not = icmp eq i32 %i.fl, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN10btSoftBody22appendDeformableAnchorEiP11btRigidBodyE9iwiStatic, i8 0, i64 48, i1 false)
  %i.fm = call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZN10btSoftBody22appendDeformableAnchorEiP11btRigidBodyE9iwiStatic) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN10btSoftBody22appendDeformableAnchorEiP11btRigidBodyE9iwiStatic) #39
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 372
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.fo = load <2 x float>, ptr %i.ci, align 8, !tbaa !253
  %i.fp = load <2 x float>, ptr %i.cj, align 8, !tbaa !253 ; 3 uses
  %i.fq = fsub <2 x float> %i.fo, %i.fp
  %i.fr = load float, ptr %i.ck, align 8, !tbaa !253
  %i.fs = load float, ptr %i.cl, align 8, !tbaa !253 ; 2 uses
  %i.ft = fsub float %i.fr, %i.fs
  %.sroa.3.12.vec.insert.i36 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ft, i64 0
  store <2 x float> %i.fq, ptr %6, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i36, ptr %i.fu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call fastcc void @_ZL13ImpulseMatrixfffRK11btMatrix3x3RK9btVector3(ptr dead_on_unwind noalias writable align 4 %7, float noundef 1.000000e+00, float noundef %i.ca, float noundef %i.cc, ptr noundef nonnull align 4 dereferenceable(48) %i.fn, ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fv, ptr noundef nonnull align 4 dereferenceable(48) %7, i64 16, i1 false), !tbaa.struct !260
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 4 dereferenceable(16) %i.fw, i64 16, i1 false), !tbaa.struct !260
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 4 dereferenceable(16) %i.fy, i64 16, i1 false), !tbaa.struct !260
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !260
  %i.gb = load float, ptr %i.co, align 8, !tbaa !253, !noalias !653
  %i.gc = load float, ptr %i.cp, align 8, !tbaa !253, !noalias !653
  %i.gd = load float, ptr %i.cq, align 8, !tbaa !253, !noalias !653
  %i.ge = extractelement <2 x float> %i.fp, i64 0
  %i.gf = extractelement <2 x float> %i.fp, i64 1
  %i.gg = load ptr, ptr %i.bv, align 8, !tbaa !170
  %i.gh = getelementptr inbounds [256 x i8], ptr %i.gg, i64 %i.bx ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gk = load <2 x float>, ptr %i.cf, align 8, !tbaa !253, !noalias !653 ; 2 uses
  %i.gl = load <2 x float>, ptr %i.cm, align 8, !tbaa !253, !noalias !653 ; 2 uses
  %i.gm = load <2 x float>, ptr %i.cn, align 8, !tbaa !253, !noalias !653 ; 2 uses
  %i.gn = fneg float %i.ge                        ; 2 uses
  %i.go = fneg float %i.gf                        ; 2 uses
  %i.gp = fneg float %i.fs
  %i.gq = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x float> %i.gl, %i.gr
  %i.gt = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.gu, <2 x float> %i.gs)
  %i.gw = insertelement <2 x float> poison, float %i.gp, i64 0 ; 2 uses
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.gx, <2 x float> %i.gv)
  %i.gz = load float, ptr %i.gj, align 4, !tbaa !253 ; 2 uses
  %i.ha = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = load <2 x float>, ptr %i.gi, align 4, !tbaa !253 ; 4 uses
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.he = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hf = fmul <2 x float> %i.gl, %i.he
  %i.hg = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.gk, <2 x float> %i.hf)
  %i.hi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.gm, <2 x float> %i.hh)
  %i.hj = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = insertelement <2 x float> %i.hc, float %i.go, i64 0
  %i.hm = fmul <2 x float> %i.hk, %i.hl
  %i.hn = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = insertelement <2 x float> %i.hd, float %i.gn, i64 0
  %i.hq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.hp, <2 x float> %i.hm)
  %i.hr = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ht = insertelement <2 x float> %i.gw, float %i.gz, i64 1
  %i.hu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hs, <2 x float> %i.ht, <2 x float> %i.hq) ; 2 uses
  %i.hv = fadd <2 x float> %i.gy, %i.hi
  %shift = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.hu, %shift
  %.sroa.3.12.vec.insert.i4.i.i49 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 856
  store <2 x float> %i.hv, ptr %i.hw, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 864
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i49, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !259
  %i.hx = load ptr, ptr %i.ew, align 8, !tbaa !353
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 132 ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 4
  %i.ia = or i8 %i.hz, 1
  store i8 %i.ia, ptr %i.hy, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 1216
  invoke void @_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.ib, ptr noundef nonnull align 8 dereferenceable(872) %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 608
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.ic) #39
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 400
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.id) #39
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 192
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.ie) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  ret void

bb.g:                                             ; preds = %bb.a
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.if, %bb.g ], [ %i.ig, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @_ZN10btSoftBody22DeformableRigidContactD2Ev(ptr noundef nonnull align 8 dead_on_return(872) dereferenceable(872) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3PK16btCollisionShapeRS1_f(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !253
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !253
  %i.e = fdiv float 1.000000e+00, %i.b            ; 2 uses
  %i.f = load <2 x float>, ptr %1, align 4, !tbaa !253
  %i.g = insertelement <2 x float> poison, float %i.e, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x float> %i.h, %i.f
  %i.j = fmul float %i.e, %i.d
  %i.k = fdiv <2 x float> %i.i, splat (float 3.000000e+00) ; 3 uses
  %i.l = fcmp olt <2 x float> %i.k, zeroinitializer
  %i.m = fsub <2 x float> splat (float 1.000000e+00), %i.k
  %i.n = fptosi <2 x float> %i.m to <2 x i32>
  %i.o = select <2 x i1> %i.l, <2 x i32> %i.n, <2 x i32> zeroinitializer ; 3 uses
  %i.p = sitofp <2 x i32> %i.o to <2 x float>
  %i.q = fadd <2 x float> %i.k, %i.p              ; 2 uses
  %i.r = fptosi <2 x float> %i.q to <2 x i32>     ; 3 uses
  %i.s = sitofp <2 x i32> %i.r to <2 x float>
  %i.t = fsub <2 x float> %i.q, %i.s
  %i.u = fmul <2 x float> %i.t, splat (float 3.000000e+00) ; 2 uses
  %i.v = fptosi <2 x float> %i.u to <2 x i32>     ; 3 uses
  %i.w = sitofp <2 x i32> %i.v to <2 x float>
  %foldExtExtBinop = sub nsw <2 x i32> %i.r, %i.o
  %5 = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 4 uses
  %i.x = extractelement <2 x i32> %i.v, i64 0     ; 2 uses
  %.sroa.5.0.insert.ext.i = zext i32 %i.x to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %i.y = fsub <2 x float> %i.u, %i.w              ; 5 uses
  %foldExtExtBinop163 = sub nsw <2 x i32> %i.r, %i.o
  %6 = extractelement <2 x i32> %foldExtExtBinop163, i64 1 ; 4 uses
  %i.z = extractelement <2 x i32> %i.v, i64 1     ; 2 uses
  %.sroa.5.0.insert.ext.i138 = zext i32 %i.z to i64
  %.sroa.5.0.insert.shift.i139 = shl nuw i64 %.sroa.5.0.insert.ext.i138, 32
  %i.aa = fdiv float %i.j, 3.000000e+00           ; 3 uses
  %i.ab = fcmp olt float %i.aa, 0.000000e+00
  %i.ac = fsub float 1.000000e+00, %i.aa
  %i.ad = fptosi float %i.ac to i32
  %i.ae = select i1 %i.ab, i32 %i.ad, i32 0       ; 2 uses
  %i.af = sitofp i32 %i.ae to float
  %i.ag = fadd float %i.aa, %i.af                 ; 2 uses
  %i.ah = fptosi float %i.ag to i32               ; 2 uses
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fsub float %i.ag, %i.ai
  %i.ak = fmul float %i.aj, 3.000000e+00          ; 2 uses
  %i.al = fptosi float %i.ak to i32               ; 3 uses
  %i.am = sitofp i32 %i.al to float
  %i.an = fsub float %i.ak, %i.am                 ; 2 uses
  %i.ao = sub nsw i32 %i.ah, %i.ae                ; 4 uses
  %.sroa.5.0.insert.ext.i144 = zext i32 %i.al to i64
  %.sroa.5.0.insert.shift.i145 = shl nuw i64 %.sroa.5.0.insert.ext.i144, 32
  %i.ap = and i32 %5, 65535
  %i.aq = add nuw nsw i32 %i.ap, 24               ; 2 uses
  %i.ar = lshr i32 %5, 5
  %i.as = and i32 %i.ar, 134215680
  %i.at = shl i32 %i.aq, 16
  %i.au = xor i32 %i.as, %i.at
  %i.av = xor i32 %i.au, %i.aq                    ; 2 uses
  %i.aw = lshr i32 %i.av, 11
  %i.ax = and i32 %6, 65535
  %i.ay = add i32 %i.av, %i.ax
  %i.az = add i32 %i.ay, %i.aw                    ; 2 uses
  %i.ba = lshr i32 %6, 5
  %i.bb = and i32 %i.ba, 134215680
  %i.bc = shl i32 %i.az, 16
  %i.bd = xor i32 %i.bb, %i.bc
  %i.be = xor i32 %i.bd, %i.az                    ; 2 uses
  %i.bf = lshr i32 %i.be, 11
  %i.bg = and i32 %i.ao, 65535
  %i.bh = add i32 %i.be, %i.bg
  %i.bi = add i32 %i.bh, %i.bf                    ; 2 uses
  %i.bj = lshr i32 %i.ao, 5
  %i.bk = and i32 %i.bj, 134215680
  %i.bl = shl i32 %i.bi, 16
  %i.bm = xor i32 %i.bk, %i.bl
  %i.bn = xor i32 %i.bm, %i.bi                    ; 2 uses
  %i.bo = lshr i32 %i.bn, 11
  %i.bp = add i32 %i.bo, %i.bn                    ; 2 uses
  %i.bq = shl i32 %i.bp, 16
  %i.br = xor i32 %i.bq, %i.bp                    ; 2 uses
  %i.bs = lshr i32 %i.br, 11
  %i.bt = ptrtoint ptr %2 to i64                  ; 3 uses
  %.sroa.14.16.extract.trunc.i = trunc i64 %i.bt to i32 ; 2 uses
  %i.bu = and i32 %.sroa.14.16.extract.trunc.i, 65535
  %i.bv = add i32 %i.br, %i.bu
  %i.bw = add i32 %i.bv, %i.bs                    ; 2 uses
  %i.bx = lshr i32 %.sroa.14.16.extract.trunc.i, 5
  %i.by = and i32 %i.bx, 134215680
  %i.bz = shl i32 %i.bw, 16
  %i.ca = xor i32 %i.by, %i.bz
  %i.cb = xor i32 %i.ca, %i.bw                    ; 2 uses
  %i.cc = lshr i32 %i.cb, 11
  %.sroa.14.20.extract.shift.i = lshr i64 %i.bt, 32
  %.sroa.14.20.extract.trunc.i = trunc nuw i64 %.sroa.14.20.extract.shift.i to i32
  %i.cd = and i32 %.sroa.14.20.extract.trunc.i, 65535
  %i.ce = add i32 %i.cb, %i.cd
  %i.cf = add i32 %i.ce, %i.cc                    ; 2 uses
  %sh.diff.i = lshr i64 %i.bt, 37
  %tr.sh.diff.i = trunc nuw nsw i64 %sh.diff.i to i32
  %i.cg = and i32 %tr.sh.diff.i, 134215680
  %i.ch = shl i32 %i.cf, 16
  %i.ci = xor i32 %i.cg, %i.ch
  %i.cj = xor i32 %i.ci, %i.cf                    ; 2 uses
  %i.ck = lshr i32 %i.cj, 11
  %i.cl = add i32 %i.ck, %i.cj                    ; 2 uses
  %i.cm = shl i32 %i.cl, 3
  %i.cn = xor i32 %i.cm, %i.cl                    ; 2 uses
  %i.co = lshr i32 %i.cn, 5
  %i.cp = add i32 %i.co, %i.cn                    ; 2 uses
  %i.cq = shl i32 %i.cp, 4
  %i.cr = xor i32 %i.cq, %i.cp                    ; 2 uses
  %i.cs = lshr i32 %i.cr, 17
  %i.ct = add i32 %i.cs, %i.cr                    ; 2 uses
  %i.cu = shl i32 %i.ct, 25
  %i.cv = xor i32 %i.cu, %i.ct                    ; 2 uses
  %i.cw = lshr i32 %i.cv, 6
  %i.cx = add i32 %i.cw, %i.cv                    ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !657 ; 3 uses
  %i.da = urem i32 %i.cx, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !658
  %i.dd = sext i32 %i.da to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !659 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !660
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !660
  %.not151 = icmp eq ptr %i.df, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !661 ; 2 uses
  br i1 %.not151, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.dj = phi i32 [ %i.dk, %bb.f ], [ %.pre, %bb.a ]
  %.0152 = phi ptr [ %i.eb, %bb.f ], [ %i.df, %bb.a ] ; 7 uses
  %i.dk = add nsw i32 %i.dj, 1                    ; 3 uses
  store i32 %i.dk, ptr %.phi.trans.insert, align 4, !tbaa !661
  %i.dl = getelementptr inbounds nuw i8, ptr %.0152, i64 272
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !662
  %i.dn = icmp eq i32 %i.dm, %i.cx
  br i1 %i.dn, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.do = getelementptr inbounds nuw i8, ptr %.0152, i64 256
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !275
  %i.dq = icmp eq i32 %i.dp, %5
  br i1 %i.dq, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.dr = getelementptr inbounds nuw i8, ptr %.0152, i64 260
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !275
  %i.dt = icmp eq i32 %i.ds, %6
  br i1 %i.dt, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.du = getelementptr inbounds nuw i8, ptr %.0152, i64 264
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !275
  %i.dw = icmp eq i32 %i.dv, %i.ao
  br i1 %i.dw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dx = getelementptr inbounds nuw i8, ptr %.0152, i64 280
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !362
  %i.dz = icmp eq ptr %i.dy, %2
  br i1 %i.dz, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph
  %i.ea = getelementptr inbounds nuw i8, ptr %.0152, i64 288
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !663 ; 2 uses
  %.not = icmp eq ptr %i.eb, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !654

.critedge:                                        ; preds = %bb.f, %bb.a
  %i.ec = phi i32 [ %.pre, %bb.a ], [ %i.dk, %bb.f ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ee = add nsw i32 %i.ec, 1
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !661
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !664 ; 2 uses
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !664
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !665
  %.not137 = icmp slt i32 %i.eg, %i.ej
  br i1 %.not137, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.ek = icmp sgt i32 %i.cz, 0
  br i1 %i.ek, label %.lr.ph14.i, label %_ZN11btSparseSdfILi3EE5ResetEv.exit

.lr.ph14.i:                                       ; preds = %bb.g
  %wide.trip.count.i = zext nneg i32 %i.cz to i64
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph14.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.el = load ptr, ptr %i.db, align 8, !tbaa !658
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.i ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !659 ; 2 uses
  store ptr null, ptr %i.em, align 8, !tbaa !659
  %.not10.i = icmp eq ptr %i.en, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.011.i = phi ptr [ %i.ep, %.lr.ph.i ], [ %i.en, %bb.h ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.011.i, i64 288
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !663 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.011.i, i64 noundef 296) #41
  %.not.i = icmp eq ptr %i.ep, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !655

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11btSparseSdfILi3EE5ResetEv.exit, label %bb.h, !llvm.loop !656

_ZN11btSparseSdfILi3EE5ResetEv.exit:              ; preds = %._crit_edge.i, %bb.g
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.er = load float, ptr %i.eq, align 4, !tbaa !666
  store float %i.er, ptr %i.a, align 8, !tbaa !363
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.es, align 8, !tbaa !667
  store i32 0, ptr %i.ef, align 4, !tbaa !664
  store i32 1, ptr %i.ed, align 4, !tbaa !661
  store i32 1, ptr %i.dg, align 8, !tbaa !660
  br label %bb.i

bb.i:                                             ; preds = %_ZN11btSparseSdfILi3EE5ResetEv.exit, %.critedge
  %i.et = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #42 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(296) %i.et, i8 0, i64 288, i1 false)
  %i.eu = load ptr, ptr %i.de, align 8, !tbaa !659
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 288
  store ptr %i.eu, ptr %i.ev, align 16, !tbaa !663
  store ptr %i.et, ptr %i.de, align 8, !tbaa !659
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 280
  store ptr %2, ptr %i.ew, align 8, !tbaa !362
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 272
  store i32 %i.cx, ptr %i.ex, align 16, !tbaa !662
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 256
  store i32 %5, ptr %i.ey, align 16, !tbaa !275
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 260
  store i32 %6, ptr %i.ez, align 4, !tbaa !275
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 264
  store i32 %i.ao, ptr %i.fa, align 8, !tbaa !275
  tail call void @_ZN11btSparseSdfILi3EE9BuildCellERNS0_4CellE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.et)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.i
  %.1 = phi ptr [ %i.et, %bb.i ], [ %.0152, %bb.e ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !667
  %i.fd = getelementptr inbounds nuw i8, ptr %.1, i64 268
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !668
  %i.fe = sext i32 %i.x to i64
  %i.ff = getelementptr inbounds [64 x i8], ptr %.1, i64 %i.fe ; 2 uses
  %i.fg = sext i32 %i.z to i64                    ; 2 uses
  %i.fh = getelementptr inbounds [16 x i8], ptr %i.ff, i64 %i.fg ; 2 uses
  %i.fi = sext i32 %i.al to i64                   ; 4 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !253 ; 3 uses
  %7 = add i64 %.sroa.5.0.insert.shift.i, 4294967296
  %i.fl = ashr exact i64 %7, 26
  %i.fm = getelementptr inbounds i8, ptr %.1, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds [16 x i8], ptr %i.fm, i64 %i.fg ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.fi
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !253 ; 2 uses
  %8 = add i64 %.sroa.5.0.insert.shift.i139, 4294967296
  %i.fq = ashr exact i64 %8, 32                   ; 2 uses
  %i.fr = getelementptr inbounds [16 x i8], ptr %i.fm, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.fi
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !253
  %i.fu = getelementptr inbounds [16 x i8], ptr %i.ff, i64 %i.fq ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.fi
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !253 ; 2 uses
  %i.fx = add i64 %.sroa.5.0.insert.shift.i145, 4294967296
  %i.fy = ashr exact i64 %i.fx, 32                ; 4 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fy
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !253 ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.fy
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !253 ; 2 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.fy
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !253
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.fy
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !253
  %i.gh = insertelement <2 x float> poison, float %i.fw, i64 0 ; 2 uses
  %i.gi = insertelement <2 x float> %i.gh, float %i.fp, i64 1 ; 2 uses
  %i.gj = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = fsub <2 x float> %i.gi, %i.gk           ; 3 uses
  %i.gm = insertelement <2 x float> poison, float %i.ft, i64 0 ; 2 uses
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gp = fsub <2 x float> %i.gn, %i.go           ; 2 uses
  %i.gq = insertelement <2 x float> poison, float %i.gg, i64 0 ; 3 uses
  %i.gr = insertelement <2 x float> %i.gq, float %i.gc, i64 1 ; 2 uses
  %i.gs = insertelement <2 x float> poison, float %i.ga, i64 0 ; 2 uses
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = fsub <2 x float> %i.gr, %i.gt           ; 3 uses
  %i.gv = insertelement <2 x float> poison, float %i.ge, i64 0 ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gx = fsub <2 x float> %i.gw, %i.gr           ; 2 uses
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gz = fsub <2 x float> %i.gp, %i.gl
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> %i.y, <2 x float> %i.gl) ; 2 uses
  %i.hb = fsub <2 x float> %i.gy, %i.gu
  %i.hc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.y, <2 x float> %i.gu)
  %i.hd = fsub <2 x float> %i.hc, %i.ha
  %i.he = insertelement <2 x float> poison, float %i.an, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.hf, <2 x float> %i.ha) ; 4 uses
  %i.hh = insertelement <2 x float> %i.gq, float %i.ga, i64 1
  %i.hi = insertelement <2 x float> %i.gh, float %i.fk, i64 1
  %i.hj = fsub <2 x float> %i.hh, %i.hi           ; 2 uses
  %i.hk = insertelement <2 x float> %i.gv, float %i.gc, i64 1
  %i.hl = insertelement <2 x float> %i.gm, float %i.fp, i64 1
  %i.hm = fsub <2 x float> %i.hk, %i.hl
  %i.hn = fsub <2 x float> %i.hm, %i.hj
  %i.ho = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hn, <2 x float> %i.ho, <2 x float> %i.hj) ; 2 uses
  %i.hq = extractelement <2 x float> %i.hp, i64 0
  %i.hr = extractelement <2 x float> %i.hp, i64 1 ; 2 uses
  %i.hs = fsub float %i.hq, %i.hr
  %i.ht = extractelement <2 x float> %i.y, i64 1
  %i.hu = tail call noundef float @llvm.fmuladd.f32(float %i.hs, float %i.ht, float %i.hr) ; 3 uses
  %foldExtExtBinop165 = fmul <2 x float> %i.hg, %i.hg
  %i.hv = extractelement <2 x float> %foldExtExtBinop165, i64 0
  %i.hw = extractelement <2 x float> %i.hg, i64 1 ; 2 uses
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.hw, float %i.hv)
  %i.hy = tail call noundef float @llvm.fmuladd.f32(float %i.hu, float %i.hu, float %i.hx) ; 2 uses
  %i.hz = fcmp ult float %i.hy, f0x28800000
  br i1 %i.hz, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.hy)
  %i.ia = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.ib = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.hg, %i.ic
  %i.ie = fmul float %i.hu, %i.ia
  %i.if = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %_ZN9btVector313safeNormalizeEv.exit

bb.k:                                             ; preds = %.loopexit
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %i.ig, align 4, !tbaa !253
  br label %_ZN9btVector313safeNormalizeEv.exit

_ZN9btVector313safeNormalizeEv.exit:              ; preds = %bb.j, %bb.k
  %.sink.i = phi float [ 0.000000e+00, %bb.k ], [ %i.ie, %bb.j ]
  %i.ih = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.k ], [ %i.if, %bb.j ]
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %i.ih, ptr %3, align 4, !tbaa !253
  store float %.sink.i, ptr %i.ii, align 4, !tbaa !253
  %i.ij = shufflevector <2 x float> %i.gu, <2 x float> %i.gl, <2 x i32> <i32 1, i32 3>
  %i.ik = insertelement <2 x float> %i.gs, float %i.fk, i64 1
  %i.il = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.ho, <2 x float> %i.ik) ; 2 uses
  %i.im = shufflevector <2 x float> %i.gx, <2 x float> %i.gp, <2 x i32> <i32 0, i32 3>
  %i.in = insertelement <2 x float> %i.gq, float %i.fw, i64 1
  %i.io = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.ho, <2 x float> %i.in)
  %i.ip = fsub <2 x float> %i.io, %i.il
  %i.iq = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ir = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.iq, <2 x float> %i.il) ; 2 uses
  %i.is = extractelement <2 x float> %i.ir, i64 0
  %i.it = extractelement <2 x float> %i.ir, i64 1 ; 2 uses
  %i.iu = fsub float %i.is, %i.it
  %i.iv = tail call noundef float @llvm.fmuladd.f32(float %i.iu, float %i.an, float %i.it)
  %i.iw = fsub float %i.iv, %4
  ret float %i.iw
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13ImpulseMatrixfffRK11btMatrix3x3RK9btVector3(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 48)) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !253, !noalias !677 ; 3 uses
  %i.c = fneg float %i.b                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.g = load float, ptr %i.f, align 4, !tbaa !253, !noalias !678 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.i = load float, ptr %i.h, align 4, !tbaa !253, !noalias !678 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !253, !noalias !678 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = load float, ptr %i.l, align 4, !tbaa !253, !noalias !678 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.o = load float, ptr %i.n, align 4, !tbaa !253, !noalias !678 ; 2 uses
  %i.p = load <2 x float>, ptr %5, align 4, !tbaa !253, !noalias !677 ; 4 uses
  %i.q = load float, ptr %i.d, align 4, !tbaa !253, !noalias !677 ; 3 uses
  %i.r = extractelement <2 x float> %i.p, i64 0
  %i.s = fneg float %i.r                          ; 3 uses
  %i.t = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.c, i64 0 ; 4 uses
  %i.u = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.b, i64 1 ; 4 uses
  %i.v = insertelement <2 x float> poison, float %i.g, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.y = insertelement <2 x float> %i.x, float %i.s, i64 1 ; 3 uses
  %i.z = insertelement <2 x float> poison, float %i.i, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x float> %i.ac, %i.t
  %i.ae = insertelement <2 x float> poison, float %i.k, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.u, <2 x float> %i.ad)
  %i.ah = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.y, <2 x float> %i.ag) ; 3 uses
  %i.ak = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.b, i64 0 ; 2 uses
  %i.al = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.c, i64 1 ; 2 uses
  %i.am = insertelement <2 x float> poison, float %3, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x float> poison, float %2, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = load <2 x float>, ptr %4, align 4, !tbaa !253, !noalias !678 ; 3 uses
  %i.ar = load <2 x float>, ptr %i.e, align 4, !tbaa !253, !noalias !678 ; 3 uses
  %i.as = fneg float %i.q                         ; 2 uses
  %i.at = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %i.at, %i.t
  %i.av = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.u, <2 x float> %i.au)
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.y, <2 x float> %i.aw) ; 3 uses
  %i.ay = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x float> %i.ay, %i.t
  %i.ba = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.u, <2 x float> %i.az)
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.y, <2 x float> %i.bb) ; 3 uses
  %i.bd = fmul <2 x float> %i.u, %i.bc
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.ax, <2 x float> %i.bd)
  %i.bf = insertelement <2 x float> %i.p, float %i.as, i64 1 ; 2 uses
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.aj, <2 x float> %i.be)
  %i.bh = fmul <2 x float> %i.ak, %i.bc
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.ax, <2 x float> %i.bh)
  %i.bj = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.aj, <2 x float> %i.bi)
  %i.bl = fsub <2 x float> zeroinitializer, %i.bg ; 7 uses
  %i.bm = fsub <2 x float> %i.an, %i.bk
  %i.bn = fadd <2 x float> %i.ap, %i.bm           ; 7 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 1
  %i.bp = extractelement <2 x float> %i.bl, i64 1 ; 2 uses
  %i.bq = extractelement <2 x float> %i.bl, i64 0
  %i.br = extractelement <2 x float> %i.bn, i64 0
  %i.bs = fneg float %i.bp
  %i.bt = shufflevector <2 x float> %i.p, <2 x float> %i.bl, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.bu = insertelement <4 x float> poison, float %i.m, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.bs, i64 3
  %i.bw = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.by = fmul <4 x float> %i.bt, %i.bx
  %i.bz = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.ca = insertelement <4 x float> %i.bz, float %i.k, i64 2
  %i.cb = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cd = insertelement <4 x float> poison, float %i.as, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
end_hunk_0
