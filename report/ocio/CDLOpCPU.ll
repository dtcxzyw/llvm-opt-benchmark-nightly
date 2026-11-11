Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/CDLOpCPU?download=true
inline.NumInlined: 514
inline.NumDeleted: 258
begin_hunk_0_@_ZNK16OpenColorIO_v2_514CDLRendererFwdILb1EE5applyEPKvPvl:bb.a
  %i.aq = fmul float %i.al, 7.152000e-01
  %i.ar = fmul float %i.an, 7.220000e-02
  %i.as = fadd float %i.ap, %i.aq
  %i.at = fadd float %i.as, %i.ar                 ; 3 uses
  %i.au = fsub float %i.an, %i.at
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.au, float %i.at) ; 2 uses
  %i.aw = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.al, i64 1
  %i.ay = insertelement <2 x float> poison, float %i.at, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = fsub <2 x float> %i.ax, %i.az
  %i.bb = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.ba, <2 x float> %i.az) ; 2 uses
  %i.be = fcmp ogt <2 x float> %i.bd, zeroinitializer
  %i.bf = select <2 x i1> %i.be, <2 x float> %i.bd, <2 x float> zeroinitializer ; 2 uses
  %i.bg = fcmp ogt <2 x float> %i.bf, splat (float 1.000000e+00)
  %i.bh = select <2 x i1> %i.bg, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bf
  store <2 x float> %i.bh, ptr %.02122, align 4, !tbaa !13
  %i.bi = fcmp ogt float %i.av, 0.000000e+00
  %.sroa.speculated2.i8.i = select i1 %i.bi, float %i.av, float 0.000000e+00 ; 2 uses
  %i.bj = fcmp ogt float %.sroa.speculated2.i8.i, 1.000000e+00
  %.sroa.speculated.i9.i = select i1 %i.bj, float 1.000000e+00, float %.sroa.speculated2.i8.i
  store float %.sroa.speculated.i9.i, ptr %i.r, align 4, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.02122, i64 12
  store float %i.n, ptr %i.bk, align 4, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.02122, i64 16
  %i.bn = add nuw nsw i64 %.02023, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !87
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererFwdILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererFwdILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #20, !inline_history !88
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererFwdILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererFwdILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererFwdILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !47
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
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererFwdSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererFwdSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #20, !inline_history !89
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererFwdSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererFwdSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererFwdSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !47
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_517CDLRendererFwdSSEILb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_517CDLRendererFwdSSEILb0EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <4 x float>, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load <4 x float>, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load <4 x float>, ptr %i.e, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load float, ptr %i.g, align 8, !tbaa !14
  %i.i = insertelement <4 x float> poison, float %i.h, i64 0
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = icmp sgt i64 %3, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.022 = phi i64 [ %i.br, %.lr.ph ], [ 0, %bb.a ]
  %.0921 = phi ptr [ %i.bq, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %.01020 = phi ptr [ %i.bp, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01020, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !13
  %i.n = load <4 x float>, ptr %.01020, align 4, !tbaa !47
  %i.o = fmul <4 x float> %i.b, %i.n
  %i.p = fadd <4 x float> %i.d, %i.o              ; 4 uses
  %i.q = bitcast <4 x float> %i.p to <4 x i32>    ; 2 uses
  %i.r = fcmp olt <4 x float> %i.p, zeroinitializer
  %i.s = and <4 x i32> %i.q, splat (i32 -2139095041)
  %i.t = or disjoint <4 x i32> %i.s, splat (i32 1065353216)
  %i.u = bitcast <4 x i32> %i.t to <4 x float>    ; 5 uses
  %i.v = fmul nnan <4 x float> %i.u, splat (float f0x3D37CD65)
  %i.w = fadd nnan <4 x float> %i.v, splat (float f0xBED547D7)
  %i.x = fmul nnan <4 x float> %i.w, %i.u
  %i.y = fadd nnan <4 x float> %i.x, splat (float f0x3FD0C97C)
  %i.z = fmul nnan <4 x float> %i.y, %i.u
  %i.aa = fadd nnan <4 x float> %i.z, splat (float f0xC0634031)
  %i.ab = fmul nnan <4 x float> %i.aa, %i.u
  %i.ac = fadd nnan <4 x float> %i.ab, splat (float f0x40A2EF4C)
  %i.ad = fmul nnan <4 x float> %i.ac, %i.u
  %i.ae = fadd nnan <4 x float> %i.ad, splat (float f0xC033392A)
  %i.af = lshr <4 x i32> %i.q, splat (i32 23)
  %i.ag = and <4 x i32> %i.af, splat (i32 255)
  %i.ah = add nsw <4 x i32> %i.ag, splat (i32 -127)
  %i.ai = sitofp <4 x i32> %i.ah to <4 x float>
  %i.aj = fadd nnan <4 x float> %i.ae, %i.ai
  %i.ak = fmul <4 x float> %i.f, %i.aj            ; 5 uses
  %i.al = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ak)
  %i.am = fcmp ult <4 x float> %i.ak, zeroinitializer
  %i.an = sext <4 x i1> %i.am to <4 x i32>
  %i.ao = add <4 x i32> %i.al, %i.an              ; 2 uses
  %i.ap = shl <4 x i32> %i.ao, splat (i32 23)
  %i.aq = add <4 x i32> %i.ap, splat (i32 1065353216)
  %i.ar = bitcast <4 x i32> %i.aq to <4 x float>
  %i.as = sitofp <4 x i32> %i.ao to <4 x float>
  %i.at = fsub <4 x float> %i.ak, %i.as           ; 4 uses
  %i.au = fmul <4 x float> %i.at, splat (float f0x3C5DBE6A)
  %i.av = fadd <4 x float> %i.au, splat (float f0x3D5509F8)
  %i.aw = fmul <4 x float> %i.at, %i.av
  %i.ax = fadd <4 x float> %i.aw, splat (float f0x3E773CC5)
  %i.ay = fmul <4 x float> %i.at, %i.ax
  %i.az = fadd <4 x float> %i.ay, splat (float f0x3F3168B3)
  %i.ba = fmul <4 x float> %i.at, %i.az
  %i.bb = fadd <4 x float> %i.ba, splat (float f0x3F800016)
  %i.bc = fmul <4 x float> %i.bb, %i.ar
  %i.bd = fcmp uge <4 x float> %i.ak, splat (float -1.260000e+02)
  %i.be = fcmp oge <4 x float> %i.ak, splat (float 1.280000e+02)
  %i.bf = fcmp ogt <4 x float> %i.p, zeroinitializer
  %4 = select <4 x i1> %i.bd, <4 x float> %i.bc, <4 x float> zeroinitializer
  %5 = select <4 x i1> %i.be, <4 x float> splat (float +inf), <4 x float> %4
  %6 = select <4 x i1> %i.bf, <4 x float> %5, <4 x float> zeroinitializer
  %7 = select <4 x i1> %i.r, <4 x float> %i.p, <4 x float> %6 ; 2 uses
  %i.bg = fmul <4 x float> %7, <float 2.126000e-01, float 7.152000e-01, float 7.220000e-02, float 0.000000e+00> ; 2 uses
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bi = fadd <4 x float> %i.bg, %i.bh           ; 2 uses
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bk = fadd <4 x float> %i.bi, %i.bj           ; 2 uses
  %i.bl = fsub <4 x float> %7, %i.bk
  %i.bm = fmul <4 x float> %i.j, %i.bl
  %i.bn = fadd <4 x float> %i.bk, %i.bm
  store <4 x float> %i.bn, ptr %.0921, align 1, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %.0921, i64 12
  store float %i.m, ptr %i.bo, align 4, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.01020, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.0921, i64 16
  %i.br = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !90
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_514CDLRendererFwdILb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_514CDLRendererFwdILb0EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x float>, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load float, ptr %i.c, align 8, !tbaa !13
  %i.e = icmp sgt i64 %3, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit
  %.024 = phi ptr [ %1, %.lr.ph ], [ %i.bi, %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit ] ; 3 uses
  %.02023 = phi i64 [ 0, %.lr.ph ], [ %i.bk, %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit ]
  %.02122 = phi ptr [ %2, %.lr.ph ], [ %i.bj, %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit ] ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.024, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.02122, ptr noundef nonnull align 4 dereferenceable(16) %.024, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.02122, i64 4 ; 2 uses
  %i.p = load <2 x float>, ptr %.02122, align 4, !tbaa !13
  %i.q = fmul <2 x float> %i.b, %i.p              ; 3 uses
  store <2 x float> %i.q, ptr %.02122, align 4, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.02122, i64 8 ; 5 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !13
  %i.t = fmul float %i.d, %i.s                    ; 2 uses
  store float %i.t, ptr %i.r, align 4, !tbaa !13
  %i.u = load float, ptr %i.f, align 8, !tbaa !13
  %i.v = extractelement <2 x float> %i.q, i64 0
  %i.w = fadd float %i.v, %i.u                    ; 5 uses
  store float %i.w, ptr %.02122, align 4, !tbaa !13
  %i.x = load float, ptr %i.g, align 4, !tbaa !13
  %i.y = extractelement <2 x float> %i.q, i64 1
  %i.z = fadd float %i.y, %i.x                    ; 5 uses
  store float %i.z, ptr %i.o, align 4, !tbaa !13
  %i.aa = load float, ptr %i.h, align 8, !tbaa !13
  %i.ab = fadd float %i.t, %i.aa                  ; 5 uses
  store float %i.ab, ptr %i.r, align 4, !tbaa !13
  %i.ac = fcmp uno float %i.w, 0.000000e+00
  br i1 %i.ac, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = fcmp olt float %i.w, 0.000000e+00
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load float, ptr %i.i, align 8, !tbaa !13
  %i.af = tail call float @powf(float noundef %i.w, float noundef %i.ae) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ag = phi float [ 0.000000e+00, %bb.b ], [ %i.af, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  store float %i.ag, ptr %.02122, align 4, !tbaa !13
  %i.ah = fcmp uno float %i.z, 0.000000e+00
  br i1 %i.ah, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = fcmp olt float %i.z, 0.000000e+00
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load float, ptr %i.j, align 4, !tbaa !13
  %i.ak = tail call float @powf(float noundef %i.z, float noundef %i.aj) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.al = phi float [ 0.000000e+00, %bb.e ], [ %i.ak, %bb.g ], [ %i.z, %bb.f ] ; 3 uses
  store float %i.al, ptr %i.o, align 4, !tbaa !13
  %i.am = fcmp uno float %i.ab, 0.000000e+00
  br i1 %i.am, label %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = fcmp olt float %i.ab, 0.000000e+00
  br i1 %i.an, label %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load float, ptr %i.k, align 8, !tbaa !13
  %i.ap = tail call float @powf(float noundef %i.ab, float noundef %i.ao) #20
  br label %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit

_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.aq = phi float [ 0.000000e+00, %bb.h ], [ %i.ap, %bb.j ], [ %i.ab, %bb.i ] ; 3 uses
  store float %i.aq, ptr %i.r, align 4, !tbaa !13
  %i.ar = load float, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.as = fmul float %i.ag, 2.126000e-01
  %i.at = fmul float %i.al, 7.152000e-01
  %i.au = fmul float %i.aq, 7.220000e-02
  %i.av = fadd float %i.at, %i.as
  %i.aw = fadd float %i.au, %i.av                 ; 3 uses
  %i.ax = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.al, i64 1
  %i.az = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = fsub <2 x float> %i.ay, %i.ba
  %i.bc = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bb, <2 x float> %i.ba)
  store <2 x float> %i.be, ptr %.02122, align 4, !tbaa !13
  %i.bf = fsub float %i.aq, %i.aw
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bf, float %i.aw)
  store float %i.bg, ptr %i.r, align 4, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %.02122, i64 12
  store float %i.n, ptr %i.bh, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.02122, i64 16
  %i.bk = add nuw nsw i64 %.02023, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bk, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !91
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererFwdILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererFwdILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #20, !inline_history !92
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererFwdILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererFwdILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererFwdILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !47
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
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_514CDLRendererRevILb1EE5applyEPKvPvl:bb.a
  %i.ar = extractelement <2 x float> %i.an, i64 0
  %i.as = tail call float @powf(float noundef %i.ar, float noundef %i.aq) #20 ; 2 uses
  store float %i.as, ptr %.01926, align 4, !tbaa !13
  %i.at = load float, ptr %i.e, align 4, !tbaa !13
  %i.au = extractelement <2 x float> %i.an, i64 1
  %i.av = tail call float @powf(float noundef %i.au, float noundef %i.at) #20 ; 2 uses
  store float %i.av, ptr %i.n, align 4, !tbaa !13
  %i.aw = load float, ptr %i.f, align 8, !tbaa !13
  %i.ax = tail call float @powf(float noundef %.sroa.speculated.i9.i.i, float noundef %i.aw) #20 ; 2 uses
  store float %i.ax, ptr %i.o, align 4, !tbaa !13
  %i.ay = load float, ptr %i.g, align 8, !tbaa !13
  %i.az = fadd float %i.as, %i.ay                 ; 2 uses
  store float %i.az, ptr %.01926, align 4, !tbaa !13
  %i.ba = load float, ptr %i.h, align 4, !tbaa !13
  %i.bb = fadd float %i.av, %i.ba                 ; 2 uses
  store float %i.bb, ptr %i.n, align 4, !tbaa !13
  %i.bc = load float, ptr %i.i, align 8, !tbaa !13
  %i.bd = fadd float %i.ax, %i.bc                 ; 2 uses
  store float %i.bd, ptr %i.o, align 4, !tbaa !13
  %i.be = load float, ptr %i.b, align 8, !tbaa !13
  %i.bf = fmul float %i.az, %i.be                 ; 2 uses
  store float %i.bf, ptr %.01926, align 4, !tbaa !13
  %i.bg = load float, ptr %i.j, align 4, !tbaa !13
  %i.bh = fmul float %i.bb, %i.bg                 ; 2 uses
  store float %i.bh, ptr %i.n, align 4, !tbaa !13
  %i.bi = load float, ptr %i.k, align 8, !tbaa !13
  %i.bj = fmul float %i.bd, %i.bi                 ; 2 uses
  %i.bk = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bh, i64 1 ; 2 uses
  %i.bm = fcmp ogt <2 x float> %i.bl, zeroinitializer
  %i.bn = select <2 x i1> %i.bm, <2 x float> %i.bl, <2 x float> zeroinitializer ; 2 uses
  %i.bo = fcmp ogt <2 x float> %i.bn, splat (float 1.000000e+00)
  %i.bp = select <2 x i1> %i.bo, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bn
  store <2 x float> %i.bp, ptr %.01926, align 4, !tbaa !13
  %i.bq = fcmp ogt float %i.bj, 0.000000e+00
  %.sroa.speculated2.i8.i24 = select i1 %i.bq, float %i.bj, float 0.000000e+00 ; 2 uses
  %i.br = fcmp ogt float %.sroa.speculated2.i8.i24, 1.000000e+00
  %.sroa.speculated.i9.i25 = select i1 %i.br, float 1.000000e+00, float %.sroa.speculated2.i8.i24
  store float %.sroa.speculated.i9.i25, ptr %i.o, align 4, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.01926, i64 12
  store float %i.m, ptr %i.bs, align 4, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %.01926, i64 16
  %i.bv = add nuw nsw i64 %.01827, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !95
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #20, !inline_history !96
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !47
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
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #20, !inline_history !97
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517CDLRendererRevSSEILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !47
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_517CDLRendererRevSSEILb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_517CDLRendererRevSSEILb0EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <4 x float>, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load <4 x float>, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load <4 x float>, ptr %i.e, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load float, ptr %i.g, align 8, !tbaa !14
  %i.i = insertelement <4 x float> poison, float %i.h, i64 0
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = icmp sgt i64 %3, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.023 = phi i64 [ %i.br, %.lr.ph ], [ 0, %bb.a ]
  %.0922 = phi ptr [ %i.bq, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %.01021 = phi ptr [ %i.bp, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01021, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !13
  %i.n = load <4 x float>, ptr %.01021, align 4, !tbaa !47 ; 2 uses
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
  %i.bd = fadd <4 x float> %i.bc, splat (float f0x3E773CC5)
  %i.be = fmul <4 x float> %i.az, %i.bd
  %i.bf = fadd <4 x float> %i.be, splat (float f0x3F3168B3)
  %i.bg = fmul <4 x float> %i.az, %i.bf
  %i.bh = fadd <4 x float> %i.bg, splat (float f0x3F800016)
  %i.bi = fmul <4 x float> %i.bh, %i.ax
  %i.bj = fcmp uge <4 x float> %i.aq, splat (float -1.260000e+02)
  %i.bk = fcmp oge <4 x float> %i.aq, splat (float 1.280000e+02)
  %i.bl = fcmp ogt <4 x float> %i.v, zeroinitializer
  %4 = select <4 x i1> %i.bj, <4 x float> %i.bi, <4 x float> zeroinitializer
  %5 = select <4 x i1> %i.bk, <4 x float> splat (float +inf), <4 x float> %4
  %6 = select <4 x i1> %i.bl, <4 x float> %5, <4 x float> zeroinitializer
  %7 = select <4 x i1> %i.x, <4 x float> %i.v, <4 x float> %6
  %i.bm = fadd <4 x float> %i.d, %7
  %i.bn = fmul <4 x float> %i.b, %i.bm
  store <4 x float> %i.bn, ptr %.0922, align 1, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %.0922, i64 12
  store float %i.m, ptr %i.bo, align 4, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.01021, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.0922, i64 16
  %i.br = add nuw nsw i64 %.023, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !98
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_514CDLRendererRevILb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_514CDLRendererRevILb0EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 comdat align 2 {
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

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit
  %.022 = phi ptr [ %1, %.lr.ph ], [ %i.bi, %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit ] ; 3 uses
  %.01821 = phi i64 [ 0, %.lr.ph ], [ %i.bk, %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit ]
  %.01920 = phi ptr [ %2, %.lr.ph ], [ %i.bj, %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit ] ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.022, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.01920, ptr noundef nonnull align 4 dereferenceable(16) %.022, i64 16, i1 false)
  %i.n = load float, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01920, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01920, i64 8 ; 5 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !13 ; 2 uses
  %i.r = fmul float %i.q, 7.220000e-02
  %i.s = load <2 x float>, ptr %.01920, align 4, !tbaa !13 ; 2 uses
  %i.t = fmul <2 x float> %i.s, <float 2.126000e-01, float 7.152000e-01> ; 2 uses
  %shift = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.t, %shift
  %i.u = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.v = fadd float %i.u, %i.r                    ; 3 uses
  %i.w = insertelement <2 x float> poison, float %i.v, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = fsub <2 x float> %i.s, %i.x
  %i.z = insertelement <2 x float> poison, float %i.n, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.y, <2 x float> %i.x) ; 3 uses
  store <2 x float> %i.ab, ptr %.01920, align 4, !tbaa !13
  %i.ac = fsub float %i.q, %i.v
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.n, float %i.ac, float %i.v) ; 5 uses
  store float %i.ad, ptr %i.p, align 4, !tbaa !13
  %i.ae = extractelement <2 x float> %i.ab, i64 0 ; 4 uses
  %i.af = fcmp uno float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = fcmp olt float %i.ae, 0.000000e+00
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load float, ptr %i.d, align 8, !tbaa !13
  %i.ai = tail call float @powf(float noundef %i.ae, float noundef %i.ah) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.aj = phi float [ 0.000000e+00, %bb.b ], [ %i.ai, %bb.d ], [ %i.ae, %bb.c ] ; 2 uses
  store float %i.aj, ptr %.01920, align 4, !tbaa !13
  %i.ak = extractelement <2 x float> %i.ab, i64 1 ; 4 uses
  %i.al = fcmp uno float %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = fcmp olt float %i.ak, 0.000000e+00
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load float, ptr %i.e, align 4, !tbaa !13
  %i.ao = tail call float @powf(float noundef %i.ak, float noundef %i.an) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ap = phi float [ 0.000000e+00, %bb.e ], [ %i.ao, %bb.g ], [ %i.ak, %bb.f ] ; 2 uses
  store float %i.ap, ptr %i.o, align 4, !tbaa !13
  %i.aq = fcmp uno float %i.ad, 0.000000e+00
  br i1 %i.aq, label %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = fcmp olt float %i.ad, 0.000000e+00
  br i1 %i.ar, label %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load float, ptr %i.f, align 8, !tbaa !13
  %i.at = tail call float @powf(float noundef %i.ad, float noundef %i.as) #20
  br label %_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit

