Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_stl?download=true
inline.NumInlined: 5730
inline.NumDeleted: 3094
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8nanobind6detail11list_casterISt6vectorIbSaIbEEbE11from_pythonENS_6handleEjPNS0_12cleanup_listE:bb.a
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.f = load i64, ptr %i.a, align 8, !tbaa !50
  invoke void @_ZNSt6vectorIbSaIbEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.f) #30
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne ptr %i.c, null                   ; 2 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !50
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %_ZN8nanobind6detail11type_casterIbiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.015 = phi i64 [ %i.m, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.015
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %i.k = icmp eq ptr %i.j, @_Py_TrueStruct        ; 2 uses
  %i.l = icmp eq ptr %i.j, @_Py_FalseStruct
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %.sink.split.i, label %_ZN8nanobind6detail11type_casterIbiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit

.sink.split.i:                                    ; preds = %.lr.ph
  invoke void @_ZNSt6vectorIbSaIbEE9push_backEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %i.k) #30
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.sink.split.i
  %i.m = add nuw i64 %.015, 1                     ; 2 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !50
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %_ZN8nanobind6detail11type_casterIbiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit, !llvm.loop !681

_ZN8nanobind6detail11type_casterIbiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit: ; preds = %bb.c, %.lr.ph, %bb.b
  %.09 = phi i1 [ %i.g, %bb.b ], [ false, %.lr.ph ], [ %i.g, %bb.c ]
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !22   ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZL10Py_XDECREFP7_object.exit, label %bb.d

bb.d:                                             ; preds = %_ZN8nanobind6detail11type_casterIbiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.r = and i64 %i.q, 2147483648
  %.not2.i = icmp eq i64 %i.r, 0
  br i1 %.not2.i, label %bb.e, label %_ZL10Py_XDECREFP7_object.exit

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i64 %i.q, -1                     ; 2 uses
  store i64 %i.s, ptr %i.p, align 8, !tbaa !25
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %_ZL10Py_XDECREFP7_object.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.p) #30
          to label %_ZL10Py_XDECREFP7_object.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.e, %bb.d, %_ZN8nanobind6detail11type_casterIbiE11from_pythonENS_6handleEjPNS0_12cleanup_listE.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i1 %.09

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.sink.split.i, %bb.f, %bb.a
  %lpad.loopexit.split-lp20 = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %lpad.loopexit.split-lp20, 0
  call void @__clang_call_terminate(ptr %i.u) #35
  unreachable
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden ptr @_ZN8nanobind6detail11list_casterISt6vectorIbSaIbEEbE8from_cppIS4_EENS_6handleEOT_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !264
  %i.e = load ptr, ptr %0, align 8, !tbaa !263
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl nsw i64 %i.h, 3
  %i.j = zext i32 %i.d to i64
  %i.k = add nsw i64 %i.i, %i.j                   ; 4 uses
  %i.l = invoke ptr @PyList_New(i64 noundef %i.k) #30
          to label %_ZN8nanobind6detail11seq_builderILb0EEC2Em.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #35
  unreachable

_ZN8nanobind6detail11seq_builderILb0EEC2Em.exit:  ; preds = %bb.a
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZN8nanobind6detail11seq_builderILb0EED2Ev.exit, label %bb.c, !prof !102

bb.c:                                             ; preds = %_ZN8nanobind6detail11seq_builderILb0EEC2Em.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !263    ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.2.0.copyload.i = load i32, ptr %i.c, align 8 ; 2 uses
  %i.p = icmp eq ptr %i.o, %.sroa.0.0.copyload.i
  %i.q = icmp eq i32 %.sroa.2.0.copyload.i, 0
  %.not3.i44.not = select i1 %i.p, i1 %i.q, i1 false
  %i.r = icmp eq i64 %i.k, 0
  %or.cond46 = or i1 %.not3.i44.not, %i.r
  br i1 %or.cond46, label %.critedge, label %_ZNSt13_Bit_iteratorppEv.exit.lr.ph, !prof !109

