Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN10btSoftBody22appendDeformableAnchorEiP11btRigidBody:bb.a
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
  %i.gb = load float, ptr %i.co, align 8, !tbaa !253, !noalias !651
  %i.gc = load float, ptr %i.cp, align 8, !tbaa !253, !noalias !651
  %i.gd = load float, ptr %i.cq, align 8, !tbaa !253, !noalias !651
  %i.ge = extractelement <2 x float> %i.fp, i64 0
  %i.gf = extractelement <2 x float> %i.fp, i64 1
  %i.gg = load ptr, ptr %i.bv, align 8, !tbaa !170
  %i.gh = getelementptr inbounds [256 x i8], ptr %i.gg, i64 %i.bx ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gk = load <2 x float>, ptr %i.cf, align 8, !tbaa !253, !noalias !651 ; 2 uses
  %i.gl = load <2 x float>, ptr %i.cm, align 8, !tbaa !253, !noalias !651 ; 2 uses
  %i.gm = load <2 x float>, ptr %i.cn, align 8, !tbaa !253, !noalias !651 ; 2 uses
  %i.gn = fneg float %i.gf                        ; 2 uses
  %i.go = fneg float %i.ge                        ; 2 uses
  %i.gp = fneg float %i.fs
  %i.gq = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x float> %i.gl, %i.gr
  %i.gt = insertelement <2 x float> poison, float %i.go, i64 0
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
  %i.hl = insertelement <2 x float> %i.hc, float %i.gn, i64 0
  %i.hm = fmul <2 x float> %i.hk, %i.hl
  %i.hn = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = insertelement <2 x float> %i.hd, float %i.go, i64 0
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
  %i.v = fptosi <2 x float> %i.u to <2 x i32>     ; 4 uses
  %i.w = sitofp <2 x i32> %i.v to <2 x float>
  %foldExtExtBinop = sub nsw <2 x i32> %i.r, %i.o
  %i.x = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 4 uses
  %i.y = fsub <2 x float> %i.u, %i.w              ; 5 uses
  %foldExtExtBinop163 = sub nsw <2 x i32> %i.r, %i.o
  %i.z = extractelement <2 x i32> %foldExtExtBinop163, i64 1 ; 4 uses
  %i.aa = zext <2 x i32> %i.v to <2 x i64>
  %i.ab = shl nuw <2 x i64> %i.aa, splat (i64 32)
  %i.ac = fdiv float %i.j, 3.000000e+00           ; 3 uses
  %i.ad = fcmp olt float %i.ac, 0.000000e+00
  %i.ae = fsub float 1.000000e+00, %i.ac
  %i.af = fptosi float %i.ae to i32
  %i.ag = select i1 %i.ad, i32 %i.af, i32 0       ; 2 uses
  %i.ah = sitofp i32 %i.ag to float
  %i.ai = fadd float %i.ac, %i.ah                 ; 2 uses
  %i.aj = fptosi float %i.ai to i32               ; 2 uses
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fsub float %i.ai, %i.ak
  %i.am = fmul float %i.al, 3.000000e+00          ; 2 uses
  %i.an = fptosi float %i.am to i32               ; 3 uses
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fsub float %i.am, %i.ao                 ; 2 uses
  %i.aq = sub nsw i32 %i.aj, %i.ag                ; 4 uses
  %.sroa.5.0.insert.ext.i144 = zext i32 %i.an to i64
  %.sroa.5.0.insert.shift.i145 = shl nuw i64 %.sroa.5.0.insert.ext.i144, 32
  %i.ar = and i32 %i.x, 65535
  %i.as = add nuw nsw i32 %i.ar, 24               ; 2 uses
  %i.at = lshr i32 %i.x, 5
  %i.au = and i32 %i.at, 134215680
  %i.av = shl i32 %i.as, 16
  %i.aw = xor i32 %i.au, %i.av
  %i.ax = xor i32 %i.aw, %i.as                    ; 2 uses
  %i.ay = lshr i32 %i.ax, 11
  %i.az = and i32 %i.z, 65535
  %i.ba = add i32 %i.ax, %i.az
  %i.bb = add i32 %i.ba, %i.ay                    ; 2 uses
  %i.bc = lshr i32 %i.z, 5
  %i.bd = and i32 %i.bc, 134215680
  %i.be = shl i32 %i.bb, 16
  %i.bf = xor i32 %i.bd, %i.be
  %i.bg = xor i32 %i.bf, %i.bb                    ; 2 uses
  %i.bh = lshr i32 %i.bg, 11
  %i.bi = and i32 %i.aq, 65535
  %i.bj = add i32 %i.bg, %i.bi
  %i.bk = add i32 %i.bj, %i.bh                    ; 2 uses
  %i.bl = lshr i32 %i.aq, 5
  %i.bm = and i32 %i.bl, 134215680
  %i.bn = shl i32 %i.bk, 16
  %i.bo = xor i32 %i.bm, %i.bn
  %i.bp = xor i32 %i.bo, %i.bk                    ; 2 uses
  %i.bq = lshr i32 %i.bp, 11
  %i.br = add i32 %i.bq, %i.bp                    ; 2 uses
  %i.bs = shl i32 %i.br, 16
  %i.bt = xor i32 %i.bs, %i.br                    ; 2 uses
  %i.bu = lshr i32 %i.bt, 11
  %i.bv = ptrtoint ptr %2 to i64                  ; 4 uses
  %.sroa.14.16.extract.trunc.i = trunc i64 %i.bv to i32
  %i.bw = and i32 %.sroa.14.16.extract.trunc.i, 65535
  %i.bx = add i32 %i.bt, %i.bw
  %i.by = add i32 %i.bx, %i.bu                    ; 2 uses
  %sh.diff.i = lshr i64 %i.bv, 5
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.bz = and i32 %tr.sh.diff.i, 134215680
  %i.ca = shl i32 %i.by, 16
  %i.cb = xor i32 %i.bz, %i.ca
  %i.cc = xor i32 %i.cb, %i.by                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 11
  %.sroa.14.20.extract.shift.i = lshr i64 %i.bv, 32
  %.sroa.14.20.extract.trunc.i = trunc nuw i64 %.sroa.14.20.extract.shift.i to i32
  %i.ce = and i32 %.sroa.14.20.extract.trunc.i, 65535
  %i.cf = add i32 %i.cc, %i.ce
  %i.cg = add i32 %i.cf, %i.cd                    ; 2 uses
  %sh.diff.i.a = lshr i64 %i.bv, 37
  %tr.sh.diff.i.a = trunc nuw nsw i64 %sh.diff.i.a to i32
  %i.ch = and i32 %tr.sh.diff.i.a, 134215680
  %i.ci = shl i32 %i.cg, 16
  %i.cj = xor i32 %i.ch, %i.ci
  %i.ck = xor i32 %i.cj, %i.cg                    ; 2 uses
  %i.cl = lshr i32 %i.ck, 11
  %i.cm = add i32 %i.cl, %i.ck                    ; 2 uses
  %i.cn = shl i32 %i.cm, 3
  %i.co = xor i32 %i.cn, %i.cm                    ; 2 uses
  %i.cp = lshr i32 %i.co, 5
  %i.cq = add i32 %i.cp, %i.co                    ; 2 uses
  %i.cr = shl i32 %i.cq, 4
  %i.cs = xor i32 %i.cr, %i.cq                    ; 2 uses
  %i.ct = lshr i32 %i.cs, 17
  %i.cu = add i32 %i.ct, %i.cs                    ; 2 uses
  %i.cv = shl i32 %i.cu, 25
  %i.cw = xor i32 %i.cv, %i.cu                    ; 2 uses
  %i.cx = lshr i32 %i.cw, 6
  %i.cy = add i32 %i.cx, %i.cw                    ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !655 ; 3 uses
  %i.db = urem i32 %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !656
  %i.de = sext i32 %i.db to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.de ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !657 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !658
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !658
  %.not151 = icmp eq ptr %i.dg, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !659 ; 2 uses
  br i1 %.not151, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.dk = phi i32 [ %i.dl, %bb.f ], [ %.pre, %bb.a ]
  %.0152 = phi ptr [ %i.ec, %bb.f ], [ %i.dg, %bb.a ] ; 7 uses
  %i.dl = add nsw i32 %i.dk, 1                    ; 3 uses
  store i32 %i.dl, ptr %.phi.trans.insert, align 4, !tbaa !659
  %i.dm = getelementptr inbounds nuw i8, ptr %.0152, i64 272
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !660
  %i.do = icmp eq i32 %i.dn, %i.cy
  br i1 %i.do, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.dp = getelementptr inbounds nuw i8, ptr %.0152, i64 256
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !275
  %i.dr = icmp eq i32 %i.dq, %i.x
  br i1 %i.dr, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ds = getelementptr inbounds nuw i8, ptr %.0152, i64 260
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !275
  %i.du = icmp eq i32 %i.dt, %i.z
  br i1 %i.du, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.dv = getelementptr inbounds nuw i8, ptr %.0152, i64 264
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !275
  %i.dx = icmp eq i32 %i.dw, %i.aq
  br i1 %i.dx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dy = getelementptr inbounds nuw i8, ptr %.0152, i64 280
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !362
  %i.ea = icmp eq ptr %i.dz, %2
  br i1 %i.ea, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph
  %i.eb = getelementptr inbounds nuw i8, ptr %.0152, i64 288
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !661 ; 2 uses
  %.not = icmp eq ptr %i.ec, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !652

