Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/sluid?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.timespec = type { i64, i64 }
%struct.slurm_step_id_t = type { i64, i32, i32, i32 }

@sluid_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s: pthread_mutex_lock(): %m\00", align 1
@__func__.sluid_init = private unnamed_addr constant [11 x i8] c"sluid_init\00", align 1
@cluster_bits = internal unnamed_addr global i64 0, align 8
@last_ms = internal unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: pthread_mutex_unlock(): %m\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"clock_gettime(): %m\00", align 1
@__func__.generate_sluid = private unnamed_addr constant [15 x i8] c"generate_sluid\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: cluster_bits unset\00", align 1
@seq = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"sluid.c\00", align 1
@__func__.sluid2str = private unnamed_addr constant [10 x i8] c"sluid2str\00", align 1
@cb32map = internal unnamed_addr constant [33 x i8] c"0123456789ABCDEFGHJKMNPQRSTVWXYZ\00", align 16
@.str.5 = private unnamed_addr constant [31 x i8] c"%08lx-%04lx-%04lx-%04lx-%012lx\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @sluid_init(i16 noundef zeroext %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @sluid_mutex) #10 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #11
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sluid_init) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext i16 %0 to i64
  %i.d = shl i64 %i.c, 52
  store i64 %i.d, ptr @cluster_bits, align 8
  %i.e = mul nsw i64 %1, 1000
  store i64 %i.e, ptr @last_ms, align 8
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @sluid_mutex) #10 ; 2 uses
  %.not7 = icmp eq i32 %i.f, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__errno_location() #11
  store i32 %i.f, ptr %i.g, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.sluid_init) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 1, 0) i64 @generate_sluid() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  %i.a = call i32 @clock_gettime(i32 noundef 11, ptr noundef nonnull %0) #10
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.2) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8
  %i.d = mul nsw i64 %i.c, 1000
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = sdiv i64 %i.f, 1000000
  %i.h = add nsw i64 %i.g, %i.d                   ; 2 uses
  %i.i = call i32 @pthread_mutex_lock(ptr noundef nonnull @sluid_mutex) #10 ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__errno_location() #11
  store i32 %i.i, ptr %i.j, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.generate_sluid) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = load i64, ptr @cluster_bits, align 8     ; 2 uses
  %.not13 = icmp eq i64 %i.k, 0
  br i1 %.not13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.generate_sluid) #12
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = load i64, ptr @last_ms, align 8          ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.h
  br i1 %i.m, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load i64, ptr @seq, align 8
  %i.o = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.o, ptr @seq, align 8
  %i.p = icmp ugt i64 %i.o, 1023
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = add i64 %i.l, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.i
  %.sink = phi i64 [ %i.q, %bb.i ], [ %i.h, %bb.g ] ; 2 uses
  store i64 %.sink, ptr @last_ms, align 8
  store i64 0, ptr @seq, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h
  %i.r = phi i64 [ %i.o, %bb.h ], [ 0, %.sink.split ]
  %.0 = phi i64 [ %i.l, %bb.h ], [ %.sink, %.sink.split ]
  %i.s = call i32 @pthread_mutex_unlock(ptr noundef nonnull @sluid_mutex) #10 ; 2 uses
  %.not14 = icmp eq i32 %i.s, 0
  br i1 %.not14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @__errno_location() #11
  store i32 %i.s, ptr %i.t, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.generate_sluid) #12
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.u = shl i64 %.0, 10
  %i.v = or disjoint i64 %i.u, %i.r
  %i.w = or i64 %i.v, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  ret i64 %i.w
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext range(i16 2, 4096) i16 @generate_cluster_id() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @xrandom() #10
  %i.b = urem i32 %i.a, 4094
  %i.c = trunc nuw nsw i32 %i.b to i16
  %i.d = add nuw nsw i16 %i.c, 2
  ret i16 %i.d
}

declare i32 @xrandom() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sluid2str(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 15, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.4, i32 noundef 111, ptr noundef nonnull @__func__.sluid2str) #10 ; 4 uses
  store i8 115, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 0, ptr %i.b, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.c = mul nuw nsw i64 %indvars.iv.i, 5         ; 2 uses
  %1 = shl i64 31, %i.c
  %i.d = and i64 %1, %0
  %2 = lshr i64 %i.d, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr @cb32map, i64 %2
  %i.f = load i8, ptr %i.e, align 1
  %i.g = sub nuw nsw i64 13, %indvars.iv.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 13
  br i1 %exitcond.not.i, label %print_sluid.exit, label %bb.b, !llvm.loop !0

