Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_stl_bind_vector?download=true
inline.NumInlined: 4430
inline.NumDeleted: 1793
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN8nanobind6detail11type_casterINS_5typedINS_8iterableEJbEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_5typedINS_8iterableEJbEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::handle", align 8  ; 4 uses
  %5 = alloca %"struct.nanobind::detail::type_caster.146", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr null, ptr %5, align 8
  %i.a = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_8iterableEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %1, i32 noundef %2, ptr noundef %3) #28 ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.b = load ptr, ptr %0, align 8, !tbaa !35
  store ptr %i.b, ptr %4, align 8, !tbaa !35
  %i.c = load ptr, ptr %5, align 8, !tbaa !35
  store ptr %i.c, ptr %0, align 8, !tbaa !35
  store ptr null, ptr %5, align 8, !tbaa !35
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden void @_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlPS3_NS_5typedINS_8iterableEJbEEEE_clESF_SI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr nofreeobj noundef align 8 dereferenceable(8) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.nanobind::iterator", align 8 ; 10 uses
  %4 = alloca %"class.nanobind::iterator", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8
  %i.a = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.b = tail call noundef i64 @_ZN8nanobind6detail8len_hintEPNS0_12nb_internalsEP7_object(ptr noundef %i.a, ptr noundef %.sroa.0.0.copyload) #28
  invoke void @_ZNSt6vectorIbSaIbEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.b) #29
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.c = load ptr, ptr %2, align 8, !tbaa !35, !noalias !314
  %i.d = invoke ptr @PyObject_GetIter(ptr noundef %i.c) #29
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.d, !prof !70

bb.c:                                             ; preds = %.noexc
  invoke void @_ZN8nanobind6detail18raise_python_errorEv() #33
          to label %.noexc8 unwind label %bb.i

.noexc8:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.noexc
  store ptr %i.d, ptr %3, align 8, !alias.scope !315
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr null, ptr %i.e, align 8, !tbaa !35, !alias.scope !315
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !316
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.l
  %i.g = invoke ptr @_ZNK8nanobind8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #29
          to label %.noexc9 unwind label %bb.m    ; 0 uses

.noexc9:                                          ; preds = %bb.e
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.i = invoke ptr @_ZNK8nanobind8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #29
          to label %bb.f unwind label %bb.m       ; 0 uses

bb.f:                                             ; preds = %.noexc9
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !35
  %.not = icmp eq ptr %i.h, %i.j
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #28 ; 0 uses
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #28 ; 0 uses
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.h:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.j:                                             ; preds = %bb.f
  %i.q = invoke ptr @_ZNK8nanobind8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #29
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef zeroext i1 @_ZN8nanobind6detail9cast_implILb1EbEET0_NS_6handleE(ptr %i.q) #29
          to label %_ZN8nanobind4castIbNS_6handleEEET_RKNS_6detail3apiIT0_EEb.exit unwind label %bb.m

_ZN8nanobind4castIbNS_6handleEEET_RKNS_6detail3apiIT0_EEb.exit: ; preds = %bb.k
  invoke void @_ZNSt6vectorIbSaIbEE9push_backEb(ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %i.r) #29
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN8nanobind4castIbNS_6handleEEET_RKNS_6detail3apiIT0_EEb.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nanobind8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #29
          to label %bb.e unwind label %bb.m       ; 0 uses

bb.m:                                             ; preds = %bb.l, %bb.e, %.noexc9, %bb.k, %_ZN8nanobind4castIbNS_6handleEEET_RKNS_6detail3apiIT0_EEb.exit, %bb.j
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #28 ; 0 uses
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #28 ; 0 uses
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #28 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.t, %bb.m ], [ %i.p, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.n ], [ %i.o, %bb.h ]
  %.3 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 0
  %i.y = call ptr @__cxa_begin_catch(ptr %.3) #30 ; 0 uses
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #29
          to label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #31
  unreachable

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.o
  invoke void @__cxa_rethrow() #35
          to label %bb.t unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.ab

bb.s:                                             ; preds = %bb.q
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