.critedge:                                        ; preds = %bb.f, %bb.a
  %i.ed = phi i32 [ %.pre, %bb.a ], [ %i.dl, %bb.f ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ef = add nsw i32 %i.ed, 1
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !659
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !662 ; 2 uses
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !662
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !663
  %.not137 = icmp slt i32 %i.eh, %i.ek
  br i1 %.not137, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.el = icmp sgt i32 %i.da, 0
  br i1 %i.el, label %.lr.ph14.i, label %_ZN11btSparseSdfILi3EE5ResetEv.exit

.lr.ph14.i:                                       ; preds = %bb.g
  %wide.trip.count.i = zext nneg i32 %i.da to i64
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph14.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.em = load ptr, ptr %i.dc, align 8, !tbaa !656
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.i ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !657 ; 2 uses
  store ptr null, ptr %i.en, align 8, !tbaa !657
  %.not10.i = icmp eq ptr %i.eo, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.011.i = phi ptr [ %i.eq, %.lr.ph.i ], [ %i.eo, %bb.h ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.011.i, i64 288
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !661 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.011.i, i64 noundef 296) #41
  %.not.i = icmp eq ptr %i.eq, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !653

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11btSparseSdfILi3EE5ResetEv.exit, label %bb.h, !llvm.loop !654

_ZN11btSparseSdfILi3EE5ResetEv.exit:              ; preds = %._crit_edge.i, %bb.g
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.es = load float, ptr %i.er, align 4, !tbaa !664
  store float %i.es, ptr %i.a, align 8, !tbaa !363
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.et, align 8, !tbaa !665
  store i32 0, ptr %i.eg, align 4, !tbaa !662
  store i32 1, ptr %i.ee, align 4, !tbaa !659
  store i32 1, ptr %i.dh, align 8, !tbaa !658
  br label %bb.i

bb.i:                                             ; preds = %_ZN11btSparseSdfILi3EE5ResetEv.exit, %.critedge
  %i.eu = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #42 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(296) %i.eu, i8 0, i64 288, i1 false)
  %i.ev = load ptr, ptr %i.df, align 8, !tbaa !657
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 288
  store ptr %i.ev, ptr %i.ew, align 16, !tbaa !661
  store ptr %i.eu, ptr %i.df, align 8, !tbaa !657
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 280
  store ptr %2, ptr %i.ex, align 8, !tbaa !362
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 272
  store i32 %i.cy, ptr %i.ey, align 16, !tbaa !660
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 256
  store i32 %i.x, ptr %i.ez, align 16, !tbaa !275
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 260
  store i32 %i.z, ptr %i.fa, align 4, !tbaa !275
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 264
  store i32 %i.aq, ptr %i.fb, align 8, !tbaa !275
  tail call void @_ZN11btSparseSdfILi3EE9BuildCellERNS0_4CellE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.eu)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.i
  %.1 = phi ptr [ %i.eu, %bb.i ], [ %.0152, %bb.e ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !665
  %i.fe = getelementptr inbounds nuw i8, ptr %.1, i64 268
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !666
  %i.ff = extractelement <2 x i32> %i.v, i64 0
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [64 x i8], ptr %.1, i64 %i.fg ; 2 uses
  %i.fi = extractelement <2 x i32> %i.v, i64 1
  %i.fj = sext i32 %i.fi to i64                   ; 2 uses
  %i.fk = getelementptr inbounds [16 x i8], ptr %i.fh, i64 %i.fj ; 2 uses
  %i.fl = sext i32 %i.an to i64                   ; 4 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !253 ; 3 uses
  %i.fo = add <2 x i64> %i.ab, splat (i64 4294967296) ; 2 uses
  %i.fp = extractelement <2 x i64> %i.fo, i64 0
  %i.fq = ashr exact i64 %i.fp, 26
  %i.fr = getelementptr inbounds i8, ptr %.1, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds [16 x i8], ptr %i.fr, i64 %i.fj ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.fl
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !253 ; 2 uses
  %i.fv = extractelement <2 x i64> %i.fo, i64 1
  %i.fw = ashr exact i64 %i.fv, 32                ; 2 uses
  %i.fx = getelementptr inbounds [16 x i8], ptr %i.fr, i64 %i.fw ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.fl
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !253
  %i.ga = getelementptr inbounds [16 x i8], ptr %i.fh, i64 %i.fw ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.fl
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !253 ; 2 uses
  %i.gd = add i64 %.sroa.5.0.insert.shift.i145, 4294967296
  %i.ge = ashr exact i64 %i.gd, 32                ; 4 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !253 ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.ge
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !253 ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.ge
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !253
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.ge
end_hunk_0
