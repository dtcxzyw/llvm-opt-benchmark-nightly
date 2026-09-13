Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ppf_match_3d?download=true
inline.NumInlined: 998
inline.NumDeleted: 359
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN2cv12ppf_match_3d13PPF3DDetector5matchERKNS_3MatERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EEdd:bb.a
  %i.bx = load ptr, ptr %44, align 8, !tbaa !79
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 4
  %i.cc = icmp ult i64 %i.cb, %i.bt
  br i1 %i.cc, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.ab
  %i.cd = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !80
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.bz
  %i.ch = shl nuw nsw i64 %i.bt, 4
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #31
          to label %.noexc197 unwind label %bb.ah ; 4 uses

.noexc197:                                        ; preds = %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_M_allocateEm.exit.i
  %i.cj = load ptr, ptr %44, align 8, !tbaa !79   ; 5 uses
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !80 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cj, %i.ck
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc197, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %i.ci, %.noexc197 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i ], [ %i.cj, %.noexc197 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.cm = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !89, !alias.scope !206, !noalias !205
  store ptr null, ptr %i.cl, align 8, !tbaa !83, !alias.scope !206, !noalias !205
  store <2 x ptr> %i.cm, ptr %.012.i.i.i.i, align 8, !tbaa !89, !alias.scope !205, !noalias !206
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !98, !alias.scope !206, !noalias !205
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.ck
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc197
  %.not.i8.i = icmp eq ptr %i.cj, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.cp = load ptr, ptr %i.bv, align 8, !tbaa !110
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cj to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cs) #28
  br label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.ci, ptr %44, align 8, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store ptr %i.ct, ptr %i.cd, align 8, !tbaa !80
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.bt
  store ptr %i.cu, ptr %i.bv, align 8, !tbaa !110
  %.pre = load i32, ptr %i.bp, align 8, !tbaa !54
  br label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit: ; preds = %bb.ab, %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %i.cv = phi i32 [ %i.bq, %bb.ab ], [ %.pre, %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i ] ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph390, label %._crit_edge

