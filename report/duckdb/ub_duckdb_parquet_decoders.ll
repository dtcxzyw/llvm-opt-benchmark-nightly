inline.NumInlined: 1554
inline.NumDeleted: 946
begin_hunk_0_@_ZNK6duckdb10unique_ptrINS_16TableFilterStateESt14default_deleteIS1_ELb1EEdeEv:bb.a
bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_16TableFilterStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6duckdb11TableFilter4CastINS_20ConjunctionAndFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !399
  %.not = icmp eq i8 %i.b, 4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb11TableFilter4CastINS_16ExpressionFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !399
  %.not = icmp eq i8 %i.b, 9
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef zeroext i1 @_ZNK6duckdb16ExpressionFilter20EvaluateWithConstantERNS_18ExpressionExecutorERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17DictionaryDecoder6FilterEPhmRNS_6VectorERNS_15SelectionVectorERm(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(24) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !371
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #23
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN6duckdb17DictionaryDecoder4ReadEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef 0) ; 11 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %5, align 8, !tbaa !266
  br label %bb.al

bb.g:                                             ; preds = %bb.e
  %i.g = icmp eq i64 %i.e, %2                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !23, !align !24
  %.029.in = select i1 %i.g, ptr %i.h, ptr %i.j
  %.029 = load ptr, ptr %.029.in, align 8, !tbaa !349 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.e)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.h

common.resume:                                    ; preds = %bb.d, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.d, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.k) #23
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.g
  store i64 0, ptr %5, align 8, !tbaa !266
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !345  ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = load ptr, ptr %6, align 8                ; 9 uses
  br i1 %i.g, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZN6duckdb15SelectionVectorC2Em.exit.split

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %xtraiter73 = and i64 %2, 1
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter79 = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.02834.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.ao, %bb.k ] ; 4 uses
  %i.s = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.an, %bb.k ] ; 3 uses
  %niter80 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter80.next.1, %bb.k ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.us
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !364, !range !353, !noundef !23
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.z = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.z, ptr %5, align 8, !tbaa !266
  %i.aa = trunc i64 %.02834.us to i32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.ac = phi i64 [ %i.z, %bb.i ], [ %i.s, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 3 uses
  %i.ad = or disjoint i64 %.02834.us, 1           ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !364, !range !353, !noundef !23
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.ak = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ak, ptr %5, align 8, !tbaa !266
  %i.al = trunc i64 %i.ad to i32
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ac
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.an = phi i64 [ %i.ak, %bb.j ], [ %i.ac, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.ao = add nuw i64 %.02834.us, 2               ; 2 uses
  %niter80.next.1 = add i64 %niter80, 2           ; 2 uses
  %niter80.ncmp.1 = icmp eq i64 %niter80.next.1, %unroll_iter79
  br i1 %niter80.ncmp.1, label %.split.us.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !415

_ZN6duckdb15SelectionVectorC2Em.exit.split:       ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.split
  %xtraiter = and i64 %i.e, 1
  %i.ap = icmp eq i64 %i.e, 1
  br i1 %i.ap, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %i.e, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.split
  %xtraiter65 = and i64 %i.e, 1
  %i.aq = icmp eq i64 %i.e, 1
  br i1 %i.aq, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader
  %unroll_iter71 = and i64 %i.e, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36: ; preds = %bb.n, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new
  %.02834.us35 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new ], [ %i.bn, %bb.n ] ; 4 uses
  %i.ar = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new ], [ %i.bm, %bb.n ] ; 3 uses
  %niter72 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new ], [ %niter72.next.1, %bb.n ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.us35
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !364, !range !353, !noundef !23
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.l, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1

bb.l:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36
  %i.ay = add i64 %i.ar, 1                        ; 2 uses
  store i64 %i.ay, ptr %5, align 8, !tbaa !266
  %i.az = trunc i64 %.02834.us35 to i32
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ar
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1: ; preds = %bb.l, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36
  %i.bb = phi i64 [ %i.ay, %bb.l ], [ %i.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36 ] ; 3 uses
  %i.bc = or disjoint i64 %.02834.us35, 1         ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !364, !range !353, !noundef !23
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1
  %i.bj = add i64 %i.bb, 1                        ; 2 uses
  store i64 %i.bj, ptr %5, align 8, !tbaa !266
  %i.bk = trunc i64 %i.bc to i32
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bb
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1
  %i.bm = phi i64 [ %i.bj, %bb.m ], [ %i.bb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1 ] ; 3 uses
  %i.bn = add nuw i64 %.02834.us35, 2             ; 2 uses
  %niter72.next.1 = add i64 %niter72, 2           ; 2 uses
  %niter72.ncmp.1 = icmp eq i64 %niter72.next.1, %unroll_iter71
  br i1 %niter72.ncmp.1, label %.split.us.loopexit59.unr-lcssa.a, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36, !llvm.loop !415

.split.us.loopexit.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod76.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod76.not, label %.split.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %.split.us.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.02834.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.ao, %.split.us.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init75 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.an, %.split.us.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod78 = trunc i64 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod78)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.us.epil.init
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !364, !range !353, !noundef !23
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.o, label %.split.us

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.bu = add i64 %.epil.init75, 1                ; 2 uses
  store i64 %i.bu, ptr %5, align 8, !tbaa !266
  %i.bv = trunc i64 %.02834.us.epil.init to i32
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.epil.init75
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !3
  br label %.split.us

