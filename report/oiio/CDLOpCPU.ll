inline.NumInlined: 514
inline.NumDeleted: 258
begin_hunk_0_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererFwdILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #20, !inline_history !92
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !48
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_517CDLRendererRevSSEILb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_517CDLRendererRevSSEILb1EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <4 x float>, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load <4 x float>, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load <4 x float>, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load float, ptr %i.g, align 8, !tbaa !13
  %i.i = insertelement <4 x float> poison, float %i.h, i64 0
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = icmp sgt i64 %3, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.022 = phi i64 [ %i.bz, %.lr.ph ], [ 0, %bb.a ]
  %.0921 = phi ptr [ %i.by, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %.01020 = phi ptr [ %i.bx, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01020, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !12
  %i.n = load <4 x float>, ptr %.01020, align 4, !tbaa !48
  %i.o = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.n, <4 x float> zeroinitializer)
  %i.p = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.o, <4 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.q = fmul <4 x float> %i.p, <float 2.126000e-01, float 7.152000e-01, float 7.220000e-02, float 0.000000e+00> ; 2 uses
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.s = fadd <4 x float> %i.q, %i.r              ; 2 uses
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.u = fadd <4 x float> %i.s, %i.t              ; 2 uses
  %i.v = fsub <4 x float> %i.p, %i.u
  %i.w = fmul <4 x float> %i.j, %i.v
  %i.x = fadd <4 x float> %i.u, %i.w
  %i.y = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.x, <4 x float> zeroinitializer)
  %i.z = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.y, <4 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.aa = bitcast <4 x float> %i.z to <4 x i32>   ; 2 uses
  %i.ab = and <4 x i32> %i.aa, splat (i32 -2139095041)
  %i.ac = or disjoint <4 x i32> %i.ab, splat (i32 1065353216)
  %i.ad = bitcast <4 x i32> %i.ac to <4 x float>  ; 5 uses
  %i.ae = fmul nnan <4 x float> %i.ad, splat (float f0x3D37CD65)
  %i.af = fadd nnan <4 x float> %i.ae, splat (float f0xBED547D7)
  %i.ag = fmul nnan <4 x float> %i.af, %i.ad
  %i.ah = fadd nnan <4 x float> %i.ag, splat (float f0x3FD0C97C)
  %i.ai = fmul nnan <4 x float> %i.ah, %i.ad
  %i.aj = fadd nnan <4 x float> %i.ai, splat (float f0xC0634031)
  %i.ak = fmul nnan <4 x float> %i.aj, %i.ad
  %i.al = fadd nnan <4 x float> %i.ak, splat (float f0x40A2EF4C)
  %i.am = fmul nnan <4 x float> %i.al, %i.ad
  %i.an = fadd nnan <4 x float> %i.am, splat (float f0xC033392A)
  %i.ao = lshr <4 x i32> %i.aa, splat (i32 23)
  %i.ap = and <4 x i32> %i.ao, splat (i32 255)
  %i.aq = add nsw <4 x i32> %i.ap, splat (i32 -127)
  %i.ar = sitofp <4 x i32> %i.aq to <4 x float>
  %i.as = fadd nnan <4 x float> %i.an, %i.ar
  %i.at = fmul <4 x float> %i.f, %i.as            ; 5 uses
  %i.au = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.at)
  %i.av = fcmp ult <4 x float> %i.at, zeroinitializer
  %i.aw = sext <4 x i1> %i.av to <4 x i32>
  %i.ax = add <4 x i32> %i.au, %i.aw              ; 2 uses
  %i.ay = shl <4 x i32> %i.ax, splat (i32 23)
  %i.az = add <4 x i32> %i.ay, splat (i32 1065353216)
  %i.ba = bitcast <4 x i32> %i.az to <4 x float>
  %i.bb = sitofp <4 x i32> %i.ax to <4 x float>
  %i.bc = fsub <4 x float> %i.at, %i.bb           ; 4 uses
  %i.bd = fmul <4 x float> %i.bc, splat (float f0x3C5DBE6A)
  %i.be = fadd <4 x float> %i.bd, splat (float f0x3D5509F8)
  %i.bf = fmul <4 x float> %i.bc, %i.be
  %i.bg = fadd <4 x float> %i.bf, splat (float f0x3E773CC5)
  %i.bh = fmul <4 x float> %i.bc, %i.bg
  %i.bi = fadd <4 x float> %i.bh, splat (float f0x3F3168B3)
  %i.bj = fmul <4 x float> %i.bc, %i.bi
  %i.bk = fadd <4 x float> %i.bj, splat (float f0x3F800016)
  %i.bl = fmul <4 x float> %i.bk, %i.ba
  %i.bm = fcmp uge <4 x float> %i.at, splat (float -1.260000e+02)
  %i.bn = fcmp oge <4 x float> %i.at, splat (float 1.280000e+02)
  %i.bo = fcmp ogt <4 x float> %i.z, zeroinitializer
  %i.bp = select <4 x i1> %i.bm, <4 x float> %i.bl, <4 x float> zeroinitializer
  %i.bq = select <4 x i1> %i.bn, <4 x float> splat (float +inf), <4 x float> %i.bp
  %i.br = select <4 x i1> %i.bo, <4 x float> %i.bq, <4 x float> zeroinitializer
  %i.bs = fadd <4 x float> %i.d, %i.br
  %i.bt = fmul <4 x float> %i.b, %i.bs
  %i.bu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bt, <4 x float> zeroinitializer)
  %i.bv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bu, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.bv, ptr %.0921, align 1, !tbaa !48
  %i.bw = getelementptr inbounds nuw i8, ptr %.0921, i64 12
  store float %i.m, ptr %i.bw, align 4, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %.01020, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %.0921, i64 16
  %i.bz = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !93
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_514CDLRendererRevILb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_514CDLRendererRevILb1EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.028 = phi ptr [ %1, %.lr.ph ], [ %i.bn, %bb.b ] ; 3 uses
  %.01827 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %bb.b ]
  %.01926 = phi ptr [ %2, %.lr.ph ], [ %i.bo, %bb.b ] ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.028, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.01926, ptr noundef nonnull align 4 dereferenceable(16) %.028, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.01926, i64 4 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01926, i64 8 ; 6 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !12 ; 2 uses
  %i.q = fcmp ogt float %i.p, 0.000000e+00
  %.sroa.speculated2.i8.i = select i1 %i.q, float %i.p, float 0.000000e+00 ; 2 uses
  %i.r = fcmp ogt float %.sroa.speculated2.i8.i, 1.000000e+00
  %.sroa.speculated.i9.i = select i1 %i.r, float 1.000000e+00, float %.sroa.speculated2.i8.i ; 3 uses
  store float %.sroa.speculated.i9.i, ptr %i.o, align 4, !tbaa !12
  %i.s = fmul float %.sroa.speculated.i9.i, 7.220000e-02
  %i.t = load <2 x float>, ptr %.01926, align 4, !tbaa !12 ; 2 uses
  %i.u = fcmp ogt <2 x float> %i.t, zeroinitializer
  %i.v = select <2 x i1> %i.u, <2 x float> %i.t, <2 x float> zeroinitializer ; 2 uses
  %i.w = fcmp ogt <2 x float> %i.v, splat (float 1.000000e+00)
  %i.x = select <2 x i1> %i.w, <2 x float> splat (float 1.000000e+00), <2 x float> %i.v ; 3 uses
  store <2 x float> %i.x, ptr %.01926, align 4, !tbaa !12
  %i.y = load float, ptr %i.c, align 8, !tbaa !13 ; 2 uses
  %i.z = fmul <2 x float> %i.x, <float 2.126000e-01, float 7.152000e-01> ; 2 uses
  %shift = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.z, %shift
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = fadd float %i.aa, %i.s                  ; 3 uses
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = fsub <2 x float> %i.x, %i.ad
  %i.af = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ae, <2 x float> %i.ad) ; 2 uses
  %i.ai = fsub float %.sroa.speculated.i9.i, %i.ab
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.y, float %i.ai, float %i.ab) ; 2 uses
  %i.ak = fcmp ogt <2 x float> %i.ah, zeroinitializer
  %i.al = select <2 x i1> %i.ak, <2 x float> %i.ah, <2 x float> zeroinitializer ; 2 uses
  %i.am = fcmp ogt <2 x float> %i.al, splat (float 1.000000e+00)
  %i.an = select <2 x i1> %i.am, <2 x float> splat (float 1.000000e+00), <2 x float> %i.al ; 3 uses
  store <2 x float> %i.an, ptr %.01926, align 4, !tbaa !12
  %i.ao = fcmp ogt float %i.aj, 0.000000e+00
  %.sroa.speculated2.i8.i.i = select i1 %i.ao, float %i.aj, float 0.000000e+00 ; 2 uses
  %i.ap = fcmp ogt float %.sroa.speculated2.i8.i.i, 1.000000e+00
  %.sroa.speculated.i9.i.i = select i1 %i.ap, float 1.000000e+00, float %.sroa.speculated2.i8.i.i ; 2 uses
  store float %.sroa.speculated.i9.i.i, ptr %i.o, align 4, !tbaa !12
  %i.aq = load float, ptr %i.d, align 8, !tbaa !12
  %i.ar = extractelement <2 x float> %i.an, i64 0
  %i.as = tail call float @powf(float noundef %i.ar, float noundef %i.aq) #20, !tbaa !3 ; 2 uses
  store float %i.as, ptr %.01926, align 4, !tbaa !12
  %i.at = load float, ptr %i.e, align 4, !tbaa !12
  %i.au = extractelement <2 x float> %i.an, i64 1
  %i.av = tail call float @powf(float noundef %i.au, float noundef %i.at) #20, !tbaa !3 ; 2 uses
  store float %i.av, ptr %i.n, align 4, !tbaa !12
  %i.aw = load float, ptr %i.f, align 8, !tbaa !12
  %i.ax = tail call float @powf(float noundef %.sroa.speculated.i9.i.i, float noundef %i.aw) #20, !tbaa !3 ; 2 uses
  store float %i.ax, ptr %i.o, align 4, !tbaa !12
  %i.ay = load float, ptr %i.g, align 8, !tbaa !12
  %i.az = fadd float %i.as, %i.ay                 ; 2 uses
  store float %i.az, ptr %.01926, align 4, !tbaa !12
  %i.ba = load float, ptr %i.h, align 4, !tbaa !12
  %i.bb = fadd float %i.av, %i.ba                 ; 2 uses
  store float %i.bb, ptr %i.n, align 4, !tbaa !12
  %i.bc = load float, ptr %i.i, align 8, !tbaa !12
  %i.bd = fadd float %i.ax, %i.bc                 ; 2 uses
  store float %i.bd, ptr %i.o, align 4, !tbaa !12
  %i.be = load float, ptr %i.b, align 8, !tbaa !12
  %i.bf = fmul float %i.az, %i.be                 ; 3 uses
  store float %i.bf, ptr %.01926, align 4, !tbaa !12
  %i.bg = load float, ptr %i.j, align 4, !tbaa !12
  %i.bh = fmul float %i.bb, %i.bg                 ; 3 uses
  store float %i.bh, ptr %i.n, align 4, !tbaa !12
  %i.bi = load float, ptr %i.k, align 8, !tbaa !12
  %i.bj = fmul float %i.bd, %i.bi                 ; 2 uses
  %4 = fcmp ogt float %i.bf, 0.000000e+00
  %.sroa.speculated2.i.i20 = select i1 %4, float %i.bf, float 0.000000e+00 ; 2 uses
  %5 = fcmp ogt float %.sroa.speculated2.i.i20, 1.000000e+00
  %.sroa.speculated.i.i21 = select i1 %5, float 1.000000e+00, float %.sroa.speculated2.i.i20
  store float %.sroa.speculated.i.i21, ptr %.01926, align 4, !tbaa !12
  %6 = fcmp ogt float %i.bh, 0.000000e+00
  %.sroa.speculated2.i6.i22 = select i1 %6, float %i.bh, float 0.000000e+00 ; 2 uses
  %7 = fcmp ogt float %.sroa.speculated2.i6.i22, 1.000000e+00
  %.sroa.speculated.i7.i23 = select i1 %7, float 1.000000e+00, float %.sroa.speculated2.i6.i22
  store float %.sroa.speculated.i7.i23, ptr %i.n, align 4, !tbaa !12
  %i.bk = fcmp ogt float %i.bj, 0.000000e+00
  %.sroa.speculated2.i8.i24 = select i1 %i.bk, float %i.bj, float 0.000000e+00 ; 2 uses
  %i.bl = fcmp ogt float %.sroa.speculated2.i8.i24, 1.000000e+00
  %.sroa.speculated.i9.i25 = select i1 %i.bl, float 1.000000e+00, float %.sroa.speculated2.i8.i24
  store float %.sroa.speculated.i9.i25, ptr %i.o, align 4, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %.01926, i64 12
  store float %i.m, ptr %i.bm, align 4, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.01926, i64 16
  %i.bp = add nuw nsw i64 %.01827, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !94
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #20, !inline_history !95
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !48
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #20, !inline_history !96
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !48
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_517CDLRendererRevSSEILb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_517CDLRendererRevSSEILb0EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <4 x float>, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load <4 x float>, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load <4 x float>, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load float, ptr %i.g, align 8, !tbaa !13
  %i.i = insertelement <4 x float> poison, float %i.h, i64 0
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = icmp sgt i64 %3, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.023 = phi i64 [ %i.bv, %.lr.ph ], [ 0, %bb.a ]
  %.0922 = phi ptr [ %i.bu, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %.01021 = phi ptr [ %i.bt, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01021, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !12
  %i.n = load <4 x float>, ptr %.01021, align 4, !tbaa !48 ; 2 uses
  %i.o = fmul <4 x float> %i.n, <float 2.126000e-01, float 7.152000e-01, float 7.220000e-02, float 0.000000e+00> ; 2 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.q = fadd <4 x float> %i.o, %i.p              ; 2 uses
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.s = fadd <4 x float> %i.q, %i.r              ; 2 uses
  %i.t = fsub <4 x float> %i.n, %i.s
  %i.u = fmul <4 x float> %i.j, %i.t
  %i.v = fadd <4 x float> %i.s, %i.u              ; 4 uses
  %i.w = bitcast <4 x float> %i.v to <4 x i32>    ; 2 uses
  %i.x = fcmp olt <4 x float> %i.v, zeroinitializer
  %i.y = and <4 x i32> %i.w, splat (i32 -2139095041)
  %i.z = or disjoint <4 x i32> %i.y, splat (i32 1065353216)
  %i.aa = bitcast <4 x i32> %i.z to <4 x float>   ; 5 uses
  %i.ab = fmul nnan <4 x float> %i.aa, splat (float f0x3D37CD65)
  %i.ac = fadd nnan <4 x float> %i.ab, splat (float f0xBED547D7)
  %i.ad = fmul nnan <4 x float> %i.ac, %i.aa
  %i.ae = fadd nnan <4 x float> %i.ad, splat (float f0x3FD0C97C)
  %i.af = fmul nnan <4 x float> %i.ae, %i.aa
  %i.ag = fadd nnan <4 x float> %i.af, splat (float f0xC0634031)
  %i.ah = fmul nnan <4 x float> %i.ag, %i.aa
  %i.ai = fadd nnan <4 x float> %i.ah, splat (float f0x40A2EF4C)
  %i.aj = fmul nnan <4 x float> %i.ai, %i.aa
  %i.ak = fadd nnan <4 x float> %i.aj, splat (float f0xC033392A)
  %i.al = lshr <4 x i32> %i.w, splat (i32 23)
  %i.am = and <4 x i32> %i.al, splat (i32 255)
  %i.an = add nsw <4 x i32> %i.am, splat (i32 -127)
  %i.ao = sitofp <4 x i32> %i.an to <4 x float>
  %i.ap = fadd nnan <4 x float> %i.ak, %i.ao
  %i.aq = fmul <4 x float> %i.f, %i.ap            ; 5 uses
  %i.ar = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.aq)
  %i.as = fcmp ult <4 x float> %i.aq, zeroinitializer
  %i.at = sext <4 x i1> %i.as to <4 x i32>
  %i.au = add <4 x i32> %i.ar, %i.at              ; 2 uses
  %i.av = shl <4 x i32> %i.au, splat (i32 23)
  %i.aw = add <4 x i32> %i.av, splat (i32 1065353216)
  %i.ax = bitcast <4 x i32> %i.aw to <4 x float>
  %i.ay = sitofp <4 x i32> %i.au to <4 x float>
  %i.az = fsub <4 x float> %i.aq, %i.ay           ; 4 uses
  %i.ba = fmul <4 x float> %i.az, splat (float f0x3C5DBE6A)
  %i.bb = fadd <4 x float> %i.ba, splat (float f0x3D5509F8)
  %i.bc = fmul <4 x float> %i.az, %i.bb
end_hunk_0