bb.t:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  unreachable
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 9223372036854775744
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.d = load ptr, ptr %0, align 8, !tbaa !99
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl nsw i64 %i.g, 3
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorIbSaIbEE13_M_reallocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE9push_backEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %.not = icmp eq ptr %i.b, %i.d
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.2.0.copyload.i11 = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 4 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %.sroa.2.0.copyload.i11, 1
  store i32 %i.e, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  %i.f = icmp eq i32 %.sroa.2.0.copyload.i11, 63
  br i1 %i.f, label %bb.c, label %_ZNSt13_Bit_iteratorppEi.exit

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.a, align 8, !tbaa !99
  br label %_ZNSt13_Bit_iteratorppEi.exit

_ZNSt13_Bit_iteratorppEi.exit:                    ; preds = %bb.b, %bb.c
  %i.h = zext nneg i32 %.sroa.2.0.copyload.i11 to i64
  %i.i = shl nuw i64 1, %i.h                      ; 2 uses
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.j = load i64, ptr %i.b, align 8, !tbaa !81
  %i.k = or i64 %i.j, %i.i
  store i64 %i.k, ptr %i.b, align 8, !tbaa !81
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.l = xor i64 %i.i, -1
  %i.m = load i64, ptr %i.b, align 8, !tbaa !81
  %i.n = and i64 %i.m, %i.l
  store i64 %i.n, ptr %i.b, align 8, !tbaa !81
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %i.b, i32 %.sroa.2.0.copyload.i11, i1 noundef zeroext %1) #29
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.d, %bb.f
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_reallocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 63
  %i.b = lshr i64 %i.a, 6                         ; 2 uses
  %i.c = tail call noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.b, ptr noundef null) #29 ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !99     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.f = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp sgt i64 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c, !prof !69

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.c, ptr align 8 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.h, 8
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.d, align 8, !tbaa !81
  store i64 %i.k, ptr %i.c, align 8, !tbaa !81
  br label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 %i.h
  %i.m = tail call { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(ptr %.sroa.0.0.copyload.i, i32 0, ptr %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i, ptr %i.l, i32 0) #29 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.m, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.m, 1
  tail call void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #29
  store ptr %i.c, ptr %0, align 8
  %.sroa.5.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx23, align 8
  store ptr %.fca.0.extract, ptr %i.e, align 8
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.sroa.235.0.copyload = load i32, ptr %.sroa.235.0..sroa_idx, align 8 ; 2 uses
  %i.e = zext i32 %.sroa.235.0.copyload to i64
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.g = lshr i64 %i.f, 6
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.g
  %i.i = trunc i64 %i.f to i32
  %i.j = and i32 %i.i, 63
  %i.k = tail call { ptr, i32 } @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bISt13_Bit_iteratorS3_EET0_T_S5_S4_(ptr %1, i32 %2, ptr %i.b, i32 %.sroa.235.0.copyload, ptr %i.h, i32 %i.j) #29 ; 0 uses
  %i.l = zext nneg i32 %2 to i64
  %i.m = shl nuw i64 1, %i.l                      ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %1, align 8, !tbaa !81
  %i.o = or i64 %i.n, %i.m
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.d:                                             ; preds = %bb.b
  %i.p = xor i64 %i.m, -1
  %i.q = load i64, ptr %1, align 8, !tbaa !81
  %i.r = and i64 %i.q, %i.p
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.c, %bb.d
  %storemerge = phi i64 [ %i.r, %bb.d ], [ %i.o, %bb.c ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !81
  %i.s = load i32, ptr %.sroa.235.0..sroa_idx, align 8, !tbaa !100 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %.sroa.235.0..sroa_idx, align 8, !tbaa !100
  %i.u = icmp eq i32 %i.s, 63
  br i1 %i.u, label %bb.e, label %_ZNSt13_Bit_iteratorppEv.exit

bb.e:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %.sroa.235.0..sroa_idx, align 8, !tbaa !100
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.a, align 8, !tbaa !99
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.f:                                             ; preds = %bb.a
  %i.x = tail call noundef i64 @_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 1, ptr noundef nonnull @.str.59) #29
  %i.y = add i64 %i.x, 63
  %i.z = lshr i64 %i.y, 6                         ; 2 uses
  %i.aa = tail call noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.z, ptr noundef null) #29 ; 5 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !99    ; 3 uses
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 8
  br i1 %i.af, label %bb.g, label %bb.h, !prof !69

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aa, ptr align 8 %i.ab, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = icmp eq i64 %i.ae, 8
  br i1 %i.ag, label %bb.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !81
  store i64 %i.ah, ptr %i.aa, align 8, !tbaa !81
  br label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.aj = tail call { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(ptr %1, i32 0, ptr %1, i32 %2, ptr %i.ai, i32 0) #29 ; 2 uses
  %.fca.0.extract17 = extractvalue { ptr, i32 } %i.aj, 0 ; 4 uses
  %.fca.1.extract18 = extractvalue { ptr, i32 } %i.aj, 1 ; 3 uses
  %i.ak = add i32 %.fca.1.extract18, 1
  %i.al = icmp eq i32 %.fca.1.extract18, 63       ; 2 uses
  %spec.select = select i1 %i.al, i32 0, i32 %i.ak
  %spec.select88.idx = select i1 %i.al, i64 8, i64 0
  %spec.select88 = getelementptr inbounds nuw i8, ptr %.fca.0.extract17, i64 %spec.select88.idx
  %i.am = zext nneg i32 %.fca.1.extract18 to i64
  %i.an = shl nuw i64 1, %i.am                    ; 2 uses
  br i1 %3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %i.ao = load i64, ptr %.fca.0.extract17, align 8, !tbaa !81
  %i.ap = or i64 %i.ao, %i.an
  br label %_ZNSt14_Bit_referenceaSEb.exit52

bb.k:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %i.aq = xor i64 %i.an, -1
  %i.ar = load i64, ptr %.fca.0.extract17, align 8, !tbaa !81
  %i.as = and i64 %i.ar, %i.aq
  br label %_ZNSt14_Bit_referenceaSEb.exit52

_ZNSt14_Bit_referenceaSEb.exit52:                 ; preds = %bb.j, %bb.k
  %storemerge89 = phi i64 [ %i.as, %bb.k ], [ %i.ap, %bb.j ]
  store i64 %storemerge89, ptr %.fca.0.extract17, align 8, !tbaa !81
  %.sroa.0.0.copyload.i53 = load ptr, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i54 = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.at = tail call { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt13_Bit_iteratorS3_EET0_T_S5_S4_(ptr %1, i32 %2, ptr %.sroa.0.0.copyload.i53, i32 %.sroa.2.0.copyload.i54, ptr nonnull %spec.select88, i32 %spec.select) #29 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.at, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.at, 1
  tail call void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #29
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store ptr %i.au, ptr %i.c, align 8, !tbaa !103
  store ptr %i.aa, ptr %0, align 8
  %.sroa.570.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.570.0..sroa_idx71, align 8
  store ptr %.fca.0.extract, ptr %i.a, align 8
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx.i, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.e, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt14_Bit_referenceaSEb.exit52
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr noundef i64 @_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !100
  %i.e = load ptr, ptr %0, align 8, !tbaa !99
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl nsw i64 %i.h, 3
  %i.j = zext i32 %i.d to i64
  %i.k = add nsw i64 %i.i, %i.j                   ; 4 uses
  %i.l = sub i64 9223372036854775744, %i.k
  %i.m = icmp ult i64 %i.l, %1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %1)
  %i.n = add i64 %.sroa.speculated, %i.k          ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.k
end_hunk_0
begin_hunk_1_@_ZZN8nanobind6detail9cast_implILb1EbEET0_NS_6handleEEN12raii_cleanupD2Ev
define linkonce_odr hidden void @_ZZN8nanobind6detail9cast_implILb1EbEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !93
  %i.b = icmp ugt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge.i:                                    ; preds = %_ZL9Py_DECREFP7_object.exit.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !94
  %.not.i = icmp eq i32 %i.e, 5
  br i1 %.not.i, label %_ZN8nanobind6detail12cleanup_list7releaseEv.exit, label %bb.e

bb.b:                                             ; preds = %_ZL9Py_DECREFP7_object.exit.i, %.lr.ph.i
  %.04.i = phi i64 [ 1, %.lr.ph.i ], [ %i.m, %_ZL9Py_DECREFP7_object.exit.i ] ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.04.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = and i64 %i.i, 2147483648
  %.not3.i = icmp eq i64 %i.j, 0
  br i1 %.not3.i, label %bb.c, label %_ZL9Py_DECREFP7_object.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.i, -1                     ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !tbaa !26
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZL9Py_DECREFP7_object.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.h) #29
          to label %_ZL9Py_DECREFP7_object.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL9Py_DECREFP7_object.exit.i:                    ; preds = %bb.d, %bb.c, %bb.b
  %i.m = add nuw nsw i64 %.04.i, 1                ; 2 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !93
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge.i, !llvm.loop !0

