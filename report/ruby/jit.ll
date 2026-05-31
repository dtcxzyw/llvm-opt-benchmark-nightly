inline.NumInlined: 108
inline.NumDeleted: 58
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
@switch.table.rb_RB_TYPE_P = private unnamed_addr constant [10 x i32] [i32 19, i32 17, i32 poison, i32 poison, i32 poison, i32 18, i32 poison, i32 poison, i32 poison, i32 22], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_iseq_encoded_size(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16
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
  %i.f = load i64, ptr %0, align 8, !tbaa !37
  %i.g = and i64 %i.f, 61471
  %.not = icmp eq i64 %i.g, 28698
  br i1 %.not, label %bb.b, label %imemo_type_p.exit.thread, !prof !39

imemo_type_p.exit.thread:                         ; preds = %bb.a, %imemo_type_p.exit
  tail call void @rb_assert_failure(ptr noundef nonnull @.str, i32 noundef 51, ptr noundef nonnull @__func__.rb_iseq_pc_at_idx, ptr noundef nonnull @.str.1) #18
  unreachable

bb.b:                                             ; preds = %imemo_type_p.exit
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
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
define hidden i32 @rb_iseq_opcode_at_pc(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !37
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !43
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_RSTRING_PTR(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
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
  %i.b = load i16, ptr %i.a, align 2, !tbaa !46
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
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 1
  %i.d = and i32 %i.c, 32767
  br label %vm_ci_argc.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48
  %i.g = trunc i64 %i.f to i32
  br label %vm_ci_argc.exit

vm_ci_argc.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.c ]
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
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51
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
  %i.c = lshr i32 %i.b, 16
  br label %vm_ci_flag.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52
  %i.f = trunc i64 %i.e to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %i.f, %bb.c ]
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  br label %vm_ci_kwarg.exit

vm_ci_kwarg.exit:                                 ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@rb_get_cfp_pc:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_get_cfp_sp(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden i64 @rb_get_cfp_self(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_get_cfp_ep(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  ret ptr %i.b
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_get_cfp_ep_level(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %1, 7                       ; 3 uses
  %i.c = icmp ult i32 %1, 8
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %1, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.aa, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.d = getelementptr i8, ptr %.07, i64 -8
  %.0.val = load i64, ptr %i.d, align 8, !tbaa !42
  %i.e = and i64 %.0.val, -4
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %.0.val.1 = load i64, ptr %i.g, align 8, !tbaa !42
  %i.h = and i64 %.0.val.1, -4
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %.0.val.2 = load i64, ptr %i.j, align 8, !tbaa !42
  %i.k = and i64 %.0.val.2, -4
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %.0.val.3 = load i64, ptr %i.m, align 8, !tbaa !42
  %i.n = and i64 %.0.val.3, -4
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %.0.val.4 = load i64, ptr %i.p, align 8, !tbaa !42
  %i.q = and i64 %.0.val.4, -4
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %.0.val.5 = load i64, ptr %i.s, align 8, !tbaa !42
  %i.t = and i64 %.0.val.5, -4
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %.0.val.6 = load i64, ptr %i.v, align 8, !tbaa !42
  %i.w = and i64 %.0.val.6, -4
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %.0.val.7 = load i64, ptr %i.y, align 8, !tbaa !42
  %i.z = and i64 %.0.val.7, -4
  %i.aa = inttoptr i64 %i.z to ptr                ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !94

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.07.epil = phi ptr [ %i.ad, %.lr.ph.epil ], [ %.07.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ab = getelementptr i8, ptr %.07.epil, i64 -8
  %.0.val.epil = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.ac = and i64 %.0.val.epil, -4
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !96

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %.lr.ph.epil ]
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @rb_yarv_class_of(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.g = trunc i64 %0 to i1
  br i1 %i.g, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = and i64 %0, 254
  %i.i = icmp eq i64 %i.h, 12
  %spec.select.i = select i1 %i.i, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.f, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !42
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @rb_FL_TEST(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not5.i = and i1 %i.a, %i.c
  br i1 %.not5.i, label %bb.b, label %RB_FL_TEST.exit

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37
  %i.f = and i64 %i.e, %1
  br label %RB_FL_TEST.exit

RB_FL_TEST.exit:                                  ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @rb_FL_TEST_RAW(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  %i.c = and i64 %i.b, %1
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_RB_TYPE_P(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  br label %rbimpl_RB_TYPE_P_fastpath.exit

bb.c:                                             ; preds = %bb.a
  %2 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 62) ; 3 uses
  %i.i = icmp ult i64 %2, 10
  %switch.maskindex = trunc i64 %2 to i16
  %switch.shifted = lshr i16 547, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.i, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i64 %0 to i1
  br i1 %i.j, label %rbimpl_RB_TYPE_P_fastpath.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = and i64 %0, 254
  %i.l = icmp eq i64 %i.k, 12
  %spec.select.i.i = select i1 %i.l, i32 20, i32 4
  br label %rbimpl_RB_TYPE_P_fastpath.exit

switch.lookup:                                    ; preds = %bb.c
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_RB_TYPE_P, i64 %2
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.b, %bb.d, %bb.e, %switch.lookup
  %.0.i6.i = phi i32 [ %i.h, %bb.b ], [ %spec.select.i.i, %bb.e ], [ 21, %bb.d ], [ %switch.load, %switch.lookup ]
  %i.m = icmp eq i32 %1, %.0.i6.i
  ret i1 %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_RSTRUCT_LEN(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @rb_struct_size(i64 noundef %0) #14 ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ashr i64 %i.a, 1
  br label %RSTRUCT_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_num2long(i64 noundef %i.a) #14
  br label %RSTRUCT_LEN.exit

RSTRUCT_LEN.exit:                                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i64 %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_get_call_data_ci(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_BASIC_OP_UNREDEFINED_P(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr [2 x i8], ptr @ruby_vm_redefined_flag, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2, !tbaa !46
  %i.d = sext i16 %i.c to i32
  %i.e = and i32 %1, %i.d
  %i.f = icmp eq i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_RCLASS_ORIGIN(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !37
  %i.d = and i64 %i.c, 65536
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 160      ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.i = tail call ptr @rb_current_box() #14      ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !110, !range !112, !noundef !113
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.n = load i64, ptr %i.b, align 8, !tbaa !37
  %i.o = and i64 %i.n, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.q = load i64, ptr %i.i, align 8, !tbaa !114
  %i.r = call i32 @rb_st_lookup(ptr noundef nonnull %i.p, i64 noundef %i.q, ptr noundef nonnull %i.a) #14
  %.not5.i.i13.i = icmp eq i32 %i.r, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !42
  %i.t = inttoptr i64 %i.s to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.e, %bb.d, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.t, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.u = getelementptr i8, ptr %i.b, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.u, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.b, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.f
  %.0.i = phi ptr [ %i.h, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.v, %bb.f ], [ %i.j, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.w = getelementptr i8, ptr %.0.i, i64 96
  %i.x = load i64, ptr %i.w, align 8, !tbaa !115
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_assert_iseq_handle(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %imemo_type_p.exit.thread, label %imemo_type_p.exit, !prof !36

imemo_type_p.exit:                                ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37
  %i.g = and i64 %i.f, 61471
  %.not = icmp eq i64 %i.g, 28698
  br i1 %.not, label %bb.b, label %imemo_type_p.exit.thread, !prof !39

imemo_type_p.exit.thread:                         ; preds = %bb.a, %imemo_type_p.exit
  tail call void @rb_assert_failure(ptr noundef nonnull @.str, i32 noundef 463, ptr noundef nonnull @__func__.rb_assert_iseq_handle, ptr noundef nonnull @.str.4) #18
  unreachable

bb.b:                                             ; preds = %imemo_type_p.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden void @rb_assert_holding_vm_lock() local_unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @rb_IMEMO_TYPE_P(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %imemo_type_p.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %1, 12
  %i.f = or disjoint i32 %i.e, 26
  %i.g = zext i32 %i.f to i64
  %i.h = inttoptr i64 %0 to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !37
  %i.j = and i64 %i.i, 61471
  %i.k = icmp eq i64 %i.j, %i.g
  %i.l = zext i1 %i.k to i32
  br label %imemo_type_p.exit

imemo_type_p.exit:                                ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_assert_cme_handle(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @rb_objspace_garbage_object_p(i64 noundef %0) #14
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void @rb_assert_failure(ptr noundef nonnull @.str, i32 noundef 483, ptr noundef nonnull @__func__.rb_assert_cme_handle, ptr noundef nonnull @.str.5) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %imemo_type_p.exit.thread, label %imemo_type_p.exit, !prof !36

imemo_type_p.exit:                                ; preds = %bb.c
  %i.f = inttoptr i64 %0 to ptr
end_hunk_1
begin_hunk_2_@rb_jit_fix_mod_fix
define hidden range(i64 1, 0) i64 @rb_jit_fix_mod_fix(i64 noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = ashr i64 %0, 1                           ; 2 uses
  %i.b = ashr i64 %1, 1                           ; 4 uses
  %i.c = icmp eq i64 %i.a, -4611686018427387904
  %i.d = icmp eq i64 %i.b, -1
  %or.cond.i.i = and i1 %i.c, %i.d
  br i1 %or.cond.i.i, label %rb_fix_mod_fix.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = srem i64 %i.a, %i.b                      ; 5 uses
  %i.f = icmp sgt i64 %i.b, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = add nsw i64 %i.e, %i.b
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.i, %bb.e ], [ %i.e, %bb.c ], [ %i.e, %bb.d ]
  %i.j = shl i64 %.0.i.i, 1
  %i.k = or disjoint i64 %i.j, 1
  br label %rb_fix_mod_fix.exit

rb_fix_mod_fix.exit:                              ; preds = %bb.a, %bb.f
  %.sink.i.i = phi i64 [ %i.k, %bb.f ], [ 1, %bb.a ]
  ret i64 %.sink.i.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_jit_fix_div_fix(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ashr i64 %0, 1                           ; 3 uses
  %i.b = ashr i64 %1, 1                           ; 4 uses
  %i.c = icmp eq i64 %i.a, -4611686018427387904
  %i.d = icmp eq i64 %i.b, -1
  %or.cond.i.i = and i1 %i.c, %i.d
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_int2big(i64 noundef 4611686018427387904) #14
  br label %rb_fix_div_fix.exit

bb.c:                                             ; preds = %bb.a
  %i.f = sdiv i64 %i.a, %i.b                      ; 3 uses
  %i.g = srem i64 %i.a, %i.b                      ; 2 uses
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = icmp sgt i64 %i.g, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = add nsw i64 %i.f, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.024.i.i = phi i64 [ %i.k, %bb.f ], [ %i.f, %bb.d ], [ %i.f, %bb.e ]
  %i.l = shl i64 %.024.i.i, 1
  %i.m = or disjoint i64 %i.l, 1
  br label %rb_fix_div_fix.exit

rb_fix_div_fix.exit:                              ; preds = %bb.b, %bb.g
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.m, %bb.g ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 21) i64 @rb_yarv_str_eql_internal(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !43
  %.not.i = icmp eq i64 %i.c, %i.f
  br i1 %.not.i, label %bb.b, label %rb_str_eql_internal.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @rb_str_comparable(i64 noundef %0, i64 noundef %1) #14
  %.not13.i = icmp eq i32 %i.g, 0
  br i1 %.not13.i, label %rb_str_eql_internal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.a, align 8, !tbaa !37
  %i.i = and i64 %i.h, 8192
  %.not.i.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.m = load i64, ptr %i.d, align 8, !tbaa !37
  %i.n = and i64 %i.m, 8192
  %.not.i14.i = icmp eq i64 %i.n, 0
  %i.o = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i14.i, label %RSTRING_PTR.exit15.i, label %bb.e

bb.e:                                             ; preds = %RSTRING_PTR.exit.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !45
  br label %RSTRING_PTR.exit15.i

RSTRING_PTR.exit15.i:                             ; preds = %bb.e, %RSTRING_PTR.exit.i
  %i.q = phi ptr [ %i.p, %bb.e ], [ %i.o, %RSTRING_PTR.exit.i ] ; 2 uses
  %i.r = icmp eq ptr %i.l, %i.q
  br i1 %i.r, label %rb_str_eql_internal.exit, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit15.i
  %bcmp.i = tail call i32 @bcmp(ptr %i.l, ptr %i.q, i64 %i.c)
  %i.s = icmp eq i32 %bcmp.i, 0
  %..i = select i1 %i.s, i64 20, i64 0
  br label %rb_str_eql_internal.exit

rb_str_eql_internal.exit:                         ; preds = %bb.a, %bb.b, %RSTRING_PTR.exit15.i, %bb.f
  %.0.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %..i, %bb.f ], [ 20, %RSTRING_PTR.exit15.i ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i16 @rb_jit_shape_capacity(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %0, 22
  %i.b = trunc i32 %i.a to i8
  %i.c = and i8 %i.b, 7                           ; 2 uses
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %bb.a
  %i.d = and i32 %0, 524287
  %i.e = load ptr, ptr @rb_shape_tree, align 8, !tbaa !123
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr [40 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 30
  %i.i = load i16, ptr %i.h, align 2, !tbaa !128
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %bb.a
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !130
  %i.k = zext nneg i8 %i.c to i64
  %i.l = add nuw nsw i64 %i.k, 4294967295
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr [2 x i8], ptr %i.j, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !46
  %i.p = and i32 %0, 524287
  %i.q = load ptr, ptr @rb_shape_tree, align 8, !tbaa !123
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr [40 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 30
  %i.u = load i16, ptr %i.t, align 2, !tbaa !128
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.o, i16 %i.u)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %.0.i = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  ret i16 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

declare i64 @rb_struct_size(i64 noundef) local_unnamed_addr #4

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #4

declare ptr @rb_current_box() local_unnamed_addr #4

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #4

declare void @rb_vm_lock_leave_body(ptr noundef) local_unnamed_addr #4

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #4

declare i32 @rb_str_comparable(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.clear_cache.p0(ptr, ptr) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !14, i64 16}
!12 = !{!"rb_iseq_struct", !13, i64 0, !13, i64 8, !14, i64 16, !9, i64 24}
!13 = !{!"long", !9, i64 0}
!14 = !{!"p1 _ZTS21rb_iseq_constant_body", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!17, !8, i64 4}
!17 = !{!"rb_iseq_constant_body", !8, i64 0, !8, i64 4, !18, i64 8, !19, i64 16, !22, i64 64, !25, i64 112, !18, i64 144, !15, i64 152, !29, i64 160, !30, i64 168, !30, i64 176, !31, i64 184, !32, i64 192, !33, i64 200, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !34, i64 272, !9, i64 280, !35, i64 288, !30, i64 296, !15, i64 304, !13, i64 312, !15, i64 320, !13, i64 328, !15, i64 336, !13, i64 344, !15, i64 352}
!18 = !{!"p1 long", !15, i64 0}
!19 = !{!"rb_iseq_parameters", !20, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !18, i64 32, !21, i64 40}
!20 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1}
!21 = !{!"p1 _ZTS21rb_iseq_param_keyword", !15, i64 0}
!22 = !{!"rb_iseq_location_struct", !13, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !8, i64 28, !23, i64 32}
!23 = !{!"rb_code_location_struct", !24, i64 0, !24, i64 8}
!24 = !{!"rb_code_position_struct", !8, i64 0, !8, i64 4}
!25 = !{!"iseq_insn_info", !26, i64 0, !27, i64 8, !8, i64 16, !28, i64 24}
!26 = !{!"p1 _ZTS20iseq_insn_info_entry", !15, i64 0}
!27 = !{!"p1 int", !15, i64 0}
!28 = !{!"p1 _ZTS16succ_index_table", !15, i64 0}
!29 = !{!"p1 _ZTS16iseq_catch_table", !15, i64 0}
!30 = !{!"p1 _ZTS14rb_iseq_struct", !15, i64 0}
!31 = !{!"p1 _ZTS25iseq_inline_storage_entry", !15, i64 0}
!32 = !{!"p1 _ZTS12rb_call_data", !15, i64 0}
!33 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !18, i64 32}
!34 = !{!"_Bool", !9, i64 0}
!35 = !{!"p1 _ZTS11rb_id_table", !15, i64 0}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!38, !13, i64 0}
!38 = !{!"RBasic", !13, i64 0, !13, i64 8}
!39 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!40 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!41 = !{!17, !18, i64 8}
!42 = !{!13, !13, i64 0}
!43 = !{!44, !13, i64 16}
!44 = !{!"RString", !38, i64 0, !13, i64 16, !9, i64 24}
!45 = !{!9, !9, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"short", !9, i64 0}
!48 = !{!49, !13, i64 32}
!49 = !{!"rb_callinfo", !13, i64 0, !50, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!50 = !{!"p1 _ZTS17rb_callinfo_kwarg", !15, i64 0}
!51 = !{!49, !13, i64 16}
!52 = !{!49, !13, i64 24}
!53 = !{!49, !50, i64 8}
!54 = !{!55, !13, i64 0}
!55 = !{!"rb_callable_method_entry_struct", !13, i64 0, !13, i64 8, !56, i64 16, !13, i64 24, !13, i64 32}
!56 = !{!"p1 _ZTS27rb_method_definition_struct", !15, i64 0}
!57 = !{!55, !56, i64 16}
!58 = !{!59, !13, i64 40}
!59 = !{!"rb_method_definition_struct", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 4, !9, i64 8, !13, i64 32, !13, i64 40, !60, i64 48}
!60 = !{!"p1 _ZTS13rb_box_struct", !15, i64 0}
!61 = !{!59, !13, i64 32}
!62 = !{!63, !15, i64 32}
!63 = !{!"RData", !38, i64 0, !15, i64 16, !15, i64 24, !15, i64 32}
!64 = !{!17, !8, i64 268}
!65 = !{!66, !8, i64 16}
!66 = !{!"rb_method_cfunc_struct", !15, i64 0, !15, i64 8, !8, i64 16}
!67 = !{!66, !15, i64 0}
!68 = !{!17, !30, i64 176}
!69 = !{!17, !30, i64 168}
!70 = !{!17, !8, i64 240}
!71 = !{!17, !8, i64 264}
!72 = !{!17, !8, i64 0}
!73 = !{!17, !21, i64 56}
!74 = !{!17, !8, i64 20}
!75 = !{!17, !8, i64 24}
!76 = !{!17, !8, i64 28}
!77 = !{!17, !18, i64 48}
!78 = !{!79, !80, i64 16}
!79 = !{!"rb_execution_context_struct", !18, i64 0, !13, i64 8, !80, i64 16, !81, i64 24, !8, i64 32, !8, i64 36, !82, i64 40, !83, i64 48, !84, i64 56, !84, i64 64, !35, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !18, i64 104, !13, i64 112, !85, i64 120, !13, i64 128, !13, i64 136, !9, i64 144, !8, i64 145, !13, i64 152, !86, i64 160, !87, i64 176}
!80 = !{!"p1 _ZTS23rb_control_frame_struct", !15, i64 0}
!81 = !{!"p1 _ZTS9rb_vm_tag", !15, i64 0}
!82 = !{!"p1 _ZTS15rb_fiber_struct", !15, i64 0}
!83 = !{!"p1 _ZTS16rb_thread_struct", !15, i64 0}
!84 = !{!"long long", !9, i64 0}
!85 = !{!"p1 _ZTS19rb_trace_arg_struct", !15, i64 0}
!86 = !{!"", !13, i64 0, !13, i64 8}
!87 = !{!"", !18, i64 0, !18, i64 8, !13, i64 16, !9, i64 24}
!88 = !{!89, !30, i64 16}
!89 = !{!"rb_control_frame_struct", !18, i64 0, !18, i64 8, !30, i64 16, !13, i64 24, !18, i64 32, !15, i64 40, !15, i64 48}
!90 = !{!89, !18, i64 0}
!91 = !{!89, !18, i64 8}
!92 = !{!89, !13, i64 24}
!93 = !{!89, !18, i64 32}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.mustprogress"}
!96 = distinct !{!96, !97}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !{!99, !100, i64 0}
!99 = !{!"rb_call_data", !100, i64 0, !101, i64 8}
!100 = !{!"p1 _ZTS11rb_callinfo", !15, i64 0}
!101 = !{!"p1 _ZTS12rb_callcache", !15, i64 0}
!102 = !{!103, !109, i64 160}
!103 = !{!"RClass_boxable", !104, i64 0, !109, i64 160}
!104 = !{!"RClass_and_rb_classext_t", !105, i64 0, !106, i64 24}
!105 = !{!"RClass", !38, i64 0, !13, i64 16}
!106 = !{!"rb_classext_struct", !60, i64 0, !13, i64 8, !13, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !13, i64 48, !35, i64 56, !18, i64 64, !107, i64 72, !108, i64 80, !108, i64 88, !13, i64 96, !13, i64 104, !9, i64 112, !47, i64 120, !47, i64 122, !9, i64 124, !34, i64 125, !34, i64 125, !34, i64 125, !34, i64 125, !34, i64 125, !34, i64 125, !13, i64 128}
!107 = !{!"p1 _ZTS18rb_subclass_anchor", !15, i64 0}
!108 = !{!"p1 _ZTS17rb_box_subclasses", !15, i64 0}
!109 = !{!"p1 _ZTS8st_table", !15, i64 0}
!110 = !{!111, !34, i64 128}
!111 = !{!"rb_box_struct", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !109, i64 88, !109, i64 96, !13, i64 104, !13, i64 112, !109, i64 120, !34, i64 128, !34, i64 129}
!112 = !{i8 0, i8 2}
!113 = !{}
!114 = !{!111, !13, i64 0}
!115 = !{!106, !13, i64 96}
!116 = !{!117, !117, i64 0}
!117 = !{!"p1 _ZTS16rb_ractor_struct", !15, i64 0}
!118 = distinct !{!118, !95}
!119 = !{!120, !15, i64 0}
!120 = !{!"iseq_callback_data", !15, i64 0, !15, i64 8}
!121 = !{!120, !15, i64 8}
!122 = distinct !{!122, !95}
!123 = !{!124, !125, i64 0}
!124 = !{!"", !125, i64 0, !125, i64 8, !126, i64 16, !8, i64 24, !127, i64 32, !8, i64 40}
!125 = !{!"p1 _ZTS8rb_shape", !15, i64 0}
!126 = !{!"p1 short", !15, i64 0}
!127 = !{!"p1 _ZTS13redblack_node", !15, i64 0}
!128 = !{!129, !47, i64 30}
!129 = !{!"rb_shape", !13, i64 0, !13, i64 8, !127, i64 16, !8, i64 24, !47, i64 28, !47, i64 30, !9, i64 32}
!130 = !{!124, !126, i64 16}
end_hunk_2
