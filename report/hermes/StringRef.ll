begin_hunk_0
$_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = comdat any

@_ZN4llvh9StringRef4nposE = hidden local_unnamed_addr constant i64 -1, align 8
@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0X\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0b\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"0B\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"0o\00", align 1
@_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden local_unnamed_addr global i64 0, comdat, align 8
@_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden global i64 0, comdat, align 8
@_ZN4llvh7hashing6detail19fixed_seed_overrideE = external local_unnamed_addr global i64, align 8
end_hunk_0
begin_hunk_1

_ZNK4llvh9StringRef10startswithES0_.exit53:       ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 10 uses
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.c, ptr noundef nonnull dereferenceable(2) @.str, i64 2)
  %i.d = icmp eq i32 %bcmp, 0
  br i1 %i.d, label %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112, label %_ZNK4llvh9StringRef10startswithES0_.exit49

_ZNK4llvh9StringRef10startswithES0_.exit49:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit53
  %bcmp122 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.c, ptr noundef nonnull dereferenceable(2) @.str.1, i64 2)
  %i.e = icmp eq i32 %bcmp122, 0
  br i1 %i.e, label %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112, label %_ZNK4llvh9StringRef10startswithES0_.exit45

_ZNK4llvh9StringRef10startswithES0_.exit53.thread112: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit49, %_ZNK4llvh9StringRef10startswithES0_.exit53
end_hunk_1
begin_hunk_2
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split

_ZNK4llvh9StringRef10startswithES0_.exit45:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit49
  %bcmp123 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.c, ptr noundef nonnull dereferenceable(2) @.str.2, i64 2)
  %i.g = icmp eq i32 %bcmp123, 0
  br i1 %i.g, label %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116, label %_ZNK4llvh9StringRef10startswithES0_.exit41

_ZNK4llvh9StringRef10startswithES0_.exit41:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit45
  %bcmp124 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.c, ptr noundef nonnull dereferenceable(2) @.str.3, i64 2)
  %i.h = icmp eq i32 %bcmp124, 0
  br i1 %i.h, label %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit45.thread116: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit41, %_ZNK4llvh9StringRef10startswithES0_.exit45
end_hunk_2
begin_hunk_3
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit41
  %bcmp125 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.c, ptr noundef nonnull dereferenceable(2) @.str.4, i64 2)
  %i.j = icmp eq i32 %bcmp125, 0
  br i1 %i.j, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread120, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread120: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
end_hunk_3
