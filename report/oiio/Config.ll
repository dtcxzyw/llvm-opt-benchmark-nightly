inline.NumInlined: 10698
inline.NumDeleted: 2974
begin_hunk_0_@_ZNK16OpenColorIO_v2_56Config4Impl24getAllInternalTransformsERSt6vectorISt10shared_ptrIKNS_9TransformEESaIS6_EE:bb.a
  br i1 %i.mh, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 0, ptr %i.mf, align 8, !tbaa !15
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 12
  store i32 0, ptr %i.mj, align 4, !tbaa !17
  %i.mk = load ptr, ptr %i.me, align 8, !tbaa !18
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8
  call void %i.mm(ptr noundef nonnull align 8 dereferenceable(16) %i.me) #32, !inline_history !482
  %i.mn = load ptr, ptr %i.me, align 8, !tbaa !18
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %i.mp = load ptr, ptr %i.mo, align 8
  call void %i.mp(ptr noundef nonnull align 8 dereferenceable(16) %i.me) #32, !inline_history !482
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit134

bb.ec:                                            ; preds = %bb.ea
  %i.mq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i131 = icmp eq i8 %i.mq, 0
  br i1 %.not.i.i.i131, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.mr = add nsw i32 %i.mi, -1
  store i32 %i.mr, ptr %i.mf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132

bb.ee:                                            ; preds = %bb.ec
  %i.ms = atomicrmw volatile add ptr %i.mf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132: ; preds = %bb.ee, %bb.ed
  %.0.i.i.i.i133 = phi i32 [ %i.mi, %bb.ed ], [ %i.ms, %bb.ee ]
  %i.mt = icmp eq i32 %.0.i.i.i.i133, 1
  br i1 %i.mt, label %bb.ef, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit134, !prof !22

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.me) #32
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit134

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit134: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exit129, %bb.eb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i132, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.mu = load ptr, ptr %10, align 16, !tbaa !407 ; 2 uses
  %.not161 = icmp eq ptr %i.mu, null
  br i1 %.not161, label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_59TransformEESaIS4_EE9push_backERKS4_.exit141, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit134
  %i.mv = load ptr, ptr %i.hp, align 8, !tbaa !413 ; 6 uses
  %i.mw = load ptr, ptr %i.hq, align 8, !tbaa !416
  %.not.i135 = icmp eq ptr %i.mv, %i.mw
  br i1 %.not.i135, label %bb.el, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  store ptr %i.mu, ptr %i.mv, align 8, !tbaa !407
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.my = load ptr, ptr %i.hr, align 8, !tbaa !14 ; 3 uses
  store ptr %i.my, ptr %i.mx, align 8, !tbaa !14
  %.not.i.i.i.i136 = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i.i136, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2ERKS3_.exit.i138, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 3 uses
  %i.na = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i137 = icmp eq i8 %i.na, 0
  br i1 %.not.i.i.i.i.i137, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.nb = load i32, ptr %i.mz, align 4, !tbaa !3
  %i.nc = add nsw i32 %i.nb, 1
  store i32 %i.nc, ptr %i.mz, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2ERKS3_.exit.i138

bb.ek:                                            ; preds = %bb.ei
  %i.nd = atomicrmw volatile add ptr %i.mz, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i139 = load ptr, ptr %i.hp, align 8, !tbaa !413
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2ERKS3_.exit.i138

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2ERKS3_.exit.i138: ; preds = %bb.ek, %bb.ej, %bb.eh
  %i.ne = phi ptr [ %i.mv, %bb.eh ], [ %i.mv, %bb.ej ], [ %.pre.i139, %bb.ek ]
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store ptr %i.nf, ptr %i.hp, align 8, !tbaa !413
  br label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_59TransformEESaIS4_EE9push_backERKS4_.exit141

bb.el:                                            ; preds = %bb.eg
  invoke void @_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_59TransformEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.mv, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_59TransformEESaIS4_EE9push_backERKS4_.exit141 unwind label %bb.ds

bb.em:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_59TransformEESaIS4_EE9push_backERKS4_.exit124
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.et

_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_59TransformEESaIS4_EE9push_backERKS4_.exit141: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2ERKS3_.exit.i138, %bb.el, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit134
  %i.nh = load ptr, ptr %i.hr, align 8, !tbaa !14 ; 8 uses
  %.not.i.i142 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i142, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit146, label %bb.en

