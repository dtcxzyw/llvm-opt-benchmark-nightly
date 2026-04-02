begin_hunk_0
@.str.9 = private unnamed_addr constant [12 x i8] c"__clsExpr__\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"__super__\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"defineClass\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"constructor\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Invalid ES6 class member\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"arguments\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"=\00", align 1
end_hunk_0
begin_hunk_1
bb.j:                                             ; preds = %.lr.ph.i
  %i.df = getelementptr i8, ptr %.sroa.03.013.i, i64 64
  %.val.i = load ptr, ptr %i.df, align 8, !tbaa !729 ; 2 uses
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !51 ; 4 uses
  %i.dg = getelementptr i8, ptr %.val.i, i64 8
  %.val.val8.i = load i64, ptr %i.dg, align 8, !tbaa !52
  switch i64 %.val.val8.i, label %_ZNK4llvh9StringRef6equalsES0_.exit13.thread.i.i [
end_hunk_1
begin_hunk_2
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.i.i:          ; preds = %bb.j
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(11) %.val.val.i, ptr noundef nonnull dereferenceable(11) @.str.12, i64 11)
  %i.dh = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.dh, label %_ZN12_GLOBAL__N_118getClassMemberKindEPN6hermes6ESTree20MethodDefinitionNodeE.exit.i, label %_ZNK4llvh9StringRef6equalsES0_.exit13.thread.i.i

_ZNK4llvh9StringRef6equalsES0_.exit11.i.i:        ; preds = %bb.j
  %bcmp22.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(6) %.val.val.i, ptr noundef nonnull dereferenceable(6) @.str.13, i64 6)
  %i.di = icmp eq i32 %bcmp22.i.i, 0
  br i1 %i.di, label %bb.k, label %_ZNK4llvh9StringRef6equalsES0_.exit13.thread.i.i

_ZNK4llvh9StringRef6equalsES0_.exit12.i.i:        ; preds = %bb.j
  %bcmp23.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(3) %.val.val.i, ptr noundef nonnull dereferenceable(3) @.str.8, i64 3)
  %i.dj = icmp eq i32 %bcmp23.i.i, 0
  br i1 %i.dj, label %bb.k, label %_ZNK4llvh9StringRef6equalsES0_.exit13.i.i

_ZNK4llvh9StringRef6equalsES0_.exit13.i.i:        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit12.i.i
  %bcmp24.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(3) %.val.val.i, ptr noundef nonnull dereferenceable(3) @.str.14, i64 3)
  %i.dk = icmp eq i32 %bcmp24.i.i, 0
  br i1 %i.dk, label %bb.k, label %_ZNK4llvh9StringRef6equalsES0_.exit13.thread.i.i

_ZNK4llvh9StringRef6equalsES0_.exit13.thread.i.i: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit13.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit11.i.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i, %bb.j
end_hunk_2
