inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@SplitGUCList:bb.a
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = and i16 %i.al, 8192
  %.not58 = icmp eq i16 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %.5, i64 1
  br i1 %.not58, label %bb.i, label %bb.h, !llvm.loop !22

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp eq i8 %i.ai, %1
  br i1 %i.ao, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i, %.preheader
  %.5.pn = phi ptr [ %.6, %.preheader ], [ %.5, %bb.i ]
  %.6 = getelementptr inbounds nuw i8, ptr %.5.pn, i64 1 ; 4 uses
  %i.ap = load i8, ptr %.6, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = and i16 %i.as, 8192
  %.not59 = icmp eq i16 %i.at, 0
  br i1 %.not59, label %bb.k, label %.preheader, !llvm.loop !23

bb.j:                                             ; preds = %bb.i
  %i.au = icmp eq i8 %i.ai, 0
  br i1 %i.au, label %.thread, label %.critedge61

.thread:                                          ; preds = %bb.j
  store i8 0, ptr %.0, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.042, i64 8
  store ptr %.040, ptr %.042, align 8
  store ptr null, ptr %i.av, align 8
  br label %.critedge61

bb.k:                                             ; preds = %.preheader
  store i8 0, ptr %.0, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.042, i64 8
  store ptr %.040, ptr %.042, align 8
  %.pre = load i8, ptr %.6, align 1
  br label %.preheader65, !llvm.loop !24

.critedge61:                                      ; preds = %.critedge, %bb.d, %bb.e, %bb.j, %bb.c, %.thread
  %.250 = phi i1 [ true, %bb.c ], [ true, %.thread ], [ false, %bb.j ], [ false, %bb.e ], [ false, %bb.d ], [ false, %.critedge ]
  ret i1 %.250
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @makeAlterConfigCommand(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call ptr @pg_strdup(ptr noundef %1) #11 ; 4 uses
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 61) #12 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store i8 0, ptr %i.c, align 1
  %i.f = tail call ptr @fmtId(ptr noundef %3) #11
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %6, ptr noundef nonnull @.str.29, ptr noundef %2, ptr noundef %i.f) #11
  %i.g = icmp ne ptr %4, null
  %i.h = icmp ne ptr %5, null
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @fmtId(ptr noundef nonnull %5) #11
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef nonnull %4, ptr noundef %i.i) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call ptr @fmtId(ptr noundef nonnull %i.b) #11
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %6, ptr noundef nonnull @.str.31, ptr noundef %i.j) #11
  %i.k = tail call zeroext i1 @variable_is_guc_list_quote(ptr noundef nonnull %i.b)
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.l = call zeroext i1 @SplitGUCList(ptr noundef nonnull %i.e, i8 noundef signext 44, ptr noundef nonnull %i.a)
  %.pre39 = load ptr, ptr %i.a, align 8           ; 4 uses
  br i1 %i.l, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %.pre39, align 8           ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %.lr.ph.preheader

bb.g:                                             ; preds = %bb.f
  tail call void @appendPQExpBufferStr(ptr noundef %6, ptr noundef nonnull @.str.32) #11
  %.pre = load ptr, ptr %.pre39, align 8          ; 2 uses
  %.not35 = icmp eq ptr %.pre, null
  br i1 %.not35, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f, %bb.g
  %i.o = phi ptr [ %.pre, %bb.g ], [ %i.m, %bb.f ]
  tail call void @appendStringLiteralConn(ptr noundef %6, ptr noundef nonnull %i.o, ptr noundef %0) #11
  %i.p = getelementptr inbounds nuw i8, ptr %.pre39, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.not.peel = icmp eq ptr %i.q, null
  br i1 %.not.peel, label %.loopexit, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %.lr.ph.preheader, %.lr.ph.peel.next
  %.036 = phi ptr [ %i.r, %.lr.ph.peel.next ], [ %i.p, %.lr.ph.preheader ] ; 2 uses
  tail call void @appendPQExpBufferStr(ptr noundef %6, ptr noundef nonnull @.str.33) #11
  %.pre38 = load ptr, ptr %.036, align 8
  tail call void @appendStringLiteralConn(ptr noundef %6, ptr noundef %.pre38, ptr noundef %0) #11
  %i.r = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %.loopexit, label %.lr.ph.peel.next, !llvm.loop !25

.loopexit:                                        ; preds = %.lr.ph.peel.next, %.lr.ph.preheader, %bb.g, %bb.e
  tail call void @pg_free(ptr noundef %.pre39) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  tail call void @appendStringLiteralConn(ptr noundef %6, ptr noundef nonnull %i.e, ptr noundef %0) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  tail call void @appendPQExpBufferStr(ptr noundef %6, ptr noundef nonnull @.str.21) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  tail call void @pg_free(ptr noundef nonnull %i.b) #11
  ret void
}

declare void @pg_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @create_or_open_dir(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pg_check_dir(ptr noundef %0) #11
  switch i32 %i.a, label %bb.g [
    i32 -1, label %bb.b
    i32 0, label %bb.c
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef %0) #11
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr @pg_dir_create_mode, align 4
  %i.c = tail call i32 @mkdir(ptr noundef %0, i32 noundef %i.b) #11
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef %0) #11
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.e = load i32, ptr @pg_dir_create_mode, align 4
  %i.f = tail call i32 @chmod(ptr noundef %0, i32 noundef %i.e) #11
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef %0) #11
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef %0) #11
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.c
  ret void
}

declare i32 @pg_check_dir(ptr noundef) local_unnamed_addr #2

declare void @pg_log_generic(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @generate_restrict_key() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = tail call ptr @palloc(i64 noundef 64) #11 ; 4 uses
  %i.c = call zeroext i1 @pg_strong_random(ptr noundef nonnull %i.a, i64 noundef 64) #11
  br i1 %i.c, label %.preheader, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 63
  store i8 0, ptr %i.d, align 1
  br label %bb.c

.preheader:                                       ; preds = %bb.a, %.preheader.1
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.1 ], [ 0, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 2
  %i.g = urem i8 %i.f, 62
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @restrict_chars, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.j, ptr %i.k, align 1
  %exitcond.not = icmp eq i64 %indvars.iv, 62
  br i1 %exitcond.not, label %bb.b, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %0 = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %1 = load i8, ptr %0, align 1
  %2 = urem i8 %1, 62
  %3 = zext nneg i8 %2 to i64
  %4 = getelementptr inbounds nuw i8, ptr @restrict_chars, i64 %3
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  store i8 %5, ptr %6, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %.preheader

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

declare zeroext i1 @pg_strong_random(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @valid_restrict_key(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  %.not4 = icmp eq i8 %i.a, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @strspn(ptr noundef nonnull %0, ptr noundef nonnull @restrict_chars) #12
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %i.d = icmp eq i64 %i.b, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.d, %bb.c ]
  ret i1 %i.e
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare void @resetPQExpBuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @AddAcl(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @appendPQExpBufferChar(ptr noundef nonnull %0, i8 noundef signext 44) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @appendPQExpBufferStr(ptr noundef nonnull %0, ptr noundef %1) #11
  %.not7 = icmp eq ptr %2, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %0, ptr noundef nonnull @.str.77, ptr noundef nonnull %2) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5, !26}
!26 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
