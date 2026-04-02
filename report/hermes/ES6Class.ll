begin_hunk_0
@.str.9 = private unnamed_addr constant [12 x i8] c"__clsExpr__\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"__super__\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"defineClass\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Invalid ES6 class member\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"arguments\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"=\00", align 1
end_hunk_0
begin_hunk_1
bb.j:                                             ; preds = %.lr.ph.i
  %i.df = getelementptr i8, ptr %.sroa.03.013.i, i64 64
  %.val.i = load ptr, ptr %i.df, align 8, !tbaa !729 ; 2 uses
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !51 ; 8 uses
  %i.dg = getelementptr i8, ptr %.val.i, i64 8
  %.val.val8.i = load i64, ptr %i.dg, align 8, !tbaa !52
  switch i64 %.val.val8.i, label %_ZNK4llvh9StringRef6equalsES0_.exit13.thread.i.i [
end_hunk_1
begin_hunk_2
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.i.i:          ; preds = %bb.j
  %16 = load i64, ptr %.val.val.i, align 1
  %17 = xor i64 %16, 7166760226508402531
  %18 = getelementptr i8, ptr %.val.val.i, i64 3
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, 8245937413259687027
  %21 = or i64 %17, %20
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %i.dh = icmp eq i32 %23, 0
  br i1 %i.dh, label %_ZN12_GLOBAL__N_118getClassMemberKindEPN6hermes6ESTree20MethodDefinitionNodeE.exit.i, label %_ZNK4llvh9StringRef6equalsES0_.exit13.thread.i.i

_ZNK4llvh9StringRef6equalsES0_.exit11.i.i:        ; preds = %bb.j
  %24 = load i32, ptr %.val.val.i, align 1
  %25 = xor i32 %24, 1752458605
  %26 = getelementptr i8, ptr %.val.val.i, i64 4
  %27 = load i16, ptr %26, align 1
  %28 = zext i16 %27 to i32
  %29 = xor i32 %28, 25711
  %30 = or i32 %25, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %i.di = icmp eq i32 %32, 0
  br i1 %i.di, label %bb.k, label %_ZNK4llvh9StringRef6equalsES0_.exit13.thread.i.i

_ZNK4llvh9StringRef6equalsES0_.exit12.i.i:        ; preds = %bb.j
  %33 = load i16, ptr %.val.val.i, align 1
  %34 = xor i16 %33, 25959
  %35 = getelementptr i8, ptr %.val.val.i, i64 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i16
  %38 = xor i16 %37, 116
  %39 = or i16 %34, %38
  %40 = icmp ne i16 %39, 0
  %41 = zext i1 %40 to i32
  %i.dj = icmp eq i32 %41, 0
  br i1 %i.dj, label %bb.k, label %_ZNK4llvh9StringRef6equalsES0_.exit13.i.i

_ZNK4llvh9StringRef6equalsES0_.exit13.i.i:        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i
  %42 = load i16, ptr %.val.val.i, align 1
  %43 = xor i16 %42, 25971
  %44 = getelementptr i8, ptr %.val.val.i, i64 2
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i16
  %47 = xor i16 %46, 116
  %48 = or i16 %43, %47
  %49 = icmp ne i16 %48, 0
  %50 = zext i1 %49 to i32
  %i.dk = icmp eq i32 %50, 0
  br i1 %i.dk, label %bb.k, label %_ZNK4llvh9StringRef6equalsES0_.exit13.thread.i.i

_ZNK4llvh9StringRef6equalsES0_.exit13.thread.i.i: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit13.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit11.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i, %bb.j
end_hunk_2
