Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Dependency?download=true
inline.NumInlined: 321
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_Lake_instReprInputVer = local_unnamed_addr global ptr @l_Lake_instReprInputVer___closed__0_value, align 8
@l___private_Lake_Config_Dependency_0__Lake_InputVer_instDecodeVersion = local_unnamed_addr global ptr @l___private_Lake_Config_Dependency_0__Lake_InputVer_instDecodeVersion___closed__0_value, align 8
@l_Lake_instInhabitedDependencySrc_default = local_unnamed_addr global ptr @l_Lake_instInhabitedDependencySrc_default___closed__1_value, align 8
@l_Lake_instInhabitedDependencySrc = local_unnamed_addr global ptr @l_Lake_instInhabitedDependencySrc_default___closed__1_value, align 8
@l_Lake_instReprDependencySrc = local_unnamed_addr global ptr @l_Lake_instReprDependencySrc___closed__0_value, align 8
@l_Lake_instInhabitedDependency_default = local_unnamed_addr global ptr @l_Lake_instInhabitedDependency_default___closed__0_value, align 8
@l_Lake_instInhabitedDependency = local_unnamed_addr global ptr @l_Lake_instInhabitedDependency_default___closed__0_value, align 8
@l_Lake_instImpl_00___x40_Lake_Config_Dependency_35947708____hygCtx___hyg_23_ = local_unnamed_addr global ptr @l_Lake_instImpl___closed__2_00___x40_Lake_Config_Dependency_35947708____hygCtx___hyg_23__value, align 8
@l_Lake_instTypeNameDependency = local_unnamed_addr global ptr @l_Lake_instImpl___closed__2_00___x40_Lake_Config_Dependency_35947708____hygCtx___hyg_23__value, align 8
@l_Lake_instReprInputVer_repr___closed__2 = internal global ptr null, align 8
@l_Lake_instReprInputVer_repr___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lake_instReprInputVer_repr___closed__3 = internal global ptr null, align 8
@l_Lake_instReprInputVer_repr___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_String_dropPrefix_x3f___at___00Lake_InputVer_parse_spec__0___redArg___closed__1 = internal global ptr null, align 8
@l_String_dropPrefix_x3f___at___00Lake_InputVer_parse_spec__0___redArg___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@l_Lake_instInhabitedInputVer_default = local_unnamed_addr global ptr null, align 8
@l_Lake_instInhabitedInputVer = local_unnamed_addr global ptr null, align 8
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Lake_instReprInputVer___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lake_instReprInputVer_repr___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Lake_Config_Dependency_0__Lake_InputVer_instDecodeVersion___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lake_InputVer_parse, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lake_instInhabitedDependencySrc_default___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr @l_Lake_instInhabitedDependencySrc_default___closed__0_value] }, align 8
@l_Lake_instInhabitedDependencySrc_default___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [1 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 1, i64 1, i64 0, [1 x i8] zeroinitializer }>, align 8
@l_Lake_instReprDependencySrc___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lake_instReprDependencySrc_repr___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lake_instInhabitedDependency_default___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [5 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 48, i8 0, i8 5, i8 0 }, [5 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lake_instInhabitedDependencySrc_default___closed__0_value, ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lake_instImpl___closed__2_00___x40_Lake_Config_Dependency_35947708____hygCtx___hyg_23__value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lake_instImpl___closed__2_00___x40_Lake_Config_Dependency_35947708____hygCtx___hyg_23__value_aux_0, ptr @l_Lake_instImpl___closed__1_00___x40_Lake_Config_Dependency_35947708____hygCtx___hyg_23__value, ptr inttoptr (i64 4262777339930964728 to ptr)] }, align 8
@l_Lake_instImpl___closed__2_00___x40_Lake_Config_Dependency_35947708____hygCtx___hyg_23__value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lake_instImpl___closed__0_00___x40_Lake_Config_Dependency_35947708____hygCtx___hyg_23__value, ptr inttoptr (i64 -5434237899711822481 to ptr)] }, align 8
@l_Lake_instImpl___closed__0_00___x40_Lake_Config_Dependency_35947708____hygCtx___hyg_23__value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"Lake\00" }>, align 8
@l_Lake_instImpl___closed__1_00___x40_Lake_Config_Dependency_35947708____hygCtx___hyg_23__value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [11 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 11, i64 11, i64 10, [11 x i8] c"Dependency\00" }>, align 8
@l_Lake_instReprInputVer_repr___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lake_instReprInputVer_repr___closed__5_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lake_instReprInputVer_repr___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lake_instReprInputVer_repr___closed__4_value] }, align 8
@l_Lake_instReprInputVer_repr___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [18 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 18, i64 18, i64 17, [18 x i8] c"Lake.InputVer.git\00" }>, align 8
@l_Lake_instReprInputVer_repr___closed__9_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lake_instReprInputVer_repr___closed__8_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lake_instReprInputVer_repr___closed__8_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lake_instReprInputVer_repr___closed__7_value] }, align 8
@l_Lake_instReprInputVer_repr___closed__7_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [18 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 18, i64 18, i64 17, [18 x i8] c"Lake.InputVer.ver\00" }>, align 8
@l_Lake_instReprInputVer_repr___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lake_instReprInputVer_repr___closed__0_value] }, align 8
@l_Lake_instReprInputVer_repr___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [19 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 19, i64 19, i64 18, [19 x i8] c"Lake.InputVer.none\00" }>, align 8
@l_String_dropPrefix_x3f___at___00Lake_InputVer_parse_spec__0___redArg___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"git#\00" }>, align 8
@l_Option_repr___at___00Lake_instReprDependencySrc_repr_spec__0___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Option_repr___at___00Lake_instReprDependencySrc_repr_spec__0___closed__0_value] }, align 8
@l_Option_repr___at___00Lake_instReprDependencySrc_repr_spec__0___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"none\00" }>, align 8
@l_Option_repr___at___00Lake_instReprDependencySrc_repr_spec__0___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Option_repr___at___00Lake_instReprDependencySrc_repr_spec__0___closed__2_value] }, align 8
@l_Option_repr___at___00Lake_instReprDependencySrc_repr_spec__0___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"some \00" }>, align 8
@l_Option_repr___at___00Lake_instReprDependencySrc_repr_spec__1___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Option_repr___at___00Lake_instReprDependencySrc_repr_spec__1___closed__0_value] }, align 8
@l_Option_repr___at___00Lake_instReprDependencySrc_repr_spec__1___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [13 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 13, i64 13, i64 12, [13 x i8] c"FilePath.mk \00" }>, align 8
@l_Lake_instReprDependencySrc_repr___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lake_instReprDependencySrc_repr___closed__1_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lake_instReprDependencySrc_repr___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lake_instReprDependencySrc_repr___closed__0_value] }, align 8
@l_Lake_instReprDependencySrc_repr___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [24 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 24, i64 24, i64 23, [24 x i8] c"Lake.DependencySrc.path\00" }, align 8
@l_Lake_instReprDependencySrc_repr___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lake_instReprDependencySrc_repr___closed__4_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lake_instReprDependencySrc_repr___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lake_instReprDependencySrc_repr___closed__3_value] }, align 8
@l_Lake_instReprDependencySrc_repr___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [23 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 23, i64 23, i64 22, [23 x i8] c"Lake.DependencySrc.git\00" }>, align 8
@l_Lake_Dependency_fullName___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c"/\00" }>, align 8
@l_Lake_Dependency_resolverDescr___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c"@\00" }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @l_Lake_InputVer_ctorIdx(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i, label %2 [
    i32 0, label %bb.d
    i32 1, label %1
  ]

1:                                                ; preds = %lean_obj_tag.exit
  br label %bb.d

2:                                                ; preds = %lean_obj_tag.exit
  br label %bb.d

bb.d:                                             ; preds = %lean_obj_tag.exit, %2, %1
  %.0 = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_Lake_InputVer_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i.i, label %2 [
    i32 0, label %l_Lake_InputVer_ctorIdx.exit
    i32 1, label %1
  ]

1:                                                ; preds = %lean_obj_tag.exit.i
  br label %l_Lake_InputVer_ctorIdx.exit

2:                                                ; preds = %lean_obj_tag.exit.i
  br label %l_Lake_InputVer_ctorIdx.exit

l_Lake_InputVer_ctorIdx.exit:                     ; preds = %lean_obj_tag.exit.i, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i ]
  br i1 %.not.i.i, label %3, label %lean_dec.exit