bb.en:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_59TransformEESaIS4_EE9push_backERKS4_.exit141
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 4 uses
  %i.nj = load atomic i64, ptr %i.ni acquire, align 8 ; 2 uses
  %i.nk = icmp eq i64 %i.nj, 4294967297
  %i.nl = trunc i64 %i.nj to i32                  ; 2 uses
  br i1 %i.nk, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  store i32 0, ptr %i.ni, align 8, !tbaa !15
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 12
  store i32 0, ptr %i.nm, align 4, !tbaa !17
  %i.nn = load ptr, ptr %i.nh, align 8, !tbaa !18
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #32, !inline_history !482
  %i.nq = load ptr, ptr %i.nh, align 8, !tbaa !18
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8
  call void %i.ns(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #32, !inline_history !482
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit146

bb.ep:                                            ; preds = %bb.en
  %i.nt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i143 = icmp eq i8 %i.nt, 0
  br i1 %.not.i.i.i143, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.nu = add nsw i32 %i.nl, -1
  store i32 %i.nu, ptr %i.ni, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144

bb.er:                                            ; preds = %bb.ep
  %i.nv = atomicrmw volatile add ptr %i.ni, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144: ; preds = %bb.er, %bb.eq
  %.0.i.i.i.i145 = phi i32 [ %i.nl, %bb.eq ], [ %i.nv, %bb.er ]
  %i.nw = icmp eq i32 %.0.i.i.i.i145, 1
  br i1 %i.nw, label %bb.es, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit146, !prof !22

bb.es:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nh) #32
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit146

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit146: ; preds = %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_59TransformEESaIS4_EE9push_backERKS4_.exit141, %bb.eo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0147.0180, i64 16 ; 2 uses
  %.not159 = icmp eq ptr %i.nx, %i.ho
  br i1 %.not159, label %._crit_edge183, label %bb.dl

bb.et:                                            ; preds = %bb.em, %bb.ds
  %.pn = phi { ptr, i32 } [ %i.li, %bb.ds ], [ %i.ng, %bb.em ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.cm, %bb.ce, %bb.av
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.av ], [ %.pn32, %bb.ce ], [ %i.ig, %bb.cm ], [ %.pn, %bb.et ]
  resume { ptr, i32 } %.pn34.pn
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZNK16OpenColorIO_v2_56Config17getCurrentContextEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.103") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !13
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !13
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_57ContextEEC2IS1_vEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_57ContextEEC2IS1_vEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_57ContextEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_57ContextEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_123GetColorSpaceReferencesERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EERKSt10shared_ptrIKNS_9TransformEERKSD_IKNS_7ContextEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::shared_ptr.244", align 8 ; 11 uses
  %6 = alloca %"class.std::shared_ptr.107", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.267", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::shared_ptr.205", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.std::shared_ptr.270", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !407    ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.dw, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.g = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_514GroupTransformE, i64 0) #32, !noalias !490 ; 4 uses
  %.not.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.not.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %5, align 8, !tbaa !491, !alias.scope !490
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14, !noalias !490 ; 3 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !14, !alias.scope !490
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21, !noalias !490
  %.not.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3, !noalias !490
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3, !noalias !490
  br label %.preheader

.thread:                                          ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !490
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  br label %bb.s

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split: ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4, !noalias !490 ; 0 uses
  %.pr.pre = load ptr, ptr %5, align 8, !tbaa !491 ; 2 uses
  %i.p = icmp eq ptr %.pr.pre, null
  br i1 %i.p, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.e, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split
  %i.q = phi ptr [ %.pr.pre, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split ], [ %i.g, %bb.e ], [ %i.g, %bb.c ] ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #32
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre = load ptr, ptr %5, align 8, !tbaa !491
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.x = phi ptr [ %.pre, %.lr.ph ], [ %i.as, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %.0218 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.107") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef %.0218)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_123GetColorSpaceReferencesERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EERKSt10shared_ptrIKNS_9TransformEERKSD_IKNS_7ContextEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !14  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ac, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !17
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #32, !inline_history !482
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #32, !inline_history !482
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.af, %bb.l ], [ %i.ap, %bb.m ]
  %i.aq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aq, label %bb.n, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #32
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.ar = add nuw nsw i32 %.0218, 1               ; 2 uses
  %i.as = load ptr, ptr %5, align 8, !tbaa !491   ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef i32 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #32
  %i.ax = icmp slt i32 %i.ar, %i.aw
  br i1 %i.ax, label %bb.f, label %.loopexit, !llvm.loop !494

