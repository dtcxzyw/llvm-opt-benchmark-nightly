Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/util?download=true
inline.NumInlined: 1089
inline.NumDeleted: 581
begin_hunk_0_@_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_15BaseObjectNNPtrE:bb.a
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, !prof !33

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  store ptr %i.p, ptr %i.n, align 8, !tbaa !29
  br label %bb.n

_ZN5osgeo4proj4util15BaseObjectNNPtraSERKS2_.exit: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.sroa.013.0 = load ptr, ptr %.sroa.013.023, align 8, !tbaa !76 ; 2 uses
  %.not = icmp eq ptr %.sroa.013.0, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtraSERKS2_.exit, %bb.a
  %i.am = tail call noundef ptr @_ZNSt7__cxx114listISt4pairINS_12basic_stringIcSt11char_traitsIcESaIcEEEN5osgeo4proj4util15BaseObjectNNPtrEESaISB_EE14_M_create_nodeIJRKS6_RKSA_EEEPSt10_List_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #28
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !83
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !83
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %._crit_edge
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dropbox::oxygen::nn.37", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27, !noalias !188 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !31, !noalias !188
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !32, !noalias !188
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !19, !noalias !188
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  invoke void @_ZN5osgeo4proj4util10BoxedValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN7dropbox6oxygen14nn_make_sharedIN5osgeo4proj4util10BoxedValueEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS0_2nnISt10shared_ptrIT_EEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !188

common.resume:                                    ; preds = %bb.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i ], [ %i.x, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #29, !noalias !188
  br label %common.resume

_ZN7dropbox6oxygen14nn_make_sharedIN5osgeo4proj4util10BoxedValueEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS0_2nnISt10shared_ptrIT_EEEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.e, ptr %3, align 8, !tbaa !86, !alias.scope !187
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.g, align 8, !tbaa !29, !alias.scope !187
  invoke void @_ZN5osgeo4proj4util11PropertyMap7Private3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN7dropbox6oxygen2nnISt10shared_ptrINS1_10BoxedValueEEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZN7dropbox6oxygen14nn_make_sharedIN5osgeo4proj4util10BoxedValueEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS0_2nnISt10shared_ptrIT_EEEDpOT0_.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj4util10BoxedValueEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !32
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28, !inline_history !5
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28, !inline_history !5
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj4util10BoxedValueEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.v, %bb.g ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.w, label %bb.h, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj4util10BoxedValueEEED2Ev.exit, !prof !33

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj4util10BoxedValueEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj4util10BoxedValueEEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %0

bb.i:                                             ; preds = %_ZN7dropbox6oxygen14nn_make_sharedIN5osgeo4proj4util10BoxedValueEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS0_2nnISt10shared_ptrIT_EEEDpOT0_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj4util10BoxedValueEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj4util11PropertyMap7Private3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN7dropbox6oxygen2nnISt10shared_ptrINS1_10BoxedValueEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 6 uses
  %.sroa.012.018 = load ptr, ptr %0, align 8, !tbaa !76 ; 2 uses
  %.not19 = icmp eq ptr %.sroa.012.018, %0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = icmp eq i64 %i.b, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.012.020 = phi ptr [ %.sroa.012.018, %.lr.ph ], [ %.sroa.012.0, %.critedge ] ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.012.020, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.012.020, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !50
  %bcmp.i = tail call i32 @bcmp(ptr %i.i, ptr %i.c, i64 %i.b)
  %i.j = icmp eq i32 %bcmp.i, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.k = load ptr, ptr %2, align 8, !tbaa !86     ; 3 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 4 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !29
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS1_10BoxedValueEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.o, align 4, !tbaa !27
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !27
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS1_10BoxedValueEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.l, align 8, !tbaa !29
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !36
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS1_10BoxedValueEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS1_10BoxedValueEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit: ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.k, %bb.e ], [ %.pre.pre, %bb.f ]
  %i.u = phi ptr [ %i.n, %bb.e ], [ %.pr.pre, %bb.f ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.020, i64 48
  store ptr %i.t, ptr %i.v, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.020, i64 56 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 3 uses
  %.not.i.i.i.i.i10 = icmp eq ptr %i.u, %i.x
  br i1 %.not.i.i.i.i.i10, label %bb.q, label %bb.g

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS1_10BoxedValueEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.020, i64 48
  store ptr %i.k, ptr %i.y, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.020, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29  ; 2 uses
  %.not.i.i.i.i.i1029 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i1029, label %bb.q, label %bb.k

bb.g:                                             ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS1_10BoxedValueEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  %.not7.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not7.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i.i11 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !27
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !27
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !29
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.g
  %4 = phi ptr [ null, %bb.g ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %5 = phi ptr [ %i.x, %bb.g ], [ %i.x, %bb.i ], [ %.pr.pre.i.i.i.i.i, %bb.j ] ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %5, null
  br i1 %.not8.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS1_10BoxedValueEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit.thread, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %6 = phi ptr [ %5, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i ], [ %i.aa, %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS1_10BoxedValueEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit.thread ] ; 7 uses
  %7 = phi ptr [ %i.w, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i ], [ %i.z, %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS1_10BoxedValueEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit.thread ] ; 3 uses
  %8 = phi ptr [ %4, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i ], [ null, %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS1_10BoxedValueEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit.thread ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ag, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !32
  %i.al = load ptr, ptr %6, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %6) #28, !inline_history !4
  %i.ao = load ptr, ptr %6, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %6) #28, !inline_history !4
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i9.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i9.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aj, %bb.n ], [ %i.at, %bb.o ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.au, label %bb.p, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, !prof !33

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %9 = phi ptr [ %7, %bb.p ], [ %7, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i ], [ %7, %bb.l ], [ %i.w, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i ]
  %10 = phi ptr [ %8, %bb.p ], [ %8, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i ], [ %8, %bb.l ], [ %4, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i ]
  store ptr %10, ptr %9, align 8, !tbaa !29
  br label %bb.q

.critedge:                                        ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.sroa.012.0 = load ptr, ptr %.sroa.012.020, align 8, !tbaa !76 ; 2 uses
  %.not = icmp eq ptr %.sroa.012.0, %0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.q:                                             ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS1_10BoxedValueEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit.thread, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS1_10BoxedValueEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.r

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %i.av = tail call noundef ptr @_ZNSt7__cxx114listISt4pairINS_12basic_stringIcSt11char_traitsIcESaIcEEEN5osgeo4proj4util15BaseObjectNNPtrEESaISB_EE14_M_create_nodeIJRKS6_RKN7dropbox6oxygen2nnISt10shared_ptrINS9_10BoxedValueEEEEEEEPSt10_List_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %0) #28
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !83
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !83
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj4util10BoxedValueEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj4util10BoxedValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !189
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !189
  br label %_ZNSt12__shared_ptrIN5osgeo4proj4util10BoxedValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj4util10BoxedValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !33

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt12__shared_ptrIN5osgeo4proj4util10BoxedValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj4util10BoxedValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dropbox::oxygen::nn.37", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27, !noalias !195 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !31, !noalias !195
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !32, !noalias !195
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !19, !noalias !195
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  invoke void @_ZN5osgeo4proj4util10BoxedValueC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef %2)
          to label %_ZN7dropbox6oxygen14nn_make_sharedIN5osgeo4proj4util10BoxedValueEJRPKcEEENS0_2nnISt10shared_ptrIT_EEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !195

