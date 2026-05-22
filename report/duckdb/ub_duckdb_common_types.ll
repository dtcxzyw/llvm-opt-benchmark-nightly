inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb8Interval3AddENS_11timestamp_tENS_10interval_tE:bb.a
  %.sroa.015.0 = phi i64 [ %i.h, %_ZN6duckdb8Interval3AddENS_7dtime_tENS_10interval_tERNS_6date_tE.exit ], [ %0, %bb.a ], [ %0, %bb.a ]
  ret i64 %.sroa.015.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9Timestamp7ConvertENS_11timestamp_tERNS_6date_tERNS_7dtime_tE(i64 %0, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  switch i64 %0, label %bb.b [
    i64 9223372036854775807, label %_ZN6duckdb9Timestamp7GetDateENS_11timestamp_tE.exit
    i64 -9223372036854775807, label %.fold.split.i
  ], !prof !983

bb.b:                                             ; preds = %bb.a
  %.lobit.i = lshr i64 %0, 63                     ; 2 uses
  %i.b = add nsw i64 %.lobit.i, %0
  %i.c = sdiv i64 %i.b, 86400000000
  %i.d = sub nsw i64 %i.c, %.lobit.i
  %i.e = trunc nsw i64 %i.d to i32
  br label %_ZN6duckdb9Timestamp7GetDateENS_11timestamp_tE.exit

.fold.split.i:                                    ; preds = %bb.a
  br label %_ZN6duckdb9Timestamp7GetDateENS_11timestamp_tE.exit

_ZN6duckdb9Timestamp7GetDateENS_11timestamp_tE.exit: ; preds = %bb.a, %bb.b, %.fold.split.i
  %.sroa.05.0.i = phi i32 [ %i.e, %bb.b ], [ 2147483647, %bb.a ], [ -2147483647, %.fold.split.i ] ; 2 uses
  store i32 %.sroa.05.0.i, ptr %1, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  %i.f = sext i32 %.sroa.05.0.i to i64
  %i.g = call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.f, i64 noundef 86400000000, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.g, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb9Timestamp7GetDateENS_11timestamp_tE.exit
  %i.h = call ptr @__cxa_allocate_exception(i64 16) #48 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.116, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb19ConversionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #51
          to label %bb.j unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.k) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.h) #48
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13 = phi { ptr, i32 } [ %.pn14, %bb.g ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  resume { ptr, i32 } %.pn13

bb.i:                                             ; preds = %_ZN6duckdb9Timestamp7GetDateENS_11timestamp_tE.exit
  %i.n = load i64, ptr %i.a, align 8, !tbaa !108
  %i.o = sub nsw i64 %0, %i.n
  store i64 %i.o, ptr %2, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret void

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define range(i64 -9223372036854775808, 9223372036854775807) i64 @_ZN6duckdb9Timestamp12FromDatetimeENS_6date_tENS_7dtime_tE(i32 %0, i64 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::timestamp_t", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.a = sext i32 %0 to i64
  %i.b = call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.a, i64 noundef 86400000000, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.b, label %bb.b, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !984
  %i.d = call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.c, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.d, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread

_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit: ; preds = %bb.b
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !108 ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.g [
    i64 -9223372036854775807, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread
    i64 9223372036854775807, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread
  ]

_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread: ; preds = %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit, %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit, %bb.b, %bb.a
  %i.e = call ptr @__cxa_allocate_exception(i64 16) #48 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread
  invoke void @_ZN6duckdb19ConversionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #51
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #48
  br label %bb.h

bb.g:                                             ; preds = %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit
  ret i64 %.sroa.0.0.copyload.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn11 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn12, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn11

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !986  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !989
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i16, ptr %i.d, align 8, !tbaa !997
  %i.f = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef zeroext %i.e), !inline_history !998
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !999  ; 3 uses
  %i.i = load i16, ptr %i.b, align 8, !tbaa !1001
  %i.j = icmp eq i16 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %_ZN6duckdbL10GetSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorERNS_10LinkedListE.exit

bb.d:                                             ; preds = %bb.c
  %.not6.i.i = icmp sgt i16 %i.h, -1
  %i.k = zext i1 %.not6.i.i to i16
  %.0.i.i = shl i16 %i.h, %i.k
  %i.l = load ptr, ptr %0, align 8, !tbaa !989
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef zeroext %.0.i.i), !inline_history !998
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !986
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.b
  %.sink26.i = phi ptr [ %i.n, %bb.d ], [ %2, %bb.b ]
  %.sink24.i = phi ptr [ %i.m, %bb.d ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sink26.i, i64 8
  store ptr %.sink24.i, ptr %i.o, align 8, !tbaa !1002
  store ptr %.sink24.i, ptr %i.a, align 8, !tbaa !986
  br label %_ZN6duckdbL10GetSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorERNS_10LinkedListE.exit

_ZN6duckdbL10GetSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorERNS_10LinkedListE.exit: ; preds = %bb.c, %.sink.split.i
  %.0.i = phi ptr [ %i.b, %bb.c ], [ %.sink24.i, %.sink.split.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1003
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.r = load i64, ptr %2, align 8, !tbaa !1004
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %2, align 8, !tbaa !1004
  %i.t = load i16, ptr %.0.i, align 8, !tbaa !1001
  %i.u = add i16 %i.t, 1
  store i16 %i.u, ptr %.0.i, align 8, !tbaa !1001
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb20ListSegmentFunctions15BuildListVectorERKNS_10LinkedListERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %3, ptr %i.a, align 8, !tbaa !108
  %.0.in9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.010 = load ptr, ptr %.0.in9, align 8, !tbaa !1002 ; 2 uses
  %.not11 = icmp eq ptr %.010, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.012 = phi ptr [ %.010, %.lr.ph ], [ %.0, %bb.b ] ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1005
  call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %.012, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.d = load i16, ptr %.012, align 8, !tbaa !1001
  %i.e = zext i16 %i.d to i64
  %i.f = load i64, ptr %i.a, align 8, !tbaa !108
  %i.g = add i64 %i.f, %i.e
  store i64 %i.g, ptr %i.a, align 8, !tbaa !108
  %.0.in = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !1002 ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1006

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb23GetSegmentDataFunctionsERNS_20ListSegmentFunctionsERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::ListSegmentFunctions", align 8 ; 11 uses
  %3 = alloca %"class.duckdb::vector.461", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !534
  %i.b = icmp eq i8 %i.a, 2
  br i1 %i.b, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse.backedge, %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #48 ; 3 uses
  invoke void @_ZN6duckdb29ParameterNotResolvedExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %tailrecurse._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb29ParameterNotResolvedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #51
  unreachable

bb.c:                                             ; preds = %tailrecurse._crit_edge
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #48
  br label %common.resume

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %.tr86125 = phi ptr [ %.tr86.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 5 uses
  %.tr124 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 67 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.tr86125, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !483
  switch i8 %i.f, label %bb.ap [
    i8 -50, label %bb.d
    i8 1, label %bb.d
    i8 3, label %bb.e
    i8 5, label %bb.f
    i8 7, label %bb.g
    i8 9, label %bb.h
    i8 2, label %bb.i
    i8 4, label %bb.j
    i8 6, label %bb.k
    i8 8, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 -52, label %bb.o
    i8 -53, label %bb.p
    i8 21, label %bb.q
    i8 -56, label %bb.r
    i8 23, label %bb.w
    i8 24, label %bb.z
    i8 29, label %bb.am
  ]

bb.d:                                             ; preds = %.lr.ph, %.lr.ph
  store ptr @_ZN6duckdbL22CreatePrimitiveSegmentIbEEPNS_11ListSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt, ptr %.tr124, align 8, !tbaa !989
  %i.g = getelementptr inbounds nuw i8, ptr %.tr124, i64 8
  store ptr @_ZN6duckdbL27WriteDataToPrimitiveSegmentIbEEvRKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm, ptr %i.g, align 8, !tbaa !1003
  %i.h = getelementptr inbounds nuw i8, ptr %.tr124, i64 16
  store ptr @_ZN6duckdbL28ReadDataFromPrimitiveSegmentIbEEvRKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm, ptr %i.h, align 8, !tbaa !1005
  %i.i = getelementptr inbounds nuw i8, ptr %.tr124, i64 24
  store i16 8, ptr %i.i, align 8, !tbaa !997
  br label %bb.av

bb.e:                                             ; preds = %.lr.ph
  store ptr @_ZN6duckdbL22CreatePrimitiveSegmentIaEEPNS_11ListSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt, ptr %.tr124, align 8, !tbaa !989
  %i.j = getelementptr inbounds nuw i8, ptr %.tr124, i64 8
  store ptr @_ZN6duckdbL27WriteDataToPrimitiveSegmentIaEEvRKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm, ptr %i.j, align 8, !tbaa !1003
  %i.k = getelementptr inbounds nuw i8, ptr %.tr124, i64 16
  store ptr @_ZN6duckdbL28ReadDataFromPrimitiveSegmentIaEEvRKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm, ptr %i.k, align 8, !tbaa !1005
  %i.l = getelementptr inbounds nuw i8, ptr %.tr124, i64 24
  store i16 8, ptr %i.l, align 8, !tbaa !997
  br label %bb.av

bb.f:                                             ; preds = %.lr.ph
  store ptr @_ZN6duckdbL22CreatePrimitiveSegmentIsEEPNS_11ListSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt, ptr %.tr124, align 8, !tbaa !989
  %i.m = getelementptr inbounds nuw i8, ptr %.tr124, i64 8
  store ptr @_ZN6duckdbL27WriteDataToPrimitiveSegmentIsEEvRKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm, ptr %i.m, align 8, !tbaa !1003
  %i.n = getelementptr inbounds nuw i8, ptr %.tr124, i64 16
  store ptr @_ZN6duckdbL28ReadDataFromPrimitiveSegmentIsEEvRKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm, ptr %i.n, align 8, !tbaa !1005
  br label %bb.av

bb.g:                                             ; preds = %.lr.ph
  store ptr @_ZN6duckdbL22CreatePrimitiveSegmentIiEEPNS_11ListSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt, ptr %.tr124, align 8, !tbaa !989
  %i.o = getelementptr inbounds nuw i8, ptr %.tr124, i64 8
  store ptr @_ZN6duckdbL27WriteDataToPrimitiveSegmentIiEEvRKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm, ptr %i.o, align 8, !tbaa !1003
  %i.p = getelementptr inbounds nuw i8, ptr %.tr124, i64 16
  store ptr @_ZN6duckdbL28ReadDataFromPrimitiveSegmentIiEEvRKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm, ptr %i.p, align 8, !tbaa !1005
  br label %bb.av

bb.h:                                             ; preds = %.lr.ph
  store ptr @_ZN6duckdbL22CreatePrimitiveSegmentIlEEPNS_11ListSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt, ptr %.tr124, align 8, !tbaa !989
  %i.q = getelementptr inbounds nuw i8, ptr %.tr124, i64 8
  store ptr @_ZN6duckdbL27WriteDataToPrimitiveSegmentIlEEvRKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm, ptr %i.q, align 8, !tbaa !1003
  %i.r = getelementptr inbounds nuw i8, ptr %.tr124, i64 16
  store ptr @_ZN6duckdbL28ReadDataFromPrimitiveSegmentIlEEvRKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm, ptr %i.r, align 8, !tbaa !1005
  br label %bb.av

bb.i:                                             ; preds = %.lr.ph
  store ptr @_ZN6duckdbL22CreatePrimitiveSegmentIhEEPNS_11ListSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt, ptr %.tr124, align 8, !tbaa !989
  %i.s = getelementptr inbounds nuw i8, ptr %.tr124, i64 8
  store ptr @_ZN6duckdbL27WriteDataToPrimitiveSegmentIhEEvRKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm, ptr %i.s, align 8, !tbaa !1003
  %i.t = getelementptr inbounds nuw i8, ptr %.tr124, i64 16
  store ptr @_ZN6duckdbL28ReadDataFromPrimitiveSegmentIhEEvRKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm, ptr %i.t, align 8, !tbaa !1005
  %i.u = getelementptr inbounds nuw i8, ptr %.tr124, i64 24
  store i16 8, ptr %i.u, align 8, !tbaa !997
  br label %bb.av

bb.j:                                             ; preds = %.lr.ph
  store ptr @_ZN6duckdbL22CreatePrimitiveSegmentItEEPNS_11ListSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt, ptr %.tr124, align 8, !tbaa !989
  %i.v = getelementptr inbounds nuw i8, ptr %.tr124, i64 8
  store ptr @_ZN6duckdbL27WriteDataToPrimitiveSegmentItEEvRKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm, ptr %i.v, align 8, !tbaa !1003
  %i.w = getelementptr inbounds nuw i8, ptr %.tr124, i64 16
  store ptr @_ZN6duckdbL28ReadDataFromPrimitiveSegmentItEEvRKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm, ptr %i.w, align 8, !tbaa !1005
  br label %bb.av

bb.k:                                             ; preds = %.lr.ph
  store ptr @_ZN6duckdbL22CreatePrimitiveSegmentIjEEPNS_11ListSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt, ptr %.tr124, align 8, !tbaa !989
  %i.x = getelementptr inbounds nuw i8, ptr %.tr124, i64 8
  store ptr @_ZN6duckdbL27WriteDataToPrimitiveSegmentIjEEvRKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm, ptr %i.x, align 8, !tbaa !1003
  %i.y = getelementptr inbounds nuw i8, ptr %.tr124, i64 16
  store ptr @_ZN6duckdbL28ReadDataFromPrimitiveSegmentIjEEvRKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm, ptr %i.y, align 8, !tbaa !1005
  br label %bb.av

bb.l:                                             ; preds = %.lr.ph
  store ptr @_ZN6duckdbL22CreatePrimitiveSegmentImEEPNS_11ListSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt, ptr %.tr124, align 8, !tbaa !989
  %i.z = getelementptr inbounds nuw i8, ptr %.tr124, i64 8
  store ptr @_ZN6duckdbL27WriteDataToPrimitiveSegmentImEEvRKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm, ptr %i.z, align 8, !tbaa !1003
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr124, i64 16
  store ptr @_ZN6duckdbL28ReadDataFromPrimitiveSegmentImEEvRKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm, ptr %i.aa, align 8, !tbaa !1005
  br label %bb.av

bb.m:                                             ; preds = %.lr.ph
  store ptr @_ZN6duckdbL22CreatePrimitiveSegmentIfEEPNS_11ListSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt, ptr %.tr124, align 8, !tbaa !989
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr124, i64 8
  store ptr @_ZN6duckdbL27WriteDataToPrimitiveSegmentIfEEvRKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm, ptr %i.ab, align 8, !tbaa !1003
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr124, i64 16
  store ptr @_ZN6duckdbL28ReadDataFromPrimitiveSegmentIfEEvRKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm, ptr %i.ac, align 8, !tbaa !1005
  br label %bb.av

end_hunk_0
begin_hunk_1_@_ZN6duckdb23GetSegmentDataFunctionsERNS_20ListSegmentFunctionsERKNS_11LogicalTypeE:bb.a
  br i1 %i.ej, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.eh) #49
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ed) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  br i1 %.0, label %bb.au, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  br i1 %.0, label %bb.au, label %common.resume

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.thread
  %.pn.pn74.ph = phi { ptr, i32 } [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.thread ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.thread ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.pn.pn74 = phi { ptr, i32 } [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %.pn.pn74.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.dx) #48
  br label %common.resume

bb.av:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, %_ZN6duckdb20ListSegmentFunctionsD2Ev.exit, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  ret void

bb.aw:                                            ; preds = %bb.as
  unreachable
}

declare void @_ZN6duckdb29ParameterNotResolvedExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN6duckdbL17CreateListSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef zeroext %2) #3 {
bb.a:
  %i.a = zext i16 %2 to i64
  %i.b = mul nuw nsw i64 %i.a, 9                  ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 47
  %i.d = and i64 %i.c, 2097144                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1019 ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1021 ; 2 uses
  %i.i = add i64 %i.h, %i.d                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1030
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN6duckdbL16AllocateListDataERNS_14ArenaAllocatorEt.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.d)
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !1019 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 24
  %.pre4.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !1021 ; 2 uses
  %.pre5.i.i = add i64 %.pre4.i.i, %i.d
  br label %_ZN6duckdbL16AllocateListDataERNS_14ArenaAllocatorEt.exit

