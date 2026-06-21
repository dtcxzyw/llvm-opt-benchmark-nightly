inline.NumInlined: 9358
inline.NumDeleted: 4125
begin_hunk_0_@_ZN6duckdb9make_uniqINS_21BoundWindowExpressionEJNS_14ExpressionTypeERKNS_13LogicalTypeIdEDnDnEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #24, !inline_history !417
  br label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb12FunctionDataEEclEPS1_.exit.i
  %i.h = load ptr, ptr %6, align 8, !tbaa !1921   ; 3 uses
  %.not.i6 = icmp eq ptr %i.h, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN6duckdb17AggregateFunctionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17AggregateFunctionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17AggregateFunctionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !172
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(368) %i.h) #24, !inline_history !1922
  br label %_ZNSt10unique_ptrIN6duckdb17AggregateFunctionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17AggregateFunctionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb17AggregateFunctionEEclEPS1_.exit.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #24
  ret void

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %7, align 8, !tbaa !374    ; 3 uses
  %.not.i7 = icmp eq ptr %i.n, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit9, label %_ZNKSt14default_deleteIN6duckdb12FunctionDataEEclEPS1_.exit.i8

_ZNKSt14default_deleteIN6duckdb12FunctionDataEEclEPS1_.exit.i8: ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !172
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #24, !inline_history !417
  br label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit9

_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit9: ; preds = %bb.e, %_ZNKSt14default_deleteIN6duckdb12FunctionDataEEclEPS1_.exit.i8
  %i.r = load ptr, ptr %6, align 8, !tbaa !1921   ; 3 uses
  %.not.i10 = icmp eq ptr %i.r, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN6duckdb17AggregateFunctionESt14default_deleteIS1_EED2Ev.exit12, label %_ZNKSt14default_deleteIN6duckdb17AggregateFunctionEEclEPS1_.exit.i11

_ZNKSt14default_deleteIN6duckdb17AggregateFunctionEEclEPS1_.exit.i11: ; preds = %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit9
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !172
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(368) %i.r) #24, !inline_history !1922
  br label %_ZNSt10unique_ptrIN6duckdb17AggregateFunctionESt14default_deleteIS1_EED2Ev.exit12

_ZNSt10unique_ptrIN6duckdb17AggregateFunctionESt14default_deleteIS1_EED2Ev.exit12: ; preds = %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit9, %_ZNKSt14default_deleteIN6duckdb17AggregateFunctionEEclEPS1_.exit.i11
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt10unique_ptrIN6duckdb17AggregateFunctionESt14default_deleteIS1_EED2Ev.exit12
  %.pn = phi { ptr, i32 } [ %i.m, %_ZNSt10unique_ptrIN6duckdb17AggregateFunctionESt14default_deleteIS1_EED2Ev.exit12 ], [ %i.l, %bb.d ]
  call void @_ZdlPv(ptr noundef nonnull %i.a) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_21BoundWindowExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.39", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1883   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_21BoundWindowExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !205

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.125, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !149    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_21BoundWindowExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalWindowESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.39", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1850   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13LogicalWindowESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !205

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.125, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !149    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_13LogicalWindowESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder17BindTableFunctionERNS_13TableFunctionENS_6vectorINS_5ValueELb1ESaIS4_EEE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::BoundStatement") align 8 %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(544) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unordered_map", align 8 ; 15 uses
  %5 = alloca %"class.duckdb::vector", align 8    ; 6 uses
  %6 = alloca %"class.duckdb::vector.2", align 8  ; 6 uses
  %7 = alloca %"class.duckdb::TableFunctionRef", align 8 ; 11 uses
  %8 = alloca %"class.duckdb::vector.763", align 16 ; 7 uses
  %9 = alloca %"class.std::unordered_map", align 8 ; 11 uses
  %10 = alloca %"class.duckdb::vector", align 8   ; 6 uses
  %11 = alloca %"class.duckdb::vector.2", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !1923
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 1, ptr %i.b, align 8, !tbaa !1924
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZN6duckdb16TableFunctionRefC1Ev(ptr noundef nonnull align 8 dereferenceable(121) %7)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.i = load <2 x ptr>, ptr %3, align 8, !tbaa !988
  store <2 x ptr> %i.i, ptr %8, align 16, !tbaa !988
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1036
  store ptr %i.l, ptr %i.j, align 16, !tbaa !1036
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %4, align 8, !tbaa !1923   ; 3 uses
  store ptr %i.m, ptr %9, align 8, !tbaa !1923
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !1924 ; 2 uses
  store i64 %i.o, ptr %i.n, align 8, !tbaa !1924
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !1925 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !403
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1800
  store i64 %i.t, ptr %i.r, align 8, !tbaa !1800
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !475
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 5 uses
  store ptr null, ptr %i.v, align 8, !tbaa !1926
  %i.w = icmp eq ptr %i.m, %i.a
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  store ptr %i.v, ptr %9, align 8, !tbaa !1923
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !1926
  store ptr %i.x, ptr %i.v, align 8, !tbaa !1926
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.y = phi ptr [ %i.v, %bb.c ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !496
  %i.ab = urem i64 %i.aa, %i.o
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab
  store ptr %i.p, ptr %i.ac, align 8, !tbaa !478
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit: ; preds = %bb.d, %bb.e
  store i64 0, ptr %i.e, align 8, !tbaa !479
  store i64 1, ptr %i.b, align 8, !tbaa !1924
  store ptr null, ptr %i.a, align 8, !tbaa !1926
  store ptr %i.a, ptr %4, align 8, !tbaa !1923
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb6Binder25BindTableFunctionInternalERNS_13TableFunctionERKNS_16TableFunctionRefENS_6vectorINS_5ValueELb1ESaIS7_EEESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSG_S7_EEENS6_INS_11LogicalTypeELb1ESaISO_EEENS6_ISG_Lb1ESaISG_EEE(ptr dead_on_unwind writable sret(%"struct.duckdb::BoundStatement") align 8 %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(544) %2, ptr noundef nonnull align 8 dereferenceable(121) %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.af = load ptr, ptr %11, align 8, !tbaa !287  ; 3 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !288 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.af, %bb.f ] ; 3 uses
  %i.ah = load ptr, ptr %.05.i.i.i, align 8, !tbaa !149 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.ah) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %i.ag
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !319

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !287
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.al = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.af, %bb.f ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.al) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g
  %i.am = load ptr, ptr %10, align 8, !tbaa !354  ; 3 uses
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !355 ; 2 uses
  %.not4.i.i.i8 = icmp eq ptr %i.am, %i.an
  br i1 %.not4.i.i.i8, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i9