bb.e:                                             ; preds = %._crit_edge.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !91
  invoke void @PyMem_Free(ptr noundef %i.r) #29
          to label %_ZN8nanobind6detail12cleanup_list7releaseEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2, 0
  tail call void @__clang_call_terminate(ptr %i.s) #31
  unreachable

_ZN8nanobind6detail12cleanup_list7releaseEv.exit: ; preds = %._crit_edge.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZZN8nanobind22implicitly_convertibleINS_8iterableESt6vectorIbSaIbEEEEvvENUlP11_typeobjectP7_objectPNS_6detail12cleanup_listEE_8__invokeES6_S8_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.nanobind::detail::type_caster.146", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr null, ptr %3, align 8
  %i.a = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_8iterableEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %1, i32 noundef 1, ptr noundef %2) #28
  %i.b = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.371", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = icmp eq ptr %i.g, @_Py_TrueStruct
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %i.g, @_Py_FalseStruct
  br i1 %i.i, label %bb.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink.i = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]    ; 2 uses
  store i8 %.sink.i, ptr %4, align 8, !tbaa !111
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.k = trunc nuw i8 %.sink.i to i1
  call void @_ZNSt6vectorIbSaIbEE9push_backEb(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i1 noundef zeroext %i.k) #29
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKbE_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA39_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.c, %bb.a, %bb.d
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.378", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = and i32 %2, -35
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail8load_i64EPNS0_12nb_internalsEP7_objectjPl(ptr noundef %i.j, ptr noundef %i.h, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #28
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %i.n = icmp eq ptr %i.m, @_Py_TrueStruct
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq ptr %i.m, @_Py_FalseStruct
  br i1 %i.o, label %bb.e, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink.i = phi i8 [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %.sink.i, ptr %4, align 8, !tbaa !111
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !106  ; 4 uses
  %i.q = load i64, ptr %i.f, align 8, !tbaa !81   ; 3 uses
  %i.r = icmp slt i64 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !100
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !99   ; 2 uses
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = zext i32 %i.v to i64
  %i.ac = add i64 %i.aa, %i.ab                    ; 2 uses
  br i1 %i.r, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ad = add i64 %i.ac, %i.q                     ; 2 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.f
  %.024.i = phi i64 [ %i.ad, %bb.f ], [ %i.q, %bb.e ] ; 3 uses
  %i.af = icmp ugt i64 %.024.i, %i.ac
  br i1 %i.af, label %bb.g, label %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lRKbE_clESF_lSH_.exit

bb.g:                                             ; preds = %.thread.i, %bb.f
  %i.ag = call ptr @__cxa_allocate_exception(i64 24) #30 ; 3 uses
  invoke void @_ZN8nanobind11index_errorEPKc(ptr dead_on_unwind writable sret(%"class.nanobind::abi1::builtin_exception") align 8 %i.ag, ptr noundef null) #29
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @__cxa_throw(ptr %i.ag, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.ag) #30
  resume { ptr, i32 } %i.ah

_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lRKbE_clESF_lSH_.exit: ; preds = %.thread.i
  %i.ai = lshr i64 %.024.i, 6
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ai
  %i.ak = trunc i64 %.024.i to i32
  %i.al = and i32 %i.ak, 63
  %i.am = call { ptr, i32 } @_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr %i.aj, i32 %i.al, ptr noundef nonnull align 1 dereferenceable(1) %4) #29 ; 0 uses
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lRKbE_vJSH_lSJ_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEA46_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.d, %bb.a, %bb.b, %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lRKbE_clESF_lSH_.exit
  %.0.i = phi ptr [ @_Py_NoneStruct, %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lRKbE_clESF_lSH_.exit ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr { ptr, i32 } @_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.f = icmp eq ptr %1, %i.c
  %i.g = icmp eq i32 %2, %.sroa.2.0.copyload.i
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %3, align 1, !tbaa !112, !range !113, !noundef !114
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = add i32 %2, 1
  store i32 %i.k, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  %i.l = icmp eq i32 %2, 63
  br i1 %i.l, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %i.b, align 8, !tbaa !99
  br label %_ZNSt13_Bit_iteratorppEi.exit

_ZNSt13_Bit_iteratorppEi.exit:                    ; preds = %bb.c, %bb.d
  %i.n = zext i32 %2 to i64                       ; 3 uses
  %i.o = shl nuw i64 1, %i.n                      ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.p = load i64, ptr %i.c, align 8, !tbaa !81
  %i.q = or i64 %i.p, %i.o
  store i64 %i.q, ptr %i.c, align 8, !tbaa !81
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.r = xor i64 %i.o, -1
  %i.s = load i64, ptr %i.c, align 8, !tbaa !81
  %i.t = and i64 %i.s, %i.r
  store i64 %i.t, ptr %i.c, align 8, !tbaa !81
  br label %_ZNSt14_Bit_referenceaSEb.exit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.u = load i8, ptr %3, align 1, !tbaa !112, !range !113, !noundef !114
  %i.v = trunc nuw i8 %i.u to i1
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %i.v) #29
  %.pre = load ptr, ptr %0, align 8, !tbaa !99
  %.pre58 = zext i32 %2 to i64
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.f, %bb.e, %.critedge
  %.pre-phi = phi i64 [ %i.n, %bb.f ], [ %i.n, %bb.e ], [ %.pre58, %.critedge ]
  %4 = phi ptr [ %i.a, %bb.f ], [ %i.a, %bb.e ], [ %.pre, %.critedge ]
  %i.w = ptrtoint ptr %1 to i64
  %i.x = ptrtoint ptr %i.a to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, %.pre-phi             ; 3 uses
  %i.ab = sdiv i64 %i.aa, 64
  %i.ac = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ab
  %i.ad = and i64 %i.aa, -9223372036854775745
  %i.ae = icmp ugt i64 %i.ad, -9223372036854775808
  %storemerge.idx.i.i.i = select i1 %i.ae, i64 -8, i64 0
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.ac, i64 %storemerge.idx.i.i.i
  %i.af = trunc i64 %i.aa to i32
  %i.ag = and i32 %i.af, 63
  %.fca.0.insert.i40 = insertvalue { ptr, i32 } poison, ptr %storemerge.i.i.i, 0
  %.fca.1.insert.i41 = insertvalue { ptr, i32 } %.fca.0.insert.i40, i32 %i.ag, 1
  ret { ptr, i32 } %.fca.1.insert.i41
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lE0_bJSH_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_7arg_v_tILj1ELb0EEENS_9lock_selfEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSR_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.340", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lE0_bJSH_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_7arg_v_tILj1ELb0EEENS_9lock_selfEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -35
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.j = call noundef zeroext i1 @_ZN8nanobind6detail8load_i64EPNS0_12nb_internalsEP7_objectjPl(ptr noundef %i.i, ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %i.j, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lE0_bJSH_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_7arg_v_tILj1ELb0EEENS_9lock_selfEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !106  ; 4 uses
  %i.l = load i64, ptr %4, align 8, !tbaa !81     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !100
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !99   ; 2 uses
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = shl nsw i64 %i.t, 3
  %i.v = zext i32 %i.p to i64
  %i.w = add nsw i64 %i.u, %i.v                   ; 2 uses
  %i.x = icmp slt i64 %i.l, 0
  %i.y = select i1 %i.x, i64 %i.w, i64 0
  %spec.select.i.i = add nsw i64 %i.y, %i.l       ; 5 uses
  %i.z = icmp sgt i64 %spec.select.i.i, -1
  %.not.i.i = icmp ult i64 %spec.select.i.i, %i.w
  %or.cond.i.i = and i1 %i.z, %.not.i.i
  br i1 %or.cond.i.i, label %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lE0_clESF_l.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = call ptr @__cxa_allocate_exception(i64 24) #30 ; 3 uses
  invoke void @_ZN8nanobind11index_errorEPKc(ptr dead_on_unwind writable sret(%"class.nanobind::abi1::builtin_exception") align 8 %i.aa, ptr noundef null) #29
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @__cxa_throw(ptr %i.aa, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.aa) #30
  resume { ptr, i32 } %i.ab

_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lE0_clESF_l.exit: ; preds = %bb.c
  %i.ac = lshr i64 %spec.select.i.i, 6
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = and i64 %spec.select.i.i, 63
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !81
  %i.ah = and i64 %i.ag, %i.af
  %.not = icmp eq i64 %i.ah, 0
  %i.ai = trunc i64 %spec.select.i.i to i32
  %i.aj = and i32 %i.ai, 63
  %i.ak = call { ptr, i32 } @_ZNSt6vectorIbSaIbEE8_M_eraseESt13_Bit_iterator(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr nonnull %i.ad, i32 %i.aj) #29 ; 0 uses
  %spec.select.i = select i1 %.not, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lE0_bJSH_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_7arg_v_tILj1ELb0EEENS_9lock_selfEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_lE0_bJSH_lEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_7arg_v_tILj1ELb0EEENS_9lock_selfEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSR_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.a, %bb.b, %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lE0_clESF_l.exit
  %.0.i = phi ptr [ %spec.select.i, %_ZZN8nanobind11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlRS3_lE0_clESF_l.exit ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr { ptr, i32 } @_ZNSt6vectorIbSaIbEE8_M_eraseESt13_Bit_iterator(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = lshr i64 %i.b, 6
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c ; 2 uses
  %i.e = trunc i64 %i.b to i32
  %i.f = and i32 %i.e, 63                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.0.0.copyload.i23 = load ptr, ptr %i.g, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %i.h = icmp ne ptr %i.d, %.sroa.0.0.copyload.i23
  %i.i = icmp ne i32 %i.f, %.sroa.2.0.copyload.i
  %.not3.i = select i1 %i.h, i1 true, i1 %i.i
  br i1 %.not3.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt13_Bit_iteratorS3_EET0_T_S5_S4_(ptr %i.d, i32 %i.f, ptr %.sroa.0.0.copyload.i23, i32 %.sroa.2.0.copyload.i, ptr %1, i32 %2) #29 ; 0 uses
  %.pre = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i32 [ %.pre, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.l = add i32 %i.k, -1
  store i32 %i.l, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  %i.m = icmp eq i32 %i.k, 0
  br i1 %i.m, label %bb.d, label %_ZNSt13_Bit_iteratormmEv.exit

bb.d:                                             ; preds = %bb.c
  store i32 63, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !99
  br label %_ZNSt13_Bit_iteratormmEv.exit

_ZNSt13_Bit_iteratormmEv.exit:                    ; preds = %bb.c, %bb.d
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %2, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKS5_E_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPST_jPNS0_12cleanup_listEE_8__invokeES17_S18_jS1A_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Bit_const_iterator", align 8 ; 5 uses
  %5 = alloca %"struct.nanobind::detail::tuple.389", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKS5_E_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = and i32 %2, -43
  %i.i = or disjoint i32 %i.h, 8
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.j, ptr noundef nonnull @_ZTISt6vectorIbSaIbEE, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKS5_E_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !106  ; 8 uses
  %i.m = load ptr, ptr %5, align 8, !tbaa !106    ; 4 uses
  %i.n = icmp eq ptr %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = shl nsw i64 %i.v, 3
  %i.x = zext i32 %i.r to i64
  %i.y = add nsw i64 %i.w, %i.x                   ; 3 uses
  %i.z = shl i64 %i.y, 1
  call void @_ZNSt6vectorIbSaIbEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 noundef %i.z) #29
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_11bind_vectorISt6vectorIbSaIbEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRS5_RKS5_E_vJSH_SJ_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA52_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES17_S18_jS1A_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.037.i = phi i64 [ %i.ak, %.lr.ph.i ], [ 0, %bb.d ] ; 4 uses
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.ab = sdiv i64 %.037.i, 64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = and i64 %.037.i, -9223372036854775745
  %i.ae = icmp ugt i64 %i.ad, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.ae, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ac, i64 %storemerge.idx.i.i.i.i.i.i
  %i.af = and i64 %.037.i, 63
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !81
  %i.ai = and i64 %i.ah, %i.ag
  %i.aj = icmp ne i64 %i.ai, 0
  call void @_ZNSt6vectorIbSaIbEE9push_backEb(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i1 noundef zeroext %i.aj) #29
  %i.ak = add nuw i64 %.037.i, 1                  ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.y
end_hunk_1
