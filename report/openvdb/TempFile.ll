Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/TempFile?download=true
inline.NumInlined: 691
inline.NumDeleted: 315
begin_hunk_0_@_ZN7openvdb5v13_02io8TempFileC2Ev:bb.a
; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io8TempFile12TempFileImplC2ERSo(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !23
  store i8 0, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void @_ZN5boost9iostreams15file_descriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.h, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  store i32 4, ptr %i.j, align 8, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE, i64 16), ptr %i.d, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 -1, ptr %i.k, align 8, !tbaa !48
  invoke void @_ZN7openvdb5v13_02io8TempFile12TempFileImpl4initERSo(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev(ptr noundef nonnull align 8 dead_on_return(132) dereferenceable(132) %i.d) #29
  tail call void @_ZN5boost9iostreams15file_descriptorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.a, align 8, !tbaa !24
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_02io8TempFileC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.b, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 0, ptr %i.c, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i8 0, ptr %i.d, align 1, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN7openvdb5v13_02io8TempFileE0_So, i64 24), ptr %0, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN7openvdb5v13_02io8TempFileE0_So, i64 64), ptr %i.a, align 8, !tbaa !14
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef null)
          to label %_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE.exit unwind label %bb.d

_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN7openvdb5v13_02io8TempFileE, i64 24), ptr %0, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN7openvdb5v13_02io8TempFileE, i64 64), ptr %i.a, align 8, !tbaa !14
  %i.f = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #27
          to label %bb.b unwind label %bb.e       ; 3 uses

bb.b:                                             ; preds = %_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  invoke void @_ZN7openvdb5v13_02io8TempFile12TempFileImplC2ERSo(ptr noundef nonnull align 8 dereferenceable(188) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !17
  ret void

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 192) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.j, %bb.f ], [ %i.i, %bb.e ]
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7openvdb5v13_02io8TempFileD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 2 uses
  %i.l = invoke noundef i32 @_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEES8_NS1_15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSH_vEE4typeEE11result_typeESH_T0_T1_(ptr nonnull align 8 dereferenceable(132) %i.i, i32 8, ptr nonnull align 8 dereferenceable(132) %i.i, i32 16, ptr nonnull %i.j)
          to label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i.i unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #29 ; 0 uses
  store i32 0, ptr %i.k, align 4, !tbaa !56
  invoke void @__cxa_rethrow() #30
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #31
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i.i: ; preds = %bb.a
  store i32 0, ptr %i.k, align 4, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.t = load i32, ptr %i.s, align 8, !tbaa !48   ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.f, label %_ZN7openvdb5v13_02io8TempFile5closeEv.exit

bb.f:                                             ; preds = %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i.i
  %i.v = invoke i32 @close(i32 noundef %i.t)
          to label %_ZN7openvdb5v13_02io8TempFile5closeEv.exit unwind label %bb.l ; 0 uses

_ZN7openvdb5v13_02io8TempFile5closeEv.exit:       ; preds = %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i.i, %bb.f
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !17   ; 6 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7openvdb5v13_02io8TempFile12TempFileImplESt14default_deleteIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7openvdb5v13_02io8TempFile5closeEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  tail call void @_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev(ptr noundef nonnull align 8 dead_on_return(132) dereferenceable(132) %i.x) #29
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %2 = atomicrmw add ptr %i.aa, i32 -1 acq_rel, align 4
  %i.ab = icmp eq i32 %2, 1
  br i1 %i.ab, label %bb.i, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !0

.noexc.i.i.i.i.i.i:                               ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %3 = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %i.ag = icmp eq i32 %3, 1
  br i1 %i.ag, label %bb.j, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit.i.i.i

bb.j:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_ZN5boost9iostreams15file_descriptorD2Ev.exit.i.i.i unwind label %bb.k, !inline_history !0

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #31
  unreachable

_ZN5boost9iostreams15file_descriptorD2Ev.exit.i.i.i: ; preds = %bb.j, %.noexc.i.i.i.i.i.i, %bb.h, %bb.g
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !49  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt14default_deleteIN7openvdb5v13_02io8TempFile12TempFileImplEEclEPS4_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN5boost9iostreams15file_descriptorD2Ev.exit.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !24
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #28
  br label %_ZNKSt14default_deleteIN7openvdb5v13_02io8TempFile12TempFileImplEEclEPS4_.exit.i

_ZNKSt14default_deleteIN7openvdb5v13_02io8TempFile12TempFileImplEEclEPS4_.exit.i: ; preds = %_ZN5boost9iostreams15file_descriptorD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 192) #28
  br label %_ZNSt10unique_ptrIN7openvdb5v13_02io8TempFile12TempFileImplESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN7openvdb5v13_02io8TempFile12TempFileImplESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZN7openvdb5v13_02io8TempFile5closeEv.exit, %_ZNKSt14default_deleteIN7openvdb5v13_02io8TempFile12TempFileImplEEclEPS4_.exit.i
  ret void

bb.l:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.c, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.p, %bb.c ]
  %i.as = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.as) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_02io8TempFile5closeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.f = invoke noundef i32 @_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEES8_NS1_15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSH_vEE4typeEE11result_typeESH_T0_T1_(ptr nonnull align 8 dereferenceable(132) %i.c, i32 8, ptr nonnull align 8 dereferenceable(132) %i.c, i32 16, ptr nonnull %i.d)
          to label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #29 ; 0 uses
  store i32 0, ptr %i.e, align 4, !tbaa !56
  invoke void @__cxa_rethrow() #30
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #31
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i: ; preds = %bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.n = load i32, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.g, label %_ZN7openvdb5v13_02io8TempFile12TempFileImpl5closeEv.exit

bb.g:                                             ; preds = %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i
  %i.p = tail call i32 @close(i32 noundef %i.n)   ; 0 uses
  br label %_ZN7openvdb5v13_02io8TempFile12TempFileImpl5closeEv.exit

