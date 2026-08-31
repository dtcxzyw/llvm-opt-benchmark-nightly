Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/File?download=true
inline.NumInlined: 1646
inline.NumDeleted: 628
begin_hunk_0_@_ZN7openvdb5v13_02io4File4ImplD2Ev:bb.a

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #30
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11, %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !89 ; 3 uses
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit, label %_ZNKSt14default_deleteISiEclEPSi.exit.i

_ZNKSt14default_deleteISiEclEPSi.exit.i:          ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #30, !inline_history !170
  br label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit

_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteISiEclEPSi.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !72 ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN7openvdb5v13_07MetaMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 4294967297
  %i.ck = trunc i64 %i.ci to i32                  ; 2 uses
  br i1 %i.cj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.ch, align 8, !tbaa !74
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 0, ptr %i.cl, align 4, !tbaa !76
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #30, !inline_history !278
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #30, !inline_history !278
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_07MetaMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i14 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i14, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.af:                                            ; preds = %bb.ad
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i16 = phi i32 [ %i.ck, %bb.ae ], [ %i.cu, %bb.af ]
  %i.cv = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.cv, label %bb.ag, label %_ZNSt12__shared_ptrIN7openvdb5v13_07MetaMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !78

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #30
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_07MetaMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_07MetaMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15, %bb.ag
  %i.cw = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_07MetaMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !17
  %i.da = add i64 %i.cz, 1
  tail call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_07MetaMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7openvdb5v13_02io4FileELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7openvdb5v13_02io4FileELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7openvdb5v13_02io4FileELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN7openvdb5v13_02io4FileELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5boost9iostreams6detail11execute_allINS1_14copy_operationINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEENS4_IN7openvdb5v13_02io8TempFileEEEEENS1_26device_close_all_operationIS9_EENSG_ISE_EEEENS1_14execute_traitsIT_NS_9result_ofIFSK_vEE4typeEE11result_typeESK_T0_T1_(ptr noundef byval(%"class.boost::iostreams::detail::copy_operation") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef i64 @_ZN5boost9iostreams6detail11execute_allINS1_14copy_operationINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEENS4_IN7openvdb5v13_02io8TempFileEEEEENS1_26device_close_all_operationIS9_EEEENS1_14execute_traitsIT_NS_9result_ofIFSJ_vEE4typeEE11result_typeESJ_T0_(ptr noundef nonnull byval(%"class.boost::iostreams::detail::copy_operation") align 8 %0, ptr %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !279    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !282  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(64) %i.h), !inline_history !283 ; 0 uses
  ret i64 %i.a

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #30 ; 0 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !279    ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 232
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !282  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %_ZNK5boost9iostreams6detail26device_close_all_operationINS_17reference_wrapperIN7openvdb5v13_02io8TempFileEEEEclEv.exit unwind label %bb.d, !inline_history !284 ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #30 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNK5boost9iostreams6detail26device_close_all_operationINS_17reference_wrapperIN7openvdb5v13_02io8TempFileEEEEclEv.exit unwind label %bb.e

_ZNK5boost9iostreams6detail26device_close_all_operationINS_17reference_wrapperIN7openvdb5v13_02io8TempFileEEEEclEv.exit: ; preds = %bb.c, %bb.d
  invoke void @__cxa_rethrow() #32
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %_ZNK5boost9iostreams6detail26device_close_all_operationINS_17reference_wrapperIN7openvdb5v13_02io8TempFileEEEEclEv.exit, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ad

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #33
  unreachable

bb.h:                                             ; preds = %_ZNK5boost9iostreams6detail26device_close_all_operationINS_17reference_wrapperIN7openvdb5v13_02io8TempFileEEEEclEv.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5boost9iostreams6detail11execute_allINS1_14copy_operationINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEENS4_IN7openvdb5v13_02io8TempFileEEEEENS1_26device_close_all_operationIS9_EEEENS1_14execute_traitsIT_NS_9result_ofIFSJ_vEE4typeEE11result_typeESJ_T0_(ptr noundef byval(%"class.boost::iostreams::detail::copy_operation") align 8 %0, ptr %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !tbaa !106
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !108
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !70
  %i.a = invoke noundef i64 @_ZN5boost9iostreams6detail9copy_implINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEENS3_IN7openvdb5v13_02io8TempFileEEEEElRT_RT0_lN4mpl_5bool_ILb0EEESK_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.06.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2.0.copyload, i64 noundef %.sroa.3.0.copyload)
          to label %_ZN5boost9iostreams6detail11execute_allINS1_14copy_operationINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEENS4_IN7openvdb5v13_02io8TempFileEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSH_vEE4typeEE11result_typeESH_.exit unwind label %bb.b

_ZN5boost9iostreams6detail11execute_allINS1_14copy_operationINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEENS4_IN7openvdb5v13_02io8TempFileEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSH_vEE4typeEE11result_typeESH_.exit: ; preds = %bb.a
  tail call void @_ZN5boost9iostreams6detail9close_allINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret i64 %i.a

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #30 ; 0 uses
  invoke void @_ZN5boost9iostreams6detail9close_allINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNK5boost9iostreams6detail26device_close_all_operationINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEEEclEv.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #30 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNK5boost9iostreams6detail26device_close_all_operationINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEEEclEv.exit unwind label %bb.d

_ZNK5boost9iostreams6detail26device_close_all_operationINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEEEclEv.exit: ; preds = %bb.b, %bb.c
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9iostreams6detail26device_close_all_operationINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEEEclEv.exit, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #33
  unreachable

bb.g:                                             ; preds = %_ZNK5boost9iostreams6detail26device_close_all_operationINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEEEclEv.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5boost9iostreams6detail9copy_implINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEENS3_IN7openvdb5v13_02io8TempFileEEEEElRT_RT0_lN4mpl_5bool_ILb0EEESK_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %.noexc.i.i, label %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEEC2El.exit, !prof !78

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZN5boost9iostreams6detail12basic_bufferIcSaIcEEC2El.exit: ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %2) #29 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEEC2El.exit
  %.01122 = phi i64 [ 0, %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEEC2El.exit ], [ %i.aa, %bb.e ] ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !285
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull %i.b, i64 noundef %2)
          to label %bb.c unwind label %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEED2Ev.exit.loopexit.split-lp, !inline_history !288 ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.h, 1
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEED2Ev.exit14, label %.preheader

