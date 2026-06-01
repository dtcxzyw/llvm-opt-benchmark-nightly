inline.NumInlined: 672
inline.NumDeleted: 87
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.nmin_data = type { i64, i64, i64, i64, i64, ptr, i8 }
%struct.enum_sum_memo = type { i64, i64, i64, double, double, i32, i32 }
%struct.rb_uniform_sort_data = type { i64, i64 }

@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [20 x i8] c"negative size (%ld)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"too big size\00", align 1
@rb_cArray = external local_unnamed_addr global i64, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"Enumerable\00", align 1
@rb_mEnumerable = dso_local local_unnamed_addr global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"to_a\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"entries\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"to_h\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"sort_by\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"grep\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"grep_v\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"detect\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"find_index\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"find_all\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"filter_map\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"reject\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"collect\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"flat_map\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"collect_concat\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"inject\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"reduce\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"partition\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"group_by\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"tally\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"all?\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"any?\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"one?\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"none?\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"minmax\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"min_by\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"max_by\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"minmax_by\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"member?\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"include?\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"each_with_index\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"reverse_each\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"each_entry\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"each_slice\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"each_cons\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"each_with_object\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"take\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"take_while\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"drop\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"drop_while\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"cycle\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"chunk\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"slice_before\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"slice_after\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"slice_when\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"chunk_while\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"uniq\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"compact\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"_alone\00", align 1
@id__alone = internal unnamed_addr global i64 0, align 8
@.str.62 = private unnamed_addr constant [11 x i8] c"_separator\00", align 1
@id__separator = internal unnamed_addr global i64 0, align 8
@.str.63 = private unnamed_addr constant [17 x i8] c"chunk_categorize\00", align 1
@id_chunk_categorize = internal unnamed_addr global i64 0, align 8
@.str.64 = private unnamed_addr constant [17 x i8] c"chunk_enumerable\00", align 1
@id_chunk_enumerable = internal unnamed_addr global i64 0, align 8
@.str.65 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@id_next = internal unnamed_addr global i64 0, align 8
@.str.66 = private unnamed_addr constant [16 x i8] c"sliceafter_enum\00", align 1
@id_sliceafter_enum = internal unnamed_addr global i64 0, align 8
@.str.67 = private unnamed_addr constant [15 x i8] c"sliceafter_pat\00", align 1
@id_sliceafter_pat = internal unnamed_addr global i64 0, align 8
@.str.68 = private unnamed_addr constant [16 x i8] c"sliceafter_pred\00", align 1
@id_sliceafter_pred = internal unnamed_addr global i64 0, align 8
@.str.69 = private unnamed_addr constant [23 x i8] c"slicebefore_enumerable\00", align 1
@id_slicebefore_enumerable = internal unnamed_addr global i64 0, align 8
@.str.70 = private unnamed_addr constant [20 x i8] c"slicebefore_sep_pat\00", align 1
@id_slicebefore_sep_pat = internal unnamed_addr global i64 0, align 8
@.str.71 = private unnamed_addr constant [21 x i8] c"slicebefore_sep_pred\00", align 1
@id_slicebefore_sep_pred = internal unnamed_addr global i64 0, align 8
@.str.72 = private unnamed_addr constant [15 x i8] c"slicewhen_enum\00", align 1
@id_slicewhen_enum = internal unnamed_addr global i64 0, align 8
@.str.73 = private unnamed_addr constant [19 x i8] c"slicewhen_inverted\00", align 1
@id_slicewhen_inverted = internal unnamed_addr global i64 0, align 8
@.str.74 = private unnamed_addr constant [15 x i8] c"slicewhen_pred\00", align 1
@id_slicewhen_pred = internal unnamed_addr global i64 0, align 8
@ruby_vm_redefined_flag = external local_unnamed_addr global [35 x i16], align 16
@rb_cString = external local_unnamed_addr global i64, align 8
@rb_cInteger = external local_unnamed_addr global i64, align 8
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.75 = private unnamed_addr constant [15 x i8] c"%s%s reentered\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"_by\00", align 1
@.str.77 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"sort_by reentered\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"given block not used\00", align 1
@__const.imemo_count_up.buf = private unnamed_addr constant [2 x i64] [i64 0, i64 1], align 16
@.str.87 = private unnamed_addr constant [19 x i8] c"invalid slice size\00", align 1
@enum_each_slice_size.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.88 = private unnamed_addr constant [10 x i8] c"infinite?\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"invalid size\00", align 1
@enum_zip.sym_each = internal constant i64 790796, align 8
@enum_zip.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.90 = private unnamed_addr constant [8 x i8] c"to_enum\00", align 1
@rb_eTypeError = external local_unnamed_addr global i64, align 8
@.str.91 = private unnamed_addr constant [49 x i8] c"wrong argument type %li\0B (must respond to :each)\00", align 1
@rb_eStopIteration = external local_unnamed_addr global i64, align 8
@.str.92 = private unnamed_addr constant [30 x i8] c"attempt to take negative size\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"attempt to drop negative size\00", align 1
@rb_cEnumerator = external local_unnamed_addr global i64, align 8
@.str.94 = private unnamed_addr constant [50 x i8] c"symbols beginning with an underscore are reserved\00", align 1
@.str.95 = private unnamed_addr constant [33 x i8] c"both pattern and block are given\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_enum_values_pack(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %0 to i64
  %i.c = tail call i64 @rb_ary_new_from_values(i64 noundef %i.b, ptr noundef %1) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i64 [ %i.c, %bb.c ], [ %i.a, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0
}