.lr.ph390:                                        ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %49, i64 128 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %52, i64 24 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %52, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %52, i64 40 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %52, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %52, i64 56
  %i.dh = getelementptr inbounds nuw i8, ptr %52, i64 64 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %53, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %53, i64 40
  %i.dn = getelementptr inbounds nuw i8, ptr %53, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %53, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %53, i64 64
  %i.dq = mul i32 %i.bn, %i.bi
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.du = fpext float %i.bl to double
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dy = sitofp i32 %i.bi to double              ; 2 uses
  %.not391 = icmp eq i32 %i.bn, 0
  %i.dz = icmp slt i32 %i.bi, 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ep = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.fh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.fk = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.fl = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %64, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %64, i64 40
  %i.fr = getelementptr inbounds nuw i8, ptr %64, i64 56
  %i.fs = getelementptr inbounds nuw i8, ptr %64, i64 64
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %62, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %62, i64 64
  %i.gk = getelementptr inbounds nuw i8, ptr %63, i64 24
  %i.gl = getelementptr inbounds nuw i8, ptr %62, i64 96
  %i.gm = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %62, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %62, i64 80
  %i.gp = getelementptr inbounds nuw i8, ptr %62, i64 112
  %i.gq = getelementptr inbounds nuw i8, ptr %63, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %63, i64 40
  %i.gs = getelementptr inbounds nuw i8, ptr %63, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %63, i64 56
  %i.gu = getelementptr inbounds nuw i8, ptr %63, i64 64
  %i.gv = getelementptr inbounds nuw i8, ptr %63, i64 72
  %i.gw = getelementptr inbounds nuw i8, ptr %63, i64 80
  %i.gx = getelementptr inbounds nuw i8, ptr %63, i64 88
  %i.gy = getelementptr inbounds nuw i8, ptr %63, i64 96
  %i.gz = getelementptr inbounds nuw i8, ptr %63, i64 104
  %i.ha = getelementptr inbounds nuw i8, ptr %63, i64 112
  %i.hb = getelementptr inbounds nuw i8, ptr %63, i64 120
  %i.hc = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %59, i64 24
  %i.hf = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %59, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %59, i64 40
  %i.hi = getelementptr inbounds nuw i8, ptr %59, i64 48
  %i.hj = getelementptr inbounds nuw i8, ptr %59, i64 56
  %i.hk = getelementptr inbounds nuw i8, ptr %66, i64 32
  %i.hl = getelementptr inbounds nuw i8, ptr %66, i64 48
  %i.hm = getelementptr inbounds nuw i8, ptr %59, i64 64
  %i.hn = getelementptr inbounds nuw i8, ptr %59, i64 72
  %i.ho = getelementptr inbounds nuw i8, ptr %59, i64 80
  %i.hp = getelementptr inbounds nuw i8, ptr %59, i64 88
  %i.hq = getelementptr inbounds nuw i8, ptr %66, i64 64
  %i.hr = getelementptr inbounds nuw i8, ptr %66, i64 80
  %i.hs = getelementptr inbounds nuw i8, ptr %59, i64 96
  %i.ht = getelementptr inbounds nuw i8, ptr %59, i64 104
  %i.hu = getelementptr inbounds nuw i8, ptr %59, i64 112
  %i.hv = getelementptr inbounds nuw i8, ptr %59, i64 120
  %i.hw = getelementptr inbounds nuw i8, ptr %66, i64 96
  %i.hx = getelementptr inbounds nuw i8, ptr %66, i64 112
  %i.hy = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %68 = zext nneg i32 %i.bf to i64
  %wide.trip.count = zext i32 %i.bi to i64        ; 2 uses
  %brmerge = select i1 %.not391, i1 true, i1 %i.dz
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ia = icmp eq i32 %i.bi, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod452 = trunc i32 %i.bi to i1
  br label %bb.ai

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit
  %.lcssa = phi i32 [ %i.cv, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit ], [ %i.aae, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.ib = sdiv i32 %.lcssa, %i.bf
  invoke void @_ZN2cv12ppf_match_3d13PPF3DDetector12clusterPosesERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS5_EEiS8_(ptr noundef nonnull align 8 dereferenceable(521) %0, ptr noundef nonnull align 8 dereferenceable(24) %44, i32 noundef %i.ib, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.cb unwind label %bb.cj

bb.ad:                                            ; preds = %bb.v
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ae:                                            ; preds = %bb.w
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #26
  br label %bb.cm

bb.af:                                            ; preds = %bb.x
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ag:                                            ; preds = %bb.y
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #26
  br label %bb.cl

bb.ah:                                            ; preds = %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_M_allocateEm.exit.i, %bb.aa
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ai:                                            ; preds = %.lr.ph390, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv402 = phi i64 [ 0, %.lr.ph390 ], [ %indvars.iv.next403, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.ih = load ptr, ptr %i.cx, align 8, !tbaa !57
  %i.ii = load i64, ptr %i.cy, align 8, !tbaa !58
  %i.ij = mul i64 %i.ii, %indvars.iv402
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ij ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 20
  %i.io = load float, ptr %i.in, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %i.ip = load float, ptr %i.il, align 4, !tbaa !53
  %i.iq = fpext float %i.ip to double             ; 2 uses
  %i.ir = load <2 x float>, ptr %i.ik, align 4, !tbaa !53
  %i.is = fpext <2 x float> %i.ir to <2 x double> ; 2 uses
  %i.it = load <2 x float>, ptr %i.im, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %52, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %53, i8 0, i64 72, i1 false)
  %i.iu = call noalias ptr @calloc(i64 noundef %i.dr, i64 noundef 4) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #26
  store <2 x double> %i.is, ptr %54, align 16, !tbaa !36, !alias.scope !207
  store double %i.iq, ptr %i.ds, align 16, !tbaa !36, !alias.scope !207
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26
  %i.iv = fpext <2 x float> %i.it to <2 x double> ; 5 uses
  store <2 x double> %i.iv, ptr %55, align 16, !tbaa !36, !alias.scope !208
  %i.iw = fpext float %i.io to double             ; 3 uses
  store double %i.iw, ptr %i.dt, align 16, !tbaa !36, !alias.scope !208
  invoke fastcc void @_ZN2cv12ppf_match_3dL18computeTransformRTERKNS_3VecIdLi3EEES4_RNS_4MatxIdLi3ELi3EEERS2_(ptr noundef nonnull align 8 dereferenceable(24) %54, ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(72) %52, ptr noundef nonnull align 8 dereferenceable(24) %51)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  %i.ix = load i32, ptr %i.bp, align 8, !tbaa !54
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %.lr.ph371, label %.preheader354

.lr.ph371:                                        ; preds = %bb.aj
  %i.iz = load double, ptr %i.cz, align 8
  %i.ja = load double, ptr %i.da, align 8
  %i.jb = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.jc = extractelement <2 x double> %i.iv, i64 0
  %i.jd = extractelement <2 x double> %i.iv, i64 1
  %i.je = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.al

.preheader354:                                    ; preds = %.loopexit, %bb.aj
  br i1 %brmerge, label %._crit_edge383, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader354, %._crit_edge.us
  %.080382.us = phi i32 [ %i.ka, %._crit_edge.us ], [ 0, %.preheader354 ] ; 4 uses
  %.0127381.us = phi i32 [ %.2129.us.lcssa, %._crit_edge.us ], [ 0, %.preheader354 ] ; 2 uses
  %.0130380.us = phi i32 [ %.2132.us.lcssa, %._crit_edge.us ], [ 0, %.preheader354 ] ; 2 uses
  %.0133379.us = phi i32 [ %.2135.us.lcssa, %._crit_edge.us ], [ 0, %.preheader354 ] ; 2 uses
  %i.jf = mul i32 %.080382.us, %i.bi              ; 3 uses
  br i1 %i.ia, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv398 = phi i64 [ %indvars.iv.next399.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.1128374.us = phi i32 [ %.2129.us.1, %.preheader.us.new ], [ %.0127381.us, %.preheader.us ] ; 2 uses
  %.1131373.us = phi i32 [ %.2132.us.1, %.preheader.us.new ], [ %.0130380.us, %.preheader.us ]
  %.1134372.us = phi i32 [ %.2135.us.1, %.preheader.us.new ], [ %.0133379.us, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.jg = trunc nuw nsw i64 %indvars.iv398 to i32 ; 2 uses
  %i.jh = add i32 %i.jf, %i.jg
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !63 ; 2 uses
  %i.jl = icmp ugt i32 %i.jk, %.1128374.us        ; 2 uses
  %.2132.us = select i1 %i.jl, i32 %i.jg, i32 %.1131373.us
  %.2129.us = call i32 @llvm.umax.i32(i32 %i.jk, i32 %.1128374.us) ; 2 uses
  store i32 0, ptr %i.jj, align 4, !tbaa !63
  %i.jm = trunc i64 %indvars.iv398 to i32
  %i.jn = or disjoint i32 %i.jm, 1                ; 2 uses
  %i.jo = add i32 %i.jf, %i.jn
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.jp ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !63 ; 2 uses
  %i.js = icmp ugt i32 %i.jr, %.2129.us           ; 2 uses
  %i.jt = or i1 %i.js, %i.jl
  %.2135.us.1 = select i1 %i.jt, i32 %.080382.us, i32 %.1134372.us ; 3 uses
  %.2132.us.1 = select i1 %i.js, i32 %i.jn, i32 %.2132.us ; 3 uses
  %.2129.us.1 = call i32 @llvm.umax.i32(i32 %i.jr, i32 %.2129.us) ; 3 uses
  store i32 0, ptr %i.jq, align 4, !tbaa !63
  %indvars.iv.next399.1 = add nuw nsw i64 %indvars.iv398, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !187

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv398.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next399.1, %._crit_edge.us.unr-lcssa ]
  %.1128374.us.epil.init = phi i32 [ %.0127381.us, %.preheader.us ], [ %.2129.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.1131373.us.epil.init = phi i32 [ %.0130380.us, %.preheader.us ], [ %.2132.us.1, %._crit_edge.us.unr-lcssa ]
  %.1134372.us.epil.init = phi i32 [ %.0133379.us, %.preheader.us ], [ %.2135.us.1, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod452)
  %i.ju = trunc nuw nsw i64 %indvars.iv398.epil.init to i32 ; 2 uses
  %i.jv = add i32 %i.jf, %i.ju
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.jw ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !63 ; 2 uses
  %i.jz = icmp ugt i32 %i.jy, %.1128374.us.epil.init ; 2 uses
  %.2135.us.epil = select i1 %i.jz, i32 %.080382.us, i32 %.1134372.us.epil.init
  %.2132.us.epil = select i1 %i.jz, i32 %i.ju, i32 %.1131373.us.epil.init
  %.2129.us.epil = call i32 @llvm.umax.i32(i32 %i.jy, i32 %.1128374.us.epil.init)
  store i32 0, ptr %i.jx, align 4, !tbaa !63
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.2135.us.lcssa = phi i32 [ %.2135.us.1, %._crit_edge.us.unr-lcssa ], [ %.2135.us.epil, %.epil.preheader ] ; 2 uses
  %.2132.us.lcssa = phi i32 [ %.2132.us.1, %._crit_edge.us.unr-lcssa ], [ %.2132.us.epil, %.epil.preheader ] ; 2 uses
  %.2129.us.lcssa = phi i32 [ %.2129.us.1, %._crit_edge.us.unr-lcssa ], [ %.2129.us.epil, %.epil.preheader ] ; 2 uses
  %i.ka = add nuw i32 %.080382.us, 1              ; 2 uses
  %exitcond401.not = icmp eq i32 %i.ka, %i.bn
  br i1 %exitcond401.not, label %._crit_edge383.loopexit, label %.preheader.us, !llvm.loop !188

bb.ak:                                            ; preds = %bb.ai
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  br label %bb.ca

bb.al:                                            ; preds = %.lr.ph371, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.not = icmp eq i64 %indvars.iv402, %indvars.iv
  br i1 %.not, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kc = load ptr, ptr %i.cx, align 8, !tbaa !57
  %i.kd = load i64, ptr %i.cy, align 8, !tbaa !58
  %i.ke = mul i64 %i.kd, %indvars.iv
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.ke ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !53
  %i.ki = fpext float %i.kh to double             ; 3 uses
  %i.kj = load <2 x float>, ptr %i.kf, align 4, !tbaa !53
  %i.kk = fpext <2 x float> %i.kj to <2 x double> ; 4 uses
  %i.kl = fsub <2 x double> %i.kk, %i.is          ; 3 uses
  %i.km = fsub double %i.ki, %i.iq                ; 3 uses
  %i.kn = extractelement <2 x double> %i.kl, i64 0 ; 2 uses
  %i.ko = call double @llvm.fmuladd.f64(double %i.kn, double %i.kn, double 0.000000e+00)
  %i.kp = extractelement <2 x double> %i.kl, i64 1 ; 2 uses
  %i.kq = call double @llvm.fmuladd.f64(double %i.kp, double %i.kp, double %i.ko)
  %i.kr = call double @llvm.fmuladd.f64(double %i.km, double %i.km, double %i.kq)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.kr) ; 3 uses
  %i.ks = fcmp ugt double %sqrt.i, f0x3E80000000000000
  br i1 %i.ks, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kf, i64 20
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !53
  %i.kv = fpext float %i.ku to double             ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !53
  %i.ky = fpext float %i.kx to double             ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.la = load float, ptr %i.kz, align 4, !tbaa !53
  %i.lb = fpext float %i.la to double             ; 2 uses
  %i.lc = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.ld = insertelement <2 x double> poison, double %i.lc, i64 0
  %i.le = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lf = fmul <2 x double> %i.kl, %i.le          ; 2 uses
  %i.lg = fmul double %i.km, %i.lc
  %i.lh = insertelement <2 x double> %i.iv, double %i.lb, i64 1
  %i.li = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %i.li, <2 x double> zeroinitializer)
  %i.lk = insertelement <2 x double> %i.je, double %i.ky, i64 1
  %i.ll = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> %i.ll, <2 x double> %i.lj)
  %i.ln = insertelement <2 x double> %i.jb, double %i.kv, i64 1
  %i.lo = insertelement <2 x double> poison, double %i.lg, i64 0
  %i.lp = shufflevector <2 x double> %i.lo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ln, <2 x double> %i.lp, <2 x double> %i.lm) ; 2 uses
  %i.lr = extractelement <2 x double> %i.lq, i64 0
  %i.ls = call noundef double @acos(double noundef %i.lr) #26
  %i.lt = extractelement <2 x double> %i.lq, i64 1
  %i.lu = call noundef double @acos(double noundef %i.lt) #26
  %i.lv = call double @llvm.fmuladd.f64(double %i.jc, double %i.lb, double 0.000000e+00)
  %i.lw = call double @llvm.fmuladd.f64(double %i.jd, double %i.ky, double %i.lv)
  %i.lx = call noundef double @llvm.fmuladd.f64(double %i.iw, double %i.kv, double %i.lw)
  %i.ly = call noundef double @acos(double noundef %i.lx) #26
  %i.lz = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.ma = insertelement <2 x double> %i.lz, double %i.ly, i64 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.6309.0 = phi double [ %i.lu, %bb.an ], [ 0.000000e+00, %bb.am ]
  %i.mb = phi <2 x double> [ %i.ma, %bb.an ], [ zeroinitializer, %bb.am ]
  %i.mc = load double, ptr %i.az, align 8, !tbaa !43 ; 2 uses
  %i.md = load double, ptr %i.dd, align 16, !tbaa !36, !noalias !209
  %i.me = load double, ptr %i.dc, align 8, !tbaa !36, !noalias !209
  %i.mf = extractelement <2 x double> %i.kk, i64 0
  %i.mg = call double @llvm.fmuladd.f64(double %i.me, double %i.mf, double 0.000000e+00)
  %i.mh = extractelement <2 x double> %i.kk, i64 1 ; 2 uses
  %i.mi = call double @llvm.fmuladd.f64(double %i.md, double %i.mh, double %i.mg)
  %i.mj = load <2 x double>, ptr %i.de, align 8, !tbaa !36, !noalias !209
  %i.mk = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> %i.kk, <2 x i32> <i32 0, i32 2>
  %i.mm = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.mi, i64 0
  %i.mn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mj, <2 x double> %i.ml, <2 x double> %i.mm) ; 2 uses
  %i.mo = load double, ptr %i.dg, align 8, !tbaa !36, !noalias !209
  %i.mp = extractelement <2 x double> %i.mn, i64 1
  %i.mq = call double @llvm.fmuladd.f64(double %i.mo, double %i.mh, double %i.mp)
  %i.mr = load double, ptr %i.dh, align 16, !tbaa !36, !noalias !209
  %i.ms = call double @llvm.fmuladd.f64(double %i.mr, double %i.ki, double %i.mq)
  %i.mt = extractelement <2 x double> %i.mn, i64 0
  %i.mu = fadd double %i.mt, %i.iz
  %i.mv = fadd double %i.ms, %i.ja                ; 2 uses
  %i.mw = fneg double %i.mv
  %i.mx = call double @atan2(double noundef %i.mw, double noundef %i.mu) #26 ; 4 uses
  %i.my = fcmp uno double %i.mx, 0.000000e+00
  br i1 %i.my, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mz = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.na = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nb = fdiv <2 x double> %i.mb, %i.na          ; 2 uses
  %i.nc = extractelement <2 x double> %i.nb, i64 0
  %i.nd = fptosi double %i.nc to i32
  %i.ne = mul i32 %i.nd, -1789642873              ; 2 uses
  %i.nf = call i32 @llvm.fshl.i32(i32 %i.ne, i32 %i.ne, i32 11)
  %i.ng = mul i32 %i.nf, 718793509
  %i.nh = xor i32 %i.ng, -1914584186
  %i.ni = add i32 %i.nh, -1162247668              ; 2 uses
  %i.nj = mul i32 %i.ni, 3
  %i.nk = add i32 %i.nj, 1390208809
  %i.nl = extractelement <2 x double> %i.nb, i64 1
  %i.nm = fptosi double %i.nl to i32
  %i.nn = mul i32 %i.nm, 1713515327               ; 2 uses
  %i.no = call i32 @llvm.fshl.i32(i32 %i.nn, i32 %i.nn, i32 11)
  %i.np = mul i32 %i.no, 1107688271
  %i.nq = xor i32 %i.nk, %i.np
  %i.nr = fdiv double %.sroa.6309.0, %i.mc
  %i.ns = fptosi double %i.nr to i32
  %i.nt = mul i32 %i.ns, 718793509                ; 2 uses
  %i.nu = call i32 @llvm.fshl.i32(i32 %i.nt, i32 %i.nt, i32 11)
  %i.nv = mul i32 %i.nu, -1789642873
  %i.nw = xor i32 %i.nv, 68777331
  %i.nx = add i32 %i.ni, %i.nw
  %i.ny = mul i32 %i.nx, 3
  %i.nz = add i32 %i.ny, 944331445                ; 3 uses
  %i.oa = add i32 %i.nq, %i.nz                    ; 2 uses
  %i.ob = mul i32 %i.oa, 3
  %i.oc = add i32 %i.ob, 1390208809
  %i.od = call i32 @llvm.fshl.i32(i32 %i.nz, i32 %i.nz, i32 17)
  %i.oe = fdiv double %sqrt.i, %i.du
  %i.of = fptosi double %i.oe to i32
  %i.og = mul i32 %i.of, 1107688271               ; 2 uses
  %i.oh = call i32 @llvm.fshl.i32(i32 %i.og, i32 %i.og, i32 11)
  %i.oi = mul i32 %i.oh, 1713515327
  %i.oj = xor i32 %i.od, %i.oi
  %i.ok = add i32 %i.oj, %i.oa
  %i.ol = mul i32 %i.ok, 3
  %i.om = add i32 %i.ol, 944331445
  %i.on = xor i32 %i.om, 16                       ; 2 uses
  %i.oo = add i32 %i.oc, %i.on                    ; 3 uses
  %i.op = add i32 %i.oo, %i.on                    ; 2 uses
  %i.oq = lshr i32 %i.op, 16
  %i.or = xor i32 %i.oq, %i.op
  %i.os = mul i32 %i.or, -2048144789              ; 2 uses
  %i.ot = lshr i32 %i.os, 13
  %i.ou = xor i32 %i.ot, %i.os
  %i.ov = mul i32 %i.ou, -1028477387              ; 2 uses
  %i.ow = lshr i32 %i.ov, 16
  %i.ox = xor i32 %i.ow, %i.ov
  %i.oy = lshr i32 %i.oo, 16
  %i.oz = xor i32 %i.oy, %i.oo
  %i.pa = mul i32 %i.oz, -2048144789              ; 2 uses
  %i.pb = lshr i32 %i.pa, 13
  %i.pc = xor i32 %i.pb, %i.pa
  %i.pd = mul i32 %i.pc, -1028477387              ; 2 uses
  %i.pe = lshr i32 %i.pd, 16
  %i.pf = xor i32 %i.pe, %i.pd
  %i.pg = add i32 %i.ox, %i.pf
  %i.ph = call double @sin(double noundef %i.mx) #26
  %i.pi = fmul double %i.mv, %i.ph
  %i.pj = fcmp olt double %i.pi, 0.000000e+00
  %i.pk = fneg double %i.mx
  %.0125 = select i1 %i.pj, double %i.pk, double %i.mx
  %i.pl = load ptr, ptr %i.dv, align 8, !tbaa !45
  %i.pm = invoke noundef ptr @_ZN2cv12ppf_match_3d24hashtableGetBucketHashedEPNS0_8HSHTBL_iEj(ptr noundef %i.pl, i32 noundef %i.pg)
          to label %.preheader353 unwind label %bb.ar ; 2 uses

