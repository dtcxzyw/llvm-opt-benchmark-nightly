inline.NumInlined: 1159
inline.NumDeleted: 369
begin_hunk_0_@_ZN16OpenColorIO_v2_511ConfigUtils28hasNonTrivialMatrixTransformERKSt10shared_ptrIKNS_9ProcessorEE:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48

bb.af:                                            ; preds = %bb.ad
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i49 = phi i32 [ %i.cy, %bb.ae ], [ %i.di, %bb.af ]
  %i.dj = icmp eq i32 %.0.i.i.i.i49, 1
  br i1 %i.dj, label %bb.ag, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge37, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i48, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.dk = add nuw nsw i32 %.02768, 1              ; 2 uses
  %i.dl = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !29
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 88
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef i32 %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.dl) #21
  %.not33 = icmp slt i32 %i.dk, %i.dp
  br i1 %.not33, label %bb.b, label %.critedge39, !llvm.loop !87

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515MatrixTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 4294967297
  %i.dt = trunc i64 %i.dr to i32                  ; 2 uses
  br i1 %i.ds, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.dq, align 8, !tbaa !26
  %i.du = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.du, align 4, !tbaa !28
  %i.dv = load ptr, ptr %i.ce, align 8, !tbaa !29
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #21, !inline_history !53
  %i.dy = load ptr, ptr %i.ce, align 8, !tbaa !29
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #21, !inline_history !53
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit54

bb.aj:                                            ; preds = %bb.ah
  %i.eb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i51 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i51, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = add nsw i32 %i.dt, -1
  store i32 %i.ec, ptr %i.dq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52

bb.al:                                            ; preds = %bb.aj
  %i.ed = atomicrmw volatile add ptr %i.dq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i53 = phi i32 [ %i.dt, %bb.ak ], [ %i.ed, %bb.al ]
  %i.ee = icmp eq i32 %.0.i.i.i.i53, 1
  br i1 %i.ee, label %bb.am, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit54, !prof !32

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit54

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit54: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515MatrixTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.critedge39

bb.an:                                            ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.au, %bb.l ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn

.critedge39:                                      ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit54
  %.not3363 = phi i1 [ true, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit54 ], [ false, %bb.a ], [ false, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !25 ; 8 uses
  %.not.i.i55 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i55, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %.critedge39
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 4 uses
  %i.ei = load atomic i64, ptr %i.eh acquire, align 8 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 4294967297
  %i.ek = trunc i64 %i.ei to i32                  ; 2 uses
  br i1 %i.ej, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.eh, align 8, !tbaa !26
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store i32 0, ptr %i.el, align 4, !tbaa !28
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !29
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #21, !inline_history !88
  %i.ep = load ptr, ptr %i.eg, align 8, !tbaa !29
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #21, !inline_history !88
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i56 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i56, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.et = add nsw i32 %i.ek, -1
  store i32 %i.et, ptr %i.eh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57

bb.as:                                            ; preds = %bb.aq
  %i.eu = atomicrmw volatile add ptr %i.eh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i58 = phi i32 [ %i.ek, %bb.ar ], [ %i.eu, %bb.as ]
  %i.ev = icmp eq i32 %.0.i.i.i.i58, 1
  br i1 %i.ev, label %bb.at, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #21
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge39, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i1 %.not3363
}