bb.o:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn59 = phi { ptr, i32 } [ %i.az, %bb.p ], [ %i.ay, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.dx

bb.r:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split
  %.pre.a = load ptr, ptr %1, align 8, !tbaa !407, !noalias !495 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.ba = icmp eq ptr %.pre.a, null
  br i1 %i.ba, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19ColorSpaceTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread284, label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %i.bb = phi ptr [ %i.f, %.thread ], [ %.pre.a, %bb.r ]
  %i.bc = tail call ptr @__dynamic_cast(ptr nonnull %i.bb, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_519ColorSpaceTransformE, i64 0) #32, !noalias !495 ; 4 uses
  %.not.not.i.i62 = icmp eq ptr %i.bc, null
  br i1 %.not.not.i.i62, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19ColorSpaceTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread284, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.bc, ptr %7, align 8, !tbaa !502, !alias.scope !495
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !14, !noalias !495 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !14, !alias.scope !495
  %.not.i.i.i.i.i63 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i63, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19ColorSpaceTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21, !noalias !495
  %.not.i.i.i.i.i.i64 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i64, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19ColorSpaceTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !3, !noalias !495
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !3, !noalias !495
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19ColorSpaceTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19ColorSpaceTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread284: ; preds = %bb.r, %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !alias.scope !495
  br label %bb.ay

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19ColorSpaceTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.u
  %i.bk = atomicrmw volatile add ptr %i.bg, i32 1 acq_rel, align 4, !noalias !495 ; 0 uses
  %.pr211.pre = load ptr, ptr %7, align 8, !tbaa !502 ; 2 uses
  %.not215 = icmp eq ptr %.pr211.pre, null
  br i1 %.not215, label %bb.ay, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19ColorSpaceTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19ColorSpaceTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread: ; preds = %bb.t, %bb.v, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19ColorSpaceTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.bl = phi ptr [ %.pr211.pre, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19ColorSpaceTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit ], [ %i.bc, %bb.v ], [ %i.bc, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.bm = load ptr, ptr %2, align 8, !tbaa !505
  %i.bn = invoke noundef ptr @_ZNK16OpenColorIO_v2_519ColorSpaceTransform6getSrcEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %bb.w unwind label %bb.as

bb.w:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_19ColorSpaceTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread
  %i.bo = tail call noundef ptr @_ZNK16OpenColorIO_v2_57Context16resolveStringVarEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef %i.bn) #32 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  store ptr %i.bp, ptr %8, align 8, !tbaa !24
  %i.bq = icmp eq ptr %i.bo, null
  br i1 %i.bq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.326) #33
          to label %.noexc unwind label %bb.at

.noexc:                                           ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.br = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i64 %i.br, ptr %i.e, align 8, !tbaa !32
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.y
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc65 unwind label %bb.at  ; 2 uses

.noexc65:                                         ; preds = %.noexc.i
  store ptr %i.bt, ptr %8, align 8, !tbaa !31
  %i.bu = load i64, ptr %i.e, align 8, !tbaa !32
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc65, %bb.y
  %i.bv = phi ptr [ %i.bt, %.noexc65 ], [ %i.bp, %bb.y ] ; 2 uses
  switch i64 %i.br, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.bw = load i8, ptr %i.bo, align 1, !tbaa !21
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !21
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %i.bo, i64 %i.br, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  %i.bx = load i64, ptr %i.e, align 8, !tbaa !32  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !27
  %i.bz = load ptr, ptr %8, align 8, !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.cb = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc67 unwind label %bb.au  ; 2 uses

