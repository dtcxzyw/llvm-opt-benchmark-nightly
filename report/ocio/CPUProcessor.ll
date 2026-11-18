Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/CPUProcessor?download=true
inline.NumInlined: 2245
inline.NumDeleted: 1176
begin_hunk_0_@_ZNK16OpenColorIO_v2_512CPUProcessor8applyRGBEPf:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.010.i = phi i64 [ %i.z, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !131
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.010.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !331
  %i.z = add nuw i64 %.010.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i, label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl8applyRGBEPf.exit, label %.lr.ph.i, !llvm.loop !5

_ZNK16OpenColorIO_v2_512CPUProcessor4Impl8applyRGBEPf.exit: ; preds = %.lr.ph.i, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !331
  %i.af = load <2 x float>, ptr %i.a, align 16, !tbaa !138
  store <2 x float> %i.af, ptr %1, align 4, !tbaa !138
  %i.ag = load float, ptr %i.d, align 8, !tbaa !138
  store float %i.ag, ptr %i.e, align 4, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_512CPUProcessor9applyRGBAEPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !141    ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1, ptr noundef %1, i64 noundef 1), !inline_history !332
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !131  ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i, label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl9applyRGBAEPf.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.010.i = phi i64 [ %i.t, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !131
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.010.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !97   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %1, ptr noundef %1, i64 noundef 1), !inline_history !332
  %i.t = add nuw i64 %.010.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i, label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl9applyRGBAEPf.exit, label %.lr.ph.i, !llvm.loop !6

