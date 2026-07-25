begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"/usr/local/bin:/usr/ucb:/usr/bin:/bin:.\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@dln_find_1.pathname_too_long = internal constant [74 x i8] c"openpath: pathname too long (ignored)\0A\09Directory \22%.*s\22%s\0A\09File \22%.*s\22%s\0A\00", align 16
@.str.3 = private unnamed_addr constant [54 x i8] c"openpath: pathname too long (ignored)\0A\09File \22%.*s\22%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @dln_find_exe_r(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str) #10 ; 2 uses
  %.not12 = icmp eq ptr %i.a, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias ptr @strdup(ptr noundef nonnull %i.a) #10 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.09 = phi ptr [ %1, %bb.a ], [ %i.b, %bb.c ], [ null, %bb.b ] ; 2 uses
  %.0 = phi ptr [ null, %bb.a ], [ %i.b, %bb.c ], [ null, %bb.b ]
  %.not13 = icmp eq ptr %.09, null
  %spec.store.select = select i1 %.not13, ptr @.str.1, ptr %.09
  %i.c = tail call fastcc ptr @dln_find_1(ptr noundef %0, ptr noundef nonnull %spec.store.select, ptr noundef %2, i64 noundef %3, i32 noundef 1)
  tail call void @free(ptr noundef %.0) #10
  ret ptr %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @dln_find_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread136, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11 ; 7 uses
  %.not112 = icmp ult i64 %i.a, %3
  br i1 %.not112, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %i.a, 100
  %i.c = tail call i64 @llvm.umin.i64(i64 %i.a, i64 100)
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = select i1 %i.b, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.3, i32 noundef %i.d, ptr noundef nonnull %0, ptr noundef nonnull %i.e) #10
  br label %.thread136

bb.d:                                             ; preds = %bb.b
  %i.f = load i8, ptr %0, align 1, !tbaa !11      ; 2 uses
  %i.g = icmp eq i8 %i.f, 46
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %0, i64 1          ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = icmp eq i8 %i.i, 46
  %i.k = getelementptr i8, ptr %0, i64 2
  %spec.select = select i1 %i.j, ptr %i.k, ptr %i.h
  %.pr = load i8, ptr %spec.select, align 1, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i8 [ %.pr, %bb.e ], [ %i.f, %bb.d ]
  %i.m = icmp eq i8 %i.l, 47
  br i1 %i.m, label %.thread136, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not113 = icmp eq i32 %4, 0                    ; 2 uses
  br i1 %.not113, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #11
  %.not114 = icmp eq ptr %i.n, null
  br i1 %.not114, label %bb.i, label %.thread136

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = add i64 %3, -2                           ; 6 uses
  %i.p = add i64 %i.a, 1
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.r = ptrtoint ptr %2 to i64
  %i.s = icmp ugt i64 %i.a, 100
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.a, i64 100)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = select i1 %i.s, ptr @.str.4, ptr @.str.5
  br label %bb.j

bb.j:                                             ; preds = %bb.ac, %bb.i
  %.092 = phi ptr [ %1, %bb.i ], [ %i.bl, %bb.ac ] ; 9 uses
  %i.w = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.092, i32 noundef 58) #11 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.092) #11
  %i.z = getelementptr i8, ptr %.092, i64 %i.y
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0100 = phi ptr [ %i.z, %bb.k ], [ %i.w, %bb.j ] ; 4 uses
  %i.aa = ptrtoint ptr %.0100 to i64
  %i.ab = ptrtoint ptr %.092 to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 5 uses
  %.not115 = icmp eq i64 %i.ac, 0
  br i1 %.not115, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %.092, align 1, !tbaa !11
  %i.ae = icmp eq i8 %i.ad, 126
  br i1 %i.ae, label %bb.n, label %.thread125