print_sluid.exit:                                 ; preds = %bb.b
  ret ptr %i.a
}

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @print_sluid(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i64 %2, 15
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 115, ptr %1, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 0, ptr %i.b, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.c = mul nuw nsw i64 %indvars.iv, 5           ; 2 uses
  %3 = shl i64 31, %i.c
  %i.d = and i64 %3, %0
  %4 = lshr i64 %i.d, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr @cb32map, i64 %4
  %i.f = load i8, ptr %i.e, align 1
  %i.g = sub nuw nsw i64 13, %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !0

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @str2sluid(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %.not43 = icmp eq i64 %i.a, 14
  br i1 %.not43, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %0, align 1
  switch i8 %i.b, label %.loopexit [
    i8 115, label %bb.d
    i8 83, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %vector.ph

vector.ph:                                        ; preds = %bb.d, %.critedge
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03354 = phi i64 [ 0, %bb.d ], [ %i.r, %.critedge ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1               ; 3 uses
  %i.f = sub nuw nsw i64 12, %indvars.iv
  %i.g = mul nuw nsw i64 %i.f, 5
  %i.h = icmp sgt i8 %i.e, 96
  %i.i = add nsw i8 %i.e, -32
  %spec.select = select i1 %i.h, i8 %i.i, i8 %i.e ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %spec.select, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr @cb32map, i64 %index
  %wide.load = load <16 x i8>, ptr %i.j, align 16
  %i.k = icmp eq <16 x i8> %wide.load, %broadcast.splat
  %i.l = freeze <16 x i1> %i.k                    ; 2 uses
  %i.m = bitcast <16 x i1> %i.l to i16
  %.not61 = icmp eq i16 %i.m, 0
  br i1 %.not61, label %vector.body.interim, label %.critedge.loopexit

vector.body.interim:                              ; preds = %vector.body
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.n = icmp eq i64 %index.next, 32
  br i1 %i.n, label %.critedge.thread.loopexit, label %vector.body, !llvm.loop !11

.critedge.thread.loopexit:                        ; preds = %vector.body.interim
  switch i8 %spec.select, label %.loopexit [
    i8 79, label %.critedge
    i8 76, label %.fold.split
    i8 73, label %.fold.split
  ]

.fold.split:                                      ; preds = %.critedge.thread.loopexit, %.critedge.thread.loopexit
  br label %.critedge

.critedge.loopexit:                               ; preds = %vector.body
  %i.o = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.l, i1 false)
  %i.p = add i64 %index, %i.o
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.fold.split, %.critedge.thread.loopexit
  %.1 = phi i64 [ 1, %.fold.split ], [ 0, %.critedge.thread.loopexit ], [ %i.p, %.critedge.loopexit ]
  %i.q = shl i64 %.1, %i.g
  %i.r = or i64 %i.q, %.03354                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond, label %.loopexit, label %vector.ph, !llvm.loop !12

.loopexit:                                        ; preds = %.critedge, %.critedge.thread.loopexit, %bb.c, %bb.a, %bb.b
  %.3 = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ %i.r, %.critedge ], [ 0, %.critedge.thread.loopexit ]
  ret i64 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local ptr @sluid2uuid(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8
  %i.b = and i64 %0, 255
  %i.c = shl i64 %0, 6                            ; 2 uses
  %i.d = or disjoint i64 %i.b, 28672
  %i.e = and i64 %1, 262143
  %i.f = lshr i64 %i.c, 32
  %i.g = and i64 %i.f, 67108863
  %i.h = lshr i64 %i.c, 16
  %i.i = and i64 %i.h, 65535
  %i.j = or disjoint i64 %i.e, 281474976448512
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, i64 noundef %i.g, i64 noundef %i.i, i64 noundef %i.d, i64 noundef 32771, i64 noundef %i.j) #10
  %i.k = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define dso_local ptr @stepid2uuid(ptr nofree noundef readonly byval(%struct.slurm_step_id_t) align 8 captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8
  %i.e = and i64 %i.b, 255
  %i.f = shl i64 %i.b, 6                          ; 2 uses
  %i.g = or disjoint i64 %i.e, 28672
  %i.h = lshr i64 %i.b, 16
  %i.i = and i64 %i.h, 280375465082880
  %i.j = shl i64 %1, 18                           ; 2 uses
  %i.k = zext i32 %i.d to i64
  %i.l = lshr i64 %i.f, 32
  %i.m = and i64 %i.l, 67108863
  %i.n = lshr i64 %i.f, 16
  %i.o = and i64 %i.n, 65535
  %i.p = lshr i64 %i.j, 48
  %i.q = or i64 %i.p, 32768
  %.masked.i = and i64 %i.j, 281474976448512
  %i.r = or i64 %.masked.i, %i.k
  %i.s = or i64 %i.r, %i.i
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, i64 noundef %i.m, i64 noundef %i.o, i64 noundef %i.g, i64 noundef %i.q, i64 noundef %i.s) #10
  %i.t = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %i.t
}

declare void @_xstrfmtcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #9

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !9, !10}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10, !13, !14}
!12 = distinct !{!12, !9, !10}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
