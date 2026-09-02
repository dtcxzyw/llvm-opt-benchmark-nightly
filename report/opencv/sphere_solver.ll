Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sphere_solver?download=true
inline.NumInlined: 209
inline.NumDeleted: 138
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac31SphereModelNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac31SphereModelNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #15, !inline_history !78
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac31SphereModelNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv4usac31SphereModelNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac31SphereModelNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #15
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac31SphereModelNonMinimalSolverImplD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac16NonMinimalSolver8estimateERKNS_3MatERKSt6vectorIiSaIiEEiRS5_IS2_SaIS2_EERKS5_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac31SphereModelNonMinimalSolverImpl8estimateERKSt6vectorIiSaIiEEiRS2_INS_3MatESaIS7_EERKS2_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 7 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.b = sitofp i32 %2 to double
  %i.c = fdiv double 1.000000e+00, %i.b           ; 5 uses
  %i.d = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !37     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp eq i32 %2, 1
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %i.m = insertelement <2 x double> poison, double %i.c, i64 0
  %i.n = fmul <2 x double> %i.m, <double 0.000000e+00, double poison>
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul double %i.c, 0.000000e+00
  br label %._crit_edge197

.lr.ph196.unr-lcssa:                              ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph196, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph196.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.lr.ph196.unr-lcssa ]
  %.0162180.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.bw, %.lr.ph196.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bv, %.lr.ph196.unr-lcssa ]
  %lcmp.mod282 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod282)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.r = load i32, ptr %i.q, align 4, !tbaa !38
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !40
  %i.v = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.s
  %i.w = load float, ptr %i.v, align 4, !tbaa !40
  %i.x = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.s
  %i.y = load float, ptr %i.x, align 4, !tbaa !40
  %i.z = insertelement <2 x float> poison, float %i.w, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.u, i64 1
  %i.ab = fpext <2 x float> %i.aa to <2 x double>
  %i.ac = fpext float %i.y to double
  %i.ad = fadd <2 x double> %.epil.init, %i.ab
  %i.ae = fadd double %.0162180.epil.init, %i.ac
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.unr-lcssa, %.epil.preheader
  %.lcssa279 = phi <2 x double> [ %i.bv, %.lr.ph196.unr-lcssa ], [ %i.ad, %.epil.preheader ]
  %.lcssa278 = phi double [ %i.bw, %.lr.ph196.unr-lcssa ], [ %i.ae, %.epil.preheader ]
  %i.af = insertelement <2 x double> poison, double %i.c, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x double> %i.ag, %.lcssa279     ; 2 uses
  %i.ai = fmul double %i.c, %.lcssa278            ; 2 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !26
  %wide.trip.count229 = zext nneg i32 %2 to i64
  %i.aq = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.0162180 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.bw, %bb.b ]
  %i.ar = phi <2 x double> [ zeroinitializer, %.lr.ph.new ], [ %i.bv, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !38
  %i.au = sext i32 %i.at to i64                   ; 3 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !40
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.au
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !40
  %i.az = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.au
  %i.ba = load float, ptr %i.az, align 4, !tbaa !40
  %i.bb = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.aw, i64 1
  %i.bd = fpext <2 x float> %i.bc to <2 x double>
  %i.be = fpext float %i.ba to double
  %i.bf = fadd <2 x double> %i.ar, %i.bd
  %i.bg = fadd double %.0162180, %i.be
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !38
  %i.bk = sext i32 %i.bj to i64                   ; 3 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !40
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bk
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !40
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bk
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !40
  %i.br = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bm, i64 1
  %i.bt = fpext <2 x float> %i.bs to <2 x double>
  %i.bu = fpext float %i.bq to double
  %i.bv = fadd <2 x double> %i.bf, %i.bt          ; 3 uses
  %i.bw = fadd double %i.bg, %i.bu                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph196.unr-lcssa, label %bb.b, !llvm.loop !79

._crit_edge197.loopexit:                          ; preds = %bb.c
  %7 = fmul <3 x double> %19, splat (double 5.000000e-01)
  %i.bx = shufflevector <2 x double> %16, <2 x double> %i.dm, <2 x i32> <i32 1, i32 2>
  br label %._crit_edge197

._crit_edge197:                                   ; preds = %._crit_edge, %._crit_edge197.loopexit
  %i.by = phi double [ %i.p, %._crit_edge ], [ %i.ai, %._crit_edge197.loopexit ]
  %.0168.lcssa.a = phi double [ 0.000000e+00, %._crit_edge ], [ %13, %._crit_edge197.loopexit ] ; 5 uses
  %.0164.lcssa.a = phi double [ 0.000000e+00, %._crit_edge ], [ %12, %._crit_edge197.loopexit ] ; 3 uses
  %8 = phi <3 x double> [ zeroinitializer, %._crit_edge ], [ %7, %._crit_edge197.loopexit ] ; 6 uses
  %i.bz = phi <2 x double> [ %i.o, %._crit_edge ], [ %i.ah, %._crit_edge197.loopexit ]
  %i.ca = phi <2 x double> [ zeroinitializer, %._crit_edge ], [ %i.bx, %._crit_edge197.loopexit ] ; 3 uses
  %i.cb = phi <2 x double> [ zeroinitializer, %._crit_edge ], [ %16, %._crit_edge197.loopexit ] ; 4 uses
  %i.cc = phi <2 x double> [ zeroinitializer, %._crit_edge ], [ %i.dm, %._crit_edge197.loopexit ] ; 3 uses
  %i.cd = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  %i.ce = fneg <2 x double> %i.ca
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cg = fmul <2 x double> %i.cb, %i.cf
  %i.ch = insertelement <2 x double> %i.cc, double %.0168.lcssa.a, i64 0
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ca, <2 x double> %i.cg) ; 4 uses
  %i.cj = extractelement <2 x double> %i.cc, i64 1
  %i.ck = fneg double %i.cj
  %i.cl = fmul double %.0168.lcssa.a, %i.ck
  %i.cm = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cd, double %i.cl) ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.cb, %i.ci
  %i.co = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cp = extractelement <2 x double> %i.ci, i64 1
  %i.cq = tail call double @llvm.fmuladd.f64(double %.0164.lcssa.a, double %i.cp, double %i.co)
  %i.cr = tail call double @llvm.fmuladd.f64(double %.0168.lcssa.a, double %i.cn, double %i.cq) ; 3 uses
  %i.cs = fcmp une double %i.cr, 0.000000e+00
  br i1 %i.cs, label %bb.d, label %bb.l