_ZN6duckdbL16AllocateListDataERNS_14ArenaAllocatorEt.exit: ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %.pre5.i.i, %bb.c ], [ %i.i, %bb.b ]
  %i.m = phi i64 [ %.pre4.i.i, %bb.c ], [ %i.h, %bb.b ]
  %i.n = phi ptr [ %.pre.i.i, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !594
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m ; 5 uses
  store i64 %.pre-phi.i.i, ptr %i.q, align 8, !tbaa !1021
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i16 %2, ptr %i.s, align 2, !tbaa !999
  store i16 0, ptr %i.r, align 8, !tbaa !1001
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !1031
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  ret ptr %i.r
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL25WriteDataToVarcharSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef captures(none) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #3 {
bb.a:
  %5 = alloca %"struct.duckdb::LinkedList", align 8 ; 8 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !1032
  %i.b = load i64, ptr %4, align 8, !tbaa !108    ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !390  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  %i.f = zext i32 %i.e to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !520  ; 2 uses
  %.not.i36 = icmp eq ptr %i.j, null
  br i1 %.not.i36, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.k = load i16, ptr %2, align 8, !tbaa !1001
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  store i8 0, ptr %i.m, align 1, !tbaa !398
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !999
  %i.p = zext i16 %i.o to i64
  br label %bb.d

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.q = lshr i64 %i.g, 6
  %i.r = and i64 %i.g, 63
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !108
  %i.u = shl nuw i64 1, %i.r
  %i.v = and i64 %i.t, %i.u
  %.not = icmp eq i64 %i.v, 0                     ; 2 uses
  %i.w = load i16, ptr %2, align 8, !tbaa !1001
  %i.x = zext i16 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.x
  %i.z = zext i1 %.not to i8
  store i8 %i.z, ptr %i.y, align 1, !tbaa !398
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !999
  %i.ac = zext i16 %i.ab to i64                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.x
  store i64 0, ptr %i.ae, align 1
  br label %bb.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.af = phi i64 [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.ac, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.ag = phi ptr [ %i.n, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.aa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.af
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !774
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.g ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !153 ; 3 uses
  %i.am = icmp ult i32 %i.al, 13
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = select i1 %i.am, ptr %i.an, ptr %i.ap
  %i.ar = zext i32 %i.al to i64                   ; 4 uses
  %i.as = load i16, ptr %2, align 8, !tbaa !1001
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.at
  store i64 %i.ar, ptr %i.au, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.av = load i16, ptr %i.ag, align 2, !tbaa !999
  %i.aw = zext i16 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.aw, 9                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(24) %i.ay, i64 24, i1 false)
  %.not44 = icmp eq i32 %i.al, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.ba, align 8, !tbaa !986
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN6duckdbL10GetSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorERNS_10LinkedListE.exit
  %i.bb = phi ptr [ %.pre, %.lr.ph ], [ %i.br, %_ZN6duckdbL10GetSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorERNS_10LinkedListE.exit ] ; 5 uses
  %.043 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %_ZN6duckdbL10GetSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorERNS_10LinkedListE.exit ] ; 3 uses
  %i.bc = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorINS_20ListSegmentFunctionsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az) ; 5 uses
  %.not.i37 = icmp eq ptr %i.bb, null
  br i1 %.not.i37, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !989
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !997
  %i.bg = tail call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef zeroext %i.bf), !inline_history !998
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !999 ; 4 uses
  %i.bj = load i16, ptr %i.bb, align 8, !tbaa !1001 ; 2 uses
  %i.bk = icmp eq i16 %i.bi, %i.bj
  br i1 %i.bk, label %bb.h, label %_ZN6duckdbL10GetSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorERNS_10LinkedListE.exit

