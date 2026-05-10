inline.NumInlined: 2124
inline.NumDeleted: 685
begin_hunk_0

$_ZN4absl14GenericCompareIbNS_4CordEEET_RKS1_RKT0_m = comdat any

$_ZN4absl4CordC2ERKS0_ = comdat any

$_ZN4absl13cord_internal18CordRepBtreeReader4NextEv = comdat any
end_hunk_0
begin_hunk_1_@_ZN4absl14GenericCompareIbNS_4CordEEET_RKS1_RKT0_m:bb.a

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4absl4Cord7CompareESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
  %4 = load i8, ptr %0, align 8                   ; 2 uses
  %5 = trunc i8 %4 to i1
  br i1 %5, label %_ZNK4absl4Cord4sizeEv.exit.i, label %_ZNK4absl4Cord4sizeEv.exit.i.thread

_ZNK4absl4Cord4sizeEv.exit.i:                     ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %7, align 8                  ; 4 uses
  %9 = icmp eq i64 %8, %1
  br i1 %9, label %_ZNK4absl4Cord5emptyEv.exit.i.i21, label %26

_ZNK4absl4Cord4sizeEv.exit.i.thread:              ; preds = %3
  %10 = sext i8 %4 to i64
  %11 = lshr exact i64 %10, 1                     ; 4 uses
  %12 = icmp eq i64 %11, %1
  br i1 %12, label %_ZNK4absl4Cord5emptyEv.exit.i.i21, label %.thread42

_ZNK4absl4Cord5emptyEv.exit.i.i21:                ; preds = %_ZNK4absl4Cord4sizeEv.exit.i.thread, %_ZNK4absl4Cord4sizeEv.exit.i
  %13 = icmp eq i64 %1, 0
  br i1 %13, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i22.thread, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i22

_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i22:      ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i21
  %14 = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %15 = extractvalue { i64, ptr } %14, 0          ; 2 uses
  %.not19.i30 = icmp eq i64 %15, 0
  br i1 %.not19.i30, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i22.thread, label %16

16:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i22
  %17 = tail call i64 @llvm.umin.i64(i64 %1, i64 %15) ; 2 uses
  %18 = extractvalue { i64, ptr } %14, 1
  %19 = tail call i32 @memcmp(ptr noundef %18, ptr noundef %2, i64 noundef %17) #25
  br label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i22.thread

_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i22.thread: ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i21, %16, %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i22
  %.sroa.0.0.i.i2351 = phi i64 [ %17, %16 ], [ 0, %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i22 ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i.i21 ] ; 2 uses
  %20 = phi i32 [ %19, %16 ], [ 0, %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i22 ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i.i21 ] ; 2 uses
  %21 = icmp eq i64 %.sroa.0.0.i.i2351, %1
  %22 = icmp ne i32 %20, 0                        ; 2 uses
  %or.cond.i31 = select i1 %21, i1 true, i1 %22
  br i1 %or.cond.i31, label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit38, label %23

23:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i22.thread
  %24 = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2, i64 noundef %.sroa.0.0.i.i2351, i64 noundef %1) ; 2 uses
  %isnotnull.i.i23.i32 = icmp ne i32 %24, 0
  br label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit38

_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit38: ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i22.thread, %23
  %isnotnull.i.i23.sink.i33 = phi i1 [ %isnotnull.i.i23.i32, %23 ], [ %22, %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i22.thread ]
  %.lobit.neg.i.i22.sink.in.i34 = phi i32 [ %24, %23 ], [ %20, %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i22.thread ]
  %.lobit.neg.i.i22.sink.i35 = ashr i32 %.lobit.neg.i.i22.sink.in.i34, 31
  %isnotnull.zext.i.i24.i36 = zext i1 %isnotnull.i.i23.sink.i33 to i32
  %25 = or i32 %.lobit.neg.i.i22.sink.i35, %isnotnull.zext.i.i24.i36
  br label %_ZN4absl17SharedCompareImplISt17basic_string_viewIcSt11char_traitsIcEEEEiRKNS_4CordERKT_.exit