.lr.ph.i.i.i9:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %.lr.ph.i.i.i9
  %.05.i.i.i10 = phi ptr [ %i.ao, %.lr.ph.i.i.i9 ], [ %i.am, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i10) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i10, i64 24 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i.i.i11, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i9, !llvm.loop !369

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i9
  %.pr.i12 = load ptr, ptr %10, align 8, !tbaa !354
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ap = phi ptr [ %.pr.i12, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.am, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i13, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ap) #26
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.h
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !1925 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ar, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.aq, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit ] ; 5 uses
  %i.ar = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !403 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.at) #24
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !149 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.au) #26
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #26
  %.not.i.i.i.i14 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i14, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1927

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.ax = load ptr, ptr %9, align 8, !tbaa !1923
  %i.ay = load i64, ptr %i.n, align 8, !tbaa !1924
  %i.az = shl i64 %i.ay, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %i.az, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.ba = load ptr, ptr %9, align 8, !tbaa !1923  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.v
  br i1 %i.bb, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ba) #26
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.i
  %i.bc = load ptr, ptr %8, align 16, !tbaa !1028 ; 3 uses
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !1026 ; 2 uses
  %.not4.i.i.i15 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not4.i.i.i15, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, %.lr.ph.i.i.i16
  %.05.i.i.i17 = phi ptr [ %i.be, %.lr.ph.i.i.i16 ], [ %i.bc, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i17) #24
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i17, i64 64 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.be, %i.bd
  br i1 %.not.i.i.i18, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i16, !llvm.loop !1046

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i16
  %.pr.i19 = load ptr, ptr %8, align 16, !tbaa !1028
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.bf = phi ptr [ %.pr.i19, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bc, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i20 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i20, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bf) #26
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb16TableFunctionRefE, i64 16), ptr %7, align 8, !tbaa !172
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !189 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !172
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(128) %i.bh) #24, !inline_history !1928
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !154 ; 3 uses
  %.not.i1.i = icmp eq ptr %i.bm, null
  br i1 %.not.i1.i, label %_ZN6duckdb16TableFunctionRefD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !172
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(56) %i.bm) #24, !inline_history !1929
  br label %_ZN6duckdb16TableFunctionRefD2Ev.exit

_ZN6duckdb16TableFunctionRefD2Ev.exit:            ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit.i
  call void @_ZN6duckdb8TableRefD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(121) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !1925 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.not4.i.i.i21 = icmp eq ptr %i.bq, null
  br i1 %.not4.i.i.i21, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i48, label %.lr.ph.i.i.i.i43