_ZN7openvdb5v13_02io8TempFile12TempFileImpl5closeEv.exit: ; preds = %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit.i, %bb.g
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #29 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7openvdb5v13_02io8TempFileD1Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN7openvdb5v13_02io8TempFileD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @_ZTTN7openvdb5v13_02io8TempFileE) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #29
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N7openvdb5v13_02io8TempFileD1Ev(ptr noundef %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @_ZN7openvdb5v13_02io8TempFileD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @_ZTTN7openvdb5v13_02io8TempFileE) #29, !inline_history !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.e) #29, !inline_history !58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7openvdb5v13_02io8TempFileD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN7openvdb5v13_02io8TempFileD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @_ZTTN7openvdb5v13_02io8TempFileE) #29, !inline_history !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #29, !inline_history !58
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 280) #28
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N7openvdb5v13_02io8TempFileD0Ev(ptr noundef %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  tail call void @_ZN7openvdb5v13_02io8TempFileD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @_ZTTN7openvdb5v13_02io8TempFileE) #29, !inline_history !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.e) #29, !inline_history !90
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef 280) #28, !inline_history !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7openvdb5v13_02io8TempFile8filenameB5cxx11Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7openvdb5v13_02io8TempFile7is_openEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  %i.e = trunc i32 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD1Ev(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD0Ev(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io8TempFile12TempFileImpl4initERSo(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_02io8TempFile12TempFileImpl4initERSo:bb.a
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %bb.h, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEEvEET_SC_RKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #30
          to label %.noexc18 unwind label %bb.ay

.noexc18:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEEvEET_SC_RKS0_.exit
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 4 uses
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #27
          to label %.noexc19 unwind label %bb.ay  ; 11 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.af
  store i8 0, ptr %i.am, align 1, !tbaa !24
  %i.an = icmp sgt i64 %i.af, 0
  br i1 %i.an, label %bb.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr align 1 %.sroa.057.1, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %.noexc19
  %.not.i17.i.i.i = icmp eq ptr %.sroa.057.1, null
  br i1 %.not.i17.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.057.1, i64 noundef %i.af) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak ; 4 uses
  %i.ap = invoke i32 @mkstemp(ptr noundef nonnull %i.al)
          to label %bb.l unwind label %bb.q       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !48
  %i.ar = icmp slt i32 %i.ap, 0
  br i1 %i.ar, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !23
  store i8 0, ptr %i.as, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.4, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.av = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6) #29 ; 0 uses
  %i.aw = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.o
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !24
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.w

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.p
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !24
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.q:                                             ; preds = %bb.y, %bb.aj, %_ZN5boost9iostreams15file_descriptorD2Ev.exit, %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.r:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.s:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.u

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn11 = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %i.bj, %bb.s ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.u ], [ %i.bi, %bb.r ]
  %.1 = extractvalue { ptr, i32 } %.pn11.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.bl = call ptr @__cxa_begin_catch(ptr %.1) #29 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.bm = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef nonnull @.str.17, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_07IoErrorE, i64 16), ptr %i.bm, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTIN7openvdb5v13_07IoErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #30
          to label %bb.az unwind label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.as
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.x
  %i.bq = load i64, ptr %i.as, align 8, !tbaa !24
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %.thread

bb.y:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !23
  %i.bu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #29
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.bt, ptr noundef nonnull %i.al, i64 noundef %i.bu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.exit unwind label %bb.q ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.exit: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.bw = load i32, ptr %i.aq, align 8, !tbaa !48
  invoke void @_ZN5boost9iostreams20file_descriptor_sinkC1EiNS0_21file_descriptor_flagsE(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.bw, i32 noundef 0)
          to label %bb.z unwind label %bb.ap

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !57 ; 2 uses
  %i.ca = load <2 x ptr>, ptr %7, align 16, !tbaa !96
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10shared_ptrINS_9iostreams6detail20file_descriptor_implEEC2ERKS4_.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = atomicrmw add ptr %i.cb, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN5boost10shared_ptrINS_9iostreams6detail20file_descriptor_implEEC2ERKS4_.exit.i.i.i

_ZN5boost10shared_ptrINS_9iostreams6detail20file_descriptor_implEEC2ERKS4_.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !57 ; 7 uses
  store <2 x ptr> %i.ca, ptr %i.bx, align 8, !tbaa !96
  %.not.i.i2.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i2.i.i.i, label %_ZN5boost9iostreams20file_descriptor_sinkaSERKS1_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost10shared_ptrINS_9iostreams6detail20file_descriptor_implEEC2ERKS4_.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %12 = atomicrmw add ptr %i.cf, i32 -1 acq_rel, align 4
  %i.cg = icmp eq i32 %12, 1
  br i1 %i.cg, label %bb.ac, label %_ZN5boost9iostreams20file_descriptor_sinkaSERKS1_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.ce)
          to label %.noexc.i.i.i.i.i unwind label %bb.ae, !inline_history !0

.noexc.i.i.i.i.i:                                 ; preds = %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %13 = atomicrmw add ptr %i.ck, i32 -1 acq_rel, align 4
  %i.cl = icmp eq i32 %13, 1
  br i1 %i.cl, label %bb.ad, label %_ZN5boost9iostreams20file_descriptor_sinkaSERKS1_.exit

bb.ad:                                            ; preds = %.noexc.i.i.i.i.i
  %i.cm = load ptr, ptr %i.ce, align 8, !tbaa !14
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.ce)
          to label %_ZN5boost9iostreams20file_descriptor_sinkaSERKS1_.exit unwind label %bb.ae, !inline_history !0

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #31
  unreachable

_ZN5boost9iostreams20file_descriptor_sinkaSERKS1_.exit: ; preds = %_ZN5boost10shared_ptrINS_9iostreams6detail20file_descriptor_implEEC2ERKS4_.exit.i.i.i, %bb.ab, %.noexc.i.i.i.i.i, %bb.ad
  %i.cr = load ptr, ptr %i.by, align 8, !tbaa !57 ; 7 uses
  %.not.i.i.i31 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i31, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5boost9iostreams20file_descriptor_sinkaSERKS1_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %14 = atomicrmw add ptr %i.cs, i32 -1 acq_rel, align 4
  %i.ct = icmp eq i32 %14, 1
  br i1 %i.ct, label %bb.ag, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit

bb.ag:                                            ; preds = %bb.af
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !14
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %.noexc.i.i.i unwind label %bb.ai, !inline_history !0

.noexc.i.i.i:                                     ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %15 = atomicrmw add ptr %i.cx, i32 -1 acq_rel, align 4
  %i.cy = icmp eq i32 %15, 1
  br i1 %i.cy, label %bb.ah, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit

bb.ah:                                            ; preds = %.noexc.i.i.i
  %i.cz = load ptr, ptr %i.cr, align 8, !tbaa !14
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %_ZN5boost9iostreams15file_descriptorD2Ev.exit unwind label %bb.ai, !inline_history !0

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #31
  unreachable

_ZN5boost9iostreams15file_descriptorD2Ev.exit:    ; preds = %_ZN5boost9iostreams20file_descriptor_sinkaSERKS1_.exit, %bb.af, %.noexc.i.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  invoke void @_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE4openERS2_ll(ptr noundef nonnull align 8 dereferenceable(132) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 noundef -1, i64 noundef -1)
          to label %bb.aj unwind label %bb.q