declare void @_ZNK16OpenColorIO_v2_59Processor20createGroupTransformEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.16") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515MatrixTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !28
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !89
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !89
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils24containsBlockedTransformERKSt10shared_ptrIKNS_9TransformEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::shared_ptr.25", align 8 ; 10 uses
  %2 = alloca %"class.std::shared_ptr.4", align 8 ; 7 uses
  %3 = alloca %"class.std::shared_ptr.28", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #21
  %i.h = icmp eq i32 %i.g, 14
  br i1 %i.h, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.i = load ptr, ptr %0, align 8, !tbaa !48, !noalias !96, !nonnull !97, !noundef !97
  %i.j = tail call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_514GroupTransformE, i64 0) #21, !noalias !96 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  store ptr %i.j, ptr %1, align 8, !tbaa !98, !alias.scope !96
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25, !noalias !96 ; 3 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !25, !alias.scope !96
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !96
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3, !noalias !96
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3, !noalias !96
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.e:                                             ; preds = %bb.c
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4, !noalias !96 ; 0 uses
  %.pre96 = load ptr, ptr %1, align 8, !tbaa !98
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.s = phi ptr [ %i.j, %bb.b ], [ %i.j, %bb.d ], [ %.pre96, %bb.e ] ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #21
  %.not.not91 = icmp sgt i32 %i.w, 0
  br i1 %.not.not91, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre97 = load ptr, ptr %1, align 8, !tbaa !98
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.y = add nuw nsw i32 %.02692, 1               ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !98     ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #21
  %.not.not = icmp slt i32 %i.y, %i.ad
  br i1 %.not.not, label %bb.g, label %._crit_edge, !llvm.loop !100

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.ae = phi ptr [ %.pre97, %.lr.ph ], [ %i.z, %bb.f ] ; 2 uses
  %.02692 = phi i32 [ 0, %.lr.ph ], [ %i.y, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i32 noundef %.02692)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils24containsBlockedTransformERKSt10shared_ptrIKNS_9TransformEE(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.k unwind label %bb.j       ; 3 uses

bb.i:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  br label %bb.r

bb.k:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !25  ; 8 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.am, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !28
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #21, !inline_history !53
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #21, !inline_history !53
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.ap, %bb.o ], [ %i.az, %bb.p ]
  %i.ba = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ba, label %bb.q, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.ai, label %._crit_edge, label %bb.f

bb.r:                                             ; preds = %bb.j, %bb.i
  %.pn36 = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.aj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.bl

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.f, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %.not.not.lcssa = phi i1 [ false, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit ], [ %i.ai, %bb.f ], [ %i.ai, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !25 ; 8 uses
  %.not.i.i40 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i40, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bd, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !28
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !29
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #21, !inline_history !101
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #21, !inline_history !101
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i41 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i41, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i42

bb.w:                                             ; preds = %bb.u
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i42

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i42: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i43 = phi i32 [ %i.bg, %bb.v ], [ %i.bq, %bb.w ]
  %i.br = icmp eq i32 %.0.i.i.i.i43, 1
  br i1 %i.br, label %bb.x, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i42
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i42, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.not.not.lcssa, label %bb.bk, label %bb.bj

bb.y:                                             ; preds = %bb.a
  %i.bs = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #21
  %i.bx = icmp eq i32 %i.bw, 8
  br i1 %i.bx, label %bb.z, label %bb.bf

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.by = load ptr, ptr %0, align 8, !tbaa !48, !noalias !108, !nonnull !97, !noundef !97
  %i.bz = tail call ptr @__dynamic_cast(ptr nonnull %i.by, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_513FileTransformE, i64 0) #21, !noalias !108 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  store ptr %i.bz, ptr %3, align 8, !tbaa !109, !alias.scope !108
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !25, !noalias !108 ; 3 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !25, !alias.scope !108
  %.not.i.i.i.i.i45 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i45, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !108
  %.not.i.i.i.i.i.i46 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i.i.i46, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !3, !noalias !108
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !3, !noalias !108
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ch = atomicrmw volatile add ptr %i.cd, i32 1 acq_rel, align 4, !noalias !108 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !109
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.z, %bb.ab, %bb.ac
  %i.ci = phi ptr [ %i.bz, %bb.z ], [ %i.bz, %bb.ab ], [ %.pre, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.cj = invoke noundef ptr @_ZNK16OpenColorIO_v2_513FileTransform6getSrcEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci)
          to label %bb.ad unwind label %bb.au     ; 4 uses

bb.ad:                                            ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ck, ptr %4, align 8, !tbaa !33
  %i.cl = icmp eq ptr %i.cj, null
  br i1 %i.cl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.40) #22
          to label %.noexc unwind label %bb.av

.noexc:                                           ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cj) #21 ; 4 uses
end_hunk_0