.preheader353:                                    ; preds = %bb.ap
  %.not184368 = icmp eq ptr %i.pm, null
  br i1 %.not184368, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader353
  %i.pn = load ptr, ptr %i.dw, align 8, !tbaa !57
  %i.po = load i64, ptr %i.dx, align 8, !tbaa !58
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph, %bb.aq
  %.0124369 = phi ptr [ %i.pm, %.lr.ph ], [ %i.qn, %bb.aq ] ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.0124369, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !212 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !61
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !62
  %i.pv = sext i32 %i.pu to i64
  %i.pw = mul i64 %i.po, %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pw
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.pz = load float, ptr %i.py, align 4, !tbaa !53
  %i.qa = fpext float %i.pz to double
  %i.qb = fadd double %.0125, %i.qa
  %i.qc = fadd double %i.qb, f0x401921FB54442D18
  %i.qd = fmul double %i.qc, %i.dy
  %i.qe = fdiv double %i.qd, f0x402921FB54442D18
  %i.qf = fptosi double %i.qe to i32
  %i.qg = mul nsw i32 %i.ps, %i.bi
  %i.qh = add nsw i32 %i.qg, %i.qf
  %i.qi = zext i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.qi ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !63
  %i.ql = add i32 %i.qk, 1
  store i32 %i.ql, ptr %i.qj, align 4, !tbaa !63
  %i.qm = getelementptr inbounds nuw i8, ptr %.0124369, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !213 ; 2 uses
  %.not184 = icmp eq ptr %i.qn, null
  br i1 %.not184, label %.loopexit, label %bb.aq, !llvm.loop !191

