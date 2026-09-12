Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/jit?download=true
inline.NumInlined: 108
inline.NumDeleted: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rb_shape_tree_t = type { ptr, ptr, ptr, i32, ptr, i32 }
%struct.iseq_callback_data = type { ptr, ptr }

@rb_invalid_shape_id = hidden local_unnamed_addr constant i32 -1, align 4
@.str = private unnamed_addr constant [9 x i8] c"../jit.c\00", align 1
@__func__.rb_iseq_pc_at_idx = private unnamed_addr constant [18 x i8] c"rb_iseq_pc_at_idx\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"IMEMO_TYPE_P(iseq, imemo_iseq)\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"insn_idx < iseq->body->iseq_size\00", align 1
@__func__.rb_iseq_opcode_at_pc = private unnamed_addr constant [21 x i8] c"rb_iseq_opcode_at_pc\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"FL_TEST_RAW((VALUE)iseq, ISEQ_TRANSLATED)\00", align 1
@ruby_vm_redefined_flag = external local_unnamed_addr global [35 x i16], align 16
@__func__.rb_assert_iseq_handle = private unnamed_addr constant [22 x i8] c"rb_assert_iseq_handle\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"IMEMO_TYPE_P(handle, imemo_iseq)\00", align 1
@__func__.rb_assert_cme_handle = private unnamed_addr constant [21 x i8] c"rb_assert_cme_handle\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"!rb_objspace_garbage_object_p(handle)\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"IMEMO_TYPE_P(handle, imemo_ment)\00", align 1
@__func__.rb_iseq_reset_jit_func = private unnamed_addr constant [23 x i8] c"rb_iseq_reset_jit_func\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"jit: failed to get page size\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"jit page size too large\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Ruby:rb_jit_reserve_addr_space\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Ruby:rb_jit_reserve_addr_space:fallback\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"ruby: jit: mmap:\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"mmap failed\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"Couldn't make JIT page (%p, %lu bytes) executable, errno: %s\00", align 1
@rb_vm_insn_name_base = external constant [0 x i8], align 1
@rb_vm_insn_name_offset = external local_unnamed_addr constant [248 x i16], align 16
@rb_cFalseClass = external local_unnamed_addr global i64, align 8
@rb_cNilClass = external local_unnamed_addr global i64, align 8
@rb_cTrueClass = external local_unnamed_addr global i64, align 8
@rb_cInteger = external local_unnamed_addr global i64, align 8
@rb_cSymbol = external local_unnamed_addr global i64, align 8
@rb_cFloat = external local_unnamed_addr global i64, align 8
@ruby_single_main_ractor = external local_unnamed_addr global ptr, align 8
@rb_shape_tree = external local_unnamed_addr global %struct.rb_shape_tree_t, align 8
@switch.table.rb_RB_TYPE_P = private unnamed_addr constant [37 x i8] [i8 19, i8 poison, i8 poison, i8 poison, i8 17, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 18, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 22], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_iseq_encoded_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_iseq_pc_at_idx(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = icmp eq ptr %0, null
  %i.c = and i64 %i.a, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %imemo_type_p.exit.thread, label %imemo_type_p.exit, !prof !36

imemo_type_p.exit:                                ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !38
  %i.g = and i64 %i.f, 61471
  %.not = icmp eq i64 %i.g, 28698
  br i1 %.not, label %bb.b, label %imemo_type_p.exit.thread, !prof !39

imemo_type_p.exit.thread:                         ; preds = %bb.a, %imemo_type_p.exit
  tail call void @rb_assert_failure(ptr noundef nonnull @.str, i32 noundef 51, ptr noundef nonnull @__func__.rb_iseq_pc_at_idx, ptr noundef nonnull @.str.1) #18
  unreachable

bb.b:                                             ; preds = %imemo_type_p.exit
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !35
  %i.l = icmp ult i32 %1, %i.k
  br i1 %i.l, label %bb.d, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  tail call void @rb_assert_failure(ptr noundef nonnull @.str, i32 noundef 52, ptr noundef nonnull @__func__.rb_iseq_pc_at_idx, ptr noundef nonnull @.str.2) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = zext i32 %1 to i64
  %i.p = getelementptr [8 x i8], ptr %i.n, i64 %i.o
  ret ptr %i.p
}

