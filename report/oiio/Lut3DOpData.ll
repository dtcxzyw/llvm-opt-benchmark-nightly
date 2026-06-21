inline.NumInlined: 609
inline.NumDeleted: 278
begin_hunk_0_@_ZN16OpenColorIO_v2_524MakeFastLut3DFromInverseERSt10shared_ptrIKNS_11Lut3DOpDataEE:bb.a
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #25
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.f = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #27, !noalias !45 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store i32 1, ptr %i.g, align 8, !tbaa !48, !noalias !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 1, ptr %i.h, align 4, !tbaa !50, !noalias !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.f, align 8, !tbaa !51, !noalias !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC2Em(ptr noundef nonnull align 8 dereferenceable(232) %i.i, i64 noundef 48)
          to label %bb.f unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !45

common.resume:                                    ; preds = %bb.d, %bb.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.e, %bb.d ], [ %i.u, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 248) #28, !noalias !45
  br label %common.resume

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.k, align 8, !tbaa !53, !alias.scope !45
  store ptr %i.i, ptr %2, align 8, !tbaa !54, !alias.scope !45
  %i.l = load ptr, ptr %1, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 228
  %i.n = load i32, ptr %i.m, align 4, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 244
  store i32 %i.n, ptr %i.o, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.i, ptr %3, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.p, align 8, !tbaa !53
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.g, align 8, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataEEC2IS1_vEERKS_IT_E.exit

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.g, %bb.h
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData7ComposeERSt10shared_ptrIKS0_ES4_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataEEC2IS1_vEERKS_IT_E.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataEEC2IS1_vEERKS_IT_E.exit
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !53   ; 8 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.w, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !50
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #25, !inline_history !57
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #25, !inline_history !57
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i7, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.z, %bb.n ], [ %i.aj, %bb.o ]
  %i.ak = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ak, label %bb.p, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !53  ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.al, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.am, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !50
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #25, !inline_history !59
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #25, !inline_history !59
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i9 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.u:                                             ; preds = %bb.s
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i11 = phi i32 [ %i.ap, %bb.t ], [ %i.az, %bb.u ]
  %i.ba = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.ba, label %bb.v, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #25
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut3DOpData7ComposeERSt10shared_ptrIKS0_ES4_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 10 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 10 uses
  %5 = alloca %"class.OpenColorIO_v2_5::OpRcPtrVec", align 8 ; 9 uses
  %6 = alloca %"class.OpenColorIO_v2_5::FormatMetadataImpl", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %8 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53, !noalias !60 ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !63, !noalias !60
  store <2 x ptr> %i.d, ptr %3, align 16, !tbaa !63, !alias.scope !60
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56, !noalias !60
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !60
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3, !noalias !60
  br label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !60 ; 0 uses
  br label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.j = load ptr, ptr %2, align 8, !tbaa !7, !noalias !64 ; 3 uses
  store ptr %i.j, ptr %4, align 16, !tbaa !67, !alias.scope !64
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53, !noalias !64 ; 3 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !53, !alias.scope !64
  %.not.i.i.i.i32 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i32, label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit34, label %bb.e

bb.e:                                             ; preds = %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56, !noalias !64
  %.not.i.i.i.i.i33 = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3, !noalias !64
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3, !noalias !64
  br label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit34

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4, !noalias !64 ; 0 uses
  %.pre.pre = load ptr, ptr %4, align 16, !tbaa !67
  br label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit34

_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit34: ; preds = %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit, %bb.f, %bb.g
  %.pre = phi ptr [ %i.j, %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit ], [ %i.j, %bb.f ], [ %.pre.pre, %bb.g ] ; 4 uses
  %i.s = load ptr, ptr %3, align 16, !tbaa !67    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 224 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !13
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit34
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 224 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !13
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %.pre, ptr %3, align 16, !tbaa !54
  store ptr %i.s, ptr %4, align 16, !tbaa !54
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !53
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !53
  store ptr %i.z, ptr %i.a, align 8, !tbaa !53
  store i32 0, ptr %i.w, align 8, !tbaa !13
  store i32 0, ptr %i.t, align 8, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit34
  %i.ab = phi ptr [ %i.s, %bb.i ], [ %.pre, %bb.h ], [ %.pre, %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit34 ]
  %.0 = phi i1 [ true, %bb.i ], [ false, %bb.h ], [ false, %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataEKS1_ESt10shared_ptrIT_ERKS3_IT0_E.exit34 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 176 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef i64 %i.af(ptr noundef nonnull align 8 dereferenceable(48) %i.ac)
          to label %bb.k unwind label %bb.q       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %9 = load ptr, ptr %3, align 16, !tbaa !67      ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(48) %i.ah)
          to label %bb.l unwind label %bb.r       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %5)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %.not = icmp slt i64 %i.al, %i.ag
  br i1 %.not, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.an = load i32, ptr %i.am, align 8, !tbaa !13
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #27
          to label %.noexc unwind label %bb.t     ; 4 uses