bb.ar:                                            ; preds = %bb.ap
  %i.qo = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN2cv12ppf_match_3d13PPF3DDetector5matchERKNS_3MatERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EEdd:bb.a
  %i.xg = shufflevector <2 x double> %i.xb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xg, <2 x double> %i.uq, <2 x double> %i.xf)
  %i.xi = shufflevector <2 x double> %i.xc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xi, <2 x double> %i.vc, <2 x double> %i.xh)
  %i.xk = shufflevector <2 x double> %i.xd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xk, <2 x double> %i.vp, <2 x double> %i.xj)
  store <2 x double> %i.xl, ptr %i.hq, align 16, !tbaa !36
  %i.xm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xe, <2 x double> %i.ui, <2 x double> zeroinitializer)
  %i.xn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xg, <2 x double> %i.uu, <2 x double> %i.xm)
  %i.xo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xi, <2 x double> %i.vg, <2 x double> %i.xn)
  %i.xp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xk, <2 x double> %i.vt, <2 x double> %i.xo)
  store <2 x double> %i.xp, ptr %i.hr, align 16, !tbaa !36
  %i.xq = load <2 x double>, ptr %i.hs, align 16
  %i.xr = load <2 x double>, ptr %i.ht, align 8
  %i.xs = load <2 x double>, ptr %i.hu, align 16
  %i.xt = load double, ptr %i.hv, align 8, !tbaa !36
  %i.xu = shufflevector <2 x double> %i.xq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xu, <2 x double> %i.ue, <2 x double> zeroinitializer)
  %i.xw = shufflevector <2 x double> %i.xr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xw, <2 x double> %i.uq, <2 x double> %i.xv)
  %i.xy = shufflevector <2 x double> %i.xs, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xy, <2 x double> %i.vc, <2 x double> %i.xx)
  %i.ya = insertelement <2 x double> poison, double %i.xt, i64 0
  %i.yb = shufflevector <2 x double> %i.ya, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yb, <2 x double> %i.vp, <2 x double> %i.xz)
  store <2 x double> %i.yc, ptr %i.hw, align 16, !tbaa !36
  %i.yd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xu, <2 x double> %i.ui, <2 x double> zeroinitializer)
  %i.ye = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xw, <2 x double> %i.uu, <2 x double> %i.yd)
  %i.yf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xy, <2 x double> %i.vg, <2 x double> %i.ye)
  %i.yg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yb, <2 x double> %i.vt, <2 x double> %i.yf)
  store <2 x double> %i.yg, ptr %i.hx, align 16, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #26
  %i.yh = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #31
          to label %bb.ba unwind label %bb.bw     ; 11 uses