declare i64 @rb_ary_new_from_values(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_nmin_run(i64 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.nmin_data, align 8          ; 14 uses
  %i.a = alloca [1 x i64], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.b = trunc i64 %1 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ashr i64 %1, 1
  br label %rb_num2long_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_num2long(i64 noundef %1) #13
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 6 uses
  store i64 %.0.i, ptr %5, align 8, !tbaa !13
  %i.e = icmp slt i64 %.0.i, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_num2long_inline.exit
  %i.f = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str, i64 noundef %.0.i) #14
  unreachable

bb.e:                                             ; preds = %rb_num2long_inline.exit
  %i.g = icmp eq i64 %.0.i, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i64 @rb_ary_new_capa(i64 noundef 0) #13
  br label %RBASIC_SET_CLASS.exit

bb.g:                                             ; preds = %bb.e
  %.not = icmp ne i32 %2, 0                       ; 4 uses
  %i.i = select i1 %.not, i64 1152921504606846975, i64 2305843009213693951
  %i.j = icmp samesign ult i64 %i.i, %.0.i
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.1) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = shl nuw nsw i64 %.0.i, 2                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.n, align 8, !tbaa !17
  %i.o = zext i1 %.not to i64
  %i.p = shl nuw i64 %i.l, %i.o
  %i.q = tail call i64 @rb_ary_hidden_new(i64 noundef %i.p) #13
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@sort_by_i:bb.a
  br label %bb.n

bb.n:                                             ; preds = %RB_FLOAT_TYPE_P.exit30.thread48, %bb.i
  %i.bb = getelementptr i8, ptr %i.a, i64 32      ; 5 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !49
  %i.bd = zext i8 %i.bc to i64
  %i.be = tail call ptr @rb_ary_ptr_use_start(i64 noundef %i.p) #13
  %.idx = shl nuw nsw i64 %i.bd, 4
  %i.bf = getelementptr i8, ptr %i.be, i64 %.idx
  store i64 %.0.i26, ptr %i.bf, align 8, !tbaa !11
  %i.bg = icmp eq i64 %.0.i26, 0
  %i.bh = and i64 %.0.i26, 7
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = or i1 %i.bg, %i.bi
  br i1 %i.bj, label %RARRAY_ASET.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @rb_gc_writebarrier(i64 noundef %i.p, i64 noundef %.0.i26) #13
  br label %RARRAY_ASET.exit

RARRAY_ASET.exit:                                 ; preds = %bb.n, %bb.o
  tail call void @rb_ary_ptr_use_end(i64 noundef %i.p) #13
  %i.bk = load i64, ptr %i.o, align 8, !tbaa !53  ; 3 uses
  %i.bl = load i8, ptr %i.bb, align 8, !tbaa !49
  %i.bm = zext i8 %i.bl to i64
  %i.bn = tail call ptr @rb_ary_ptr_use_start(i64 noundef %i.bk) #13
  %.idx54 = shl nuw nsw i64 %i.bm, 4
  %i.bo = getelementptr i8, ptr %i.bn, i64 %.idx54
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  store i64 %.0.i34, ptr %i.bp, align 8, !tbaa !11
  %i.bq = icmp eq i64 %.0.i34, 0
  %i.br = and i64 %.0.i34, 7
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = or i1 %i.bq, %i.bs
  br i1 %i.bt, label %RARRAY_ASET.exit31, label %bb.p

bb.p:                                             ; preds = %RARRAY_ASET.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.bk, i64 noundef %.0.i34) #13
  br label %RARRAY_ASET.exit31

RARRAY_ASET.exit31:                               ; preds = %RARRAY_ASET.exit, %bb.p
  tail call void @rb_ary_ptr_use_end(i64 noundef %i.bk) #13
  %i.bu = load i8, ptr %i.bb, align 8, !tbaa !49
  %i.bv = add i8 %i.bu, 1                         ; 2 uses
  store i8 %i.bv, ptr %i.bb, align 8, !tbaa !49
  %i.bw = icmp eq i8 %i.bv, 16
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %RARRAY_ASET.exit31
  %i.bx = load i64, ptr %i.o, align 8, !tbaa !53
  %i.by = tail call i64 @rb_ary_concat(i64 noundef %i.c, i64 noundef %i.bx) #13 ; 0 uses
  store i8 0, ptr %i.bb, align 8, !tbaa !49
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %RARRAY_ASET.exit31
  ret i64 4
}

declare i64 @rb_ary_concat(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @sort_by_cmp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !30
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.81) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !11     ; 10 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !11     ; 12 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !11
  %i.g = trunc i64 %i.e to i1
  %i.h = trunc i64 %i.f to i1
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 62), align 2, !tbaa !27
  %i.j = and i16 %i.i, 1
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @llvm.scmp.i32.i64(i64 %i.e, i64 %i.f)
  br label %bb.l

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.m = icmp eq i64 %i.e, 0
  %i.n = and i64 %i.e, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = or i1 %i.m, %i.o
  br i1 %i.p, label %.thread, label %rbimpl_RB_TYPE_P_fastpath.exit14

rbimpl_RB_TYPE_P_fastpath.exit14:                 ; preds = %bb.f
  %i.q = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !21
  %i.s = and i64 %i.r, 31
  switch i64 %i.s, label %RB_FLOAT_TYPE_P.exit.thread28 [
    i64 5, label %rb_class_of.exit
    i64 4, label %RB_FLOAT_TYPE_P.exit.thread
  ]

rb_class_of.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit14
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %.0.i15 = load i64, ptr %i.t, align 8, !tbaa !11 ; 2 uses
  %i.u = load i64, ptr @rb_cString, align 8, !tbaa !11
  %i.v = icmp eq i64 %.0.i15, %i.u
  br i1 %i.v, label %bb.g, label %RB_FLOAT_TYPE_P.exit.thread28

bb.g:                                             ; preds = %rb_class_of.exit
  %i.w = icmp eq i64 %i.f, 0
  %i.x = and i64 %i.f, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %RB_FLOAT_TYPE_P.exit.thread28, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.g
  %i.aa = inttoptr i64 %i.f to ptr                ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !21
  %i.ac = and i64 %i.ab, 31
  %i.ad = icmp eq i64 %i.ac, 5
  br i1 %i.ad, label %rb_class_of.exit19, label %RB_FLOAT_TYPE_P.exit.thread28