bb.h:                                             ; preds = %bb.g
  %.not6.i.i = icmp sgt i16 %i.bi, -1
  %i.bl = zext i1 %.not6.i.i to i16
  %.0.i.i = shl i16 %i.bi, %i.bl
  %i.bm = load ptr, ptr %i.bc, align 8, !tbaa !989
  %i.bn = tail call noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef zeroext %.0.i.i), !inline_history !998
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink26.i = phi ptr [ %i.bb, %bb.h ], [ %5, %bb.f ]
  %.sink24.i = phi ptr [ %i.bn, %bb.h ], [ %i.bg, %bb.f ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sink26.i, i64 8
  store ptr %.sink24.i, ptr %i.bo, align 8, !tbaa !1002
  store ptr %.sink24.i, ptr %i.ba, align 8, !tbaa !986
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sink24.i, i64 2
  %.pre45 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !999
  %.pre46 = load i16, ptr %.sink24.i, align 8, !tbaa !1001
  br label %_ZN6duckdbL10GetSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorERNS_10LinkedListE.exit

_ZN6duckdbL10GetSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorERNS_10LinkedListE.exit: ; preds = %bb.g, %.sink.split.i
  %i.bp = phi i16 [ %i.bj, %bb.g ], [ %.pre46, %.sink.split.i ] ; 2 uses
  %i.bq = phi i16 [ %i.bi, %bb.g ], [ %.pre45, %.sink.split.i ]
  %i.br = phi ptr [ %i.bb, %bb.g ], [ %.sink24.i, %.sink.split.i ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = sub nsw i64 %i.ar, %.043
  %i.bu = zext i16 %i.bq to i64
  %i.bv = zext i16 %i.bp to i64                   ; 2 uses
  %i.bw = sub nsw i64 %i.bu, %i.bv
  %i.bx = tail call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bw) ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.043
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.bz, i64 %i.bx, i1 false)
  %i.ca = add nsw i64 %i.bx, %.043                ; 2 uses
  %i.cb = trunc i64 %i.bx to i16
  %i.cc = add i16 %i.bp, %i.cb
  store i16 %i.cc, ptr %i.br, align 8, !tbaa !1001
  %i.cd = icmp ult i64 %i.ca, %i.ar
  br i1 %i.cd, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !1040