.split.us.loopexit59.unr-lcssa.a:                 ; preds = %bb.n
  %lcmp.mod68.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod68.not, label %.split.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader: ; preds = %.split.us.loopexit59.unr-lcssa.a, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader
  %.02834.us35.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader ], [ %i.bn, %.split.us.loopexit59.unr-lcssa.a ] ; 2 uses
  %.epil.init67 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader ], [ %i.bm, %.split.us.loopexit59.unr-lcssa.a ] ; 3 uses
  %lcmp.mod70 = trunc i64 %i.e to i1
  call void @llvm.assume(i1 %lcmp.mod70)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.us35.epil.init
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !364, !range !353, !noundef !23
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.p, label %.split.us

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader
  %i.cd = add i64 %.epil.init67, 1                ; 2 uses
  store i64 %i.cd, ptr %5, align 8, !tbaa !266
  %i.ce = trunc i64 %.02834.us35.epil.init to i32
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.epil.init67
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !3
  br label %.split.us

.split.us.loopexit61.unr-lcssa:                   ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %.split.us.loopexit61.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.02834.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.dq, %.split.us.loopexit61.unr-lcssa ] ; 2 uses
  %.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.dp, %.split.us.loopexit61.unr-lcssa ] ; 3 uses
  %lcmp.mod64 = trunc i64 %i.e to i1
  call void @llvm.assume(i1 %lcmp.mod64)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.epil.init
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !364, !range !353, !noundef !23
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.q, label %.split.us

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.02834.epil.init
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = add i64 %.epil.init, 1                  ; 2 uses
  store i64 %i.co, ptr %5, align 8, !tbaa !266
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.epil.init
  store i32 %i.cn, ptr %i.cp, align 4, !tbaa !3
  br label %.split.us