.preheader:                                       ; preds = %bb.c, %.noexc
  %.011.i.i.i = phi i64 [ %i.z, %.noexc ], [ 0, %bb.c ] ; 4 uses
  %i.k = icmp slt i64 %.011.i.i.i, %i.h
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %.011.i.i.i
  %i.m = sub nsw i64 %i.h, %.011.i.i.i
  %i.n = load ptr, ptr %1, align 8, !tbaa !279    ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !282  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull %i.l, i64 noundef %i.m)
          to label %.noexc unwind label %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEED2Ev.exit.loopexit, !inline_history !289 ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.y = icmp eq i64 %i.x, -1
  %i.z = add nsw i64 %i.x, %.011.i.i.i
  br i1 %i.y, label %bb.e, label %.preheader

_ZN5boost9iostreams6detail12basic_bufferIcSaIcEED2Ev.exit.loopexit: ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEED2Ev.exit

_ZN5boost9iostreams6detail12basic_bufferIcSaIcEED2Ev.exit.loopexit.split-lp: ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEED2Ev.exit

_ZN5boost9iostreams6detail12basic_bufferIcSaIcEED2Ev.exit: ; preds = %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEED2Ev.exit.loopexit.split-lp, %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEED2Ev.exit.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEED2Ev.exit.loopexit ], [ %lpad.loopexit.split-lp, %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEED2Ev.exit.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %2) #31
  resume { ptr, i32 } %lpad.phi

bb.e:                                             ; preds = %.preheader, %.noexc
  %i.aa = add nsw i64 %i.h, %.01122
  br label %bb.b, !llvm.loop !290

_ZN5boost9iostreams6detail12basic_bufferIcSaIcEED2Ev.exit14: ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %2) #31
  ret i64 %.01122
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost9iostreams6detail9close_allINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !285    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.b)
          to label %.noexc8 unwind label %bb.c

.noexc8:                                          ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5boost9iostreams5closeINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEEEEvRT_St13_Ios_Openmode.exit7

bb.b:                                             ; preds = %.noexc8
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !135
  %i.j = or i32 %i.i, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZN5boost9iostreams5closeINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEEEEvRT_St13_Ios_Openmode.exit7 unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #30 ; 0 uses
  invoke void @_ZN5boost9iostreams5closeINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEEEEvRT_St13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 16)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #30 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #32
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

_ZN5boost9iostreams5closeINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEEEEvRT_St13_Ios_Openmode.exit7: ; preds = %.noexc8, %bb.b
  ret void

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #33
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost9iostreams5closeINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEEEEvRT_St13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp eq i32 %1, 24
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9iostreams6detail9close_allINS_17reference_wrapperISt14basic_ifstreamIcSt11char_traitsIcEEEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5boost9iostreams6detail10close_implINS0_12closable_tagEE5closeISt14basic_ifstreamIcSt11char_traitsIcEEEEvRT_St13_Ios_Openmode.exit
end_hunk_0