3:                                                ; preds = %l_Lake_InputVer_ctorIdx.exit
  %4 = load i32, ptr %0, align 4, !tbaa !10       ; 3 uses
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %3
  %i.g = add nsw i32 %4, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.e:                                             ; preds = %3
  %.not.i3 = icmp eq i32 %4, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %l_Lake_InputVer_ctorIdx.exit
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_InputVer_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i10 = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = icmp eq i32 %.0.i, 0
  br i1 %i.g, label %bb.l, label %bb.d

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 4 uses
  %.val.i.i = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i32 %.val.i.i, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !10
  br label %lean_inc_ref.exit

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  br i1 %.not.i10, label %bb.h, label %lean_dec.exit

bb.h:                                             ; preds = %lean_inc_ref.exit
  %i.m = load i32, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %0, align 8, !tbaa !10
  br label %lean_dec.exit

bb.j:                                             ; preds = %bb.h
  %.not.i9 = icmp eq i32 %i.m, 0
  br i1 %.not.i9, label %lean_dec.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.k, %bb.j, %bb.i, %lean_inc_ref.exit
  %i.p = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef nonnull %i.i) #6
  br label %bb.l

bb.l:                                             ; preds = %lean_obj_tag.exit, %lean_dec.exit
  %.0 = phi ptr [ %i.p, %lean_dec.exit ], [ %1, %lean_obj_tag.exit ]
  ret ptr %.0
}

