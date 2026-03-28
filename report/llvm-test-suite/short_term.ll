begin_hunk_0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @Decoding_of_the_coded_Log_Area_Ratios(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 16)) %1) unnamed_addr #2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %4 = load i16, ptr %0, align 2, !tbaa !12       ; 2 uses
  %5 = icmp slt i16 %4, -32736
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = shl i16 %4, 10
  %8 = xor i16 %7, -32768
  %9 = sext i16 %8 to i64
  %10 = mul nsw i64 %9, 112588272697344
  %11 = add nsw i64 %10, 140737488355328
  %12 = lshr i64 %11, 47
  %13 = trunc i64 %12 to i16
  %14 = and i16 %13, -2
  br label %15

15:                                               ; preds = %2, %6
  %16 = phi i16 [ %14, %6 ], [ 0, %2 ]
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %16, ptr %1, align 2, !tbaa !12
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %19 = load i16, ptr %3, align 2, !tbaa !12      ; 2 uses
  %20 = icmp slt i16 %19, -32736
  br i1 %20, label %30, label %21

21:                                               ; preds = %15
  %22 = shl i16 %19, 10
  %23 = xor i16 %22, -32768
  %24 = sext i16 %23 to i64
  %25 = mul nsw i64 %24, 112588272697344
  %26 = add nsw i64 %25, 140737488355328
  %27 = lshr i64 %26, 47
  %28 = trunc i64 %27 to i16
  %29 = and i16 %28, -2
  br label %30

30:                                               ; preds = %15, %21
  %31 = phi i16 [ %29, %21 ], [ 0, %15 ]
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %31, ptr %17, align 2, !tbaa !12
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %34 = load i16, ptr %18, align 2, !tbaa !12     ; 2 uses
  %35 = icmp slt i16 %34, -32752
  br i1 %35, label %46, label %36

36:                                               ; preds = %30
  %37 = shl i16 %34, 10
  %38 = add i16 %37, -16384
  %39 = tail call i16 @llvm.smax.i16(i16 %38, i16 -28672)
  %narrow = add nsw i16 %39, -4096
  %40 = sext i16 %narrow to i64
  %41 = mul nsw i64 %40, 112588272697344
  %42 = add nsw i64 %41, 140737488355328
  %43 = lshr i64 %42, 47
  %44 = trunc i64 %43 to i16
  %45 = and i16 %44, -2
  br label %46

46:                                               ; preds = %30, %36
  %47 = phi i16 [ %45, %36 ], [ -3276, %30 ]
  %48 = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %47, ptr %32, align 2, !tbaa !12
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %50 = load i16, ptr %33, align 2, !tbaa !12     ; 2 uses
  %51 = icmp slt i16 %50, -32752
  br i1 %51, label %62, label %52

52:                                               ; preds = %46
  %53 = shl i16 %50, 10
  %54 = add i16 %53, -16384
  %55 = tail call i16 @llvm.smin.i16(i16 %54, i16 27647)
  %narrow95 = add nsw i16 %55, 5120
  %56 = sext i16 %narrow95 to i64
  %57 = mul nsw i64 %56, 112588272697344
  %58 = add nsw i64 %57, 140737488355328
  %59 = lshr i64 %58, 47
  %60 = trunc i64 %59 to i16
  %61 = and i16 %60, -2
  br label %62

62:                                               ; preds = %46, %52
  %63 = phi i16 [ %61, %52 ], [ 4096, %46 ]
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %63, ptr %48, align 2, !tbaa !12
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %66 = load i16, ptr %49, align 2, !tbaa !12
  %.fr128 = freeze i16 %66                        ; 2 uses
  %67 = icmp slt i16 %.fr128, -32760
  br i1 %67, label %.thread101, label %68

68:                                               ; preds = %62
  %69 = shl i16 %.fr128, 10
  %70 = add i16 %69, -8192
  %71 = tail call i16 @llvm.smax.i16(i16 %70, i16 -32580)
  %narrow96 = add nsw i16 %71, -188
  %72 = sext i16 %narrow96 to i64
  %73 = mul nsw i64 %72, 165124312662016
  %74 = add nsw i64 %73, 140737488355328
  %75 = ashr i64 %74, 47                          ; 3 uses
  %76 = and i64 %75, 65534
  %77 = add nsw i64 %75, -32768
  %78 = icmp ult i64 %77, -65536
  %79 = icmp sgt i64 %75, 1
  %. = select i1 %79, i64 32767, i64 32768
  %spec.select = select i1 %78, i64 %., i64 %76
  %80 = trunc nuw i64 %spec.select to i16
  br label %.thread101

