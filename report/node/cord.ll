inline.NumInlined: 2123
inline.NumDeleted: 685
begin_hunk_0

$_ZN4absl14GenericCompareIbNS_4CordEEET_RKS1_RKT0_m = comdat any

$_ZN4absl17SharedCompareImplISt17basic_string_viewIcSt11char_traitsIcEEEEiRKNS_4CordERKT_ = comdat any

$_ZN4absl4CordC2ERKS0_ = comdat any

$_ZN4absl13cord_internal18CordRepBtreeReader4NextEv = comdat any
end_hunk_0
begin_hunk_1_@_ZN4absl14GenericCompareIbNS_4CordEEET_RKS1_RKT0_m:bb.a

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4absl4Cord7CompareESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  store i64 %1, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %4, align 8
  %5 = call noundef i32 @_ZN4absl17SharedCompareImplISt17basic_string_viewIcSt11char_traitsIcEEEEiRKNS_4CordERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  ret i32 %5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4absl17SharedCompareImplISt17basic_string_viewIcSt11char_traitsIcEEEEiRKNS_4CordERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat {
  %3 = load i8, ptr %0, align 8                   ; 2 uses
  %4 = trunc i8 %3 to i1
  br i1 %4, label %_ZNK4absl4Cord4sizeEv.exit, label %_ZNK4absl4Cord4sizeEv.exit.thread

_ZNK4absl4Cord4sizeEv.exit:                       ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i64, ptr %6, align 8                  ; 5 uses
  %8 = load i64, ptr %1, align 8                  ; 4 uses
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %_ZNK4absl4Cord5emptyEv.exit.i.i, label %30

_ZNK4absl4Cord4sizeEv.exit.thread:                ; preds = %2
  %10 = sext i8 %3 to i64
  %11 = lshr exact i64 %10, 1                     ; 5 uses
  %12 = load i64, ptr %1, align 8                 ; 4 uses
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %_ZNK4absl4Cord5emptyEv.exit.i.i, label %.thread51

_ZNK4absl4Cord5emptyEv.exit.i.i:                  ; preds = %_ZNK4absl4Cord4sizeEv.exit.thread, %_ZNK4absl4Cord4sizeEv.exit
  %.sroa.08.0.copyload.i58 = phi i64 [ %7, %_ZNK4absl4Cord4sizeEv.exit ], [ %11, %_ZNK4absl4Cord4sizeEv.exit.thread ] ; 4 uses
  %14 = icmp eq i64 %.sroa.08.0.copyload.i58, 0
  br i1 %14, label %.thread, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i

_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i:        ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i
  %15 = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %16 = extractvalue { i64, ptr } %15, 0
  %17 = extractvalue { i64, ptr } %15, 1
  %.sroa.08.0.copyload.i.pre = load i64, ptr %1, align 8 ; 3 uses
  %18 = tail call i64 @llvm.umin.i64(i64 %.sroa.08.0.copyload.i.pre, i64 %16) ; 4 uses
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.29.0.copyload.i = load ptr, ptr %.sroa.29.0..sroa_idx.i, align 8 ; 3 uses
  %.not.i = icmp ult i64 %.sroa.08.0.copyload.i58, %18
  br i1 %.not.i, label %19, label %20

.thread:                                          ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i
  %.sroa.29.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.29.0.copyload.i70 = load ptr, ptr %.sroa.29.0..sroa_idx.i69, align 8
  br label %23

19:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.1, i32 noundef 977, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m) #20
  unreachable

20:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i
  %.not19.i = icmp eq i64 %18, 0
  br i1 %.not19.i, label %23, label %21

21:                                               ; preds = %20
  %22 = tail call i32 @memcmp(ptr noundef %17, ptr noundef %.sroa.29.0.copyload.i, i64 noundef %18) #25
  br label %23

23:                                               ; preds = %.thread, %21, %20
  %.sroa.08.0.copyload.i7283 = phi i64 [ %.sroa.08.0.copyload.i.pre, %21 ], [ %.sroa.08.0.copyload.i.pre, %20 ], [ 0, %.thread ]
  %.sroa.0.0.i.i7382 = phi i64 [ %18, %21 ], [ 0, %20 ], [ 0, %.thread ] ; 2 uses
  %.sroa.29.0.copyload.i7581 = phi ptr [ %.sroa.29.0.copyload.i, %21 ], [ %.sroa.29.0.copyload.i, %20 ], [ %.sroa.29.0.copyload.i70, %.thread ]
  %24 = phi i32 [ %22, %21 ], [ 0, %20 ], [ 0, %.thread ] ; 2 uses
  %25 = icmp eq i64 %.sroa.0.0.i.i7382, %.sroa.08.0.copyload.i58
  %26 = icmp ne i32 %24, 0
  %or.cond.i = select i1 %25, i1 true, i1 %26
  br i1 %or.cond.i, label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit, label %27