rb_class_of.exit19:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ae = getelementptr i8, ptr %i.aa, i64 8
  %.0.i17 = load i64, ptr %i.ae, align 8, !tbaa !11
  %i.af = icmp eq i64 %.0.i17, %.0.i15
  br i1 %i.af, label %bb.h, label %RB_FLOAT_TYPE_P.exit.thread28

bb.h:                                             ; preds = %rb_class_of.exit19
  %i.ag = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 62), align 2, !tbaa !27
  %i.ah = and i16 %i.ag, 4
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %RB_FLOAT_TYPE_P.exit.thread28, !prof !29

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call i32 @rb_str_cmp(i64 noundef %i.e, i64 noundef %i.f) #13
  br label %bb.l

.thread:                                          ; preds = %bb.f
  %i.ak = and i64 %i.e, 3
  %i.al = icmp eq i64 %i.ak, 2
  br i1 %i.al, label %RB_FLOAT_TYPE_P.exit.thread, label %RB_FLOAT_TYPE_P.exit.thread28

RB_FLOAT_TYPE_P.exit.thread:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit14, %.thread
  %i.am = and i64 %i.f, 3
  %i.an = icmp eq i64 %i.am, 2
  br i1 %i.an, label %RB_FLOAT_TYPE_P.exit22.thread, label %bb.j

bb.j:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread
  %i.ao = icmp eq i64 %i.f, 0
  %i.ap = and i64 %i.f, 7
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = or i1 %i.ao, %i.aq
  br i1 %i.ar, label %RB_FLOAT_TYPE_P.exit.thread28, label %RB_FLOAT_TYPE_P.exit22

RB_FLOAT_TYPE_P.exit22:                           ; preds = %bb.j
  %i.as = inttoptr i64 %i.f to ptr
  %i.at = load i64, ptr %i.as, align 8, !tbaa !21
  %i.au = and i64 %i.at, 31
  %i.av = icmp eq i64 %i.au, 4
  br i1 %i.av, label %RB_FLOAT_TYPE_P.exit22.thread, label %RB_FLOAT_TYPE_P.exit.thread28

RB_FLOAT_TYPE_P.exit22.thread:                    ; preds = %RB_FLOAT_TYPE_P.exit.thread, %RB_FLOAT_TYPE_P.exit22
  %i.aw = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 62), align 2, !tbaa !27
  %i.ax = and i16 %i.aw, 2
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %RB_FLOAT_TYPE_P.exit.thread28, !prof !29

bb.k:                                             ; preds = %RB_FLOAT_TYPE_P.exit22.thread
  %i.az = tail call i32 @rb_float_cmp(i64 noundef %i.e, i64 noundef %i.f) #13
  br label %bb.l

RB_FLOAT_TYPE_P.exit.thread28:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit14, %rb_class_of.exit, %rbimpl_RB_TYPE_P_fastpath.exit, %rb_class_of.exit19, %bb.h, %bb.g, %bb.j, %.thread, %RB_FLOAT_TYPE_P.exit22.thread, %RB_FLOAT_TYPE_P.exit22
  %i.ba = call i64 @rb_funcallv(i64 noundef %i.e, i64 noundef 135, i32 noundef 1, ptr noundef nonnull %i.a) #13
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !11
  %i.bc = call i32 @rb_cmpint(i64 noundef %i.ba, i64 noundef %i.e, i64 noundef %i.bb) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %RB_FLOAT_TYPE_P.exit.thread28, %bb.k, %bb.e
  %i.bd = phi i32 [ %i.l, %bb.e ], [ %i.aj, %bb.i ], [ %i.az, %bb.k ], [ %i.bc, %RB_FLOAT_TYPE_P.exit.thread28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.bd
}

