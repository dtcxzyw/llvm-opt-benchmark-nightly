inline.NumInlined: 21423
inline.NumDeleted: 1880
begin_hunk_0_@_ZN6duckdb29MultiplyOperatorOverflowCheck9OperationIlllEET1_T_T0_:bb.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread: ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.u = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread
  call void @_ZdlPv(ptr noundef %i.u) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  call void @_ZdlPv(ptr noundef %i.q) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.2, label %bb.k, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.2, label %bb.k, label %bb.l

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.thread
  %.pn.pn.pn.pn30.ph = phi { ptr, i32 } [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn.pn.pn.pn30 = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn.pn.pn.pn30.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.c) #25
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn.pn.pn.pn29 = phi { ptr, i32 } [ %.pn.pn.pn.pn30, %bb.k ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  resume { ptr, i32 } %.pn.pn.pn.pn29

bb.m:                                             ; preds = %bb.a
  %i.x = extractvalue { i64, i1 } %i.a, 0
  ret i64 %i.x

bb.n:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationIlNS_10interval_tES2_EET1_T_T0_(i64 noundef %0, i64 %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tElS2_EET1_T_T0_(i64 %1, i64 %2, i64 noundef %0)
  ret { i64, i64 } %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

declare noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.nearbyint.f64(double) #7

declare noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %0, i64 %1, double noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::interval_t", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_(i64 %0, i64 %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %.fca.0.load = load i64, ptr %3, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationIdNS_10interval_tES2_EET1_T_T0_(double noundef %0, i64 %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %1, i64 %2, double noundef %0)
  ret { i64, i64 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIhhhEEbT_T0_RT1_(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %umul.i = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %1, i8 %0) ; 2 uses
  %i.a = extractvalue { i8, i1 } %umul.i, 1       ; 2 uses
  br i1 %i.a, label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIhtEEbT_S3_RS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %umul.value.i = extractvalue { i8, i1 } %umul.i, 0
  store i8 %umul.value.i, ptr %2, align 1, !tbaa !15
  br label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIhtEEbT_S3_RS3_.exit

_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIhtEEbT_S3_RS3_.exit: ; preds = %bb.a, %bb.b
  %.0.i = xor i1 %i.a, true
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationItttEEbT_T0_RT1_(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef nonnull writeonly align 2 captures(none) dereferenceable(2) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %umul.i = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %1, i16 %0) ; 2 uses
  %i.a = extractvalue { i16, i1 } %umul.i, 1      ; 2 uses
  br i1 %i.a, label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationItjEEbT_S3_RS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %umul.value.i = extractvalue { i16, i1 } %umul.i, 0
  store i16 %umul.value.i, ptr %2, align 2, !tbaa !16
  br label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationItjEEbT_S3_RS3_.exit

_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationItjEEbT_S3_RS3_.exit: ; preds = %bb.a, %bb.b
  %.0.i = xor i1 %i.a, true
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIjjjEEbT_T0_RT1_(i32 noundef %0, i32 noundef %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %umul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 %0) ; 2 uses
  %i.a = extractvalue { i32, i1 } %umul.i, 1      ; 2 uses
  br i1 %i.a, label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIjmEEbT_S3_RS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %umul.value.i = extractvalue { i32, i1 } %umul.i, 0
  store i32 %umul.value.i, ptr %2, align 4, !tbaa !3
  br label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIjmEEbT_S3_RS3_.exit

_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIjmEEbT_S3_RS3_.exit: ; preds = %bb.a, %bb.b
  %.0.i = xor i1 %i.a, true
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationImmmEEbT_T0_RT1_(i64 noundef %0, i64 noundef %1, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %spec.select = tail call i64 @llvm.umin.i64(i64 %0, i64 %1) ; 3 uses
  %i.a = icmp ugt i64 %spec.select, 4294967295
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.v = tail call i64 @llvm.umax.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = lshr i64 %.sroa.0.0.v, 32
  %i.c = mul nuw i64 %i.b, %spec.select           ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4294967295
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %.sroa.0.0.v, 4294967295
  %i.f = mul nuw i64 %i.e, %spec.select
  %i.g = shl nuw i64 %i.c, 32
  %i.h = xor i64 %i.f, -1
  %i.i = icmp ugt i64 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = mul i64 %0, %1
  store i64 %i.j, ptr %2, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %0, i8 noundef signext %1, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = sext i8 %0 to i16
  %i.b = sext i8 %1 to i16
  %i.c = mul nsw i16 %i.b, %i.a                   ; 2 uses
  %i.d = add nsw i16 %i.c, 128
  %or.cond.i = icmp ult i16 %i.d, 256             ; 2 uses
  br i1 %or.cond.i, label %bb.b, label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIasEEbT_S3_RS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nsw i16 %i.c to i8
  store i8 %i.e, ptr %2, align 1, !tbaa !15
  br label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIasEEbT_S3_RS3_.exit

_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIasEEbT_S3_RS3_.exit: ; preds = %bb.a, %bb.b
  ret i1 %or.cond.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIsssEEbT_T0_RT1_(i16 noundef signext %0, i16 noundef signext %1, ptr noundef nonnull writeonly align 2 captures(none) dereferenceable(2) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = sext i16 %0 to i32
  %i.b = sext i16 %1 to i32
  %i.c = mul nsw i32 %i.b, %i.a                   ; 2 uses
  %i.d = add nsw i32 %i.c, 32768
  %or.cond.i = icmp ult i32 %i.d, 65536           ; 2 uses
  br i1 %or.cond.i, label %bb.b, label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIsiEEbT_S3_RS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nsw i32 %i.c to i16
  store i16 %i.e, ptr %2, align 2, !tbaa !16
  br label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIsiEEbT_S3_RS3_.exit

_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIsiEEbT_S3_RS3_.exit: ; preds = %bb.a, %bb.b
  ret i1 %or.cond.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef %0, i32 noundef %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = sext i32 %1 to i64
  %i.c = mul nsw i64 %i.b, %i.a                   ; 2 uses
  %i.d = add nsw i64 %i.c, 2147483648
  %or.cond.i = icmp ult i64 %i.d, 4294967296      ; 2 uses
  br i1 %or.cond.i, label %bb.b, label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIilEEbT_S3_RS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nsw i64 %i.c to i32
  store i32 %i.e, ptr %2, align 4, !tbaa !3
  br label %_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIilEEbT_S3_RS3_.exit

_ZN6duckdb12_GLOBAL__N_123OverflowCheckedMultiply9OperationIilEEbT_S3_RS3_.exit: ; preds = %bb.a, %bb.b
  ret i1 %or.cond.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %0, i64 noundef %1, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  store i64 %i.c, ptr %2, align 8
  %.0 = xor i1 %i.b, true
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationINS_9hugeint_tES2_S2_EEbT_T0_RT1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb7Hugeint11TryMultiplyENS_9hugeint_tES1_RS1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZN6duckdb7Hugeint11TryMultiplyENS_9hugeint_tES1_RS1_(i64, i64, i64, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationINS_10uhugeint_tES2_S2_EEbT_T0_RT1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb8Uhugeint11TryMultiplyENS_10uhugeint_tES1_RS1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZN6duckdb8Uhugeint11TryMultiplyENS_10uhugeint_tES1_RS1_(i64, i64, i64, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb18TryDecimalMultiply9OperationIsssEEbT_T0_RT1_(i16 noundef signext %0, i16 noundef signext %1, ptr noundef nonnull writeonly align 2 captures(none) dereferenceable(2) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = sext i16 %0 to i32
  %i.b = sext i16 %1 to i32
  %i.c = mul nsw i32 %i.b, %i.a                   ; 3 uses
  %i.d = add nsw i32 %i.c, 32768
  %or.cond.i.i.i = icmp ult i32 %i.d, 65536
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN6duckdbL27TryDecimalMultiplyTemplatedIsTnT_Lsn9999ETnS1_Ls9999EEEbS1_S1_RS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nsw i32 %i.c to i16
  store i16 %i.e, ptr %2, align 2, !tbaa !16
  %i.f = add nsw i32 %i.c, 9999
  %or.cond.i = icmp ult i32 %i.f, 19999
  br label %_ZN6duckdbL27TryDecimalMultiplyTemplatedIsTnT_Lsn9999ETnS1_Ls9999EEEbS1_S1_RS1_.exit

_ZN6duckdbL27TryDecimalMultiplyTemplatedIsTnT_Lsn9999ETnS1_Ls9999EEEbS1_S1_RS1_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %or.cond.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb18TryDecimalMultiply9OperationIiiiEEbT_T0_RT1_(i32 noundef %0, i32 noundef %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = sext i32 %1 to i64
  %i.c = mul nsw i64 %i.b, %i.a                   ; 3 uses
  %i.d = add nsw i64 %i.c, 2147483648
  %or.cond.i.i.i = icmp ult i64 %i.d, 4294967296
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN6duckdbL27TryDecimalMultiplyTemplatedIiTnT_Lin999999999ETnS1_Li999999999EEEbS1_S1_RS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nsw i64 %i.c to i32
  store i32 %i.e, ptr %2, align 4, !tbaa !3
  %i.f = add nsw i64 %i.c, 999999999
  %or.cond.i = icmp ult i64 %i.f, 1999999999
  br label %_ZN6duckdbL27TryDecimalMultiplyTemplatedIiTnT_Lin999999999ETnS1_Li999999999EEEbS1_S1_RS1_.exit

_ZN6duckdbL27TryDecimalMultiplyTemplatedIiTnT_Lin999999999ETnS1_Li999999999EEEbS1_S1_RS1_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %or.cond.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb18TryDecimalMultiply9OperationIlllEEbT_T0_RT1_(i64 noundef %0, i64 noundef %1, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  store i64 %i.c, ptr %2, align 8
  %.0.i.i = xor i1 %i.b, true
  %i.d = add i64 %i.c, 999999999999999999
  %or.cond.i = icmp ult i64 %i.d, 1999999999999999999
  %.0.i = and i1 %or.cond.i, %.0.i.i
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb18TryDecimalMultiply9OperationINS_9hugeint_tES2_S2_EEbT_T0_RT1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb7Hugeint11TryMultiplyENS_9hugeint_tES1_RS1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.b = tail call { i64, i64 } @_ZNK6duckdb9hugeint_tngEv(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 608)) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  store i64 %i.c, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = extractvalue { i64, i64 } %i.b, 1
  store i64 %i.e, ptr %i.d, align 8
  %i.f = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tleERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tgeERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 608))
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %not. = xor i1 %i.g, true
  br label %bb.d

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %not., %bb.c ], [ false, %.critedge ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb28DecimalMultiplyOverflowCheck9OperationINS_9hugeint_tES2_S2_EET1_T_T0_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::hugeint_t", align 8 ; 6 uses
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 8 ; 3 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store i64 %0, ptr %6, align 8
end_hunk_0
begin_hunk_1_@_ZN6duckdb14BinaryExecutor14ExecuteGenericImmmNS_29BinaryStandardOperatorWrapperENS_29MultiplyOperatorOverflowCheckEbEEvRNS_6VectorES5_S5_mT4_:bb.a
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.n ], [ %i.aa, %bb.o ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.p, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !60

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ae, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !56
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !inline_history !569
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !inline_history !569
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.u:                                             ; preds = %bb.s
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ah, %bb.t ], [ %i.ar, %bb.u ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.as, label %bb.v, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !60

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i16, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.av, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !56
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !568
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !568
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20

bb.y:                                             ; preds = %bb.w
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i.i17 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i17, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18

bb.aa:                                            ; preds = %bb.y
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i19 = phi i32 [ %i.ay, %bb.z ], [ %i.bi, %bb.aa ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i19, 1
  br i1 %i.bj, label %bb.ab, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20, !prof !60

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i20

_ZN6duckdb15SelectionVectorD2Ev.exit.i20:         ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18, %bb.x, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i.i1.i21 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i1.i21, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25, label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bm, align 8, !tbaa !54
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !56
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !569
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !57
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !569
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25

bb.ae:                                            ; preds = %bb.ac
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i2.i22 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i2.i22, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23

bb.ag:                                            ; preds = %bb.ae
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i23: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i4.i24 = phi i32 [ %i.bp, %bb.af ], [ %i.bz, %bb.ag ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i4.i24, 1
  br i1 %i.ca, label %bb.ah, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit25, !prof !60

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
define linkonce_odr noundef i64 @_ZN6duckdb29MultiplyOperatorOverflowCheck9OperationImmmEET1_T_T0_(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %0, i64 %1) ; 3 uses
  %i.a = icmp ugt i64 %spec.select.i, 4294967295
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.v.i = tail call i64 @llvm.umax.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = lshr i64 %.sroa.0.0.v.i, 32
  %i.c = mul nuw i64 %i.b, %spec.select.i         ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4294967295
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %.sroa.0.0.v.i, 4294967295
  %i.f = mul nuw i64 %i.e, %spec.select.i
  %i.g = shl nuw i64 %i.c, 32
  %i.h = xor i64 %i.f, -1
  %i.i = icmp ugt i64 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6duckdb14TypeIdToStringB5cxx11ENS_12PhysicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i8 noundef zeroext 8)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN6duckdb13NumericHelper8ToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 noundef %0)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN6duckdb13NumericHelper8ToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 noundef %1)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.p unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.thread: ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.j:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.k:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]  ; 2 uses
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.l ] ; 2 uses
  %.1 = phi i1 [ true, %bb.k ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.r = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.l, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.2 = phi i1 [ true, %bb.j ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.u = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  call void @_ZdlPv(ptr noundef %i.u) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.x = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread: ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ab = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread
  call void @_ZdlPv(ptr noundef %i.ab) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  call void @_ZdlPv(ptr noundef %i.x) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.2, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.2, label %bb.m, label %bb.n

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.thread
  %.pn.pn.pn.pn33.ph = phi { ptr, i32 } [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.thread ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn.pn.pn.pn33 = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn.pn.pn.pn33.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.j) #25
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn.pn.pn.pn32 = phi { ptr, i32 } [ %.pn.pn.pn.pn33, %bb.m ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  resume { ptr, i32 } %.pn.pn.pn.pn32

bb.o:                                             ; preds = %bb.c
  %i.ae = mul i64 %1, %0
  ret i64 %i.ae

bb.p:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopImmmNS_29BinaryStandardOperatorWrapperENS_29MultiplyOperatorOverflowCheckEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !93
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not78 = icmp eq i64 %3, 0
  br i1 %.not78, label %.loopexit, label %.lr.ph76

.lr.ph76:                                         ; preds = %.preheader
  %i.b = load i64, ptr %1, align 8, !tbaa !18
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %3, 63
  %i.d = lshr i64 %i.c, 6                         ; 2 uses
  %.not77 = icmp eq i64 %i.d, 0
  br i1 %.not77, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.b, %.loopexit64
  %.073 = phi i64 [ %.4, %.loopexit64 ], [ 0, %bb.b ] ; 9 uses
  %.05772 = phi i64 [ %i.ad, %.loopexit64 ], [ 0, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !93     ; 2 uses
  %.not.i59 = icmp eq ptr %i.e, null
  br i1 %.not.i59, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %.lr.ph74
  %i.f = add i64 %.073, 64
  %i.g = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %3)
  br label %.preheader65

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph74
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05772
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 2 uses
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
  %i.n = load i64, ptr %1, align 8, !tbaa !18
  br label %bb.c

.preheader63:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.o = icmp ult i64 %.073, %i.k
  br i1 %i.o, label %.lr.ph70, label %.loopexit64

end_hunk_1