27:                                               ; preds = %23
  %28 = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.08.0.copyload.i7283, ptr %.sroa.29.0.copyload.i7581, i64 noundef %.sroa.0.0.i.i7382, i64 noundef %.sroa.08.0.copyload.i58)
  br label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit

_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit: ; preds = %23, %27
  %.sink.i = phi i32 [ %28, %27 ], [ %24, %23 ]
  %29 = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %.sink.i, i32 0)
  br label %71

30:                                               ; preds = %_ZNK4absl4Cord4sizeEv.exit
  %31 = icmp ult i64 %7, %8
  br i1 %31, label %_ZNK4absl4Cord5emptyEv.exit.i.i22, label %_ZNK4absl4Cord5emptyEv.exit.i.i37

.thread51:                                        ; preds = %_ZNK4absl4Cord4sizeEv.exit.thread
  %32 = icmp ult i64 %11, %12
  br i1 %32, label %_ZNK4absl4Cord5emptyEv.exit.i.i22, label %_ZNK4absl4Cord5emptyEv.exit.i.i37

_ZNK4absl4Cord5emptyEv.exit.i.i22:                ; preds = %.thread51, %30
  %.sroa.08.0.copyload.i2656 = phi i64 [ %8, %30 ], [ %12, %.thread51 ]
  %33 = phi i64 [ %7, %30 ], [ %11, %.thread51 ]  ; 4 uses
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %.thread94, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i23

_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i23:      ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i22
  %35 = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %36 = extractvalue { i64, ptr } %35, 0
  %37 = extractvalue { i64, ptr } %35, 1
  %.sroa.08.0.copyload.i26.pre = load i64, ptr %1, align 8 ; 3 uses
  %38 = tail call i64 @llvm.umin.i64(i64 %.sroa.08.0.copyload.i26.pre, i64 %36) ; 4 uses
  %.sroa.29.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.29.0.copyload.i28 = load ptr, ptr %.sroa.29.0..sroa_idx.i27, align 8 ; 3 uses
  %.not.i30 = icmp ult i64 %33, %38
  br i1 %.not.i30, label %39, label %40

.thread94:                                        ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i22
  %.sroa.29.0..sroa_idx.i2787 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.29.0.copyload.i2888 = load ptr, ptr %.sroa.29.0..sroa_idx.i2787, align 8
  br label %43

39:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i23
  tail call void @__assert_fail(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.1, i32 noundef 977, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m) #20
  unreachable

40:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i23
  %.not19.i31 = icmp eq i64 %38, 0
  br i1 %.not19.i31, label %43, label %41

41:                                               ; preds = %40
  %42 = tail call i32 @memcmp(ptr noundef %37, ptr noundef %.sroa.29.0.copyload.i28, i64 noundef %38) #25
  br label %43

43:                                               ; preds = %.thread94, %41, %40
  %.sroa.08.0.copyload.i2690102 = phi i64 [ %.sroa.08.0.copyload.i26.pre, %41 ], [ %.sroa.08.0.copyload.i26.pre, %40 ], [ %.sroa.08.0.copyload.i2656, %.thread94 ]
  %.sroa.0.0.i.i2491101 = phi i64 [ %38, %41 ], [ 0, %40 ], [ 0, %.thread94 ] ; 2 uses
  %.sroa.29.0.copyload.i2893100 = phi ptr [ %.sroa.29.0.copyload.i28, %41 ], [ %.sroa.29.0.copyload.i28, %40 ], [ %.sroa.29.0.copyload.i2888, %.thread94 ]
  %44 = phi i32 [ %42, %41 ], [ 0, %40 ], [ 0, %.thread94 ] ; 2 uses
  %45 = icmp eq i64 %.sroa.0.0.i.i2491101, %33
  %46 = icmp ne i32 %44, 0
  %or.cond.i32 = select i1 %45, i1 true, i1 %46
  br i1 %or.cond.i32, label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit35, label %47

47:                                               ; preds = %43
  %48 = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.08.0.copyload.i2690102, ptr %.sroa.29.0.copyload.i2893100, i64 noundef %.sroa.0.0.i.i2491101, i64 noundef %33)
  br label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit35