.noexc67:                                         ; preds = %bb.ab
  %i.cc = extractvalue { ptr, ptr } %i.cb, 1      ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN11StringUtils7CompareERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a
  %wide.load76 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !21, !noalias !548 ; 3 uses
  %i.bo = add <16 x i8> %wide.load75, splat (i8 -65)
  %i.bp = add <16 x i8> %wide.load76, splat (i8 -65)
  %i.bq = icmp ult <16 x i8> %i.bo, splat (i8 26)
  %i.br = icmp ult <16 x i8> %i.bp, splat (i8 26)
  %i.bs = or disjoint <16 x i8> %wide.load75, splat (i8 32)
  %i.bt = or disjoint <16 x i8> %wide.load76, splat (i8 32)
  %i.bu = select <16 x i1> %i.bq, <16 x i8> %i.bs, <16 x i8> %wide.load75
  %i.bv = select <16 x i1> %i.br, <16 x i8> %i.bt, <16 x i8> %wide.load76
  store <16 x i8> %i.bu, ptr %next.gep74, align 1, !tbaa !21, !noalias !548
  store <16 x i8> %i.bv, ptr %i.bn, align 1, !tbaa !21, !noalias !548
  %index.next77 = add nuw i64 %index73, 32        ; 2 uses
  %i.bw = icmp eq i64 %index.next77, %n.vec71
  br i1 %i.bw, label %middle.block78, label %vector.body72, !llvm.loop !551

middle.block78:                                   ; preds = %vector.body72
  %cmp.n79 = icmp eq i64 %i.bk, %n.vec71
  br i1 %cmp.n79, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %vec.epilog.iter.check83

vec.epilog.iter.check83:                          ; preds = %middle.block78
  %min.epilog.iters.check84 = icmp eq i64 %n.mod.vf70, 0
  br i1 %min.epilog.iters.check84, label %.lr.ph.i.i11.preheader, label %vec.epilog.ph85, !prof !450

vec.epilog.ph85:                                  ; preds = %vector.main.loop.iter.check67, %vec.epilog.iter.check83
  %vec.epilog.resume.val80 = phi i64 [ %n.vec71, %vec.epilog.iter.check83 ], [ 0, %vector.main.loop.iter.check67 ]
  %n.vec87 = and i64 %i.bk, -8                    ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bj, i64 %n.vec87
  br label %vec.epilog.vector.body88

vec.epilog.vector.body88:                         ; preds = %vec.epilog.vector.body88, %vec.epilog.ph85
  %index89 = phi i64 [ %vec.epilog.resume.val80, %vec.epilog.ph85 ], [ %index.next92, %vec.epilog.vector.body88 ] ; 2 uses
  %next.gep90 = getelementptr i8, ptr %i.bj, i64 %index89 ; 2 uses
  %wide.load91 = load <8 x i8>, ptr %next.gep90, align 1, !tbaa !21, !noalias !548 ; 3 uses
  %i.by = add <8 x i8> %wide.load91, splat (i8 -65)
  %i.bz = icmp ult <8 x i8> %i.by, splat (i8 26)
  %i.ca = or disjoint <8 x i8> %wide.load91, splat (i8 32)
  %i.cb = select <8 x i1> %i.bz, <8 x i8> %i.ca, <8 x i8> %wide.load91
  store <8 x i8> %i.cb, ptr %next.gep90, align 1, !tbaa !21, !noalias !548
  %index.next92 = add nuw i64 %index89, 8         ; 2 uses
  %i.cc = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.cc, label %vec.epilog.middle.block93, label %vec.epilog.vector.body88, !llvm.loop !552

vec.epilog.middle.block93:                        ; preds = %vec.epilog.vector.body88
  %cmp.n94 = icmp eq i64 %i.bk, %n.vec87
  br i1 %cmp.n94, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %.lr.ph.i.i11.preheader