bb.aj:                                            ; preds = %_ZN5boost9iostreams15file_descriptorD2Ev.exit
  %i.df = load ptr, ptr %1, align 8, !tbaa !14
  %i.dg = getelementptr i8, ptr %i.df, i64 -24
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds i8, ptr %1, i64 %i.dh
  %i.dj = invoke noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.di, ptr noundef nonnull %i.de)
          to label %bb.ak unwind label %bb.q      ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load ptr, ptr %1, align 8, !tbaa !14
  %i.dl = getelementptr i8, ptr %i.dk, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %1, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !97
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.dr, ptr %8, align 8, !tbaa !20
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ds, align 8, !tbaa !23
  store i8 0, ptr %i.dr, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.dt = load ptr, ptr %10, align 8, !tbaa !49
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !23
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.dt, i64 noundef %i.dv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.as ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.an
  %i.dx = load ptr, ptr %10, align 8, !tbaa !49   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !24
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.ec = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %11) #29 ; 0 uses
  %i.ed = load ptr, ptr %11, align 8, !tbaa !49   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.ao
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !24
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.aw

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.exit
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.thread

bb.aq:                                            ; preds = %bb.al
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.av

bb.ar:                                            ; preds = %bb.am
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.as:                                            ; preds = %bb.an
  %i.el = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.em = load ptr, ptr %10, align 8, !tbaa !49   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.as
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !24
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.ar ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %i.el, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.au

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn10 = phi { ptr, i32 } [ %i.er, %bb.at ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #29
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.aq
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %bb.au ], [ %i.ej, %bb.aq ]
  %.4 = extractvalue { ptr, i32 } %.pn10.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.es = call ptr @__cxa_begin_catch(ptr %.4) #29 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.et = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.et, ptr noundef nonnull @.str.17, ptr noundef nonnull align 8 dereferenceable(32) %8) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_07IoErrorE, i64 16), ptr %i.et, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIN7openvdb5v13_07IoErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #30
          to label %bb.az unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.dr
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.ax
  %i.ex = load i64, ptr %i.dr, align 8, !tbaa !24
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %.thread

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ak) #28
  %i.ez = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.f
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.fb = load i64, ptr %i.f, align 8, !tbaa !24
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.ay:                                            ; preds = %bb.h, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %.sroa.057.1, null
  br i1 %.not.i.i.i50, label %.body, label %.thread

.thread:                                          ; preds = %bb.ap, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.ay
  %.pn1274 = phi { ptr, i32 } [ %i.fd, %bb.ay ], [ %i.ei, %bb.ap ], [ %i.bh, %bb.q ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  %.sroa.057.073 = phi ptr [ %.sroa.057.1, %bb.ay ], [ %i.al, %bb.ap ], [ %i.al, %bb.q ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ] ; 2 uses
  %.sroa.17.072 = phi ptr [ %.sroa.17.1, %bb.ay ], [ %i.ao, %bb.ap ], [ %i.ao, %bb.q ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  %i.fe = ptrtoint ptr %.sroa.17.072 to i64
  %i.ff = ptrtoint ptr %.sroa.057.073 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.057.073, i64 noundef %i.fg) #28
  br label %.body

.body:                                            ; preds = %.thread, %bb.ay, %_ZNSt12_Vector_baseIcSaIcEED2Ev.exit.i
  %.pn12.pn = phi { ptr, i32 } [ %i.ac, %_ZNSt12_Vector_baseIcSaIcEED2Ev.exit.i ], [ %.pn1274, %.thread ], [ %i.fd, %bb.ay ] ; 2 uses
  %i.fh = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.f
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %.body
  %i.fj = load i64, ptr %i.f, align 8, !tbaa !24
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn12.pn.pn = phi { ptr, i32 } [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn12.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.pn12.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn12.pn.pn

bb.az:                                            ; preds = %bb.aw, %bb.w
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev(ptr noundef nonnull align 8 dead_on_return(132) dereferenceable(132) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = and i32 %i.b, 5
  %or.cond = icmp eq i32 %i.c, 5
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = invoke noundef i32 @_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEES8_NS1_15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSH_vEE4typeEE11result_typeESH_T0_T1_(ptr nonnull align 8 dereferenceable(132) %0, i32 8, ptr nonnull align 8 dereferenceable(132) %0, i32 16, ptr nonnull %i.d)
          to label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #29 ; 0 uses
  store i32 0, ptr %i.a, align 8, !tbaa !56
  invoke void @__cxa_rethrow() #30
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit: ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !56
  br label %bb.g

.body:                                            ; preds = %bb.d
  %i.l = extractvalue { ptr, i32 } %i.i, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #29 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5closeEv.exit, %bb.a, %.body
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.q) #28, !inline_history !61
  br label %_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit.i

_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit.i: ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load i8, ptr %i.r, align 8, !tbaa !33, !range !62, !noundef !63
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.i, label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev.exit

bb.i:                                             ; preds = %_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57   ; 7 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %1 = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.x = icmp eq i32 %1, 1
  br i1 %i.x, label %bb.k, label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.m, !inline_history !1

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %2 = atomicrmw add ptr %i.ab, i32 -1 acq_rel, align 4
  %i.ac = icmp eq i32 %2, 1
  br i1 %i.ac, label %bb.l, label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev.exit

bb.l:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev.exit unwind label %bb.m, !inline_history !1

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #31, !inline_history !61
  unreachable

_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev.exit: ; preds = %_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit.i, %bb.i, %bb.j, %.noexc.i.i.i.i.i.i.i, %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #29, !inline_history !61
  ret void

bb.n:                                             ; preds = %.body
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost9iostreams15file_descriptorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 7 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5boost10shared_ptrINS_9iostreams6detail20file_descriptor_implEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %1 = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.d = icmp eq i32 %1, 1
  br i1 %i.d, label %bb.c, label %_ZN5boost10shared_ptrINS_9iostreams6detail20file_descriptor_implEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc.i.i unwind label %bb.e, !inline_history !0

.noexc.i.i:                                       ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %2 = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.i = icmp eq i32 %2, 1
  br i1 %i.i, label %bb.d, label %_ZN5boost10shared_ptrINS_9iostreams6detail20file_descriptor_implEED2Ev.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN5boost10shared_ptrINS_9iostreams6detail20file_descriptor_implEED2Ev.exit unwind label %bb.e, !inline_history !0

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31
  unreachable

_ZN5boost10shared_ptrINS_9iostreams6detail20file_descriptor_implEED2Ev.exit: ; preds = %bb.a, %bb.b, %.noexc.i.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

declare void @_ZN5boost9iostreams15file_descriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev(ptr noundef nonnull align 8 dead_on_return(132) dereferenceable(132) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE5imbueERKSt6locale(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::locale", align 8       ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #29
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !14, !noalias !100
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE8pubimbueERKSt6locale.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  resume { ptr, i32 } %i.j

_ZNSt15basic_streambufIcSt11char_traitsIcEE8pubimbueERKSt6locale.exit: ; preds = %bb.c
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6localeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %1) #29 ; 0 uses
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZNSt15basic_streambufIcSt11char_traitsIcEE8pubimbueERKSt6locale.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNSt15basic_streambufIcSt11char_traitsIcEE6setbufEPcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { i64, i64 } @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE7seekoffElSt12_Ios_SeekdirSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(132) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp eq i32 %2, 1                        ; 2 uses
  %i.e = icmp eq i32 %3, 8
  %i.f = and i1 %i.e, %i.c
  %or.cond3.i = and i1 %i.d, %i.f
  br i1 %or.cond3.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %.not.i = icmp sgt i64 %i.k, %1
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  %.not22.i = icmp sgt i64 %1, %i.o
  br i1 %.not22.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = shl i64 %1, 32
  %i.q = ashr exact i64 %i.p, 32
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 %i.q
  store ptr %i.r, ptr %i.a, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = tail call { i64, i64 } @_ZN5boost9iostreams15file_descriptor4seekElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 noundef 0, i32 noundef 1) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = extractvalue { i64, i64 } %i.t, 1
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !67
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %.neg26.i = sub i64 %i.u, %i.y
  %i.aa = add i64 %.neg26.i, %i.z
  %.fca.0.insert.i.i = insertvalue { i64, i64 } poison, i64 %i.aa, 0
  %.fca.1.insert.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i, i64 %i.v, 1
  br label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9seek_implElSt12_Ios_SeekdirSt13_Ios_Openmode.exit

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !68
  %.not23.i = icmp eq ptr %i.ac, null
  br i1 %.not23.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %0, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(132) %0), !inline_history !2 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.d, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !65  ; 2 uses
  %.not24.i = icmp eq ptr %i.ah, null
  br i1 %.not24.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !67
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %.neg.i = add i64 %1, %i.al
  %i.am = sub i64 %.neg.i, %i.ak
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.0.i = phi i64 [ %i.am, %bb.i ], [ %1, %bb.h ], [ %1, %bb.g ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, i8 0, i64 48, i1 false)
  %i.ap = tail call { i64, i64 } @_ZN5boost9iostreams15file_descriptor4seekElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 noundef %.0.i, i32 noundef %2)
  br label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9seek_implElSt12_Ios_SeekdirSt13_Ios_Openmode.exit