.noexc:                                           ; preds = %bb.o
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKS1_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(248) %i.ap, ptr noundef nonnull align 8 dereferenceable(232) %9)
          to label %bb.p unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !69

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 248) #28, !noalias !69
  br label %.body

bb.p:                                             ; preds = %.noexc
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.ar, ptr %0, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !53
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.r:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.s:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.t:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.n, %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !74
  %i.az = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #27
          to label %.noexc37 unwind label %bb.ah  ; 7 uses

.noexc37:                                         ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 1, ptr %i.ba, align 8, !tbaa !48, !noalias !75
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 1, ptr %i.bb, align 4, !tbaa !50, !noalias !75
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.az, align 8, !tbaa !51, !noalias !75
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC2ENS_13InterpolationEm(ptr noundef nonnull align 8 dereferenceable(232) %i.bc, i32 noundef %i.ay, i64 noundef %.sroa.speculated)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit49 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !75

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %.noexc37
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 248) #28, !noalias !75
  br label %.body

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit49: ; preds = %.noexc37
  store ptr %i.bc, ptr %0, align 8, !tbaa !54
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.be, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 48
  invoke void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(120) %i.bf)
          to label %bb.v unwind label %bb.ai

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit49
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bh = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %bb.w unwind label %bb.aj      ; 0 uses

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  store ptr %9, ptr %7, align 8, !tbaa !67, !alias.scope !78
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !53, !noalias !78 ; 3 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !53, !alias.scope !78
  %.not.i.i.i.i50 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i50, label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataES1_ESt10shared_ptrIT_ERKS2_IT0_E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56, !noalias !78
  %.not.i.i.i.i.i51 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i51, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !3, !noalias !78
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !3, !noalias !78
  br label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataES1_ESt10shared_ptrIT_ERKS2_IT0_E.exit

bb.z:                                             ; preds = %bb.x
  %i.bo = atomicrmw volatile add ptr %i.bk, i32 1 acq_rel, align 4, !noalias !78 ; 0 uses
  br label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataES1_ESt10shared_ptrIT_ERKS2_IT0_E.exit

_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataES1_ESt10shared_ptrIT_ERKS2_IT0_E.exit: ; preds = %bb.w, %bb.y, %bb.z
  invoke void @_ZN16OpenColorIO_v2_513CreateLut3DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut3DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0)
          to label %bb.aa unwind label %bb.ak

bb.aa:                                            ; preds = %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataES1_ESt10shared_ptrIT_ERKS2_IT0_E.exit
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !53 ; 8 uses
  %.not.i.i52 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i52, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bq, align 8, !tbaa !48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !50
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !51
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #25, !inline_history !59
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !51
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #25, !inline_history !59
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56

bb.ad:                                            ; preds = %bb.ab
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i53 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i53, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

bb.af:                                            ; preds = %bb.ad
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i55 = phi i32 [ %i.bt, %bb.ae ], [ %i.cd, %bb.af ]
  %i.ce = icmp eq i32 %.0.i.i.i.i55, 1
  br i1 %i.ce, label %bb.ag, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56, !prof !58

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #25
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56: ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.u
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit49
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.v
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataES1_ESt10shared_ptrIT_ERKS2_IT0_E.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.ak ], [ %i.ch, %bb.aj ]
  call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %6) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.al ], [ %i.cg, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ck = load ptr, ptr %i.k, align 8, !tbaa !53, !noalias !81 ; 2 uses
  %10 = load <2 x ptr>, ptr %4, align 16, !tbaa !63, !noalias !81
  store <2 x ptr> %10, ptr %8, align 16, !tbaa !63, !alias.scope !81
  %.not.i.i.i.i57 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i57, label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataES1_ESt10shared_ptrIT_ERKS2_IT0_E.exit59, label %bb.an

bb.an:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56, !noalias !81
  %.not.i.i.i.i.i58 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i58, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !3, !noalias !81
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !3, !noalias !81
  br label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataES1_ESt10shared_ptrIT_ERKS2_IT0_E.exit59

bb.ap:                                            ; preds = %bb.an
  %i.cp = atomicrmw volatile add ptr %i.cl, i32 1 acq_rel, align 4, !noalias !81 ; 0 uses
  br label %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataES1_ESt10shared_ptrIT_ERKS2_IT0_E.exit59

_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataES1_ESt10shared_ptrIT_ERKS2_IT0_E.exit59: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ao, %bb.ap
  invoke void @_ZN16OpenColorIO_v2_513CreateLut3DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut3DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataES1_ESt10shared_ptrIT_ERKS2_IT0_E.exit59
  %i.cq = load ptr, ptr %3, align 16, !tbaa !67   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 228
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !55
  %i.ct = load ptr, ptr %0, align 8, !tbaa !67    ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %4, align 16, !tbaa !67   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  invoke void @_ZN16OpenColorIO_v2_518FormatMetadataImpl7combineERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.cu, ptr noundef nonnull align 8 dereferenceable(120) %i.cw)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 228
  store i32 %i.cs, ptr %i.cx, align 4, !tbaa !55
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 176 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !51
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef i64 %i.db(ptr noundef nonnull align 8 dereferenceable(48) %i.cy)
          to label %bb.as unwind label %bb.ax     ; 3 uses

