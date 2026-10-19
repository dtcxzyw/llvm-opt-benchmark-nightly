Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_accessor?download=true
inline.NumInlined: 360
inline.NumDeleted: 163
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZZN8nanobind6detail11func_createILb0ELb1EZL36nanobind_test_accessor_ext_exec_implNS_7module_EE3$_4bJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS7_jPNS0_12cleanup_listEE_8__invokeESL_SM_jSO_":bb.a
          to label %.noexc22.i unwind label %bb.v

.noexc22.i:                                       ; preds = %bb.m
  unreachable

.noexc.i:                                         ; preds = %bb.i, %bb.h
  store ptr %i.n, ptr %i.k, align 8, !tbaa !44
  %i.u = invoke noundef i32 @_ZN8nanobind6detail9cast_implILb1EiEET0_NS_6handleE(ptr nonnull %i.n) #18
          to label %"_ZZL36nanobind_test_accessor_ext_exec_implN8nanobind7module_EENK3$_4clEv.exit" unwind label %bb.v

bb.n:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #15 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.x, %bb.p ], [ %i.w, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.q ], [ %i.v, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.x

bb.s:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nanobind6detail8accessorINS0_11dict_item_tINS_6handleEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #15 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn13.pn.i = phi { ptr, i32 } [ %i.ab, %bb.t ], [ %i.aa, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.w

bb.v:                                             ; preds = %.noexc.i, %bb.m, %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nanobind6detail8accessorINS0_11dict_item_tINS_6handleEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn16.pn.i = phi { ptr, i32 } [ %i.ad, %bb.v ], [ %.pn13.pn.i, %bb.u ]
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  %.pn16.pn.pn.i = phi { ptr, i32 } [ %.pn16.pn.i, %bb.w ], [ %.pn.pn.i, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn16.pn.pn.i

"_ZZL36nanobind_test_accessor_ext_exec_implN8nanobind7module_EENK3$_4clEv.exit": ; preds = %.noexc.i
  %i.ag = icmp eq i32 %i.u, 7
  call void @_ZN8nanobind6detail8accessorINS0_11dict_item_tINS_6handleEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %spec.select.i = select i1 %i.ag, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  ret ptr %spec.select.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind10make_tupleILNS_9rv_policy5valueE0EJNS_4int_ES3_EEENS_5tupleEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.nanobind::tuple") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !19
  store ptr %i.b, ptr %i.a, align 16, !tbaa !11
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !19
  store ptr null, ptr %2, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = call noundef ptr @_ZN8nanobind6detail9tuple_newEPP7_objectm(ptr noundef nonnull %i.a, i64 noundef 2) #15 ; 2 uses
  %.not5 = icmp eq ptr %i.e, null
  br i1 %.not5, label %bb.d, label %bb.e, !prof !24

bb.d:                                             ; preds = %bb.c
  call void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr %i.e, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZN8nanobind6detail9tuple_newEPP7_objectm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden noundef i32 @_ZN8nanobind6detail9cast_implILb1EiEET0_NS_6handleE(ptr %0) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.nanobind::detail::type_caster.50", align 4 ; 5 uses
  %2 = alloca %struct.raii_cleanup, align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13 ; 2 uses
  store <2 x i32> <i32 1, i32 5>, ptr %2, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.d, align 8, !tbaa !155
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.a, ptr noundef %0, i32 noundef 17, ptr noundef nonnull align 4 dereferenceable(4) %1) #15
  br i1 %i.e, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.a
  invoke void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #19
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.critedge
  unreachable

bb.c:                                             ; preds = %.critedge
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN8nanobind6detail9cast_implILb1EiEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 4, !tbaa !17
  call void @_ZZN8nanobind6detail9cast_implILb1EiEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZZN8nanobind6detail9cast_implILb1EiEET0_NS_6handleEEN12raii_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !157
  %i.b = icmp ugt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge.i:                                    ; preds = %_ZL9Py_DECREFP7_object.exit.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !158
  %.not.i = icmp eq i32 %i.e, 5
  br i1 %.not.i, label %_ZN8nanobind6detail12cleanup_list7releaseEv.exit, label %bb.e

bb.b:                                             ; preds = %_ZL9Py_DECREFP7_object.exit.i, %.lr.ph.i
  %.04.i = phi i64 [ 1, %.lr.ph.i ], [ %i.m, %_ZL9Py_DECREFP7_object.exit.i ] ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.04.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.j = and i64 %i.i, 2147483648
  %.not3.i = icmp eq i64 %i.j, 0
  br i1 %.not3.i, label %bb.c, label %_ZL9Py_DECREFP7_object.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.i, -1                     ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !tbaa !14
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZL9Py_DECREFP7_object.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.h) #18
          to label %_ZL9Py_DECREFP7_object.exit.i unwind label %bb.f

_ZL9Py_DECREFP7_object.exit.i:                    ; preds = %bb.d, %bb.c, %bb.b
  %i.m = add nuw nsw i64 %.04.i, 1                ; 2 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !157
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge.i, !llvm.loop !156

bb.e:                                             ; preds = %._crit_edge.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  invoke void @PyMem_Free(ptr noundef %i.r) #18
          to label %_ZN8nanobind6detail12cleanup_list7releaseEv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2, 0
  tail call void @__clang_call_terminate(ptr %i.s) #17
  unreachable

_ZN8nanobind6detail12cleanup_list7releaseEv.exit: ; preds = %._crit_edge.i, %bb.e
  ret void
}

