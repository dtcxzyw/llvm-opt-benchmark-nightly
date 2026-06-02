inline.NumInlined: 8
inline.NumDeleted: 4
begin_hunk_0_@uriUnixFilenameToUriStringW:bb.a
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %.thread87.split.us.split.i, %.thread87.split.us.split.i
  %i.g = getelementptr inbounds nuw i8, ptr %.060.us.i, i64 4 ; 2 uses
  %i.h = icmp ult ptr %i.g, %.059.us.i
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @uriEscapeExW(ptr noundef nonnull %i.g, ptr noundef nonnull %.059.us.i, ptr noundef %.164.us.i, i32 noundef 0, i32 noundef 0) #5
  %.pre114.i = load i32, ptr %.059.us.i, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread87.split.us.split.i
  %i.j = phi i32 [ %i.f, %bb.c ], [ %i.f, %.thread87.split.us.split.i ], [ %.pre114.i, %bb.d ]
  %.3.us.i = phi ptr [ %.164.us.i, %bb.c ], [ %.164.us.i, %.thread87.split.us.split.i ], [ %i.i, %bb.d ] ; 4 uses
  switch i32 %i.j, label %bb.g [
    i32 0, label %.split.us.i
    i32 47, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  store i32 47, ptr %.3.us.i, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %.3.us.i, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4.us.i = phi ptr [ %i.k, %bb.f ], [ %.3.us.i, %bb.e ]
  %.1.us.i = phi ptr [ %.059.us.i, %bb.f ], [ %.060.us.i, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %.059.us.i, i64 4
  br label %.thread87.split.us.split.i

.split.us.i:                                      ; preds = %bb.e
  store i32 0, ptr %.3.us.i, align 4, !tbaa !3
  br label %uriFilenameToUriStringW.exit

uriFilenameToUriStringW.exit:                     ; preds = %bb.a, %.split.us.i
  %.0.i = phi i32 [ 0, %.split.us.i ], [ 2, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @uriWindowsFilenameToUriStringW(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -4 ; 2 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %uriFilenameToUriStringW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  switch i32 %i.d, label %..thread78_crit_edge.i [
    i32 92, label %.thread.i
    i32 0, label %.thread87.split.us.split.us.i.preheader
  ]

.thread.i:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = icmp eq i32 %i.f, 92
  br label %.thread78.i

..thread78_crit_edge.i:                           ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !3
  br label %.thread78.i

.thread78.i:                                      ; preds = %..thread78_crit_edge.i, %.thread.i
  %i.h = phi i32 [ %.pre.i, %..thread78_crit_edge.i ], [ %i.f, %.thread.i ]
  %i.i = phi i1 [ false, %..thread78_crit_edge.i ], [ %i.g, %.thread.i ] ; 2 uses
  %i.j = icmp eq i32 %i.h, 58                     ; 2 uses
  %brmerge.i = select i1 %i.j, i1 true, i1 %i.i
  br i1 %brmerge.i, label %.thread83.i, label %.thread87.split.us.split.us.i.preheader

.thread87.split.us.split.us.i.preheader:          ; preds = %bb.b, %.thread78.i
  br label %.thread87.split.us.split.us.i

.thread83.i:                                      ; preds = %.thread78.i
  %not..i = xor i1 %i.j, true
  %.mux.i = select i1 %not..i, i1 true, i1 %i.i
  %cond.fr.i = freeze i1 %.mux.i                  ; 2 uses
  %spec.select.i = select i1 %cond.fr.i, ptr @.str.5, ptr @.str.6
  %i.k = select i1 %cond.fr.i, i64 5, i64 8       ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(1) %spec.select.i, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  br label %.thread87.split.split.us.i

.thread87.split.us.split.us.i:                    ; preds = %.thread87.split.us.split.us.i.preheader, %bb.g
  %i.n = phi i32 [ %.pre, %bb.g ], [ %i.d, %.thread87.split.us.split.us.i.preheader ] ; 3 uses
  %.164.us.us.i = phi ptr [ %.4.us.us.i, %bb.g ], [ %1, %.thread87.split.us.split.us.i.preheader ] ; 3 uses
  %.060.us.us.i = phi ptr [ %.1.us.us.i, %bb.g ], [ %i.a, %.thread87.split.us.split.us.i.preheader ] ; 2 uses
  %.059.us.us.i = phi ptr [ %i.t, %bb.g ], [ %0, %.thread87.split.us.split.us.i.preheader ] ; 5 uses
  switch i32 %i.n, label %bb.e [
    i32 92, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %.thread87.split.us.split.us.i, %.thread87.split.us.split.us.i
  %i.o = getelementptr inbounds nuw i8, ptr %.060.us.us.i, i64 4 ; 2 uses
  %i.p = icmp ult ptr %i.o, %.059.us.us.i
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @uriEscapeExW(ptr noundef nonnull %i.o, ptr noundef nonnull %.059.us.us.i, ptr noundef %.164.us.us.i, i32 noundef 0, i32 noundef 0) #5
  %.pre115.i = load i32, ptr %.059.us.us.i, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread87.split.us.split.us.i
  %i.r = phi i32 [ %i.n, %bb.c ], [ %i.n, %.thread87.split.us.split.us.i ], [ %.pre115.i, %bb.d ]
  %.3.us.us.i = phi ptr [ %.164.us.us.i, %bb.c ], [ %.164.us.us.i, %.thread87.split.us.split.us.i ], [ %i.q, %bb.d ] ; 4 uses
  switch i32 %i.r, label %bb.g [
    i32 0, label %.split.us.i
    i32 92, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  store i32 47, ptr %.3.us.us.i, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %.3.us.us.i, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4.us.us.i = phi ptr [ %i.s, %bb.f ], [ %.3.us.us.i, %bb.e ]
  %.1.us.us.i = phi ptr [ %.059.us.us.i, %bb.f ], [ %.060.us.us.i, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %.059.us.us.i, i64 4 ; 2 uses
  %.pre = load i32, ptr %i.t, align 4, !tbaa !3
  br label %.thread87.split.us.split.us.i

.thread87.split.split.us.i:                       ; preds = %.thread83.i, %bb.n
  %.164.us96.i = phi ptr [ %.4.us106.i, %bb.n ], [ %i.m, %.thread83.i ] ; 5 uses
  %.061.us97.i = phi i32 [ %.162.us103.i, %bb.n ], [ 1, %.thread83.i ] ; 2 uses
  %.060.us98.i = phi ptr [ %.1.us107.i, %bb.n ], [ %i.a, %.thread83.i ] ; 2 uses
  %.059.us99.i = phi ptr [ %i.ag, %bb.n ], [ %0, %.thread83.i ] ; 7 uses
  %i.u = load i32, ptr %.059.us99.i, align 4, !tbaa !3 ; 2 uses
  switch i32 %i.u, label %bb.l [
    i32 92, label %bb.h
    i32 0, label %bb.h
  ]

bb.h:                                             ; preds = %.thread87.split.split.us.i, %.thread87.split.split.us.i
  %i.v = getelementptr inbounds nuw i8, ptr %.060.us98.i, i64 4 ; 4 uses
  %i.w = icmp ult ptr %i.v, %.059.us99.i
  br i1 %i.w, label %bb.i, label %thread-pre-split.i

bb.i:                                             ; preds = %bb.h
  %.not162.i = icmp eq i32 %.061.us97.i, 0
  br i1 %.not162.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = tail call ptr @uriEscapeExW(ptr noundef nonnull %i.v, ptr noundef nonnull %.059.us99.i, ptr noundef %.164.us96.i, i32 noundef 0, i32 noundef 0) #5
  br label %thread-pre-split.i

bb.k:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %.059.us99.i to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  %sext.us.i = shl i64 %i.aa, 30
  %i.ab = ashr i64 %sext.us.i, 32                 ; 2 uses
  %i.ac = shl nsw i64 %i.ab, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.164.us96.i, ptr nonnull align 4 %i.v, i64 %i.ac, i1 false)
  %i.ad = getelementptr inbounds [4 x i8], ptr %.164.us96.i, i64 %i.ab
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.k, %bb.j, %bb.h
  %.3.us102.ph.i = phi ptr [ %i.x, %bb.j ], [ %i.ad, %bb.k ], [ %.164.us96.i, %bb.h ]
  %.pr.i = load i32, ptr %.059.us99.i, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split.i, %.thread87.split.split.us.i
  %i.ae = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.u, %.thread87.split.split.us.i ]
  %.3.us102.i = phi ptr [ %.3.us102.ph.i, %thread-pre-split.i ], [ %.164.us96.i, %.thread87.split.split.us.i ] ; 4 uses
  %.162.us103.i = phi i32 [ 0, %thread-pre-split.i ], [ %.061.us97.i, %.thread87.split.split.us.i ]
  switch i32 %i.ae, label %bb.n [
    i32 0, label %.split.us.i
    i32 92, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  store i32 47, ptr %.3.us102.i, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %.3.us102.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.4.us106.i = phi ptr [ %i.af, %bb.m ], [ %.3.us102.i, %bb.l ]
  %.1.us107.i = phi ptr [ %.059.us99.i, %bb.m ], [ %.060.us98.i, %bb.l ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.us99.i, i64 4
  br label %.thread87.split.split.us.i

.split.us.i:                                      ; preds = %bb.e, %bb.l
  %.us-phi.i = phi ptr [ %.3.us102.i, %bb.l ], [ %.3.us.us.i, %bb.e ]
  store i32 0, ptr %.us-phi.i, align 4, !tbaa !3
  br label %uriFilenameToUriStringW.exit

uriFilenameToUriStringW.exit:                     ; preds = %bb.a, %.split.us.i
  %.0.i = phi i32 [ 0, %.split.us.i ], [ 2, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @uriUriStringToUnixFilenameW(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %uriUriStringToFilenameW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @wcsncmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef 5) #6
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread58.thread.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @wcsncmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef 6) #6
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.thread58.thread.i

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @wcsncmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef 7) #6
  %i.h = icmp eq i32 %i.g, 0
  %spec.select = select i1 %i.h, i64 7, i64 5
  br label %.thread58.thread.i

.thread58.thread.i:                               ; preds = %bb.d, %bb.b, %bb.c
  %i.i = phi i64 [ 0, %bb.b ], [ %spec.select, %bb.d ], [ 0, %bb.c ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.k = tail call i64 @wcslen(ptr noundef nonnull %i.j) #6
  %i.l = shl i64 %i.k, 2
  %i.m = add i64 %i.l, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %1, ptr nonnull align 4 %i.j, i64 %i.m, i1 false)
  %i.n = tail call ptr @uriUnescapeInPlaceExW(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 3) #5 ; 0 uses
  br label %uriUriStringToFilenameW.exit

uriUriStringToFilenameW.exit:                     ; preds = %bb.a, %.thread58.thread.i
  %.046.i = phi i32 [ 2, %bb.a ], [ 0, %.thread58.thread.i ]
  ret i32 %.046.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @uriUriStringToWindowsFilenameW(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %uriUriStringToFilenameW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @wcsncmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef 5) #6
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @wcsncmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef 6) #6
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @wcsncmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef 7) #6
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.ph = phi i64 [ 0, %bb.d ], [ 5, %bb.c ], [ 0, %bb.b ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.ph ; 2 uses
  %i.j = tail call i64 @wcslen(ptr noundef nonnull %i.i) #6
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @wcsncmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef 8) #6
  %.not = icmp eq i32 %i.k, 0                     ; 3 uses
  %i.l = select i1 %.not, i64 8, i64 7
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l ; 3 uses
  %i.n = tail call i64 @wcslen(ptr noundef nonnull %i.m) #6 ; 2 uses
  %.idx.i = select i1 %.not, i64 0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 92, ptr %1, align 4, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 92, ptr %i.p, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.e
  %i.q = phi ptr [ %1, %.thread ], [ %i.o, %bb.f ], [ %i.o, %bb.e ]
  %i.r = phi i64 [ %i.j, %.thread ], [ %i.n, %bb.f ], [ %i.n, %bb.e ]
  %i.s = phi ptr [ %i.i, %.thread ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %i.t = shl i64 %i.r, 2
  %i.u = add i64 %i.t, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.q, ptr nonnull align 4 %i.s, i64 %i.u, i1 false)
  %i.v = tail call ptr @uriUnescapeInPlaceExW(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 3) #5 ; 0 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.i, %bb.g
  %.0.i = phi ptr [ %i.x, %bb.i ], [ %1, %bb.g ]  ; 3 uses
  %i.w = load i32, ptr %.0.i, align 4, !tbaa !3   ; 2 uses
  switch i32 %i.w, label %bb.i [
    i32 0, label %uriUriStringToFilenameW.exit
    i32 47, label %bb.h
  ]

bb.h:                                             ; preds = %.preheader.i
  store i32 92, ptr %.0.i, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  br label %.preheader.i, !llvm.loop !10

uriUriStringToFilenameW.exit:                     ; preds = %.preheader.i, %bb.a
  %.046.i = phi i32 [ 2, %bb.a ], [ %i.w, %.preheader.i ]
  ret i32 %.046.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @uriEscapeExA(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

declare ptr @uriUnescapeInPlaceExA(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #1

declare ptr @uriEscapeExW(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcsncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @uriUnescapeInPlaceExW(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
end_hunk_0
