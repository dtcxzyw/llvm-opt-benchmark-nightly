begin_hunk_0
@.str.11 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"'new.target' not in a function\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"'import.meta' is currently unsupported\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"invalid meta property \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c".\00", align 1
end_hunk_0
begin_hunk_1
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206  ; 3 uses
  %.sroa.011.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !211 ; 4 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !228
  switch i64 %.sroa.212.0.copyload, label %_ZN4llvhplERKNS_5TwineES2_.exit49 [
end_hunk_1
begin_hunk_2
  ]

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.a
  %7 = load i16, ptr %.sroa.011.0.copyload, align 1
  %8 = xor i16 %7, 25966
  %9 = getelementptr i8, ptr %.sroa.011.0.copyload, i64 2
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i16
  %12 = xor i16 %11, 119
  %13 = or i16 %8, %12
  %14 = icmp ne i16 %13, 0
  %15 = zext i1 %14 to i32
  %i.g = icmp eq i32 %15, 0
  br i1 %i.g, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread63, label %_ZN4llvhplERKNS_5TwineES2_.exit49

_ZNK4llvh9StringRef6equalsES0_.exit.thread63:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
end_hunk_2
begin_hunk_3
  br i1 %i.j, label %_ZNK4llvh9StringRef6equalsES0_.exit24, label %_ZN4llvhplERKNS_5TwineES2_.exit49

_ZNK4llvh9StringRef6equalsES0_.exit24:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread63
  %.sroa.09.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !211 ; 2 uses
  %16 = load i32, ptr %.sroa.09.0.copyload, align 1
  %17 = xor i32 %16, 1735549300
  %18 = getelementptr i8, ptr %.sroa.09.0.copyload, i64 4
  %19 = load i16, ptr %18, align 1
  %20 = zext i16 %19 to i32
  %21 = xor i32 %20, 29797
  %22 = or i32 %17, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %i.k = icmp eq i32 %24, 0
  br i1 %i.k, label %_ZNK4llvh9StringRef6equalsES0_.exit24.thread65, label %_ZN4llvhplERKNS_5TwineES2_.exit49

_ZNK4llvh9StringRef6equalsES0_.exit24.thread65:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit24
end_hunk_3
begin_hunk_4
  br label %bb.d

_ZNK4llvh9StringRef6equalsES0_.exit25:            ; preds = %bb.a
  %25 = load i32, ptr %.sroa.011.0.copyload, align 1
  %26 = xor i32 %25, 1869639017
  %27 = getelementptr i8, ptr %.sroa.011.0.copyload, i64 4
  %28 = load i16, ptr %27, align 1
  %29 = zext i16 %28 to i32
  %30 = xor i32 %29, 29810
  %31 = or i32 %26, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %i.u = icmp eq i32 %33, 0
  br i1 %i.u, label %_ZNK4llvh9StringRef6equalsES0_.exit25.thread67, label %_ZN4llvhplERKNS_5TwineES2_.exit49

_ZNK4llvh9StringRef6equalsES0_.exit25.thread67:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit25
end_hunk_4
begin_hunk_5

_ZNK4llvh9StringRef6equalsES0_.exit26:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit25.thread67
  %.sroa.03.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !211
  %34 = load i32, ptr %.sroa.03.0.copyload, align 1
  %35 = icmp ne i32 %34, 1635018093
  %36 = zext i1 %35 to i32
  %i.y = icmp eq i32 %36, 0
  br i1 %i.y, label %_ZNK4llvh9StringRef6equalsES0_.exit26.thread69, label %_ZN4llvhplERKNS_5TwineES2_.exit49

_ZNK4llvh9StringRef6equalsES0_.exit26.thread69:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit26
end_hunk_5