declare i64 @rb_check_funcall_default(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_imemo_new(i32 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_uniform_quicksort_intro_2(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, -1) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.rb_uniform_sort_data, align 8 ; 4 uses
  %4 = alloca %struct.rb_uniform_sort_data, align 8 ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 17
  br i1 %i.e, label %tailrecurse._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph164

tailrecurse:                                      ; preds = %bb.ai
  %i.g = icmp samesign ult i64 %i.eb, 272
  br i1 %i.g, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr88.lcssa = phi ptr [ %1, %bb.a ], [ %.us-phi114, %tailrecurse ] ; 2 uses
  %.lcssa98 = phi i64 [ %i.c, %bb.a ], [ %i.eb, %tailrecurse ]
  %i.h = icmp sgt i64 %.lcssa98, 16
  %.036.i = getelementptr i8, ptr %0, i64 16      ; 2 uses
  %i.i = icmp ult ptr %.036.i, %.tr88.lcssa
  %or.cond.i = and i1 %i.i, %i.h
  br i1 %or.cond.i, label %.lr.ph41.i, label %rb_uniform_insertionsort_2.exit

.lr.ph41.i:                                       ; preds = %tailrecurse._crit_edge, %.loopexit.i
  %.038.i = phi ptr [ %.0.i, %.loopexit.i ], [ %.036.i, %tailrecurse._crit_edge ] ; 10 uses
  %i.j = load <2 x i64>, ptr %.038.i, align 8, !tbaa !11
  %.sroa.0.0.copyload.i = load i64, ptr %.038.i, align 8, !tbaa !11 ; 8 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !54     ; 4 uses
  %i.l = trunc i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.l, label %bb.b, label %.critedge.i.i

bb.b:                                             ; preds = %.lr.ph41.i
  %i.m = trunc i64 %i.k to i1
  br i1 %i.m, label %bb.c, label %rb_uniform_is_less.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %.sroa.0.0.copyload.i, %i.k
  br i1 %i.n, label %.preheader.i, label %.preheader28.split.us.i.preheader

.preheader28.split.us.i.preheader:                ; preds = %rb_uniform_is_less.exit.i, %bb.c
  br label %.preheader28.split.us.i

.critedge.i.i:                                    ; preds = %.lr.ph41.i
  %i.o = tail call i32 @rb_float_cmp(i64 noundef %.sroa.0.0.copyload.i, i64 noundef %i.k) #13
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.preheader.i, label %.preheader28.split.i

.preheader28.split.us.i:                          ; preds = %.preheader28.split.us.i.preheader, %bb.e
  %.1.us.i = phi ptr [ %i.q, %bb.e ], [ %.038.i, %.preheader28.split.us.i.preheader ] ; 4 uses
  %i.q = getelementptr i8, ptr %.1.us.i, i64 -16  ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !54   ; 3 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.d, label %rb_uniform_is_less.exit27.us.i

rb_uniform_is_less.exit27.us.i:                   ; preds = %.preheader28.split.us.i
  %i.t = tail call i32 @rb_float_cmp(i64 noundef %i.r, i64 noundef %.sroa.0.0.copyload.i) #13
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %.loopexit.i

bb.d:                                             ; preds = %.preheader28.split.us.i
  %i.v = icmp slt i64 %.sroa.0.0.copyload.i, %i.r
  br i1 %i.v, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %bb.d, %rb_uniform_is_less.exit27.us.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.us.i, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !99
  br label %.preheader28.split.us.i, !llvm.loop !100

.preheader28.split.i:                             ; preds = %.critedge.i.i
  %i.w = getelementptr i8, ptr %.038.i, i64 -16   ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !54
  %i.y = tail call i32 @rb_float_cmp(i64 noundef %.sroa.0.0.copyload.i, i64 noundef %i.x) #13
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.critedge.i25.i, label %.loopexit.i

rb_uniform_is_less.exit.i:                        ; preds = %bb.b
  %i.aa = tail call i32 @rb_float_cmp(i64 noundef %i.k, i64 noundef %.sroa.0.0.copyload.i) #13
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.preheader.i, label %.preheader28.split.us.i.preheader

.preheader.i:                                     ; preds = %rb_uniform_is_less.exit.i, %.critedge.i.i, %bb.c
  %i.ac = icmp ult ptr %0, %.038.i
  br i1 %i.ac, label %.lr.ph34.i, label %.loopexit.i

.lr.ph34.i:                                       ; preds = %.preheader.i, %.lr.ph34.i
  %.02233.i = phi ptr [ %i.ad, %.lr.ph34.i ], [ %.038.i, %.preheader.i ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.02233.i, i64 -16 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.02233.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !99
  %i.ae = icmp ult ptr %0, %i.ad
  br i1 %i.ae, label %.lr.ph34.i, label %.loopexit.i, !llvm.loop !101

.critedge.i25.i:                                  ; preds = %.preheader28.split.i, %.critedge.i25.i
  %i.af = phi ptr [ %i.ag, %.critedge.i25.i ], [ %i.w, %.preheader28.split.i ] ; 4 uses
  %.132.i = phi ptr [ %i.af, %.critedge.i25.i ], [ %.038.i, %.preheader28.split.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.132.i, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !99
  %i.ag = getelementptr i8, ptr %i.af, i64 -16    ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !54
  %i.ai = tail call i32 @rb_float_cmp(i64 noundef %.sroa.0.0.copyload.i, i64 noundef %i.ah) #13
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.critedge.i25.i, label %.loopexit.i, !llvm.loop !100

.loopexit.i:                                      ; preds = %.critedge.i25.i, %bb.d, %rb_uniform_is_less.exit27.us.i, %.lr.ph34.i, %.preheader.i, %.preheader28.split.i
  %.2.i = phi ptr [ %i.ad, %.lr.ph34.i ], [ %.038.i, %.preheader.i ], [ %.038.i, %.preheader28.split.i ], [ %.1.us.i, %bb.d ], [ %.1.us.i, %rb_uniform_is_less.exit27.us.i ], [ %i.af, %.critedge.i25.i ]
  store <2 x i64> %i.j, ptr %.2.i, align 8, !tbaa !11
  %.0.i = getelementptr i8, ptr %.038.i, i64 16   ; 2 uses
  %i.ak = icmp ult ptr %.0.i, %.tr88.lcssa
  br i1 %i.ak, label %.lr.ph41.i, label %rb_uniform_insertionsort_2.exit, !llvm.loop !102

.lr.ph:                                           ; preds = %tailrecurse
  %i.al = add i64 %.tr89117162, -1                ; 2 uses
  %i.am = lshr exact i64 %i.eb, 4                 ; 2 uses
  %i.an = icmp eq i64 %i.al, 0
  br i1 %i.an, label %.lr.ph._crit_edge, label %.lr.ph164

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa156 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.am, %.lr.ph ] ; 2 uses
  %i.ao = lshr i64 %.lcssa156, 1
  %.pre.i = add nsw i64 %.lcssa156, -1            ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph._crit_edge, %.lr.ph.i
  %.01721.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %i.ao, %.lr.ph._crit_edge ]
  %i.ap = add nsw i64 %.01721.i, -1               ; 3 uses
  tail call fastcc void @rb_uniform_heap_down_2(ptr noundef %0, i64 noundef %i.ap, i64 noundef %.pre.i)
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %.lr.ph25.i, label %.lr.ph.i, !llvm.loop !103

.lr.ph25.i:                                       ; preds = %.lr.ph.i, %.lr.ph25.i
  %.023.i = phi i64 [ %i.ar, %.lr.ph25.i ], [ %.pre.i, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !99
  %i.aq = getelementptr [16 x i8], ptr %0, i64 %.023.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ar = add i64 %.023.i, -1                     ; 3 uses
  tail call fastcc void @rb_uniform_heap_down_2(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.ar)
  %.not19.i = icmp eq i64 %i.ar, 0
  br i1 %.not19.i, label %rb_uniform_insertionsort_2.exit, label %.lr.ph25.i, !llvm.loop !104

.lr.ph164:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.tr88116163 = phi ptr [ %.us-phi114, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.tr89117162 = phi i64 [ %i.al, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.as = phi i64 [ %i.ea, %.lr.ph ], [ %i.b, %.lr.ph.preheader ]
  %i.at = phi i64 [ %i.am, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.au = load i64, ptr %0, align 8, !tbaa !54    ; 4 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr [16 x i8], ptr %0, i64 %i.av ; 9 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !54 ; 4 uses
  %i.ay = trunc i64 %i.au to i1
  br i1 %i.ay, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph164
  %i.az = trunc i64 %i.ax to i1
  br i1 %i.az, label %bb.g, label %rb_uniform_is_less.exit

bb.g:                                             ; preds = %bb.f
  %i.ba = icmp slt i64 %i.au, %i.ax
  br i1 %i.ba, label %bb.h, label %bb.o

.critedge.i:                                      ; preds = %.lr.ph164
  %i.bb = tail call i32 @rb_float_cmp(i64 noundef %i.au, i64 noundef %i.ax) #13
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.h, label %bb.o

rb_uniform_is_less.exit:                          ; preds = %bb.f
  %i.bd = tail call i32 @rb_float_cmp(i64 noundef %i.ax, i64 noundef %i.au) #13
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.critedge.i, %bb.g, %rb_uniform_is_less.exit
  %i.bf = load i64, ptr %i.aw, align 8, !tbaa !54 ; 4 uses
  %i.bg = getelementptr i8, ptr %.tr88116163, i64 -16 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !54 ; 4 uses
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %bb.i, label %.critedge.i70

bb.i:                                             ; preds = %bb.h
  %i.bj = trunc i64 %i.bh to i1
  br i1 %i.bj, label %bb.j, label %rb_uniform_is_less.exit72

bb.j:                                             ; preds = %bb.i
  %i.bk = icmp slt i64 %i.bf, %i.bh
  br i1 %i.bk, label %bb.v, label %bb.k

.critedge.i70:                                    ; preds = %bb.h
  %i.bl = tail call i32 @rb_float_cmp(i64 noundef %i.bf, i64 noundef %i.bh) #13
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %bb.k

rb_uniform_is_less.exit72:                        ; preds = %bb.i
  %i.bn = tail call i32 @rb_float_cmp(i64 noundef %i.bh, i64 noundef %i.bf) #13
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %bb.v, label %bb.k

bb.k:                                             ; preds = %.critedge.i70, %bb.j, %rb_uniform_is_less.exit72
  %i.bp = load i64, ptr %i.bg, align 8, !tbaa !54 ; 4 uses
  %i.bq = load i64, ptr %0, align 8, !tbaa !54    ; 4 uses
  %i.br = trunc i64 %i.bp to i1
  br i1 %i.br, label %bb.l, label %.critedge.i73

bb.l:                                             ; preds = %bb.k
  %i.bs = trunc i64 %i.bq to i1
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bt = icmp slt i64 %i.bp, %i.bq
  br label %rb_uniform_is_less.exit75

bb.n:                                             ; preds = %bb.l
  %i.bu = tail call i32 @rb_float_cmp(i64 noundef %i.bq, i64 noundef %i.bp) #13
  %i.bv = icmp sgt i32 %i.bu, 0
  br label %rb_uniform_is_less.exit75

.critedge.i73:                                    ; preds = %bb.k
  %i.bw = tail call i32 @rb_float_cmp(i64 noundef %i.bp, i64 noundef %i.bq) #13
  %i.bx = icmp slt i32 %i.bw, 0
  br label %rb_uniform_is_less.exit75

rb_uniform_is_less.exit75:                        ; preds = %bb.m, %bb.n, %.critedge.i73
  %.0.i74 = phi i1 [ %i.bt, %bb.m ], [ %i.bv, %bb.n ], [ %i.bx, %.critedge.i73 ]
  %. = select i1 %.0.i74, ptr %0, ptr %i.bg
  br label %bb.v

bb.o:                                             ; preds = %.critedge.i, %bb.g, %rb_uniform_is_less.exit
  %i.by = getelementptr i8, ptr %.tr88116163, i64 -16 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !54 ; 4 uses
  %i.ca = load i64, ptr %i.aw, align 8, !tbaa !54 ; 4 uses
  %i.cb = trunc i64 %i.bz to i1
  br i1 %i.cb, label %bb.p, label %.critedge.i76

bb.p:                                             ; preds = %bb.o
  %i.cc = trunc i64 %i.ca to i1
  br i1 %i.cc, label %bb.q, label %rb_uniform_is_less.exit78

bb.q:                                             ; preds = %bb.p
  %i.cd = icmp slt i64 %i.bz, %i.ca
  br i1 %i.cd, label %bb.v, label %bb.r

.critedge.i76:                                    ; preds = %bb.o
  %i.ce = tail call i32 @rb_float_cmp(i64 noundef %i.bz, i64 noundef %i.ca) #13
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.v, label %bb.r

rb_uniform_is_less.exit78:                        ; preds = %bb.p
  %i.cg = tail call i32 @rb_float_cmp(i64 noundef %i.ca, i64 noundef %i.bz) #13
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %bb.v, label %bb.r

bb.r:                                             ; preds = %.critedge.i76, %bb.q, %rb_uniform_is_less.exit78
  %i.ci = load i64, ptr %0, align 8, !tbaa !54    ; 4 uses
  %i.cj = load i64, ptr %i.by, align 8, !tbaa !54 ; 4 uses
  %i.ck = trunc i64 %i.ci to i1
  br i1 %i.ck, label %bb.s, label %.critedge.i79

bb.s:                                             ; preds = %bb.r
  %i.cl = trunc i64 %i.cj to i1
  br i1 %i.cl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = icmp slt i64 %i.ci, %i.cj
  br label %rb_uniform_is_less.exit81

bb.u:                                             ; preds = %bb.s
  %i.cn = tail call i32 @rb_float_cmp(i64 noundef %i.cj, i64 noundef %i.ci) #13
  %i.co = icmp sgt i32 %i.cn, 0
  br label %rb_uniform_is_less.exit81

.critedge.i79:                                    ; preds = %bb.r
  %i.cp = tail call i32 @rb_float_cmp(i64 noundef %i.ci, i64 noundef %i.cj) #13
  %i.cq = icmp slt i32 %i.cp, 0
  br label %rb_uniform_is_less.exit81

rb_uniform_is_less.exit81:                        ; preds = %bb.t, %bb.u, %.critedge.i79
  %.0.i80 = phi i1 [ %i.cm, %bb.t ], [ %i.co, %bb.u ], [ %i.cq, %.critedge.i79 ]
  %.67 = select i1 %.0.i80, ptr %0, ptr %i.by
  br label %bb.v

bb.v:                                             ; preds = %.critedge.i76, %bb.q, %.critedge.i70, %bb.j, %rb_uniform_is_less.exit81, %rb_uniform_is_less.exit78, %rb_uniform_is_less.exit75, %rb_uniform_is_less.exit72
  %.in = phi ptr [ %i.aw, %rb_uniform_is_less.exit72 ], [ %i.aw, %rb_uniform_is_less.exit78 ], [ %., %rb_uniform_is_less.exit75 ], [ %.67, %rb_uniform_is_less.exit81 ], [ %i.aw, %bb.j ], [ %i.aw, %.critedge.i70 ], [ %i.aw, %bb.q ], [ %i.aw, %.critedge.i76 ]
  %i.cr = load i64, ptr %.in, align 8, !tbaa !54
  %.fr119 = freeze i64 %i.cr                      ; 8 uses
  %i.cs = getelementptr i8, ptr %.tr88116163, i64 -16 ; 2 uses
  %i.ct = trunc i64 %.fr119 to i1
  br i1 %i.ct, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.v, %bb.x
  %.061.us = phi ptr [ %.263.us, %bb.x ], [ %0, %bb.v ]
  %.0.us = phi ptr [ %.2.us, %bb.x ], [ %i.cs, %bb.v ]
  br label %bb.y

bb.w:                                             ; preds = %.split105.us109
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.162.us.us, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.162.us.us, ptr noundef nonnull align 8 dereferenceable(16) %.1.us.us, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.us.us, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cu = getelementptr i8, ptr %.162.us.us, i64 16
  %i.cv = getelementptr i8, ptr %.1.us.us, i64 -16
  br label %bb.x

bb.x:                                             ; preds = %.split105.us109, %bb.w
  %.263.us = phi ptr [ %i.cu, %bb.w ], [ %.162.us.us, %.split105.us109 ] ; 3 uses
  %.2.us = phi ptr [ %i.cv, %bb.w ], [ %.1.us.us, %.split105.us109 ] ; 3 uses
  %.not66.us = icmp ugt ptr %.263.us, %.2.us
  br i1 %.not66.us, label %.split113.us, label %.split.us.us, !llvm.loop !105

bb.y:                                             ; preds = %bb.aa, %.split.us.us
  %.162.us.us = phi ptr [ %.061.us, %.split.us.us ], [ %i.db, %bb.aa ] ; 7 uses
  %i.cw = load i64, ptr %.162.us.us, align 8, !tbaa !54 ; 3 uses
  %i.cx = trunc i64 %i.cw to i1
  br i1 %i.cx, label %bb.z, label %.critedge.i82.us.us

.critedge.i82.us.us:                              ; preds = %bb.y
  %i.cy = tail call i32 @rb_float_cmp(i64 noundef %i.cw, i64 noundef %.fr119) #13
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.aa, label %.preheader.split103.us.us.preheader

bb.z:                                             ; preds = %bb.y
  %i.da = icmp slt i64 %i.cw, %.fr119
  br i1 %i.da, label %bb.aa, label %.preheader.split103.us.us.preheader

.preheader.split103.us.us.preheader:              ; preds = %.critedge.i82.us.us, %bb.z
  br label %.preheader.split103.us.us

bb.aa:                                            ; preds = %bb.z, %.critedge.i82.us.us
  %i.db = getelementptr i8, ptr %.162.us.us, i64 16
  br label %bb.y, !llvm.loop !106

.split105.us109:                                  ; preds = %rb_uniform_is_less.exit87.us.us, %bb.ab
  %.not.us = icmp ugt ptr %.162.us.us, %.1.us.us
  br i1 %.not.us, label %bb.x, label %bb.w

.preheader.split103.us.us:                        ; preds = %.preheader.split103.us.us.preheader, %bb.ac
  %.1.us.us = phi ptr [ %i.dh, %bb.ac ], [ %.0.us, %.preheader.split103.us.us.preheader ] ; 7 uses
  %i.dc = load i64, ptr %.1.us.us, align 8, !tbaa !54 ; 3 uses
  %i.dd = trunc i64 %i.dc to i1
  br i1 %i.dd, label %bb.ab, label %rb_uniform_is_less.exit87.us.us

rb_uniform_is_less.exit87.us.us:                  ; preds = %.preheader.split103.us.us
  %i.de = tail call i32 @rb_float_cmp(i64 noundef %i.dc, i64 noundef %.fr119) #13
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.ac, label %.split105.us109

bb.ab:                                            ; preds = %.preheader.split103.us.us
  %i.dg = icmp slt i64 %.fr119, %i.dc
  br i1 %i.dg, label %bb.ac, label %.split105.us109

bb.ac:                                            ; preds = %bb.ab, %rb_uniform_is_less.exit87.us.us
  %i.dh = getelementptr i8, ptr %.1.us.us, i64 -16
  br label %.preheader.split103.us.us, !llvm.loop !107

.split:                                           ; preds = %bb.v, %bb.ag
  %.061 = phi ptr [ %.263, %bb.ag ], [ %0, %bb.v ]
  %.0 = phi ptr [ %.2, %bb.ag ], [ %i.cs, %bb.v ]
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.split
  %.162 = phi ptr [ %.061, %.split ], [ %i.do, %bb.ae ] ; 7 uses
  %i.di = load i64, ptr %.162, align 8, !tbaa !54 ; 3 uses
  %i.dj = trunc i64 %i.di to i1
  br i1 %i.dj, label %rb_uniform_is_less.exit84, label %.critedge.i82

rb_uniform_is_less.exit84:                        ; preds = %bb.ad
  %i.dk = tail call i32 @rb_float_cmp(i64 noundef %.fr119, i64 noundef %i.di) #13
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.ae, label %.critedge.i85.preheader

.critedge.i85.preheader:                          ; preds = %.critedge.i82, %rb_uniform_is_less.exit84
  br label %.critedge.i85

.critedge.i82:                                    ; preds = %bb.ad
  %i.dm = tail call i32 @rb_float_cmp(i64 noundef %i.di, i64 noundef %.fr119) #13
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %bb.ae, label %.critedge.i85.preheader

bb.ae:                                            ; preds = %.critedge.i82, %rb_uniform_is_less.exit84
  %i.do = getelementptr i8, ptr %.162, i64 16
  br label %bb.ad, !llvm.loop !106

.critedge.i85:                                    ; preds = %.critedge.i85.preheader, %.critedge.i85
  %.1 = phi ptr [ %i.ds, %.critedge.i85 ], [ %.0, %.critedge.i85.preheader ] ; 7 uses
  %i.dp = load i64, ptr %.1, align 8, !tbaa !54
  %i.dq = tail call i32 @rb_float_cmp(i64 noundef %.fr119, i64 noundef %i.dp) #13
  %i.dr = icmp slt i32 %i.dq, 0
  %i.ds = getelementptr i8, ptr %.1, i64 -16
  br i1 %i.dr, label %.critedge.i85, label %.split105.us, !llvm.loop !107

.split105.us:                                     ; preds = %.critedge.i85
  %.not = icmp ugt ptr %.162, %.1
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.split105.us
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.162, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.162, ptr noundef nonnull align 8 dereferenceable(16) %.1, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.dt = getelementptr i8, ptr %.162, i64 16
  %i.du = getelementptr i8, ptr %.1, i64 -16
  br label %bb.ag

bb.ag:                                            ; preds = %.split105.us, %bb.af
  %.263 = phi ptr [ %i.dt, %bb.af ], [ %.162, %.split105.us ] ; 3 uses
  %.2 = phi ptr [ %i.du, %bb.af ], [ %.1, %.split105.us ] ; 3 uses
  %.not66 = icmp ugt ptr %.263, %.2
  br i1 %.not66, label %.split113.us, label %.split, !llvm.loop !105

.split113.us:                                     ; preds = %bb.ag, %bb.x
  %.us-phi114 = phi ptr [ %.263.us, %bb.x ], [ %.263, %bb.ag ] ; 3 uses
  %.us-phi115 = phi ptr [ %.2.us, %bb.x ], [ %.2, %bb.ag ]
  %i.dv = getelementptr i8, ptr %.us-phi115, i64 16 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.as, %i.dw
  %i.dy = icmp sgt i64 %i.dx, 16
  br i1 %i.dy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.split113.us
  %i.dz = add i64 %.tr89117162, -1
  tail call fastcc void @rb_uniform_quicksort_intro_2(ptr noundef %i.dv, ptr noundef %.tr88116163, i64 noundef %i.dz)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.split113.us
  %i.ea = ptrtoint ptr %.us-phi114 to i64         ; 2 uses
  %i.eb = sub i64 %i.ea, %i.a                     ; 4 uses
  %i.ec = icmp sgt i64 %i.eb, 16
  br i1 %i.ec, label %tailrecurse, label %rb_uniform_insertionsort_2.exit

rb_uniform_insertionsort_2.exit:                  ; preds = %bb.ai, %.lr.ph25.i, %.loopexit.i, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @rb_uniform_heap_down_2(ptr noundef captures(none) %0, i64 noundef range(i64 0, 9223372036854775807) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr [16 x i8], ptr %0, i64 %1  ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !11
  %.sroa.0.0.copyload.fr = freeze i64 %.sroa.0.0.copyload ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  %i.b = shl nuw i64 %1, 1                        ; 4 uses
  %.not.not28 = icmp ult i64 %i.b, %2
  br i1 %.not.not28, label %.lr.ph, label %.critedge.i25._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = or disjoint i64 %i.b, 1                  ; 2 uses
  %i.d = trunc i64 %.sroa.0.0.copyload.fr to i1
  br i1 %i.d, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %i.e = phi i64 [ %i.ab, %bb.h ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.f = phi i64 [ %i.aa, %bb.h ], [ %i.b, %.lr.ph ]
  %.029.us = phi i64 [ %.022.us, %bb.h ], [ %1, %.lr.ph ] ; 3 uses
  %i.g = icmp ult i64 %i.e, %2
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.h = getelementptr [16 x i8], ptr %0, i64 %i.e
  %i.i = load i64, ptr %i.h, align 8, !tbaa !54   ; 4 uses
  %i.j = add nuw i64 %i.f, 2                      ; 2 uses
  %i.k = getelementptr [16 x i8], ptr %0, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54   ; 4 uses
  %i.m = trunc i64 %i.i to i1
  br i1 %i.m, label %bb.c, label %.critedge.i.us

.critedge.i.us:                                   ; preds = %bb.b
  %i.n = tail call i32 @rb_float_cmp(i64 noundef %i.i, i64 noundef %i.l) #13
  %i.o = icmp slt i32 %i.n, 0
  br label %rb_uniform_is_less.exit.us

bb.c:                                             ; preds = %bb.b
  %i.p = trunc i64 %i.l to i1
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @rb_float_cmp(i64 noundef %i.l, i64 noundef %i.i) #13
  %i.r = icmp sgt i32 %i.q, 0
  br label %rb_uniform_is_less.exit.us

bb.e:                                             ; preds = %bb.c
  %i.s = icmp slt i64 %i.i, %i.l
  br label %rb_uniform_is_less.exit.us

rb_uniform_is_less.exit.us:                       ; preds = %bb.e, %bb.d, %.critedge.i.us
  %.0.i.us = phi i1 [ %i.s, %bb.e ], [ %i.r, %bb.d ], [ %i.o, %.critedge.i.us ]
  %spec.select.us = select i1 %.0.i.us, i64 %i.j, i64 %i.e
  br label %bb.f

bb.f:                                             ; preds = %rb_uniform_is_less.exit.us, %.lr.ph.split.us
  %.022.us = phi i64 [ %i.e, %.lr.ph.split.us ], [ %spec.select.us, %rb_uniform_is_less.exit.us ] ; 4 uses
  %i.t = getelementptr [16 x i8], ptr %0, i64 %.022.us ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !54   ; 3 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %rb_uniform_is_less.exit27.us

rb_uniform_is_less.exit27.us:                     ; preds = %bb.f
  %i.w = tail call i32 @rb_float_cmp(i64 noundef %i.u, i64 noundef %.sroa.0.0.copyload.fr) #13
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %.critedge.i25._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.y = icmp slt i64 %.sroa.0.0.copyload.fr, %i.u
  br i1 %i.y, label %bb.h, label %.critedge.i25._crit_edge

bb.h:                                             ; preds = %bb.g, %rb_uniform_is_less.exit27.us
  %i.z = getelementptr [16 x i8], ptr %0, i64 %.029.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !99
  %i.aa = shl i64 %.022.us, 1                     ; 3 uses
  %i.ab = or disjoint i64 %i.aa, 1
  %.not.not.us = icmp ult i64 %i.aa, %2
  br i1 %.not.not.us, label %.lr.ph.split.us, label %.critedge.i25._crit_edge, !llvm.loop !108

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %i.ac = phi i64 [ %i.ax, %bb.m ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.ad = phi i64 [ %i.aw, %bb.m ], [ %i.b, %.lr.ph ]
  %.029 = phi i64 [ %.022, %bb.m ], [ %1, %.lr.ph ] ; 2 uses
  %i.ae = icmp ult i64 %i.ac, %2
  br i1 %i.ae, label %bb.i, label %.critedge.i25

bb.i:                                             ; preds = %.lr.ph.split
  %i.af = getelementptr [16 x i8], ptr %0, i64 %i.ac
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !54 ; 4 uses
  %i.ah = add nuw i64 %i.ad, 2                    ; 2 uses
  %i.ai = getelementptr [16 x i8], ptr %0, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !54 ; 4 uses
  %i.ak = trunc i64 %i.ag to i1
  br i1 %i.ak, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.al = trunc i64 %i.aj to i1
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = icmp slt i64 %i.ag, %i.aj
  br label %rb_uniform_is_less.exit

bb.l:                                             ; preds = %bb.j
  %i.an = tail call i32 @rb_float_cmp(i64 noundef %i.aj, i64 noundef %i.ag) #13
  %i.ao = icmp sgt i32 %i.an, 0
  br label %rb_uniform_is_less.exit

.critedge.i:                                      ; preds = %bb.i
  %i.ap = tail call i32 @rb_float_cmp(i64 noundef %i.ag, i64 noundef %i.aj) #13
  %i.aq = icmp slt i32 %i.ap, 0
  br label %rb_uniform_is_less.exit

rb_uniform_is_less.exit:                          ; preds = %bb.k, %bb.l, %.critedge.i
  %.0.i = phi i1 [ %i.am, %bb.k ], [ %i.ao, %bb.l ], [ %i.aq, %.critedge.i ]
  %spec.select = select i1 %.0.i, i64 %i.ah, i64 %i.ac
  br label %.critedge.i25

.critedge.i25:                                    ; preds = %rb_uniform_is_less.exit, %.lr.ph.split
  %.022 = phi i64 [ %i.ac, %.lr.ph.split ], [ %spec.select, %rb_uniform_is_less.exit ] ; 4 uses
  %i.ar = getelementptr [16 x i8], ptr %0, i64 %.022 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !54
  %i.at = tail call i32 @rb_float_cmp(i64 noundef %.sroa.0.0.copyload.fr, i64 noundef %i.as) #13
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.m, label %.critedge.i25._crit_edge

bb.m:                                             ; preds = %.critedge.i25
  %i.av = getelementptr [16 x i8], ptr %0, i64 %.029
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !99
  %i.aw = shl i64 %.022, 1                        ; 3 uses
  %i.ax = or disjoint i64 %i.aw, 1
  %.not.not = icmp ult i64 %i.aw, %2
  br i1 %.not.not, label %.lr.ph.split, label %.critedge.i25._crit_edge, !llvm.loop !108

.critedge.i25._crit_edge:                         ; preds = %bb.m, %.critedge.i25, %bb.h, %rb_uniform_is_less.exit27.us, %bb.g, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %.029.us, %bb.g ], [ %.029.us, %rb_uniform_is_less.exit27.us ], [ %.022.us, %bb.h ], [ %.022, %bb.m ], [ %.029, %.critedge.i25 ]
  %i.ay = getelementptr [16 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  store i64 %.sroa.0.0.copyload.fr, ptr %i.ay, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx2, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @enum_grep0(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 0, 21) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_ary_new() #13          ; 2 uses
  %i.b = tail call i64 @rb_imemo_new(i32 noundef 5, i64 noundef 0, i64 noundef 40, i1 noundef zeroext false) #13 ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  store i64 %1, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %i.c, i64 24
  store i64 %i.a, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %i.c, i64 32
  store i64 %2, ptr %i.f, align 8, !tbaa !23
  %i.g = tail call i32 @rb_block_given_p() #13
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

end_hunk_1