bb.ba:                                            ; preds = %bb.az
  %i.yi = zext i32 %.0133.lcssa to i64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv12ppf_match_3d6Pose3DE, i64 16), ptr %i.yh, align 8, !tbaa !20
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 40
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 176
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.yk, i8 0, i64 56, i1 false)
  store double %i.st, ptr %i.yl, align 8, !tbaa !219
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yh, i64 24
  store i64 %i.yi, ptr %i.ym, align 8, !tbaa !220
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yh, i64 32
  store i64 %.0127.lcssa, ptr %i.yn, align 8, !tbaa !99
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  store double 0.000000e+00, ptr %i.yo, align 8, !tbaa !221
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.yj, i8 0, i64 128, i1 false)
  store ptr %i.yh, ptr %67, align 16, !tbaa !98
  store ptr null, ptr %i.hy, align 8, !tbaa !83
  %i.yp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %bb.bf unwind label %bb.bb     ; 5 uses

bb.bb:                                            ; preds = %bb.ba
  %i.yq = landingpad { ptr, i32 }
          catch ptr null
  %i.yr = extractvalue { ptr, i32 } %i.yq, 0
  %i.ys = call ptr @__cxa_begin_catch(ptr %i.yr) #26 ; 0 uses
  %i.yt = load ptr, ptr %i.yh, align 8, !tbaa !20
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %i.yv = load ptr, ptr %i.yu, align 8
  call void %i.yv(ptr noundef nonnull align 8 dereferenceable(232) %i.yh) #26, !inline_history !203
  invoke void @__cxa_rethrow() #29
          to label %bb.be unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.yw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body211 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.yx = landingpad { ptr, i32 }
          catch ptr null
  %i.yy = extractvalue { ptr, i32 } %i.yx, 0
  call void @__clang_call_terminate(ptr %i.yy) #27
  unreachable