_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9seek_implElSt12_Ios_SeekdirSt13_Ios_Openmode.exit: ; preds = %bb.d, %bb.j
  %.pn.i = phi { i64, i64 } [ %.fca.1.insert.i.i, %bb.d ], [ %i.ap, %bb.j ]
  ret { i64, i64 } %.pn.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { i64, i64 } @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE7seekposESt4fposI11__mbstate_tESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(132) %0, i64 %1, i64 %2, i32 noundef %3) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %.not23.i = icmp eq ptr %i.b, null
  br i1 %.not23.i, label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9seek_implElSt12_Ios_SeekdirSt13_Ios_Openmode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(132) %0), !inline_history !2 ; 0 uses
  br label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9seek_implElSt12_Ios_SeekdirSt13_Ios_Openmode.exit

_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9seek_implElSt12_Ios_SeekdirSt13_Ios_Openmode.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.i = tail call { i64, i64 } @_ZN5boost9iostreams15file_descriptor4seekElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef %1, i32 noundef 0)
  ret { i64, i64 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE4syncEv(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE10close_implESt13_Ios_Openmode:bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(132) %0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEE5closeINS1_16linked_streambufIcSt11char_traitsIcEEEEEvSt13_Ios_OpenmodePT_.exit.sink.split

_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEE5closeINS1_16linked_streambufIcSt11char_traitsIcEEEEEvSt13_Ios_OpenmodePT_.exit.sink.split: ; preds = %bb.a, %.split4
  %.sink = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN5boost9iostreams15file_descriptor5closeEv(ptr noundef nonnull align 8 dereferenceable(16) %.sink)
  br label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEE5closeINS1_16linked_streambufIcSt11char_traitsIcEEEEEvSt13_Ios_OpenmodePT_.exit

_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEE5closeINS1_16linked_streambufIcSt11char_traitsIcEEEEEvSt13_Ios_OpenmodePT_.exit: ; preds = %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEE5closeINS1_16linked_streambufIcSt11char_traitsIcEEEEEvSt13_Ios_OpenmodePT_.exit.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE10auto_closeEv(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = and i32 %i.b, 4
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE14set_auto_closeEb(ptr noundef nonnull align 8 dereferenceable(132) %0, i1 noundef zeroext %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = and i32 %i.b, -5
  %i.d = select i1 %1, i32 4, i32 0
  %i.e = or disjoint i32 %i.c, %i.d
  store i32 %i.e, ptr %i.a, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE11strict_syncEv(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9sync_implEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = invoke noundef i64 @_ZN5boost9iostreams15file_descriptor5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef %i.d, i64 noundef %i.g)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.k = icmp eq i64 %i.j, %i.g
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !60
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  store ptr %i.m, ptr %i.a, align 8, !tbaa !68
  store ptr %i.m, ptr %i.c, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.p, ptr %i.q, align 8, !tbaa !70
  br label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9sync_implEv.exit

bb.d:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59   ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.j ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = load i64, ptr %i.v, align 8, !tbaa !60
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w
  store ptr %i.u, ptr %i.c, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.x, ptr %i.y, align 8, !tbaa !70
  %i.z = ptrtoint ptr %i.r to i64
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = shl i64 %i.ab, 32
  %i.ad = ashr exact i64 %i.ac, 32
  %i.ae = getelementptr inbounds i8, ptr %i.u, i64 %i.ad
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !68
  br label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9sync_implEv.exit

_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9sync_implEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64 ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEE5flushINS1_16linked_streambufIcSt11char_traitsIcEEEEEbPT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9sync_implEv.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %.noexc3 unwind label %bb.f, !inline_history !3

.noexc3:                                          ; preds = %bb.e
  %i.al = icmp ne i32 %i.ak, -1
  br label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEE5flushINS1_16linked_streambufIcSt11char_traitsIcEEEEEbPT_.exit

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = tail call ptr @__cxa_begin_catch(ptr %i.an) #29 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEE5flushINS1_16linked_streambufIcSt11char_traitsIcEEEEEbPT_.exit

_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEE5flushINS1_16linked_streambufIcSt11char_traitsIcEEEEEbPT_.exit: ; preds = %.noexc3, %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9sync_implEv.exit, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ true, %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9sync_implEv.exit ], [ %i.al, %.noexc3 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE14component_typeEv(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @_ZTIN5boost9iostreams20file_descriptor_sinkE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE14component_implEv(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE13init_get_areaEv(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.d, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.e, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE13init_put_areaEv(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  %.sink2 = select i1 %.not, ptr null, ptr %i.e   ; 2 uses
  %.sink = select i1 %.not, ptr null, ptr %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sink2, ptr %i.i, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink2, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink, ptr %i.k, align 8, !tbaa !70
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev(ptr noundef nonnull align 8 dead_on_return(132) dereferenceable(132) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !60
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.d) #28
  br label %_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit

_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !33, !range !62, !noundef !63
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEED2Ev.exit

bb.c:                                             ; preds = %_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %1 = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4
  %i.k = icmp eq i32 %1, 1
  br i1 %i.k, label %bb.e, label %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.g, !inline_history !0

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %2 = atomicrmw add ptr %i.o, i32 -1 acq_rel, align 4
  %i.p = icmp eq i32 %2, 1
  br i1 %i.p, label %bb.f, label %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEED2Ev.exit

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEED2Ev.exit unwind label %bb.g, !inline_history !0

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #31
  unreachable

_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEED2Ev.exit: ; preds = %_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit, %bb.c, %bb.d, %.noexc.i.i.i.i.i.i, %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !60
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.d) #28, !inline_history !61
  br label %_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit.i

_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !33, !range !62, !noundef !63
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev.exit

bb.c:                                             ; preds = %_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 7 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %1 = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4
  %i.k = icmp eq i32 %1, 1
  br i1 %i.k, label %bb.e, label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.g, !inline_history !1

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %2 = atomicrmw add ptr %i.o, i32 -1 acq_rel, align 4
  %i.p = icmp eq i32 %2, 1
  br i1 %i.p, label %bb.f, label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev.exit

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev.exit unwind label %bb.g, !inline_history !1

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #31, !inline_history !61
  unreachable

_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev.exit: ; preds = %_ZN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEED2Ev.exit.i, %bb.c, %bb.d, %.noexc.i.i.i.i.i.i.i, %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #29, !inline_history !61
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #28
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %1 = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.d = icmp eq i32 %1, 1
  br i1 %i.d, label %bb.c, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc.i.i.i unwind label %bb.e, !inline_history !0

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %2 = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.i = icmp eq i32 %2, 1
  br i1 %i.i, label %bb.d, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN5boost9iostreams15file_descriptorD2Ev.exit unwind label %bb.e, !inline_history !0

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31
  unreachable

_ZN5boost9iostreams15file_descriptorD2Ev.exit:    ; preds = %bb.a, %bb.b, %.noexc.i.i.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6localeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5boost15throw_exceptionINSt8ios_base7failureB5cxx11EEEvRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 80) #29 ; 3 uses
  invoke void @_ZN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE, ptr nonnull @_ZN5boost10wrapexceptINSt8ios_base7failureB5cxx11EED2Ev) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_base7failureB5cxx11D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #3

declare { i64, i64 } @_ZN5boost9iostreams15file_descriptor4seekElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12system_error, i64 16), ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !74
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.f, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 -1, ptr %i.g, align 4, !tbaa !107
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE, i64 16), ptr %0, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE, i64 64), ptr %i.a, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE, i64 104), ptr %i.d, align 8, !tbaa !14
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost10wrapexceptINSt8ios_base7failureB5cxx11EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !4 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

_ZN5boost9exceptionD2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt8ios_base7failureB5cxx11D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.j) #29
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZNSt8ios_base7failureB5cxx11D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK5boost10wrapexceptINSt8ios_base7failureB5cxx11EE5cloneEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #29, !inline_history !110
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !74
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt8ios_base7failureB5cxx11E, i64 16), ptr %i.b, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 4 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !77
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.c unwind label %.body, !inline_history !108