_ZNSt13_Bit_iteratorppEv.exit.lr.ph:              ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.l, i64 24
  %.val = load ptr, ptr %i.s, align 8, !tbaa !113
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %_ZNSt13_Bit_iteratorppEv.exit.lr.ph, %_ZNSt13_Bit_iteratorppEv.exit
  %.sroa.025.049 = phi ptr [ %i.o, %_ZNSt13_Bit_iteratorppEv.exit.lr.ph ], [ %spec.select41, %_ZNSt13_Bit_iteratorppEv.exit ] ; 2 uses
  %.sroa.7.048 = phi i32 [ 0, %_ZNSt13_Bit_iteratorppEv.exit.lr.ph ], [ %spec.select, %_ZNSt13_Bit_iteratorppEv.exit ] ; 3 uses
  %.sroa.8.047 = phi i64 [ 0, %_ZNSt13_Bit_iteratorppEv.exit.lr.ph ], [ %i.y, %_ZNSt13_Bit_iteratorppEv.exit ] ; 2 uses
  %i.t = zext nneg i32 %.sroa.7.048 to i64
  %i.u = shl nuw i64 1, %i.t
  %i.v = load i64, ptr %.sroa.025.049, align 8, !tbaa !50
  %i.w = and i64 %i.v, %i.u
  %.not42 = icmp eq i64 %i.w, 0
  %spec.select.i = select i1 %.not42, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  %i.x = getelementptr inbounds [8 x i8], ptr %.val, i64 %.sroa.8.047
  store ptr %spec.select.i, ptr %i.x, align 8, !tbaa !22
  %i.y = add nuw i64 %.sroa.8.047, 1              ; 3 uses
  %i.z = add i32 %.sroa.7.048, 1
  %i.aa = icmp eq i32 %.sroa.7.048, 63            ; 2 uses
  %spec.select = select i1 %i.aa, i32 0, i32 %i.z ; 2 uses
  %spec.select41.idx = select i1 %i.aa, i64 8, i64 0
  %spec.select41 = getelementptr inbounds nuw i8, ptr %.sroa.025.049, i64 %spec.select41.idx ; 2 uses
  %i.ab = icmp eq ptr %spec.select41, %.sroa.0.0.copyload.i
  %i.ac = icmp eq i32 %spec.select, %.sroa.2.0.copyload.i
  %.not3.i.not54 = select i1 %i.ab, i1 %i.ac, i1 false
  %i.ad = icmp eq i64 %i.y, %i.k
  %or.cond = or i1 %.not3.i.not54, %i.ad
  br i1 %or.cond, label %.critedge, label %_ZNSt13_Bit_iteratorppEv.exit, !prof !115

.critedge:                                        ; preds = %_ZNSt13_Bit_iteratorppEv.exit, %bb.c
  %.sroa.8.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.y, %_ZNSt13_Bit_iteratorppEv.exit ]
  %i.ae = icmp eq i64 %.sroa.8.0.lcssa, %i.k
  br i1 %i.ae, label %_ZN8nanobind6detail11seq_builderILb0EED2Ev.exit, label %bb.d, !prof !116

bb.d:                                             ; preds = %.critedge
  %i.af = load i64, ptr %i.l, align 8, !tbaa !25  ; 2 uses
  %i.ag = and i64 %i.af, 2147483648
  %.not43 = icmp eq i64 %i.ag, 0
  br i1 %.not43, label %bb.e, label %_ZN8nanobind6detail11seq_builderILb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = add nsw i64 %i.af, -1                   ; 2 uses
  store i64 %i.ah, ptr %i.l, align 8, !tbaa !25
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_ZN8nanobind6detail11seq_builderILb0EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.l) #30
          to label %_ZN8nanobind6detail11seq_builderILb0EED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #35
  unreachable

_ZN8nanobind6detail11seq_builderILb0EED2Ev.exit:  ; preds = %.critedge, %bb.f, %bb.e, %bb.d, %_ZN8nanobind6detail11seq_builderILb0EEC2Em.exit
  %.sroa.038.0 = phi ptr [ null, %_ZN8nanobind6detail11seq_builderILb0EEC2Em.exit ], [ %i.l, %.critedge ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ]
  ret ptr %.sroa.038.0
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 9223372036854775744
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !267
  %i.d = load ptr, ptr %0, align 8, !tbaa !263
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl nsw i64 %i.g, 3
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorIbSaIbEE13_M_reallocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE9push_backEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !267
  %.not = icmp eq ptr %i.b, %i.d
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.2.0.copyload.i11 = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 4 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %.sroa.2.0.copyload.i11, 1
  store i32 %i.e, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !264
  %i.f = icmp eq i32 %.sroa.2.0.copyload.i11, 63
  br i1 %i.f, label %bb.c, label %_ZNSt13_Bit_iteratorppEi.exit

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !264
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.a, align 8, !tbaa !263
  br label %_ZNSt13_Bit_iteratorppEi.exit