bb.be:                                            ; preds = %bb.bb
  unreachable

bb.bf:                                            ; preds = %bb.ba
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  store i32 1, ptr %i.yz, align 8, !tbaa !85
  %i.za = getelementptr inbounds nuw i8, ptr %i.yp, i64 12
  store i32 1, ptr %i.za, align 4, !tbaa !86
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.yp, align 8, !tbaa !20
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  store ptr %i.yh, ptr %i.zb, align 8, !tbaa !112
  store ptr %i.yp, ptr %i.hy, align 8, !tbaa !83
  %i.zc = load ptr, ptr %67, align 16, !tbaa !98
  invoke void @_ZN2cv12ppf_match_3d6Pose3D10updatePoseERNS_4MatxIdLi4ELi4EEE(ptr noundef nonnull align 8 dereferenceable(232) %i.zc, ptr noundef nonnull align 8 dereferenceable(128) %66)
          to label %bb.bg unwind label %bb.bx

bb.bg:                                            ; preds = %bb.bf
  %i.zd = load ptr, ptr %i.hz, align 8, !tbaa !80 ; 5 uses
  %i.ze = load ptr, ptr %i.bv, align 8, !tbaa !110
  %.not.i = icmp eq ptr %i.zd, %i.ze
  br i1 %.not.i, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.zf = load ptr, ptr %i.hy, align 8, !tbaa !83 ; 2 uses
  %i.zg = load <2 x ptr>, ptr %67, align 16, !tbaa !89
  store <2 x ptr> %i.zg, ptr %i.zd, align 8, !tbaa !89
  %.not.i.i.i.i.i = icmp eq ptr %i.zf, null
  br i1 %.not.i.i.i.i.i, label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zf, i64 8 ; 3 uses
  %i.zi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i = icmp eq i8 %i.zi, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.zj = load i32, ptr %i.zh, align 4, !tbaa !63
  %i.zk = add nsw i32 %i.zj, 1
  store i32 %i.zk, ptr %i.zh, align 4, !tbaa !63
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.zl = atomicrmw volatile add ptr %i.zh, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.hz, align 8, !tbaa !80
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.i

