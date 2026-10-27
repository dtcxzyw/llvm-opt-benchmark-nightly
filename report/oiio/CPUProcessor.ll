Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/CPUProcessor?download=true
inline.NumInlined: 2245
inline.NumDeleted: 1176
begin_hunk_0_@_ZNK16OpenColorIO_v2_512CPUProcessor8applyRGBEPf:bb.a
  br i1 %.not.i, label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl8applyRGBEPf.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.010.i = phi i64 [ %i.z, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !129
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.010.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !329
  %i.z = add nuw i64 %.010.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i, label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl8applyRGBEPf.exit, label %.lr.ph.i, !llvm.loop !5

_ZNK16OpenColorIO_v2_512CPUProcessor4Impl8applyRGBEPf.exit: ; preds = %.lr.ph.i, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !96 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !329
  %i.af = load <2 x float>, ptr %i.a, align 16, !tbaa !136
  store <2 x float> %i.af, ptr %1, align 4, !tbaa !136
  %i.ag = load float, ptr %i.d, align 8, !tbaa !136
  store float %i.ag, ptr %i.e, align 4, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_512CPUProcessor9applyRGBAEPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !139    ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1, ptr noundef %1, i64 noundef 1), !inline_history !330
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !129  ; 2 uses
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
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !129
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.010.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !96   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %1, ptr noundef %1, i64 noundef 1), !inline_history !330
  %i.t = add nuw i64 %.010.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i, label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl9applyRGBAEPf.exit, label %.lr.ph.i, !llvm.loop !6