_ZNK16OpenColorIO_v2_512CPUProcessor4Impl9applyRGBAEPf.exit: ; preds = %.lr.ph.i, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %1, ptr noundef %1, i64 noundef 1), !inline_history !332
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !333
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !104  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !333
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.a) #20, !inline_history !334
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE1ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !103
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_1EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %3, 2                            ; 2 uses
  %i.d = getelementptr i8, ptr %2, i64 %i.c       ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 %i.c
  %bound0 = icmp ult ptr %2, %i.e
  %bound0.a = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound033 = icmp ult ptr %2, %4
  %bound134 = icmp ult ptr %i.b, %i.d
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.f = shl i64 %n.vec, 2                        ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 %i.f
  %i.h = getelementptr i8, ptr %1, i64 %i.f
  %i.i = load float, ptr %i.b, align 8, !tbaa !23, !alias.scope !341
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = shl i64 %index, 2                        ; 5 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.j
  %next.gep36 = getelementptr i8, ptr %1, i64 %i.j ; 4 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.j       ; 4 uses
  %next.gep37 = getelementptr i8, ptr %i.k, i64 4
  %i.l = getelementptr i8, ptr %1, i64 %i.j       ; 4 uses
  %next.gep38 = getelementptr i8, ptr %i.l, i64 8
  %i.m = getelementptr i8, ptr %1, i64 %i.j       ; 4 uses
  %next.gep39 = getelementptr i8, ptr %i.m, i64 12
  %i.n = load i8, ptr %next.gep36, align 1, !tbaa !103, !alias.scope !342
  %i.o = load i8, ptr %next.gep37, align 1, !tbaa !103, !alias.scope !342
  %i.p = load i8, ptr %next.gep38, align 1, !tbaa !103, !alias.scope !342
  %i.q = load i8, ptr %next.gep39, align 1, !tbaa !103, !alias.scope !342
  %i.r = insertelement <4 x i8> poison, i8 %i.n, i64 0
  %i.s = insertelement <4 x i8> %i.r, i8 %i.o, i64 1
  %i.t = insertelement <4 x i8> %i.s, i8 %i.p, i64 2
  %i.u = insertelement <4 x i8> %i.t, i8 %i.q, i64 3
  %i.v = uitofp <4 x i8> %i.u to <4 x float>
  %i.w = fmul <4 x float> %broadcast.splat, %i.v
  %i.x = fadd <4 x float> %i.w, splat (float 5.000000e-01) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %next.gep36, i64 1
  %i.z = getelementptr i8, ptr %i.k, i64 5
  %i.aa = getelementptr i8, ptr %i.l, i64 9
  %i.ab = getelementptr i8, ptr %i.m, i64 13
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !103, !alias.scope !342
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !103, !alias.scope !342
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !103, !alias.scope !342
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !103, !alias.scope !342
  %i.ag = insertelement <4 x i8> poison, i8 %i.ac, i64 0
  %i.ah = insertelement <4 x i8> %i.ag, i8 %i.ad, i64 1
  %i.ai = insertelement <4 x i8> %i.ah, i8 %i.ae, i64 2
  %i.aj = insertelement <4 x i8> %i.ai, i8 %i.af, i64 3
  %i.ak = uitofp <4 x i8> %i.aj to <4 x float>
  %i.al = fmul <4 x float> %broadcast.splat, %i.ak
  %i.am = fadd <4 x float> %i.al, splat (float 5.000000e-01) ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %next.gep36, i64 2
  %i.ao = getelementptr i8, ptr %i.k, i64 6
  %i.ap = getelementptr i8, ptr %i.l, i64 10
  %i.aq = getelementptr i8, ptr %i.m, i64 14
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !103, !alias.scope !342
  %i.as = load i8, ptr %i.ao, align 1, !tbaa !103, !alias.scope !342
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !103, !alias.scope !342
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !103, !alias.scope !342
  %i.av = insertelement <4 x i8> poison, i8 %i.ar, i64 0
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.as, i64 1
  %i.ax = insertelement <4 x i8> %i.aw, i8 %i.at, i64 2
  %i.ay = insertelement <4 x i8> %i.ax, i8 %i.au, i64 3
  %i.az = uitofp <4 x i8> %i.ay to <4 x float>
  %i.ba = fmul <4 x float> %broadcast.splat, %i.az
  %i.bb = fadd <4 x float> %i.ba, splat (float 5.000000e-01) ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %next.gep36, i64 3
  %i.bd = getelementptr i8, ptr %i.k, i64 7
  %i.be = getelementptr i8, ptr %i.l, i64 11
  %i.bf = getelementptr i8, ptr %i.m, i64 15
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !103, !alias.scope !342
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !103, !alias.scope !342
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !103, !alias.scope !342
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !103, !alias.scope !342
  %i.bk = insertelement <4 x i8> poison, i8 %i.bg, i64 0
  %i.bl = insertelement <4 x i8> %i.bk, i8 %i.bh, i64 1
  %i.bm = insertelement <4 x i8> %i.bl, i8 %i.bi, i64 2
  %i.bn = insertelement <4 x i8> %i.bm, i8 %i.bj, i64 3
  %i.bo = uitofp <4 x i8> %i.bn to <4 x float>
  %i.bp = fmul <4 x float> %broadcast.splat, %i.bo
  %i.bq = fadd <4 x float> %i.bp, splat (float 5.000000e-01) ; 3 uses
  %i.br = shufflevector <4 x float> %i.x, <4 x float> %i.am, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bs = fcmp ogt <8 x float> %i.br, splat (float 2.550000e+02)
  %i.bt = shufflevector <4 x float> %i.x, <4 x float> %i.am, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bu = fcmp olt <8 x float> %i.bt, zeroinitializer
  %i.bv = shufflevector <4 x float> %i.x, <4 x float> %i.am, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bw = select <8 x i1> %i.bu, <8 x float> zeroinitializer, <8 x float> %i.bv
  %i.bx = fptoui <8 x float> %i.bw to <8 x i8>
  %i.by = select <8 x i1> %i.bs, <8 x i8> splat (i8 -1), <8 x i8> %i.bx
  %i.bz = shufflevector <4 x float> %i.bb, <4 x float> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ca = fcmp ogt <8 x float> %i.bz, splat (float 2.550000e+02)
  %i.cb = shufflevector <4 x float> %i.bb, <4 x float> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cc = fcmp olt <8 x float> %i.cb, zeroinitializer
  %i.cd = shufflevector <4 x float> %i.bb, <4 x float> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ce = select <8 x i1> %i.cc, <8 x float> zeroinitializer, <8 x float> %i.cd
  %i.cf = fptoui <8 x float> %i.ce to <8 x i8>
  %i.cg = select <8 x i1> %i.ca, <8 x i8> splat (i8 -1), <8 x i8> %i.cf
  %interleaved.vec = shufflevector <8 x i8> %i.by, <8 x i8> %i.cg, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !103, !alias.scope !343, !noalias !344
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !339

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01521.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.g, %middle.block ]
  %.01620.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.h, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19
  %.022 = phi i64 [ %i.ee, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.022.ph, %scalar.ph.preheader ]
  %.01521 = phi ptr [ %i.ed, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01521.ph, %scalar.ph.preheader ] ; 5 uses
  %.01620 = phi ptr [ %i.ec, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01620.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ci = load i8, ptr %.01620, align 1, !tbaa !103
  %i.cj = uitofp i8 %i.ci to float
  %i.ck = load float, ptr %i.b, align 8, !tbaa !23
  %i.cl = fmul float %i.ck, %i.cj
  %i.cm = fadd float %i.cl, 5.000000e-01          ; 3 uses
  %i.cn = fcmp ogt float %i.cm, 2.550000e+02
  br i1 %i.cn, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.co = fcmp olt float %i.cm, 0.000000e+00
  %i.cp = select i1 %i.co, float 0.000000e+00, float %i.cm
  %i.cq = fptoui float %i.cp to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit: ; preds = %scalar.ph, %bb.b
  %i.cr = phi i8 [ %i.cq, %bb.b ], [ -1, %scalar.ph ]
  store i8 %i.cr, ptr %.01521, align 1, !tbaa !103
  %i.cs = getelementptr inbounds nuw i8, ptr %.01620, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !103
  %i.cu = uitofp i8 %i.ct to float
  %i.cv = load float, ptr %i.b, align 8, !tbaa !23
  %i.cw = fmul float %i.cv, %i.cu
  %i.cx = fadd float %i.cw, 5.000000e-01          ; 3 uses
  %i.cy = fcmp ogt float %i.cx, 2.550000e+02
  br i1 %i.cy, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit
  %i.cz = fcmp olt float %i.cx, 0.000000e+00
  %i.da = select i1 %i.cz, float 0.000000e+00, float %i.cx
  %i.db = fptoui float %i.da to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, %bb.c
  %i.dc = phi i8 [ %i.db, %bb.c ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.01521, i64 1
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !103
  %i.de = getelementptr inbounds nuw i8, ptr %.01620, i64 2
  %i.df = load i8, ptr %i.de, align 1, !tbaa !103
  %i.dg = uitofp i8 %i.df to float
  %i.dh = load float, ptr %i.b, align 8, !tbaa !23
  %i.di = fmul float %i.dh, %i.dg
  %i.dj = fadd float %i.di, 5.000000e-01          ; 3 uses
  %i.dk = fcmp ogt float %i.dj, 2.550000e+02
  br i1 %i.dk, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17
  %i.dl = fcmp olt float %i.dj, 0.000000e+00
  %i.dm = select i1 %i.dl, float 0.000000e+00, float %i.dj
  %i.dn = fptoui float %i.dm to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, %bb.d
  %i.do = phi i8 [ %i.dn, %bb.d ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.01521, i64 2
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !103
  %i.dq = getelementptr inbounds nuw i8, ptr %.01620, i64 3
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !103
  %i.ds = uitofp i8 %i.dr to float
  %i.dt = load float, ptr %i.b, align 8, !tbaa !23
  %i.du = fmul float %i.dt, %i.ds
  %i.dv = fadd float %i.du, 5.000000e-01          ; 3 uses
  %i.dw = fcmp ogt float %i.dv, 2.550000e+02
  br i1 %i.dw, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18
  %i.dx = fcmp olt float %i.dv, 0.000000e+00
  %i.dy = select i1 %i.dx, float 0.000000e+00, float %i.dv
  %i.dz = fptoui float %i.dy to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, %bb.e
  %i.ea = phi i8 [ %i.dz, %bb.e ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.01521, i64 3
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !103
  %i.ec = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %.01521, i64 4
  %i.ee = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ee, %3
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_7EE5applyEPKvPvl:bb.a

bb.ad:                                            ; preds = %bb.ac
  %i.dx = lshr i32 %i.cx, 23                      ; 2 uses
  %i.dy = sub nuw nsw i32 126, %i.dx
  %i.dz = and i32 %i.cx, 8388607
  %i.ea = or disjoint i32 %i.dz, 8388608          ; 2 uses
  %i.eb = add nsw i32 %i.dx, -94
  %i.ec = shl i32 %i.ea, %i.eb                    ; 2 uses
  %i.ed = lshr i32 %i.ea, %i.dy                   ; 2 uses
  %i.ee = and i32 %i.cy, 32768
  %i.ef = or i32 %i.ed, %i.ee
  %i.eg = trunc nuw i32 %i.ef to i16              ; 2 uses
  %i.eh = icmp ugt i32 %i.ec, -2147483648
  br i1 %i.eh, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ei = icmp ne i32 %i.ec, -2147483648
  %i.ej = and i32 %i.ed, 1
  %.not.i.i.i24 = icmp eq i32 %i.ej, 0
  %or.cond.i.i.i25 = select i1 %i.ei, i1 true, i1 %.not.i.i.i24
  br i1 %or.cond.i.i.i25, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit27, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ek = add nuw i16 %i.eg, 1
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit27

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit27: ; preds = %bb.x, %bb.y, %bb.aa, %bb.ab, %bb.ac, %bb.ae, %bb.af
  %.033.i.i.i26 = phi i16 [ %i.da, %bb.ac ], [ %i.dl, %bb.y ], [ %i.dn, %bb.aa ], [ %i.dv, %bb.ab ], [ %i.dd, %bb.x ], [ %i.ek, %bb.af ], [ %i.eg, %bb.ae ]
  %i.el = getelementptr inbounds nuw i8, ptr %.01833, i64 4
  store i16 %.033.i.i.i26, ptr %i.el, align 2, !tbaa !149
  %i.em = getelementptr inbounds nuw i8, ptr %.034, i64 3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !103
  %i.eo = uitofp i8 %i.en to float
  %i.ep = fmul float %i.c, %i.eo                  ; 2 uses
  %i.eq = bitcast float %i.ep to i32
  %i.er = tail call float @llvm.fabs.f32(float %i.ep)
  %i.es = bitcast float %i.er to i32              ; 10 uses
  %i.et = lshr i32 %i.eq, 16                      ; 3 uses
  %i.eu = trunc nuw i32 %i.et to i16
  %i.ev = and i16 %i.eu, -32768                   ; 3 uses
  %i.ew = icmp samesign ugt i32 %i.es, 947912703
  br i1 %i.ew, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit27
  %i.ex = icmp samesign ugt i32 %i.es, 2139095039
  br i1 %i.ex, label %bb.ah, label %bb.aj, !prof !106

bb.ah:                                            ; preds = %bb.ag
  %i.ey = or disjoint i16 %i.ev, 31744            ; 2 uses
  %i.ez = icmp eq i32 %i.es, 2139095040
  br i1 %i.ez, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit31, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fa = lshr i32 %i.es, 13
  %i.fb = and i32 %i.fa, 1023                     ; 2 uses
  %i.fc = icmp eq i32 %i.fb, 0
  %i.fd = zext i1 %i.fc to i16
  %i.fe = trunc nuw nsw i32 %i.fb to i16
  %i.ff = or i16 %i.fe, %i.fd
  %i.fg = or disjoint i16 %i.ff, %i.ey
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit31

bb.aj:                                            ; preds = %bb.ag
  %i.fh = icmp samesign ugt i32 %i.es, 1199566847
  br i1 %i.fh, label %bb.ak, label %bb.al, !prof !106

bb.ak:                                            ; preds = %bb.aj
  %i.fi = or disjoint i16 %i.ev, 31744
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit31

bb.al:                                            ; preds = %bb.aj
  %i.fj = add nuw nsw i32 %i.es, 134221823
  %i.fk = lshr i32 %i.es, 13
  %i.fl = and i32 %i.fk, 1
  %i.fm = add nuw nsw i32 %i.fj, %i.fl
  %i.fn = lshr i32 %i.fm, 13
  %i.fo = and i32 %i.et, 32768
  %i.fp = or i32 %i.fn, %i.fo
  %i.fq = trunc i32 %i.fp to i16
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit31

bb.am:                                            ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit27
  %i.fr = icmp samesign ult i32 %i.es, 855638017
  br i1 %i.fr, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit31, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fs = lshr i32 %i.es, 23                      ; 2 uses
  %i.ft = sub nuw nsw i32 126, %i.fs
  %i.fu = and i32 %i.es, 8388607
  %i.fv = or disjoint i32 %i.fu, 8388608          ; 2 uses
  %i.fw = add nsw i32 %i.fs, -94
  %i.fx = shl i32 %i.fv, %i.fw                    ; 2 uses
  %i.fy = lshr i32 %i.fv, %i.ft                   ; 2 uses
  %i.fz = and i32 %i.et, 32768
  %i.ga = or i32 %i.fy, %i.fz
  %i.gb = trunc nuw i32 %i.ga to i16              ; 2 uses
  %i.gc = icmp ugt i32 %i.fx, -2147483648
  br i1 %i.gc, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gd = icmp ne i32 %i.fx, -2147483648
  %i.ge = and i32 %i.fy, 1
  %.not.i.i.i28 = icmp eq i32 %i.ge, 0
  %or.cond.i.i.i29 = select i1 %i.gd, i1 true, i1 %.not.i.i.i28
  br i1 %or.cond.i.i.i29, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit31, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gf = add nuw i16 %i.gb, 1
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit31

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE7EE9CastValueEf.exit31: ; preds = %bb.ah, %bb.ai, %bb.ak, %bb.al, %bb.am, %bb.ao, %bb.ap
  %.033.i.i.i30 = phi i16 [ %i.ev, %bb.am ], [ %i.fg, %bb.ai ], [ %i.fi, %bb.ak ], [ %i.fq, %bb.al ], [ %i.ey, %bb.ah ], [ %i.gf, %bb.ap ], [ %i.gb, %bb.ao ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.01833, i64 6
  store i16 %.033.i.i.i30, ptr %i.gg, align 2, !tbaa !149
  %i.gh = getelementptr inbounds nuw i8, ptr %.034, i64 4
  %i.gi = getelementptr inbounds nuw i8, ptr %.01833, i64 8
  %i.gj = add nuw nsw i64 %.01932, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.gj, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !370
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.a) #20, !inline_history !371
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE1ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !103
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_8EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_8EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %3, 4
  %i.d = getelementptr i8, ptr %2, i64 %i.c       ; 2 uses
  %i.e = shl i64 %3, 2
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %bound0 = icmp ult ptr %2, %i.f
  %bound0.a = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound025 = icmp ult ptr %2, %4
  %bound126 = icmp ult ptr %i.b, %i.d
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx = or i1 %found.conflict, %found.conflict27
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %i.g = shl i64 %n.vec, 4
  %i.h = getelementptr i8, ptr %2, i64 %i.g
  %i.i = shl i64 %n.vec, 2
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = load float, ptr %i.b, align 8, !tbaa !33, !alias.scope !378
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.k, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.l
  %i.m = shl i64 %index, 2                        ; 4 uses
  %next.gep28 = getelementptr i8, ptr %1, i64 %i.m ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep29 = getelementptr i8, ptr %i.n, i64 4
  %i.o = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep30 = getelementptr i8, ptr %i.o, i64 8
  %i.p = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep31 = getelementptr i8, ptr %i.p, i64 12
  %i.q = load i8, ptr %next.gep28, align 1, !tbaa !103, !alias.scope !379
  %i.r = load i8, ptr %next.gep29, align 1, !tbaa !103, !alias.scope !379
  %i.s = load i8, ptr %next.gep30, align 1, !tbaa !103, !alias.scope !379
  %i.t = load i8, ptr %next.gep31, align 1, !tbaa !103, !alias.scope !379
  %i.u = insertelement <4 x i8> poison, i8 %i.q, i64 0
  %i.v = insertelement <4 x i8> %i.u, i8 %i.r, i64 1
  %i.w = insertelement <4 x i8> %i.v, i8 %i.s, i64 2
  %i.x = insertelement <4 x i8> %i.w, i8 %i.t, i64 3
  %i.y = uitofp <4 x i8> %i.x to <4 x float>
  %i.z = fmul <4 x float> %broadcast.splat, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep28, i64 1
  %i.ab = getelementptr i8, ptr %i.n, i64 5
  %i.ac = getelementptr i8, ptr %i.o, i64 9
  %i.ad = getelementptr i8, ptr %i.p, i64 13
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !103, !alias.scope !379
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !103, !alias.scope !379
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !103, !alias.scope !379
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !103, !alias.scope !379
  %i.ai = insertelement <4 x i8> poison, i8 %i.ae, i64 0
  %i.aj = insertelement <4 x i8> %i.ai, i8 %i.af, i64 1
  %i.ak = insertelement <4 x i8> %i.aj, i8 %i.ag, i64 2
  %i.al = insertelement <4 x i8> %i.ak, i8 %i.ah, i64 3
  %i.am = uitofp <4 x i8> %i.al to <4 x float>
  %i.an = fmul <4 x float> %broadcast.splat, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %next.gep28, i64 2
  %i.ap = getelementptr i8, ptr %i.n, i64 6
  %i.aq = getelementptr i8, ptr %i.o, i64 10
  %i.ar = getelementptr i8, ptr %i.p, i64 14
  %i.as = load i8, ptr %i.ao, align 1, !tbaa !103, !alias.scope !379
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !103, !alias.scope !379
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !103, !alias.scope !379
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !103, !alias.scope !379
  %i.aw = insertelement <4 x i8> poison, i8 %i.as, i64 0
  %i.ax = insertelement <4 x i8> %i.aw, i8 %i.at, i64 1
  %i.ay = insertelement <4 x i8> %i.ax, i8 %i.au, i64 2
  %i.az = insertelement <4 x i8> %i.ay, i8 %i.av, i64 3
  %i.ba = uitofp <4 x i8> %i.az to <4 x float>
  %i.bb = fmul <4 x float> %broadcast.splat, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %next.gep28, i64 3
  %i.bd = getelementptr i8, ptr %i.n, i64 7
  %i.be = getelementptr i8, ptr %i.o, i64 11
  %i.bf = getelementptr i8, ptr %i.p, i64 15
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !103, !alias.scope !379
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !103, !alias.scope !379
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !103, !alias.scope !379
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !103, !alias.scope !379
  %i.bk = insertelement <4 x i8> poison, i8 %i.bg, i64 0
  %i.bl = insertelement <4 x i8> %i.bk, i8 %i.bh, i64 1
  %i.bm = insertelement <4 x i8> %i.bl, i8 %i.bi, i64 2
  %i.bn = insertelement <4 x i8> %i.bm, i8 %i.bj, i64 3
  %i.bo = uitofp <4 x i8> %i.bn to <4 x float>
  %i.bp = fmul <4 x float> %broadcast.splat, %i.bo
  %i.bq = shufflevector <4 x float> %i.z, <4 x float> %i.an, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.br = shufflevector <4 x float> %i.bb, <4 x float> %i.bp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bq, <8 x float> %i.br, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !138, !alias.scope !380, !noalias !381
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.h, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.j, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.019 = phi i64 [ %i.cr, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ]
  %.01518 = phi ptr [ %i.cq, %scalar.ph ], [ %.01518.ph, %scalar.ph.preheader ] ; 5 uses
  %.01617 = phi ptr [ %i.cp, %scalar.ph ], [ %.01617.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bt = load i8, ptr %.01617, align 1, !tbaa !103
  %i.bu = uitofp i8 %i.bt to float
  %i.bv = load float, ptr %i.b, align 8, !tbaa !33
  %i.bw = fmul float %i.bv, %i.bu
  store float %i.bw, ptr %.01518, align 4, !tbaa !138
  %i.bx = getelementptr inbounds nuw i8, ptr %.01617, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !103
  %i.bz = uitofp i8 %i.by to float
  %i.ca = load float, ptr %i.b, align 8, !tbaa !33
  %i.cb = fmul float %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %.01518, i64 4
  store float %i.cb, ptr %i.cc, align 4, !tbaa !138
  %i.cd = getelementptr inbounds nuw i8, ptr %.01617, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !103
  %i.cf = uitofp i8 %i.ce to float
  %i.cg = load float, ptr %i.b, align 8, !tbaa !33
  %i.ch = fmul float %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %.01518, i64 8
  store float %i.ch, ptr %i.ci, align 4, !tbaa !138
  %i.cj = getelementptr inbounds nuw i8, ptr %.01617, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !103
  %i.cl = uitofp i8 %i.ck to float
  %i.cm = load float, ptr %i.b, align 8, !tbaa !33
  %i.cn = fmul float %i.cm, %i.cl
  %i.co = getelementptr inbounds nuw i8, ptr %.01518, i64 12
  store float %i.cn, ptr %i.co, align 4, !tbaa !138
  %i.cp = getelementptr inbounds nuw i8, ptr %.01617, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.01518, i64 16
  %i.cr = add nuw nsw i64 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !377
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.a) #20, !inline_history !382
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE2ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !103
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_1EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %3, 2
  %i.d = getelementptr i8, ptr %2, i64 %i.c       ; 2 uses
  %i.e = shl i64 %3, 3
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %bound0 = icmp ult ptr %2, %i.f
  %bound0.a = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound033 = icmp ult ptr %2, %4
  %bound134 = icmp ult ptr %i.b, %i.d
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %i.g = shl i64 %n.vec, 2
  %i.h = getelementptr i8, ptr %2, i64 %i.g
  %i.i = shl i64 %n.vec, 3
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = load float, ptr %i.b, align 8, !tbaa !35, !alias.scope !389
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.k, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.l
  %i.m = shl i64 %index, 3                        ; 4 uses
  %next.gep36 = getelementptr i8, ptr %1, i64 %i.m ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep37 = getelementptr i8, ptr %i.n, i64 8
  %i.o = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep38 = getelementptr i8, ptr %i.o, i64 16
  %i.p = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep39 = getelementptr i8, ptr %i.p, i64 24
  %i.q = load i16, ptr %next.gep36, align 2, !tbaa !149, !alias.scope !390
  %i.r = load i16, ptr %next.gep37, align 2, !tbaa !149, !alias.scope !390
  %i.s = load i16, ptr %next.gep38, align 2, !tbaa !149, !alias.scope !390
  %i.t = load i16, ptr %next.gep39, align 2, !tbaa !149, !alias.scope !390
  %i.u = insertelement <4 x i16> poison, i16 %i.q, i64 0
  %i.v = insertelement <4 x i16> %i.u, i16 %i.r, i64 1
  %i.w = insertelement <4 x i16> %i.v, i16 %i.s, i64 2
  %i.x = insertelement <4 x i16> %i.w, i16 %i.t, i64 3
  %i.y = uitofp <4 x i16> %i.x to <4 x float>
  %i.z = fmul <4 x float> %broadcast.splat, %i.y
  %i.aa = fadd <4 x float> %i.z, splat (float 5.000000e-01) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep36, i64 2
  %i.ac = getelementptr i8, ptr %i.n, i64 10
  %i.ad = getelementptr i8, ptr %i.o, i64 18
  %i.ae = getelementptr i8, ptr %i.p, i64 26
  %i.af = load i16, ptr %i.ab, align 2, !tbaa !149, !alias.scope !390
  %i.ag = load i16, ptr %i.ac, align 2, !tbaa !149, !alias.scope !390
  %i.ah = load i16, ptr %i.ad, align 2, !tbaa !149, !alias.scope !390
  %i.ai = load i16, ptr %i.ae, align 2, !tbaa !149, !alias.scope !390
  %i.aj = insertelement <4 x i16> poison, i16 %i.af, i64 0
  %i.ak = insertelement <4 x i16> %i.aj, i16 %i.ag, i64 1
  %i.al = insertelement <4 x i16> %i.ak, i16 %i.ah, i64 2
  %i.am = insertelement <4 x i16> %i.al, i16 %i.ai, i64 3
  %i.an = uitofp <4 x i16> %i.am to <4 x float>
  %i.ao = fmul <4 x float> %broadcast.splat, %i.an
  %i.ap = fadd <4 x float> %i.ao, splat (float 5.000000e-01) ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep36, i64 4
  %i.ar = getelementptr i8, ptr %i.n, i64 12
  %i.as = getelementptr i8, ptr %i.o, i64 20
  %i.at = getelementptr i8, ptr %i.p, i64 28
  %i.au = load i16, ptr %i.aq, align 2, !tbaa !149, !alias.scope !390
  %i.av = load i16, ptr %i.ar, align 2, !tbaa !149, !alias.scope !390
  %i.aw = load i16, ptr %i.as, align 2, !tbaa !149, !alias.scope !390
  %i.ax = load i16, ptr %i.at, align 2, !tbaa !149, !alias.scope !390
  %i.ay = insertelement <4 x i16> poison, i16 %i.au, i64 0
  %i.az = insertelement <4 x i16> %i.ay, i16 %i.av, i64 1
  %i.ba = insertelement <4 x i16> %i.az, i16 %i.aw, i64 2
  %i.bb = insertelement <4 x i16> %i.ba, i16 %i.ax, i64 3
  %i.bc = uitofp <4 x i16> %i.bb to <4 x float>
  %i.bd = fmul <4 x float> %broadcast.splat, %i.bc
  %i.be = fadd <4 x float> %i.bd, splat (float 5.000000e-01) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %next.gep36, i64 6
  %i.bg = getelementptr i8, ptr %i.n, i64 14
  %i.bh = getelementptr i8, ptr %i.o, i64 22
  %i.bi = getelementptr i8, ptr %i.p, i64 30
  %i.bj = load i16, ptr %i.bf, align 2, !tbaa !149, !alias.scope !390
  %i.bk = load i16, ptr %i.bg, align 2, !tbaa !149, !alias.scope !390
  %i.bl = load i16, ptr %i.bh, align 2, !tbaa !149, !alias.scope !390
  %i.bm = load i16, ptr %i.bi, align 2, !tbaa !149, !alias.scope !390
  %i.bn = insertelement <4 x i16> poison, i16 %i.bj, i64 0
  %i.bo = insertelement <4 x i16> %i.bn, i16 %i.bk, i64 1
  %i.bp = insertelement <4 x i16> %i.bo, i16 %i.bl, i64 2
  %i.bq = insertelement <4 x i16> %i.bp, i16 %i.bm, i64 3
  %i.br = uitofp <4 x i16> %i.bq to <4 x float>
  %i.bs = fmul <4 x float> %broadcast.splat, %i.br
  %i.bt = fadd <4 x float> %i.bs, splat (float 5.000000e-01) ; 3 uses
  %i.bu = shufflevector <4 x float> %i.aa, <4 x float> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bv = fcmp ogt <8 x float> %i.bu, splat (float 2.550000e+02)
  %i.bw = shufflevector <4 x float> %i.aa, <4 x float> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bx = fcmp olt <8 x float> %i.bw, zeroinitializer
  %i.by = shufflevector <4 x float> %i.aa, <4 x float> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bz = select <8 x i1> %i.bx, <8 x float> zeroinitializer, <8 x float> %i.by
  %i.ca = fptoui <8 x float> %i.bz to <8 x i8>
  %i.cb = select <8 x i1> %i.bv, <8 x i8> splat (i8 -1), <8 x i8> %i.ca
  %i.cc = shufflevector <4 x float> %i.be, <4 x float> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cd = fcmp ogt <8 x float> %i.cc, splat (float 2.550000e+02)
  %i.ce = shufflevector <4 x float> %i.be, <4 x float> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cf = fcmp olt <8 x float> %i.ce, zeroinitializer
  %i.cg = shufflevector <4 x float> %i.be, <4 x float> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ch = select <8 x i1> %i.cf, <8 x float> zeroinitializer, <8 x float> %i.cg
  %i.ci = fptoui <8 x float> %i.ch to <8 x i8>
  %i.cj = select <8 x i1> %i.cd, <8 x i8> splat (i8 -1), <8 x i8> %i.ci
  %interleaved.vec = shufflevector <8 x i8> %i.cb, <8 x i8> %i.cj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !103, !alias.scope !391, !noalias !392
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01521.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.h, %middle.block ]
  %.01620.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.j, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19
  %.022 = phi i64 [ %i.eh, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.022.ph, %scalar.ph.preheader ]
  %.01521 = phi ptr [ %i.eg, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01521.ph, %scalar.ph.preheader ] ; 5 uses
  %.01620 = phi ptr [ %i.ef, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01620.ph, %scalar.ph.preheader ] ; 5 uses
  %i.cl = load i16, ptr %.01620, align 2, !tbaa !149
  %i.cm = uitofp i16 %i.cl to float
  %i.cn = load float, ptr %i.b, align 8, !tbaa !35
  %i.co = fmul float %i.cn, %i.cm
  %i.cp = fadd float %i.co, 5.000000e-01          ; 3 uses
  %i.cq = fcmp ogt float %i.cp, 2.550000e+02
  br i1 %i.cq, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.cr = fcmp olt float %i.cp, 0.000000e+00
  %i.cs = select i1 %i.cr, float 0.000000e+00, float %i.cp
  %i.ct = fptoui float %i.cs to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit: ; preds = %scalar.ph, %bb.b
  %i.cu = phi i8 [ %i.ct, %bb.b ], [ -1, %scalar.ph ]
  store i8 %i.cu, ptr %.01521, align 1, !tbaa !103
  %i.cv = getelementptr inbounds nuw i8, ptr %.01620, i64 2
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !149
  %i.cx = uitofp i16 %i.cw to float
  %i.cy = load float, ptr %i.b, align 8, !tbaa !35
  %i.cz = fmul float %i.cy, %i.cx
  %i.da = fadd float %i.cz, 5.000000e-01          ; 3 uses
  %i.db = fcmp ogt float %i.da, 2.550000e+02
  br i1 %i.db, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit
  %i.dc = fcmp olt float %i.da, 0.000000e+00
  %i.dd = select i1 %i.dc, float 0.000000e+00, float %i.da
  %i.de = fptoui float %i.dd to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, %bb.c
  %i.df = phi i8 [ %i.de, %bb.c ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.01521, i64 1
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !103
  %i.dh = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !149
  %i.dj = uitofp i16 %i.di to float
  %i.dk = load float, ptr %i.b, align 8, !tbaa !35
  %i.dl = fmul float %i.dk, %i.dj
  %i.dm = fadd float %i.dl, 5.000000e-01          ; 3 uses
  %i.dn = fcmp ogt float %i.dm, 2.550000e+02
  br i1 %i.dn, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17
  %i.do = fcmp olt float %i.dm, 0.000000e+00
  %i.dp = select i1 %i.do, float 0.000000e+00, float %i.dm
  %i.dq = fptoui float %i.dp to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, %bb.d
  %i.dr = phi i8 [ %i.dq, %bb.d ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.01521, i64 2
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !103
  %i.dt = getelementptr inbounds nuw i8, ptr %.01620, i64 6
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !149
  %i.dv = uitofp i16 %i.du to float
  %i.dw = load float, ptr %i.b, align 8, !tbaa !35
  %i.dx = fmul float %i.dw, %i.dv
  %i.dy = fadd float %i.dx, 5.000000e-01          ; 3 uses
  %i.dz = fcmp ogt float %i.dy, 2.550000e+02
  br i1 %i.dz, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18
  %i.ea = fcmp olt float %i.dy, 0.000000e+00
  %i.eb = select i1 %i.ea, float 0.000000e+00, float %i.dy
  %i.ec = fptoui float %i.eb to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, %bb.e
  %i.ed = phi i8 [ %i.ec, %bb.e ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.01521, i64 3
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !103
  %i.ef = getelementptr inbounds nuw i8, ptr %.01620, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.01521, i64 4
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_8EE5applyEPKvPvl:bb.a
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.k
  %i.l = shl i64 %index, 3                        ; 4 uses
  %next.gep21 = getelementptr i8, ptr %1, i64 %i.l ; 4 uses
  %i.m = getelementptr i8, ptr %1, i64 %i.l       ; 4 uses
  %next.gep22 = getelementptr i8, ptr %i.m, i64 8
  %i.n = getelementptr i8, ptr %1, i64 %i.l       ; 4 uses
  %next.gep23 = getelementptr i8, ptr %i.n, i64 16
  %i.o = getelementptr i8, ptr %1, i64 %i.l       ; 4 uses
  %next.gep24 = getelementptr i8, ptr %i.o, i64 24
  %i.p = load i16, ptr %next.gep21, align 2, !tbaa !149
  %i.q = load i16, ptr %next.gep22, align 2, !tbaa !149
  %i.r = load i16, ptr %next.gep23, align 2, !tbaa !149
  %i.s = load i16, ptr %next.gep24, align 2, !tbaa !149
  %i.t = insertelement <4 x i16> poison, i16 %i.p, i64 0
  %i.u = insertelement <4 x i16> %i.t, i16 %i.q, i64 1
  %i.v = insertelement <4 x i16> %i.u, i16 %i.r, i64 2
  %i.w = insertelement <4 x i16> %i.v, i16 %i.s, i64 3
  %i.x = uitofp <4 x i16> %i.w to <4 x float>
  %i.y = fmul <4 x float> %broadcast.splat, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep21, i64 2
  %i.aa = getelementptr i8, ptr %i.m, i64 10
  %i.ab = getelementptr i8, ptr %i.n, i64 18
  %i.ac = getelementptr i8, ptr %i.o, i64 26
  %i.ad = load i16, ptr %i.z, align 2, !tbaa !149
  %i.ae = load i16, ptr %i.aa, align 2, !tbaa !149
  %i.af = load i16, ptr %i.ab, align 2, !tbaa !149
  %i.ag = load i16, ptr %i.ac, align 2, !tbaa !149
  %i.ah = insertelement <4 x i16> poison, i16 %i.ad, i64 0
  %i.ai = insertelement <4 x i16> %i.ah, i16 %i.ae, i64 1
  %i.aj = insertelement <4 x i16> %i.ai, i16 %i.af, i64 2
  %i.ak = insertelement <4 x i16> %i.aj, i16 %i.ag, i64 3
  %i.al = uitofp <4 x i16> %i.ak to <4 x float>
  %i.am = fmul <4 x float> %broadcast.splat, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %next.gep21, i64 4
  %i.ao = getelementptr i8, ptr %i.m, i64 12
  %i.ap = getelementptr i8, ptr %i.n, i64 20
  %i.aq = getelementptr i8, ptr %i.o, i64 28
  %i.ar = load i16, ptr %i.an, align 2, !tbaa !149
  %i.as = load i16, ptr %i.ao, align 2, !tbaa !149
  %i.at = load i16, ptr %i.ap, align 2, !tbaa !149
  %i.au = load i16, ptr %i.aq, align 2, !tbaa !149
  %i.av = insertelement <4 x i16> poison, i16 %i.ar, i64 0
  %i.aw = insertelement <4 x i16> %i.av, i16 %i.as, i64 1
  %i.ax = insertelement <4 x i16> %i.aw, i16 %i.at, i64 2
  %i.ay = insertelement <4 x i16> %i.ax, i16 %i.au, i64 3
  %i.az = uitofp <4 x i16> %i.ay to <4 x float>
  %i.ba = fmul <4 x float> %broadcast.splat, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %next.gep21, i64 6
  %i.bc = getelementptr i8, ptr %i.m, i64 14
  %i.bd = getelementptr i8, ptr %i.n, i64 22
  %i.be = getelementptr i8, ptr %i.o, i64 30
  %i.bf = load i16, ptr %i.bb, align 2, !tbaa !149
  %i.bg = load i16, ptr %i.bc, align 2, !tbaa !149
  %i.bh = load i16, ptr %i.bd, align 2, !tbaa !149
  %i.bi = load i16, ptr %i.be, align 2, !tbaa !149
  %i.bj = insertelement <4 x i16> poison, i16 %i.bf, i64 0
  %i.bk = insertelement <4 x i16> %i.bj, i16 %i.bg, i64 1
  %i.bl = insertelement <4 x i16> %i.bk, i16 %i.bh, i64 2
  %i.bm = insertelement <4 x i16> %i.bl, i16 %i.bi, i64 3
  %i.bn = uitofp <4 x i16> %i.bm to <4 x float>
  %i.bo = fmul <4 x float> %broadcast.splat, %i.bn
  %i.bp = shufflevector <4 x float> %i.y, <4 x float> %i.am, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bq = shufflevector <4 x float> %i.ba, <4 x float> %i.bo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bp, <8 x float> %i.bq, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !138, !alias.scope !426, !noalias !425
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !423

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.g, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.i, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.019 = phi i64 [ %i.cl, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ]
  %.01518 = phi ptr [ %i.ck, %scalar.ph ], [ %.01518.ph, %scalar.ph.preheader ] ; 5 uses
  %.01617 = phi ptr [ %i.cj, %scalar.ph ], [ %.01617.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bs = load float, ptr %i.b, align 8, !tbaa !45
  %i.bt = getelementptr inbounds nuw i8, ptr %.01518, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.01518, i64 8
  %i.bv = load <4 x i16>, ptr %.01617, align 2, !tbaa !149
  %i.bw = uitofp <4 x i16> %i.bv to <4 x float>   ; 4 uses
  %i.bx = extractelement <4 x float> %i.bw, i64 0
  %i.by = fmul float %i.bs, %i.bx
  store float %i.by, ptr %.01518, align 4, !tbaa !138
  %i.bz = load float, ptr %i.b, align 8, !tbaa !45
  %i.ca = extractelement <4 x float> %i.bw, i64 1
  %i.cb = fmul float %i.bz, %i.ca
  store float %i.cb, ptr %i.bt, align 4, !tbaa !138
  %i.cc = load float, ptr %i.b, align 8, !tbaa !45
  %i.cd = extractelement <4 x float> %i.bw, i64 2
  %i.ce = fmul float %i.cc, %i.cd
  store float %i.ce, ptr %i.bu, align 4, !tbaa !138
  %i.cf = load float, ptr %i.b, align 8, !tbaa !45
  %i.cg = extractelement <4 x float> %i.bw, i64 3
  %i.ch = fmul float %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %.01518, i64 12
  store float %i.ch, ptr %i.ci, align 4, !tbaa !138
  %i.cj = getelementptr inbounds nuw i8, ptr %.01617, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.01518, i64 16
  %i.cl = add nuw nsw i64 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !424
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.a) #20, !inline_history !427
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE3ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !103
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_1EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %3, 2
  %i.d = getelementptr i8, ptr %2, i64 %i.c       ; 2 uses
  %i.e = shl i64 %3, 3
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %bound0 = icmp ult ptr %2, %i.f
  %bound0.a = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound033 = icmp ult ptr %2, %4
  %bound134 = icmp ult ptr %i.b, %i.d
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %i.g = shl i64 %n.vec, 2
  %i.h = getelementptr i8, ptr %2, i64 %i.g
  %i.i = shl i64 %n.vec, 3
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = load float, ptr %i.b, align 8, !tbaa !47, !alias.scope !434
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.k, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.l
  %i.m = shl i64 %index, 3                        ; 4 uses
  %next.gep36 = getelementptr i8, ptr %1, i64 %i.m ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep37 = getelementptr i8, ptr %i.n, i64 8
  %i.o = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep38 = getelementptr i8, ptr %i.o, i64 16
  %i.p = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep39 = getelementptr i8, ptr %i.p, i64 24
  %i.q = load i16, ptr %next.gep36, align 2, !tbaa !149, !alias.scope !435
  %i.r = load i16, ptr %next.gep37, align 2, !tbaa !149, !alias.scope !435
  %i.s = load i16, ptr %next.gep38, align 2, !tbaa !149, !alias.scope !435
  %i.t = load i16, ptr %next.gep39, align 2, !tbaa !149, !alias.scope !435
  %i.u = insertelement <4 x i16> poison, i16 %i.q, i64 0
  %i.v = insertelement <4 x i16> %i.u, i16 %i.r, i64 1
  %i.w = insertelement <4 x i16> %i.v, i16 %i.s, i64 2
  %i.x = insertelement <4 x i16> %i.w, i16 %i.t, i64 3
  %i.y = uitofp <4 x i16> %i.x to <4 x float>
  %i.z = fmul <4 x float> %broadcast.splat, %i.y
  %i.aa = fadd <4 x float> %i.z, splat (float 5.000000e-01) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep36, i64 2
  %i.ac = getelementptr i8, ptr %i.n, i64 10
  %i.ad = getelementptr i8, ptr %i.o, i64 18
  %i.ae = getelementptr i8, ptr %i.p, i64 26
  %i.af = load i16, ptr %i.ab, align 2, !tbaa !149, !alias.scope !435
  %i.ag = load i16, ptr %i.ac, align 2, !tbaa !149, !alias.scope !435
  %i.ah = load i16, ptr %i.ad, align 2, !tbaa !149, !alias.scope !435
  %i.ai = load i16, ptr %i.ae, align 2, !tbaa !149, !alias.scope !435
  %i.aj = insertelement <4 x i16> poison, i16 %i.af, i64 0
  %i.ak = insertelement <4 x i16> %i.aj, i16 %i.ag, i64 1
  %i.al = insertelement <4 x i16> %i.ak, i16 %i.ah, i64 2
  %i.am = insertelement <4 x i16> %i.al, i16 %i.ai, i64 3
  %i.an = uitofp <4 x i16> %i.am to <4 x float>
  %i.ao = fmul <4 x float> %broadcast.splat, %i.an
  %i.ap = fadd <4 x float> %i.ao, splat (float 5.000000e-01) ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep36, i64 4
  %i.ar = getelementptr i8, ptr %i.n, i64 12
  %i.as = getelementptr i8, ptr %i.o, i64 20
  %i.at = getelementptr i8, ptr %i.p, i64 28
  %i.au = load i16, ptr %i.aq, align 2, !tbaa !149, !alias.scope !435
  %i.av = load i16, ptr %i.ar, align 2, !tbaa !149, !alias.scope !435
  %i.aw = load i16, ptr %i.as, align 2, !tbaa !149, !alias.scope !435
  %i.ax = load i16, ptr %i.at, align 2, !tbaa !149, !alias.scope !435
  %i.ay = insertelement <4 x i16> poison, i16 %i.au, i64 0
  %i.az = insertelement <4 x i16> %i.ay, i16 %i.av, i64 1
  %i.ba = insertelement <4 x i16> %i.az, i16 %i.aw, i64 2
  %i.bb = insertelement <4 x i16> %i.ba, i16 %i.ax, i64 3
  %i.bc = uitofp <4 x i16> %i.bb to <4 x float>
  %i.bd = fmul <4 x float> %broadcast.splat, %i.bc
  %i.be = fadd <4 x float> %i.bd, splat (float 5.000000e-01) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %next.gep36, i64 6
  %i.bg = getelementptr i8, ptr %i.n, i64 14
  %i.bh = getelementptr i8, ptr %i.o, i64 22
  %i.bi = getelementptr i8, ptr %i.p, i64 30
  %i.bj = load i16, ptr %i.bf, align 2, !tbaa !149, !alias.scope !435
  %i.bk = load i16, ptr %i.bg, align 2, !tbaa !149, !alias.scope !435
  %i.bl = load i16, ptr %i.bh, align 2, !tbaa !149, !alias.scope !435
  %i.bm = load i16, ptr %i.bi, align 2, !tbaa !149, !alias.scope !435
  %i.bn = insertelement <4 x i16> poison, i16 %i.bj, i64 0
  %i.bo = insertelement <4 x i16> %i.bn, i16 %i.bk, i64 1
  %i.bp = insertelement <4 x i16> %i.bo, i16 %i.bl, i64 2
  %i.bq = insertelement <4 x i16> %i.bp, i16 %i.bm, i64 3
  %i.br = uitofp <4 x i16> %i.bq to <4 x float>
  %i.bs = fmul <4 x float> %broadcast.splat, %i.br
  %i.bt = fadd <4 x float> %i.bs, splat (float 5.000000e-01) ; 3 uses
  %i.bu = shufflevector <4 x float> %i.aa, <4 x float> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bv = fcmp ogt <8 x float> %i.bu, splat (float 2.550000e+02)
  %i.bw = shufflevector <4 x float> %i.aa, <4 x float> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bx = fcmp olt <8 x float> %i.bw, zeroinitializer
  %i.by = shufflevector <4 x float> %i.aa, <4 x float> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bz = select <8 x i1> %i.bx, <8 x float> zeroinitializer, <8 x float> %i.by
  %i.ca = fptoui <8 x float> %i.bz to <8 x i8>
  %i.cb = select <8 x i1> %i.bv, <8 x i8> splat (i8 -1), <8 x i8> %i.ca
  %i.cc = shufflevector <4 x float> %i.be, <4 x float> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cd = fcmp ogt <8 x float> %i.cc, splat (float 2.550000e+02)
  %i.ce = shufflevector <4 x float> %i.be, <4 x float> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cf = fcmp olt <8 x float> %i.ce, zeroinitializer
  %i.cg = shufflevector <4 x float> %i.be, <4 x float> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ch = select <8 x i1> %i.cf, <8 x float> zeroinitializer, <8 x float> %i.cg
  %i.ci = fptoui <8 x float> %i.ch to <8 x i8>
  %i.cj = select <8 x i1> %i.cd, <8 x i8> splat (i8 -1), <8 x i8> %i.ci
  %interleaved.vec = shufflevector <8 x i8> %i.cb, <8 x i8> %i.cj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !103, !alias.scope !436, !noalias !437
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !432

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01521.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.h, %middle.block ]
  %.01620.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.j, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19
  %.022 = phi i64 [ %i.eh, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.022.ph, %scalar.ph.preheader ]
  %.01521 = phi ptr [ %i.eg, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01521.ph, %scalar.ph.preheader ] ; 5 uses
  %.01620 = phi ptr [ %i.ef, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01620.ph, %scalar.ph.preheader ] ; 5 uses
  %i.cl = load i16, ptr %.01620, align 2, !tbaa !149
  %i.cm = uitofp i16 %i.cl to float
  %i.cn = load float, ptr %i.b, align 8, !tbaa !47
  %i.co = fmul float %i.cn, %i.cm
  %i.cp = fadd float %i.co, 5.000000e-01          ; 3 uses
  %i.cq = fcmp ogt float %i.cp, 2.550000e+02
  br i1 %i.cq, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.cr = fcmp olt float %i.cp, 0.000000e+00
  %i.cs = select i1 %i.cr, float 0.000000e+00, float %i.cp
  %i.ct = fptoui float %i.cs to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit: ; preds = %scalar.ph, %bb.b
  %i.cu = phi i8 [ %i.ct, %bb.b ], [ -1, %scalar.ph ]
  store i8 %i.cu, ptr %.01521, align 1, !tbaa !103
  %i.cv = getelementptr inbounds nuw i8, ptr %.01620, i64 2
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !149
  %i.cx = uitofp i16 %i.cw to float
  %i.cy = load float, ptr %i.b, align 8, !tbaa !47
  %i.cz = fmul float %i.cy, %i.cx
  %i.da = fadd float %i.cz, 5.000000e-01          ; 3 uses
  %i.db = fcmp ogt float %i.da, 2.550000e+02
  br i1 %i.db, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit
  %i.dc = fcmp olt float %i.da, 0.000000e+00
  %i.dd = select i1 %i.dc, float 0.000000e+00, float %i.da
  %i.de = fptoui float %i.dd to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, %bb.c
  %i.df = phi i8 [ %i.de, %bb.c ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.01521, i64 1
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !103
  %i.dh = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !149
  %i.dj = uitofp i16 %i.di to float
  %i.dk = load float, ptr %i.b, align 8, !tbaa !47
  %i.dl = fmul float %i.dk, %i.dj
  %i.dm = fadd float %i.dl, 5.000000e-01          ; 3 uses
  %i.dn = fcmp ogt float %i.dm, 2.550000e+02
  br i1 %i.dn, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17
  %i.do = fcmp olt float %i.dm, 0.000000e+00
  %i.dp = select i1 %i.do, float 0.000000e+00, float %i.dm
  %i.dq = fptoui float %i.dp to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, %bb.d
  %i.dr = phi i8 [ %i.dq, %bb.d ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.01521, i64 2
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !103
  %i.dt = getelementptr inbounds nuw i8, ptr %.01620, i64 6
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !149
  %i.dv = uitofp i16 %i.du to float
  %i.dw = load float, ptr %i.b, align 8, !tbaa !47
  %i.dx = fmul float %i.dw, %i.dv
  %i.dy = fadd float %i.dx, 5.000000e-01          ; 3 uses
  %i.dz = fcmp ogt float %i.dy, 2.550000e+02
  br i1 %i.dz, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18
  %i.ea = fcmp olt float %i.dy, 0.000000e+00
  %i.eb = select i1 %i.ea, float 0.000000e+00, float %i.dy
  %i.ec = fptoui float %i.eb to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, %bb.e
  %i.ed = phi i8 [ %i.ec, %bb.e ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.01521, i64 3
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !103
  %i.ef = getelementptr inbounds nuw i8, ptr %.01620, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.01521, i64 4
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_8EE5applyEPKvPvl:bb.a
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.k
  %i.l = shl i64 %index, 3                        ; 4 uses
  %next.gep21 = getelementptr i8, ptr %1, i64 %i.l ; 4 uses
  %i.m = getelementptr i8, ptr %1, i64 %i.l       ; 4 uses
  %next.gep22 = getelementptr i8, ptr %i.m, i64 8
  %i.n = getelementptr i8, ptr %1, i64 %i.l       ; 4 uses
  %next.gep23 = getelementptr i8, ptr %i.n, i64 16
  %i.o = getelementptr i8, ptr %1, i64 %i.l       ; 4 uses
  %next.gep24 = getelementptr i8, ptr %i.o, i64 24
  %i.p = load i16, ptr %next.gep21, align 2, !tbaa !149
  %i.q = load i16, ptr %next.gep22, align 2, !tbaa !149
  %i.r = load i16, ptr %next.gep23, align 2, !tbaa !149
  %i.s = load i16, ptr %next.gep24, align 2, !tbaa !149
  %i.t = insertelement <4 x i16> poison, i16 %i.p, i64 0
  %i.u = insertelement <4 x i16> %i.t, i16 %i.q, i64 1
  %i.v = insertelement <4 x i16> %i.u, i16 %i.r, i64 2
  %i.w = insertelement <4 x i16> %i.v, i16 %i.s, i64 3
  %i.x = uitofp <4 x i16> %i.w to <4 x float>
  %i.y = fmul <4 x float> %broadcast.splat, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep21, i64 2
  %i.aa = getelementptr i8, ptr %i.m, i64 10
  %i.ab = getelementptr i8, ptr %i.n, i64 18
  %i.ac = getelementptr i8, ptr %i.o, i64 26
  %i.ad = load i16, ptr %i.z, align 2, !tbaa !149
  %i.ae = load i16, ptr %i.aa, align 2, !tbaa !149
  %i.af = load i16, ptr %i.ab, align 2, !tbaa !149
  %i.ag = load i16, ptr %i.ac, align 2, !tbaa !149
  %i.ah = insertelement <4 x i16> poison, i16 %i.ad, i64 0
  %i.ai = insertelement <4 x i16> %i.ah, i16 %i.ae, i64 1
  %i.aj = insertelement <4 x i16> %i.ai, i16 %i.af, i64 2
  %i.ak = insertelement <4 x i16> %i.aj, i16 %i.ag, i64 3
  %i.al = uitofp <4 x i16> %i.ak to <4 x float>
  %i.am = fmul <4 x float> %broadcast.splat, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %next.gep21, i64 4
  %i.ao = getelementptr i8, ptr %i.m, i64 12
  %i.ap = getelementptr i8, ptr %i.n, i64 20
  %i.aq = getelementptr i8, ptr %i.o, i64 28
  %i.ar = load i16, ptr %i.an, align 2, !tbaa !149
  %i.as = load i16, ptr %i.ao, align 2, !tbaa !149
  %i.at = load i16, ptr %i.ap, align 2, !tbaa !149
  %i.au = load i16, ptr %i.aq, align 2, !tbaa !149
  %i.av = insertelement <4 x i16> poison, i16 %i.ar, i64 0
  %i.aw = insertelement <4 x i16> %i.av, i16 %i.as, i64 1
  %i.ax = insertelement <4 x i16> %i.aw, i16 %i.at, i64 2
  %i.ay = insertelement <4 x i16> %i.ax, i16 %i.au, i64 3
  %i.az = uitofp <4 x i16> %i.ay to <4 x float>
  %i.ba = fmul <4 x float> %broadcast.splat, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %next.gep21, i64 6
  %i.bc = getelementptr i8, ptr %i.m, i64 14
  %i.bd = getelementptr i8, ptr %i.n, i64 22
  %i.be = getelementptr i8, ptr %i.o, i64 30
  %i.bf = load i16, ptr %i.bb, align 2, !tbaa !149
  %i.bg = load i16, ptr %i.bc, align 2, !tbaa !149
  %i.bh = load i16, ptr %i.bd, align 2, !tbaa !149
  %i.bi = load i16, ptr %i.be, align 2, !tbaa !149
  %i.bj = insertelement <4 x i16> poison, i16 %i.bf, i64 0
  %i.bk = insertelement <4 x i16> %i.bj, i16 %i.bg, i64 1
  %i.bl = insertelement <4 x i16> %i.bk, i16 %i.bh, i64 2
  %i.bm = insertelement <4 x i16> %i.bl, i16 %i.bi, i64 3
  %i.bn = uitofp <4 x i16> %i.bm to <4 x float>
  %i.bo = fmul <4 x float> %broadcast.splat, %i.bn
  %i.bp = shufflevector <4 x float> %i.y, <4 x float> %i.am, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bq = shufflevector <4 x float> %i.ba, <4 x float> %i.bo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bp, <8 x float> %i.bq, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !138, !alias.scope !471, !noalias !470
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !468

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.g, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.i, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.019 = phi i64 [ %i.cl, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ]
  %.01518 = phi ptr [ %i.ck, %scalar.ph ], [ %.01518.ph, %scalar.ph.preheader ] ; 5 uses
  %.01617 = phi ptr [ %i.cj, %scalar.ph ], [ %.01617.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bs = load float, ptr %i.b, align 8, !tbaa !57
  %i.bt = getelementptr inbounds nuw i8, ptr %.01518, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.01518, i64 8
  %i.bv = load <4 x i16>, ptr %.01617, align 2, !tbaa !149
  %i.bw = uitofp <4 x i16> %i.bv to <4 x float>   ; 4 uses
  %i.bx = extractelement <4 x float> %i.bw, i64 0
  %i.by = fmul float %i.bs, %i.bx
  store float %i.by, ptr %.01518, align 4, !tbaa !138
  %i.bz = load float, ptr %i.b, align 8, !tbaa !57
  %i.ca = extractelement <4 x float> %i.bw, i64 1
  %i.cb = fmul float %i.bz, %i.ca
  store float %i.cb, ptr %i.bt, align 4, !tbaa !138
  %i.cc = load float, ptr %i.b, align 8, !tbaa !57
  %i.cd = extractelement <4 x float> %i.bw, i64 2
  %i.ce = fmul float %i.cc, %i.cd
  store float %i.ce, ptr %i.bu, align 4, !tbaa !138
  %i.cf = load float, ptr %i.b, align 8, !tbaa !57
  %i.cg = extractelement <4 x float> %i.bw, i64 3
  %i.ch = fmul float %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %.01518, i64 12
  store float %i.ch, ptr %i.ci, align 4, !tbaa !138
  %i.cj = getelementptr inbounds nuw i8, ptr %.01617, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.01518, i64 16
  %i.cl = add nuw nsw i64 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !469
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.a) #20, !inline_history !472
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE5ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !103
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_1EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %3, 2
  %i.d = getelementptr i8, ptr %2, i64 %i.c       ; 2 uses
  %i.e = shl i64 %3, 3
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %bound0 = icmp ult ptr %2, %i.f
  %bound0.a = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound033 = icmp ult ptr %2, %4
  %bound134 = icmp ult ptr %i.b, %i.d
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %i.g = shl i64 %n.vec, 2
  %i.h = getelementptr i8, ptr %2, i64 %i.g
  %i.i = shl i64 %n.vec, 3
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = load float, ptr %i.b, align 8, !tbaa !59, !alias.scope !479
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.k, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.l
  %i.m = shl i64 %index, 3                        ; 4 uses
  %next.gep36 = getelementptr i8, ptr %1, i64 %i.m ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep37 = getelementptr i8, ptr %i.n, i64 8
  %i.o = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep38 = getelementptr i8, ptr %i.o, i64 16
  %i.p = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep39 = getelementptr i8, ptr %i.p, i64 24
  %i.q = load i16, ptr %next.gep36, align 2, !tbaa !149, !alias.scope !480
  %i.r = load i16, ptr %next.gep37, align 2, !tbaa !149, !alias.scope !480
  %i.s = load i16, ptr %next.gep38, align 2, !tbaa !149, !alias.scope !480
  %i.t = load i16, ptr %next.gep39, align 2, !tbaa !149, !alias.scope !480
  %i.u = insertelement <4 x i16> poison, i16 %i.q, i64 0
  %i.v = insertelement <4 x i16> %i.u, i16 %i.r, i64 1
  %i.w = insertelement <4 x i16> %i.v, i16 %i.s, i64 2
  %i.x = insertelement <4 x i16> %i.w, i16 %i.t, i64 3
  %i.y = uitofp <4 x i16> %i.x to <4 x float>
  %i.z = fmul <4 x float> %broadcast.splat, %i.y
  %i.aa = fadd <4 x float> %i.z, splat (float 5.000000e-01) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep36, i64 2
  %i.ac = getelementptr i8, ptr %i.n, i64 10
  %i.ad = getelementptr i8, ptr %i.o, i64 18
  %i.ae = getelementptr i8, ptr %i.p, i64 26
  %i.af = load i16, ptr %i.ab, align 2, !tbaa !149, !alias.scope !480
  %i.ag = load i16, ptr %i.ac, align 2, !tbaa !149, !alias.scope !480
  %i.ah = load i16, ptr %i.ad, align 2, !tbaa !149, !alias.scope !480
  %i.ai = load i16, ptr %i.ae, align 2, !tbaa !149, !alias.scope !480
  %i.aj = insertelement <4 x i16> poison, i16 %i.af, i64 0
  %i.ak = insertelement <4 x i16> %i.aj, i16 %i.ag, i64 1
  %i.al = insertelement <4 x i16> %i.ak, i16 %i.ah, i64 2
  %i.am = insertelement <4 x i16> %i.al, i16 %i.ai, i64 3
  %i.an = uitofp <4 x i16> %i.am to <4 x float>
  %i.ao = fmul <4 x float> %broadcast.splat, %i.an
  %i.ap = fadd <4 x float> %i.ao, splat (float 5.000000e-01) ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep36, i64 4
  %i.ar = getelementptr i8, ptr %i.n, i64 12
  %i.as = getelementptr i8, ptr %i.o, i64 20
  %i.at = getelementptr i8, ptr %i.p, i64 28
  %i.au = load i16, ptr %i.aq, align 2, !tbaa !149, !alias.scope !480
  %i.av = load i16, ptr %i.ar, align 2, !tbaa !149, !alias.scope !480
  %i.aw = load i16, ptr %i.as, align 2, !tbaa !149, !alias.scope !480
  %i.ax = load i16, ptr %i.at, align 2, !tbaa !149, !alias.scope !480
  %i.ay = insertelement <4 x i16> poison, i16 %i.au, i64 0
  %i.az = insertelement <4 x i16> %i.ay, i16 %i.av, i64 1
  %i.ba = insertelement <4 x i16> %i.az, i16 %i.aw, i64 2
  %i.bb = insertelement <4 x i16> %i.ba, i16 %i.ax, i64 3
  %i.bc = uitofp <4 x i16> %i.bb to <4 x float>
  %i.bd = fmul <4 x float> %broadcast.splat, %i.bc
  %i.be = fadd <4 x float> %i.bd, splat (float 5.000000e-01) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %next.gep36, i64 6
  %i.bg = getelementptr i8, ptr %i.n, i64 14
  %i.bh = getelementptr i8, ptr %i.o, i64 22
  %i.bi = getelementptr i8, ptr %i.p, i64 30
  %i.bj = load i16, ptr %i.bf, align 2, !tbaa !149, !alias.scope !480
  %i.bk = load i16, ptr %i.bg, align 2, !tbaa !149, !alias.scope !480
  %i.bl = load i16, ptr %i.bh, align 2, !tbaa !149, !alias.scope !480
  %i.bm = load i16, ptr %i.bi, align 2, !tbaa !149, !alias.scope !480
  %i.bn = insertelement <4 x i16> poison, i16 %i.bj, i64 0
  %i.bo = insertelement <4 x i16> %i.bn, i16 %i.bk, i64 1
  %i.bp = insertelement <4 x i16> %i.bo, i16 %i.bl, i64 2
  %i.bq = insertelement <4 x i16> %i.bp, i16 %i.bm, i64 3
  %i.br = uitofp <4 x i16> %i.bq to <4 x float>
  %i.bs = fmul <4 x float> %broadcast.splat, %i.br
  %i.bt = fadd <4 x float> %i.bs, splat (float 5.000000e-01) ; 3 uses
  %i.bu = shufflevector <4 x float> %i.aa, <4 x float> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bv = fcmp ogt <8 x float> %i.bu, splat (float 2.550000e+02)
  %i.bw = shufflevector <4 x float> %i.aa, <4 x float> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bx = fcmp olt <8 x float> %i.bw, zeroinitializer
  %i.by = shufflevector <4 x float> %i.aa, <4 x float> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bz = select <8 x i1> %i.bx, <8 x float> zeroinitializer, <8 x float> %i.by
  %i.ca = fptoui <8 x float> %i.bz to <8 x i8>
  %i.cb = select <8 x i1> %i.bv, <8 x i8> splat (i8 -1), <8 x i8> %i.ca
  %i.cc = shufflevector <4 x float> %i.be, <4 x float> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cd = fcmp ogt <8 x float> %i.cc, splat (float 2.550000e+02)
  %i.ce = shufflevector <4 x float> %i.be, <4 x float> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cf = fcmp olt <8 x float> %i.ce, zeroinitializer
  %i.cg = shufflevector <4 x float> %i.be, <4 x float> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ch = select <8 x i1> %i.cf, <8 x float> zeroinitializer, <8 x float> %i.cg
  %i.ci = fptoui <8 x float> %i.ch to <8 x i8>
  %i.cj = select <8 x i1> %i.cd, <8 x i8> splat (i8 -1), <8 x i8> %i.ci
  %interleaved.vec = shufflevector <8 x i8> %i.cb, <8 x i8> %i.cj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !103, !alias.scope !481, !noalias !482
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !477

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01521.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.h, %middle.block ]
  %.01620.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.j, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19
  %.022 = phi i64 [ %i.eh, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.022.ph, %scalar.ph.preheader ]
  %.01521 = phi ptr [ %i.eg, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01521.ph, %scalar.ph.preheader ] ; 5 uses
  %.01620 = phi ptr [ %i.ef, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01620.ph, %scalar.ph.preheader ] ; 5 uses
  %i.cl = load i16, ptr %.01620, align 2, !tbaa !149
  %i.cm = uitofp i16 %i.cl to float
  %i.cn = load float, ptr %i.b, align 8, !tbaa !59
  %i.co = fmul float %i.cn, %i.cm
  %i.cp = fadd float %i.co, 5.000000e-01          ; 3 uses
  %i.cq = fcmp ogt float %i.cp, 2.550000e+02
  br i1 %i.cq, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.cr = fcmp olt float %i.cp, 0.000000e+00
  %i.cs = select i1 %i.cr, float 0.000000e+00, float %i.cp
  %i.ct = fptoui float %i.cs to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit: ; preds = %scalar.ph, %bb.b
  %i.cu = phi i8 [ %i.ct, %bb.b ], [ -1, %scalar.ph ]
  store i8 %i.cu, ptr %.01521, align 1, !tbaa !103
  %i.cv = getelementptr inbounds nuw i8, ptr %.01620, i64 2
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !149
  %i.cx = uitofp i16 %i.cw to float
  %i.cy = load float, ptr %i.b, align 8, !tbaa !59
  %i.cz = fmul float %i.cy, %i.cx
  %i.da = fadd float %i.cz, 5.000000e-01          ; 3 uses
  %i.db = fcmp ogt float %i.da, 2.550000e+02
  br i1 %i.db, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit
  %i.dc = fcmp olt float %i.da, 0.000000e+00
  %i.dd = select i1 %i.dc, float 0.000000e+00, float %i.da
  %i.de = fptoui float %i.dd to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, %bb.c
  %i.df = phi i8 [ %i.de, %bb.c ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.01521, i64 1
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !103
  %i.dh = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !149
  %i.dj = uitofp i16 %i.di to float
  %i.dk = load float, ptr %i.b, align 8, !tbaa !59
  %i.dl = fmul float %i.dk, %i.dj
  %i.dm = fadd float %i.dl, 5.000000e-01          ; 3 uses
  %i.dn = fcmp ogt float %i.dm, 2.550000e+02
  br i1 %i.dn, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17
  %i.do = fcmp olt float %i.dm, 0.000000e+00
  %i.dp = select i1 %i.do, float 0.000000e+00, float %i.dm
  %i.dq = fptoui float %i.dp to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, %bb.d
  %i.dr = phi i8 [ %i.dq, %bb.d ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.01521, i64 2
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !103
  %i.dt = getelementptr inbounds nuw i8, ptr %.01620, i64 6
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !149
  %i.dv = uitofp i16 %i.du to float
  %i.dw = load float, ptr %i.b, align 8, !tbaa !59
  %i.dx = fmul float %i.dw, %i.dv
  %i.dy = fadd float %i.dx, 5.000000e-01          ; 3 uses
  %i.dz = fcmp ogt float %i.dy, 2.550000e+02
  br i1 %i.dz, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18
  %i.ea = fcmp olt float %i.dy, 0.000000e+00
  %i.eb = select i1 %i.ea, float 0.000000e+00, float %i.dy
  %i.ec = fptoui float %i.eb to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, %bb.e
  %i.ed = phi i8 [ %i.ec, %bb.e ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.01521, i64 3
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !103
  %i.ef = getelementptr inbounds nuw i8, ptr %.01620, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.01521, i64 4
end_hunk_3
begin_hunk_4_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE7ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE7ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE7ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.a) #20, !inline_history !527
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE7ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE7ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE7ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !103
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE7ELS1_8EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE7ELS1_8EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !153 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.019 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %bb.b ]
  %.01518 = phi ptr [ %2, %.lr.ph ], [ %i.ai, %bb.b ] ; 5 uses
  %.01617 = phi ptr [ %1, %.lr.ph ], [ %i.ah, %bb.b ] ; 5 uses
  %i.d = load i16, ptr %.01617, align 2, !tbaa !151
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !103
  %i.h = load float, ptr %i.c, align 8, !tbaa !81
  %i.i = fmul float %i.g, %i.h
  store float %i.i, ptr %.01518, align 4, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %.01617, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !151
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !103
  %i.o = load float, ptr %i.c, align 8, !tbaa !81
  %i.p = fmul float %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.01518, i64 4
  store float %i.p, ptr %i.q, align 4, !tbaa !138
  %i.r = getelementptr inbounds nuw i8, ptr %.01617, i64 4
  %i.s = load i16, ptr %i.r, align 2, !tbaa !151
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !103
  %i.w = load float, ptr %i.c, align 8, !tbaa !81
  %i.x = fmul float %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.01518, i64 8
  store float %i.x, ptr %i.y, align 4, !tbaa !138
  %i.z = getelementptr inbounds nuw i8, ptr %.01617, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !151
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !103
  %i.ae = load float, ptr %i.c, align 8, !tbaa !81
  %i.af = fmul float %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.01518, i64 12
  store float %i.af, ptr %i.ag, align 4, !tbaa !138
  %i.ah = getelementptr inbounds nuw i8, ptr %.01617, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.01518, i64 16
  %i.aj = add nuw nsw i64 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !528
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE8ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE8ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.a) #20, !inline_history !529
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE8ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE8ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE8ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !103
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE8ELS1_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE8ELS1_1EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %3, 2
  %i.d = getelementptr i8, ptr %2, i64 %i.c       ; 2 uses
  %i.e = shl i64 %3, 4
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %bound0 = icmp ult ptr %2, %i.f
  %bound0.a = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound033 = icmp ult ptr %2, %4
  %bound134 = icmp ult ptr %i.b, %i.d
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %i.g = shl i64 %n.vec, 2
  %i.h = getelementptr i8, ptr %2, i64 %i.g
  %i.i = shl i64 %n.vec, 4
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = load float, ptr %i.b, align 8, !tbaa !83, !alias.scope !536
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.k, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.l
  %i.m = shl i64 %index, 4                        ; 4 uses
  %next.gep36 = getelementptr i8, ptr %1, i64 %i.m ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep37 = getelementptr i8, ptr %i.n, i64 16
  %i.o = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep38 = getelementptr i8, ptr %i.o, i64 32
  %i.p = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep39 = getelementptr i8, ptr %i.p, i64 48
  %i.q = load float, ptr %next.gep36, align 4, !tbaa !138, !alias.scope !537
  %i.r = load float, ptr %next.gep37, align 4, !tbaa !138, !alias.scope !537
  %i.s = load float, ptr %next.gep38, align 4, !tbaa !138, !alias.scope !537
  %i.t = load float, ptr %next.gep39, align 4, !tbaa !138, !alias.scope !537
  %i.u = insertelement <4 x float> poison, float %i.q, i64 0
  %i.v = insertelement <4 x float> %i.u, float %i.r, i64 1
  %i.w = insertelement <4 x float> %i.v, float %i.s, i64 2
  %i.x = insertelement <4 x float> %i.w, float %i.t, i64 3
  %i.y = fmul <4 x float> %i.x, %broadcast.splat
  %i.z = fadd <4 x float> %i.y, splat (float 5.000000e-01) ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep36, i64 4
  %i.ab = getelementptr i8, ptr %i.n, i64 20
  %i.ac = getelementptr i8, ptr %i.o, i64 36
  %i.ad = getelementptr i8, ptr %i.p, i64 52
  %i.ae = load float, ptr %i.aa, align 4, !tbaa !138, !alias.scope !537
  %i.af = load float, ptr %i.ab, align 4, !tbaa !138, !alias.scope !537
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !138, !alias.scope !537
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !138, !alias.scope !537
  %i.ai = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 1
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 2
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 3
  %i.am = fmul <4 x float> %i.al, %broadcast.splat
  %i.an = fadd <4 x float> %i.am, splat (float 5.000000e-01) ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %next.gep36, i64 8
  %i.ap = getelementptr i8, ptr %i.n, i64 24
  %i.aq = getelementptr i8, ptr %i.o, i64 40
  %i.ar = getelementptr i8, ptr %i.p, i64 56
  %i.as = load float, ptr %i.ao, align 4, !tbaa !138, !alias.scope !537
  %i.at = load float, ptr %i.ap, align 4, !tbaa !138, !alias.scope !537
  %i.au = load float, ptr %i.aq, align 4, !tbaa !138, !alias.scope !537
  %i.av = load float, ptr %i.ar, align 4, !tbaa !138, !alias.scope !537
  %i.aw = insertelement <4 x float> poison, float %i.as, i64 0
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 1
  %i.ay = insertelement <4 x float> %i.ax, float %i.au, i64 2
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 3
  %i.ba = fmul <4 x float> %i.az, %broadcast.splat
  %i.bb = fadd <4 x float> %i.ba, splat (float 5.000000e-01) ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %next.gep36, i64 12
  %i.bd = getelementptr i8, ptr %i.n, i64 28
  %i.be = getelementptr i8, ptr %i.o, i64 44
  %i.bf = getelementptr i8, ptr %i.p, i64 60
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !138, !alias.scope !537
  %i.bh = load float, ptr %i.bd, align 4, !tbaa !138, !alias.scope !537
  %i.bi = load float, ptr %i.be, align 4, !tbaa !138, !alias.scope !537
  %i.bj = load float, ptr %i.bf, align 4, !tbaa !138, !alias.scope !537
  %i.bk = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3
  %i.bo = fmul <4 x float> %i.bn, %broadcast.splat
  %i.bp = fadd <4 x float> %i.bo, splat (float 5.000000e-01) ; 3 uses
  %i.bq = shufflevector <4 x float> %i.z, <4 x float> %i.an, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.br = fcmp ogt <8 x float> %i.bq, splat (float 2.550000e+02)
  %i.bs = shufflevector <4 x float> %i.z, <4 x float> %i.an, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = fcmp olt <8 x float> %i.bs, zeroinitializer
  %i.bu = shufflevector <4 x float> %i.z, <4 x float> %i.an, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bv = select <8 x i1> %i.bt, <8 x float> zeroinitializer, <8 x float> %i.bu
  %i.bw = fptoui <8 x float> %i.bv to <8 x i8>
  %i.bx = select <8 x i1> %i.br, <8 x i8> splat (i8 -1), <8 x i8> %i.bw
  %i.by = shufflevector <4 x float> %i.bb, <4 x float> %i.bp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bz = fcmp ogt <8 x float> %i.by, splat (float 2.550000e+02)
  %i.ca = shufflevector <4 x float> %i.bb, <4 x float> %i.bp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cb = fcmp olt <8 x float> %i.ca, zeroinitializer
  %i.cc = shufflevector <4 x float> %i.bb, <4 x float> %i.bp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cd = select <8 x i1> %i.cb, <8 x float> zeroinitializer, <8 x float> %i.cc
  %i.ce = fptoui <8 x float> %i.cd to <8 x i8>
  %i.cf = select <8 x i1> %i.bz, <8 x i8> splat (i8 -1), <8 x i8> %i.ce
  %interleaved.vec = shufflevector <8 x i8> %i.bx, <8 x i8> %i.cf, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !103, !alias.scope !538, !noalias !539
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01521.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.h, %middle.block ]
  %.01620.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.j, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19
  %.022 = phi i64 [ %i.dz, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.022.ph, %scalar.ph.preheader ]
  %.01521 = phi ptr [ %i.dy, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01521.ph, %scalar.ph.preheader ] ; 5 uses
  %.01620 = phi ptr [ %i.dx, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01620.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ch = load float, ptr %.01620, align 4, !tbaa !138
  %i.ci = load float, ptr %i.b, align 8, !tbaa !83
  %i.cj = fmul float %i.ch, %i.ci
  %i.ck = fadd float %i.cj, 5.000000e-01          ; 3 uses
  %i.cl = fcmp ogt float %i.ck, 2.550000e+02
  br i1 %i.cl, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.cm = fcmp olt float %i.ck, 0.000000e+00
  %i.cn = select i1 %i.cm, float 0.000000e+00, float %i.ck
  %i.co = fptoui float %i.cn to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit: ; preds = %scalar.ph, %bb.b
  %i.cp = phi i8 [ %i.co, %bb.b ], [ -1, %scalar.ph ]
  store i8 %i.cp, ptr %.01521, align 1, !tbaa !103
  %i.cq = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !138
  %i.cs = load float, ptr %i.b, align 8, !tbaa !83
  %i.ct = fmul float %i.cr, %i.cs
  %i.cu = fadd float %i.ct, 5.000000e-01          ; 3 uses
  %i.cv = fcmp ogt float %i.cu, 2.550000e+02
  br i1 %i.cv, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit
  %i.cw = fcmp olt float %i.cu, 0.000000e+00
  %i.cx = select i1 %i.cw, float 0.000000e+00, float %i.cu
  %i.cy = fptoui float %i.cx to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, %bb.c
  %i.cz = phi i8 [ %i.cy, %bb.c ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit ]
  %i.da = getelementptr inbounds nuw i8, ptr %.01521, i64 1
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !103
  %i.db = getelementptr inbounds nuw i8, ptr %.01620, i64 8
  %i.dc = load float, ptr %i.db, align 4, !tbaa !138
  %i.dd = load float, ptr %i.b, align 8, !tbaa !83
  %i.de = fmul float %i.dc, %i.dd
  %i.df = fadd float %i.de, 5.000000e-01          ; 3 uses
  %i.dg = fcmp ogt float %i.df, 2.550000e+02
  br i1 %i.dg, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17
  %i.dh = fcmp olt float %i.df, 0.000000e+00
  %i.di = select i1 %i.dh, float 0.000000e+00, float %i.df
  %i.dj = fptoui float %i.di to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, %bb.d
  %i.dk = phi i8 [ %i.dj, %bb.d ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.01521, i64 2
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !103
  %i.dm = getelementptr inbounds nuw i8, ptr %.01620, i64 12
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !138
  %i.do = load float, ptr %i.b, align 8, !tbaa !83
  %i.dp = fmul float %i.dn, %i.do
  %i.dq = fadd float %i.dp, 5.000000e-01          ; 3 uses
  %i.dr = fcmp ogt float %i.dq, 2.550000e+02
  br i1 %i.dr, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18
  %i.ds = fcmp olt float %i.dq, 0.000000e+00
  %i.dt = select i1 %i.ds, float 0.000000e+00, float %i.dq
  %i.du = fptoui float %i.dt to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, %bb.e
  %i.dv = phi i8 [ %i.du, %bb.e ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.01521, i64 3
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !103
  %i.dx = getelementptr inbounds nuw i8, ptr %.01620, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %.01521, i64 4
  %i.dz = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dz, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !535
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE8ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
end_hunk_4