_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.i: ; preds = %bb.bk, %bb.bj, %bb.bh
  %i.zm = phi ptr [ %i.zd, %bb.bh ], [ %i.zd, %bb.bj ], [ %.pre.i, %bb.bk ]
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  store ptr %i.zn, ptr %i.hz, align 8, !tbaa !80
  br label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE9push_backERKS4_.exit

bb.bl:                                            ; preds = %bb.bg
  invoke void @_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr %i.zd, ptr noundef nonnull align 8 dereferenceable(16) %67)
          to label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE9push_backERKS4_.exit unwind label %bb.bx

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit.i, %bb.bl
  call void @free(ptr noundef %i.iu) #26
  %i.zo = load ptr, ptr %i.hy, align 8, !tbaa !83 ; 8 uses
  %.not.i.i = icmp eq ptr %i.zo, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE9push_backERKS4_.exit
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 8 ; 4 uses
  %i.zq = load atomic i64, ptr %i.zp acquire, align 8 ; 2 uses
  %i.zr = icmp eq i64 %i.zq, 4294967297
  %i.zs = trunc i64 %i.zq to i32                  ; 2 uses
  br i1 %i.zr, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.zp, align 8, !tbaa !85
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zo, i64 12
  store i32 0, ptr %i.zt, align 4, !tbaa !86
  %i.zu = load ptr, ptr %i.zo, align 8, !tbaa !20
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  %i.zw = load ptr, ptr %i.zv, align 8
  call void %i.zw(ptr noundef nonnull align 8 dereferenceable(16) %i.zo) #26, !inline_history !1
  %i.zx = load ptr, ptr %i.zo, align 8, !tbaa !20
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 24
  %i.zz = load ptr, ptr %i.zy, align 8
  call void %i.zz(ptr noundef nonnull align 8 dereferenceable(16) %i.zo) #26, !inline_history !1
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bo:                                            ; preds = %bb.bm
  %i.aaa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i = icmp eq i8 %i.aaa, 0
  br i1 %.not.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aab = add nsw i32 %i.zs, -1
  store i32 %i.aab, ptr %i.zp, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.aac = atomicrmw volatile add ptr %i.zp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i = phi i32 [ %i.zs, %bb.bp ], [ %i.aac, %bb.bq ]
  %i.aad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aad, label %bb.br, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zo) #26
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE9push_backERKS4_.exit, %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, %68 ; 2 uses
  %i.aae = load i32, ptr %i.bp, align 8, !tbaa !54 ; 2 uses
  %69 = trunc nuw i64 %indvars.iv.next403 to i32
  %70 = icmp sgt i32 %i.aae, %69
  br i1 %70, label %bb.ai, label %._crit_edge, !llvm.loop !204

