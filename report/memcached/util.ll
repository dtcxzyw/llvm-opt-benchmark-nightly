Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/util?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@uriencode_str = internal global [768 x i8] zeroinitializer, align 16
@uriencode_map = internal unnamed_addr global [256 x ptr] zeroinitializer, align 16
@.str = private unnamed_addr constant [9 x i8] c"%%%02hhX\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"out != NULL\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"util.c\00", align 1
@__PRETTY_FUNCTION__.safe_strtoull = private unnamed_addr constant [46 x i8] c"_Bool safe_strtoull(const char *, uint64_t *)\00", align 1
@__PRETTY_FUNCTION__.safe_strtoull_hex = private unnamed_addr constant [50 x i8] c"_Bool safe_strtoull_hex(const char *, uint64_t *)\00", align 1
@__PRETTY_FUNCTION__.safe_strtoll = private unnamed_addr constant [44 x i8] c"_Bool safe_strtoll(const char *, int64_t *)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@__PRETTY_FUNCTION__.safe_strtoul = private unnamed_addr constant [45 x i8] c"_Bool safe_strtoul(const char *, uint32_t *)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@__PRETTY_FUNCTION__.safe_strtol = private unnamed_addr constant [43 x i8] c"_Bool safe_strtol(const char *, int32_t *)\00", align 1
@__PRETTY_FUNCTION__.safe_strtod = private unnamed_addr constant [42 x i8] c"_Bool safe_strtod(const char *, double *)\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @uriencode_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__ctype_b_loc() #18
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 6 uses
  %.023 = phi ptr [ @uriencode_str, %bb.a ], [ %.1, %bb.e ] ; 4 uses
  %0 = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.c = load i16, ptr %i.b, align 2, !tbaa !16
  %.fr20 = freeze i16 %i.c
  %i.d = and i16 %.fr20, 8
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %switch.early.test, label %bb.c

switch.early.test:                                ; preds = %bb.b
  %trunc = trunc i64 %indvars.iv to i8
  switch i8 %trunc, label %bb.d [
    i8 126, label %bb.c
    i8 95, label %bb.c
    i8 46, label %bb.c
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @uriencode_map, i64 %indvars.iv
  store ptr null, ptr %i.e, align 8, !tbaa !18
  br label %bb.e

bb.d:                                             ; preds = %switch.early.test
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.023, i64 noundef 4, ptr noundef nonnull @.str, i32 noundef %i.f) #19 ; 0 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @uriencode_map, i64 %indvars.iv
  store ptr %.023, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.023, i64 3
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi ptr [ %.023, %bb.c ], [ %i.i, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !24

bb.f:                                             ; preds = %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @uriencode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %.026 = phi i64 [ %i.j, %bb.e ], [ 0, %bb.a ]   ; 3 uses
  %i.b = add i64 %.026, 4
  %i.c = icmp ugt i64 %i.b, %3
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20    ; 2 uses
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @uriencode_map, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.026 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.i, ptr noundef nonnull align 1 dereferenceable(3) %i.h, i64 3, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i8 %i.e, ptr %i.i, align 1, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ 3, %bb.c ], [ 1, %bb.d ]
  %i.j = add i64 %.026, %.sink                    ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.j, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  store i8 0, ptr %i.k, align 1, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge
  %i.l = phi i1 [ true, %._crit_edge ], [ false, %.lr.ph ]
  ret i1 %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @uriencode_p(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not21 = icmp eq i64 %2, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.020 = phi i64 [ %i.g, %bb.d ], [ 0, %bb.a ]   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.b = load i8, ptr %i.a, align 1, !tbaa !20    ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @uriencode_map, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.020 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) %i.e, i64 3, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  store i8 %i.b, ptr %i.f, align 1, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ 3, %bb.b ], [ 1, %bb.c ]
  %i.g = add i64 %.020, %.sink                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @safe_strtoull(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 68, ptr noundef nonnull @__PRETTY_FUNCTION__.safe_strtoull) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #18    ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !21
  store i64 0, ptr %1, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = call i64 @strtoull(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 10) #19 ; 2 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !21
  %i.e = icmp eq i32 %i.d, 34
  br i1 %i.e, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.g = icmp eq ptr %0, %i.f
  br i1 %i.g, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__ctype_b_loc() #18
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = load i8, ptr %i.f, align 1, !tbaa !20    ; 2 uses
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !16
  %i.n = and i16 %i.m, 8192
  %.not13 = icmp ne i16 %i.n, 0
  %i.o = icmp eq i8 %i.j, 0
  %or.cond = or i1 %i.o, %.not13
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.p = icmp slt i64 %i.c, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = ptrtoint ptr %0 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = tail call ptr @memchr(ptr noundef %0, i32 noundef 45, i64 noundef %i.s) #21
  %.not14 = icmp eq ptr %i.t, null
  br i1 %.not14, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i64 %i.c, ptr %1, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.c, %bb.d, %bb.h
  %.0 = phi i1 [ false, %bb.g ], [ false, %bb.c ], [ true, %bb.h ], [ false, %bb.d ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %.0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoull(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @safe_strtoull_hex(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.safe_strtoull_hex) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #18    ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !21
  store i64 0, ptr %1, align 8, !tbaa !23
end_hunk_0