bb.c:                                             ; preds = %.lr.ph196, %bb.c
  %indvars.iv226 = phi i64 [ 0, %.lr.ph196 ], [ %indvars.iv.next227, %bb.c ] ; 2 uses
  %.0164194 = phi double [ 0.000000e+00, %.lr.ph196 ], [ %12, %bb.c ]
  %.0168192 = phi double [ 0.000000e+00, %.lr.ph196 ], [ %13, %bb.c ]
  %9 = phi <3 x double> [ zeroinitializer, %.lr.ph196 ], [ %19, %bb.c ]
  %i.ct = phi <2 x double> [ zeroinitializer, %.lr.ph196 ], [ %16, %bb.c ]
  %i.cu = phi <2 x double> [ zeroinitializer, %.lr.ph196 ], [ %i.dm, %bb.c ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv226
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !38
  %i.cx = sext i32 %i.cw to i64                   ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !40
  %i.da = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.cx
  %i.db = load float, ptr %i.da, align 4, !tbaa !40
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.cx
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !40
  %i.de = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.db, i64 1
  %i.dg = fpext <2 x float> %i.df to <2 x double>
  %i.dh = fpext float %i.dd to double
  %i.di = fsub <2 x double> %i.dg, %i.aq          ; 7 uses
  %10 = fsub double %i.dh, %i.ai                  ; 3 uses
  %i.dj = extractelement <2 x double> %i.di, i64 0
  %foldExtExtBinop267 = fmul <2 x double> %i.di, %i.di ; 2 uses
  %11 = extractelement <2 x double> %foldExtExtBinop267, i64 0
  %i.dk = insertelement <2 x double> %i.di, double %10, i64 0 ; 2 uses
  %i.dl = fmul <2 x double> %i.dk, %i.dk          ; 3 uses
  %12 = fadd double %.0164194, %11                ; 2 uses
  %13 = tail call double @llvm.fmuladd.f64(double %i.dj, double %10, double %.0168192) ; 2 uses
  %14 = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %15 = insertelement <2 x double> %14, double %10, i64 1 ; 2 uses
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %15, <2 x double> %i.ct) ; 3 uses
  %i.dm = fadd <2 x double> %i.cu, %i.dl          ; 3 uses
  %shift = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop269 = fadd <2 x double> %foldExtExtBinop267, %shift
  %foldExtExtBinop271 = fadd <2 x double> %foldExtExtBinop269, %i.dl
  %17 = shufflevector <2 x double> %foldExtExtBinop271, <2 x double> poison, <3 x i32> zeroinitializer
  %18 = shufflevector <2 x double> %15, <2 x double> %i.di, <3 x i32> <i32 1, i32 2, i32 3>
  %19 = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %17, <3 x double> %18, <3 x double> %9) ; 2 uses
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count229
  br i1 %exitcond230.not, label %._crit_edge197.loopexit, label %bb.c, !llvm.loop !80

