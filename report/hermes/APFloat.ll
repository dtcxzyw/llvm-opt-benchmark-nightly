begin_hunk_0
@_ZN4llvhL8semBogusE = internal constant %"struct.llvh::fltSemantics" zeroinitializer, align 4
@_ZN4llvhL18semPPCDoubleDoubleE = internal constant %"struct.llvh::fltSemantics" { i16 -1, i16 0, i32 0, i32 0 }, align 4
@__const._ZN4llvh6detail9IEEEFloat28roundSignificandWithExponentEPKmjiNS_11APFloatBase12roundingModeE.calcSemantics = private unnamed_addr constant %"struct.llvh::fltSemantics" { i16 32767, i16 -32767, i32 0, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@_ZN4llvhL4NaNUE = internal unnamed_addr constant [4 x i8] c"NAN\00", align 1
@_ZN4llvhL4NaNLE = internal unnamed_addr constant [4 x i8] c"nan\00", align 1
@_ZN4llvhL14hexDigitsUpperE = internal unnamed_addr constant [18 x i8] c"0123456789ABCDEF0\00", align 16
end_hunk_0
begin_hunk_1
  ]

_ZNK4llvh9StringRef6equalsES0_.exit10:            ; preds = %bb.a
  %3 = load i16, ptr %1, align 1
  %4 = xor i16 %3, 28265
  %5 = getelementptr i8, ptr %1, i64 2
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i16
  %8 = xor i16 %7, 102
  %9 = or i16 %4, %8
  %10 = icmp ne i16 %9, 0
  %11 = zext i1 %10 to i32
  %i.a = icmp eq i32 %11, 0
  br i1 %i.a, label %_ZNK4llvh9StringRef6equalsES0_.exit10.thread67, label %_ZNK4llvh9StringRef6equalsES0_.exit4

_ZNK4llvh9StringRef6equalsES0_.exit9:             ; preds = %bb.a
  %12 = load i64, ptr %1, align 1
  %13 = icmp ne i64 %12, 6436850368004902473
  %14 = zext i1 %13 to i32
  %i.b = icmp eq i32 %14, 0
  br i1 %i.b, label %_ZNK4llvh9StringRef6equalsES0_.exit10.thread67, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit8:             ; preds = %bb.a
  %15 = load i32, ptr %1, align 1
  %16 = icmp ne i32 %15, 1718503723
  %17 = zext i1 %16 to i32
  %i.c = icmp eq i32 %17, 0
  br i1 %i.c, label %_ZNK4llvh9StringRef6equalsES0_.exit10.thread67, label %_ZNK4llvh9StringRef6equalsES0_.exit7

_ZNK4llvh9StringRef6equalsES0_.exit10.thread67:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit8, %_ZNK4llvh9StringRef6equalsES0_.exit9, %_ZNK4llvh9StringRef6equalsES0_.exit10
end_hunk_1
begin_hunk_2
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit7:             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit8
  %18 = load i32, ptr %1, align 1
  %19 = icmp ne i32 %18, 1718511917
  %20 = zext i1 %19 to i32
  %i.s = icmp eq i32 %20, 0
  br i1 %i.s, label %_ZNK4llvh9StringRef6equalsES0_.exit7.thread73, label %_ZNK4llvh9StringRef6equalsES0_.exit5

_ZNK4llvh9StringRef6equalsES0_.exit6:             ; preds = %bb.a
  %21 = load i64, ptr %1, align 1
  %22 = xor i64 %21, 6073471649104939309
  %23 = getelementptr i8, ptr %1, i64 8
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i64
  %26 = xor i64 %25, 89
  %27 = or i64 %22, %26
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  %i.t = icmp eq i32 %29, 0
  br i1 %i.t, label %_ZNK4llvh9StringRef6equalsES0_.exit7.thread73, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit5:             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit7
  %30 = load i32, ptr %1, align 1
  %31 = icmp ne i32 %30, 1718503725
  %32 = zext i1 %31 to i32
  %i.u = icmp eq i32 %32, 0
  br i1 %i.u, label %_ZNK4llvh9StringRef6equalsES0_.exit7.thread73, label %_ZNK4llvh9StringRef6equalsES0_.exit2

_ZNK4llvh9StringRef6equalsES0_.exit7.thread73:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit5, %_ZNK4llvh9StringRef6equalsES0_.exit6, %_ZNK4llvh9StringRef6equalsES0_.exit7
end_hunk_2
begin_hunk_3
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit4:             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit10
  %33 = load i16, ptr %1, align 1
  %34 = xor i16 %33, 24942
  %35 = getelementptr i8, ptr %1, i64 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i16
  %38 = xor i16 %37, 110
  %39 = or i16 %34, %38
  %40 = icmp ne i16 %39, 0
  %41 = zext i1 %40 to i32
  %i.al = icmp eq i32 %41, 0
  br i1 %i.al, label %_ZNK4llvh9StringRef6equalsES0_.exit4.thread79, label %_ZNK4llvh9StringRef6equalsES0_.exit3

_ZNK4llvh9StringRef6equalsES0_.exit3:             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit4
  %42 = load i16, ptr %1, align 1
  %43 = xor i16 %42, 24910
  %44 = getelementptr i8, ptr %1, i64 2
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i16
  %47 = xor i16 %46, 78
  %48 = or i16 %43, %47
  %49 = icmp ne i16 %48, 0
  %50 = zext i1 %49 to i32
  %i.am = icmp eq i32 %50, 0
  br i1 %i.am, label %_ZNK4llvh9StringRef6equalsES0_.exit4.thread79, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit4.thread79:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit3, %_ZNK4llvh9StringRef6equalsES0_.exit4
end_hunk_3
begin_hunk_4
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit2:             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit5
  %51 = load i32, ptr %1, align 1
  %52 = icmp ne i32 %51, 1851878957
  %53 = zext i1 %52 to i32
  %i.an = icmp eq i32 %53, 0
  br i1 %i.an, label %_ZNK4llvh9StringRef6equalsES0_.exit2.thread83, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2
  %54 = load i32, ptr %1, align 1
  %55 = icmp ne i32 %54, 1314999853
  %56 = zext i1 %55 to i32
  %i.ao = icmp eq i32 %56, 0
  br i1 %i.ao, label %_ZNK4llvh9StringRef6equalsES0_.exit2.thread83, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit2.thread83:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit2
end_hunk_4