.body:                                            ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8ios_base7failureB5cxx11D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #29, !inline_history !110
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE, i64 16), ptr %i.a, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE, i64 64), ptr %i.b, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE, i64 104), ptr %i.f, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.p)
          to label %_ZN5boost10wrapexceptINSt8ios_base7failureB5cxx11EE7deleterD2Ev.exit unwind label %_ZN5boost10wrapexceptINSt8ios_base7failureB5cxx11EE7deleterD2Ev.exit7

_ZN5boost10wrapexceptINSt8ios_base7failureB5cxx11EE7deleterD2Ev.exit: ; preds = %bb.c
  ret ptr %i.a

_ZN5boost10wrapexceptINSt8ios_base7failureB5cxx11EE7deleterD2Ev.exit7: ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #29, !inline_history !109
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost10wrapexceptINSt8ios_base7failureB5cxx11EE7deleterD2Ev.exit7, %.body
  %.pn = phi { ptr, i32 } [ %i.q, %_ZN5boost10wrapexceptINSt8ios_base7failureB5cxx11EE7deleterD2Ev.exit7 ], [ %i.m, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5boost10wrapexceptINSt8ios_base7failureB5cxx11EE7rethrowEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 80) #29 ; 3 uses
  invoke void @_ZN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptINSt8ios_base7failureB5cxx11EEE, ptr nonnull @_ZN5boost10wrapexceptINSt8ios_base7failureB5cxx11EED2Ev) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #29
  resume { ptr, i32 } %i.b
}

end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_02io8TempFile12TempFileImpl10getTempDirB5cxx11Ev:bb.a
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !24
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %i.be

bb.t:                                             ; preds = %bb.b, %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bj, ptr %0, align 8, !tbaa !20
  %i.bk = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.bk, ptr %i.b, align 8, !tbaa !71
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.t
  %i.bm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !49
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !71
  store i64 %i.bn, ptr %i.bj, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.t
  %i.bo = phi ptr [ %i.bm, %.noexc.i ], [ %i.bj, %bb.t ] ; 2 uses
  switch i64 %i.bk, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.bp = load i8, ptr %i.c, align 1, !tbaa !24
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !24
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr nonnull align 1 %i.c, i64 %i.bk, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i, %bb.u, %bb.v
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !71  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !23
  %i.bs = load ptr, ptr %0, align 8, !tbaa !49
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.ac