bb.d:                                             ; preds = %._crit_edge197
  %i.dn = fneg double %i.cd
  %i.do = fmul double %.0164.lcssa.a, %i.dn
  %i.dp = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dq = insertelement <2 x double> %i.dp, double %.0168.lcssa.a, i64 0 ; 2 uses
  %i.dr = fneg <2 x double> %i.dq
  %i.ds = fmul <2 x double> %i.dq, %i.dr
  %i.dt = insertelement <2 x double> poison, double %.0164.lcssa.a, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.cc, <2 x double> %i.ds) ; 2 uses
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.cm, double %.0168.lcssa.a, double %i.do) ; 2 uses
  %20 = shufflevector <3 x double> %8, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.dx = shufflevector <2 x double> %i.dv, <2 x double> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.dy = fmul <2 x double> %20, %i.dx
  %21 = shufflevector <3 x double> %8, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %21, <2 x double> %i.dy)
  %i.ea = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %i.cn, i64 1
  %22 = shufflevector <3 x double> %8, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %22, <2 x double> %i.dz)
  %i.ed = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = fdiv <2 x double> %i.ec, %i.ee
  %i.eg = fadd <2 x double> %i.bz, %i.ef          ; 3 uses
  %i.eh = extractelement <3 x double> %8, i64 2
  %i.ei = fmul double %i.eh, %i.dw
  %23 = extractelement <3 x double> %8, i64 1
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.cn, double %23, double %i.ei)
  %i.ek = extractelement <3 x double> %8, i64 0
  %i.el = extractelement <2 x double> %i.dv, i64 1
  %i.em = tail call double @llvm.fmuladd.f64(double %i.el, double %i.ek, double %i.ej)
  %i.en = fdiv double %i.em, %i.cr
  %i.eo = fadd double %i.by, %i.en                ; 2 uses
  br i1 %i.d, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %bb.d
  %i.ep = load ptr, ptr %1, align 8, !tbaa !37
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !24
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !25
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !26
  %wide.trip.count234 = zext nneg i32 %2 to i64
  %i.ew = extractelement <2 x double> %i.eg, i64 0
  %i.ex = extractelement <2 x double> %i.eg, i64 1
  br label %bb.e

._crit_edge211:                                   ; preds = %bb.e, %bb.d
  %.0166.lcssa = phi double [ 0.000000e+00, %bb.d ], [ %i.fv, %bb.e ]
  %i.ey = fmul double %i.c, %.0166.lcssa
  %i.ez = tail call double @sqrt(double noundef %i.ey) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.fa = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.fa, ptr %i.a, align 16, !tbaa !42
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.eo, ptr %i.fb, align 16, !tbaa !42
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.ez, ptr %i.fc, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 1, i32 noundef 4, i32 noundef 6, ptr noundef nonnull %i.a, i64 noundef 0)
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.f unwind label %bb.i

bb.e:                                             ; preds = %.lr.ph210, %bb.e
  %indvars.iv231 = phi i64 [ 0, %.lr.ph210 ], [ %indvars.iv.next232, %bb.e ] ; 2 uses
  %.0166207 = phi double [ 0.000000e+00, %.lr.ph210 ], [ %i.fv, %bb.e ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv231
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !38
  %i.ff = sext i32 %i.fe to i64                   ; 3 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !40
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.ff
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !40
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ff
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !40
  %i.fm = fpext float %i.fh to double
  %i.fn = fsub double %i.fm, %i.ex                ; 2 uses
  %i.fo = fpext float %i.fj to double
  %i.fp = fsub double %i.fo, %i.ew                ; 2 uses
  %i.fq = fpext float %i.fl to double
  %i.fr = fsub double %i.fq, %i.eo                ; 2 uses
  %i.fs = fmul double %i.fp, %i.fp
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.fn, double %i.fs)
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fr, double %i.fr, double %i.ft)
  %i.fv = fadd double %.0166207, %i.fu            ; 2 uses
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count234
  br i1 %exitcond235.not, label %._crit_edge211, label %bb.e, !llvm.loop !81

bb.f:                                             ; preds = %._crit_edge211
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !33 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.fx, %i.fz
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.fx, ptr noundef nonnull align 8 dereferenceable(208) %5) #15
  %i.ga = load ptr, ptr %i.fw, align 8, !tbaa !33
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 208
  store ptr %i.gb, ptr %i.fw, align 8, !tbaa !33
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.fx, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit unwind label %bb.j

_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.h, %bb.g
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.l