; Function Attrs: cold noreturn
declare void @rb_assert_failure(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_iseq_opcode_at_pc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !38
  %i.b = and i64 %i.a, 524288
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @rb_assert_failure(ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull @__func__.rb_iseq_opcode_at_pc, ptr noundef nonnull @.str.3) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !42
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call i32 @rb_vm_insn_addr2opcode(ptr noundef %i.d) #14
  ret i32 %i.e
}

declare i32 @rb_vm_insn_addr2opcode(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @rb_RSTRING_LEN(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !44
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_RSTRING_PTR(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  %i.d = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden ptr @rb_insn_name(i64 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr [2 x i8], ptr @rb_vm_insn_name_offset, i64 %0
  %i.b = load i16, ptr %i.a, align 2, !tbaa !47
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr i8, ptr @rb_vm_insn_name_base, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i32 @rb_vm_ci_argc(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %.not.i.i = trunc i64 %i.a to i1
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %1 = trunc i64 %i.a to i32
  %2 = lshr i32 %1, 1
  %i.b = and i32 %2, 32767
  br label %vm_ci_argc.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %i.e = trunc i64 %i.d to i32
  br label %vm_ci_argc.exit

vm_ci_argc.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i64 @rb_vm_ci_mid(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %.not.i.i = trunc i64 %i.a to i1
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %i.a, 32
  br label %vm_ci_mid.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67
  br label %vm_ci_mid.exit

vm_ci_mid.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i32 @rb_vm_ci_flag(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %.not.i.i = trunc i64 %i.a to i1
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %i.a to i32
  %1 = lshr i32 %i.b, 16
  br label %vm_ci_flag.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68
  %i.e = trunc i64 %i.d to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %1, %bb.b ], [ %i.e, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_vm_ci_kwarg(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %.not.i.i = trunc i64 %i.a to i1
  br i1 %.not.i.i, label %vm_ci_kwarg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  br label %vm_ci_kwarg.exit

vm_ci_kwarg.exit:                                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i32 @rb_get_cikw_keyword_len(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !10
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i64 @rb_get_cikw_keywords_idx(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 4) i32 @rb_METHOD_ENTRY_VISI(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !70
  %1 = trunc i64 %i.a to i32
  %2 = lshr i32 %1, 16
  %i.b = and i32 %2, 3
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 16) i32 @rb_get_cme_def_type(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 15
  %i.e = zext nneg i8 %i.d to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 7, %bb.a ], [ %i.e, %bb.c ], [ 7, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @rb_get_cme_def_body_attr_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_get_cme_def_body_optimized_type(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_get_cme_def_body_optimized_index(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_get_cme_def_body_cfunc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr i8, ptr %i.b, i64 8
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i64 @rb_get_def_method_serial(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i64 @rb_get_def_original_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i64 @rb_get_def_bmethod_proc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_jit_get_proc_ptr(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_jit_iseq_builtin_attrs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr i8, ptr %i.b, i64 268
  %i.d = load i32, ptr %i.c, align 4, !tbaa !75
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i32 @rb_get_mct_argc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_get_mct_func(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_get_def_iseq_ptr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !45
  ret ptr %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_get_iseq_body_local_iseq(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_get_iseq_body_parent_iseq(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_get_iseq_body_local_table_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr i8, ptr %i.b, i64 240
  %i.d = load i32, ptr %i.c, align 8, !tbaa !80
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_get_iseq_body_iseq_encoded(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_get_iseq_body_stack_max(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr i8, ptr %i.b, i64 264
  %i.d = load i32, ptr %i.c, align 8, !tbaa !81
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_get_iseq_body_type(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load i32, ptr %i.b, align 8, !tbaa !82
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_get_iseq_flags_has_lead(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i16, ptr %i.c, align 8
  %i.e = trunc i16 %i.d to i1
  ret i1 %i.e
end_hunk_0
