Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/common?download=true
inline.NumInlined: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slurmdb_qos_cond_t = type { ptr, i16, ptr, ptr, ptr, i16 }

@sort_user_tres_id = dso_local global i32 1, align 4
@time_format = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.0lf\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%.2lf%%\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%lu(%.2lf%%)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%.0lf(%.2lf%%)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"common.c\00", align 1
@__func__.strip_quotes = private unnamed_addr constant [13 x i8] c"strip_quotes\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"No list was given to fill in\00", align 1
@__func__.addto_char_list = private unnamed_addr constant [16 x i8] c"addto_char_list\00", align 1
@sort_flag = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Problem with strip_quotes\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Invalid value for %s (%s)\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"No cluster TRES %s%s%s(%d)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"No TRES %s%s%s(%d)\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"No TRES %s%s%s(%d) usage\00", align 1
@tres_list = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [64 x i8] c"%s: unknown type of slurmdb_report_cluster given for cluster %s\00", align 1
@__func__.sreport_set_usage_column_width = private unnamed_addr constant [31 x i8] c"sreport_set_usage_column_width\00", align 1
@g_qos_list = external local_unnamed_addr global ptr, align 8
@db_conn = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @sreport_get_time_str(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 1) ; 4 uses
  %.not = icmp eq i64 %0, 4294967294
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = uitofp i64 %0 to double                  ; 9 uses
  %i.b = load i32, ptr @time_format, align 4
  switch i32 %i.b, label %bb.j [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str, i64 noundef %0) #10
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = fdiv double %i.a, 6.000000e+01
  %i.e = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.1, double noundef %i.d) #10
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.f = fdiv double %i.a, 3.600000e+03
  %i.g = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.1, double noundef %i.f) #10
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.h = uitofp i64 %spec.store.select to double
  %i.i = fdiv double %i.a, %i.h
  %i.j = fmul double %i.i, 1.000000e+02
  %i.k = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.2, double noundef %i.j) #10
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.l = uitofp i64 %spec.store.select to double
  %i.m = fdiv double %i.a, %i.l
  %i.n = fmul double %i.m, 1.000000e+02
  %i.o = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.3, i64 noundef %0, double noundef %i.n) #10
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.p = uitofp i64 %spec.store.select to double
  %i.q = fdiv double %i.a, %i.p
  %i.r = fmul double %i.q, 1.000000e+02
  %i.s = fdiv double %i.a, 6.000000e+01
  %i.t = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.4, double noundef %i.s, double noundef %i.r) #10
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.u = uitofp i64 %spec.store.select to double
  %i.v = fdiv double %i.a, %i.u
  %i.w = fmul double %i.v, 1.000000e+02
  %i.x = fdiv double %i.a, 3.600000e+03
  %i.y = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.4, double noundef %i.x, double noundef %i.w) #10
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.z = fdiv double %i.a, 6.000000e+01
  %i.aa = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.1, double noundef %i.z) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.aa, %bb.j ], [ %i.c, %bb.c ], [ %i.e, %bb.d ], [ %i.g, %bb.e ], [ %i.k, %bb.f ], [ %i.o, %bb.g ], [ %i.t, %bb.h ], [ %i.y, %bb.i ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @xstrdup_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @parse_option_end(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  switch i8 %i.b, label %bb.b [
    i8 0, label %.critedge
    i8 61, label %.critedge
  ]

bb.b:                                             ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %.preheader, !llvm.loop !12

.critedge:                                        ; preds = %.preheader, %.preheader
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %.not14 = icmp eq i8 %i.b, 0
  %i.d = add nuw nsw i32 %i.c, 1
  %spec.select = select i1 %.not14, i32 0, i32 %i.d
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.a
  %.010 = phi i32 [ %spec.select, %.critedge ], [ 0, %bb.a ]
  ret i32 %.010
}

; Function Attrs: nounwind uwtable
define dso_local i64 @sanity_check_endtime(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @time(ptr noundef null) #10
  %spec.select = tail call i64 @llvm.smin.i64(i64 %0, i64 %i.a)
  ret i64 %spec.select
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @strip_quotes(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %switch.selectcmp.case1 = icmp eq i8 %i.a, 34   ; 2 uses
  %switch.selectcmp.case2 = icmp eq i8 %i.a, 39   ; 2 uses
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2 ; 2 uses
  %.neg = sext i1 %switch.selectcmp to i32
  %i.b = or i1 %switch.selectcmp.case2, %switch.selectcmp.case1
  %umax = zext i1 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %umax, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1
  switch i8 %i.d, label %bb.d [
    i8 0, label %.loopexit.loopexit
    i8 34, label %.loopexit
    i8 39, label %.loopexit
  ]

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.c, !llvm.loop !0

.loopexit.loopexit:                               ; preds = %bb.c
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.c, %.loopexit.loopexit
  %.028 = phi i32 [ 0, %.loopexit.loopexit ], [ 1, %bb.c ], [ 1, %bb.c ]
  %i.e = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.f = add i32 %.neg, %i.e                      ; 2 uses
  %i.g = add nuw nsw i32 %i.f, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.h, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 154, ptr noundef nonnull @__func__.strip_quotes) #10 ; 3 uses
  %i.j = zext i1 %switch.selectcmp to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = zext nneg i32 %i.f to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.k, i64 %i.l, i1 false)
  %.not36 = icmp eq ptr %1, null
  br i1 %.not36, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.m = add nuw nsw i32 %.028, %i.e
  %i.n = load i32, ptr %1, align 4
  %i.o = add nsw i32 %i.m, %i.n
  store i32 %i.o, ptr %1, align 4
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.e, %bb.a
  %.029 = phi ptr [ null, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %.loopexit ]
  ret ptr %.029
}

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @addto_char_list(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.6) #10 ; 0 uses
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @list_iterator_create(ptr noundef nonnull %0) #10 ; 4 uses
  %.not56 = icmp eq ptr %1, null
  br i1 %.not56, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i8, ptr %1, align 1                 ; 2 uses
  %switch.selectcmp.case1 = icmp eq i8 %i.d, 34
  %switch.selectcmp.case2 = icmp eq i8 %i.d, 39
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.e = zext i1 %switch.selectcmp to i32         ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.m, %bb.d
  %.146 = phi i32 [ %i.e, %bb.d ], [ %i.u, %bb.m ] ; 5 uses
  %.0 = phi i32 [ %i.e, %bb.d ], [ %.1, %bb.m ]   ; 5 uses
  %i.f = sext i32 %.146 to i64
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %bb.m [
    i8 0, label %bb.n
    i8 34, label %bb.n
    i8 39, label %bb.n
    i8 44, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = sub nsw i32 %.146, %.0                   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw nsw i32 %i.i, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.l, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 184, ptr noundef nonnull @__func__.addto_char_list) #10 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8
  %i.n = sext i32 %.0 to i64
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  %i.p = zext nneg i32 %i.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.o, i64 %i.p, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.q = call ptr @list_next(ptr noundef %i.c) #10 ; 2 uses
  %.not58 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %i.a, align 8              ; 2 uses
  br i1 %.not58, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = call i32 @xstrcasecmp(ptr noundef nonnull %i.q, ptr noundef %i.r) #10
  %.not59 = icmp eq i32 %i.s, 0
  br i1 %.not59, label %bb.j, label %bb.h, !llvm.loop !13

