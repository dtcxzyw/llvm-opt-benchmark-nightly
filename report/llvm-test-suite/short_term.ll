begin_hunk_0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @Decoding_of_the_coded_Log_Area_Ratios(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 16)) %1) unnamed_addr #2 {
bb.a:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %3 = load i16, ptr %0, align 2, !tbaa !12
  %4 = tail call i16 @llvm.sadd.sat.i16(i16 %3, i16 -32)
  %5 = shl i16 %4, 10
  %6 = sext i16 %5 to i64
  %7 = mul nsw i64 %6, 112588272697344
  %8 = add nsw i64 %7, 140737488355328
  %9 = lshr i64 %8, 47
  %10 = trunc i64 %9 to i16
  %11 = and i16 %10, -2
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %11, ptr %1, align 2, !tbaa !12
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %14 = load i16, ptr %2, align 2, !tbaa !12
  %15 = tail call i16 @llvm.sadd.sat.i16(i16 %14, i16 -32)
  %16 = shl i16 %15, 10
  %17 = sext i16 %16 to i64
  %18 = mul nsw i64 %17, 112588272697344
  %19 = add nsw i64 %18, 140737488355328
  %20 = lshr i64 %19, 47
  %21 = trunc i64 %20 to i16
  %22 = and i16 %21, -2
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %22, ptr %12, align 2, !tbaa !12
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %25 = load i16, ptr %13, align 2, !tbaa !12
  %26 = tail call i16 @llvm.sadd.sat.i16(i16 %25, i16 -16)
  %27 = shl i16 %26, 10
  %28 = tail call i16 @llvm.sadd.sat.i16(i16 %27, i16 -4096)
  %29 = sext i16 %28 to i64
  %30 = mul nsw i64 %29, 112588272697344
  %31 = add nsw i64 %30, 140737488355328
  %32 = lshr i64 %31, 47
  %33 = trunc i64 %32 to i16
  %34 = and i16 %33, -2
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %34, ptr %23, align 2, !tbaa !12
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %37 = load i16, ptr %24, align 2, !tbaa !12
  %38 = tail call i16 @llvm.sadd.sat.i16(i16 %37, i16 -16)
  %39 = shl i16 %38, 10
  %40 = tail call i16 @llvm.sadd.sat.i16(i16 %39, i16 5120)
  %41 = sext i16 %40 to i64
  %42 = mul nsw i64 %41, 112588272697344
  %43 = add nsw i64 %42, 140737488355328
  %44 = lshr i64 %43, 47
  %45 = trunc i64 %44 to i16
  %46 = and i16 %45, -2
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %46, ptr %35, align 2, !tbaa !12
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %49 = load i16, ptr %36, align 2, !tbaa !12
  %50 = tail call i16 @llvm.sadd.sat.i16(i16 %49, i16 -8)
  %51 = shl i16 %50, 10
  %52 = tail call i16 @llvm.sadd.sat.i16(i16 %51, i16 -188)
  %53 = sext i16 %52 to i64
  %54 = mul nsw i64 %53, 165124312662016
  %55 = add nsw i64 %54, 140737488355328
  %56 = ashr i64 %55, 47                          ; 3 uses
  %57 = add nsw i64 %56, -32768
  %58 = icmp ult i64 %57, -65536
  %59 = icmp sgt i64 %56, 1
  %60 = select i1 %59, i64 32767, i64 32768
  %61 = and i64 %56, 65534
  %62 = select i1 %58, i64 %60, i64 %61
  %63 = trunc nuw i64 %62 to i16
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %63, ptr %47, align 2, !tbaa !12
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %66 = load i16, ptr %48, align 2, !tbaa !12
  %67 = tail call i16 @llvm.sadd.sat.i16(i16 %66, i16 -8)
  %i.a = shl i16 %67, 10
  %68 = tail call i16 @llvm.sadd.sat.i16(i16 %i.a, i16 3584)
  %69 = sext i16 %68 to i64
  %70 = mul nsw i64 %69, 150117696929792
  %71 = add nsw i64 %70, 140737488355328
  %72 = ashr i64 %71, 47                          ; 3 uses
  %73 = add nsw i64 %72, -32768
  %74 = icmp ult i64 %73, -65536
  %75 = icmp sgt i64 %72, 1
  %76 = select i1 %75, i64 32767, i64 32768
  %77 = and i64 %72, 65534
  %78 = select i1 %74, i64 %76, i64 %77
  %79 = trunc nuw i64 %78 to i16
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %79, ptr %64, align 2, !tbaa !12
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %82 = load i16, ptr %65, align 2, !tbaa !12
  %i.b = tail call i16 @llvm.sadd.sat.i16(i16 %82, i16 -4)
  %83 = shl i16 %i.b, 10
  %84 = or disjoint i16 %83, 682
  %i.c = sext i16 %84 to i64
  %i.d = mul nsw i64 %i.c, 270187802656768
  %i.e = add nsw i64 %i.d, 140737488355328
  %i.f = ashr i64 %i.e, 47                        ; 3 uses
  %85 = add nsw i64 %i.f, -32768
  %86 = icmp ult i64 %85, -65536
  %87 = icmp sgt i64 %i.f, 1
  %88 = select i1 %87, i64 32767, i64 32768
  %i.g = and i64 %i.f, 65534
  %89 = select i1 %86, i64 %88, i64 %i.g
  %90 = trunc nuw i64 %89 to i16
  store i16 %90, ptr %80, align 2, !tbaa !12
  %91 = load i16, ptr %81, align 2, !tbaa !12
  %92 = tail call i16 @llvm.sadd.sat.i16(i16 %91, i16 -4)
  %93 = shl i16 %92, 10
  %94 = tail call i16 @llvm.sadd.sat.i16(i16 %93, i16 2288)
  %95 = sext i16 %94 to i64
  %96 = mul nsw i64 %95, 255189776859136
  %97 = add nsw i64 %96, 140737488355328
  %98 = ashr i64 %97, 47                          ; 3 uses
  %i.h = add nsw i64 %98, -32768
  %i.i = icmp ult i64 %i.h, -65536
  %i.j = icmp sgt i64 %98, 1
  %i.k = select i1 %i.j, i64 32767, i64 32768
  %99 = and i64 %98, 65534
  %i.l = select i1 %i.i, i64 %i.k, i64 %99
  %100 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.m = trunc nuw i64 %i.l to i16
  store i16 %i.m, ptr %100, align 2, !tbaa !12
  ret void
}

end_hunk_0
begin_hunk_1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ssub.sat.i16(i16, i16) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
