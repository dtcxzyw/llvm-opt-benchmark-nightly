begin_hunk_0_@_ZN2cv3dnn21Eltwise2Int8LayerImpl13setActivationERKNS_3PtrINS0_14dnn5_v2026060515ActivationLayerEEE:bb.a
  %.not.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.f, align 4, !tbaa !83, !noalias !211
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !83, !noalias !211
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !211 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  store ptr %i.c, ptr %2, align 8, !tbaa !214, !alias.scope !205
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr %i.e, ptr %i.k, align 8, !tbaa !115, !alias.scope !205
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.c, ptr %i.l, align 8, !tbaa !214
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.n
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_3dnn14dnn5_v2026060519ActivationLayerInt8EEaSERKS4_.exit, label %bb.h

.thread17:                                        ; preds = %bb.c
  store ptr %i.c, ptr %2, align 8, !tbaa !214, !alias.scope !205
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.e, ptr %i.o, align 8, !tbaa !115, !alias.scope !205
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.c, ptr %i.p, align 8, !tbaa !214
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !115  ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.e, %i.r
  br i1 %.not.i.i.i.i18, label %_ZN2cv3PtrINS_3dnn14dnn5_v2026060519ActivationLayerInt8EEaSERKS4_.exit, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i4 = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %i.s, align 4, !tbaa !83
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !83
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !115
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %.thread17, %bb.j, %bb.i
  %i.x = phi ptr [ %i.o, %.thread17 ], [ %i.k, %bb.i ], [ %i.k, %bb.j ]
  %i.y = phi ptr [ %i.q, %.thread17 ], [ %i.m, %bb.i ], [ %i.m, %bb.j ]
  %i.z = phi ptr [ %i.r, %.thread17 ], [ %i.n, %bb.i ], [ %.pr.pre.i.i.i.i, %bb.j ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aa, align 8, !tbaa !116
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !118
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !inline_history !215
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !inline_history !215
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i9.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i9.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.n ], [ %i.an, %bb.o ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.p, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !120

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.e, ptr %i.y, align 8, !tbaa !115
  %.pre = load ptr, ptr %2, align 8, !tbaa !214
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v2026060519ActivationLayerInt8EEaSERKS4_.exit

_ZN2cv3PtrINS_3dnn14dnn5_v2026060519ActivationLayerInt8EEaSERKS4_.exit: ; preds = %.thread17, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  %i.ap = phi ptr [ %i.k, %bb.g ], [ %i.x, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ], [ %i.o, %.thread17 ]
  %i.aq = phi ptr [ %i.c, %bb.g ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ], [ %i.c, %.thread17 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !216 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !216
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZN2cv3PtrINS_3dnn14dnn5_v2026060519ActivationLayerInt8EEaSERKS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ax = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aw, ptr noundef nonnull align 8 dereferenceable(208) %i.as)
          to label %bb.s unwind label %bb.r       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060519ActivationLayerInt8ELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.ay

bb.s:                                             ; preds = %_ZN2cv3PtrINS_3dnn14dnn5_v2026060519ActivationLayerInt8EEaSERKS4_.exit, %bb.q
  %.pr = load ptr, ptr %i.ap, align 8, !tbaa !115 ; 8 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060519ActivationLayerInt8ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.az, align 8, !tbaa !116
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !118
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #25, !inline_history !119
  %i.bh = load ptr, ptr %.pr, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #25, !inline_history !119
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060519ActivationLayerInt8ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.bc, %bb.w ], [ %i.bm, %bb.x ]
  %i.bn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bn, label %bb.y, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060519ActivationLayerInt8ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !120

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #25
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060519ActivationLayerInt8ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060519ActivationLayerInt8ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.s, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.y
  %.011 = phi i1 [ true, %bb.y ], [ true, %bb.s ], [ true, %bb.u ], [ true, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 %.011
}

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn21Eltwise2Int8LayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %11 = alloca %"struct.cv::MatShape", align 4    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !220    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not71 = icmp eq ptr %i.c, %i.b
  br i1 %.not71, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv3dnn21Eltwise2Int8LayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.23, i32 noundef 146) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %9, align 8, !tbaa !28     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.n = load i64, ptr %i.l, align 8, !tbaa !22
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %common.resume

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.068.lcssa = phi i32 [ 0, %.preheader ], [ %.sroa.speculated, %.lr.ph ] ; 2 uses
  %.033.lcssa = phi i32 [ 0, %.preheader ], [ %.134, %.lr.ph ]
  %.032.lcssa = phi i32 [ 0, %.preheader ], [ %spec.select, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @_ZN2cv8MatShapeC1EiiNS_10DataLayoutE(ptr noundef nonnull align 4 dereferenceable(52) %11, i32 noundef %.068.lcssa, i32 noundef 1, i32 noundef 0)
  %i.p = load ptr, ptr %1, align 8, !tbaa !221    ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !221  ; 2 uses
  %.not6982 = icmp eq ptr %i.p, %i.q
  br i1 %.not6982, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %._crit_edge
  %i.r = load i32, ptr %11, align 4
  %narrow.i42 = call i32 @llvm.smax.i32(i32 %i.r, i32 1) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 12
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.03275 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %.03374 = phi i32 [ %.134, %.lr.ph ], [ 0, %.preheader ]
  %.06873 = phi i32 [ %.sroa.speculated, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.061.072 = phi ptr [ %i.aa, %.lr.ph ], [ %i.c, %.preheader ] ; 4 uses
  %i.t = load i32, ptr %.sroa.061.072, align 4, !tbaa !127
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.06873, i32 %narrow.i) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.061.072, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !128  ; 2 uses
  %i.w = icmp ne i32 %i.v, 0
  %i.x = icmp eq i32 %.03275, 0
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  %spec.select = select i1 %or.cond, i32 %i.v, i32 %.03275 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.061.072, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !129
  %.134 = tail call i32 @llvm.smax.i32(i32 %i.z, i32 %.03374) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.061.072, i64 52 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge86:                                    ; preds = %._crit_edge81, %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %.032.lcssa, ptr %i.ab, align 4, !tbaa !128
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.033.lcssa, ptr %i.ac, align 4, !tbaa !129
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %11)
  %i.ad = load ptr, ptr %4, align 8, !tbaa !220   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !217
  %.not.i.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %._crit_edge86
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !217
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE5clearEv.exit: ; preds = %._crit_edge86, %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  ret i1 true