bb.n:                                             ; preds = %bb.m
  %i.af = icmp eq i64 %i.ac, 1
  br i1 %i.af, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr i8, ptr %.092, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ai = icmp eq i8 %i.ah, 47
  br i1 %i.ai, label %bb.p, label %.thread125

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aj = tail call ptr @getenv(ptr noundef nonnull @.str.7) #10 ; 3 uses
  %.not116 = icmp eq ptr %i.aj, null
  br i1 %.not116, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #11 ; 4 uses
  %i.al = icmp ult i64 %i.o, %i.ak
  br i1 %i.al, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = sub nuw i64 %i.o, %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %i.aj, i64 noundef %i.ak, i1 noundef false) #10
  %i.an = getelementptr i8, ptr %2, i64 %i.ak
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %.095 = phi ptr [ %i.an, %bb.r ], [ %2, %bb.p ] ; 2 uses
  %.089 = phi i64 [ %i.am, %bb.r ], [ %i.o, %bb.p ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.092, i64 1
  %i.ap = add i64 %i.ac, -1                       ; 2 uses
  %.not117 = icmp eq i64 %i.ap, 0
  br i1 %.not117, label %bb.u, label %.thread125

.thread125:                                       ; preds = %bb.m, %bb.o, %bb.s
  %.185134 = phi i64 [ %i.ap, %bb.s ], [ %i.ac, %bb.o ], [ %i.ac, %bb.m ] ; 4 uses
  %.291133 = phi i64 [ %.089, %bb.s ], [ %i.o, %bb.o ], [ %i.o, %bb.m ] ; 2 uses
  %.294132 = phi ptr [ %i.ao, %bb.s ], [ %.092, %bb.o ], [ %.092, %bb.m ]
  %.297131 = phi ptr [ %.095, %bb.s ], [ %2, %bb.o ], [ %2, %bb.m ] ; 3 uses
  %i.aq = icmp ult i64 %.291133, %.185134
  br i1 %i.aq, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %.thread125
  %i.ar = sub nuw i64 %.291133, %.185134
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.297131, ptr noundef nonnull align 1 %.294132, i64 noundef %.185134, i1 noundef false) #10
  %i.as = getelementptr i8, ptr %.297131, i64 %.185134
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.398 = phi ptr [ %i.as, %bb.t ], [ %.095, %bb.s ] ; 3 uses
  %.3 = phi i64 [ %i.ar, %bb.t ], [ %.089, %bb.s ] ; 2 uses
  %i.at = getelementptr i8, ptr %.0100, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %.not118 = icmp eq i8 %i.au, 47
  br i1 %.not118, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = getelementptr i8, ptr %.398, i64 1
  store i8 47, ptr %.398, align 1, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.l
  %.499 = phi ptr [ %i.av, %bb.v ], [ %.398, %bb.u ], [ %2, %bb.l ] ; 2 uses
  %.4 = phi i64 [ %.3, %bb.v ], [ %.3, %bb.u ], [ %i.o, %bb.l ]
  %i.aw = icmp ult i64 %.4, %i.a
  br i1 %i.aw, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.499, ptr noundef nonnull align 1 %0, i64 noundef %i.p, i1 noundef false) #10
  %i.ax = call i32 @stat(ptr noundef %2, ptr noundef nonnull %5) #10
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.az = load i32, ptr %i.q, align 8, !tbaa !12
  %i.ba = and i32 %i.az, 61440
  %i.bb = icmp eq i32 %i.ba, 32768
  br i1 %i.bb, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %.not113, label %.thread136, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = tail call i32 @eaccess(ptr noundef %2, i32 noundef 1) #10
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.thread136, label %bb.ac

bb.ab:                                            ; preds = %bb.q, %bb.w, %.thread125
  %.5 = phi ptr [ %.297131, %.thread125 ], [ %.499, %bb.w ], [ %2, %bb.q ]
  %i.be = ptrtoint ptr %.5 to i64
  %i.bf = sub i64 %i.be, %i.r                     ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 100
  %i.bh = tail call i64 @llvm.smin.i64(i64 %i.bf, i64 100)
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = select i1 %i.bg, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ...) @rb_warning(ptr noundef nonnull @dln_find_1.pathname_too_long, i32 noundef %i.bi, ptr noundef %2, ptr noundef nonnull %i.bj, i32 noundef %i.u, ptr noundef nonnull %0, ptr noundef nonnull %i.v) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y, %bb.x
  %i.bk = load i8, ptr %.0100, align 1, !tbaa !11
  %.not139 = icmp eq i8 %i.bk, 0
  %i.bl = getelementptr i8, ptr %.0100, i64 1
  br i1 %.not139, label %.thread136, label %bb.j

.thread136:                                       ; preds = %bb.aa, %bb.z, %bb.ac, %bb.h, %bb.f, %bb.a, %bb.c
  %.2 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ %0, %bb.f ], [ %0, %bb.h ], [ %2, %bb.aa ], [ %2, %bb.z ], [ null, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @dln_find_file_r(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr @.str.2, ptr %1
  %i.a = tail call fastcc ptr @dln_find_1(ptr noundef %0, ptr noundef nonnull %spec.store.select, ptr noundef %2, i64 noundef %3, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare void @rb_warning(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @eaccess(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!11 = !{!9, !9, i64 0}
!12 = !{!13, !8, i64 24}
!13 = !{!"stat", !14, i64 0, !14, i64 8, !14, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !15, i64 72, !15, i64 88, !15, i64 104, !9, i64 120}
!14 = !{!"long", !9, i64 0}
!15 = !{!"timespec", !14, i64 0, !14, i64 8}
end_hunk_0