; Function Attrs: optsize
declare void @PyMem_Free(ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL36nanobind_test_accessor_ext_exec_implNS_7module_EE3$_5bJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS7_jPNS0_12cleanup_listEE_8__invokeESL_SM_jSO_"(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::dict", align 8    ; 8 uses
  %5 = alloca %"class.nanobind::object", align 8  ; 9 uses
  %6 = alloca %"class.nanobind::tuple", align 8   ; 7 uses
  %7 = alloca %"class.nanobind::int_", align 8    ; 7 uses
  %8 = alloca %"class.nanobind::int_", align 8    ; 7 uses
  %9 = alloca %"class.nanobind::int_", align 8    ; 7 uses
  %10 = alloca %"class.nanobind::detail::accessor.77", align 8 ; 9 uses
  %11 = alloca %"class.nanobind::detail::accessor.86", align 8 ; 10 uses
  %12 = alloca %"class.nanobind::object", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = tail call ptr @PyDict_New() #18
  store ptr %i.a, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZN8nanobind4int_C2IiTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES3_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 57005) #18
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  invoke void @_ZN8nanobind4int_C2IiTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES3_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 48879) #18
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8nanobind10make_tupleILNS_9rv_policy5valueE0EJNS_4int_ES3_EEENS_5tupleEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #18
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.b = load i64, ptr %6, align 8                ; 2 uses
  store i64 %i.b, ptr %5, align 8
  store ptr null, ptr %6, align 8, !tbaa !19
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #15 ; 0 uses
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  invoke void @_ZN8nanobind4int_C2IiTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES3_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 7) #18
          to label %bb.e unwind label %bb.v

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %.sroa.0.0.copyload.i37.i = load ptr, ptr %4, align 8, !noalias !164
  store ptr %.sroa.0.0.copyload.i37.i, ptr %10, align 8, !tbaa !43, !alias.scope !164
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !44, !alias.scope !164
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.b, ptr %i.g, align 8, !alias.scope !164
  %i.h = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN8nanobind6detail8accessorINS0_11dict_item_tINS_6handleEEEEaSINS_4int_EEERS5_OT_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(8) %9) #18
          to label %bb.f unwind label %bb.w       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @_ZN8nanobind6detail8accessorINS0_11dict_item_tINS_6handleEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.j = load ptr, ptr %5, align 8, !tbaa !19     ; 5 uses
  %.val36.i = load i64, ptr %i.j, align 8         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.k = trunc i64 %.val36.i to i32
  %i.l = add i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  %i.n = ptrtoint ptr %i.j to i64
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.l, ptr %i.j, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %.sroa.0.0.copyload.i38.i = load ptr, ptr %4, align 8, !noalias !165 ; 2 uses
  store ptr %.sroa.0.0.copyload.i38.i, ptr %11, align 8, !tbaa !50, !alias.scope !165
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !51, !alias.scope !165
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.n, ptr %i.p, align 8, !alias.scope !165
  store ptr null, ptr %12, align 8, !tbaa !19, !noalias !165
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %i.r = invoke ptr @PyDict_GetItemWithError(ptr noundef %.sroa.0.0.copyload.i38.i, ptr noundef nonnull %i.j) #18
          to label %bb.i unwind label %bb.l       ; 5 uses

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i39.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i39.i, label %_ZL11_Py_XNewRefP7_object.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.r, align 8, !tbaa !14
  %i.t = add i32 %i.s, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.noexc.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.t, ptr %i.r, align 8, !tbaa !14
  br label %.noexc.i

_ZL11_Py_XNewRefP7_object.exit.i.i:               ; preds = %bb.i
  %i.v = invoke ptr @PyErr_Occurred() #18
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_ZL11_Py_XNewRefP7_object.exit.i.i, %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #17
  unreachable

bb.m:                                             ; preds = %_ZL11_Py_XNewRefP7_object.exit.i.i
  %.not3.i = icmp eq ptr %i.v, null
  br i1 %.not3.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN8nanobind6detail18raise_python_errorEv() #19
          to label %.noexc33.i unwind label %bb.y

.noexc33.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  invoke void @_ZN8nanobind6detail15raise_key_errorEP7_object(ptr noundef nonnull %i.j) #19
          to label %.noexc34.i unwind label %bb.y

.noexc34.i:                                       ; preds = %bb.o
  unreachable

.noexc.i:                                         ; preds = %bb.k, %bb.j
  store ptr %i.r, ptr %i.o, align 8, !tbaa !51
  %i.y = invoke noundef i32 @_ZN8nanobind6detail9cast_implILb1EiEET0_NS_6handleE(ptr nonnull %i.r) #18
          to label %_ZN8nanobind4castIiNS_6detail8accessorINS1_11dict_item_tINS_6objectEEEEEEET_RKNS1_3apiIT0_EEb.exit.i unwind label %bb.y

_ZN8nanobind4castIiNS_6detail8accessorINS1_11dict_item_tINS_6objectEEEEEEET_RKNS1_3apiIT0_EEb.exit.i: ; preds = %.noexc.i
  %.not.i = icmp eq i32 %i.y, 7
  br i1 %.not.i, label %bb.p, label %bb.z

bb.p:                                             ; preds = %_ZN8nanobind4castIiNS_6detail8accessorINS1_11dict_item_tINS_6objectEEEEEEET_RKNS1_3apiIT0_EEb.exit.i
  %i.z = load ptr, ptr %5, align 8, !tbaa !19
  %.val35.i = load i64, ptr %i.z, align 8, !tbaa !14
  %i.aa = add nsw i64 %.val36.i, 1
  %.not28.i = icmp eq i64 %.val35.i, %i.aa
  br i1 %.not28.i, label %.critedge.i, label %bb.z

bb.q:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #15 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn.i = phi { ptr, i32 } [ %i.ad, %bb.s ], [ %i.ac, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.t ], [ %i.ab, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ab

bb.v:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nanobind6detail8accessorINS0_11dict_item_tINS_6handleEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #15 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
end_hunk_0