.critedge:                                        ; preds = %bb.h
  call void @list_append(ptr noundef nonnull %0, ptr noundef %i.r) #10
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @slurm_xfree(ptr noundef nonnull %i.a) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge
  call void @list_iterator_reset(ptr noundef %i.c) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.t = add nsw i32 %.146, 1                     ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.l
  %.2 = phi i32 [ %i.t, %bb.l ], [ %.146, %bb.e ]
  %.1 = phi i32 [ %i.t, %bb.l ], [ %.0, %bb.e ]
  %i.u = add nsw i32 %.2, 1
  br label %bb.e, !llvm.loop !14

bb.n:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.v = sub nsw i32 %.146, %.0                   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.x = add nuw nsw i32 %i.v, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.y, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 205, ptr noundef nonnull @__func__.addto_char_list) #10 ; 2 uses
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = sext i32 %.0 to i64
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = zext nneg i32 %i.v to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.ab, i64 %i.ac, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.ad = call ptr @list_next(ptr noundef %i.c) #10 ; 2 uses
  %.not60 = icmp eq ptr %i.ad, null
  %i.ae = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %.not60, label %.critedge63, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = call i32 @xstrcasecmp(ptr noundef nonnull %i.ad, ptr noundef %i.ae) #10
  %.not61 = icmp eq i32 %i.af, 0
  br i1 %.not61, label %bb.r, label %bb.p, !llvm.loop !15

.critedge63:                                      ; preds = %bb.p
  call void @list_append(ptr noundef nonnull %0, ptr noundef %i.ae) #10
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @slurm_xfree(ptr noundef nonnull %i.a) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r, %.critedge63, %bb.c
  call void @list_iterator_destroy(ptr noundef %i.c) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

declare ptr @list_iterator_create(ptr noundef) local_unnamed_addr #2

declare ptr @list_next(ptr noundef) local_unnamed_addr #2

declare i32 @xstrcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @list_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

declare void @list_iterator_reset(ptr noundef) local_unnamed_addr #2

declare void @list_iterator_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
end_hunk_0