.lr.ph.i.i.i.i43:                                 ; preds = %_ZN6duckdb16TableFunctionRefD2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i46
  %.06.i.i.i.i44 = phi ptr [ %i.br, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i46 ], [ %i.bq, %_ZN6duckdb16TableFunctionRefD2Ev.exit ] ; 5 uses
  %i.br = load ptr, ptr %.06.i.i.i.i44, align 8, !tbaa !403 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i44, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i44, i64 40
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bt) #24
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !149 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i44, i64 24
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45: ; preds = %.lr.ph.i.i.i.i43
  call void @_ZdlPv(ptr noundef %i.bu) #26
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i46

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i46: ; preds = %.lr.ph.i.i.i.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i45
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i44) #26
  %.not.i.i.i.i47 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i47, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i48, label %.lr.ph.i.i.i.i43, !llvm.loop !1927

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i48: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i46, %_ZN6duckdb16TableFunctionRefD2Ev.exit
  %i.bx = load ptr, ptr %4, align 8, !tbaa !1923
  %i.by = load i64, ptr %i.b, align 8, !tbaa !1924
  %i.bz = shl i64 %i.by, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bx, i8 0, i64 %i.bz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.ca = load ptr, ptr %4, align 8, !tbaa !1923  ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.a
  br i1 %i.cb, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit50, label %bb.k

bb.k:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i48
  call void @_ZdlPv(ptr noundef %i.ca) #26
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit50

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit50: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i48, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.l:                                             ; preds = %bb.a
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.b
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #24
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #24
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #24
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.n ], [ %i.cd, %bb.m ]
  call void @_ZN6duckdb16TableFunctionRefD2Ev(ptr noundef nonnull align 8 dereferenceable(121) %7) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.cc, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN6duckdb16TableFunctionRefC1Ev(ptr noundef nonnull align 8 dereferenceable(121)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1925 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !403 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.e) #24
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !149  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.f) #26
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #26
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1927

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i, %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !1923
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1924
  %i.l = shl i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !1923   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.m) #26
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb16TableFunctionRefD2Ev(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb16TableFunctionRefE, i64 16), ptr %0, align 8, !tbaa !172
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(128) %i.b) #24, !inline_history !200
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154  ; 3 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !172
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #24, !inline_history !202
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  tail call void @_ZN6duckdb8TableRefD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder4BindERNS_16TableFunctionRefE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::BoundStatement") align 8 %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(121) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.duckdb::QueryErrorContext", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"struct.duckdb::EntryLookupInfo", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::optional_ptr.582", align 8 ; 6 uses
  %8 = alloca %"class.duckdb::unique_ptr.411", align 8 ; 7 uses
  %9 = alloca %"class.duckdb::shared_ptr.487", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  %11 = alloca %"struct.duckdb::BoundStatement", align 8 ; 6 uses
  %12 = alloca %"class.duckdb::ErrorData", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.39", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.duckdb::vector", align 8   ; 16 uses
  %18 = alloca %"class.duckdb::vector.763", align 16 ; 17 uses
  %19 = alloca %"class.std::unordered_map", align 8 ; 17 uses
  %20 = alloca %"struct.duckdb::BoundStatement", align 8 ; 14 uses
  %21 = alloca %"class.duckdb::ErrorData", align 8 ; 22 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator.39", align 1 ; 3 uses
  %24 = alloca %"class.duckdb::FunctionBinder", align 8 ; 5 uses
  %25 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator.39", align 1 ; 3 uses
  %28 = alloca %"class.duckdb::TableFunction", align 8 ; 22 uses
  %29 = alloca %"class.duckdb::vector", align 16  ; 16 uses
  %30 = alloca %"class.duckdb::vector.2", align 16 ; 15 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %32 = alloca %"struct.duckdb::LogicalType", align 8 ; 11 uses
  %33 = alloca %"struct.duckdb::LogicalType", align 8 ; 11 uses
  %34 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  %35 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %36 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %37 = alloca %"struct.duckdb::LogicalType", align 8 ; 14 uses
  %38 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  %39 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %40 = alloca %"struct.duckdb::BoundStatement", align 8 ; 13 uses
  %41 = alloca %"struct.duckdb::BoundStatement", align 8 ; 6 uses
  %42 = alloca %"class.duckdb::vector.763", align 16 ; 7 uses
  %43 = alloca %"class.std::unordered_map", align 8 ; 11 uses
  %44 = alloca %"class.duckdb::vector", align 16  ; 7 uses
  %45 = alloca %"class.duckdb::vector.2", align 16 ; 7 uses
  %46 = alloca %"class.duckdb::ErrorData", align 8 ; 6 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %48 = alloca %"class.std::allocator.39", align 1 ; 3 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %50 = alloca %"class.std::allocator.39", align 1 ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.059.0.copyload = load i64, ptr %i.f, align 8, !tbaa !272 ; 2 uses
  store i64 %.sroa.059.0.copyload, ptr %3, align 8, !tbaa !272
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.h = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(209) ptr @_ZN6duckdb14BaseExpression4CastINS_18FunctionExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.h) ; 7 uses
end_hunk_0