declare ptr @lean_apply_1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l_Lake_InputVer_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i10.i = icmp eq i64 %i.b, 0               ; 2 uses
  br i1 %.not.i10.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = icmp eq i32 %.0.i.i, 0
  br i1 %i.g, label %l_Lake_InputVer_ctorElim___redArg.exit, label %bb.d

bb.d:                                             ; preds = %lean_obj_tag.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 4 uses
  %.val.i.i.i = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i32 %.val.i.i.i, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !10
  br label %lean_inc_ref.exit.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc_ref.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit.i

lean_inc_ref.exit.i:                              ; preds = %bb.g, %bb.f, %bb.e
  br i1 %.not.i10.i, label %bb.h, label %lean_dec.exit.i

bb.h:                                             ; preds = %lean_inc_ref.exit.i
  %i.m = load i32, ptr %2, align 8, !tbaa !10     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %2, align 8, !tbaa !10
  br label %lean_dec.exit.i

bb.j:                                             ; preds = %bb.h
  %.not.i9.i = icmp eq i32 %i.m, 0
  br i1 %.not.i9.i, label %lean_dec.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.k, %bb.j, %bb.i, %lean_inc_ref.exit.i
  %i.p = tail call ptr @lean_apply_1(ptr noundef %4, ptr noundef nonnull %i.i) #6
  br label %l_Lake_InputVer_ctorElim___redArg.exit

l_Lake_InputVer_ctorElim___redArg.exit:           ; preds = %lean_obj_tag.exit.i, %lean_dec.exit.i
  %.0.i = phi ptr [ %i.p, %lean_dec.exit.i ], [ %4, %lean_obj_tag.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lake_InputVer_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i10.i.i = icmp eq i64 %i.b, 0             ; 2 uses
  br i1 %.not.i10.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 4
  %.val.i.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i.i, 24
  br label %lean_obj_tag.exit.i.i

lean_obj_tag.exit.i.i:                            ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = icmp eq i32 %.0.i.i.i, 0
  br i1 %i.g, label %l_Lake_InputVer_ctorElim.exit, label %bb.d

bb.d:                                             ; preds = %lean_obj_tag.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 4 uses
  %.val.i.i.i.i = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !10
  br label %lean_inc_ref.exit.i.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %lean_inc_ref.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit.i.i

lean_inc_ref.exit.i.i:                            ; preds = %bb.g, %bb.f, %bb.e
  br i1 %.not.i10.i.i, label %bb.h, label %lean_dec.exit.i.i

bb.h:                                             ; preds = %lean_inc_ref.exit.i.i
end_hunk_0