bb.x:                                             ; preds = %bb.a
  %i.bu = tail call ptr @getenv(ptr noundef nonnull @.str.10) #29 ; 4 uses
  %.not20.not = icmp eq ptr %i.bu, null
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bv, ptr %0, align 8, !tbaa !20
  br i1 %.not20.not, label %._crit_edge.i.i52, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bu) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.bw, ptr %i.a, align 8, !tbaa !71
  %i.bx = icmp ugt i64 %i.bw, 15
  br i1 %i.bx, label %.noexc.i48, label %._crit_edge.i.i47

.noexc.i48:                                       ; preds = %bb.y
  %i.by = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.by, ptr %0, align 8, !tbaa !49
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.bz, ptr %i.bv, align 8, !tbaa !24
  br label %._crit_edge.i.i47

._crit_edge.i.i47:                                ; preds = %.noexc.i48, %bb.y
  %i.ca = phi ptr [ %i.by, %.noexc.i48 ], [ %i.bv, %bb.y ] ; 2 uses
  switch i64 %i.bw, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i47
  %i.cb = load i8, ptr %i.bu, align 1, !tbaa !24
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !24
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr nonnull align 1 %i.bu, i64 %i.bw, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i.i47, %bb.z, %bb.aa
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !71  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !23
  %i.ce = load ptr, ptr %0, align 8, !tbaa !49
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  store i8 0, ptr %i.cf, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.ac

._crit_edge.i.i52:                                ; preds = %bb.x
  store i32 1886221359, ptr %i.bv, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.cg, align 8, !tbaa !23
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.ch, align 4, !tbaa !24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w, %._crit_edge.i.i52
  ret void

bb.ad:                                            ; preds = %bb.r
  unreachable
}

declare i32 @mkstemp(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_09ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #29
  ret void
}

declare void @_ZN5boost9iostreams20file_descriptor_sinkC1EiNS0_21file_descriptor_flagsE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE4openERS2_ll(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::ios_base::failure", align 8 ; 5 uses
  %5 = alloca %"class.std::error_code", align 8   ; 5 uses
  %6 = alloca %"class.boost::iostreams::file_descriptor_sink", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN5boost9iostreams20file_descriptor_sinkC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt17iostream_categoryv() #32
  store i32 1, ptr %5, align 8, !tbaa !56
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.d, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !tbaa !73
  invoke void @_ZNSt8ios_base7failureB5cxx11C1EPKcRKSt10error_code(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN5boost15throw_exceptionINSt8ios_base7failureB5cxx11EEEvRKT_(ptr noundef nonnull align 8 dereferenceable(32) %4) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8ios_base7failureB5cxx11D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %.body

bb.e:                                             ; preds = %bb.a
  invoke void @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE4openERKS3_ll(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %2, i64 noundef %3)
          to label %_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9open_implERKS2_ll.exit unwind label %bb.j

_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9open_implERKS2_ll.exit: ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57   ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9open_implERKS2_ll.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %7 = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.i = icmp eq i32 %7, 1
  br i1 %i.i, label %bb.g, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc.i.i.i unwind label %bb.i, !inline_history !0

.noexc.i.i.i:                                     ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %8 = atomicrmw add ptr %i.m, i32 -1 acq_rel, align 4
  %i.n = icmp eq i32 %8, 1
  br i1 %i.n, label %bb.h, label %_ZN5boost9iostreams15file_descriptorD2Ev.exit

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_ZN5boost9iostreams15file_descriptorD2Ev.exit unwind label %bb.i, !inline_history !0

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #31
  unreachable

_ZN5boost9iostreams15file_descriptorD2Ev.exit:    ; preds = %_ZN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE9open_implERKS2_ll.exit, %bb.f, %.noexc.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void

bb.j:                                             ; preds = %bb.e, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.j ], [ %i.e, %bb.d ]
  call void @_ZN5boost9iostreams15file_descriptorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !20, !alias.scope !115
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !23, !alias.scope !115
  store i8 0, ptr %i.e, align 8, !tbaa !24, !alias.scope !115
  %i.g = add i64 %i.d, %i.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23, !alias.scope !115
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !23, !alias.scope !115
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !49, !alias.scope !115 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !24, !alias.scope !115
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #28
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #23

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !20
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !49
  %i.k = load i64, ptr %i.e, align 8, !tbaa !24
  store i64 %i.k, ptr %i.c, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !23
  store ptr %i.e, ptr %i.b, align 8, !tbaa !49
  store i64 0, ptr %i.m, align 8, !tbaa !23
  store i8 0, ptr %i.e, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !20
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.d, ptr %i.a, align 8, !tbaa !71
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !49
  %i.g = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.g, ptr %i.b, align 8, !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !24
  store i8 %i.i, ptr %i.h, align 1, !tbaa !24
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !71   ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !49, !alias.scope !121 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.x = load i64, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %i.y = load i64, ptr %i.c, align 8, !tbaa !23
  %i.z = sub i64 4611686018427387903, %i.y
  %i.aa = icmp ult i64 %i.z, %i.x
  br i1 %i.aa, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ab = load ptr, ptr %3, align 8, !tbaa !49
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %i.ab, i64 noundef %i.x)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.j
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.af = load i64, ptr %i.j, align 8, !tbaa !24
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.j

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.g
  %i.ah = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.j
  br i1 %i.aj, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.h, %bb.f
  %.sink = phi ptr [ %i.v, %bb.f ], [ %i.ai, %bb.h ]
  %.pn.ph = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.ah, %bb.h ]
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !24
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.al) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.ah, %bb.h ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.f, %bb.c ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.am = call ptr @__cxa_begin_catch(ptr %.1) #29 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  ret void

