begin_hunk_0
@.str.16 = private unnamed_addr constant [21 x i8] c"PrefetchedJSResource\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"prefetchImport\00", align 1
@_ZN6hermes12_GLOBAL__N_116RESOURCE_CALLEESE = internal unnamed_addr constant [6 x { { ptr, i64 }, i32 }] [{ { ptr, i64 }, i32 } { { ptr, i64 } { ptr @.str.12, i64 12 }, i32 4 }, { { ptr, i64 }, i32 } { { ptr, i64 } { ptr @.str.13, i64 30 }, i32 4 }, { { ptr, i64 }, i32 } { { ptr, i64 } { ptr @.str.14, i64 10 }, i32 4 }, { { ptr, i64 }, i32 } { { ptr, i64 } { ptr @.str.15, i64 28 }, i32 4 }, { { ptr, i64 }, i32 } { { ptr, i64 } { ptr @.str.16, i64 20 }, i32 5 }, { { ptr, i64 }, i32 } { { ptr, i64 } { ptr @.str.17, i64 14 }, i32 4 }], align 16
@.str.21 = private unnamed_addr constant [3 x i8] c"m#\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c".graphql\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"dependency call needs a string literal argument\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"react/jsx-runtime\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"react/jsx-dev-runtime\00", align 1

end_hunk_0
begin_hunk_1
  br i1 %.not.i, label %_ZN4llvh9StringRef13consume_frontES0_.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %1, ptr noundef nonnull dereferenceable(2) @.str.21, i64 2)
  %i.c = icmp eq i32 %bcmp, 0
  br i1 %i.c, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread20, label %_ZN4llvh9StringRef13consume_frontES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit.thread20: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
end_hunk_1
begin_hunk_2
  br i1 %.not.i.i11, label %_ZN4llvh9StringRef13consume_frontES0_.exit.i, label %_ZNK4llvh9StringRef10startswithES0_.exit.i

_ZNK4llvh9StringRef10startswithES0_.exit.i:       ; preds = %bb.h
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.as, ptr noundef nonnull dereferenceable(2) @.str.21, i64 2)
  %i.au = icmp eq i32 %bcmp.i, 0
  br i1 %i.au, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread20.i, label %_ZN4llvh9StringRef13consume_frontES0_.exit.i

_ZNK4llvh9StringRef10startswithES0_.exit.thread20.i: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i
end_hunk_2
begin_hunk_3
  br i1 %i.e, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %.thread42

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.a
  %.sroa.09.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !144
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %.sroa.09.0.copyload, ptr noundef nonnull dereferenceable(5) @.str.25, i64 5)
  %bcmp.fr = freeze i32 %bcmp
  %i.f = icmp eq i32 %bcmp.fr, 0                  ; 2 uses
  %not. = xor i1 %i.f, true
  br label %.thread42
end_hunk_3
begin_hunk_4
  br i1 %i.p, label %_ZNK4llvh9StringRef6equalsES0_.exit24, label %.thread53

_ZNK4llvh9StringRef6equalsES0_.exit24:            ; preds = %bb.b
  %.sroa.03.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !144
  %bcmp59 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %.sroa.03.0.copyload, ptr noundef nonnull dereferenceable(5) @.str.25, i64 5)
  %bcmp59.fr = freeze i32 %bcmp59
  %i.q = icmp eq i32 %bcmp59.fr, 0                ; 2 uses
  %not.69 = xor i1 %i.q, true
  %spec.select61 = select i1 %not.69, i1 true, i1 %.12065
end_hunk_4
begin_hunk_5
  br i1 %i.e, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit:   ; preds = %bb.b
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !144
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %.sroa.01.0.copyload, ptr noundef nonnull dereferenceable(5) @.str.25, i64 5)
  %i.f = icmp ne i32 %bcmp, 0
  %i.g = zext i1 %i.f to i32
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

end_hunk_5
begin_hunk_6
  br i1 %i.e, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit:   ; preds = %bb.a
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !144
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %.sroa.01.0.copyload, ptr noundef nonnull dereferenceable(5) @.str.25, i64 5)
  %i.f = icmp ne i32 %bcmp, 0
  %i.g = zext i1 %i.f to i32
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

end_hunk_6