bb.g:                                             ; preds = %.lr.ph85, %._crit_edge81
  %.sroa.056.083 = phi ptr [ %i.p, %.lr.ph85 ], [ %i.al, %._crit_edge81 ] ; 4 uses
  %i.ag = load i32, ptr %.sroa.056.083, align 4, !tbaa !127 ; 3 uses
  %narrow.i38 = call i32 @llvm.smax.i32(i32 %i.ag, i32 0)
  %i.ah = sub nsw i32 %.068.lcssa, %narrow.i38    ; 3 uses
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.056.083, i64 12
  %i.ak = icmp ult i32 %i.ah, %narrow.i42
  br i1 %i.ak, label %_ZN2cv8MatShapeixEm.exit, label %.lr.ph80._crit_edge

._crit_edge81:                                    ; preds = %_ZN2cv8MatShapeixEm.exit55, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.056.083, i64 52 ; 2 uses
  %.not69 = icmp eq ptr %i.al, %i.q
  br i1 %.not69, label %._crit_edge86, label %bb.g

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit55
  %i.am = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.an = add nuw nsw i32 %i.ah, %i.am            ; 2 uses
  %i.ao = icmp ult i32 %i.an, %narrow.i42
  br i1 %i.ao, label %_ZN2cv8MatShapeixEm.exit, label %.lr.ph80._crit_edge, !llvm.loop !222

.lr.ph80._crit_edge:                              ; preds = %.lr.ph80, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.33, i32 noundef 97) #26
          to label %12 unwind label %13

12:                                               ; preds = %.lr.ph80._crit_edge
  unreachable

13:                                               ; preds = %.lr.ph80._crit_edge
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = load ptr, ptr %7, align 8, !tbaa !28      ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %13
  %18 = load i64, ptr %16, align 8, !tbaa !22
  %19 = add i64 %18, 1
  call void @_ZdlPvm(ptr noundef %15, i64 noundef %19) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %.lr.ph80, %bb.h
  %20 = phi i32 [ %i.an, %bb.h ], [ %i.ah, %.lr.ph80 ]
  %21 = phi i32 [ %i.bb, %bb.h ], [ %i.ag, %.lr.ph80 ]
  %indvars.iv101 = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph80 ] ; 3 uses
  %narrow.i44 = call i32 @llvm.smax.i32(i32 %21, i32 1)
  %22 = zext nneg i32 %narrow.i44 to i64
  %23 = icmp samesign ult i64 %indvars.iv101, %22
  br i1 %23, label %_ZN2cv8MatShapeixEm.exit55, label %bb.i