bb.k:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_07IoErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28, !inline_history !79
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #29, !inline_history !79
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK7openvdb5v13_09Exception4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_09ExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28, !inline_history !79
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #29, !inline_history !79
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEE4openERKS3_ll(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::iostreams::detail::concept_adapter", align 8 ; 7 uses
  switch i64 %2, label %.thread.fold.split [
    i64 -1, label %.thread
    i64 0, label %bb.d
  ]

.thread.fold.split:                               ; preds = %bb.a
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread.fold.split
  %i.a = phi i64 [ 4096, %bb.a ], [ %2, %.thread.fold.split ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = shl i64 %i.a, 32
  %i.d = ashr exact i64 %i.c, 32                  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !60
  %.not.i17 = icmp eq i64 %i.f, %i.d
  br i1 %.not.i17, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.thread
  %i.g = icmp slt i64 %i.d, 0
  br i1 %i.g, label %.noexc.i.i.i20, label %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEEC2El.exit.i18, !prof !122

.noexc.i.i.i20:                                   ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZN5boost9iostreams6detail12basic_bufferIcSaIcEEC2El.exit.i18: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #27
  %i.i = load i64, ptr %i.e, align 8, !tbaa !71
  store i64 %i.d, ptr %i.e, align 8, !tbaa !71
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !78
  %.not.i.i19 = icmp eq ptr %i.j, null
  br i1 %.not.i.i19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEEC2El.exit.i18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.i) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.thread, %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEEC2El.exit.i18, %bb.c
  %i.k = phi i64 [ %2, %bb.a ], [ %i.a, %.thread ], [ %i.a, %_ZN5boost9iostreams6detail12basic_bufferIcSaIcEEC2El.exit.i18 ], [ %i.a, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(132) %0)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN5boost9iostreams20file_descriptor_sinkC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !33, !range !62, !noundef !63
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEE5resetEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !57   ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %5 = atomicrmw add ptr %i.u, i32 -1 acq_rel, align 4
  %i.v = icmp eq i32 %5, 1
  br i1 %i.v, label %bb.g, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.i, !inline_history !0

.noexc.i.i.i.i.i.i:                               ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %6 = atomicrmw add ptr %i.z, i32 -1 acq_rel, align 4
  %i.aa = icmp eq i32 %6, 1
  br i1 %i.aa, label %bb.h, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i

bb.h:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i unwind label %bb.i, !inline_history !0

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #31
  unreachable

_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i: ; preds = %bb.h, %.noexc.i.i.i.i.i.i, %bb.f, %bb.e
  store i8 0, ptr %i.p, align 8, !tbaa !33
  br label %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEE5resetEv.exit.i

_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEE5resetEv.exit.i: ; preds = %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i, %bb.d
  invoke void @_ZN5boost9iostreams20file_descriptor_sinkC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(17) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEE5resetEv.exit.i
  store i8 1, ptr %i.p, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %7 = atomicrmw add ptr %i.ai, i32 -1 acq_rel, align 4
  %i.aj = icmp eq i32 %7, 1
  br i1 %i.aj, label %bb.l, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %.noexc.i.i.i.i unwind label %bb.n, !inline_history !0

.noexc.i.i.i.i:                                   ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %8 = atomicrmw add ptr %i.an, i32 -1 acq_rel, align 4
  %i.ao = icmp eq i32 %8, 1
  br i1 %i.ao, label %bb.m, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit

bb.m:                                             ; preds = %.noexc.i.i.i.i
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit unwind label %bb.n, !inline_history !0

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #31
  unreachable

_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit: ; preds = %bb.j, %bb.k, %.noexc.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !39
  %i.aw = icmp sgt i64 %i.k, 1
  %spec.select.v = select i1 %i.aw, i32 3, i32 1
  %spec.select = or i32 %i.av, %spec.select.v
  store i32 %spec.select, ptr %i.au, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !29
  %i.az = and i32 %i.ay, -8
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !29
  ret void

bb.o:                                             ; preds = %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEE5resetEv.exit.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %i.ba
}

declare void @_ZN5boost9iostreams20file_descriptor_sinkC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEES8_NS1_15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSH_vEE4typeEE11result_typeESH_T0_T1_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::iostreams::detail::reset_operation", align 8 ; 2 uses
  store ptr %4, ptr %5, align 8
  %i.a = invoke noundef i32 @_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEES8_EENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_T0_(ptr %0, i32 %1, ptr %2, i32 %3)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !33, !range !62, !noundef !63
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZNK5boost9iostreams6detail15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEclEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %6 = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %6, 1
  br i1 %i.h, label %bb.e, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.g, !inline_history !0

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %7 = atomicrmw add ptr %i.l, i32 -1 acq_rel, align 4
  %i.m = icmp eq i32 %7, 1
  br i1 %i.m, label %bb.f, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i unwind label %bb.g, !inline_history !0

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #31
  unreachable

_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i: ; preds = %bb.f, %.noexc.i.i.i.i.i.i, %bb.d, %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !33
  br label %_ZNK5boost9iostreams6detail15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEclEv.exit

_ZNK5boost9iostreams6detail15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEclEv.exit: ; preds = %bb.b, %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i.i
  ret i32 %i.a

bb.h:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #29 ; 0 uses
  invoke void @_ZNK5boost9iostreams6detail15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEclEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #29 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  invoke void @__cxa_rethrow() #30
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.y

bb.m:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #31
  unreachable

bb.n:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEES8_EENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_T0_(ptr %0, i32 %1, ptr %2, i32 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::iostreams::detail::member_close_operation", align 8 ; 3 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %3, ptr %i.a, align 8
  switch i32 %1, label %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit [
    i32 8, label %bb.b
    i32 16, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = and i32 %i.c, 2
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = or disjoint i32 %i.c, 2
  store i32 %i.f, ptr %i.b, align 8, !tbaa !29
  br label %.sink.split.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %i.i = and i32 %i.h, 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = or disjoint i32 %i.h, 4
  store i32 %i.k, ptr %i.g, align 8, !tbaa !29
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.e, %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1)
          to label %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit unwind label %bb.j, !inline_history !123

_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit: ; preds = %bb.d, %bb.b, %.sink.split.i.i.i.i, %bb.a
  switch i32 %3, label %_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv.exit [
    i32 8, label %bb.f
    i32 16, label %bb.h
  ]

bb.f:                                             ; preds = %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %i.q = and i32 %i.p, 2
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv.exit

bb.g:                                             ; preds = %bb.f
  %i.s = or disjoint i32 %i.p, 2
  store i32 %i.s, ptr %i.o, align 8, !tbaa !29
  br label %.sink.split.i.i

bb.h:                                             ; preds = %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !29   ; 2 uses
  %i.v = and i32 %i.u, 4
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv.exit

bb.i:                                             ; preds = %bb.h
  %i.x = or disjoint i32 %i.u, 4
  store i32 %i.x, ptr %i.t, align 8, !tbaa !29
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.i, %bb.g
  %i.y = load ptr, ptr %2, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(68) %2, i32 noundef %3), !inline_history !124
  br label %_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv.exit

_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv.exit: ; preds = %_ZN5boost9iostreams6detail11execute_allINS1_22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEEEENS1_14execute_traitsIT_NS_9result_ofIFSA_vEE4typeEE11result_typeESA_.exit, %bb.f, %bb.h, %.sink.split.i.i
  ret i32 0