26:                                               ; preds = %_ZNK4absl4Cord4sizeEv.exit.i
  %27 = icmp ult i64 %8, %1
  br i1 %27, label %_ZNK4absl4Cord5emptyEv.exit.i.i2, label %_ZNK4absl4Cord5emptyEv.exit.i.i

.thread42:                                        ; preds = %_ZNK4absl4Cord4sizeEv.exit.i.thread
  %28 = icmp ult i64 %11, %1
  br i1 %28, label %_ZNK4absl4Cord5emptyEv.exit.i.i2, label %_ZNK4absl4Cord5emptyEv.exit.i.i

_ZNK4absl4Cord5emptyEv.exit.i.i2:                 ; preds = %.thread42, %26
  %29 = phi i64 [ %8, %26 ], [ %11, %.thread42 ]  ; 4 uses
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %.thread, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i3

_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i3:       ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i2
  %31 = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %32 = extractvalue { i64, ptr } %31, 0
  %33 = extractvalue { i64, ptr } %31, 1
  %34 = tail call i64 @llvm.umin.i64(i64 %1, i64 %32) ; 4 uses
  %.not.i10 = icmp ult i64 %29, %34
  br i1 %.not.i10, label %35, label %36

35:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i3
  tail call void @__assert_fail(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.1, i32 noundef 977, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m) #20
  unreachable

36:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i3
  %.not19.i11 = icmp eq i64 %34, 0
  br i1 %.not19.i11, label %.thread, label %37

37:                                               ; preds = %36
  %38 = tail call i32 @memcmp(ptr noundef %33, ptr noundef %2, i64 noundef %34) #25
  br label %.thread

.thread:                                          ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i2, %37, %36
  %.sroa.0.0.i.i45560 = phi i64 [ %34, %37 ], [ 0, %36 ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i.i2 ] ; 2 uses
  %39 = phi i32 [ %38, %37 ], [ 0, %36 ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i.i2 ] ; 2 uses
  %40 = icmp eq i64 %.sroa.0.0.i.i45560, %29
  %41 = icmp ne i32 %39, 0                        ; 2 uses
  %or.cond.i12 = select i1 %40, i1 true, i1 %41
  br i1 %or.cond.i12, label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit19, label %42

42:                                               ; preds = %.thread
  %43 = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2, i64 noundef %.sroa.0.0.i.i45560, i64 noundef %29) ; 2 uses
  %isnotnull.i.i23.i13 = icmp ne i32 %43, 0
  br label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit19

_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit19: ; preds = %.thread, %42
  %isnotnull.i.i23.sink.i14 = phi i1 [ %isnotnull.i.i23.i13, %42 ], [ %41, %.thread ]
  %.lobit.neg.i.i22.sink.in.i15 = phi i32 [ %43, %42 ], [ %39, %.thread ]
  %.lobit.neg.i.i22.sink.i16 = ashr i32 %.lobit.neg.i.i22.sink.in.i15, 31
  %isnotnull.zext.i.i24.i17 = zext i1 %isnotnull.i.i23.sink.i14 to i32
  %44 = or i32 %.lobit.neg.i.i22.sink.i16, %isnotnull.zext.i.i24.i17 ; 2 uses
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 -1, i32 %44
  br label %_ZN4absl17SharedCompareImplISt17basic_string_viewIcSt11char_traitsIcEEEEiRKNS_4CordERKT_.exit

_ZNK4absl4Cord5emptyEv.exit.i.i:                  ; preds = %.thread42, %26
  %47 = phi i64 [ %8, %26 ], [ %11, %.thread42 ]
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %.thread61, label %49