_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit35: ; preds = %43, %47
  %.sink.i33 = phi i32 [ %48, %47 ], [ %44, %43 ] ; 2 uses
  %49 = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %.sink.i33, i32 0)
  %50 = icmp eq i32 %.sink.i33, 0
  %51 = select i1 %50, i32 -1, i32 %49
  br label %71

_ZNK4absl4Cord5emptyEv.exit.i.i37:                ; preds = %.thread51, %30
  %52 = phi i64 [ %8, %30 ], [ %12, %.thread51 ]  ; 4 uses
  %53 = phi i64 [ %7, %30 ], [ %11, %.thread51 ]
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %.thread113, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i38

_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i38:      ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i37
  %55 = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %56 = extractvalue { i64, ptr } %55, 0
  %57 = extractvalue { i64, ptr } %55, 1
  %.sroa.08.0.copyload.i41.pre = load i64, ptr %1, align 8 ; 3 uses
  %58 = tail call i64 @llvm.umin.i64(i64 %.sroa.08.0.copyload.i41.pre, i64 %56) ; 4 uses
  %.sroa.29.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.29.0.copyload.i43 = load ptr, ptr %.sroa.29.0..sroa_idx.i42, align 8 ; 3 uses
  %.not.i45 = icmp ult i64 %52, %58
  br i1 %.not.i45, label %59, label %60

.thread113:                                       ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i37
  %.sroa.29.0..sroa_idx.i42106 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.29.0.copyload.i43107 = load ptr, ptr %.sroa.29.0..sroa_idx.i42106, align 8
  br label %63

59:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i38
  tail call void @__assert_fail(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.1, i32 noundef 977, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m) #20
  unreachable

60:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i38
  %.not19.i46 = icmp eq i64 %58, 0
  br i1 %.not19.i46, label %63, label %61

61:                                               ; preds = %60
  %62 = tail call i32 @memcmp(ptr noundef %57, ptr noundef %.sroa.29.0.copyload.i43, i64 noundef %58) #25
  br label %63

63:                                               ; preds = %.thread113, %61, %60
  %.sroa.08.0.copyload.i41109121 = phi i64 [ %.sroa.08.0.copyload.i41.pre, %61 ], [ %.sroa.08.0.copyload.i41.pre, %60 ], [ %52, %.thread113 ]
  %.sroa.0.0.i.i39110120 = phi i64 [ %58, %61 ], [ 0, %60 ], [ 0, %.thread113 ] ; 2 uses
  %.sroa.29.0.copyload.i43112119 = phi ptr [ %.sroa.29.0.copyload.i43, %61 ], [ %.sroa.29.0.copyload.i43, %60 ], [ %.sroa.29.0.copyload.i43107, %.thread113 ]
  %64 = phi i32 [ %62, %61 ], [ 0, %60 ], [ 0, %.thread113 ] ; 2 uses
  %65 = icmp eq i64 %.sroa.0.0.i.i39110120, %52
  %66 = icmp ne i32 %64, 0
  %or.cond.i47 = select i1 %65, i1 true, i1 %66
  br i1 %or.cond.i47, label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit50, label %67

67:                                               ; preds = %63
  %68 = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.08.0.copyload.i41109121, ptr %.sroa.29.0.copyload.i43112119, i64 noundef %.sroa.0.0.i.i39110120, i64 noundef %52)
  br label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit50

_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit50: ; preds = %63, %67
  %.sink.i48 = phi i32 [ %68, %67 ], [ %64, %63 ]
  %69 = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %.sink.i48, i32 0)
  %70 = tail call i32 @llvm.umax.i32(i32 %69, i32 1)
  br label %71

71:                                               ; preds = %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit50, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit35, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit
  %.0 = phi i32 [ %29, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit ], [ %51, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit35 ], [ %70, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit50 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_1
begin_hunk_2_@_ZN4absl14GenericCompareIiNS_4CordEEET_RKS1_RKT0_m:bb.a
  %.sroa.0.0.i203843 = phi i64 [ %i.y, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i19 ] ; 2 uses
  %i.aa = phi i32 [ %i.z, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i19 ] ; 2 uses
  %i.ab = icmp eq i64 %.sroa.0.0.i203843, %2
  %i.ac = icmp ne i32 %i.aa, 0
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ad = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathERKS0_mm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.sroa.0.0.i203843, i64 noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.lobit.neg.i.i26.sink.in = phi i32 [ %i.ad, %bb.f ], [ %i.aa, %.thread ]
  %3 = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %.lobit.neg.i.i26.sink.in, i32 0)
  ret i32 %3
}

end_hunk_2
begin_hunk_3_@bcmp
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
end_hunk_3
