Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dqb?download=true
inline.NumInlined: 249
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK2cv6dynafu14DualQuaternion9getAffineEv:bb.a
  %i.u = tail call float @llvm.fmuladd.f32(float %i.e, float %i.i, float %i.t)
  %i.v = load <2 x float>, ptr %i.b, align 4, !tbaa !8 ; 4 uses
  %i.w = extractelement <2 x float> %i.v, i64 0   ; 4 uses
  %i.x = fpext float %i.w to double               ; 2 uses
  %i.y = extractelement <2 x float> %i.v, i64 1   ; 4 uses
  %i.z = fpext float %i.y to double               ; 2 uses
  %i.aa = fneg float %i.w
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.s)
  %i.ac = tail call noundef double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.ab)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ac)
  %i.ad = fptrunc double %sqrt.i.i to float
  %i.ae = fmul float %i.m, %i.aa
  %i.af = fmul float %i.y, %i.m
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.e, float %i.y, float %i.ae)
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.e, float %i.w, float %i.af)
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.l, float %i.i, float %i.ag)
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.n, float %i.y, float %i.u)
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.l, float %i.j, float %i.ah)
  %i.al = tail call float @llvm.fmuladd.f32(float %i.k, float %i.j, float %i.ai)
  %i.am = tail call float @llvm.fmuladd.f32(float %i.k, float %i.w, float %i.aj)
  %i.an = tail call float @llvm.fmuladd.f32(float %i.o, float %i.i, float %i.ak)
  %i.ao = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.an, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.am, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.al, i64 3
  %i.ar = fmul <4 x float> %i.aq, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %i.as = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = fdiv <4 x float> %i.ar, %i.at           ; 5 uses
  %i.av = extractelement <4 x float> %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ax = insertelement <2 x float> %i.aw, float %i.i, i64 1
  %i.ay = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = fmul <2 x float> %i.ax, %i.ay           ; 7 uses
  %i.ba = fmul <2 x float> %i.v, %i.ay            ; 5 uses
  %i.bb = extractelement <2 x float> %i.az, i64 0
  %i.bc = fneg float %i.bb
  %shift = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.ba
  %i.bd = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.be = fmul float %i.j, %i.av                  ; 2 uses
  %i.bf = fmul <2 x float> %i.ba, %i.ba           ; 2 uses
  %i.bg = fmul float %i.be, %i.bc                 ; 2 uses
  %i.bh = fadd float %i.bd, %i.bg
  %i.bi = fsub float %i.bd, %i.bg
  %i.bj = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <2 x i32> <i32 1, i32 2>
  %i.bk = fneg <2 x float> %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bm, %i.bk           ; 3 uses
  %i.bo = shufflevector <2 x float> %i.ba, <2 x float> %i.az, <2 x i32> <i32 0, i32 2>
  %i.bp = fmul <2 x float> %i.az, %i.bo           ; 3 uses
  %foldExtExtBinop13 = fadd <2 x float> %i.bn, %i.bp
  %i.bq = fsub <2 x float> %i.bp, %i.bn           ; 2 uses
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bs = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bt = fmul <2 x float> %i.az, %i.az           ; 2 uses
  %i.bu = fadd <2 x float> %i.bt, %i.bf
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 1.000000e+00))
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bx = insertelement <4 x float> %i.bw, float %i.bh, i64 1
  %i.by = shufflevector <2 x float> %i.br, <2 x float> %i.bs, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.bz = fadd <4 x float> %i.by, <float -0.000000e+00, float 0.000000e+00, float poison, float poison>
  %i.ca = shufflevector <4 x float> %i.bx, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cb = fmul <4 x float> %i.ca, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  store <4 x float> %i.cb, ptr %0, align 4
  %i.cc = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> %i.au, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ce = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bp, <4 x i32> <i32 2, i32 1, i32 poison, i32 poison>
  %i.cf = fadd <4 x float> %i.cd, %i.ce
  %i.cg = insertelement <4 x float> %i.bw, float %i.bi, i64 0
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ci = fmul <4 x float> %i.ch, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  store <4 x float> %i.ci, ptr %.sroa.6.0..sroa_idx6.i, align 4
  %i.cj = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ck = fadd <2 x float> %i.cj, %i.bf
  %i.cl = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cm = shufflevector <2 x float> %foldExtExtBinop13, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cn = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.co = shufflevector <4 x float> %i.cm, <4 x float> %i.cn, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cp = shufflevector <2 x float> %i.ck, <2 x float> %i.cl, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> <float -2.000000e+00, float 1.000000e+00, float undef, float undef>, <4 x float> <float 1.000000e+00, float 0.000000e+00, float undef, float undef>)
  %i.cr = shufflevector <4 x float> %i.co, <4 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cs = fmul <4 x float> %i.cr, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  store <4 x float> %i.cs, ptr %.sroa.8.0..sroa_idx10.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv6dynafu3DQBERSt6vectorIfSaIfEERS1_INS0_14DualQuaternionESaIS5_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::dynafu::DualQuaternion") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !42     ; 5 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !43     ; 3 uses
  %i.i = icmp eq i64 %i.f, 4
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.g, -2
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %i.j = and i64 %i.f, 4
  %lcmp.mod.not = icmp eq i64 %i.j, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.07.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bs, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init48 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.br, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod51 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.07.epil.init
  %i.l = load float, ptr %i.k, align 4, !tbaa !8
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.07.epil.init ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 4, !tbaa !8, !noalias !46
  %i.o = insertelement <4 x float> poison, float %i.l, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.q = fmul <4 x float> %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load <4 x float>, ptr %i.r, align 4, !tbaa !8, !noalias !53
  %i.t = fmul <4 x float> %i.p, %i.s
  %i.u = fadd <4 x float> %i.q, %.epil.init
  %i.v = fadd <4 x float> %i.t, %.epil.init48
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.w = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.u, %.epil.preheader ] ; 5 uses
  %i.x = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.br, %._crit_edge.loopexit.unr-lcssa ], [ %i.v, %.epil.preheader ]
  %i.y = extractelement <4 x float> %i.w, i64 0
  %i.z = fpext float %i.y to double               ; 2 uses
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.z, double 0.000000e+00)
  %i.ab = extractelement <4 x float> %i.w, i64 1
  %i.ac = fpext float %i.ab to double             ; 2 uses
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.aa)
  %i.ae = extractelement <4 x float> %i.w, i64 2
  %i.af = fpext float %i.ae to double             ; 2 uses
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.ad)
  %i.ah = extractelement <4 x float> %i.w, i64 3
  %i.ai = fpext float %i.ah to double             ; 2 uses
  %i.aj = tail call noundef double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.ag)
  %sqrt.i.i.i = tail call noundef double @llvm.sqrt.f64(double %i.aj)
  %i.ak = fptrunc double %sqrt.i.i.i to float
  %i.al = fdiv float 1.000000e+00, %i.ak
  %i.am = insertelement <4 x float> poison, float %i.al, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ao = fmul <4 x float> %i.w, %i.an
  store <4 x float> %i.ao, ptr %0, align 4, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = fmul <4 x float> %i.an, %i.x
  store <4 x float> %i.aq, ptr %i.ap, align 4, !tbaa !8
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.07 = phi i64 [ 0, %.lr.ph.new ], [ %i.bs, %bb.b ] ; 4 uses
  %i.ar = phi <4 x float> [ zeroinitializer, %.lr.ph.new ], [ %i.bq, %bb.b ]
  %i.as = phi <4 x float> [ zeroinitializer, %.lr.ph.new ], [ %i.br, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.07
  %i.au = load float, ptr %i.at, align 4, !tbaa !8
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.07 ; 2 uses
  %i.aw = load <4 x float>, ptr %i.av, align 4, !tbaa !8, !noalias !46
  %i.ax = insertelement <4 x float> poison, float %i.au, i64 0
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.az = fmul <4 x float> %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bb = load <4 x float>, ptr %i.ba, align 4, !tbaa !8, !noalias !53
  %i.bc = fmul <4 x float> %i.ay, %i.bb
  %i.bd = fadd <4 x float> %i.az, %i.ar
  %i.be = fadd <4 x float> %i.bc, %i.as
  %i.bf = or disjoint i64 %.07, 1                 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !8
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.bf ; 2 uses
  %i.bj = load <4 x float>, ptr %i.bi, align 4, !tbaa !8, !noalias !46
  %i.bk = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bm = fmul <4 x float> %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bo = load <4 x float>, ptr %i.bn, align 4, !tbaa !8, !noalias !53
  %i.bp = fmul <4 x float> %i.bl, %i.bo
  %i.bq = fadd <4 x float> %i.bm, %i.bd           ; 3 uses
  %i.br = fadd <4 x float> %i.bp, %i.be           ; 3 uses
  %i.bs = add nuw i64 %.07, 2                     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !58
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6dynafu3DQBERSt6vectorIfSaIfEERS1_INS_7Affine3IfEESaIS6_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::Affine3") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::dynafu::DualQuaternion", align 16 ; 7 uses
  %4 = alloca %"class.cv::dynafu::DualQuaternion", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !63     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 6                   ; 2 uses
  %i.h = icmp ugt i64 %i.g, 288230376151711743
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.i = ashr exact i64 %i.f, 1                   ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #17 ; 3 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.i, i1 false)
  %i.l = ptrtoint ptr %i.k to i64
  %.pre = load ptr, ptr %2, align 8, !tbaa !64
  %.pre37 = load ptr, ptr %i.a, align 8, !tbaa !64
  br label %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EEC2EmRKS3_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.m = phi ptr [ %.pre37, %.lr.ph.preheader.i.i.i.i.i ], [ %i.b, %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %i.n = phi ptr [ %.pre, %.lr.ph.preheader.i.i.i.i.i ], [ %i.c, %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sroa.018.0 = phi ptr [ %i.j, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 7 uses
  %.sink.i = phi i64 [ %i.l, %.lr.ph.preheader.i.i.i.i.i ], [ 0, %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.not15.i = icmp eq ptr %i.n, %i.m
  br i1 %.not15.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN2cv7Affine3IfEESt6vectorIS4_SaIS4_EEEENS1_IPNS2_6dynafu14DualQuaternionES6_ISB_SaISB_EEEEZNSA_3DQBERS6_IfSaIfEERS8_E3$_0ET0_T_SM_SL_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EEC2EmRKS3_.exit
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.i
  %.sroa.012.017.i = phi ptr [ %.sroa.018.0, %.lr.ph.i ], [ %i.ag, %.lr.ph.i.a ] ; 2 uses
  %.sroa.09.016.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.af, %.lr.ph.i.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @_ZN2cv6dynafu10QuaternionC2ERKNS_7Affine3IfEE(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull readonly align 4 dereferenceable(64) %.sroa.09.016.i)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i, i64 12
  %7 = load float, ptr %i.o, align 4, !tbaa !8, !noalias !68 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i, i64 28
  %9 = load float, ptr %8, align 4, !tbaa !8, !noalias !68
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i, i64 44
  %i.p = load float, ptr %10, align 4, !tbaa !8, !noalias !68 ; 2 uses
  %11 = fneg float %i.p
  %i.q = fneg float %7
  %12 = load <4 x float>, ptr %3, align 16, !tbaa !8, !alias.scope !65 ; 3 uses
  %13 = load float, ptr %6, align 4, !tbaa !8, !alias.scope !65
  %14 = fneg float %13
  %i.r = insertelement <4 x float> poison, float %9, i64 0
  %15 = insertelement <4 x float> %12, float %14, i64 1
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %16 = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.t = fmul <4 x float> %i.s, %16
  %i.u = insertelement <4 x float> poison, float %7, i64 0
  %i.v = insertelement <4 x float> %i.u, float %i.q, i64 1
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> %12, <4 x float> %i.t)
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.z = insertelement <4 x float> poison, float %i.p, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %11, i64 1
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %12, <4 x float> %i.y)
  %i.ad = fmul <4 x float> %i.ac, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float -5.000000e-01>
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.ae, ptr %5, align 16, !alias.scope !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.012.017.i, ptr noundef nonnull align 16 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i, i64 32
  %.not.i = icmp eq ptr %i.af, %i.m
  br i1 %.not.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN2cv7Affine3IfEESt6vectorIS4_SaIS4_EEEENS1_IPNS2_6dynafu14DualQuaternionES6_ISB_SaISB_EEEEZNSA_3DQBERS6_IfSaIfEERS8_E3$_0ET0_T_SM_SL_T1_.exit", label %.lr.ph.i.a, !llvm.loop !71

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN2cv7Affine3IfEESt6vectorIS4_SaIS4_EEEENS1_IPNS2_6dynafu14DualQuaternionES6_ISB_SaISB_EEEEZNSA_3DQBERS6_IfSaIfEERS8_E3$_0ET0_T_SM_SL_T1_.exit": ; preds = %.lr.ph.i.a, %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EEC2EmRKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38, !noalias !72 ; 2 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !42, !noalias !72 ; 5 uses
  %.not.i14 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i14, label %.loopexit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN2cv7Affine3IfEESt6vectorIS4_SaIS4_EEEENS1_IPNS2_6dynafu14DualQuaternionES6_ISB_SaISB_EEEEZNSA_3DQBERS6_IfSaIfEERS8_E3$_0ET0_T_SM_SL_T1_.exit"
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = ashr exact i64 %i.am, 2                 ; 2 uses
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph.i15.new

.lr.ph.i15.new:                                   ; preds = %.lr.ph.i15
  %unroll_iter = and i64 %i.an, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i15.new
  %.07.i = phi i64 [ 0, %.lr.ph.i15.new ], [ %i.bq, %bb.b ] ; 4 uses
  %i.ap = phi <4 x float> [ zeroinitializer, %.lr.ph.i15.new ], [ %i.bo, %bb.b ]
  %i.aq = phi <4 x float> [ zeroinitializer, %.lr.ph.i15.new ], [ %i.bp, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i15.new ], [ %niter.next.1, %bb.b ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.07.i
  %i.as = load float, ptr %i.ar, align 4, !tbaa !8, !noalias !72
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %.sroa.018.0, i64 %.07.i ; 2 uses
  %i.au = load <4 x float>, ptr %i.at, align 4, !tbaa !8, !noalias !75
  %i.av = insertelement <4 x float> poison, float %i.as, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ax = fmul <4 x float> %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.az = load <4 x float>, ptr %i.ay, align 4, !tbaa !8, !noalias !82
  %i.ba = fmul <4 x float> %i.aw, %i.az
  %i.bb = fadd <4 x float> %i.ap, %i.ax
  %i.bc = fadd <4 x float> %i.aq, %i.ba
  %i.bd = or disjoint i64 %.07.i, 1               ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !8, !noalias !72
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.018.0, i64 %i.bd ; 2 uses
  %i.bh = load <4 x float>, ptr %i.bg, align 4, !tbaa !8, !noalias !75
  %i.bi = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bk = fmul <4 x float> %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bm = load <4 x float>, ptr %i.bl, align 4, !tbaa !8, !noalias !82
  %i.bn = fmul <4 x float> %i.bj, %i.bm
  %i.bo = fadd <4 x float> %i.bb, %i.bk           ; 3 uses
  %i.bp = fadd <4 x float> %i.bc, %i.bn           ; 3 uses
  %i.bq = add nuw i64 %.07.i, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !58

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %i.br = and i64 %i.am, 4
  %lcmp.mod.not = icmp eq i64 %i.br, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i15
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i15 ], [ %i.bq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.i15 ], [ %i.bo, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init60 = phi <4 x float> [ zeroinitializer, %.lr.ph.i15 ], [ %i.bp, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod63 = trunc i64 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.07.i.epil.init
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !8, !noalias !72
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %.sroa.018.0, i64 %.07.i.epil.init ; 2 uses
  %i.bv = load <4 x float>, ptr %i.bu, align 4, !tbaa !8, !noalias !75
  %i.bw = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.by = fmul <4 x float> %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ca = load <4 x float>, ptr %i.bz, align 4, !tbaa !8, !noalias !82
  %i.cb = fmul <4 x float> %i.bx, %i.ca
  %i.cc = fadd <4 x float> %.epil.init, %i.by
  %i.cd = fadd <4 x float> %.epil.init60, %i.cb
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN2cv7Affine3IfEESt6vectorIS4_SaIS4_EEEENS1_IPNS2_6dynafu14DualQuaternionES6_ISB_SaISB_EEEEZNSA_3DQBERS6_IfSaIfEERS8_E3$_0ET0_T_SM_SL_T1_.exit"
  %i.ce = phi <4 x float> [ zeroinitializer, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN2cv7Affine3IfEESt6vectorIS4_SaIS4_EEEENS1_IPNS2_6dynafu14DualQuaternionES6_ISB_SaISB_EEEEZNSA_3DQBERS6_IfSaIfEERS8_E3$_0ET0_T_SM_SL_T1_.exit" ], [ %i.bo, %.loopexit.loopexit.unr-lcssa ], [ %i.cc, %.epil.preheader ] ; 5 uses
  %i.cf = phi <4 x float> [ zeroinitializer, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN2cv7Affine3IfEESt6vectorIS4_SaIS4_EEEENS1_IPNS2_6dynafu14DualQuaternionES6_ISB_SaISB_EEEEZNSA_3DQBERS6_IfSaIfEERS8_E3$_0ET0_T_SM_SL_T1_.exit" ], [ %i.bp, %.loopexit.loopexit.unr-lcssa ], [ %i.cd, %.epil.preheader ]
  %i.cg = extractelement <4 x float> %i.ce, i64 0
  %i.ch = fpext float %i.cg to double             ; 2 uses
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double 0.000000e+00)
  %i.cj = extractelement <4 x float> %i.ce, i64 1
  %i.ck = fpext float %i.cj to double             ; 2 uses
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.ck, double %i.ci)
  %i.cm = extractelement <4 x float> %i.ce, i64 2
  %i.cn = fpext float %i.cm to double             ; 2 uses
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %i.cl)
  %i.cp = extractelement <4 x float> %i.ce, i64 3
  %i.cq = fpext float %i.cp to double             ; 2 uses
  %i.cr = tail call noundef double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double %i.co)
  %sqrt.i.i.i.i = tail call noundef double @llvm.sqrt.f64(double %i.cr)
  %i.cs = fptrunc double %sqrt.i.i.i.i to float
  %i.ct = fdiv float 1.000000e+00, %i.cs
  %i.cu = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cw = fmul <4 x float> %i.ce, %i.cv
  store <4 x float> %i.cw, ptr %4, align 16, !tbaa !8, !alias.scope !72
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cy = fmul <4 x float> %i.cf, %i.cv
  store <4 x float> %i.cy, ptr %i.cx, align 16, !tbaa !8, !alias.scope !72
  call void @_ZNK2cv6dynafu14DualQuaternion9getAffineEv(ptr dead_on_unwind writable sret(%"class.cv::Affine3") align 4 %0, ptr noundef nonnull align 4 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.not.i.i.i = icmp eq ptr %.sroa.018.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.cz = ptrtoint ptr %.sroa.018.0 to i64
  %i.da = sub i64 %.sink.i, %i.cz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.018.0, i64 noundef %i.da) #18
  br label %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EED2Ev.exit: ; preds = %.loopexit, %bb.c
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_: argument 0"}
!12 = distinct !{!12, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE: argument 0"}
!15 = distinct !{!15, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE"}
!16 = !{!17, !14}
end_hunk_0