._crit_edge.loopexit:                             ; preds = %_ZN6duckdbL10GetSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorERNS_10LinkedListE.exit
  %.pre47 = load i16, ptr %i.ag, align 2, !tbaa !999
  %.pre48 = zext i16 %.pre47 to i64
  %.pre49 = mul nuw nsw i64 %.pre48, 9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.pre-phi50 = phi i64 [ %.pre49, %._crit_edge.loopexit ], [ %i.ax, %bb.d ]
  %i.ce = load i64, ptr %5, align 8, !tbaa !1004
  %i.cf = add i64 %i.ce, %i.ar
  store i64 %i.cf, ptr %5, align 8, !tbaa !1004
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pre-phi50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL26ReadDataFromVarcharSegmentERKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !428
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !999
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = load i16, ptr %1, align 8, !tbaa !1001
  %.not76 = icmp eq i16 %i.i, 0
  br i1 %.not76, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.a
  %i.j = mul nuw nsw i64 %i.g, 9
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  %.sroa.4.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx59, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.b

._crit_edge75:                                    ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph74, %_ZN6duckdb8string_t8FinalizeEv.exit
  %.072 = phi ptr [ %.sroa.4.0.copyload, %.lr.ph74 ], [ %.3, %_ZN6duckdb8string_t8FinalizeEv.exit ] ; 3 uses
  %.04571 = phi i64 [ 0, %.lr.ph74 ], [ %.348, %_ZN6duckdb8string_t8FinalizeEv.exit ] ; 3 uses
  %.05470 = phi i64 [ 0, %.lr.ph74 ], [ %i.br, %_ZN6duckdb8string_t8FinalizeEv.exit ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %.05470
  %i.n = load i8, ptr %i.m, align 1, !tbaa !398, !range !356, !noundef !74
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load i64, ptr %3, align 8, !tbaa !108    ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = add i64 %i.p, %.05470                    ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !520  ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.l, align 8, !tbaa !533
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.s)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !520
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ %.pre.i, %bb.d ], [ %i.r, %bb.c ]
  %i.u = lshr i64 %i.q, 6
  %i.v = and i64 %i.q, 63
  %i.w = shl nuw i64 1, %i.v
  %i.x = xor i64 %i.w, -1
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !108
  %i.aa = and i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !108
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr [16 x i8], ptr %i.c, i64 %i.p
  %i.ac = getelementptr [16 x i8], ptr %i.ab, i64 %.05470 ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.05470
  %.0.copyload.i = load i64, ptr %i.ad, align 1   ; 6 uses
  %i.ae = icmp ult i64 %.0.copyload.i, 13
  br i1 %i.ae, label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = tail call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = tail call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i64 noundef %.0.copyload.i) ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0      ; 2 uses
  %.sroa.3.0.extract.shift.i = and i64 %i.ai, -4294967296
  %i.aj = extractvalue { i64, ptr } %i.ah, 1
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit

_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit: ; preds = %bb.e, %bb.f
  %.sroa.34.0.i = phi ptr [ %i.aj, %bb.f ], [ undef, %bb.e ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ %.sroa.3.0.extract.shift.i, %bb.f ], [ 0, %bb.e ]
  %.sroa.0.0.in.i = phi i64 [ %i.ai, %bb.f ], [ %.0.copyload.i, %bb.e ] ; 2 uses
  %.sroa.0.0.insert.ext.i = and i64 %.sroa.0.0.in.i, 4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, %.sroa.3.0.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ac, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %.sroa.34.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !153
  %i.ak = trunc i64 %.sroa.0.0.in.i to i32        ; 2 uses
  %i.al = icmp ult i32 %i.ak, 13
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 3 uses
  %i.an = select i1 %i.al, ptr %i.am, ptr %.sroa.34.0.i
  %.not77 = icmp eq i64 %.0.copyload.i, 0
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit, %bb.o
  %.168 = phi ptr [ %.2, %bb.o ], [ %.072, %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit ] ; 5 uses
  %.14667 = phi i64 [ %.247, %bb.o ], [ %.04571, %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit ] ; 3 uses
  %.05366 = phi i64 [ %i.bd, %bb.o ], [ 0, %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit ] ; 3 uses
  %.not = icmp eq ptr %.168, null
  br i1 %.not, label %bb.g, label %bb.m

bb.g:                                             ; preds = %.lr.ph
  %i.ao = tail call ptr @__cxa_allocate_exception(i64 16) #48 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.281, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #51
          to label %bb.r unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.049 = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.ar) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  br i1 %.049, label %bb.k, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
end_hunk_1
begin_hunk_2_@_ZN6duckdbL26ReadDataFromVarcharSegmentERKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm:bb.a
; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN6duckdbL24CreateVarcharDataSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef zeroext %2) #3 {
bb.a:
  %i.a = zext i16 %2 to i64
  %i.b = add nuw nsw i64 %i.a, 23
  %i.c = and i64 %i.b, 131064                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1019 ; 4 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1021 ; 2 uses
  %i.h = add i64 %i.g, %i.c                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1030
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN6duckdbL18AllocateStringDataERNS_14ArenaAllocatorEt.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.c)
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !1019 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 24
  %.pre4.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !1021 ; 2 uses
  %.pre5.i.i = add i64 %.pre4.i.i, %i.c
  br label %_ZN6duckdbL18AllocateStringDataERNS_14ArenaAllocatorEt.exit