bb.j:                                             ; preds = %.sink.split.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #29 ; 0 uses
  invoke void @_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = call ptr @__cxa_begin_catch(ptr %i.af) #29 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  invoke void @__cxa_rethrow() #30
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.ah

bb.o:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #31
  unreachable

bb.p:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5boost9iostreams6detail15reset_operationINS1_8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEEEclEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !127, !nonnull !63, !align !80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !33, !range !62, !noundef !63
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEE5resetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %1 = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %1, 1
  br i1 %i.h, label %bb.d, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.noexc.i.i.i.i.i unwind label %bb.f, !inline_history !0

.noexc.i.i.i.i.i:                                 ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %2 = atomicrmw add ptr %i.l, i32 -1 acq_rel, align 4
  %i.m = icmp eq i32 %2, 1
  br i1 %i.m, label %bb.e, label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i

bb.e:                                             ; preds = %.noexc.i.i.i.i.i
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i unwind label %bb.f, !inline_history !0

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #31
  unreachable

_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i: ; preds = %bb.e, %.noexc.i.i.i.i.i, %bb.c, %bb.b
  store i8 0, ptr %i.b, align 8, !tbaa !33
  br label %_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEE5resetEv.exit

_ZN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEE5resetEv.exit: ; preds = %bb.a, %_ZN5boost9iostreams6detail15concept_adapterINS0_20file_descriptor_sinkEED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5boost9iostreams6detail22member_close_operationINS1_16linked_streambufIcSt11char_traitsIcEEEEclEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131, !nonnull !63, !align !80 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !132  ; 2 uses
  switch i32 %i.c, label %_ZN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEE5closeESt13_Ios_Openmode.exit [
    i32 8, label %bb.b
    i32 16, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.f = and i32 %i.e, 2
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEE5closeESt13_Ios_Openmode.exit

bb.c:                                             ; preds = %bb.b
  %i.h = or disjoint i32 %i.e, 2
  store i32 %i.h, ptr %i.d, align 8, !tbaa !29
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %i.k = and i32 %i.j, 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %_ZN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEE5closeESt13_Ios_Openmode.exit

bb.e:                                             ; preds = %bb.d
  %i.m = or disjoint i32 %i.j, 4
  store i32 %i.m, ptr %i.i, align 8, !tbaa !29
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(68) %i.a, i32 noundef %i.c), !inline_history !128
  br label %_ZN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEE5closeESt13_Ios_Openmode.exit

_ZN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEE5closeESt13_Ios_Openmode.exit: ; preds = %bb.a, %bb.b, %bb.d, %.sink.split.i
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { builtin nounwind }
attributes #29 = { nounwind }
attributes #30 = { noreturn }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = distinct !{ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev, null}
!2 = distinct !{null, null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 _ZTSN7openvdb5v13_02io8TempFile12TempFileImplE", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"long", !9, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !21, i64 8, !9, i64 16}
!23 = !{!22, !21, i64 8}
!24 = !{!9, !9, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!26 = !{!"_ZTSSt6locale", !25, i64 0}
!27 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !26, i64 56}
!28 = !{!"_ZTSN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEEE", !27, i64 0, !10, i64 64}
!29 = !{!28, !10, i64 64}
!30 = !{!"_ZTSN5boost9iostreams6detail15aligned_storageINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEE", !9, i64 0}
!31 = !{!"bool", !9, i64 0}
!32 = !{!"_ZTSN5boost9iostreams6detail8optionalINS1_15concept_adapterINS0_20file_descriptor_sinkEEEEE", !30, i64 0, !31, i64 16}
!33 = !{!32, !31, i64 16}
!34 = !{!"p1 _ZTSN5boost9iostreams6detail16linked_streambufIcSt11char_traitsIcEEE", !15, i64 0}
!35 = !{!"_ZTSN5boost9iostreams6detail12basic_bufferIcSaIcEEE", !18, i64 0, !21, i64 8}
!36 = !{!"_ZTSN5boost9iostreams6detail20single_object_holderINS1_12basic_bufferIcSaIcEEEEE", !35, i64 0}
!37 = !{!"_ZTSN5boost9iostreams6detail13double_objectINS1_12basic_bufferIcSaIcEEENS_14is_convertibleINS0_15output_seekableENS1_12two_sequenceEEEEE", !36, i64 0}
!38 = !{!"_ZTSN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE", !28, i64 0, !32, i64 72, !34, i64 96, !37, i64 104, !21, i64 120, !10, i64 128}
!39 = !{!38, !10, i64 128}
!40 = !{!"p1 _ZTSN5boost9iostreams6detail20file_descriptor_implE", !15, i64 0}
!41 = !{!"p1 _ZTSN5boost6detail15sp_counted_baseE", !15, i64 0}
!42 = !{!"_ZTSN5boost6detail12shared_countE", !41, i64 0}
!43 = !{!"_ZTSN5boost10shared_ptrINS_9iostreams6detail20file_descriptor_implEEE", !40, i64 0, !42, i64 8}
!44 = !{!"_ZTSN5boost9iostreams15file_descriptorE", !43, i64 0}
!45 = !{!"_ZTSN5boost9iostreams20file_descriptor_sinkE", !44, i64 0}
!46 = !{!"_ZTSN5boost9iostreams13stream_bufferINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEEE", !38, i64 0}
!47 = !{!"_ZTSN7openvdb5v13_02io8TempFile12TempFileImplE", !22, i64 0, !45, i64 32, !46, i64 48, !10, i64 184}
!48 = !{!47, !10, i64 184}
!49 = !{!22, !18, i64 0}
!50 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!51 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!52 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!53 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !21, i64 8}
!54 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!55 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !50, i64 24, !51, i64 28, !51, i64 32, !52, i64 40, !53, i64 48, !9, i64 64, !10, i64 192, !54, i64 200, !26, i64 208}
!56 = !{!10, !10, i64 0}
!57 = !{!42, !41, i64 0}
!58 = !{ptr @_ZN7openvdb5v13_02io8TempFileD1Ev}
!59 = !{!35, !18, i64 0}
!60 = !{!35, !21, i64 8}
!61 = !{ptr @_ZN5boost9iostreams6detail18indirect_streambufINS0_20file_descriptor_sinkESt11char_traitsIcESaIcENS0_15output_seekableEED2Ev}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!38, !34, i64 96}
!65 = !{!27, !18, i64 16}
!66 = !{!27, !18, i64 8}
!67 = !{!27, !18, i64 24}
!68 = !{!27, !18, i64 40}
!69 = !{!27, !18, i64 32}
!70 = !{!27, !18, i64 48}
end_hunk_4