_ZNSt13_Bit_iteratorppEi.exit:                    ; preds = %bb.b, %bb.c
  %i.h = zext nneg i32 %.sroa.2.0.copyload.i11 to i64
  %i.i = shl nuw i64 1, %i.h                      ; 2 uses
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.j = load i64, ptr %i.b, align 8, !tbaa !50
  %i.k = or i64 %i.j, %i.i
  store i64 %i.k, ptr %i.b, align 8, !tbaa !50
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.l = xor i64 %i.i, -1
  %i.m = load i64, ptr %i.b, align 8, !tbaa !50
  %i.n = and i64 %i.m, %i.l
  store i64 %i.n, ptr %i.b, align 8, !tbaa !50
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %i.b, i32 %.sroa.2.0.copyload.i11, i1 noundef zeroext %1) #30
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.d, %bb.f
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_reallocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 63
  %i.b = lshr i64 %i.a, 6                         ; 2 uses
  %i.c = tail call noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.b, ptr noundef null) #30 ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !263    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.f = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp sgt i64 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c, !prof !116

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.c, ptr align 8 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.h, 8
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.d, align 8, !tbaa !50
  store i64 %i.k, ptr %i.c, align 8, !tbaa !50
  br label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 %i.h
  %i.m = tail call { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(ptr %.sroa.0.0.copyload.i, i32 0, ptr %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i, ptr %i.l, i32 0) #30 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.m, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.m, 1
  tail call void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #30
  store ptr %i.c, ptr %0, align 8
  %.sroa.5.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx23, align 8
  store ptr %.fca.0.extract, ptr %i.e, align 8
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !267
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !263    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !267  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.h
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.f) #36
  store ptr null, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.51.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 8
  store ptr null, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %bb.e, !prof !102

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %1, 3
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #37
  ret ptr %i.d
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = shl nsw i64 %i.c, 3
  %i.e = zext i32 %3 to i64
  %i.f = zext i32 %1 to i64
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = add i64 %i.g, %i.d                       ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt14_Bit_referenceaSEb.exit, %bb.a
  %.sroa.55.0.lcssa = phi i32 [ %5, %bb.a ], [ %.sroa.55.1, %_ZNSt14_Bit_referenceaSEb.exit ]
  %.sroa.03.0.lcssa = phi ptr [ %4, %bb.a ], [ %.sroa.03.1, %_ZNSt14_Bit_referenceaSEb.exit ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.03.0.lcssa, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.55.0.lcssa, 1
  ret { ptr, i32 } %.fca.1.insert

.lr.ph:                                           ; preds = %bb.a, %_ZNSt14_Bit_referenceaSEb.exit
  %.020 = phi i64 [ %i.y, %_ZNSt14_Bit_referenceaSEb.exit ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.03.019 = phi ptr [ %.sroa.03.1, %_ZNSt14_Bit_referenceaSEb.exit ], [ %4, %bb.a ] ; 4 uses
  %.sroa.55.018 = phi i32 [ %.sroa.55.1, %_ZNSt14_Bit_referenceaSEb.exit ], [ %5, %bb.a ] ; 3 uses
  %.sroa.512.017 = phi i32 [ %spec.select15, %_ZNSt14_Bit_referenceaSEb.exit ], [ %1, %bb.a ] ; 3 uses
  %.sroa.09.016 = phi ptr [ %spec.select, %_ZNSt14_Bit_referenceaSEb.exit ], [ %0, %bb.a ] ; 2 uses
  %i.j = zext nneg i32 %.sroa.512.017 to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = load i64, ptr %.sroa.09.016, align 8, !tbaa !50
  %i.m = and i64 %i.l, %i.k
  %.not = icmp eq i64 %i.m, 0
  %i.n = zext nneg i32 %.sroa.55.018 to i64
  %i.o = shl nuw i64 1, %i.n                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = load i64, ptr %.sroa.03.019, align 8, !tbaa !50
  %i.q = or i64 %i.p, %i.o
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.c:                                             ; preds = %.lr.ph
  %i.r = xor i64 %i.o, -1
  %i.s = load i64, ptr %.sroa.03.019, align 8, !tbaa !50
  %i.t = and i64 %i.s, %i.r
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.b, %bb.c
  %storemerge = phi i64 [ %i.t, %bb.c ], [ %i.q, %bb.b ]
  store i64 %storemerge, ptr %.sroa.03.019, align 8, !tbaa !50
  %i.u = add i32 %.sroa.512.017, 1
  %i.v = icmp eq i32 %.sroa.512.017, 63           ; 2 uses
  %spec.select.idx = select i1 %i.v, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 %spec.select.idx
  %spec.select15 = select i1 %i.v, i32 0, i32 %i.u
  %i.w = add i32 %.sroa.55.018, 1
  %i.x = icmp eq i32 %.sroa.55.018, 63            ; 2 uses
  %.sroa.55.1 = select i1 %i.x, i32 0, i32 %i.w   ; 2 uses
  %.sroa.03.1.idx = select i1 %i.x, i64 8, i64 0
  %.sroa.03.1 = getelementptr inbounds nuw i8, ptr %.sroa.03.019, i64 %.sroa.03.1.idx ; 2 uses
  %i.y = add nsw i64 %.020, -1
  %i.z = icmp sgt i64 %.020, 1
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !682
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !267
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
  %i.k = tail call { ptr, i32 } @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bISt13_Bit_iteratorS3_EET0_T_S5_S4_(ptr %1, i32 %2, ptr %i.b, i32 %.sroa.235.0.copyload, ptr %i.h, i32 %i.j) #30 ; 0 uses
  %i.l = zext nneg i32 %2 to i64
  %i.m = shl nuw i64 1, %i.l                      ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %1, align 8, !tbaa !50
  %i.o = or i64 %i.n, %i.m
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.d:                                             ; preds = %bb.b
end_hunk_0