common.resume:                                    ; preds = %bb.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i ], [ %i.x, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #29, !noalias !195
  br label %common.resume

_ZN7dropbox6oxygen14nn_make_sharedIN5osgeo4proj4util10BoxedValueEJRPKcEEENS0_2nnISt10shared_ptrIT_EEEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.e, ptr %3, align 8, !tbaa !86, !alias.scope !194
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.g, align 8, !tbaa !29, !alias.scope !194
  invoke void @_ZN5osgeo4proj4util11PropertyMap7Private3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN7dropbox6oxygen2nnISt10shared_ptrINS1_10BoxedValueEEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZN7dropbox6oxygen14nn_make_sharedIN5osgeo4proj4util10BoxedValueEJRPKcEEENS0_2nnISt10shared_ptrIT_EEEDpOT0_.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj4util10BoxedValueEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !32
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28, !inline_history !5
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28, !inline_history !5
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj4util10BoxedValueEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.v, %bb.g ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.w, label %bb.h, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj4util10BoxedValueEEED2Ev.exit, !prof !33

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj4util10BoxedValueEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj4util10BoxedValueEEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %0

bb.i:                                             ; preds = %_ZN7dropbox6oxygen14nn_make_sharedIN5osgeo4proj4util10BoxedValueEJRPKcEEENS0_2nnISt10shared_ptrIT_EEEDpOT0_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj4util10BoxedValueEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dropbox::oxygen::nn.37", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27, !noalias !201 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !31, !noalias !201
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !32, !noalias !201
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !19, !noalias !201
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  invoke void @_ZN5osgeo4proj4util10BoxedValueC1Ei(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %2)
          to label %_ZN7dropbox6oxygen14nn_make_sharedIN5osgeo4proj4util10BoxedValueEJRiEEENS0_2nnISt10shared_ptrIT_EEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !201

common.resume:                                    ; preds = %bb.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i ], [ %i.x, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5osgeo4proj4util10BoxedValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
end_hunk_0