49:                                               ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i
  %50 = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %51 = extractvalue { i64, ptr } %50, 0
  %52 = tail call i64 @llvm.umin.i64(i64 %1, i64 %51) ; 3 uses
  %.not19.i = icmp eq i64 %52, 0
  br i1 %.not19.i, label %.thread61, label %53

53:                                               ; preds = %49
  %54 = extractvalue { i64, ptr } %50, 1
  %55 = tail call i32 @memcmp(ptr noundef %54, ptr noundef %2, i64 noundef %52) #25
  br label %.thread61

.thread61:                                        ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i, %53, %49
  %.sroa.0.0.i.i65 = phi i64 [ %52, %53 ], [ 0, %49 ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i.i ] ; 2 uses
  %56 = phi i32 [ %55, %53 ], [ 0, %49 ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i.i ] ; 2 uses
  %57 = icmp eq i64 %.sroa.0.0.i.i65, %1
  %58 = icmp ne i32 %56, 0                        ; 2 uses
  %or.cond.i = select i1 %57, i1 true, i1 %58
  br i1 %or.cond.i, label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit, label %59

59:                                               ; preds = %.thread61
  %60 = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2, i64 noundef %.sroa.0.0.i.i65, i64 noundef %1) ; 2 uses
  %isnotnull.i.i23.i = icmp ne i32 %60, 0
  br label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit

_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit: ; preds = %.thread61, %59
  %isnotnull.i.i23.sink.i = phi i1 [ %isnotnull.i.i23.i, %59 ], [ %58, %.thread61 ]
  %.lobit.neg.i.i22.sink.in.i = phi i32 [ %60, %59 ], [ %56, %.thread61 ]
  %.lobit.neg.i.i22.sink.i = ashr i32 %.lobit.neg.i.i22.sink.in.i, 31
  %isnotnull.zext.i.i24.i = zext i1 %isnotnull.i.i23.sink.i to i32
  %61 = or i32 %.lobit.neg.i.i22.sink.i, %isnotnull.zext.i.i24.i
  %62 = tail call i32 @llvm.umax.i32(i32 %61, i32 1)
  br label %_ZN4absl17SharedCompareImplISt17basic_string_viewIcSt11char_traitsIcEEEEiRKNS_4CordERKT_.exit

_ZN4absl17SharedCompareImplISt17basic_string_viewIcSt11char_traitsIcEEEEiRKNS_4CordERKT_.exit: ; preds = %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit38, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit19, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit
  %.0.i = phi i32 [ %25, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit38 ], [ %46, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit19 ], [ %62, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_1
begin_hunk_2_@_ZN4absl14GenericCompareIiNS_4CordEEET_RKS1_RKT0_m:bb.a
  %.sroa.0.0.i203843 = phi i64 [ %i.y, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i19 ] ; 2 uses
  %i.aa = phi i32 [ %i.z, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i19 ] ; 2 uses
  %i.ab = icmp eq i64 %.sroa.0.0.i203843, %2
  %i.ac = icmp ne i32 %i.aa, 0                    ; 2 uses
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ad = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathERKS0_mm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.sroa.0.0.i203843, i64 noundef %2) ; 2 uses
  %isnotnull.i.i27 = icmp ne i32 %i.ad, 0
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %isnotnull.i.i27.sink = phi i1 [ %isnotnull.i.i27, %bb.f ], [ %i.ac, %.thread ]
  %.lobit.neg.i.i26.sink.in = phi i32 [ %i.ad, %bb.f ], [ %i.aa, %.thread ]
  %.lobit.neg.i.i26.sink = ashr i32 %.lobit.neg.i.i26.sink.in, 31
  %isnotnull.zext.i.i28 = zext i1 %isnotnull.i.i27.sink to i32
  %3 = or i32 %.lobit.neg.i.i26.sink, %isnotnull.zext.i.i28
  ret i32 %3
}

end_hunk_2
begin_hunk_3_@bcmp
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
end_hunk_3
