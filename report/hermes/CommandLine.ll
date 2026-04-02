begin_hunk_0
@.str.9 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c">...\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"=<\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"' is invalid value for boolean argument! Try 0 or 1\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"' value invalid for integer argument!\00", align 1
end_hunk_0
begin_hunk_1
  ]

_ZNK4llvh9StringRef6equalsES0_.exit21:            ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %4, ptr noundef nonnull dereferenceable(4) @.str.12, i64 4)
  %i.b = icmp eq i32 %bcmp, 0
  br i1 %i.b, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread79, label %_ZNK4llvh9StringRef6equalsES0_.exit22

_ZNK4llvh9StringRef6equalsES0_.exit22:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit21
  %bcmp97 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %4, ptr noundef nonnull dereferenceable(4) @.str.13, i64 4)
  %i.c = icmp eq i32 %bcmp97, 0
  br i1 %i.c, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread79, label %_ZNK4llvh9StringRef6equalsES0_.exit23

_ZNK4llvh9StringRef6equalsES0_.exit23:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit22
  %bcmp98 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %4, ptr noundef nonnull dereferenceable(4) @.str.14, i64 4)
  %i.d = icmp eq i32 %bcmp98, 0
  br i1 %i.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread79, label %_ZNK4llvh9StringRef6equalsES0_.exit28.thread

_ZNK4llvh9StringRef6equalsES0_.exit24:            ; preds = %bb.a
end_hunk_1
begin_hunk_2
  br label %bb.b

_ZNK4llvh9StringRef6equalsES0_.exit25:            ; preds = %bb.a
  %bcmp99 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %4, ptr noundef nonnull dereferenceable(5) @.str.16, i64 5)
  %i.f = icmp eq i32 %bcmp99, 0
  br i1 %i.f, label %_ZNK4llvh9StringRef6equalsES0_.exit25.thread89, label %_ZNK4llvh9StringRef6equalsES0_.exit26

_ZNK4llvh9StringRef6equalsES0_.exit26:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit25
  %bcmp100 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %4, ptr noundef nonnull dereferenceable(5) @.str.17, i64 5)
  %i.g = icmp eq i32 %bcmp100, 0
  br i1 %i.g, label %_ZNK4llvh9StringRef6equalsES0_.exit25.thread89, label %_ZNK4llvh9StringRef6equalsES0_.exit27

_ZNK4llvh9StringRef6equalsES0_.exit27:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit26
  %bcmp101 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %4, ptr noundef nonnull dereferenceable(5) @.str.18, i64 5)
  %i.h = icmp eq i32 %bcmp101, 0
  br i1 %i.h, label %_ZNK4llvh9StringRef6equalsES0_.exit25.thread89, label %_ZNK4llvh9StringRef6equalsES0_.exit28.thread

_ZNK4llvh9StringRef6equalsES0_.exit28:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit24
end_hunk_2
begin_hunk_3
  ]

_ZNK4llvh9StringRef6equalsES0_.exit21:            ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %4, ptr noundef nonnull dereferenceable(4) @.str.12, i64 4)
  %i.b = icmp eq i32 %bcmp, 0
  br i1 %i.b, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread79, label %_ZNK4llvh9StringRef6equalsES0_.exit22

_ZNK4llvh9StringRef6equalsES0_.exit22:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit21
  %bcmp97 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %4, ptr noundef nonnull dereferenceable(4) @.str.13, i64 4)
  %i.c = icmp eq i32 %bcmp97, 0
  br i1 %i.c, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread79, label %_ZNK4llvh9StringRef6equalsES0_.exit23

_ZNK4llvh9StringRef6equalsES0_.exit23:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit22
  %bcmp98 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %4, ptr noundef nonnull dereferenceable(4) @.str.14, i64 4)
  %i.d = icmp eq i32 %bcmp98, 0
  br i1 %i.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread79, label %_ZNK4llvh9StringRef6equalsES0_.exit28.thread

_ZNK4llvh9StringRef6equalsES0_.exit24:            ; preds = %bb.a
end_hunk_3
begin_hunk_4
  br label %bb.b

_ZNK4llvh9StringRef6equalsES0_.exit25:            ; preds = %bb.a
  %bcmp99 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %4, ptr noundef nonnull dereferenceable(5) @.str.16, i64 5)
  %i.f = icmp eq i32 %bcmp99, 0
  br i1 %i.f, label %_ZNK4llvh9StringRef6equalsES0_.exit25.thread89, label %_ZNK4llvh9StringRef6equalsES0_.exit26

_ZNK4llvh9StringRef6equalsES0_.exit26:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit25
  %bcmp100 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %4, ptr noundef nonnull dereferenceable(5) @.str.17, i64 5)
  %i.g = icmp eq i32 %bcmp100, 0
  br i1 %i.g, label %_ZNK4llvh9StringRef6equalsES0_.exit25.thread89, label %_ZNK4llvh9StringRef6equalsES0_.exit27

_ZNK4llvh9StringRef6equalsES0_.exit27:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit26
  %bcmp101 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %4, ptr noundef nonnull dereferenceable(5) @.str.18, i64 5)
  %i.h = icmp eq i32 %bcmp101, 0
  br i1 %i.h, label %_ZNK4llvh9StringRef6equalsES0_.exit25.thread89, label %_ZNK4llvh9StringRef6equalsES0_.exit28.thread

_ZNK4llvh9StringRef6equalsES0_.exit28:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit24
end_hunk_4