bb.bs:                                            ; preds = %.noexc198, %._crit_edge383
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bt:                                            ; preds = %bb.as
  %i.aag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  br label %bb.bz

bb.bu:                                            ; preds = %.noexc200, %bb.at
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bv:                                            ; preds = %.noexc205, %bb.ay, %.noexc203, %bb.au
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bw:                                            ; preds = %bb.az
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  br label %.body211

bb.bx:                                            ; preds = %bb.bl, %bb.bf
  %i.aak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %67) #26
  br label %.body211

.body211:                                         ; preds = %bb.bw, %bb.bc, %bb.bx
  %.pn151 = phi { ptr, i32 } [ %i.aak, %bb.bx ], [ %i.yw, %bb.bc ], [ %i.aaj, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26
  br label %.body

.body:                                            ; preds = %bb.bv, %bb.ax, %bb.av, %.body211
  %.pn151.pn.pn = phi { ptr, i32 } [ %.pn151, %.body211 ], [ %i.aai, %bb.bv ], [ %i.sw, %bb.av ], [ %i.sx, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26
  br label %bb.by

bb.by:                                            ; preds = %.body, %bb.bu
  %.pn151.pn.pn.pn = phi { ptr, i32 } [ %.pn151.pn.pn, %.body ], [ %i.aah, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #26
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bt, %bb.bs
  %.pn151.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aaf, %bb.bs ], [ %i.aag, %bb.bt ], [ %.pn151.pn.pn.pn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ar, %bb.ak, %bb.bz
  %.pn166.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qo, %bb.ar ], [ %i.kb, %bb.ak ], [ %.pn151.pn.pn.pn.pn.pn.pn, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  br label %bb.ck

bb.cb:                                            ; preds = %._crit_edge
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  %i.aal = load ptr, ptr %44, align 8, !tbaa !79  ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aal, %i.aan
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cb, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.abf, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i ], [ %i.aal, %bb.cb ] ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !83 ; 8 uses
  %.not.i.i.i.i.i.i214 = icmp eq ptr %i.aap, null
  br i1 %.not.i.i.i.i.i.i214, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8 ; 4 uses
  %i.aar = load atomic i64, ptr %i.aaq acquire, align 8 ; 2 uses
  %i.aas = icmp eq i64 %i.aar, 4294967297
  %i.aat = trunc i64 %i.aar to i32                ; 2 uses
  br i1 %i.aas, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %i.aaq, align 8, !tbaa !85
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aap, i64 12
  store i32 0, ptr %i.aau, align 4, !tbaa !86
  %i.aav = load ptr, ptr %i.aap, align 8, !tbaa !20
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %i.aax = load ptr, ptr %i.aaw, align 8
  call void %i.aax(ptr noundef nonnull align 8 dereferenceable(16) %i.aap) #26, !inline_history !4
  %i.aay = load ptr, ptr %i.aap, align 8, !tbaa !20
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 24
  %i.aba = load ptr, ptr %i.aaz, align 8
  call void %i.aba(ptr noundef nonnull align 8 dereferenceable(16) %i.aap) #26, !inline_history !4
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.abb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.abb, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.abc = add nsw i32 %i.aat, -1
  store i32 %i.abc, ptr %i.aaq, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.abd = atomicrmw volatile add ptr %i.aaq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.aat, %bb.cf ], [ %i.abd, %bb.cg ]
  %i.abe = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.abe, label %bb.ch, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i, !prof !87

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aap) #26
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i: ; preds = %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.cd, %.lr.ph.i.i.i
  %i.abf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i215 = icmp eq ptr %i.abf, %i.aan
  br i1 %.not.i.i.i215, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %44, align 8, !tbaa !79
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.cb
  %i.abg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.aal, %bb.cb ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.abg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.abh = load ptr, ptr %i.bv, align 8, !tbaa !110
  %i.abi = ptrtoint ptr %i.abh to i64
  %i.abj = ptrtoint ptr %i.abg to i64
  %i.abk = sub i64 %i.abi, %i.abj
  call void @_ZdlPvm(ptr noundef nonnull %i.abg, i64 noundef %i.abk) #28
  br label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  ret void

bb.cj:                                            ; preds = %._crit_edge
  %i.abl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ca, %bb.cj, %bb.ah
  %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ig, %bb.ah ], [ %i.abl, %bb.cj ], [ %.pn166.pn.pn.pn.pn.pn.pn, %bb.ca ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #26
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ag, %bb.af
  %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ck ], [ %i.if, %bb.ag ], [ %i.ie, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ae, %bb.ad
  %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cl ], [ %i.id, %bb.ae ], [ %i.ic, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  call void @_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %44) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %bb.i, %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cm ], [ %.pn145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ %.pn143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %.pn.pn.pn341, %bb.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ]
  resume { ptr, i32 } %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.co:                                            ; preds = %bb.f
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN2cv9ExceptionC1ENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_i(ptr noundef nonnull align 8 dereferenceable(148), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN2cv9ExceptionD1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #16

declare void @__cxa_free_exception(ptr) local_unnamed_addr

end_hunk_1
