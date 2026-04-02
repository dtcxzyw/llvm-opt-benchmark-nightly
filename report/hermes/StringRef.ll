begin_hunk_0
$_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = comdat any

@_ZN4llvh9StringRef4nposE = hidden local_unnamed_addr constant i64 -1, align 8
@_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden local_unnamed_addr global i64 0, comdat, align 8
@_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden global i64 0, comdat, align 8
@_ZN4llvh7hashing6detail19fixed_seed_overrideE = external local_unnamed_addr global i64, align 8
end_hunk_0
begin_hunk_1

_ZNK4llvh9StringRef10startswithES0_.exit53:       ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 10 uses
  %1 = load i16, ptr %i.c, align 1
  %2 = icmp ne i16 %1, 30768
  %3 = zext i1 %2 to i32
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112, label %_ZNK4llvh9StringRef10startswithES0_.exit49

_ZNK4llvh9StringRef10startswithES0_.exit49:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit53
  %4 = load i16, ptr %i.c, align 1
  %5 = icmp ne i16 %4, 22576
  %6 = zext i1 %5 to i32
  %i.e = icmp eq i32 %6, 0
  br i1 %i.e, label %_ZNK4llvh9StringRef10startswithES0_.exit53.thread112, label %_ZNK4llvh9StringRef10startswithES0_.exit45

_ZNK4llvh9StringRef10startswithES0_.exit53.thread112: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit49, %_ZNK4llvh9StringRef10startswithES0_.exit53
end_hunk_1
begin_hunk_2
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split

_ZNK4llvh9StringRef10startswithES0_.exit45:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit49
  %7 = load i16, ptr %i.c, align 1
  %8 = icmp ne i16 %7, 25136
  %9 = zext i1 %8 to i32
  %i.g = icmp eq i32 %9, 0
  br i1 %i.g, label %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116, label %_ZNK4llvh9StringRef10startswithES0_.exit41

_ZNK4llvh9StringRef10startswithES0_.exit41:       ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit45
  %10 = load i16, ptr %i.c, align 1
  %11 = icmp ne i16 %10, 16944
  %12 = zext i1 %11 to i32
  %i.h = icmp eq i32 %12, 0
  br i1 %i.h, label %_ZNK4llvh9StringRef10startswithES0_.exit45.thread116, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit45.thread116: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit41, %_ZNK4llvh9StringRef10startswithES0_.exit45
end_hunk_2
begin_hunk_3
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.thread.sink.split

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit41
  %13 = load i16, ptr %i.c, align 1
  %14 = icmp ne i16 %13, 28464
  %15 = zext i1 %14 to i32
  %i.j = icmp eq i32 %15, 0
  br i1 %i.j, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread120, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread120: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
end_hunk_3
