begin_hunk_0
inline.NumInlined: 294
inline.NumDeleted: 158
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %8 = alloca i16, align 2                        ; 8 uses
  %9 = alloca i16, align 2                        ; 6 uses
  %10 = alloca i16, align 2                       ; 8 uses
  %11 = alloca i32, align 4                       ; 32 uses
  %12 = alloca %struct.FT_StreamRec_, align 8     ; 5 uses
  %13 = alloca %struct.FT_Data_, align 8          ; 6 uses
  %14 = alloca [4 x %struct.FT_Vector_], align 16 ; 7 uses
end_hunk_1
begin_hunk_2
  %17 = alloca %struct.FT_Outline_, align 8       ; 9 uses
  %18 = alloca [4 x %struct.FT_Vector_], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %19 = load ptr, ptr %0, align 8, !tbaa !164     ; 22 uses
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %21 = load ptr, ptr %20, align 8, !tbaa !242    ; 12 uses
end_hunk_2