bb.i:                                             ; preds = %._crit_edge211
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.gd, %bb.j ], [ %i.gc, %bb.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %._crit_edge197, %_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.0159 = phi i32 [ 1, %_ZNSt6vectorIN2cv3MatESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ 0, %._crit_edge197 ]
  ret i32 %.0159
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac31SphereModelNonMinimalSolverImpl28getMinimumRequiredSampleSizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac31SphereModelNonMinimalSolverImpl23getMaxNumberOfSolutionsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv4usac31SphereModelNonMinimalSolverImpl8estimateERKSt6vectorIbSaIbEERS2_INS_3MatESaIS7_EERKS2_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac31SphereModelNonMinimalSolverImpl21enforceRankConstraintEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac27SphereModelNonMinimalSolverD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x double> @llvm.fmuladd.v3f64(<3 x double>, <3 x double>, <3 x double>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!9 = !{!8, !5, i64 8}
!10 = !{!8, !5, i64 12}
!11 = !{!"vtable pointer", !3, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!15 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"p1 omnipotent char", !13, i64 0}
!18 = !{!"_ZTSSt9type_info", !17, i64 8}
!19 = !{!18, !17, i64 8}
!20 = !{!4, !4, i64 0}
!21 = !{!"p1 _ZTSN2cv3MatE", !13, i64 0}
!22 = !{!"p1 float", !13, i64 0}
!23 = !{!"_ZTSN2cv17PointCloudWrapperE", !21, i64 0, !5, i64 8, !22, i64 16, !22, i64 24, !22, i64 32}
!24 = !{!23, !22, i64 16}
!25 = !{!23, !22, i64 24}
!26 = !{!23, !22, i64 32}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!28 = !{!"long", !4, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !28, i64 8, !4, i64 16}
!30 = !{!29, !17, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!32 = !{!31, !21, i64 0}
!33 = !{!31, !21, i64 8}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"p1 int", !13, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!36, !35, i64 0}
!38 = !{!5, !5, i64 0}
!39 = !{!"float", !4, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"double", !4, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!31, !21, i64 16}
!44 = distinct !{!44, !"_ZN2cvL7makePtrINS_4usac28SphereModelMinimalSolverImplEJNS_3MatEEEENS_3PtrIT_EEDpRKT0_"}
!45 = distinct !{!45, !44, !"_ZN2cvL7makePtrINS_4usac28SphereModelMinimalSolverImplEJNS_3MatEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!46 = distinct !{!46, !"_ZSt11make_sharedIN2cv4usac28SphereModelMinimalSolverImplEJRKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_"}
!47 = distinct !{!47, !46, !"_ZSt11make_sharedIN2cv4usac28SphereModelMinimalSolverImplEJRKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_: argument 0"}
!48 = !{!47, !45}
!49 = !{!"p1 _ZTSN2cv4usac24SphereModelMinimalSolverE", !13, i64 0}
!50 = !{!"_ZTSSt12__shared_ptrIN2cv4usac24SphereModelMinimalSolverELN9__gnu_cxx12_Lock_policyE2EE", !49, i64 0, !15, i64 8}
!51 = !{!50, !49, i64 0}
!52 = distinct !{!52, !"_ZN2cvL7makePtrINS_4usac31SphereModelNonMinimalSolverImplEJNS_3MatEEEENS_3PtrIT_EEDpRKT0_"}
!53 = distinct !{!53, !52, !"_ZN2cvL7makePtrINS_4usac31SphereModelNonMinimalSolverImplEJNS_3MatEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!54 = distinct !{!54, !"_ZSt11make_sharedIN2cv4usac31SphereModelNonMinimalSolverImplEJRKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_"}
!55 = distinct !{!55, !54, !"_ZSt11make_sharedIN2cv4usac31SphereModelNonMinimalSolverImplEJRKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_: argument 0"}
!56 = !{!55, !53}
!57 = !{!"p1 _ZTSN2cv4usac27SphereModelNonMinimalSolverE", !13, i64 0}
!58 = !{!"_ZTSSt12__shared_ptrIN2cv4usac27SphereModelNonMinimalSolverELN9__gnu_cxx12_Lock_policyE2EE", !57, i64 0, !15, i64 8}
!59 = !{!58, !57, i64 0}
!60 = distinct !{null}
!61 = !{!23, !21, i64 0}
!62 = !{!"p1 _ZTSN2cv12MatAllocatorE", !13, i64 0}
!63 = !{!"p1 _ZTSN2cv8UMatDataE", !13, i64 0}
!64 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!65 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !64, i64 4, !5, i64 8, !4, i64 12}
!66 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!67 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !62, i64 56, !63, i64 64, !65, i64 72, !66, i64 128}
!68 = !{!67, !5, i64 8}
!69 = !{!67, !5, i64 12}
!70 = !{!23, !5, i64 8}
!71 = !{!67, !17, i64 24}
!72 = !{!67, !5, i64 0}
!73 = distinct !{!73, !34}
!74 = !{!27, !17, i64 0}
!75 = !{!28, !28, i64 0}
!76 = !{!29, !28, i64 8}
!77 = distinct !{!77, !34}
!78 = distinct !{null}
!79 = distinct !{!79, !34}
!80 = distinct !{!80, !34}
!81 = distinct !{!81, !34}
end_hunk_0
