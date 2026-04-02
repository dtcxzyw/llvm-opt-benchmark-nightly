begin_hunk_0
@.str.16 = private unnamed_addr constant [21 x i8] c"PrefetchedJSResource\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"prefetchImport\00", align 1
@_ZN6hermes12_GLOBAL__N_116RESOURCE_CALLEESE = internal unnamed_addr constant [6 x { { ptr, i64 }, i32 }] [{ { ptr, i64 }, i32 } { { ptr, i64 } { ptr @.str.12, i64 12 }, i32 4 }, { { ptr, i64 }, i32 } { { ptr, i64 } { ptr @.str.13, i64 30 }, i32 4 }, { { ptr, i64 }, i32 } { { ptr, i64 } { ptr @.str.14, i64 10 }, i32 4 }, { { ptr, i64 }, i32 } { { ptr, i64 } { ptr @.str.15, i64 28 }, i32 4 }, { { ptr, i64 }, i32 } { { ptr, i64 } { ptr @.str.16, i64 20 }, i32 5 }, { { ptr, i64 }, i32 } { { ptr, i64 } { ptr @.str.17, i64 14 }, i32 4 }], align 16
@.str.22 = private unnamed_addr constant [9 x i8] c".graphql\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"dependency call needs a string literal argument\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"react/jsx-runtime\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"react/jsx-dev-runtime\00", align 1

end_hunk_0
begin_hunk_1
  br i1 %.not.i, label %_ZN4llvh9StringRef13consume_frontES0_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %bb.a
  %8 = load i16, ptr %1, align 1
  %9 = icmp ne i16 %8, 9069
  %10 = zext i1 %9 to i32
  %i.c = icmp eq i32 %10, 0
  br i1 %i.c, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread20, label %_ZN4llvh9StringRef13consume_frontES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit.thread20: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
end_hunk_1
begin_hunk_2
  br i1 %.not.i.i11, label %_ZN4llvh9StringRef13consume_frontES0_.exit.i, label %_ZNK4llvh9StringRef10startswithES0_.exit.i

_ZNK4llvh9StringRef10startswithES0_.exit.i:       ; preds = %bb.h
  %7 = load i16, ptr %i.as, align 1
  %8 = icmp ne i16 %7, 9069
  %9 = zext i1 %8 to i32
  %i.au = icmp eq i32 %9, 0
  br i1 %i.au, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread20.i, label %_ZN4llvh9StringRef13consume_frontES0_.exit.i

_ZNK4llvh9StringRef10startswithES0_.exit.thread20.i: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i
end_hunk_2
begin_hunk_3
  br i1 %i.e, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %.thread42

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.a
  %.sroa.09.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !144 ; 2 uses
  %2 = load i32, ptr %.sroa.09.0.copyload, align 1
  %3 = xor i32 %2, 1970037110
  %4 = getelementptr i8, ptr %.sroa.09.0.copyload, i64 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = xor i32 %6, 101
  %8 = or i32 %3, %7
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %bcmp.fr = freeze i32 %10
  %i.f = icmp eq i32 %bcmp.fr, 0                  ; 2 uses
  %not. = xor i1 %i.f, true
  br label %.thread42
end_hunk_3
begin_hunk_4
  br i1 %i.p, label %_ZNK4llvh9StringRef6equalsES0_.exit24, label %.thread53

_ZNK4llvh9StringRef6equalsES0_.exit24:            ; preds = %bb.b
  %.sroa.03.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !144 ; 2 uses
  %11 = load i32, ptr %.sroa.03.0.copyload, align 1
  %12 = xor i32 %11, 1970037110
  %13 = getelementptr i8, ptr %.sroa.03.0.copyload, i64 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = xor i32 %15, 101
  %17 = or i32 %12, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  %bcmp59.fr = freeze i32 %19
  %i.q = icmp eq i32 %bcmp59.fr, 0                ; 2 uses
  %not.69 = xor i1 %i.q, true
  %spec.select61 = select i1 %not.69, i1 true, i1 %.12065
end_hunk_4
begin_hunk_5
  br i1 %i.e, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit:   ; preds = %bb.b
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !144 ; 2 uses
  %2 = load i32, ptr %.sroa.01.0.copyload, align 1
  %3 = xor i32 %2, 1970037110
  %4 = getelementptr i8, ptr %.sroa.01.0.copyload, i64 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = xor i32 %6, 101
  %8 = or i32 %3, %7
  %i.f = icmp ne i32 %8, 0                        ; 2 uses
  %9 = zext i1 %i.f to i32                        ; 0 uses
  %i.g = zext i1 %i.f to i32
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

end_hunk_5
begin_hunk_6
  br i1 %i.e, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit:   ; preds = %bb.a
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !144 ; 2 uses
  %2 = load i32, ptr %.sroa.01.0.copyload, align 1
  %3 = xor i32 %2, 1970037110
  %4 = getelementptr i8, ptr %.sroa.01.0.copyload, i64 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = xor i32 %6, 101
  %8 = or i32 %3, %7
  %i.f = icmp ne i32 %8, 0                        ; 2 uses
  %9 = zext i1 %i.f to i32                        ; 0 uses
  %i.g = zext i1 %i.f to i32
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

end_hunk_6