_ZN6duckdbL18AllocateStringDataERNS_14ArenaAllocatorEt.exit: ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %.pre5.i.i, %bb.c ], [ %i.h, %bb.b ]
  %i.l = phi i64 [ %.pre4.i.i, %bb.c ], [ %i.g, %bb.b ]
  %i.m = phi ptr [ %.pre.i.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !594
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 4 uses
  store i64 %.pre-phi.i.i, ptr %i.p, align 8, !tbaa !1021
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i16 %2, ptr %i.r, align 2, !tbaa !999
  store i16 0, ptr %i.q, align 8, !tbaa !1001
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !1031
  ret ptr %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb20ListSegmentFunctionsD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1009 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1007 ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i2.i, label %_ZSt8_DestroyIPN6duckdb20ListSegmentFunctionsES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.i.i3.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6duckdb20ListSegmentFunctionsEEvPT_(ptr noundef %.0.i.i3.i), !inline_history !1043
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ListSegmentFunctionsES1_EvT_S3_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !1011

_ZSt8_DestroyIPN6duckdb20ListSegmentFunctionsES1_EvT_S3_RSaIT0_E.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1009
  br label %_ZSt8_DestroyIPN6duckdb20ListSegmentFunctionsES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb20ListSegmentFunctionsES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ListSegmentFunctionsES1_EvT_S3_RSaIT0_E.exit.loopexit.i, %bb.a
  %i.f = phi ptr [ %.pre.i, %_ZSt8_DestroyIPN6duckdb20ListSegmentFunctionsES1_EvT_S3_RSaIT0_E.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ListSegmentFunctionsES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #49, !inline_history !1044
  br label %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ListSegmentFunctionsES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL22WriteDataToListSegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef captures(none) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #3 {
bb.a:
  %5 = alloca %"struct.duckdb::LinkedList", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !1032
  %i.c = load i64, ptr %4, align 8, !tbaa !108    ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !390  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.c
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = zext i32 %i.f to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !520  ; 2 uses
  %.not.i24 = icmp eq ptr %i.k, null
  br i1 %.not.i24, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.l = load i16, ptr %2, align 8, !tbaa !1001
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !398
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !999
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  br label %bb.c

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.s = lshr i64 %i.h, 6
  %i.t = and i64 %i.h, 63
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.s
  %i.v = load i64, ptr %i.u, align 8, !tbaa !108
  %i.w = shl nuw i64 1, %i.t
  %i.x = and i64 %i.v, %i.w
  %.not = icmp eq i64 %i.x, 0                     ; 2 uses
  %i.y = load i16, ptr %2, align 8, !tbaa !1001
  %i.z = zext i16 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.z
  %i.ab = zext i1 %.not to i8
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !398
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !999
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ae ; 2 uses
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ag = phi ptr [ %i.r, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.af, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.ah = phi ptr [ %i.o, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.ac, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !774
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.h ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !551 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.an = load i16, ptr %i.ah, align 2, !tbaa !999
  %i.ao = zext i16 %i.an to i64
  %i.ap = mul nuw nsw i64 %i.ao, 9                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(24) %i.aq, i64 24, i1 false)
  %.not28 = icmp eq i64 %i.am, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm.exit
  %.pre = load i16, ptr %i.ah, align 2, !tbaa !999
  %.pre30 = zext i16 %.pre to i64
  %.pre31 = mul nuw nsw i64 %.pre30, 9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.pre-phi32 = phi i64 [ %.pre31, %._crit_edge.loopexit ], [ %i.ap, %bb.c ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 %.pre-phi32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %.pre29 = load i16, ptr %2, align 8, !tbaa !1001
  %.pre33 = zext i16 %.pre29 to i64
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph, %_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm.exit
  %.027 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  %i.av = load i64, ptr %i.ak, align 8, !tbaa !553
  %i.aw = add i64 %i.av, %.027
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !108
  %i.ax = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorINS_20ListSegmentFunctionsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 0) ; 7 uses
  %i.ay = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.as)
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !986 ; 5 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !989
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !997
  %i.bd = call noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef zeroext %i.bc), !inline_history !1045
  br label %.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !999 ; 3 uses
  %i.bg = load i16, ptr %i.az, align 8, !tbaa !1001
  %i.bh = icmp eq i16 %i.bf, %i.bg
  br i1 %i.bh, label %bb.g, label %_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm.exit

bb.g:                                             ; preds = %bb.f
  %.not6.i.i.i = icmp sgt i16 %i.bf, -1
  %i.bi = zext i1 %.not6.i.i.i to i16
  %.0.i.i.i = shl i16 %i.bf, %i.bi
  %i.bj = load ptr, ptr %i.ax, align 8, !tbaa !989
  %i.bk = call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef zeroext %.0.i.i.i), !inline_history !1045
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.g, %bb.e
  %.sink26.i.i = phi ptr [ %i.az, %bb.g ], [ %5, %bb.e ]
  %.sink24.i.i = phi ptr [ %i.bk, %bb.g ], [ %i.bd, %bb.e ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink26.i.i, i64 8
  store ptr %.sink24.i.i, ptr %i.bl, align 8, !tbaa !1002
  store ptr %.sink24.i.i, ptr %i.at, align 8, !tbaa !986
  br label %_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm.exit

_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm.exit: ; preds = %bb.f, %.sink.split.i.i
  %.0.i.i = phi ptr [ %i.az, %bb.f ], [ %.sink24.i.i, %.sink.split.i.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1003
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %.0.i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !1046
  %i.bo = load i64, ptr %5, align 8, !tbaa !1004
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %5, align 8, !tbaa !1004
  %i.bq = load i16, ptr %.0.i.i, align 8, !tbaa !1001
  %i.br = add i16 %i.bq, 1
  store i16 %i.br, ptr %.0.i.i, align 8, !tbaa !1001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  %i.bs = add nuw i64 %.027, 1                    ; 2 uses
  %i.bt = load i64, ptr %i.al, align 8, !tbaa !551
  %i.bu = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !1047

bb.h:                                             ; preds = %._crit_edge, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %.pre-phi34 = phi i64 [ %.pre33, %._crit_edge ], [ %i.z, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.bv = phi ptr [ %i.ag, %._crit_edge ], [ %i.af, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %.025 = phi i64 [ %i.am, %._crit_edge ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.pre-phi34
  store i64 %.025, ptr %i.bw, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL23ReadDataFromListSegmentERKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i16, ptr %1, align 8, !tbaa !1001   ; 3 uses
  %.not54 = icmp eq i16 %i.d, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !428  ; 7 uses
  %i.h = load i64, ptr %3, align 8, !tbaa !108    ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.pre58 = phi i16 [ %i.d, %.lr.ph ], [ %.pre59, %bb.e ] ; 2 uses
  %i.i = phi i16 [ %i.d, %.lr.ph ], [ %i.y, %bb.e ]
  %.048 = phi i64 [ 0, %.lr.ph ], [ %i.z, %bb.e ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %.048
  %i.k = load i8, ptr %i.j, align 1, !tbaa !398, !range !356, !noundef !74
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %3, align 8, !tbaa !108
  %i.n = add i64 %i.m, %.048                      ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !520  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.e, align 8, !tbaa !533
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.p)
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !520
  %.pre.pre = load i16, ptr %1, align 8, !tbaa !1001
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %.pre = phi i16 [ %.pre.pre, %bb.d ], [ %.pre58, %bb.c ] ; 2 uses
  %i.q = phi ptr [ %.pre.i, %bb.d ], [ %i.o, %bb.c ]
  %i.r = lshr i64 %i.n, 6
  %i.s = and i64 %i.n, 63
  %i.t = shl nuw i64 1, %i.s
  %i.u = xor i64 %i.t, -1
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !108
  %i.x = and i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8, !tbaa !108
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit
  %.pre59 = phi i16 [ %.pre58, %bb.b ], [ %.pre, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ]
  %i.y = phi i16 [ %i.i, %bb.b ], [ %.pre, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ] ; 2 uses
  %i.z = add nuw nsw i64 %.048, 1                 ; 2 uses
  %i.aa = zext i16 %i.y to i64
  %i.ab = icmp samesign ult i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !1048

bb.f:                                             ; preds = %._crit_edge
  %i.ac = getelementptr [16 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !553
  %i.af = getelementptr i8, ptr %i.ac, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !551
  %i.ah = add i64 %i.ag, %i.ae
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.041 = phi i64 [ %i.ah, %bb.f ], [ 0, %._crit_edge ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !999
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ak ; 3 uses
  %i.am = load i16, ptr %1, align 8, !tbaa !1001  ; 4 uses
  %i.an = zext i16 %i.am to i64                   ; 2 uses
  %.not55 = icmp eq i16 %i.am, 0
  br i1 %.not55, label %._crit_edge53, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %bb.g
  %xtraiter = and i64 %i.an, 1
  %i.ao = icmp eq i16 %i.am, 1
  br i1 %i.ao, label %.lr.ph52.epil.preheader, label %.lr.ph52.preheader.new

.lr.ph52.preheader.new:                           ; preds = %.lr.ph52.preheader
  %unroll_iter = and i64 %i.an, 65534
  br label %.lr.ph52

._crit_edge53.loopexit.unr-lcssa:                 ; preds = %.lr.ph52
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge53, label %.lr.ph52.epil.preheader

.lr.ph52.epil.preheader:                          ; preds = %._crit_edge53.loopexit.unr-lcssa, %.lr.ph52.preheader
  %.150.epil.init = phi i64 [ %.041, %.lr.ph52.preheader ], [ %i.cz, %._crit_edge53.loopexit.unr-lcssa ] ; 2 uses
  %.04249.epil.init = phi i64 [ 0, %.lr.ph52.preheader ], [ %i.da, %._crit_edge53.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod71 = trunc i16 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.04249.epil.init
  %.0.copyload.i.epil = load i64, ptr %i.ap, align 1 ; 2 uses
  %i.aq = load i64, ptr %3, align 8, !tbaa !108
  %i.ar = getelementptr [16 x i8], ptr %i.g, i64 %i.aq
  %i.as = getelementptr [16 x i8], ptr %i.ar, i64 %.04249.epil.init
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %.0.copyload.i.epil, ptr %i.at, align 8, !tbaa !551
  %i.au = load i64, ptr %3, align 8, !tbaa !108
  %i.av = getelementptr [16 x i8], ptr %i.g, i64 %i.au
  %i.aw = getelementptr [16 x i8], ptr %i.av, i64 %.04249.epil.init
  store i64 %.150.epil.init, ptr %i.aw, align 8, !tbaa !553
  %i.ax = add i64 %.0.copyload.i.epil, %.150.epil.init
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %.lr.ph52.epil.preheader, %._crit_edge53.loopexit.unr-lcssa, %bb.g
  %.1.lcssa = phi i64 [ %.041, %bb.g ], [ %i.cz, %._crit_edge53.loopexit.unr-lcssa ], [ %i.ax, %.lr.ph52.epil.preheader ] ; 2 uses
  %i.ay = load i8, ptr %2, align 8, !tbaa !484
  %i.az = icmp eq i8 %i.ay, 3
  br i1 %i.az, label %tailrecurse.i, label %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit

tailrecurse.i:                                    ; preds = %._crit_edge53, %tailrecurse.i
  %.tr1.i = phi ptr [ %i.bc, %tailrecurse.i ], [ %2, %._crit_edge53 ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i), !inline_history !597
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr1.i, i64 88
  %i.bb = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba), !inline_history !597
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 3 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !484
  %i.be = icmp eq i8 %i.bd, 3
  br i1 %i.be, label %tailrecurse.i, label %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit

_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit: ; preds = %tailrecurse.i, %._crit_edge53
  %.tr.lcssa.i = phi ptr [ %2, %._crit_edge53 ], [ %i.bc, %tailrecurse.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 88
  %i.bg = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf), !inline_history !596
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh), !inline_history !597
  %i.bj = load i16, ptr %i.ai, align 2, !tbaa !999
  %i.bk = zext i16 %i.bj to i64
  %i.bl = mul nuw nsw i64 %i.bk, 9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bl
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bo = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn)
  tail call void @_ZN6duckdb16VectorListBuffer7ReserveEm(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, i64 noundef %.1.lcssa)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorINS_20ListSegmentFunctionsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef 0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.041, ptr %i.a, align 8, !tbaa !108
  %.not11.i = icmp eq ptr %.sroa.3.0.copyload, null
  br i1 %.not11.i, label %_ZNK6duckdb20ListSegmentFunctions15BuildListVectorERKNS_10LinkedListERNS_6VectorEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  br label %bb.h
end_hunk_2
begin_hunk_3_@_ZN6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm:bb.a
bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EE3getILb1EEERS9_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1015   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1013 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #48
  %i.e = load ptr, ptr %.05.i.i, align 8, !tbaa !89 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #49
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1017

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1015
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #49
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN6duckdbL18CreateArraySegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEt(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef zeroext %2) #3 {
bb.a:
  %i.a = zext i16 %2 to i64                       ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 47
  %i.c = and i64 %i.b, 131064                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1019 ; 4 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1021 ; 2 uses
  %i.h = add i64 %i.g, %i.c                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1030
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN6duckdbL17AllocateArrayDataERNS_14ArenaAllocatorEt.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.c)
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !1019 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 24
  %.pre4.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !1021 ; 2 uses
  %.pre5.i.i = add i64 %.pre4.i.i, %i.c
  br label %_ZN6duckdbL17AllocateArrayDataERNS_14ArenaAllocatorEt.exit

_ZN6duckdbL17AllocateArrayDataERNS_14ArenaAllocatorEt.exit: ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %.pre5.i.i, %bb.c ], [ %i.h, %bb.b ]
  %i.l = phi i64 [ %.pre4.i.i, %bb.c ], [ %i.g, %bb.b ]
  %i.m = phi ptr [ %.pre.i.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !594
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 5 uses
  store i64 %.pre-phi.i.i, ptr %i.p, align 8, !tbaa !1021
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i16 %2, ptr %i.r, align 2, !tbaa !999
  store i16 0, ptr %i.q, align 8, !tbaa !1001
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !1031
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  ret ptr %i.q
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL23WriteDataToArraySegmentERKNS_20ListSegmentFunctionsERNS_14ArenaAllocatorEPNS_11ListSegmentERNS_28RecursiveUnifiedVectorFormatERm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef captures(none) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #3 {
bb.a:
  %5 = alloca %"struct.duckdb::LinkedList", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !1032
  %i.c = load i64, ptr %4, align 8, !tbaa !108    ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !390  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.c
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = zext i32 %i.f to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !520  ; 2 uses
  %.not.i18 = icmp eq ptr %i.k, null
  br i1 %.not.i18, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.l = lshr i64 %i.h, 6
  %i.m = and i64 %i.h, 63
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.o = load i64, ptr %i.n, align 8, !tbaa !108
  %i.p = xor i64 %i.o, -1
  %i.q = lshr i64 %i.p, %i.m
  %i.r = trunc i64 %i.q to i8
  %i.s = and i8 %i.r, 1
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.c
  %.0.i = phi i8 [ %i.s, %bb.c ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.t = load i16, ptr %2, align 8, !tbaa !1001
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.u
  store i8 %.0.i, ptr %i.v, align 1, !tbaa !398
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.x = tail call noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 2 uses
  %i.y = mul i64 %i.x, %i.h                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !999
  %i.ab = zext i16 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  %i.ad = add i64 %i.y, %i.x                      ; 2 uses
  store i64 %i.y, ptr %i.a, align 8, !tbaa !108
  %i.ae = icmp ult i64 %i.y, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm.exit
  %.pre = load i16, ptr %i.z, align 2, !tbaa !999
  %.pre19 = zext i16 %.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %.pre-phi = phi i64 [ %.pre19, %._crit_edge.loopexit ], [ %i.ab, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 %.pre-phi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm.exit
  %i.aj = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorINS_20ListSegmentFunctionsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 noundef 0) ; 7 uses
  %i.ak = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_28RecursiveUnifiedVectorFormatELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !986 ; 5 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !989
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !997
  %i.ap = call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef zeroext %i.ao), !inline_history !1045
  br label %.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !999 ; 3 uses
  %i.as = load i16, ptr %i.al, align 8, !tbaa !1001
  %i.at = icmp eq i16 %i.ar, %i.as
  br i1 %i.at, label %bb.g, label %_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm.exit

bb.g:                                             ; preds = %bb.f
  %.not6.i.i.i = icmp sgt i16 %i.ar, -1
  %i.au = zext i1 %.not6.i.i.i to i16
  %.0.i.i.i = shl i16 %i.ar, %i.au
  %i.av = load ptr, ptr %i.aj, align 8, !tbaa !989
  %i.aw = call noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %1, i16 noundef zeroext %.0.i.i.i), !inline_history !1045
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.g, %bb.e
  %.sink26.i.i = phi ptr [ %i.al, %bb.g ], [ %5, %bb.e ]
  %.sink24.i.i = phi ptr [ %i.aw, %bb.g ], [ %i.ap, %bb.e ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink26.i.i, i64 8
  store ptr %.sink24.i.i, ptr %i.ax, align 8, !tbaa !1002
  store ptr %.sink24.i.i, ptr %i.ah, align 8, !tbaa !986
  br label %_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm.exit

_ZNK6duckdb20ListSegmentFunctions9AppendRowERNS_14ArenaAllocatorERNS_10LinkedListERNS_28RecursiveUnifiedVectorFormatERm.exit: ; preds = %bb.f, %.sink.split.i.i
  %.0.i.i = phi ptr [ %i.al, %bb.f ], [ %.sink24.i.i, %.sink.split.i.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1003
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %.0.i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !1046
  %i.ba = load i64, ptr %5, align 8, !tbaa !1004
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %5, align 8, !tbaa !1004
  %i.bc = load i16, ptr %.0.i.i, align 8, !tbaa !1001
  %i.bd = add i16 %i.bc, 1
  store i16 %i.bd, ptr %.0.i.i, align 8, !tbaa !1001
  %i.be = load i64, ptr %i.a, align 8, !tbaa !108
  %i.bf = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !108
  %i.bg = icmp ult i64 %i.bf, %i.ad
  br i1 %i.bg, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !1060
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL24ReadDataFromArraySegmentERKNS_20ListSegmentFunctionsEPKNS_11ListSegmentERNS_6VectorERm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i16, ptr %1, align 8, !tbaa !1001   ; 3 uses
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.f = load i8, ptr %2, align 8, !tbaa !484
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %tailrecurse.i, label %_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit

tailrecurse.i:                                    ; preds = %._crit_edge, %tailrecurse.i
  %.tr1.i = phi ptr [ %i.j, %tailrecurse.i ], [ %2, %._crit_edge ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i), !inline_history !563
  %i.h = getelementptr inbounds nuw i8, ptr %.tr1.i, i64 88
  %i.i = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h), !inline_history !563
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !484
  %i.l = icmp eq i8 %i.k, 3
  br i1 %i.l, label %tailrecurse.i, label %_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit

_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit: ; preds = %tailrecurse.i, %._crit_edge
  %.tr.lcssa.i = phi ptr [ %2, %._crit_edge ], [ %i.j, %tailrecurse.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 88
  %i.n = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m), !inline_history !564
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o), !inline_history !563
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !999
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = tail call noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  %i.w = load i64, ptr %3, align 8, !tbaa !108
  %i.x = mul i64 %i.w, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorINS_20ListSegmentFunctionsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef 0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.x, ptr %i.a, align 8, !tbaa !108
  %.not11.i = icmp eq ptr %.sroa.3.0.copyload, null
  br i1 %.not11.i, label %_ZNK6duckdb20ListSegmentFunctions15BuildListVectorERKNS_10LinkedListERNS_6VectorEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.012.i = phi ptr [ %.sroa.3.0.copyload, %.lr.ph.i ], [ %.0.i, %bb.b ] ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1005
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull %.012.i, ptr noundef nonnull align 8 dereferenceable(104) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !1049
  %i.ac = load i16, ptr %.012.i, align 8, !tbaa !1001
  %i.ad = zext i16 %i.ac to i64
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !108
  %i.af = add i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.a, align 8, !tbaa !108
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !1002 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZNK6duckdb20ListSegmentFunctions15BuildListVectorERKNS_10LinkedListERNS_6VectorEm.exit, label %bb.b, !llvm.loop !1006

_ZNK6duckdb20ListSegmentFunctions15BuildListVectorERKNS_10LinkedListERNS_6VectorEm.exit: ; preds = %bb.b, %_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.pre19 = phi i16 [ %i.d, %.lr.ph ], [ %.pre20, %bb.f ] ; 2 uses
  %i.ag = phi i16 [ %i.d, %.lr.ph ], [ %i.aw, %bb.f ]
  %.018 = phi i64 [ 0, %.lr.ph ], [ %i.ax, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %.018
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !398, !range !356, !noundef !74
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %3, align 8, !tbaa !108
  %i.al = add i64 %i.ak, %.018                    ; 2 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !520 ; 2 uses
  %.not.i17 = icmp eq ptr %i.am, null
  br i1 %.not.i17, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.e:                                             ; preds = %bb.d
  %i.an = load i64, ptr %i.e, align 8, !tbaa !533
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.an)
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !520
  %.pre.pre = load i16, ptr %1, align 8, !tbaa !1001
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.d, %bb.e
  %.pre = phi i16 [ %.pre.pre, %bb.e ], [ %.pre19, %bb.d ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i, %bb.e ], [ %i.am, %bb.d ]
  %i.ap = lshr i64 %i.al, 6
  %i.aq = and i64 %i.al, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = xor i64 %i.ar, -1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !108
  %i.av = and i64 %i.au, %i.as
  store i64 %i.av, ptr %i.at, align 8, !tbaa !108
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit
  %.pre20 = phi i16 [ %.pre19, %bb.c ], [ %.pre, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ]
  %i.aw = phi i16 [ %i.ag, %bb.c ], [ %.pre, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ] ; 2 uses
  %i.ax = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.ay = zext i16 %i.aw to i64
  %i.az = icmp samesign ult i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.c, label %._crit_edge, !llvm.loop !1061
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9ArrayType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SelectionDataC2Em(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::AllocatedData", align 8 ; 6 uses
  tail call void @_ZN6duckdb13AllocatedDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 1)
  %i.c = shl i64 %i.b, 2                          ; 2 uses
  %i.d = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %i.d, i64 noundef %i.c)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.e = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #48 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret void

bb.c:                                             ; preds = %.noexc, %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #48
  resume { ptr, i32 } %i.f
}

declare void @_ZN6duckdb13AllocatedDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #20

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb15SelectionVector8ToStringB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_3
