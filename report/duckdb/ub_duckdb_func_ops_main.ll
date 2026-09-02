Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_ops_main?download=true
inline.NumInlined: 21423
inline.NumDeleted: 1880
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 417
loop-unroll.NumUnrolled: 561
begin_hunk_0_@_ZN6duckdb11AddOperator9OperationINS_6date_tENS_7dtime_tENS_11timestamp_tEEET1_T_T0_:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0, label %bb.h, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #25
  br label %bb.j

bb.i:                                             ; preds = %bb.a, %._crit_edge, %bb.b
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ -9223372036854775807, %bb.b ], [ 9223372036854775807, %bb.a ]
  ret i64 %i.h

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn13 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn14, %bb.h ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn13

bb.k:                                             ; preds = %bb.f
  unreachable
}

declare noundef zeroext i1 @_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE(i32, i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define i64 @_ZN6duckdb11AddOperator9OperationINS_6date_tENS_10dtime_tz_tENS_11timestamp_tEEET1_T_T0_(i32 %0, i64 %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::timestamp_t", align 8 ; 2 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  switch i32 %0, label %bb.c [
    i32 2147483647, label %bb.i
    i32 -2147483647, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.a = call noundef zeroext i1 @_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_10dtime_tz_tERNS_11timestamp_tE(i32 %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.a, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %2, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.b = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0, label %bb.h, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #25
  br label %bb.j

bb.i:                                             ; preds = %bb.a, %._crit_edge, %bb.b
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ -9223372036854775807, %bb.b ], [ 9223372036854775807, %bb.a ]
  ret i64 %i.h

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn13 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn14, %bb.h ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn13

bb.k:                                             ; preds = %bb.f
  unreachable
}

declare noundef zeroext i1 @_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_10dtime_tz_tERNS_11timestamp_tE(i32, i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define i64 @_ZN6duckdb11AddOperator9OperationINS_7dtime_tENS_6date_tENS_11timestamp_tEEET1_T_T0_(i64 %0, i32 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN6duckdb11AddOperator9OperationINS_6date_tENS_7dtime_tENS_11timestamp_tEEET1_T_T0_(i32 %1, i64 %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define i64 @_ZN6duckdb11AddOperator9OperationINS_10dtime_tz_tENS_6date_tENS_11timestamp_tEEET1_T_T0_(i64 %0, i32 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN6duckdb11AddOperator9OperationINS_6date_tENS_10dtime_tz_tENS_11timestamp_tEEET1_T_T0_(i32 %1, i64 %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define i64 @_ZN6duckdb11AddOperator9OperationINS_6date_tENS_10interval_tENS_11timestamp_tEEET1_T_T0_(i32 %0, i64 %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 2147483647, label %bb.c
    i32 -2147483647, label %.fold.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @_ZN6duckdb9Timestamp12FromDatetimeENS_6date_tENS_7dtime_tE(i32 %0, i64 0)
  %i.b = tail call i64 @_ZN6duckdb8Interval3AddENS_11timestamp_tENS_10interval_tE(i64 %i.a, i64 %1, i64 %2)
  br label %bb.c

.fold.split:                                      ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.fold.split, %bb.b
  %.sroa.05.0 = phi i64 [ %i.b, %bb.b ], [ 9223372036854775807, %bb.a ], [ -9223372036854775807, %.fold.split ]
  ret i64 %.sroa.05.0
}

declare i64 @_ZN6duckdb8Interval3AddENS_11timestamp_tENS_10interval_tE(i64, i64, i64) local_unnamed_addr #4

declare i64 @_ZN6duckdb9Timestamp12FromDatetimeENS_6date_tENS_7dtime_tE(i32, i64) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define i64 @_ZN6duckdb11AddOperator9OperationINS_10interval_tENS_6date_tENS_11timestamp_tEEET1_T_T0_(i64 %0, i64 %1, i32 %2) local_unnamed_addr #2 align 2 {
bb.a:
  switch i32 %2, label %bb.b [
    i32 2147483647, label %_ZN6duckdb11AddOperator9OperationINS_6date_tENS_10interval_tENS_11timestamp_tEEET1_T_T0_.exit
    i32 -2147483647, label %.fold.split.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @_ZN6duckdb9Timestamp12FromDatetimeENS_6date_tENS_7dtime_tE(i32 %2, i64 0)
  %i.b = tail call i64 @_ZN6duckdb8Interval3AddENS_11timestamp_tENS_10interval_tE(i64 %i.a, i64 %0, i64 %1)
  br label %_ZN6duckdb11AddOperator9OperationINS_6date_tENS_10interval_tENS_11timestamp_tEEET1_T_T0_.exit

.fold.split.i:                                    ; preds = %bb.a
  br label %_ZN6duckdb11AddOperator9OperationINS_6date_tENS_10interval_tENS_11timestamp_tEEET1_T_T0_.exit

_ZN6duckdb11AddOperator9OperationINS_6date_tENS_10interval_tENS_11timestamp_tEEET1_T_T0_.exit: ; preds = %bb.a, %bb.b, %.fold.split.i
  %.sroa.05.0.i = phi i64 [ %i.b, %bb.b ], [ 9223372036854775807, %bb.a ], [ -9223372036854775807, %.fold.split.i ]
  ret i64 %.sroa.05.0.i
}

; Function Attrs: mustprogress uwtable
define i64 @_ZN6duckdb11AddOperator9OperationINS_11timestamp_tENS_10interval_tES2_EET1_T_T0_(i64 %0, i64 %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN6duckdb8Interval3AddENS_11timestamp_tENS_10interval_tE(i64 %0, i64 %1, i64 %2)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define i64 @_ZN6duckdb11AddOperator9OperationINS_10interval_tENS_11timestamp_tES3_EET1_T_T0_(i64 %0, i64 %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN6duckdb8Interval3AddENS_11timestamp_tENS_10interval_tE(i64 %2, i64 %0, i64 %1)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIhhhEEbT_T0_RT1_(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %add.i = add i8 %1, %0                          ; 2 uses
  %add.overflow.i = icmp uge i8 %add.i, %1        ; 2 uses
  br i1 %add.overflow.i, label %bb.b, label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIhtEEbT_S3_RS3_.exit

bb.b:                                             ; preds = %bb.a
  store i8 %add.i, ptr %2, align 1, !tbaa !41
  br label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIhtEEbT_S3_RS3_.exit

_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIhtEEbT_S3_RS3_.exit: ; preds = %bb.a, %bb.b
  ret i1 %add.overflow.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationItttEEbT_T0_RT1_(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(2) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %add.i = add i16 %1, %0                         ; 2 uses
  %add.overflow.i = icmp uge i16 %add.i, %1       ; 2 uses
  br i1 %add.overflow.i, label %bb.b, label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationItjEEbT_S3_RS3_.exit

bb.b:                                             ; preds = %bb.a
  store i16 %add.i, ptr %2, align 2, !tbaa !43
  br label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationItjEEbT_S3_RS3_.exit

_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationItjEEbT_S3_RS3_.exit: ; preds = %bb.a, %bb.b
  ret i1 %add.overflow.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIjjjEEbT_T0_RT1_(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %add.i = add i32 %1, %0                         ; 2 uses
  %add.overflow.i = icmp uge i32 %add.i, %1       ; 2 uses
  br i1 %add.overflow.i, label %bb.b, label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIjmEEbT_S3_RS3_.exit

bb.b:                                             ; preds = %bb.a
  store i32 %add.i, ptr %2, align 4, !tbaa !32
  br label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIjmEEbT_S3_RS3_.exit

_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIjmEEbT_S3_RS3_.exit: ; preds = %bb.a, %bb.b
  ret i1 %add.overflow.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationImmmEEbT_T0_RT1_(i64 noundef %0, i64 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = xor i64 %0, -1
  %i.b = icmp ule i64 %1, %i.a                    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %1, %0
  store i64 %i.c, ptr %2, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = sext i32 %1 to i64
  %i.c = add nsw i64 %i.b, %i.a                   ; 2 uses
  %i.d = add nsw i64 %i.c, 2147483648
  %or.cond.i = icmp ult i64 %i.d, 4294967296      ; 2 uses
  br i1 %or.cond.i, label %bb.b, label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIilEEbT_S3_RS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nsw i64 %i.c to i32
  store i32 %i.e, ptr %2, align 4, !tbaa !32
  br label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIilEEbT_S3_RS3_.exit

_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIilEEbT_S3_RS3_.exit: ; preds = %bb.a, %bb.b
  ret i1 %or.cond.i
}

declare noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteINS_6date_tEEEbT_(i32) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %0, i8 noundef signext %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = sext i8 %0 to i16
  %i.b = sext i8 %1 to i16
  %i.c = add nsw i16 %i.b, %i.a                   ; 2 uses
  %i.d = add nsw i16 %i.c, 128
  %or.cond.i = icmp ult i16 %i.d, 256             ; 2 uses
  br i1 %or.cond.i, label %bb.b, label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIasEEbT_S3_RS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nsw i16 %i.c to i8
  store i8 %i.e, ptr %2, align 1, !tbaa !41
  br label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIasEEbT_S3_RS3_.exit

_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIasEEbT_S3_RS3_.exit: ; preds = %bb.a, %bb.b
  ret i1 %or.cond.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIsssEEbT_T0_RT1_(i16 noundef signext %0, i16 noundef signext %1, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(2) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = sext i16 %0 to i32
  %i.b = sext i16 %1 to i32
  %i.c = add nsw i32 %i.b, %i.a                   ; 2 uses
  %i.d = add nsw i32 %i.c, 32768
  %or.cond.i = icmp ult i32 %i.d, 65536           ; 2 uses
  br i1 %or.cond.i, label %bb.b, label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIsiEEbT_S3_RS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nsw i32 %i.c to i16
  store i16 %i.e, ptr %2, align 2, !tbaa !43
  br label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIsiEEbT_S3_RS3_.exit

_ZN6duckdb12_GLOBAL__N_123OverflowCheckedAddition9OperationIsiEEbT_S3_RS3_.exit: ; preds = %bb.a, %bb.b
  ret i1 %or.cond.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %0, i64 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  store i64 %i.c, ptr %2, align 8
  %.0 = xor i1 %i.b, true
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationINS_10uhugeint_tES2_S2_EEbT_T0_RT1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 4 uses
  store i64 %0, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN6duckdb8Uhugeint13TryAddInPlaceERNS_10uhugeint_tES1_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %2, i64 %3) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !45
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint13TryAddInPlaceERNS_10uhugeint_tES1_(ptr noundef nonnull align 8 dereferenceable(16), i64, i64) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationINS_9hugeint_tES2_S2_EEbT_T0_RT1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  store i64 %0, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN6duckdb7Hugeint13TryAddInPlaceERNS_9hugeint_tES1_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %2, i64 %3) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !45
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN6duckdb7Hugeint13TryAddInPlaceERNS_9hugeint_tES1_(ptr noundef nonnull align 8 dereferenceable(16), i64, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb13TryDecimalAdd9OperationIsssEEbT_T0_RT1_(i16 noundef signext %0, i16 noundef signext %1, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(2) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = sext i16 %1 to i32                       ; 2 uses
  %i.b = icmp slt i16 %1, 0
  %i.c = sext i16 %0 to i32                       ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sub nsw i32 -9999, %i.a
  %i.e = icmp sgt i32 %i.d, %i.c
  br i1 %i.e, label %_ZN6duckdbL22TryDecimalAddTemplatedIsTnT_Lsn9999ETnS1_Ls9999EEEbS1_S1_RS1_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = sub nsw i32 9999, %i.a
  %i.g = icmp slt i32 %i.f, %i.c
  br i1 %i.g, label %_ZN6duckdbL22TryDecimalAddTemplatedIsTnT_Lsn9999ETnS1_Ls9999EEEbS1_S1_RS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = add i16 %1, %0
  store i16 %i.h, ptr %2, align 2, !tbaa !43
  br label %_ZN6duckdbL22TryDecimalAddTemplatedIsTnT_Lsn9999ETnS1_Ls9999EEEbS1_S1_RS1_.exit

_ZN6duckdbL22TryDecimalAddTemplatedIsTnT_Lsn9999ETnS1_Ls9999EEEbS1_S1_RS1_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb13TryDecimalAdd9OperationIiiiEEbT_T0_RT1_(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sub nsw i32 -999999999, %1
  %i.c = icmp sgt i32 %i.b, %0
  br i1 %i.c, label %_ZN6duckdbL22TryDecimalAddTemplatedIiTnT_Lin999999999ETnS1_Li999999999EEEbS1_S1_RS1_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = sub nsw i32 999999999, %1
  %i.e = icmp slt i32 %i.d, %0
  br i1 %i.e, label %_ZN6duckdbL22TryDecimalAddTemplatedIiTnT_Lin999999999ETnS1_Li999999999EEEbS1_S1_RS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add nsw i32 %1, %0
  store i32 %i.f, ptr %2, align 4, !tbaa !32
  br label %_ZN6duckdbL22TryDecimalAddTemplatedIiTnT_Lin999999999ETnS1_Li999999999EEEbS1_S1_RS1_.exit

_ZN6duckdbL22TryDecimalAddTemplatedIiTnT_Lin999999999ETnS1_Li999999999EEEbS1_S1_RS1_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb13TryDecimalAdd9OperationIlllEEbT_T0_RT1_(i64 noundef %0, i64 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sub nsw i64 -999999999999999999, %1
  %i.c = icmp sgt i64 %i.b, %0
  br i1 %i.c, label %_ZN6duckdbL22TryDecimalAddTemplatedIlTnT_Lln999999999999999999ETnS1_Ll999999999999999999EEEbS1_S1_RS1_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = sub nsw i64 999999999999999999, %1
  %i.e = icmp slt i64 %i.d, %0
  br i1 %i.e, label %_ZN6duckdbL22TryDecimalAddTemplatedIlTnT_Lln999999999999999999ETnS1_Ll999999999999999999EEEbS1_S1_RS1_.exit, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN6duckdb14BinaryExecutor14ExecuteGenericIhhhNS_29BinaryStandardOperatorWrapperENS_24AddOperatorOverflowCheckEbEEvRNS_6VectorES5_S5_mT4_:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.n ], [ %i.aa, %bb.o ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.p, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !80

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ae, align 8, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !77
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !inline_history !17
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !inline_history !17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.u:                                             ; preds = %bb.s
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ah, %bb.t ], [ %i.ar, %bb.u ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.as, label %bb.v, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !80

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i16, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.av, align 8, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !77
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !79
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !16
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !16
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20

bb.y:                                             ; preds = %bb.w
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i17 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i17, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18

bb.aa:                                            ; preds = %bb.y
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i19 = phi i32 [ %i.ay, %bb.z ], [ %i.bi, %bb.aa ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i19, 1
  br i1 %i.bj, label %bb.ab, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20, !prof !80

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20

_ZN6duckdb15SelectionVectorD2Ev.exit.i20:         ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18, %bb.x, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i1.i21 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i1.i21, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25, label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bm, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !77
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !17
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25

bb.ae:                                            ; preds = %bb.ac
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i2.i22 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i2.i22, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23

bb.ag:                                            ; preds = %bb.ae
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i4.i24 = phi i32 [ %i.bp, %bb.af ], [ %i.bz, %bb.ag ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i4.i24, 1
  br i1 %i.ca, label %bb.ah, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25, !prof !80

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25:       ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i20, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.ai:                                            ; preds = %bb.a
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.d, %bb.c, %bb.b
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.ak ], [ %i.cc, %bb.aj ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.al ], [ %i.cb, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i8 @_ZN6duckdb24AddOperatorOverflowCheck9OperationIhhhEET1_T_T0_(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %add.i.i = add i8 %1, %0                        ; 2 uses
  %i.a = icmp ult i8 %add.i.i, %1
  br i1 %i.a, label %_ZN6duckdb14TryAddOperator9OperationIhhhEEbT_T0_RT1_.exit, label %bb.h

_ZN6duckdb14TryAddOperator9OperationIhhhEEbT_T0_RT1_.exit: ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread

bb.b:                                             ; preds = %_ZN6duckdb14TryAddOperator9OperationIhhhEEbT_T0_RT1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6duckdb14TypeIdToStringB5cxx11ENS_12PhysicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i8 noundef zeroext 2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6duckdb13NumericHelper8ToStringIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i8 noundef zeroext %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN6duckdb13NumericHelper8ToStringIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i8 noundef zeroext %1)
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread: ; preds = %_ZN6duckdb14TryAddOperator9OperationIhhhEEbT_T0_RT1_.exit
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %6, align 8, !tbaa !38     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.h = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.k = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  call void @_ZdlPv(ptr noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.n = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread: ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.r = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread
  call void @_ZdlPv(ptr noundef %i.r) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  call void @_ZdlPv(ptr noundef %i.n) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0, label %bb.f, label %bb.g

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.thread
  %.pn.pn27.ph = phi { ptr, i32 } [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn.pn27 = phi { ptr, i32 } [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %.pn.pn27.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn.pn26 = phi { ptr, i32 } [ %.pn.pn27, %bb.f ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ]
  resume { ptr, i32 } %.pn.pn26

bb.h:                                             ; preds = %bb.a
  ret i8 %add.i.i

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb13NumericHelper8ToStringIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef zeroext %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  %i.a = icmp ult i8 %1, 10
  %i.b = icmp ult i8 %1, 100
  %. = select i1 %i.b, i32 2, i32 3               ; 3 uses
  %i.c = zext nneg i32 %. to i64
  %i.d = select i1 %i.a, i64 1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %0, align 8, !tbaa !61, !alias.scope !1998
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.f = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !1998 ; 4 uses
  %i.g = icmp ugt i8 %1, 99
  br i1 %i.g, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %i.h = urem i8 %1, 100
  %i.i = shl nuw i8 %i.h, 1
  %i.j = udiv i8 %1, 100
  %i.k = zext i8 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !41, !noalias !1998
  %i.o = zext nneg i32 %. to i64
  %i.p = getelementptr i8, ptr %i.f, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  store i8 %i.n, ptr %i.q, align 1, !tbaa !41
  %i.r = load i8, ptr %i.l, align 2, !tbaa !41, !noalias !1998
  %i.s = zext nneg i32 %. to i64
  %i.t = getelementptr i8, ptr %i.f, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -2
  store i8 %i.r, ptr %i.u, align 1, !tbaa !41
  br label %bb.b

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %i.v = icmp ugt i8 %1, 9
  br i1 %i.v, label %bb.a, label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.w = shl nuw i8 %1, 1
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !41, !noalias !1998
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !41
  %i.ac = load i8, ptr %i.y, align 2, !tbaa !41, !noalias !1998
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.b:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %.0.lcssa.i.i2 = phi i8 [ %i.j, %._crit_edge.i.i.thread ], [ %1, %._crit_edge.i.i ]
  %i.ad = or disjoint i8 %.0.lcssa.i.i2, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.c:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #29
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.a, %bb.b
  %storemerge.i.i = phi i8 [ %i.ad, %bb.b ], [ %i.ac, %bb.a ]
  store i8 %storemerge.i.i, ptr %i.f, align 1, !tbaa !41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIhhhNS_29BinaryStandardOperatorWrapperENS_24AddOperatorOverflowCheckEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not78 = icmp eq i64 %3, 0
  br i1 %.not78, label %.loopexit, label %.lr.ph76

.lr.ph76:                                         ; preds = %.preheader
  %i.b = load i8, ptr %1, align 1, !tbaa !41
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %3, 63
  %i.d = lshr i64 %i.c, 6                         ; 2 uses
  %.not77 = icmp eq i64 %i.d, 0
  br i1 %.not77, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.b, %.loopexit64
  %.073 = phi i64 [ %.4, %.loopexit64 ], [ 0, %bb.b ] ; 9 uses
  %.05872 = phi i64 [ %i.ad, %.loopexit64 ], [ 0, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %.not.i59 = icmp eq ptr %i.e, null
  br i1 %.not.i59, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %.lr.ph74
  %i.f = add i64 %.073, 64
  %i.g = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %3)
  br label %.preheader65

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph74
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05872
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = add i64 %.073, 64
  %i.k = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %3) ; 5 uses
  switch i64 %i.i, label %.preheader63 [
    i64 -1, label %.preheader65
    i64 0, label %.loopexit64
  ]

.preheader65:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.l = phi i64 [ %i.g, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.k, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.m = icmp ult i64 %.073, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit64

.lr.ph:                                           ; preds = %.preheader65
  %i.n = load i8, ptr %1, align 1, !tbaa !41
  br label %bb.c

.preheader63:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.o = icmp ult i64 %.073, %i.k
  br i1 %i.o, label %.lr.ph70, label %.loopexit64

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.168 = phi i64 [ %.073, %.lr.ph ], [ %i.t, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.168
  %i.q = load i8, ptr %i.p, align 1, !tbaa !41
  %i.r = tail call noundef zeroext i8 @_ZN6duckdb24AddOperatorOverflowCheck9OperationIhhhEET1_T_T0_(i8 noundef zeroext %i.q, i8 noundef zeroext %i.n)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %.168
  store i8 %i.r, ptr %i.s, align 1, !tbaa !41
  %i.t = add i64 %.168, 1                         ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.l
  br i1 %exitcond.not, label %.loopexit64, label %bb.c, !llvm.loop !1999

.lr.ph70:                                         ; preds = %.preheader63, %bb.e
  %.269 = phi i64 [ %i.ac, %bb.e ], [ %.073, %.preheader63 ] ; 4 uses
  %i.u = sub nuw i64 %.269, %.073
  %i.v = shl nuw i64 1, %i.u
  %i.w = and i64 %i.v, %i.i
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph70
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.269
  %i.y = load i8, ptr %i.x, align 1, !tbaa !41
  %i.z = load i8, ptr %1, align 1, !tbaa !41
  %i.aa = tail call noundef zeroext i8 @_ZN6duckdb24AddOperatorOverflowCheck9OperationIhhhEET1_T_T0_(i8 noundef zeroext %i.y, i8 noundef zeroext %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.269
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph70, %bb.d
  %i.ac = add i64 %.269, 1                        ; 2 uses
  %exitcond82.not = icmp eq i64 %i.ac, %i.k
  br i1 %exitcond82.not, label %.loopexit64, label %.lr.ph70, !llvm.loop !2000

.loopexit64:                                      ; preds = %bb.e, %bb.c, %.preheader65, %.preheader63, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.k, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.l, %bb.c ], [ %.073, %.preheader63 ], [ %.073, %.preheader65 ], [ %i.k, %bb.e ]
  %i.ad = add nuw nsw i64 %.05872, 1              ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ad, %i.d
  br i1 %exitcond83.not, label %.loopexit, label %.lr.ph74, !llvm.loop !2001

bb.f:                                             ; preds = %.lr.ph76, %bb.f
  %.05775 = phi i64 [ 0, %.lr.ph76 ], [ %i.ai, %bb.f ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.05775
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !41
  %i.ag = tail call noundef zeroext i8 @_ZN6duckdb24AddOperatorOverflowCheck9OperationIhhhEET1_T_T0_(i8 noundef zeroext %i.af, i8 noundef zeroext %i.b)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.05775
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !41
  %i.ai = add nuw i64 %.05775, 1                  ; 2 uses
  %exitcond84.not = icmp eq i64 %i.ai, %3
  br i1 %exitcond84.not, label %.loopexit, label %bb.f, !llvm.loop !2002

.loopexit:                                        ; preds = %.loopexit64, %bb.f, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIhhhNS_29BinaryStandardOperatorWrapperENS_24AddOperatorOverflowCheckEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not78 = icmp eq i64 %3, 0
  br i1 %.not78, label %.loopexit, label %.lr.ph76

.lr.ph76:                                         ; preds = %.preheader
  %i.b = load i8, ptr %0, align 1, !tbaa !41
  br label %bb.f
end_hunk_1
begin_hunk_2_@_ZN6duckdb14BinaryExecutor14ExecuteGenericItttNS_29BinaryStandardOperatorWrapperENS_24AddOperatorOverflowCheckEbEEvRNS_6VectorES5_S5_mT4_:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.n ], [ %i.aa, %bb.o ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.p, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !80

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ae, align 8, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !77
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !inline_history !17
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !inline_history !17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.u:                                             ; preds = %bb.s
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ah, %bb.t ], [ %i.ar, %bb.u ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.as, label %bb.v, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !80

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i16, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.av, align 8, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !77
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !79
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !16
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !16
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20

bb.y:                                             ; preds = %bb.w
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i17 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i17, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18

bb.aa:                                            ; preds = %bb.y
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i19 = phi i32 [ %i.ay, %bb.z ], [ %i.bi, %bb.aa ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i19, 1
  br i1 %i.bj, label %bb.ab, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20, !prof !80

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20

_ZN6duckdb15SelectionVectorD2Ev.exit.i20:         ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18, %bb.x, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i1.i21 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i1.i21, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25, label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bm, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !77
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !17
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25

bb.ae:                                            ; preds = %bb.ac
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i2.i22 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i2.i22, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23

bb.ag:                                            ; preds = %bb.ae
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i4.i24 = phi i32 [ %i.bp, %bb.af ], [ %i.bz, %bb.ag ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i4.i24, 1
  br i1 %i.ca, label %bb.ah, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25, !prof !80

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25:       ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i20, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.ai:                                            ; preds = %bb.a
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.d, %bb.c, %bb.b
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.ak ], [ %i.cc, %bb.aj ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.al ], [ %i.cb, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i16 @_ZN6duckdb24AddOperatorOverflowCheck9OperationItttEET1_T_T0_(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %add.i.i = add i16 %1, %0                       ; 2 uses
  %i.a = icmp ult i16 %add.i.i, %1
  br i1 %i.a, label %_ZN6duckdb14TryAddOperator9OperationItttEEbT_T0_RT1_.exit, label %bb.h

_ZN6duckdb14TryAddOperator9OperationItttEEbT_T0_RT1_.exit: ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread

bb.b:                                             ; preds = %_ZN6duckdb14TryAddOperator9OperationItttEEbT_T0_RT1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6duckdb14TypeIdToStringB5cxx11ENS_12PhysicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i8 noundef zeroext 4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6duckdb13NumericHelper8ToStringItEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i16 noundef zeroext %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN6duckdb13NumericHelper8ToStringItEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i16 noundef zeroext %1)
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread: ; preds = %_ZN6duckdb14TryAddOperator9OperationItttEEbT_T0_RT1_.exit
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %6, align 8, !tbaa !38     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.h = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.k = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  call void @_ZdlPv(ptr noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.n = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread: ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.r = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread
  call void @_ZdlPv(ptr noundef %i.r) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  call void @_ZdlPv(ptr noundef %i.n) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0, label %bb.f, label %bb.g

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.thread
  %.pn.pn27.ph = phi { ptr, i32 } [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn.pn27 = phi { ptr, i32 } [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %.pn.pn27.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn.pn26 = phi { ptr, i32 } [ %.pn.pn27, %bb.f ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ]
  resume { ptr, i32 } %.pn.pn26

bb.h:                                             ; preds = %bb.a
  ret i16 %add.i.i

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb13NumericHelper8ToStringItEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i16 noundef zeroext %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i16 %1 to i32                       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  %i.b = icmp ult i16 %1, 10
  br i1 %i.b, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = icmp ult i16 %1, 100
  br i1 %i.c, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = icmp ult i16 %1, 1000
  br i1 %i.d, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i16 %1, 10000
  %. = select i1 %i.e, i32 4, i32 5
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.c, %bb.b, %.lr.ph.i.i, %bb.a
  %.022.i.i = phi i32 [ %., %bb.c ], [ 3, %bb.b ], [ 2, %.lr.ph.i.i ], [ 1, %bb.a ] ; 2 uses
  %i.f = zext nneg i32 %.022.i.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %0, align 8, !tbaa !61, !alias.scope !2015
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.h = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !2015 ; 4 uses
  %i.i = icmp ugt i16 %1, 99
  br i1 %i.i, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %i.j = add nsw i32 %.022.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.m, %.lr.ph.i11.i ], [ %i.a, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.x, %.lr.ph.i11.i ], [ %i.j, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.k = urem i32 %.020.i.i, 100
  %i.l = shl nuw nsw i32 %i.k, 1
  %i.m = udiv i32 %.020.i.i, 100                  ; 2 uses
  %i.n = zext nneg i32 %i.l to i64
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !41, !noalias !2015
  %i.r = zext i32 %.01819.i.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.r
  store i8 %i.q, ptr %i.s, align 1, !tbaa !41
  %i.t = load i8, ptr %i.o, align 2, !tbaa !41, !noalias !2015
  %i.u = add i32 %.01819.i.i, -1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.v
  store i8 %i.t, ptr %i.w, align 1, !tbaa !41
  %i.x = add i32 %.01819.i.i, -2
  %i.y = icmp samesign ugt i32 %.020.i.i, 9999
  br i1 %i.y, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i ], [ %i.m, %.lr.ph.i11.i ] ; 3 uses
  %i.z = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aa = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !41, !noalias !2015
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !41
  %i.ag = load i8, ptr %i.ac, align 2, !tbaa !41, !noalias !2015
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ah = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.ai = or disjoint i8 %i.ah, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.f:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #29
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.d, %bb.e
  %storemerge.i.i = phi i8 [ %i.ai, %bb.e ], [ %i.ag, %bb.d ]
  store i8 %storemerge.i.i, ptr %i.h, align 1, !tbaa !41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopItttNS_29BinaryStandardOperatorWrapperENS_24AddOperatorOverflowCheckEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not78 = icmp eq i64 %3, 0
  br i1 %.not78, label %.loopexit, label %.lr.ph76

.lr.ph76:                                         ; preds = %.preheader
  %i.b = load i16, ptr %1, align 2, !tbaa !43
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %3, 63
  %i.d = lshr i64 %i.c, 6                         ; 2 uses
  %.not77 = icmp eq i64 %i.d, 0
  br i1 %.not77, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.b, %.loopexit64
  %.073 = phi i64 [ %.4, %.loopexit64 ], [ 0, %bb.b ] ; 9 uses
  %.05872 = phi i64 [ %i.ad, %.loopexit64 ], [ 0, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %.not.i59 = icmp eq ptr %i.e, null
  br i1 %.not.i59, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %.lr.ph74
  %i.f = add i64 %.073, 64
  %i.g = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %3)
  br label %.preheader65

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph74
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05872
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = add i64 %.073, 64
  %i.k = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %3) ; 5 uses
  switch i64 %i.i, label %.preheader63 [
    i64 -1, label %.preheader65
    i64 0, label %.loopexit64
  ]

.preheader65:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.l = phi i64 [ %i.g, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.k, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.m = icmp ult i64 %.073, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit64

.lr.ph:                                           ; preds = %.preheader65
  %i.n = load i16, ptr %1, align 2, !tbaa !43
  br label %bb.c

.preheader63:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.o = icmp ult i64 %.073, %i.k
  br i1 %i.o, label %.lr.ph70, label %.loopexit64

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.168 = phi i64 [ %.073, %.lr.ph ], [ %i.t, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.168
  %i.q = load i16, ptr %i.p, align 2, !tbaa !43
  %i.r = tail call noundef zeroext i16 @_ZN6duckdb24AddOperatorOverflowCheck9OperationItttEET1_T_T0_(i16 noundef zeroext %i.q, i16 noundef zeroext %i.n)
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.168
  store i16 %i.r, ptr %i.s, align 2, !tbaa !43
  %i.t = add i64 %.168, 1                         ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.l
  br i1 %exitcond.not, label %.loopexit64, label %bb.c, !llvm.loop !2016

.lr.ph70:                                         ; preds = %.preheader63, %bb.e
  %.269 = phi i64 [ %i.ac, %bb.e ], [ %.073, %.preheader63 ] ; 4 uses
  %i.u = sub nuw i64 %.269, %.073
  %i.v = shl nuw i64 1, %i.u
  %i.w = and i64 %i.v, %i.i
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph70
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.269
  %i.y = load i16, ptr %i.x, align 2, !tbaa !43
  %i.z = load i16, ptr %1, align 2, !tbaa !43
  %i.aa = tail call noundef zeroext i16 @_ZN6duckdb24AddOperatorOverflowCheck9OperationItttEET1_T_T0_(i16 noundef zeroext %i.y, i16 noundef zeroext %i.z)
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.269
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph70, %bb.d
  %i.ac = add i64 %.269, 1                        ; 2 uses
  %exitcond82.not = icmp eq i64 %i.ac, %i.k
  br i1 %exitcond82.not, label %.loopexit64, label %.lr.ph70, !llvm.loop !2017

.loopexit64:                                      ; preds = %bb.e, %bb.c, %.preheader65, %.preheader63, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.k, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.l, %bb.c ], [ %.073, %.preheader63 ], [ %.073, %.preheader65 ], [ %i.k, %bb.e ]
  %i.ad = add nuw nsw i64 %.05872, 1              ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ad, %i.d
  br i1 %exitcond83.not, label %.loopexit, label %.lr.ph74, !llvm.loop !2018

bb.f:                                             ; preds = %.lr.ph76, %bb.f
  %.05775 = phi i64 [ 0, %.lr.ph76 ], [ %i.ai, %bb.f ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.05775
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !43
  %i.ag = tail call noundef zeroext i16 @_ZN6duckdb24AddOperatorOverflowCheck9OperationItttEET1_T_T0_(i16 noundef zeroext %i.af, i16 noundef zeroext %i.b)
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.05775
end_hunk_2
begin_hunk_3_@_ZN6duckdb14BinaryExecutor14ExecuteGenericIjjjNS_29BinaryStandardOperatorWrapperENS_24AddOperatorOverflowCheckEbEEvRNS_6VectorES5_S5_mT4_:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.n ], [ %i.aa, %bb.o ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.p, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !80

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ae, align 8, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !77
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !inline_history !17
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !inline_history !17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.u:                                             ; preds = %bb.s
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ah, %bb.t ], [ %i.ar, %bb.u ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.as, label %bb.v, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !80

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i16, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.av, align 8, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !77
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !79
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !16
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !16
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20

bb.y:                                             ; preds = %bb.w
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i17 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i17, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18

bb.aa:                                            ; preds = %bb.y
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i19 = phi i32 [ %i.ay, %bb.z ], [ %i.bi, %bb.aa ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i19, 1
  br i1 %i.bj, label %bb.ab, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20, !prof !80

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20

_ZN6duckdb15SelectionVectorD2Ev.exit.i20:         ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18, %bb.x, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i1.i21 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i1.i21, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25, label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bm, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !77
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !17
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25

bb.ae:                                            ; preds = %bb.ac
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i2.i22 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i2.i22, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23

bb.ag:                                            ; preds = %bb.ae
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i4.i24 = phi i32 [ %i.bp, %bb.af ], [ %i.bz, %bb.ag ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i4.i24, 1
  br i1 %i.ca, label %bb.ah, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25, !prof !80

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25:       ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i20, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.ai:                                            ; preds = %bb.a
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.d, %bb.c, %bb.b
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.ak ], [ %i.cc, %bb.aj ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.al ], [ %i.cb, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN6duckdb24AddOperatorOverflowCheck9OperationIjjjEET1_T_T0_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %add.i.i = add i32 %1, %0                       ; 2 uses
  %i.a = icmp ult i32 %add.i.i, %1
  br i1 %i.a, label %_ZN6duckdb14TryAddOperator9OperationIjjjEEbT_T0_RT1_.exit, label %bb.h

_ZN6duckdb14TryAddOperator9OperationIjjjEEbT_T0_RT1_.exit: ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread

bb.b:                                             ; preds = %_ZN6duckdb14TryAddOperator9OperationIjjjEEbT_T0_RT1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6duckdb14TypeIdToStringB5cxx11ENS_12PhysicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i8 noundef zeroext 6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6duckdb13NumericHelper8ToStringIjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN6duckdb13NumericHelper8ToStringIjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i32 noundef %1)
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread: ; preds = %_ZN6duckdb14TryAddOperator9OperationIjjjEEbT_T0_RT1_.exit
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %6, align 8, !tbaa !38     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.h = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.k = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  call void @_ZdlPv(ptr noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.n = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread: ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.r = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread
  call void @_ZdlPv(ptr noundef %i.r) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  call void @_ZdlPv(ptr noundef %i.n) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0, label %bb.f, label %bb.g

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.thread
  %.pn.pn27.ph = phi { ptr, i32 } [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn.pn27 = phi { ptr, i32 } [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %.pn.pn27.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn.pn26 = phi { ptr, i32 } [ %.pn.pn27, %bb.f ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ]
  resume { ptr, i32 } %.pn.pn26

bb.h:                                             ; preds = %bb.a
  ret i32 %add.i.i

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb13NumericHelper8ToStringIjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  %i.a = icmp ult i32 %1, 10
  br i1 %i.a, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.030.i.i = phi i32 [ %i.i, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.h, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %i.b = icmp ult i32 %.02329.i.i, 100
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.c = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.d = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.f = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.h = udiv i32 %.02329.i.i, 10000
  %i.i = add i32 %.030.i.i, 4                     ; 2 uses
  %i.j = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !20

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.022.i.i = phi i32 [ %i.g, %bb.f ], [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ 1, %bb.a ], [ %i.i, %bb.g ]
  %i.k = zext i32 %.022.i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %0, align 8, !tbaa !61, !alias.scope !2032
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.m = load ptr, ptr %0, align 8, !tbaa !38, !alias.scope !2032 ; 4 uses
  %i.n = icmp ugt i32 %1, 99
  br i1 %i.n, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !62, !alias.scope !2032
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.q, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.u, %.lr.ph.i2.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.af, %.lr.ph.i2.i ], [ %i.r, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.s = urem i32 %.020.i.i, 100
  %i.t = shl nuw nsw i32 %i.s, 1
  %i.u = udiv i32 %.020.i.i, 100                  ; 2 uses
  %i.v = zext nneg i32 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !41, !noalias !2032
  %i.z = zext i32 %.01819.i.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !41
  %i.ab = load i8, ptr %i.w, align 2, !tbaa !41, !noalias !2032
  %i.ac = add i32 %.01819.i.i, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ad
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !41
  %i.af = add i32 %.01819.i.i, -2
  %i.ag = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ag, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i ], [ %i.u, %.lr.ph.i2.i ] ; 3 uses
  %i.ah = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ai = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !41, !noalias !2032
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !41
  %i.ao = load i8, ptr %i.ak, align 2, !tbaa !41, !noalias !2032
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ap = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.aq = or disjoint i8 %i.ap, 48
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.j:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #29
  unreachable

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.h, %bb.i
  %storemerge.i.i = phi i8 [ %i.aq, %bb.i ], [ %i.ao, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.m, align 1, !tbaa !41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIjjjNS_29BinaryStandardOperatorWrapperENS_24AddOperatorOverflowCheckEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not78 = icmp eq i64 %3, 0
  br i1 %.not78, label %.loopexit, label %.lr.ph76

.lr.ph76:                                         ; preds = %.preheader
  %i.b = load i32, ptr %1, align 4, !tbaa !32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %3, 63
  %i.d = lshr i64 %i.c, 6                         ; 2 uses
  %.not77 = icmp eq i64 %i.d, 0
  br i1 %.not77, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.b, %.loopexit64
  %.073 = phi i64 [ %.4, %.loopexit64 ], [ 0, %bb.b ] ; 9 uses
  %.05872 = phi i64 [ %i.ad, %.loopexit64 ], [ 0, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %.not.i59 = icmp eq ptr %i.e, null
  br i1 %.not.i59, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %.lr.ph74
  %i.f = add i64 %.073, 64
  %i.g = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %3)
  br label %.preheader65

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph74
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05872
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = add i64 %.073, 64
  %i.k = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %3) ; 5 uses
  switch i64 %i.i, label %.preheader63 [
    i64 -1, label %.preheader65
    i64 0, label %.loopexit64
  ]

.preheader65:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.l = phi i64 [ %i.g, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.k, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.m = icmp ult i64 %.073, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit64

.lr.ph:                                           ; preds = %.preheader65
  %i.n = load i32, ptr %1, align 4, !tbaa !32
  br label %bb.c

.preheader63:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.o = icmp ult i64 %.073, %i.k
  br i1 %i.o, label %.lr.ph70, label %.loopexit64

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.168 = phi i64 [ %.073, %.lr.ph ], [ %i.t, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.168
  %i.q = load i32, ptr %i.p, align 4, !tbaa !32
  %i.r = tail call noundef i32 @_ZN6duckdb24AddOperatorOverflowCheck9OperationIjjjEET1_T_T0_(i32 noundef %i.q, i32 noundef %i.n)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.168
  store i32 %i.r, ptr %i.s, align 4, !tbaa !32
  %i.t = add i64 %.168, 1                         ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.l
  br i1 %exitcond.not, label %.loopexit64, label %bb.c, !llvm.loop !2033

.lr.ph70:                                         ; preds = %.preheader63, %bb.e
  %.269 = phi i64 [ %i.ac, %bb.e ], [ %.073, %.preheader63 ] ; 4 uses
  %i.u = sub nuw i64 %.269, %.073
  %i.v = shl nuw i64 1, %i.u
  %i.w = and i64 %i.v, %i.i
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph70
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.269
  %i.y = load i32, ptr %i.x, align 4, !tbaa !32
  %i.z = load i32, ptr %1, align 4, !tbaa !32
  %i.aa = tail call noundef i32 @_ZN6duckdb24AddOperatorOverflowCheck9OperationIjjjEET1_T_T0_(i32 noundef %i.y, i32 noundef %i.z)
end_hunk_3