_ZN16OpenColorIO_v2_510ApplyPowerILb0EEEvPfPKf.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.au = phi float [ 0.000000e+00, %bb.h ], [ %i.at, %bb.j ], [ %i.ad, %bb.i ] ; 2 uses
  store float %i.au, ptr %i.p, align 4, !tbaa !13
  %i.av = load float, ptr %i.g, align 8, !tbaa !13
  %i.aw = fadd float %i.aj, %i.av                 ; 2 uses
  store float %i.aw, ptr %.01920, align 4, !tbaa !13
  %i.ax = load float, ptr %i.h, align 4, !tbaa !13
  %i.ay = fadd float %i.ap, %i.ax                 ; 2 uses
  store float %i.ay, ptr %i.o, align 4, !tbaa !13
  %i.az = load float, ptr %i.i, align 8, !tbaa !13
  %i.ba = fadd float %i.au, %i.az                 ; 2 uses
  store float %i.ba, ptr %i.p, align 4, !tbaa !13
  %i.bb = load float, ptr %i.b, align 8, !tbaa !13
  %i.bc = fmul float %i.aw, %i.bb
  store float %i.bc, ptr %.01920, align 4, !tbaa !13
  %i.bd = load float, ptr %i.j, align 4, !tbaa !13
  %i.be = fmul float %i.ay, %i.bd
  store float %i.be, ptr %i.o, align 4, !tbaa !13
  %i.bf = load float, ptr %i.k, align 8, !tbaa !13
  %i.bg = fmul float %i.ba, %i.bf
  store float %i.bg, ptr %i.p, align 4, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %.01920, i64 12
  store float %i.m, ptr %i.bh, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.01920, i64 16
  %i.bk = add nuw nsw i64 %.01821, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bk, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !99
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #20, !inline_history !100
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_514CDLRendererRevILb0EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !47
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
end_hunk_1