bb.i:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.33, i32 noundef 103) #26
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %bb.k
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

_ZN2cv8MatShapeixEm.exit55:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.av = zext nneg i32 %20 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv101
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !83
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !83
  %i.ba = call i32 @llvm.smax.i32(i32 %i.ay, i32 %i.az)
  store i32 %i.ba, ptr %i.aw, align 4, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv101, 1 ; 3 uses
  %i.bb = load i32, ptr %.sroa.056.083, align 4, !tbaa !127 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %bb.h, label %._crit_edge81, !llvm.loop !222
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn21Eltwise2Int8LayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !180    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !180
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv3dnn21Eltwise2Int8LayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_, ptr noundef nonnull @.str.23, i32 noundef 175) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !22
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.k = sext i32 %2 to i64
  tail call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.l = load ptr, ptr %5, align 8, !tbaa !82     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  %.not.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.l, ptr %i.m, align 8, !tbaa !81
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv3dnn21Eltwise2Int8LayerImpl10getLayoutsERKSt6vectorINS_10DataLayoutESaIS3_EERS5_iS8_(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 508
  %i.f = load i32, ptr %i.e, align 4, !tbaa !224  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !312  ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !314    ; 4 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2                   ; 12 uses
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph.preheader64, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.m, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi47 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %wide.load = load <2 x i32>, ptr %i.n, align 4, !tbaa !315
  %wide.load48 = load <2 x i32>, ptr %i.o, align 4, !tbaa !315
  %i.p = icmp eq <2 x i32> %wide.load, splat (i32 7)
  %i.q = icmp eq <2 x i32> %wide.load48, splat (i32 7)
  %i.r = zext <2 x i1> %i.p to <2 x i64>
  %i.s = zext <2 x i1> %i.q to <2 x i64>
  %i.t = add <2 x i64> %vec.phi, %i.r             ; 2 uses
  %i.u = add <2 x i64> %vec.phi47, %i.s           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.u, %i.t
  %i.w = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader64

.lr.ph.preheader64:                               ; preds = %.lr.ph.preheader, %middle.block
  %.041.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  %.03440.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv3dnn21Eltwise2Int8LayerImpl10getLayoutsERKSt6vectorINS_10DataLayoutESaIS3_EERS5_iS8_, ptr noundef nonnull @.str.23, i32 noundef 188) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.x

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.w, %middle.block ], [ %i.aj, %.lr.ph ] ; 2 uses
  %i.ad = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv10DataLayoutESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  %i.ae = icmp eq i64 %.lcssa, %i.m
  br i1 %i.ae, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader64, %.lr.ph
  %.041 = phi i64 [ %i.aj, %.lr.ph ], [ %.041.ph, %.lr.ph.preheader64 ]
  %.03440 = phi i64 [ %i.ak, %.lr.ph ], [ %.03440.ph, %.lr.ph.preheader64 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.03440
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !315
  %i.ah = icmp eq i32 %i.ag, 7
  %i.ai = zext i1 %i.ah to i64
  %i.aj = add i64 %.041, %i.ai                    ; 2 uses
  %i.ak = add nuw i64 %.03440, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !317

bb.e:                                             ; preds = %._crit_edge
  %i.al = sext i32 %3 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 7, ptr %i.a, align 4, !tbaa !315
  call void @_ZNSt6vectorIN2cv10DataLayoutESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.am = icmp ult i64 %.lcssa, %i.m
  br i1 %i.am, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.an = load ptr, ptr %1, align 8, !tbaa !314   ; 7 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !314   ; 7 uses
  %min.iters.check50 = icmp ult i64 %i.m, 8
  %i.ap = ptrtoaddr ptr %i.ao to i64
  %i.aq = ptrtoaddr ptr %i.an to i64
  %i.ar = sub i64 %i.aq, %i.ap
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = select i1 %min.iters.check50, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph49.preheader, label %vector.ph51

vector.ph51:                                      ; preds = %.preheader
  %n.vec53 = and i64 %i.m, -8                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next58, %vector.body54 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index55 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
end_hunk_0