bb.as:                                            ; preds = %bb.ar
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 200
  %i.de = mul nsw i64 %i.dc, %i.dc
  %i.df = mul nsw i64 %i.de, %i.dc
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !84 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_513EvalTransformEPKfPflRNS_10OpRcPtrVecE(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.dg, i64 noundef %i.df, ptr noundef nonnull align 8 dereferenceable(144) %5)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %bb.as
  br i1 %.0, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cq, i64 224
  store i32 1, ptr %i.dh, align 8, !tbaa !13
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 224
  store i32 1, ptr %i.di, align 8, !tbaa !13
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 224
  store i32 1, ptr %i.dj, align 8, !tbaa !13
  br label %bb.az

bb.av:                                            ; preds = %_ZSt18const_pointer_castIN16OpenColorIO_v2_511Lut3DOpDataES1_ESt10shared_ptrIT_ERKS2_IT0_E.exit59
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.aw:                                            ; preds = %bb.aq
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ax:                                            ; preds = %bb.ar
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ay:                                            ; preds = %bb.as
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.az:                                            ; preds = %bb.au, %bb.at
  %i.do = load ptr, ptr %i.cj, align 8, !tbaa !53 ; 8 uses
  %.not.i.i60 = icmp eq ptr %i.do, null
  br i1 %.not.i.i60, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 4 uses
  %i.dq = load atomic i64, ptr %i.dp acquire, align 8 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 4294967297
  %i.ds = trunc i64 %i.dq to i32                  ; 2 uses
  br i1 %i.dr, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.dp, align 8, !tbaa !48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 0, ptr %i.dt, align 4, !tbaa !50
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !51
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #25, !inline_history !59
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !51
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #25, !inline_history !59
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64

bb.bc:                                            ; preds = %bb.ba
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i61 = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i61, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eb = add nsw i32 %i.ds, -1
  store i32 %i.eb, ptr %i.dp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62

bb.be:                                            ; preds = %bb.bc
  %i.ec = atomicrmw volatile add ptr %i.dp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i63 = phi i32 [ %i.ds, %bb.bd ], [ %i.ec, %bb.be ]
  %i.ed = icmp eq i32 %.0.i.i.i.i63, 1
  br i1 %i.ed, label %bb.bf, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, !prof !58

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #25
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64: ; preds = %bb.az, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i62, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ee = load ptr, ptr %i.k, align 8, !tbaa !53  ; 8 uses
  %.not.i.i65 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i65, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit69, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 4 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  %i.ei = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %i.eh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.ef, align 8, !tbaa !48
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 0, ptr %i.ej, align 4, !tbaa !50
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !51
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #25, !inline_history !59
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !51
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #25, !inline_history !59
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit69

bb.bi:                                            ; preds = %bb.bg
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i66 = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i66, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.er = add nsw i32 %i.ei, -1
  store i32 %i.er, ptr %i.ef, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i67

bb.bk:                                            ; preds = %bb.bi
  %i.es = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i67

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i67: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i68 = phi i32 [ %i.ei, %bb.bj ], [ %i.es, %bb.bk ]
  %i.et = icmp eq i32 %.0.i.i.i.i68, 1
  br i1 %i.et, label %bb.bl, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit69, !prof !58

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i67
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #25
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit69

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit69: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i67, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !53  ; 8 uses
  %.not.i.i70 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i70, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit69
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 4 uses
  %i.ew = load atomic i64, ptr %i.ev acquire, align 8 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 4294967297
  %i.ey = trunc i64 %i.ew to i32                  ; 2 uses
  br i1 %i.ex, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.ev, align 8, !tbaa !48
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  store i32 0, ptr %i.ez, align 4, !tbaa !50
  %i.fa = load ptr, ptr %i.eu, align 8, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #25, !inline_history !59
  %i.fd = load ptr, ptr %i.eu, align 8, !tbaa !51
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #25, !inline_history !59
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74

bb.bo:                                            ; preds = %bb.bm
  %i.fg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i71 = icmp eq i8 %i.fg, 0
  br i1 %.not.i.i.i71, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fh = add nsw i32 %i.ey, -1
  store i32 %i.fh, ptr %i.ev, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72

bb.bq:                                            ; preds = %bb.bo
  %i.fi = atomicrmw volatile add ptr %i.ev, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i73 = phi i32 [ %i.ey, %bb.bp ], [ %i.fi, %bb.bq ]
  %i.fj = icmp eq i32 %.0.i.i.i.i73, 1
  br i1 %i.fj, label %bb.br, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74, !prof !58
end_hunk_0
