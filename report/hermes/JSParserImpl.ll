begin_hunk_0
@.str.236 = private unnamed_addr constant [51 x i8] c"getter method must no one formal arguments, found \00", align 1
@.str.237 = private unnamed_addr constant [60 x i8] c"setter method must have exactly one formal argument, found \00", align 1
@.str.238 = private unnamed_addr constant [45 x i8] c"accessor method may not have type parameters\00", align 1
@.str.239 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@.str.240 = private unnamed_addr constant [36 x i8] c"prototype method must not be static\00", align 1
@.str.241 = private unnamed_addr constant [50 x i8] c"constructor method must not be a getter or setter\00", align 1
@.str.242 = private unnamed_addr constant [26 x i8] c"Unexpected variance sigil\00", align 1
end_hunk_0
begin_hunk_1
  br i1 %i.jx, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit216, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit216: ; preds = %bb.ac
  %.sroa.073.0.copyload = load ptr, ptr %.1193, align 8, !tbaa !228
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %.sroa.073.0.copyload, ptr noundef nonnull dereferenceable(11) @.str.20, i64 11)
  %i.jy = icmp eq i32 %bcmp, 0
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.aa, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit216, %bb.ac, %bb.ab
end_hunk_1
begin_hunk_2
  br i1 %i.wo, label %_ZNK4llvh9StringRef6equalsES0_.exit214, label %_ZNK4llvh9StringRef6equalsES0_.exit214.thread

_ZNK4llvh9StringRef6equalsES0_.exit214:           ; preds = %bb.cc
  %.sroa.024.0.copyload = load ptr, ptr %.1193419, align 8, !tbaa !228
  %bcmp447 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %.sroa.024.0.copyload, ptr noundef nonnull dereferenceable(9) @.str.239, i64 9)
  %i.wp = icmp eq i32 %bcmp447, 0
  br i1 %i.wp, label %_ZNK4llvh9StringRef6equalsES0_.exit214.thread439, label %_ZNK4llvh9StringRef6equalsES0_.exit214.thread

_ZNK4llvh9StringRef6equalsES0_.exit214.thread439: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit214
end_hunk_2