.split.us:                                        ; preds = %.split.us.loopexit61.unr-lcssa, %bb.q, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %.split.us.loopexit59.unr-lcssa.a, %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader, %.split.us.loopexit.unr-lcssa, %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.cq = phi i64 [ %.epil.init67, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader ], [ %.epil.init75, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %i.an, %.split.us.loopexit.unr-lcssa ], [ %i.bu, %bb.o ], [ %i.bm, %.split.us.loopexit59.unr-lcssa.a ], [ %i.cd, %bb.p ], [ %i.dp, %.split.us.loopexit61.unr-lcssa ], [ %i.co, %bb.q ], [ %.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.cr = icmp ult i64 %i.cq, %2
  br i1 %i.cr, label %7, label %bb.ae

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.t, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.02834 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.dq, %bb.t ] ; 4 uses
  %i.cs = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.dp, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.t ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !364, !range !353, !noundef !23
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.r, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.02834
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = add i64 %i.cs, 1                        ; 2 uses
  store i64 %i.db, ptr %5, align 8, !tbaa !266
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cs
  store i32 %i.da, ptr %i.dc, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %bb.r, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.dd = phi i64 [ %i.db, %bb.r ], [ %i.cs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.de = or disjoint i64 %.02834, 1              ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !364, !range !353, !noundef !23
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.de
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = add i64 %i.dd, 1                        ; 2 uses
  store i64 %i.dn, ptr %5, align 8, !tbaa !266
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dd
  store i32 %i.dm, ptr %i.do, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.dp = phi i64 [ %i.dn, %bb.s ], [ %i.dd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.dq = add nuw i64 %.02834, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split.us.loopexit61.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !415

7:                                                ; preds = %.split.us
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = icmp eq ptr %4, %6
  br i1 %9, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, label %bb.u

bb.u:                                             ; preds = %7
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !299 ; 2 uses
  %i.dt = load <2 x ptr>, ptr %i.k, align 8, !tbaa !349
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 3 uses
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.dy = atomicrmw volatile add ptr %i.du, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.x, %bb.w, %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !299 ; 8 uses
  store <2 x ptr> %i.dt, ptr %8, align 8, !tbaa !349
  %.not.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.eb, align 8, !tbaa !294
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !296
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !242
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #23, !inline_history !416
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !242
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #23, !inline_history !416
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit

bb.aa:                                            ; preds = %bb.y
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ee, %bb.ab ], [ %i.eo, %bb.ac ]
  %i.ep = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ep, label %bb.ad, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, !prof !41

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #23
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit

_ZN6duckdb15SelectionVector10InitializeERKS0_.exit: ; preds = %7, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ad
  %i.eq = load ptr, ptr %6, align 8, !tbaa !363
  store ptr %i.eq, ptr %4, align 8, !tbaa !363
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, %.split.us
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !299 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 4 uses
  %i.eu = load atomic i64, ptr %i.et acquire, align 8 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 4294967297
  %i.ew = trunc i64 %i.eu to i32                  ; 2 uses
  br i1 %i.ev, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.et, align 8, !tbaa !294
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 0, ptr %i.ex, align 4, !tbaa !296
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !242
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #23, !inline_history !366
  %i.fb = load ptr, ptr %i.es, align 8, !tbaa !242
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #23, !inline_history !366
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.fe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i.i.i33 = icmp eq i8 %i.fe, 0
  br i1 %.not.i.i.i.i.i33, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ff = add nsw i32 %i.ew, -1
  store i32 %i.ff, ptr %i.et, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.fg = atomicrmw volatile add ptr %i.et, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i = phi i32 [ %i.ew, %bb.ai ], [ %i.fg, %bb.aj ]
  %i.fh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fh, label %bb.ak, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !41

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.ae, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.al

bb.al:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb10RLEDecoderC2ERNS_12ColumnReaderE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 416
  store ptr %i.b, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !341
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10RLEDecoder14InitializePageEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !417, !nonnull !23, !align !24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45, !nonnull !23, !align !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load i8, ptr %i.d, align 8, !tbaa !418
  %.not = icmp eq i8 %i.e, 10
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.l, %bb.h ], [ %i.f, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.g, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #23
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  %i.i = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_16ResizeableBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp ult i64 %i.k, 4
  br i1 %.not.i.i, label %bb.f, label %_ZN6duckdb9make_uniqINS_12RleBpDecoderEJRPhRmiEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.16)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb9make_uniqINS_12RleBpDecoderEJRPhRmiEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.e
  %i.n = add i64 %i.k, -4
  store i64 %i.n, ptr %i.j, align 8, !tbaa !25
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store ptr %i.p, ptr %i.i, align 8, !tbaa !33
  %i.q = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_16ResizeableBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.r = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_16ResizeableBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21, !noalias !419 ; 8 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !32, !noalias !419
  %i.v = load i64, ptr %i.s, align 8, !tbaa !266, !noalias !419
  %i.w = and i64 %i.v, 4294967295
  store ptr %i.u, ptr %i.t, align 8, !tbaa !33, !noalias !419
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !25, !noalias !419
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 1, ptr %i.y, align 8, !tbaa !376, !noalias !419
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i8 0, ptr %i.aa, align 8, !tbaa !378, !noalias !419
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false), !noalias !419
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i8 1, ptr %i.ab, align 8, !tbaa !379, !noalias !419
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i64 1, ptr %i.ac, align 8, !tbaa !380, !noalias !419
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !342 ; 2 uses
  store ptr %i.t, ptr %i.ad, align 8, !tbaa !342
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb12RleBpDecoderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12RleBpDecoderEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12RleBpDecoderEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_12RleBpDecoderEJRPhRmiEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.ae) #22
  br label %_ZNSt10unique_ptrIN6duckdb12RleBpDecoderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12RleBpDecoderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb12RleBpDecoderEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_12RleBpDecoderEJRPhRmiEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10RLEDecoder4ReadEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !417, !nonnull !23, !align !24 ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = add i64 %4, %2
  %i.c = icmp ult i64 %4, %i.b
  br i1 %i.c, label %.lr.ph.i, label %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45, !nonnull !23, !align !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !104  ; 5 uses
  %i.h = add i64 %2, -1
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.i = icmp ult i64 %i.h, 3
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.016.i = phi i64 [ %4, %.lr.ph.i.new ], [ %i.ak, %bb.b ] ; 5 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.aj, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.016.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !123
end_hunk_0
