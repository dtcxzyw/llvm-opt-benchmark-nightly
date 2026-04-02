begin_hunk_0
@.str.236 = private unnamed_addr constant [51 x i8] c"getter method must no one formal arguments, found \00", align 1
@.str.237 = private unnamed_addr constant [60 x i8] c"setter method must have exactly one formal argument, found \00", align 1
@.str.238 = private unnamed_addr constant [45 x i8] c"accessor method may not have type parameters\00", align 1
@.str.240 = private unnamed_addr constant [36 x i8] c"prototype method must not be static\00", align 1
@.str.241 = private unnamed_addr constant [50 x i8] c"constructor method must not be a getter or setter\00", align 1
@.str.242 = private unnamed_addr constant [26 x i8] c"Unexpected variance sigil\00", align 1
end_hunk_0
begin_hunk_1
  br i1 %i.jx, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit216, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit216: ; preds = %bb.ac
  %.sroa.073.0.copyload = load ptr, ptr %.1193, align 8, !tbaa !228 ; 2 uses
  %23 = load i64, ptr %.sroa.073.0.copyload, align 1
  %24 = xor i64 %23, 7166760226508402531
  %25 = getelementptr i8, ptr %.sroa.073.0.copyload, i64 3
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, 8245937413259687027
  %28 = or i64 %24, %27
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  %i.jy = icmp eq i32 %30, 0
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.aa, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit216, %bb.ac, %bb.ab
end_hunk_1
begin_hunk_2
  br i1 %i.wo, label %_ZNK4llvh9StringRef6equalsES0_.exit214, label %_ZNK4llvh9StringRef6equalsES0_.exit214.thread

_ZNK4llvh9StringRef6equalsES0_.exit214:           ; preds = %bb.cc
  %.sroa.024.0.copyload = load ptr, ptr %.1193419, align 8, !tbaa !228 ; 2 uses
  %31 = load i64, ptr %.sroa.024.0.copyload, align 1
  %32 = xor i64 %31, 8104637026473570928
  %33 = getelementptr i8, ptr %.sroa.024.0.copyload, i64 8
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i64
  %36 = xor i64 %35, 101
  %37 = or i64 %32, %36
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i32
  %i.wp = icmp eq i32 %39, 0
  br i1 %i.wp, label %_ZNK4llvh9StringRef6equalsES0_.exit214.thread439, label %_ZNK4llvh9StringRef6equalsES0_.exit214.thread

_ZNK4llvh9StringRef6equalsES0_.exit214.thread439: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit214
end_hunk_2