_ZNK16OpenColorIO_v2_512CPUProcessor4Impl9applyRGBAEPf.exit: ; preds = %.lr.ph.i, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %1, ptr noundef %1, i64 noundef 1), !inline_history !330
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !331
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !13   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !331
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !332
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE1ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_1EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
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
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound0 = icmp ult ptr %2, %i.e
  %bound1 = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %2, %i.f
  %bound134 = icmp ult ptr %i.b, %i.d
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.g = shl i64 %n.vec, 2                        ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 %i.g
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %i.j = load float, ptr %i.b, align 8, !tbaa !22, !alias.scope !339
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 2                        ; 5 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.k
  %next.gep36 = getelementptr i8, ptr %1, i64 %i.k ; 4 uses
  %i.l = getelementptr i8, ptr %1, i64 %i.k       ; 4 uses
  %next.gep37 = getelementptr i8, ptr %i.l, i64 4
  %i.m = getelementptr i8, ptr %1, i64 %i.k       ; 4 uses
  %next.gep38 = getelementptr i8, ptr %i.m, i64 8
  %i.n = getelementptr i8, ptr %1, i64 %i.k       ; 4 uses
  %next.gep39 = getelementptr i8, ptr %i.n, i64 12
  %i.o = load i8, ptr %next.gep36, align 1, !tbaa !102, !alias.scope !340
  %i.p = load i8, ptr %next.gep37, align 1, !tbaa !102, !alias.scope !340
  %i.q = load i8, ptr %next.gep38, align 1, !tbaa !102, !alias.scope !340
  %i.r = load i8, ptr %next.gep39, align 1, !tbaa !102, !alias.scope !340
  %i.s = insertelement <4 x i8> poison, i8 %i.o, i64 0
  %i.t = insertelement <4 x i8> %i.s, i8 %i.p, i64 1
  %i.u = insertelement <4 x i8> %i.t, i8 %i.q, i64 2
  %i.v = insertelement <4 x i8> %i.u, i8 %i.r, i64 3
  %i.w = uitofp <4 x i8> %i.v to <4 x float>
  %i.x = fmul <4 x float> %broadcast.splat47, %i.w
  %i.y = fadd <4 x float> %i.x, splat (float 5.000000e-01) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep36, i64 1
  %i.aa = getelementptr i8, ptr %i.l, i64 5
  %i.ab = getelementptr i8, ptr %i.m, i64 9
  %i.ac = getelementptr i8, ptr %i.n, i64 13
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !102, !alias.scope !340
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !102, !alias.scope !340
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !102, !alias.scope !340
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !102, !alias.scope !340
  %i.ah = insertelement <4 x i8> poison, i8 %i.ad, i64 0
  %i.ai = insertelement <4 x i8> %i.ah, i8 %i.ae, i64 1
  %i.aj = insertelement <4 x i8> %i.ai, i8 %i.af, i64 2
  %i.ak = insertelement <4 x i8> %i.aj, i8 %i.ag, i64 3
  %i.al = uitofp <4 x i8> %i.ak to <4 x float>
  %i.am = fmul <4 x float> %broadcast.splat47, %i.al
  %i.an = fadd <4 x float> %i.am, splat (float 5.000000e-01) ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %next.gep36, i64 2
  %i.ap = getelementptr i8, ptr %i.l, i64 6
  %i.aq = getelementptr i8, ptr %i.m, i64 10
  %i.ar = getelementptr i8, ptr %i.n, i64 14
  %i.as = load i8, ptr %i.ao, align 1, !tbaa !102, !alias.scope !340
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !102, !alias.scope !340
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !102, !alias.scope !340
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !102, !alias.scope !340
  %i.aw = insertelement <4 x i8> poison, i8 %i.as, i64 0
  %i.ax = insertelement <4 x i8> %i.aw, i8 %i.at, i64 1
  %i.ay = insertelement <4 x i8> %i.ax, i8 %i.au, i64 2
  %i.az = insertelement <4 x i8> %i.ay, i8 %i.av, i64 3
  %i.ba = uitofp <4 x i8> %i.az to <4 x float>
  %i.bb = fmul <4 x float> %broadcast.splat47, %i.ba
  %i.bc = fadd <4 x float> %i.bb, splat (float 5.000000e-01) ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %next.gep36, i64 3
  %i.be = getelementptr i8, ptr %i.l, i64 7
  %i.bf = getelementptr i8, ptr %i.m, i64 11
  %i.bg = getelementptr i8, ptr %i.n, i64 15
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !102, !alias.scope !340
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !102, !alias.scope !340
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !102, !alias.scope !340
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !102, !alias.scope !340
  %i.bl = insertelement <4 x i8> poison, i8 %i.bh, i64 0
  %i.bm = insertelement <4 x i8> %i.bl, i8 %i.bi, i64 1
  %i.bn = insertelement <4 x i8> %i.bm, i8 %i.bj, i64 2
  %i.bo = insertelement <4 x i8> %i.bn, i8 %i.bk, i64 3
  %i.bp = uitofp <4 x i8> %i.bo to <4 x float>
  %i.bq = fmul <4 x float> %broadcast.splat47, %i.bp
  %i.br = fadd <4 x float> %i.bq, splat (float 5.000000e-01) ; 3 uses
  %i.bs = shufflevector <4 x float> %i.y, <4 x float> %i.an, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = fcmp ogt <8 x float> %i.bs, splat (float 2.550000e+02)
  %i.bu = shufflevector <4 x float> %i.y, <4 x float> %i.an, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bv = fcmp olt <8 x float> %i.bu, zeroinitializer
  %i.bw = shufflevector <4 x float> %i.y, <4 x float> %i.an, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bx = select <8 x i1> %i.bv, <8 x float> zeroinitializer, <8 x float> %i.bw
  %i.by = fptoui <8 x float> %i.bx to <8 x i8>
  %i.bz = select <8 x i1> %i.bt, <8 x i8> splat (i8 -1), <8 x i8> %i.by
  %i.ca = shufflevector <4 x float> %i.bc, <4 x float> %i.br, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cb = fcmp ogt <8 x float> %i.ca, splat (float 2.550000e+02)
  %i.cc = shufflevector <4 x float> %i.bc, <4 x float> %i.br, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cd = fcmp olt <8 x float> %i.cc, zeroinitializer
  %i.ce = shufflevector <4 x float> %i.bc, <4 x float> %i.br, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cf = select <8 x i1> %i.cd, <8 x float> zeroinitializer, <8 x float> %i.ce
  %i.cg = fptoui <8 x float> %i.cf to <8 x i8>
  %i.ch = select <8 x i1> %i.cb, <8 x i8> splat (i8 -1), <8 x i8> %i.cg
  %interleaved.vec = shufflevector <8 x i8> %i.bz, <8 x i8> %i.ch, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !102, !alias.scope !341, !noalias !342
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !337

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01521.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.h, %middle.block ]
  %.01620.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.i, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19
  %.022 = phi i64 [ %i.ef, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.022.ph, %scalar.ph.preheader ]
  %.01521 = phi ptr [ %i.ee, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01521.ph, %scalar.ph.preheader ] ; 5 uses
  %.01620 = phi ptr [ %i.ed, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01620.ph, %scalar.ph.preheader ] ; 5 uses
  %i.cj = load i8, ptr %.01620, align 1, !tbaa !102
  %i.ck = uitofp i8 %i.cj to float
  %i.cl = load float, ptr %i.b, align 8, !tbaa !22
  %i.cm = fmul float %i.cl, %i.ck
  %i.cn = fadd float %i.cm, 5.000000e-01          ; 3 uses
  %i.co = fcmp ogt float %i.cn, 2.550000e+02
  br i1 %i.co, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.cp = fcmp olt float %i.cn, 0.000000e+00
  %i.cq = select i1 %i.cp, float 0.000000e+00, float %i.cn
  %i.cr = fptoui float %i.cq to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit: ; preds = %scalar.ph, %bb.b
  %i.cs = phi i8 [ %i.cr, %bb.b ], [ -1, %scalar.ph ]
  store i8 %i.cs, ptr %.01521, align 1, !tbaa !102
  %i.ct = getelementptr inbounds nuw i8, ptr %.01620, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !102
  %i.cv = uitofp i8 %i.cu to float
  %i.cw = load float, ptr %i.b, align 8, !tbaa !22
  %i.cx = fmul float %i.cw, %i.cv
  %i.cy = fadd float %i.cx, 5.000000e-01          ; 3 uses
  %i.cz = fcmp ogt float %i.cy, 2.550000e+02
  br i1 %i.cz, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit
  %i.da = fcmp olt float %i.cy, 0.000000e+00
  %i.db = select i1 %i.da, float 0.000000e+00, float %i.cy
  %i.dc = fptoui float %i.db to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, %bb.c
  %i.dd = phi i8 [ %i.dc, %bb.c ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit ]
  %i.de = getelementptr inbounds nuw i8, ptr %.01521, i64 1
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !102
  %i.df = getelementptr inbounds nuw i8, ptr %.01620, i64 2
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !102
  %i.dh = uitofp i8 %i.dg to float
  %i.di = load float, ptr %i.b, align 8, !tbaa !22
  %i.dj = fmul float %i.di, %i.dh
  %i.dk = fadd float %i.dj, 5.000000e-01          ; 3 uses
  %i.dl = fcmp ogt float %i.dk, 2.550000e+02
  br i1 %i.dl, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17
  %i.dm = fcmp olt float %i.dk, 0.000000e+00
  %i.dn = select i1 %i.dm, float 0.000000e+00, float %i.dk
  %i.do = fptoui float %i.dn to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, %bb.d
  %i.dp = phi i8 [ %i.do, %bb.d ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.01521, i64 2
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !102
  %i.dr = getelementptr inbounds nuw i8, ptr %.01620, i64 3
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !102
  %i.dt = uitofp i8 %i.ds to float
  %i.du = load float, ptr %i.b, align 8, !tbaa !22
  %i.dv = fmul float %i.du, %i.dt
  %i.dw = fadd float %i.dv, 5.000000e-01          ; 3 uses
  %i.dx = fcmp ogt float %i.dw, 2.550000e+02
  br i1 %i.dx, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18
  %i.dy = fcmp olt float %i.dw, 0.000000e+00
  %i.dz = select i1 %i.dy, float 0.000000e+00, float %i.dw
  %i.ea = fptoui float %i.dz to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, %bb.e
  %i.eb = phi i8 [ %i.ea, %bb.e ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.01521, i64 3
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !102
  %i.ed = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %.01521, i64 4
  %i.ef = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ef, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !338
}

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare void @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.192") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !343
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE1ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_7EE5applyEPKvPvl:bb.a
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
  store i16 %.033.i.i.i26, ptr %i.el, align 2, !tbaa !147
  %i.em = getelementptr inbounds nuw i8, ptr %.034, i64 3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !102
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
  br i1 %i.ex, label %bb.ah, label %bb.aj, !prof !104

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
  br i1 %i.fh, label %bb.ak, label %bb.al, !prof !104

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
  store i16 %.033.i.i.i30, ptr %i.gg, align 2, !tbaa !147
  %i.gh = getelementptr inbounds nuw i8, ptr %.034, i64 4
  %i.gi = getelementptr inbounds nuw i8, ptr %.01833, i64 8
  %i.gj = add nuw nsw i64 %.01932, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.gj, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !368
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !369
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE1ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_8EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_8EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound0 = icmp ult ptr %2, %i.f
  %bound1 = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound1
  %bound025 = icmp ult ptr %2, %i.g
  %bound126 = icmp ult ptr %i.b, %i.d
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx = or i1 %found.conflict, %found.conflict27
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %i.h = shl i64 %n.vec, 4
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %i.j = shl i64 %n.vec, 2
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = load float, ptr %i.b, align 8, !tbaa !32, !alias.scope !376
  %broadcast.splatinsert36 = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert36, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %2, i64 %i.m
  %i.n = shl i64 %index, 2                        ; 4 uses
  %next.gep28 = getelementptr i8, ptr %1, i64 %i.n ; 4 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep29 = getelementptr i8, ptr %i.o, i64 4
  %i.p = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep30 = getelementptr i8, ptr %i.p, i64 8
  %i.q = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep31 = getelementptr i8, ptr %i.q, i64 12
  %i.r = load i8, ptr %next.gep28, align 1, !tbaa !102, !alias.scope !377
  %i.s = load i8, ptr %next.gep29, align 1, !tbaa !102, !alias.scope !377
  %i.t = load i8, ptr %next.gep30, align 1, !tbaa !102, !alias.scope !377
  %i.u = load i8, ptr %next.gep31, align 1, !tbaa !102, !alias.scope !377
  %i.v = insertelement <4 x i8> poison, i8 %i.r, i64 0
  %i.w = insertelement <4 x i8> %i.v, i8 %i.s, i64 1
  %i.x = insertelement <4 x i8> %i.w, i8 %i.t, i64 2
  %i.y = insertelement <4 x i8> %i.x, i8 %i.u, i64 3
  %i.z = uitofp <4 x i8> %i.y to <4 x float>
  %4 = fmul <4 x float> %broadcast.splat, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep28, i64 1
  %i.ab = getelementptr i8, ptr %i.o, i64 5
  %i.ac = getelementptr i8, ptr %i.p, i64 9
  %i.ad = getelementptr i8, ptr %i.q, i64 13
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !102, !alias.scope !377
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !102, !alias.scope !377
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !102, !alias.scope !377
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !102, !alias.scope !377
  %i.ai = insertelement <4 x i8> poison, i8 %i.ae, i64 0
  %i.aj = insertelement <4 x i8> %i.ai, i8 %i.af, i64 1
  %i.ak = insertelement <4 x i8> %i.aj, i8 %i.ag, i64 2
  %i.al = insertelement <4 x i8> %i.ak, i8 %i.ah, i64 3
  %i.am = uitofp <4 x i8> %i.al to <4 x float>
  %5 = fmul <4 x float> %broadcast.splat, %i.am
  %i.an = getelementptr inbounds nuw i8, ptr %next.gep28, i64 2
  %i.ao = getelementptr i8, ptr %i.o, i64 6
  %i.ap = getelementptr i8, ptr %i.p, i64 10
  %i.aq = getelementptr i8, ptr %i.q, i64 14
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !102, !alias.scope !377
  %i.as = load i8, ptr %i.ao, align 1, !tbaa !102, !alias.scope !377
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !102, !alias.scope !377
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !102, !alias.scope !377
  %i.av = insertelement <4 x i8> poison, i8 %i.ar, i64 0
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.as, i64 1
  %i.ax = insertelement <4 x i8> %i.aw, i8 %i.at, i64 2
  %i.ay = insertelement <4 x i8> %i.ax, i8 %i.au, i64 3
  %i.az = uitofp <4 x i8> %i.ay to <4 x float>
  %6 = fmul <4 x float> %broadcast.splat, %i.az
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep28, i64 3
  %i.bb = getelementptr i8, ptr %i.o, i64 7
  %i.bc = getelementptr i8, ptr %i.p, i64 11
  %i.bd = getelementptr i8, ptr %i.q, i64 15
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !102, !alias.scope !377
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !102, !alias.scope !377
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !102, !alias.scope !377
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !102, !alias.scope !377
  %i.bi = insertelement <4 x i8> poison, i8 %i.be, i64 0
  %i.bj = insertelement <4 x i8> %i.bi, i8 %i.bf, i64 1
  %i.bk = insertelement <4 x i8> %i.bj, i8 %i.bg, i64 2
  %i.bl = insertelement <4 x i8> %i.bk, i8 %i.bh, i64 3
  %i.bm = uitofp <4 x i8> %i.bl to <4 x float>
  %7 = fmul <4 x float> %broadcast.splat, %i.bm
  %i.bn = shufflevector <4 x float> %4, <4 x float> %5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = shufflevector <4 x float> %6, <4 x float> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bn, <8 x float> %8, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !136, !alias.scope !378, !noalias !379
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.019.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01518.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.i, %middle.block ]
  %.01617.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.k, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.019 = phi i64 [ %i.cn, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ]
  %.01518 = phi ptr [ %i.cm, %scalar.ph ], [ %.01518.ph, %scalar.ph.preheader ] ; 5 uses
  %.01617 = phi ptr [ %i.cl, %scalar.ph ], [ %.01617.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bp = load i8, ptr %.01617, align 1, !tbaa !102
  %i.bq = uitofp i8 %i.bp to float
  %i.br = load float, ptr %i.b, align 8, !tbaa !32
  %i.bs = fmul float %i.br, %i.bq
  store float %i.bs, ptr %.01518, align 4, !tbaa !136
  %i.bt = getelementptr inbounds nuw i8, ptr %.01617, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !102
  %i.bv = uitofp i8 %i.bu to float
  %i.bw = load float, ptr %i.b, align 8, !tbaa !32
  %i.bx = fmul float %i.bw, %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %.01518, i64 4
  store float %i.bx, ptr %i.by, align 4, !tbaa !136
  %i.bz = getelementptr inbounds nuw i8, ptr %.01617, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !102
  %i.cb = uitofp i8 %i.ca to float
  %i.cc = load float, ptr %i.b, align 8, !tbaa !32
  %i.cd = fmul float %i.cc, %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %.01518, i64 8
  store float %i.cd, ptr %i.ce, align 4, !tbaa !136
  %i.cf = getelementptr inbounds nuw i8, ptr %.01617, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !102
  %i.ch = uitofp i8 %i.cg to float
  %i.ci = load float, ptr %i.b, align 8, !tbaa !32
  %i.cj = fmul float %i.ci, %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %.01518, i64 12
  store float %i.cj, ptr %i.ck, align 4, !tbaa !136
  %i.cl = getelementptr inbounds nuw i8, ptr %.01617, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.01518, i64 16
  %i.cn = add nuw nsw i64 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !375
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !380
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE2ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_1EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 align 2 {
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound0 = icmp ult ptr %2, %i.f
  %bound1 = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %2, %i.g
  %bound134 = icmp ult ptr %i.b, %i.d
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %i.h = shl i64 %n.vec, 2
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %i.j = shl i64 %n.vec, 3
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = load float, ptr %i.b, align 8, !tbaa !34, !alias.scope !387
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.m
  %i.n = shl i64 %index, 3                        ; 4 uses
  %next.gep36 = getelementptr i8, ptr %1, i64 %i.n ; 4 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep37 = getelementptr i8, ptr %i.o, i64 8
  %i.p = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep38 = getelementptr i8, ptr %i.p, i64 16
  %i.q = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep39 = getelementptr i8, ptr %i.q, i64 24
  %i.r = load i16, ptr %next.gep36, align 2, !tbaa !147, !alias.scope !388
  %i.s = load i16, ptr %next.gep37, align 2, !tbaa !147, !alias.scope !388
  %i.t = load i16, ptr %next.gep38, align 2, !tbaa !147, !alias.scope !388
  %i.u = load i16, ptr %next.gep39, align 2, !tbaa !147, !alias.scope !388
  %i.v = insertelement <4 x i16> poison, i16 %i.r, i64 0
  %i.w = insertelement <4 x i16> %i.v, i16 %i.s, i64 1
  %i.x = insertelement <4 x i16> %i.w, i16 %i.t, i64 2
  %i.y = insertelement <4 x i16> %i.x, i16 %i.u, i64 3
  %i.z = uitofp <4 x i16> %i.y to <4 x float>
  %i.aa = fmul <4 x float> %broadcast.splat47, %i.z
  %i.ab = fadd <4 x float> %i.aa, splat (float 5.000000e-01) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %next.gep36, i64 2
  %i.ad = getelementptr i8, ptr %i.o, i64 10
  %i.ae = getelementptr i8, ptr %i.p, i64 18
  %i.af = getelementptr i8, ptr %i.q, i64 26
  %i.ag = load i16, ptr %i.ac, align 2, !tbaa !147, !alias.scope !388
  %i.ah = load i16, ptr %i.ad, align 2, !tbaa !147, !alias.scope !388
  %i.ai = load i16, ptr %i.ae, align 2, !tbaa !147, !alias.scope !388
  %i.aj = load i16, ptr %i.af, align 2, !tbaa !147, !alias.scope !388
  %i.ak = insertelement <4 x i16> poison, i16 %i.ag, i64 0
  %i.al = insertelement <4 x i16> %i.ak, i16 %i.ah, i64 1
  %i.am = insertelement <4 x i16> %i.al, i16 %i.ai, i64 2
  %i.an = insertelement <4 x i16> %i.am, i16 %i.aj, i64 3
  %i.ao = uitofp <4 x i16> %i.an to <4 x float>
  %i.ap = fmul <4 x float> %broadcast.splat47, %i.ao
  %i.aq = fadd <4 x float> %i.ap, splat (float 5.000000e-01) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep36, i64 4
  %i.as = getelementptr i8, ptr %i.o, i64 12
  %i.at = getelementptr i8, ptr %i.p, i64 20
  %i.au = getelementptr i8, ptr %i.q, i64 28
  %i.av = load i16, ptr %i.ar, align 2, !tbaa !147, !alias.scope !388
  %i.aw = load i16, ptr %i.as, align 2, !tbaa !147, !alias.scope !388
  %i.ax = load i16, ptr %i.at, align 2, !tbaa !147, !alias.scope !388
  %i.ay = load i16, ptr %i.au, align 2, !tbaa !147, !alias.scope !388
  %i.az = insertelement <4 x i16> poison, i16 %i.av, i64 0
  %i.ba = insertelement <4 x i16> %i.az, i16 %i.aw, i64 1
  %i.bb = insertelement <4 x i16> %i.ba, i16 %i.ax, i64 2
  %i.bc = insertelement <4 x i16> %i.bb, i16 %i.ay, i64 3
  %i.bd = uitofp <4 x i16> %i.bc to <4 x float>
  %i.be = fmul <4 x float> %broadcast.splat47, %i.bd
  %i.bf = fadd <4 x float> %i.be, splat (float 5.000000e-01) ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %next.gep36, i64 6
  %i.bh = getelementptr i8, ptr %i.o, i64 14
  %i.bi = getelementptr i8, ptr %i.p, i64 22
  %i.bj = getelementptr i8, ptr %i.q, i64 30
  %i.bk = load i16, ptr %i.bg, align 2, !tbaa !147, !alias.scope !388
  %i.bl = load i16, ptr %i.bh, align 2, !tbaa !147, !alias.scope !388
  %i.bm = load i16, ptr %i.bi, align 2, !tbaa !147, !alias.scope !388
  %i.bn = load i16, ptr %i.bj, align 2, !tbaa !147, !alias.scope !388
  %i.bo = insertelement <4 x i16> poison, i16 %i.bk, i64 0
  %i.bp = insertelement <4 x i16> %i.bo, i16 %i.bl, i64 1
  %i.bq = insertelement <4 x i16> %i.bp, i16 %i.bm, i64 2
  %i.br = insertelement <4 x i16> %i.bq, i16 %i.bn, i64 3
  %i.bs = uitofp <4 x i16> %i.br to <4 x float>
  %i.bt = fmul <4 x float> %broadcast.splat47, %i.bs
  %i.bu = fadd <4 x float> %i.bt, splat (float 5.000000e-01) ; 3 uses
  %i.bv = shufflevector <4 x float> %i.ab, <4 x float> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bw = fcmp ogt <8 x float> %i.bv, splat (float 2.550000e+02)
  %i.bx = shufflevector <4 x float> %i.ab, <4 x float> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.by = fcmp olt <8 x float> %i.bx, zeroinitializer
  %i.bz = shufflevector <4 x float> %i.ab, <4 x float> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ca = select <8 x i1> %i.by, <8 x float> zeroinitializer, <8 x float> %i.bz
  %i.cb = fptoui <8 x float> %i.ca to <8 x i8>
  %i.cc = select <8 x i1> %i.bw, <8 x i8> splat (i8 -1), <8 x i8> %i.cb
  %i.cd = shufflevector <4 x float> %i.bf, <4 x float> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ce = fcmp ogt <8 x float> %i.cd, splat (float 2.550000e+02)
  %i.cf = shufflevector <4 x float> %i.bf, <4 x float> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fcmp olt <8 x float> %i.cf, zeroinitializer
  %i.ch = shufflevector <4 x float> %i.bf, <4 x float> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = select <8 x i1> %i.cg, <8 x float> zeroinitializer, <8 x float> %i.ch
  %i.cj = fptoui <8 x float> %i.ci to <8 x i8>
  %i.ck = select <8 x i1> %i.ce, <8 x i8> splat (i8 -1), <8 x i8> %i.cj
  %interleaved.vec = shufflevector <8 x i8> %i.cc, <8 x i8> %i.ck, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !102, !alias.scope !389, !noalias !390
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !385

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01521.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.i, %middle.block ]
  %.01620.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.k, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19
  %.022 = phi i64 [ %i.ei, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.022.ph, %scalar.ph.preheader ]
  %.01521 = phi ptr [ %i.eh, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01521.ph, %scalar.ph.preheader ] ; 5 uses
  %.01620 = phi ptr [ %i.eg, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01620.ph, %scalar.ph.preheader ] ; 5 uses
  %i.cm = load i16, ptr %.01620, align 2, !tbaa !147
  %i.cn = uitofp i16 %i.cm to float
  %i.co = load float, ptr %i.b, align 8, !tbaa !34
  %i.cp = fmul float %i.co, %i.cn
  %i.cq = fadd float %i.cp, 5.000000e-01          ; 3 uses
  %i.cr = fcmp ogt float %i.cq, 2.550000e+02
  br i1 %i.cr, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.cs = fcmp olt float %i.cq, 0.000000e+00
  %i.ct = select i1 %i.cs, float 0.000000e+00, float %i.cq
  %i.cu = fptoui float %i.ct to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit: ; preds = %scalar.ph, %bb.b
  %i.cv = phi i8 [ %i.cu, %bb.b ], [ -1, %scalar.ph ]
  store i8 %i.cv, ptr %.01521, align 1, !tbaa !102
  %i.cw = getelementptr inbounds nuw i8, ptr %.01620, i64 2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !147
  %i.cy = uitofp i16 %i.cx to float
  %i.cz = load float, ptr %i.b, align 8, !tbaa !34
  %i.da = fmul float %i.cz, %i.cy
  %i.db = fadd float %i.da, 5.000000e-01          ; 3 uses
  %i.dc = fcmp ogt float %i.db, 2.550000e+02
  br i1 %i.dc, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit
  %i.dd = fcmp olt float %i.db, 0.000000e+00
  %i.de = select i1 %i.dd, float 0.000000e+00, float %i.db
  %i.df = fptoui float %i.de to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, %bb.c
  %i.dg = phi i8 [ %i.df, %bb.c ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.01521, i64 1
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !102
  %i.di = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !147
  %i.dk = uitofp i16 %i.dj to float
  %i.dl = load float, ptr %i.b, align 8, !tbaa !34
  %i.dm = fmul float %i.dl, %i.dk
  %i.dn = fadd float %i.dm, 5.000000e-01          ; 3 uses
  %i.do = fcmp ogt float %i.dn, 2.550000e+02
  br i1 %i.do, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17
  %i.dp = fcmp olt float %i.dn, 0.000000e+00
  %i.dq = select i1 %i.dp, float 0.000000e+00, float %i.dn
  %i.dr = fptoui float %i.dq to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, %bb.d
  %i.ds = phi i8 [ %i.dr, %bb.d ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.01521, i64 2
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !102
  %i.du = getelementptr inbounds nuw i8, ptr %.01620, i64 6
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !147
  %i.dw = uitofp i16 %i.dv to float
  %i.dx = load float, ptr %i.b, align 8, !tbaa !34
  %i.dy = fmul float %i.dx, %i.dw
  %i.dz = fadd float %i.dy, 5.000000e-01          ; 3 uses
  %i.ea = fcmp ogt float %i.dz, 2.550000e+02
  br i1 %i.ea, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18
  %i.eb = fcmp olt float %i.dz, 0.000000e+00
  %i.ec = select i1 %i.eb, float 0.000000e+00, float %i.dz
  %i.ed = fptoui float %i.ec to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, %bb.e
  %i.ee = phi i8 [ %i.ed, %bb.e ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.01521, i64 3
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !102
  %i.eg = getelementptr inbounds nuw i8, ptr %.01620, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.01521, i64 4
  %i.ei = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ei, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !386
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !391
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE2ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_2EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_7EE5applyEPKvPvl:bb.a
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
  store i16 %.033.i.i.i26, ptr %i.el, align 2, !tbaa !147
  %i.em = getelementptr inbounds nuw i8, ptr %.034, i64 6
  %i.en = load i16, ptr %i.em, align 2, !tbaa !147
  %i.eo = uitofp i16 %i.en to float
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
  br i1 %i.ex, label %bb.ah, label %bb.aj, !prof !104

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
  br i1 %i.fh, label %bb.ak, label %bb.al, !prof !104

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
  store i16 %.033.i.i.i30, ptr %i.gg, align 2, !tbaa !147
  %i.gh = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.01833, i64 8
  %i.gj = add nuw nsw i64 %.01932, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.gj, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !416
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !417
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE2ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE2ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_8EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE2ELS1_8EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %3, 4
  %i.d = getelementptr i8, ptr %2, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound0 = icmp ult ptr %2, %i.e
  %bound1 = icmp ult ptr %i.b, %i.d
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %i.f = shl i64 %n.vec, 4
  %i.g = getelementptr i8, ptr %2, i64 %i.f
  %i.h = shl i64 %n.vec, 3
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = load float, ptr %i.b, align 8, !tbaa !44, !alias.scope !423
  %broadcast.splatinsert29 = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert29, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
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
  %i.p = load i16, ptr %next.gep21, align 2, !tbaa !147
  %i.q = load i16, ptr %next.gep22, align 2, !tbaa !147
  %i.r = load i16, ptr %next.gep23, align 2, !tbaa !147
  %i.s = load i16, ptr %next.gep24, align 2, !tbaa !147
  %i.t = insertelement <4 x i16> poison, i16 %i.p, i64 0
  %i.u = insertelement <4 x i16> %i.t, i16 %i.q, i64 1
  %i.v = insertelement <4 x i16> %i.u, i16 %i.r, i64 2
  %i.w = insertelement <4 x i16> %i.v, i16 %i.s, i64 3
  %i.x = uitofp <4 x i16> %i.w to <4 x float>
  %4 = fmul <4 x float> %broadcast.splat, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %next.gep21, i64 2
  %i.z = getelementptr i8, ptr %i.m, i64 10
  %i.aa = getelementptr i8, ptr %i.n, i64 18
  %i.ab = getelementptr i8, ptr %i.o, i64 26
  %i.ac = load i16, ptr %i.y, align 2, !tbaa !147
  %i.ad = load i16, ptr %i.z, align 2, !tbaa !147
  %i.ae = load i16, ptr %i.aa, align 2, !tbaa !147
  %i.af = load i16, ptr %i.ab, align 2, !tbaa !147
  %i.ag = insertelement <4 x i16> poison, i16 %i.ac, i64 0
  %i.ah = insertelement <4 x i16> %i.ag, i16 %i.ad, i64 1
  %i.ai = insertelement <4 x i16> %i.ah, i16 %i.ae, i64 2
  %i.aj = insertelement <4 x i16> %i.ai, i16 %i.af, i64 3
  %i.ak = uitofp <4 x i16> %i.aj to <4 x float>
  %5 = fmul <4 x float> %broadcast.splat, %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep21, i64 4
  %i.am = getelementptr i8, ptr %i.m, i64 12
  %i.an = getelementptr i8, ptr %i.n, i64 20
  %i.ao = getelementptr i8, ptr %i.o, i64 28
  %i.ap = load i16, ptr %i.al, align 2, !tbaa !147
  %i.aq = load i16, ptr %i.am, align 2, !tbaa !147
  %i.ar = load i16, ptr %i.an, align 2, !tbaa !147
  %i.as = load i16, ptr %i.ao, align 2, !tbaa !147
  %i.at = insertelement <4 x i16> poison, i16 %i.ap, i64 0
  %i.au = insertelement <4 x i16> %i.at, i16 %i.aq, i64 1
  %i.av = insertelement <4 x i16> %i.au, i16 %i.ar, i64 2
  %i.aw = insertelement <4 x i16> %i.av, i16 %i.as, i64 3
  %i.ax = uitofp <4 x i16> %i.aw to <4 x float>
  %6 = fmul <4 x float> %broadcast.splat, %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep21, i64 6
  %i.az = getelementptr i8, ptr %i.m, i64 14
  %i.ba = getelementptr i8, ptr %i.n, i64 22
  %i.bb = getelementptr i8, ptr %i.o, i64 30
  %i.bc = load i16, ptr %i.ay, align 2, !tbaa !147
  %i.bd = load i16, ptr %i.az, align 2, !tbaa !147
  %i.be = load i16, ptr %i.ba, align 2, !tbaa !147
  %i.bf = load i16, ptr %i.bb, align 2, !tbaa !147
  %i.bg = insertelement <4 x i16> poison, i16 %i.bc, i64 0
  %i.bh = insertelement <4 x i16> %i.bg, i16 %i.bd, i64 1
  %i.bi = insertelement <4 x i16> %i.bh, i16 %i.be, i64 2
  %i.bj = insertelement <4 x i16> %i.bi, i16 %i.bf, i64 3
  %i.bk = uitofp <4 x i16> %i.bj to <4 x float>
  %7 = fmul <4 x float> %broadcast.splat, %i.bk
  %i.bl = shufflevector <4 x float> %4, <4 x float> %5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = shufflevector <4 x float> %6, <4 x float> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bl, <8 x float> %8, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !136, !alias.scope !424, !noalias !423
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !421

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
  %.019 = phi i64 [ %i.cg, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ]
  %.01518 = phi ptr [ %i.cf, %scalar.ph ], [ %.01518.ph, %scalar.ph.preheader ] ; 5 uses
  %.01617 = phi ptr [ %i.ce, %scalar.ph ], [ %.01617.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bn = load float, ptr %i.b, align 8, !tbaa !44
  %i.bo = getelementptr inbounds nuw i8, ptr %.01518, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.01518, i64 8
  %i.bq = load <4 x i16>, ptr %.01617, align 2, !tbaa !147
  %i.br = uitofp <4 x i16> %i.bq to <4 x float>   ; 4 uses
  %i.bs = extractelement <4 x float> %i.br, i64 0
  %i.bt = fmul float %i.bn, %i.bs
  store float %i.bt, ptr %.01518, align 4, !tbaa !136
  %i.bu = load float, ptr %i.b, align 8, !tbaa !44
  %i.bv = extractelement <4 x float> %i.br, i64 1
  %i.bw = fmul float %i.bu, %i.bv
  store float %i.bw, ptr %i.bo, align 4, !tbaa !136
  %i.bx = load float, ptr %i.b, align 8, !tbaa !44
  %i.by = extractelement <4 x float> %i.br, i64 2
  %i.bz = fmul float %i.bx, %i.by
  store float %i.bz, ptr %i.bp, align 4, !tbaa !136
  %i.ca = load float, ptr %i.b, align 8, !tbaa !44
  %i.cb = extractelement <4 x float> %i.br, i64 3
  %i.cc = fmul float %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.01518, i64 12
  store float %i.cc, ptr %i.cd, align 4, !tbaa !136
  %i.ce = getelementptr inbounds nuw i8, ptr %.01617, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.01518, i64 16
  %i.cg = add nuw nsw i64 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !422
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !425
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE3ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_1EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 align 2 {
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound0 = icmp ult ptr %2, %i.f
  %bound1 = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %2, %i.g
  %bound134 = icmp ult ptr %i.b, %i.d
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %i.h = shl i64 %n.vec, 2
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %i.j = shl i64 %n.vec, 3
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = load float, ptr %i.b, align 8, !tbaa !46, !alias.scope !432
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.m
  %i.n = shl i64 %index, 3                        ; 4 uses
  %next.gep36 = getelementptr i8, ptr %1, i64 %i.n ; 4 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep37 = getelementptr i8, ptr %i.o, i64 8
  %i.p = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep38 = getelementptr i8, ptr %i.p, i64 16
  %i.q = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep39 = getelementptr i8, ptr %i.q, i64 24
  %i.r = load i16, ptr %next.gep36, align 2, !tbaa !147, !alias.scope !433
  %i.s = load i16, ptr %next.gep37, align 2, !tbaa !147, !alias.scope !433
  %i.t = load i16, ptr %next.gep38, align 2, !tbaa !147, !alias.scope !433
  %i.u = load i16, ptr %next.gep39, align 2, !tbaa !147, !alias.scope !433
  %i.v = insertelement <4 x i16> poison, i16 %i.r, i64 0
  %i.w = insertelement <4 x i16> %i.v, i16 %i.s, i64 1
  %i.x = insertelement <4 x i16> %i.w, i16 %i.t, i64 2
  %i.y = insertelement <4 x i16> %i.x, i16 %i.u, i64 3
  %i.z = uitofp <4 x i16> %i.y to <4 x float>
  %i.aa = fmul <4 x float> %broadcast.splat47, %i.z
  %i.ab = fadd <4 x float> %i.aa, splat (float 5.000000e-01) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %next.gep36, i64 2
  %i.ad = getelementptr i8, ptr %i.o, i64 10
  %i.ae = getelementptr i8, ptr %i.p, i64 18
  %i.af = getelementptr i8, ptr %i.q, i64 26
  %i.ag = load i16, ptr %i.ac, align 2, !tbaa !147, !alias.scope !433
  %i.ah = load i16, ptr %i.ad, align 2, !tbaa !147, !alias.scope !433
  %i.ai = load i16, ptr %i.ae, align 2, !tbaa !147, !alias.scope !433
  %i.aj = load i16, ptr %i.af, align 2, !tbaa !147, !alias.scope !433
  %i.ak = insertelement <4 x i16> poison, i16 %i.ag, i64 0
  %i.al = insertelement <4 x i16> %i.ak, i16 %i.ah, i64 1
  %i.am = insertelement <4 x i16> %i.al, i16 %i.ai, i64 2
  %i.an = insertelement <4 x i16> %i.am, i16 %i.aj, i64 3
  %i.ao = uitofp <4 x i16> %i.an to <4 x float>
  %i.ap = fmul <4 x float> %broadcast.splat47, %i.ao
  %i.aq = fadd <4 x float> %i.ap, splat (float 5.000000e-01) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep36, i64 4
  %i.as = getelementptr i8, ptr %i.o, i64 12
  %i.at = getelementptr i8, ptr %i.p, i64 20
  %i.au = getelementptr i8, ptr %i.q, i64 28
  %i.av = load i16, ptr %i.ar, align 2, !tbaa !147, !alias.scope !433
  %i.aw = load i16, ptr %i.as, align 2, !tbaa !147, !alias.scope !433
  %i.ax = load i16, ptr %i.at, align 2, !tbaa !147, !alias.scope !433
  %i.ay = load i16, ptr %i.au, align 2, !tbaa !147, !alias.scope !433
  %i.az = insertelement <4 x i16> poison, i16 %i.av, i64 0
  %i.ba = insertelement <4 x i16> %i.az, i16 %i.aw, i64 1
  %i.bb = insertelement <4 x i16> %i.ba, i16 %i.ax, i64 2
  %i.bc = insertelement <4 x i16> %i.bb, i16 %i.ay, i64 3
  %i.bd = uitofp <4 x i16> %i.bc to <4 x float>
  %i.be = fmul <4 x float> %broadcast.splat47, %i.bd
  %i.bf = fadd <4 x float> %i.be, splat (float 5.000000e-01) ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %next.gep36, i64 6
  %i.bh = getelementptr i8, ptr %i.o, i64 14
  %i.bi = getelementptr i8, ptr %i.p, i64 22
  %i.bj = getelementptr i8, ptr %i.q, i64 30
  %i.bk = load i16, ptr %i.bg, align 2, !tbaa !147, !alias.scope !433
  %i.bl = load i16, ptr %i.bh, align 2, !tbaa !147, !alias.scope !433
  %i.bm = load i16, ptr %i.bi, align 2, !tbaa !147, !alias.scope !433
  %i.bn = load i16, ptr %i.bj, align 2, !tbaa !147, !alias.scope !433
  %i.bo = insertelement <4 x i16> poison, i16 %i.bk, i64 0
  %i.bp = insertelement <4 x i16> %i.bo, i16 %i.bl, i64 1
  %i.bq = insertelement <4 x i16> %i.bp, i16 %i.bm, i64 2
  %i.br = insertelement <4 x i16> %i.bq, i16 %i.bn, i64 3
  %i.bs = uitofp <4 x i16> %i.br to <4 x float>
  %i.bt = fmul <4 x float> %broadcast.splat47, %i.bs
  %i.bu = fadd <4 x float> %i.bt, splat (float 5.000000e-01) ; 3 uses
  %i.bv = shufflevector <4 x float> %i.ab, <4 x float> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bw = fcmp ogt <8 x float> %i.bv, splat (float 2.550000e+02)
  %i.bx = shufflevector <4 x float> %i.ab, <4 x float> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.by = fcmp olt <8 x float> %i.bx, zeroinitializer
  %i.bz = shufflevector <4 x float> %i.ab, <4 x float> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ca = select <8 x i1> %i.by, <8 x float> zeroinitializer, <8 x float> %i.bz
  %i.cb = fptoui <8 x float> %i.ca to <8 x i8>
  %i.cc = select <8 x i1> %i.bw, <8 x i8> splat (i8 -1), <8 x i8> %i.cb
  %i.cd = shufflevector <4 x float> %i.bf, <4 x float> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ce = fcmp ogt <8 x float> %i.cd, splat (float 2.550000e+02)
  %i.cf = shufflevector <4 x float> %i.bf, <4 x float> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fcmp olt <8 x float> %i.cf, zeroinitializer
  %i.ch = shufflevector <4 x float> %i.bf, <4 x float> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = select <8 x i1> %i.cg, <8 x float> zeroinitializer, <8 x float> %i.ch
  %i.cj = fptoui <8 x float> %i.ci to <8 x i8>
  %i.ck = select <8 x i1> %i.ce, <8 x i8> splat (i8 -1), <8 x i8> %i.cj
  %interleaved.vec = shufflevector <8 x i8> %i.cc, <8 x i8> %i.ck, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !102, !alias.scope !434, !noalias !435
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !430

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01521.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.i, %middle.block ]
  %.01620.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.k, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19
  %.022 = phi i64 [ %i.ei, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.022.ph, %scalar.ph.preheader ]
  %.01521 = phi ptr [ %i.eh, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01521.ph, %scalar.ph.preheader ] ; 5 uses
  %.01620 = phi ptr [ %i.eg, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01620.ph, %scalar.ph.preheader ] ; 5 uses
  %i.cm = load i16, ptr %.01620, align 2, !tbaa !147
  %i.cn = uitofp i16 %i.cm to float
  %i.co = load float, ptr %i.b, align 8, !tbaa !46
  %i.cp = fmul float %i.co, %i.cn
  %i.cq = fadd float %i.cp, 5.000000e-01          ; 3 uses
  %i.cr = fcmp ogt float %i.cq, 2.550000e+02
  br i1 %i.cr, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.cs = fcmp olt float %i.cq, 0.000000e+00
  %i.ct = select i1 %i.cs, float 0.000000e+00, float %i.cq
  %i.cu = fptoui float %i.ct to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit: ; preds = %scalar.ph, %bb.b
  %i.cv = phi i8 [ %i.cu, %bb.b ], [ -1, %scalar.ph ]
  store i8 %i.cv, ptr %.01521, align 1, !tbaa !102
  %i.cw = getelementptr inbounds nuw i8, ptr %.01620, i64 2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !147
  %i.cy = uitofp i16 %i.cx to float
  %i.cz = load float, ptr %i.b, align 8, !tbaa !46
  %i.da = fmul float %i.cz, %i.cy
  %i.db = fadd float %i.da, 5.000000e-01          ; 3 uses
  %i.dc = fcmp ogt float %i.db, 2.550000e+02
  br i1 %i.dc, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit
  %i.dd = fcmp olt float %i.db, 0.000000e+00
  %i.de = select i1 %i.dd, float 0.000000e+00, float %i.db
  %i.df = fptoui float %i.de to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, %bb.c
  %i.dg = phi i8 [ %i.df, %bb.c ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.01521, i64 1
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !102
  %i.di = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !147
  %i.dk = uitofp i16 %i.dj to float
  %i.dl = load float, ptr %i.b, align 8, !tbaa !46
  %i.dm = fmul float %i.dl, %i.dk
  %i.dn = fadd float %i.dm, 5.000000e-01          ; 3 uses
  %i.do = fcmp ogt float %i.dn, 2.550000e+02
  br i1 %i.do, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17
  %i.dp = fcmp olt float %i.dn, 0.000000e+00
  %i.dq = select i1 %i.dp, float 0.000000e+00, float %i.dn
  %i.dr = fptoui float %i.dq to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, %bb.d
  %i.ds = phi i8 [ %i.dr, %bb.d ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.01521, i64 2
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !102
  %i.du = getelementptr inbounds nuw i8, ptr %.01620, i64 6
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !147
  %i.dw = uitofp i16 %i.dv to float
  %i.dx = load float, ptr %i.b, align 8, !tbaa !46
  %i.dy = fmul float %i.dx, %i.dw
  %i.dz = fadd float %i.dy, 5.000000e-01          ; 3 uses
  %i.ea = fcmp ogt float %i.dz, 2.550000e+02
  br i1 %i.ea, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18
  %i.eb = fcmp olt float %i.dz, 0.000000e+00
  %i.ec = select i1 %i.eb, float 0.000000e+00, float %i.dz
  %i.ed = fptoui float %i.ec to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, %bb.e
  %i.ee = phi i8 [ %i.ed, %bb.e ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.01521, i64 3
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !102
  %i.eg = getelementptr inbounds nuw i8, ptr %.01620, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.01521, i64 4
  %i.ei = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ei, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !431
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !436
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE3ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_2EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_7EE5applyEPKvPvl:bb.a
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
  store i16 %.033.i.i.i26, ptr %i.el, align 2, !tbaa !147
  %i.em = getelementptr inbounds nuw i8, ptr %.034, i64 6
  %i.en = load i16, ptr %i.em, align 2, !tbaa !147
  %i.eo = uitofp i16 %i.en to float
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
  br i1 %i.ex, label %bb.ah, label %bb.aj, !prof !104

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
  br i1 %i.fh, label %bb.ak, label %bb.al, !prof !104

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
  store i16 %.033.i.i.i30, ptr %i.gg, align 2, !tbaa !147
  %i.gh = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.01833, i64 8
  %i.gj = add nuw nsw i64 %.01932, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.gj, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !461
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !462
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE3ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE3ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_8EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE3ELS1_8EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %3, 4
  %i.d = getelementptr i8, ptr %2, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound0 = icmp ult ptr %2, %i.e
  %bound1 = icmp ult ptr %i.b, %i.d
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %i.f = shl i64 %n.vec, 4
  %i.g = getelementptr i8, ptr %2, i64 %i.f
  %i.h = shl i64 %n.vec, 3
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = load float, ptr %i.b, align 8, !tbaa !56, !alias.scope !468
  %broadcast.splatinsert29 = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert29, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
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
  %i.p = load i16, ptr %next.gep21, align 2, !tbaa !147
  %i.q = load i16, ptr %next.gep22, align 2, !tbaa !147
  %i.r = load i16, ptr %next.gep23, align 2, !tbaa !147
  %i.s = load i16, ptr %next.gep24, align 2, !tbaa !147
  %i.t = insertelement <4 x i16> poison, i16 %i.p, i64 0
  %i.u = insertelement <4 x i16> %i.t, i16 %i.q, i64 1
  %i.v = insertelement <4 x i16> %i.u, i16 %i.r, i64 2
  %i.w = insertelement <4 x i16> %i.v, i16 %i.s, i64 3
  %i.x = uitofp <4 x i16> %i.w to <4 x float>
  %4 = fmul <4 x float> %broadcast.splat, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %next.gep21, i64 2
  %i.z = getelementptr i8, ptr %i.m, i64 10
  %i.aa = getelementptr i8, ptr %i.n, i64 18
  %i.ab = getelementptr i8, ptr %i.o, i64 26
  %i.ac = load i16, ptr %i.y, align 2, !tbaa !147
  %i.ad = load i16, ptr %i.z, align 2, !tbaa !147
  %i.ae = load i16, ptr %i.aa, align 2, !tbaa !147
  %i.af = load i16, ptr %i.ab, align 2, !tbaa !147
  %i.ag = insertelement <4 x i16> poison, i16 %i.ac, i64 0
  %i.ah = insertelement <4 x i16> %i.ag, i16 %i.ad, i64 1
  %i.ai = insertelement <4 x i16> %i.ah, i16 %i.ae, i64 2
  %i.aj = insertelement <4 x i16> %i.ai, i16 %i.af, i64 3
  %i.ak = uitofp <4 x i16> %i.aj to <4 x float>
  %5 = fmul <4 x float> %broadcast.splat, %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep21, i64 4
  %i.am = getelementptr i8, ptr %i.m, i64 12
  %i.an = getelementptr i8, ptr %i.n, i64 20
  %i.ao = getelementptr i8, ptr %i.o, i64 28
  %i.ap = load i16, ptr %i.al, align 2, !tbaa !147
  %i.aq = load i16, ptr %i.am, align 2, !tbaa !147
  %i.ar = load i16, ptr %i.an, align 2, !tbaa !147
  %i.as = load i16, ptr %i.ao, align 2, !tbaa !147
  %i.at = insertelement <4 x i16> poison, i16 %i.ap, i64 0
  %i.au = insertelement <4 x i16> %i.at, i16 %i.aq, i64 1
  %i.av = insertelement <4 x i16> %i.au, i16 %i.ar, i64 2
  %i.aw = insertelement <4 x i16> %i.av, i16 %i.as, i64 3
  %i.ax = uitofp <4 x i16> %i.aw to <4 x float>
  %6 = fmul <4 x float> %broadcast.splat, %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep21, i64 6
  %i.az = getelementptr i8, ptr %i.m, i64 14
  %i.ba = getelementptr i8, ptr %i.n, i64 22
  %i.bb = getelementptr i8, ptr %i.o, i64 30
  %i.bc = load i16, ptr %i.ay, align 2, !tbaa !147
  %i.bd = load i16, ptr %i.az, align 2, !tbaa !147
  %i.be = load i16, ptr %i.ba, align 2, !tbaa !147
  %i.bf = load i16, ptr %i.bb, align 2, !tbaa !147
  %i.bg = insertelement <4 x i16> poison, i16 %i.bc, i64 0
  %i.bh = insertelement <4 x i16> %i.bg, i16 %i.bd, i64 1
  %i.bi = insertelement <4 x i16> %i.bh, i16 %i.be, i64 2
  %i.bj = insertelement <4 x i16> %i.bi, i16 %i.bf, i64 3
  %i.bk = uitofp <4 x i16> %i.bj to <4 x float>
  %7 = fmul <4 x float> %broadcast.splat, %i.bk
  %i.bl = shufflevector <4 x float> %4, <4 x float> %5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = shufflevector <4 x float> %6, <4 x float> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bl, <8 x float> %8, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !136, !alias.scope !469, !noalias !468
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !466

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
  %.019 = phi i64 [ %i.cg, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ]
  %.01518 = phi ptr [ %i.cf, %scalar.ph ], [ %.01518.ph, %scalar.ph.preheader ] ; 5 uses
  %.01617 = phi ptr [ %i.ce, %scalar.ph ], [ %.01617.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bn = load float, ptr %i.b, align 8, !tbaa !56
  %i.bo = getelementptr inbounds nuw i8, ptr %.01518, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.01518, i64 8
  %i.bq = load <4 x i16>, ptr %.01617, align 2, !tbaa !147
  %i.br = uitofp <4 x i16> %i.bq to <4 x float>   ; 4 uses
  %i.bs = extractelement <4 x float> %i.br, i64 0
  %i.bt = fmul float %i.bn, %i.bs
  store float %i.bt, ptr %.01518, align 4, !tbaa !136
  %i.bu = load float, ptr %i.b, align 8, !tbaa !56
  %i.bv = extractelement <4 x float> %i.br, i64 1
  %i.bw = fmul float %i.bu, %i.bv
  store float %i.bw, ptr %i.bo, align 4, !tbaa !136
  %i.bx = load float, ptr %i.b, align 8, !tbaa !56
  %i.by = extractelement <4 x float> %i.br, i64 2
  %i.bz = fmul float %i.bx, %i.by
  store float %i.bz, ptr %i.bp, align 4, !tbaa !136
  %i.ca = load float, ptr %i.b, align 8, !tbaa !56
  %i.cb = extractelement <4 x float> %i.br, i64 3
  %i.cc = fmul float %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.01518, i64 12
  store float %i.cc, ptr %i.cd, align 4, !tbaa !136
  %i.ce = getelementptr inbounds nuw i8, ptr %.01617, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.01518, i64 16
  %i.cg = add nuw nsw i64 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !467
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !470
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE5ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_1EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 align 2 {
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound0 = icmp ult ptr %2, %i.f
  %bound1 = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %2, %i.g
  %bound134 = icmp ult ptr %i.b, %i.d
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %i.h = shl i64 %n.vec, 2
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %i.j = shl i64 %n.vec, 3
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = load float, ptr %i.b, align 8, !tbaa !58, !alias.scope !477
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.m
  %i.n = shl i64 %index, 3                        ; 4 uses
  %next.gep36 = getelementptr i8, ptr %1, i64 %i.n ; 4 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep37 = getelementptr i8, ptr %i.o, i64 8
  %i.p = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep38 = getelementptr i8, ptr %i.p, i64 16
  %i.q = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep39 = getelementptr i8, ptr %i.q, i64 24
  %i.r = load i16, ptr %next.gep36, align 2, !tbaa !147, !alias.scope !478
  %i.s = load i16, ptr %next.gep37, align 2, !tbaa !147, !alias.scope !478
  %i.t = load i16, ptr %next.gep38, align 2, !tbaa !147, !alias.scope !478
  %i.u = load i16, ptr %next.gep39, align 2, !tbaa !147, !alias.scope !478
  %i.v = insertelement <4 x i16> poison, i16 %i.r, i64 0
  %i.w = insertelement <4 x i16> %i.v, i16 %i.s, i64 1
  %i.x = insertelement <4 x i16> %i.w, i16 %i.t, i64 2
  %i.y = insertelement <4 x i16> %i.x, i16 %i.u, i64 3
  %i.z = uitofp <4 x i16> %i.y to <4 x float>
  %i.aa = fmul <4 x float> %broadcast.splat47, %i.z
  %i.ab = fadd <4 x float> %i.aa, splat (float 5.000000e-01) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %next.gep36, i64 2
  %i.ad = getelementptr i8, ptr %i.o, i64 10
  %i.ae = getelementptr i8, ptr %i.p, i64 18
  %i.af = getelementptr i8, ptr %i.q, i64 26
  %i.ag = load i16, ptr %i.ac, align 2, !tbaa !147, !alias.scope !478
  %i.ah = load i16, ptr %i.ad, align 2, !tbaa !147, !alias.scope !478
  %i.ai = load i16, ptr %i.ae, align 2, !tbaa !147, !alias.scope !478
  %i.aj = load i16, ptr %i.af, align 2, !tbaa !147, !alias.scope !478
  %i.ak = insertelement <4 x i16> poison, i16 %i.ag, i64 0
  %i.al = insertelement <4 x i16> %i.ak, i16 %i.ah, i64 1
  %i.am = insertelement <4 x i16> %i.al, i16 %i.ai, i64 2
  %i.an = insertelement <4 x i16> %i.am, i16 %i.aj, i64 3
  %i.ao = uitofp <4 x i16> %i.an to <4 x float>
  %i.ap = fmul <4 x float> %broadcast.splat47, %i.ao
  %i.aq = fadd <4 x float> %i.ap, splat (float 5.000000e-01) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep36, i64 4
  %i.as = getelementptr i8, ptr %i.o, i64 12
  %i.at = getelementptr i8, ptr %i.p, i64 20
  %i.au = getelementptr i8, ptr %i.q, i64 28
  %i.av = load i16, ptr %i.ar, align 2, !tbaa !147, !alias.scope !478
  %i.aw = load i16, ptr %i.as, align 2, !tbaa !147, !alias.scope !478
  %i.ax = load i16, ptr %i.at, align 2, !tbaa !147, !alias.scope !478
  %i.ay = load i16, ptr %i.au, align 2, !tbaa !147, !alias.scope !478
  %i.az = insertelement <4 x i16> poison, i16 %i.av, i64 0
  %i.ba = insertelement <4 x i16> %i.az, i16 %i.aw, i64 1
  %i.bb = insertelement <4 x i16> %i.ba, i16 %i.ax, i64 2
  %i.bc = insertelement <4 x i16> %i.bb, i16 %i.ay, i64 3
  %i.bd = uitofp <4 x i16> %i.bc to <4 x float>
  %i.be = fmul <4 x float> %broadcast.splat47, %i.bd
  %i.bf = fadd <4 x float> %i.be, splat (float 5.000000e-01) ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %next.gep36, i64 6
  %i.bh = getelementptr i8, ptr %i.o, i64 14
  %i.bi = getelementptr i8, ptr %i.p, i64 22
  %i.bj = getelementptr i8, ptr %i.q, i64 30
  %i.bk = load i16, ptr %i.bg, align 2, !tbaa !147, !alias.scope !478
  %i.bl = load i16, ptr %i.bh, align 2, !tbaa !147, !alias.scope !478
  %i.bm = load i16, ptr %i.bi, align 2, !tbaa !147, !alias.scope !478
  %i.bn = load i16, ptr %i.bj, align 2, !tbaa !147, !alias.scope !478
  %i.bo = insertelement <4 x i16> poison, i16 %i.bk, i64 0
  %i.bp = insertelement <4 x i16> %i.bo, i16 %i.bl, i64 1
  %i.bq = insertelement <4 x i16> %i.bp, i16 %i.bm, i64 2
  %i.br = insertelement <4 x i16> %i.bq, i16 %i.bn, i64 3
  %i.bs = uitofp <4 x i16> %i.br to <4 x float>
  %i.bt = fmul <4 x float> %broadcast.splat47, %i.bs
  %i.bu = fadd <4 x float> %i.bt, splat (float 5.000000e-01) ; 3 uses
  %i.bv = shufflevector <4 x float> %i.ab, <4 x float> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bw = fcmp ogt <8 x float> %i.bv, splat (float 2.550000e+02)
  %i.bx = shufflevector <4 x float> %i.ab, <4 x float> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.by = fcmp olt <8 x float> %i.bx, zeroinitializer
  %i.bz = shufflevector <4 x float> %i.ab, <4 x float> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ca = select <8 x i1> %i.by, <8 x float> zeroinitializer, <8 x float> %i.bz
  %i.cb = fptoui <8 x float> %i.ca to <8 x i8>
  %i.cc = select <8 x i1> %i.bw, <8 x i8> splat (i8 -1), <8 x i8> %i.cb
  %i.cd = shufflevector <4 x float> %i.bf, <4 x float> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ce = fcmp ogt <8 x float> %i.cd, splat (float 2.550000e+02)
  %i.cf = shufflevector <4 x float> %i.bf, <4 x float> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cg = fcmp olt <8 x float> %i.cf, zeroinitializer
  %i.ch = shufflevector <4 x float> %i.bf, <4 x float> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = select <8 x i1> %i.cg, <8 x float> zeroinitializer, <8 x float> %i.ch
  %i.cj = fptoui <8 x float> %i.ci to <8 x i8>
  %i.ck = select <8 x i1> %i.ce, <8 x i8> splat (i8 -1), <8 x i8> %i.cj
  %interleaved.vec = shufflevector <8 x i8> %i.cc, <8 x i8> %i.ck, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !102, !alias.scope !479, !noalias !480
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !475

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01521.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.i, %middle.block ]
  %.01620.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.k, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19
  %.022 = phi i64 [ %i.ei, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.022.ph, %scalar.ph.preheader ]
  %.01521 = phi ptr [ %i.eh, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01521.ph, %scalar.ph.preheader ] ; 5 uses
  %.01620 = phi ptr [ %i.eg, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01620.ph, %scalar.ph.preheader ] ; 5 uses
  %i.cm = load i16, ptr %.01620, align 2, !tbaa !147
  %i.cn = uitofp i16 %i.cm to float
  %i.co = load float, ptr %i.b, align 8, !tbaa !58
  %i.cp = fmul float %i.co, %i.cn
  %i.cq = fadd float %i.cp, 5.000000e-01          ; 3 uses
  %i.cr = fcmp ogt float %i.cq, 2.550000e+02
  br i1 %i.cr, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.cs = fcmp olt float %i.cq, 0.000000e+00
  %i.ct = select i1 %i.cs, float 0.000000e+00, float %i.cq
  %i.cu = fptoui float %i.ct to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit: ; preds = %scalar.ph, %bb.b
  %i.cv = phi i8 [ %i.cu, %bb.b ], [ -1, %scalar.ph ]
  store i8 %i.cv, ptr %.01521, align 1, !tbaa !102
  %i.cw = getelementptr inbounds nuw i8, ptr %.01620, i64 2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !147
  %i.cy = uitofp i16 %i.cx to float
  %i.cz = load float, ptr %i.b, align 8, !tbaa !58
  %i.da = fmul float %i.cz, %i.cy
  %i.db = fadd float %i.da, 5.000000e-01          ; 3 uses
  %i.dc = fcmp ogt float %i.db, 2.550000e+02
  br i1 %i.dc, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit
  %i.dd = fcmp olt float %i.db, 0.000000e+00
  %i.de = select i1 %i.dd, float 0.000000e+00, float %i.db
  %i.df = fptoui float %i.de to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, %bb.c
  %i.dg = phi i8 [ %i.df, %bb.c ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.01521, i64 1
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !102
  %i.di = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !147
  %i.dk = uitofp i16 %i.dj to float
  %i.dl = load float, ptr %i.b, align 8, !tbaa !58
  %i.dm = fmul float %i.dl, %i.dk
  %i.dn = fadd float %i.dm, 5.000000e-01          ; 3 uses
  %i.do = fcmp ogt float %i.dn, 2.550000e+02
  br i1 %i.do, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17
  %i.dp = fcmp olt float %i.dn, 0.000000e+00
  %i.dq = select i1 %i.dp, float 0.000000e+00, float %i.dn
  %i.dr = fptoui float %i.dq to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, %bb.d
  %i.ds = phi i8 [ %i.dr, %bb.d ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.01521, i64 2
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !102
  %i.du = getelementptr inbounds nuw i8, ptr %.01620, i64 6
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !147
  %i.dw = uitofp i16 %i.dv to float
  %i.dx = load float, ptr %i.b, align 8, !tbaa !58
  %i.dy = fmul float %i.dx, %i.dw
  %i.dz = fadd float %i.dy, 5.000000e-01          ; 3 uses
  %i.ea = fcmp ogt float %i.dz, 2.550000e+02
  br i1 %i.ea, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18
  %i.eb = fcmp olt float %i.dz, 0.000000e+00
  %i.ec = select i1 %i.eb, float 0.000000e+00, float %i.dz
  %i.ed = fptoui float %i.ec to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, %bb.e
  %i.ee = phi i8 [ %i.ed, %bb.e ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.01521, i64 3
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !102
  %i.eg = getelementptr inbounds nuw i8, ptr %.01620, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.01521, i64 4
  %i.ei = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ei, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !476
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !481
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE5ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_2EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_7EE5applyEPKvPvl:bb.a
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
  store i16 %.033.i.i.i26, ptr %i.el, align 2, !tbaa !147
  %i.em = getelementptr inbounds nuw i8, ptr %.034, i64 6
  %i.en = load i16, ptr %i.em, align 2, !tbaa !147
  %i.eo = uitofp i16 %i.en to float
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
  br i1 %i.ex, label %bb.ah, label %bb.aj, !prof !104

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
  br i1 %i.fh, label %bb.ak, label %bb.al, !prof !104

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
  store i16 %.033.i.i.i30, ptr %i.gg, align 2, !tbaa !147
  %i.gh = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.01833, i64 8
  %i.gj = add nuw nsw i64 %.01932, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.gj, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !506
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !507
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE5ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE5ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_8EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE5ELS1_8EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %3, 4
  %i.d = getelementptr i8, ptr %2, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound0 = icmp ult ptr %2, %i.e
  %bound1 = icmp ult ptr %i.b, %i.d
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %i.f = shl i64 %n.vec, 4
  %i.g = getelementptr i8, ptr %2, i64 %i.f
  %i.h = shl i64 %n.vec, 3
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = load float, ptr %i.b, align 8, !tbaa !68, !alias.scope !513
  %broadcast.splatinsert29 = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert29, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
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
  %i.p = load i16, ptr %next.gep21, align 2, !tbaa !147
  %i.q = load i16, ptr %next.gep22, align 2, !tbaa !147
  %i.r = load i16, ptr %next.gep23, align 2, !tbaa !147
  %i.s = load i16, ptr %next.gep24, align 2, !tbaa !147
  %i.t = insertelement <4 x i16> poison, i16 %i.p, i64 0
  %i.u = insertelement <4 x i16> %i.t, i16 %i.q, i64 1
  %i.v = insertelement <4 x i16> %i.u, i16 %i.r, i64 2
  %i.w = insertelement <4 x i16> %i.v, i16 %i.s, i64 3
  %i.x = uitofp <4 x i16> %i.w to <4 x float>
  %4 = fmul <4 x float> %broadcast.splat, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %next.gep21, i64 2
  %i.z = getelementptr i8, ptr %i.m, i64 10
  %i.aa = getelementptr i8, ptr %i.n, i64 18
  %i.ab = getelementptr i8, ptr %i.o, i64 26
  %i.ac = load i16, ptr %i.y, align 2, !tbaa !147
  %i.ad = load i16, ptr %i.z, align 2, !tbaa !147
  %i.ae = load i16, ptr %i.aa, align 2, !tbaa !147
  %i.af = load i16, ptr %i.ab, align 2, !tbaa !147
  %i.ag = insertelement <4 x i16> poison, i16 %i.ac, i64 0
  %i.ah = insertelement <4 x i16> %i.ag, i16 %i.ad, i64 1
  %i.ai = insertelement <4 x i16> %i.ah, i16 %i.ae, i64 2
  %i.aj = insertelement <4 x i16> %i.ai, i16 %i.af, i64 3
  %i.ak = uitofp <4 x i16> %i.aj to <4 x float>
  %5 = fmul <4 x float> %broadcast.splat, %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep21, i64 4
  %i.am = getelementptr i8, ptr %i.m, i64 12
  %i.an = getelementptr i8, ptr %i.n, i64 20
  %i.ao = getelementptr i8, ptr %i.o, i64 28
  %i.ap = load i16, ptr %i.al, align 2, !tbaa !147
  %i.aq = load i16, ptr %i.am, align 2, !tbaa !147
  %i.ar = load i16, ptr %i.an, align 2, !tbaa !147
  %i.as = load i16, ptr %i.ao, align 2, !tbaa !147
  %i.at = insertelement <4 x i16> poison, i16 %i.ap, i64 0
  %i.au = insertelement <4 x i16> %i.at, i16 %i.aq, i64 1
  %i.av = insertelement <4 x i16> %i.au, i16 %i.ar, i64 2
  %i.aw = insertelement <4 x i16> %i.av, i16 %i.as, i64 3
  %i.ax = uitofp <4 x i16> %i.aw to <4 x float>
  %6 = fmul <4 x float> %broadcast.splat, %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep21, i64 6
  %i.az = getelementptr i8, ptr %i.m, i64 14
  %i.ba = getelementptr i8, ptr %i.n, i64 22
  %i.bb = getelementptr i8, ptr %i.o, i64 30
  %i.bc = load i16, ptr %i.ay, align 2, !tbaa !147
  %i.bd = load i16, ptr %i.az, align 2, !tbaa !147
  %i.be = load i16, ptr %i.ba, align 2, !tbaa !147
  %i.bf = load i16, ptr %i.bb, align 2, !tbaa !147
  %i.bg = insertelement <4 x i16> poison, i16 %i.bc, i64 0
  %i.bh = insertelement <4 x i16> %i.bg, i16 %i.bd, i64 1
  %i.bi = insertelement <4 x i16> %i.bh, i16 %i.be, i64 2
  %i.bj = insertelement <4 x i16> %i.bi, i16 %i.bf, i64 3
  %i.bk = uitofp <4 x i16> %i.bj to <4 x float>
  %7 = fmul <4 x float> %broadcast.splat, %i.bk
  %i.bl = shufflevector <4 x float> %4, <4 x float> %5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = shufflevector <4 x float> %6, <4 x float> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bl, <8 x float> %8, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !136, !alias.scope !514, !noalias !513
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !511

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
  %.019 = phi i64 [ %i.cg, %scalar.ph ], [ %.019.ph, %scalar.ph.preheader ]
  %.01518 = phi ptr [ %i.cf, %scalar.ph ], [ %.01518.ph, %scalar.ph.preheader ] ; 5 uses
  %.01617 = phi ptr [ %i.ce, %scalar.ph ], [ %.01617.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bn = load float, ptr %i.b, align 8, !tbaa !68
  %i.bo = getelementptr inbounds nuw i8, ptr %.01518, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.01518, i64 8
  %i.bq = load <4 x i16>, ptr %.01617, align 2, !tbaa !147
  %i.br = uitofp <4 x i16> %i.bq to <4 x float>   ; 4 uses
  %i.bs = extractelement <4 x float> %i.br, i64 0
  %i.bt = fmul float %i.bn, %i.bs
  store float %i.bt, ptr %.01518, align 4, !tbaa !136
  %i.bu = load float, ptr %i.b, align 8, !tbaa !68
  %i.bv = extractelement <4 x float> %i.br, i64 1
  %i.bw = fmul float %i.bu, %i.bv
  store float %i.bw, ptr %i.bo, align 4, !tbaa !136
  %i.bx = load float, ptr %i.b, align 8, !tbaa !68
  %i.by = extractelement <4 x float> %i.br, i64 2
  %i.bz = fmul float %i.bx, %i.by
  store float %i.bz, ptr %i.bp, align 4, !tbaa !136
  %i.ca = load float, ptr %i.b, align 8, !tbaa !68
  %i.cb = extractelement <4 x float> %i.br, i64 3
  %i.cc = fmul float %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.01518, i64 12
  store float %i.cc, ptr %i.cd, align 4, !tbaa !136
  %i.ce = getelementptr inbounds nuw i8, ptr %.01617, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.01518, i64 16
  %i.cg = add nuw nsw i64 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !512
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE7ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE7ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !515
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE7ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE7ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE7ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE7ELS1_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE7ELS1_1EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19
  %.022 = phi i64 [ 0, %.lr.ph ], [ %i.bk, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ]
  %.01521 = phi ptr [ %2, %.lr.ph ], [ %i.bj, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ] ; 5 uses
  %.01620 = phi ptr [ %1, %.lr.ph ], [ %i.bi, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ] ; 5 uses
  %i.c = load i16, ptr %.01620, align 2, !tbaa !149
  %i.d = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !151
  %i.e = zext i16 %i.c to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !102
  %i.h = load float, ptr %i.b, align 8, !tbaa !70
  %i.i = fmul float %i.g, %i.h
  %i.j = fadd float %i.i, 5.000000e-01            ; 3 uses
  %i.k = fcmp ogt float %i.j, 2.550000e+02
  br i1 %i.k, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = fcmp olt float %i.j, 0.000000e+00
  %i.m = select i1 %i.l, float 0.000000e+00, float %i.j
  %i.n = fptoui float %i.m to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i8 [ %i.n, %bb.c ], [ -1, %bb.b ]
  store i8 %i.o, ptr %.01521, align 1, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %.01620, i64 2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !149
  %i.r = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !151
  %i.s = zext i16 %i.q to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !102
  %i.v = load float, ptr %i.b, align 8, !tbaa !70
  %i.w = fmul float %i.u, %i.v
  %i.x = fadd float %i.w, 5.000000e-01            ; 3 uses
  %i.y = fcmp ogt float %i.x, 2.550000e+02
  br i1 %i.y, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit
  %i.z = fcmp olt float %i.x, 0.000000e+00
  %i.aa = select i1 %i.z, float 0.000000e+00, float %i.x
  %i.ab = fptoui float %i.aa to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, %bb.d
  %i.ac = phi i8 [ %i.ab, %bb.d ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.01521, i64 1
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !102
  %i.ae = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !149
  %i.ag = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !151
  %i.ah = zext i16 %i.af to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !102
  %i.ak = load float, ptr %i.b, align 8, !tbaa !70
  %i.al = fmul float %i.aj, %i.ak
  %i.am = fadd float %i.al, 5.000000e-01          ; 3 uses
  %i.an = fcmp ogt float %i.am, 2.550000e+02
  br i1 %i.an, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17
  %i.ao = fcmp olt float %i.am, 0.000000e+00
  %i.ap = select i1 %i.ao, float 0.000000e+00, float %i.am
  %i.aq = fptoui float %i.ap to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, %bb.e
  %i.ar = phi i8 [ %i.aq, %bb.e ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17 ]
  %i.as = getelementptr inbounds nuw i8, ptr %.01521, i64 2
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !102
  %i.at = getelementptr inbounds nuw i8, ptr %.01620, i64 6
  %i.au = load i16, ptr %i.at, align 2, !tbaa !149
  %i.av = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !151
  %i.aw = zext i16 %i.au to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !102
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE7ELS1_7EE5applyEPKvPvl:bb.a
  store i16 %.033.i.i.i30, ptr %i.gp, align 2, !tbaa !147
  %i.gq = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %.01833, i64 8
  %i.gs = add nuw nsw i64 %.01932, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.gs, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !524
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE7ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE7ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !525
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE7ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE7ELS3_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE7ELS2_8EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE7ELS1_8EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE7ELS1_8EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !151 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.019 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %bb.b ]
  %.01518 = phi ptr [ %2, %.lr.ph ], [ %i.ai, %bb.b ] ; 5 uses
  %.01617 = phi ptr [ %1, %.lr.ph ], [ %i.ah, %bb.b ] ; 5 uses
  %i.d = load i16, ptr %.01617, align 2, !tbaa !149
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !102
  %i.h = load float, ptr %i.c, align 8, !tbaa !80
  %i.i = fmul float %i.g, %i.h
  store float %i.i, ptr %.01518, align 4, !tbaa !136
  %i.j = getelementptr inbounds nuw i8, ptr %.01617, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !149
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !102
  %i.o = load float, ptr %i.c, align 8, !tbaa !80
  %i.p = fmul float %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.01518, i64 4
  store float %i.p, ptr %i.q, align 4, !tbaa !136
  %i.r = getelementptr inbounds nuw i8, ptr %.01617, i64 4
  %i.s = load i16, ptr %i.r, align 2, !tbaa !149
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !102
  %i.w = load float, ptr %i.c, align 8, !tbaa !80
  %i.x = fmul float %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.01518, i64 8
  store float %i.x, ptr %i.y, align 4, !tbaa !136
  %i.z = getelementptr inbounds nuw i8, ptr %.01617, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !149
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !102
  %i.ae = load float, ptr %i.c, align 8, !tbaa !80
  %i.af = fmul float %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.01518, i64 12
  store float %i.af, ptr %i.ag, align 4, !tbaa !136
  %i.ah = getelementptr inbounds nuw i8, ptr %.01617, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.01518, i64 16
  %i.aj = add nuw nsw i64 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !526
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE8ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE8ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !527
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE8ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE8ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE8ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE8ELS1_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE8ELS1_1EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 align 2 {
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound0 = icmp ult ptr %2, %i.f
  %bound1 = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %2, %i.g
  %bound134 = icmp ult ptr %i.b, %i.d
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 5 uses
  %i.h = shl i64 %n.vec, 2
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %i.j = shl i64 %n.vec, 4
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = load float, ptr %i.b, align 8, !tbaa !82, !alias.scope !534
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.m
  %i.n = shl i64 %index, 4                        ; 4 uses
  %next.gep36 = getelementptr i8, ptr %1, i64 %i.n ; 4 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep37 = getelementptr i8, ptr %i.o, i64 16
  %i.p = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep38 = getelementptr i8, ptr %i.p, i64 32
  %i.q = getelementptr i8, ptr %1, i64 %i.n       ; 4 uses
  %next.gep39 = getelementptr i8, ptr %i.q, i64 48
  %i.r = load float, ptr %next.gep36, align 4, !tbaa !136, !alias.scope !535
  %i.s = load float, ptr %next.gep37, align 4, !tbaa !136, !alias.scope !535
  %i.t = load float, ptr %next.gep38, align 4, !tbaa !136, !alias.scope !535
  %i.u = load float, ptr %next.gep39, align 4, !tbaa !136, !alias.scope !535
  %i.v = insertelement <4 x float> poison, float %i.r, i64 0
  %i.w = insertelement <4 x float> %i.v, float %i.s, i64 1
  %i.x = insertelement <4 x float> %i.w, float %i.t, i64 2
  %i.y = insertelement <4 x float> %i.x, float %i.u, i64 3
  %i.z = fmul <4 x float> %i.y, %broadcast.splat47
  %i.aa = fadd <4 x float> %i.z, splat (float 5.000000e-01) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep36, i64 4
  %i.ac = getelementptr i8, ptr %i.o, i64 20
  %i.ad = getelementptr i8, ptr %i.p, i64 36
  %i.ae = getelementptr i8, ptr %i.q, i64 52
  %i.af = load float, ptr %i.ab, align 4, !tbaa !136, !alias.scope !535
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !136, !alias.scope !535
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !136, !alias.scope !535
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !136, !alias.scope !535
  %i.aj = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 1
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 2
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 3
  %i.an = fmul <4 x float> %i.am, %broadcast.splat47
  %i.ao = fadd <4 x float> %i.an, splat (float 5.000000e-01) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %next.gep36, i64 8
  %i.aq = getelementptr i8, ptr %i.o, i64 24
  %i.ar = getelementptr i8, ptr %i.p, i64 40
  %i.as = getelementptr i8, ptr %i.q, i64 56
  %i.at = load float, ptr %i.ap, align 4, !tbaa !136, !alias.scope !535
  %i.au = load float, ptr %i.aq, align 4, !tbaa !136, !alias.scope !535
  %i.av = load float, ptr %i.ar, align 4, !tbaa !136, !alias.scope !535
  %i.aw = load float, ptr %i.as, align 4, !tbaa !136, !alias.scope !535
  %i.ax = insertelement <4 x float> poison, float %i.at, i64 0
  %i.ay = insertelement <4 x float> %i.ax, float %i.au, i64 1
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 2
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 3
  %i.bb = fmul <4 x float> %i.ba, %broadcast.splat47
  %i.bc = fadd <4 x float> %i.bb, splat (float 5.000000e-01) ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %next.gep36, i64 12
  %i.be = getelementptr i8, ptr %i.o, i64 28
  %i.bf = getelementptr i8, ptr %i.p, i64 44
  %i.bg = getelementptr i8, ptr %i.q, i64 60
  %i.bh = load float, ptr %i.bd, align 4, !tbaa !136, !alias.scope !535
  %i.bi = load float, ptr %i.be, align 4, !tbaa !136, !alias.scope !535
  %i.bj = load float, ptr %i.bf, align 4, !tbaa !136, !alias.scope !535
  %i.bk = load float, ptr %i.bg, align 4, !tbaa !136, !alias.scope !535
  %i.bl = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 1
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 2
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 3
  %i.bp = fmul <4 x float> %i.bo, %broadcast.splat47
  %i.bq = fadd <4 x float> %i.bp, splat (float 5.000000e-01) ; 3 uses
  %i.br = shufflevector <4 x float> %i.aa, <4 x float> %i.ao, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bs = fcmp ogt <8 x float> %i.br, splat (float 2.550000e+02)
  %i.bt = shufflevector <4 x float> %i.aa, <4 x float> %i.ao, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bu = fcmp olt <8 x float> %i.bt, zeroinitializer
  %i.bv = shufflevector <4 x float> %i.aa, <4 x float> %i.ao, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bw = select <8 x i1> %i.bu, <8 x float> zeroinitializer, <8 x float> %i.bv
  %i.bx = fptoui <8 x float> %i.bw to <8 x i8>
  %i.by = select <8 x i1> %i.bs, <8 x i8> splat (i8 -1), <8 x i8> %i.bx
  %i.bz = shufflevector <4 x float> %i.bc, <4 x float> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ca = fcmp ogt <8 x float> %i.bz, splat (float 2.550000e+02)
  %i.cb = shufflevector <4 x float> %i.bc, <4 x float> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cc = fcmp olt <8 x float> %i.cb, zeroinitializer
  %i.cd = shufflevector <4 x float> %i.bc, <4 x float> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ce = select <8 x i1> %i.cc, <8 x float> zeroinitializer, <8 x float> %i.cd
  %i.cf = fptoui <8 x float> %i.ce to <8 x i8>
  %i.cg = select <8 x i1> %i.ca, <8 x i8> splat (i8 -1), <8 x i8> %i.cf
  %interleaved.vec = shufflevector <8 x i8> %i.by, <8 x i8> %i.cg, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !102, !alias.scope !536, !noalias !537
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !532

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01521.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.i, %middle.block ]
  %.01620.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.k, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19
  %.022 = phi i64 [ %i.ea, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.022.ph, %scalar.ph.preheader ]
  %.01521 = phi ptr [ %i.dz, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01521.ph, %scalar.ph.preheader ] ; 5 uses
  %.01620 = phi ptr [ %i.dy, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19 ], [ %.01620.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ci = load float, ptr %.01620, align 4, !tbaa !136
  %i.cj = load float, ptr %i.b, align 8, !tbaa !82
  %i.ck = fmul float %i.ci, %i.cj
  %i.cl = fadd float %i.ck, 5.000000e-01          ; 3 uses
  %i.cm = fcmp ogt float %i.cl, 2.550000e+02
  br i1 %i.cm, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.cn = fcmp olt float %i.cl, 0.000000e+00
  %i.co = select i1 %i.cn, float 0.000000e+00, float %i.cl
  %i.cp = fptoui float %i.co to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit: ; preds = %scalar.ph, %bb.b
  %i.cq = phi i8 [ %i.cp, %bb.b ], [ -1, %scalar.ph ]
  store i8 %i.cq, ptr %.01521, align 1, !tbaa !102
  %i.cr = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !136
  %i.ct = load float, ptr %i.b, align 8, !tbaa !82
  %i.cu = fmul float %i.cs, %i.ct
  %i.cv = fadd float %i.cu, 5.000000e-01          ; 3 uses
  %i.cw = fcmp ogt float %i.cv, 2.550000e+02
  br i1 %i.cw, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit
  %i.cx = fcmp olt float %i.cv, 0.000000e+00
  %i.cy = select i1 %i.cx, float 0.000000e+00, float %i.cv
  %i.cz = fptoui float %i.cy to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit, %bb.c
  %i.da = phi i8 [ %i.cz, %bb.c ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit ]
  %i.db = getelementptr inbounds nuw i8, ptr %.01521, i64 1
  store i8 %i.da, ptr %i.db, align 1, !tbaa !102
  %i.dc = getelementptr inbounds nuw i8, ptr %.01620, i64 8
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !136
  %i.de = load float, ptr %i.b, align 8, !tbaa !82
  %i.df = fmul float %i.dd, %i.de
  %i.dg = fadd float %i.df, 5.000000e-01          ; 3 uses
  %i.dh = fcmp ogt float %i.dg, 2.550000e+02
  br i1 %i.dh, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, label %bb.d

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17
  %i.di = fcmp olt float %i.dg, 0.000000e+00
  %i.dj = select i1 %i.di, float 0.000000e+00, float %i.dg
  %i.dk = fptoui float %i.dj to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17, %bb.d
  %i.dl = phi i8 [ %i.dk, %bb.d ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit17 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.01521, i64 2
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !102
  %i.dn = getelementptr inbounds nuw i8, ptr %.01620, i64 12
  %i.do = load float, ptr %i.dn, align 4, !tbaa !136
  %i.dp = load float, ptr %i.b, align 8, !tbaa !82
  %i.dq = fmul float %i.do, %i.dp
  %i.dr = fadd float %i.dq, 5.000000e-01          ; 3 uses
  %i.ds = fcmp ogt float %i.dr, 2.550000e+02
  br i1 %i.ds, label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18
  %i.dt = fcmp olt float %i.dr, 0.000000e+00
  %i.du = select i1 %i.dt, float 0.000000e+00, float %i.dr
  %i.dv = fptoui float %i.du to i8
  br label %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19

_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit19: ; preds = %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18, %bb.e
  %i.dw = phi i8 [ %i.dv, %bb.e ], [ -1, %_ZN16OpenColorIO_v2_59ConverterILNS_8BitDepthE1EE9CastValueEf.exit18 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.01521, i64 3
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !102
  %i.dy = getelementptr inbounds nuw i8, ptr %.01620, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %.01521, i64 4
  %i.ea = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ea, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !533
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE8ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE8ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !538
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE8ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE8ELS3_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE8ELS2_2EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !102
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
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE8ELS1_2EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE8ELS1_2EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

end_hunk_5
