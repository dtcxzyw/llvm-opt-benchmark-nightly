begin_hunk_0
@.str.11 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"'new.target' not in a function\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"'import.meta' is currently unsupported\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"invalid meta property \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c".\00", align 1
end_hunk_0
begin_hunk_1
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206  ; 3 uses
  %.sroa.011.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !211 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !228
  switch i64 %.sroa.212.0.copyload, label %_ZN4llvhplERKNS_5TwineES2_.exit49 [
end_hunk_1
begin_hunk_2
  ]

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %.sroa.011.0.copyload, ptr noundef nonnull dereferenceable(3) @.str.14, i64 3)
  %i.g = icmp eq i32 %bcmp, 0
  br i1 %i.g, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread63, label %_ZN4llvhplERKNS_5TwineES2_.exit49

_ZNK4llvh9StringRef6equalsES0_.exit.thread63:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
end_hunk_2
begin_hunk_3
  br i1 %i.j, label %_ZNK4llvh9StringRef6equalsES0_.exit24, label %_ZN4llvhplERKNS_5TwineES2_.exit49

_ZNK4llvh9StringRef6equalsES0_.exit24:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread63
  %.sroa.09.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !211
  %bcmp71 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %.sroa.09.0.copyload, ptr noundef nonnull dereferenceable(6) @.str.15, i64 6)
  %i.k = icmp eq i32 %bcmp71, 0
  br i1 %i.k, label %_ZNK4llvh9StringRef6equalsES0_.exit24.thread65, label %_ZN4llvhplERKNS_5TwineES2_.exit49

_ZNK4llvh9StringRef6equalsES0_.exit24.thread65:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit24
end_hunk_3
begin_hunk_4
  br label %bb.d

_ZNK4llvh9StringRef6equalsES0_.exit25:            ; preds = %bb.a
  %bcmp72 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %.sroa.011.0.copyload, ptr noundef nonnull dereferenceable(6) @.str.17, i64 6)
  %i.u = icmp eq i32 %bcmp72, 0
  br i1 %i.u, label %_ZNK4llvh9StringRef6equalsES0_.exit25.thread67, label %_ZN4llvhplERKNS_5TwineES2_.exit49

_ZNK4llvh9StringRef6equalsES0_.exit25.thread67:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit25
end_hunk_4
begin_hunk_5

_ZNK4llvh9StringRef6equalsES0_.exit26:            ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit25.thread67
  %.sroa.03.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !211
  %bcmp73 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %.sroa.03.0.copyload, ptr noundef nonnull dereferenceable(4) @.str.18, i64 4)
  %i.y = icmp eq i32 %bcmp73, 0
  br i1 %i.y, label %_ZNK4llvh9StringRef6equalsES0_.exit26.thread69, label %_ZN4llvhplERKNS_5TwineES2_.exit49

_ZNK4llvh9StringRef6equalsES0_.exit26.thread69:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit26
end_hunk_5