.thread101:                                       ; preds = %68, %62
  %81 = phi i16 [ %80, %68 ], [ -220, %62 ]
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %81, ptr %64, align 2, !tbaa !12
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %84 = load i16, ptr %65, align 2, !tbaa !12
  %.fr136 = freeze i16 %84                        ; 2 uses
  %85 = icmp slt i16 %.fr136, -32760
  br i1 %85, label %.thread108, label %86

86:                                               ; preds = %.thread101
  %87 = shl i16 %.fr136, 10
  %88 = add i16 %87, -8192
  %89 = tail call i16 @llvm.smin.i16(i16 %88, i16 29183)
  %narrow97 = add nsw i16 %89, 3584
  %90 = sext i16 %narrow97 to i64
  %91 = mul nsw i64 %90, 150117696929792
  %92 = add nsw i64 %91, 140737488355328
  %93 = ashr i64 %92, 47                          ; 2 uses
  %94 = icmp sgt i64 %93, 32767
  %95 = trunc i64 %93 to i16
  %96 = and i16 %95, -2
  %97 = select i1 %94, i16 32767, i16 %96
  br label %.thread108

.thread108:                                       ; preds = %86, %.thread101
  %98 = phi i16 [ %97, %86 ], [ 3822, %.thread101 ]
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %98, ptr %82, align 2, !tbaa !12
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %101 = load i16, ptr %83, align 2, !tbaa !12
  %.fr = freeze i16 %101                          ; 2 uses
  %102 = icmp slt i16 %.fr, -32764
  br i1 %102, label %.thread115, label %103

103:                                              ; preds = %.thread108
  %104 = shl i16 %.fr, 10
  %105 = add i16 %104, -3414
  %106 = sext i16 %105 to i64
  %107 = mul nsw i64 %106, 270187802656768
  %108 = add nsw i64 %107, 140737488355328
  %109 = ashr i64 %108, 47                        ; 3 uses
  %110 = and i64 %109, 65534
  %111 = add nsw i64 %109, -32768
  %112 = icmp ult i64 %111, -65536
  %113 = icmp sgt i64 %109, 1
  %.171 = select i1 %113, i64 32767, i64 32768
  %spec.select174 = select i1 %112, i64 %.171, i64 %110
  %114 = trunc nuw i64 %spec.select174 to i16
  br label %.thread115

.thread115:                                       ; preds = %103, %.thread108
  %115 = phi i16 [ %114, %103 ], [ 1310, %.thread108 ]
  store i16 %115, ptr %99, align 2, !tbaa !12
  %116 = load i16, ptr %100, align 2, !tbaa !12
  %.fr159 = freeze i16 %116                       ; 2 uses
  %117 = icmp slt i16 %.fr159, -32764
  br i1 %117, label %.thread122, label %bb.a

bb.a:                                             ; preds = %.thread115
  %i.a = shl i16 %.fr159, 10
  %118 = add i16 %i.a, -4096
  %i.b = tail call i16 @llvm.smin.i16(i16 %118, i16 30479)
  %narrow98 = add nsw i16 %i.b, 2288
  %i.c = sext i16 %narrow98 to i64
  %i.d = mul nsw i64 %i.c, 255189776859136
  %i.e = add nsw i64 %i.d, 140737488355328
  %i.f = ashr i64 %i.e, 47                        ; 3 uses
  %i.g = and i64 %i.f, 65534
  %i.h = add nsw i64 %i.f, -32768
  %i.i = icmp ult i64 %i.h, -65536
  %i.j = icmp sgt i64 %i.f, 1
  %i.k = select i1 %i.j, i64 32767, i64 32768
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.g
  %i.m = trunc nuw i64 %i.l to i16
  br label %.thread122

.thread122:                                       ; preds = %bb.a, %.thread115
  %119 = phi i16 [ %i.m, %bb.a ], [ 4148, %.thread115 ]
  %120 = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %119, ptr %120, align 2, !tbaa !12
  ret void
}

end_hunk_0
begin_hunk_1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ssub.sat.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