.lr.ph.i.i11.preheader:                           ; preds = %iter.check81, %vec.epilog.iter.check83, %vec.epilog.middle.block93
  %.sroa.0.08.i.i12.ph = phi ptr [ %i.bj, %iter.check81 ], [ %i.bm, %vec.epilog.iter.check83 ], [ %i.bx, %vec.epilog.middle.block93 ]
  br label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i.i11.preheader, %.lr.ph.i.i11
  %.sroa.0.08.i.i12 = phi ptr [ %i.cg, %.lr.ph.i.i11 ], [ %.sroa.0.08.i.i12.ph, %.lr.ph.i.i11.preheader ] ; 3 uses
  %i.cd = load i8, ptr %.sroa.0.08.i.i12, align 1, !tbaa !21, !noalias !548 ; 3 uses
  %i.ce = add i8 %i.cd, -65
  %or.cond.i.i.i.i13 = icmp ult i8 %i.ce, 26
  %i.cf = or disjoint i8 %i.cd, 32
  %.0.i.i.i.i14 = select i1 %or.cond.i.i.i.i13, i8 %i.cf, i8 %i.cd
  store i8 %.0.i.i.i.i14, ptr %.sroa.0.08.i.i12, align 1, !tbaa !21, !noalias !548
  %i.cg = getelementptr i8, ptr %.sroa.0.08.i.i12, i64 1 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.cg, %i.bl
  br i1 %.not.i.i15, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %.lr.ph.i.i11, !llvm.loop !553

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16: ; preds = %.lr.ph.i.i11, %vec.epilog.middle.block93, %middle.block78
  %.pre.i17 = load ptr, ptr %5, align 8, !tbaa !31, !noalias !548
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, %bb.h
  %i.ch = phi ptr [ %.pre.i17, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16 ], [ %i.bj, %bb.h ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ci, ptr %4, align 8, !tbaa !24, !alias.scope !548
  %i.cj = icmp eq ptr %i.ch, %i.aw
  br i1 %i.cj, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

bb.i:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18
  %i.ck = load i64, ptr %i.bg, align 8, !tbaa !27, !noalias !548 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.cm, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18
  store ptr %i.ch, ptr %4, align 8, !tbaa !31, !alias.scope !548
  %i.cn = load i64, ptr %i.aw, align 8, !tbaa !21, !noalias !548
  store i64 %i.cn, ptr %i.ci, align 8, !tbaa !21, !alias.scope !548
  %.pre4.i20 = load i64, ptr %i.bg, align 8, !tbaa !27, !noalias !548
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.i
  %i.co = phi ptr [ %i.ci, %bb.i ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ] ; 3 uses
  %i.cp = phi i64 [ %i.ck, %bb.i ], [ %.pre4.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !27, !alias.scope !548
  store ptr %i.aw, ptr %5, align 8, !tbaa !31, !noalias !548
  store i64 0, ptr %i.bg, align 8, !tbaa !27, !noalias !548
  store i8 0, ptr %i.aw, align 8, !tbaa !21, !noalias !548
  %i.cr = load i64, ptr %i.av, align 8, !tbaa !27
  %i.cs = icmp eq i64 %i.cr, %i.cp
  br i1 %i.cs, label %bb.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.k:                                             ; preds = %bb.j
  %i.ct = icmp eq i64 %i.cp, 0
  br i1 %i.ct, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = load ptr, ptr %2, align 8, !tbaa !31
  %bcmp.i = call i32 @bcmp(ptr %i.cu, ptr %i.co, i64 %i.cp)
  %i.cv = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.cw = phi i1 [ false, %bb.j ], [ %i.cv, %bb.l ], [ true, %bb.k ]
  %i.cx = icmp eq ptr %i.co, %i.ci
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.cy = icmp ult i64 %i.cp, 16
  call void @llvm.assume(i1 %i.cy)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.cz = load i64, ptr %i.ci, align 8, !tbaa !21
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.da) #34
  %.pre = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.db = icmp eq ptr %.pre, %i.aw
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !21
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.dd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.de = load ptr, ptr %2, align 8, !tbaa !31    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.ao
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.dg = load i64, ptr %i.ao, align 8, !tbaa !21
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.di = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.c
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !21
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i1 %i.cw

bb.m:                                             ; preds = %.noexc.i8
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.dn = load ptr, ptr %2, align 8, !tbaa !31    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.ao
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.m
  %i.dp = load i64, ptr %i.ao, align 8, !tbaa !21
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.dr = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.c
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !21
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.dm
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK16OpenColorIO_v2_513ViewTransform7getNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare void @_ZNK16OpenColorIO_v2_59FileRules4Impl8validateERKNS_6ConfigE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetFileReferencesERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EERKSt10shared_ptrIKNS_9TransformEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::shared_ptr.244", align 8 ; 11 uses
  %3 = alloca %"class.std::shared_ptr.107", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.217", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !407    ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_514GroupTransformE, i64 0) #32, !noalias !560 ; 4 uses
  %.not.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.not.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %2, align 8, !tbaa !491, !alias.scope !560
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14, !noalias !560 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !14, !alias.scope !560
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21, !noalias !560
  %.not.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !560
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3, !noalias !560
  br label %.preheader

.thread:                                          ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !560
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  br label %bb.s

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split: ; preds = %bb.d
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4, !noalias !560 ; 0 uses
  %.pr.pre = load ptr, ptr %2, align 8, !tbaa !491 ; 2 uses
  %i.l = icmp eq ptr %.pr.pre, null
  br i1 %i.l, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.e, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split
  %i.m = phi ptr [ %.pr.pre, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split ], [ %i.c, %bb.e ], [ %i.c, %bb.c ] ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #32
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load ptr, ptr %2, align 8, !tbaa !491
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = phi ptr [ %.pre, %.lr.ph ], [ %i.ao, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %.043 = phi i32 [ 0, %.lr.ph ], [ %i.an, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.107") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %.043)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetFileReferencesERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EERKSt10shared_ptrIKNS_9TransformEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !14   ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.y, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !17
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #32, !inline_history !482
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #32, !inline_history !482
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.l ], [ %i.al, %bb.m ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.n, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #32
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.an = add nuw nsw i32 %.043, 1                ; 2 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !491   ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #32
  %i.at = icmp slt i32 %i.an, %i.as
  br i1 %i.at, label %bb.f, label %.loopexit, !llvm.loop !561

bb.o:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn16 = phi { ptr, i32 } [ %i.av, %bb.p ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.ay

bb.r:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_14GroupTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exitthread-pre-split
  %.pre.a = load ptr, ptr %1, align 8, !tbaa !407, !noalias !562 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.aw = icmp eq ptr %.pre.a, null
  br i1 %i.aw, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread65, label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %i.ax = phi ptr [ %i.b, %.thread ], [ %.pre.a, %bb.r ]
  %i.ay = tail call ptr @__dynamic_cast(ptr nonnull %i.ax, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_513FileTransformE, i64 0) #32, !noalias !562 ; 4 uses
  %.not.not.i.i19 = icmp eq ptr %i.ay, null
  br i1 %.not.not.i.i19, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread65, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.ay, ptr %4, align 8, !tbaa !569, !alias.scope !562
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !14, !noalias !562 ; 3 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !14, !alias.scope !562
  %.not.i.i.i.i.i20 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i20, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21, !noalias !562
  %.not.i.i.i.i.i.i21 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i21, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !3, !noalias !562
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !3, !noalias !562
  br label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread65: ; preds = %bb.r, %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !562
  br label %bb.ak

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.u
  %i.bg = atomicrmw volatile add ptr %i.bc, i32 1 acq_rel, align 4, !noalias !562 ; 0 uses
  %.pr40.pre = load ptr, ptr %4, align 8, !tbaa !569 ; 2 uses
  %.not42 = icmp eq ptr %.pr40.pre, null
  br i1 %.not42, label %bb.ak, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread

_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread: ; preds = %bb.t, %bb.v, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.bh = phi ptr [ %.pr40.pre, %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit ], [ %i.ay, %bb.v ], [ %i.ay, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.bi = invoke noundef ptr @_ZNK16OpenColorIO_v2_513FileTransform6getSrcEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %bb.w unwind label %bb.ah      ; 4 uses

bb.w:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_13FileTransformEKNS_9TransformEEESt10shared_ptrIT_ERKS5_IT0_E.exit.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store ptr %i.bj, ptr %5, align 8, !tbaa !24
  %i.bk = icmp eq ptr %i.bi, null
  br i1 %i.bk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.326) #33
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bi) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !32
  %i.bm = icmp ugt i64 %i.bl, 15
  br i1 %i.bm, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.y
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc22 unwind label %bb.ai  ; 2 uses

.noexc22:                                         ; preds = %.noexc.i
  store ptr %i.bn, ptr %5, align 8, !tbaa !31
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.bo, ptr %i.bj, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc22, %bb.y
  %i.bp = phi ptr [ %i.bn, %.noexc22 ], [ %i.bj, %bb.y ] ; 2 uses
  switch i64 %i.bl, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.bq = load i8, ptr %i.bi, align 1, !tbaa !21
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !21
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr nonnull align 1 %i.bi, i64 %i.bl, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  %i.br = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !27
  %i.bt = load ptr, ptr %5, align 8, !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.bv = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc24 unwind label %bb.aj  ; 2 uses

.noexc24:                                         ; preds = %bb.ab
  %i.bw = extractvalue { ptr, ptr } %i.bv, 1      ; 5 uses
  %.not.i.i23 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i23, label %bb.ag, label %bb.ac
end_hunk_1
