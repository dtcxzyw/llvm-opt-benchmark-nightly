inline.NumInlined: 693
inline.NumDeleted: 1
begin_hunk_0_@poparg:bb.a
  %.0.i.ph18 = phi ptr [ %i.f, %car.exit.thread14 ], [ null, %car.exit ] ; 3 uses
  %.pr17 = phi ptr [ %i.a, %car.exit.thread14 ], [ %.pr.pre, %car.exit ] ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pr17, i64 2
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !23
  switch i16 %.pre, label %bb.d [
    i16 0, label %cdr.exit
    i16 1, label %bb.c
  ]

bb.c:                                             ; preds = %car.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %.pr17, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  br label %cdr.exit

bb.d:                                             ; preds = %car.exit.thread
  %i.k = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %.pr17), !inline_history !78 ; 0 uses
  br label %cdr.exit

cdr.exit:                                         ; preds = %bb.b, %car.exit, %car.exit.thread, %bb.c, %bb.d
  %.0.i11 = phi ptr [ %.0.i.ph18, %bb.d ], [ %.0.i.ph18, %bb.c ], [ %.0.i.ph18, %car.exit.thread ], [ null, %car.exit ], [ null, %bb.b ]
  %.0.i8 = phi ptr [ null, %bb.d ], [ %i.j, %bb.c ], [ null, %car.exit.thread ], [ null, %car.exit ], [ null, %bb.b ]
  store ptr %.0.i8, ptr %0, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %cdr.exit
  %.0 = phi ptr [ %.0.i11, %cdr.exit ], [ %1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @last_c_errmsg(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ %0, %bb.a ]   ; 2 uses
  %i.e = tail call ptr @strerror(i32 noundef %i.d) #31 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @last_c_errmsg.serrmsg, ptr noundef nonnull dereferenceable(1) @.str.152, i32 noundef %i.d) #31 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ @last_c_errmsg.serrmsg, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #24

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @lllast_c_errmsg() #6 {
bb.a:
  %i.a = tail call ptr @llast_c_errmsg(i32 noundef -1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @safe_strlen(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %1) #32 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %.0 = select i1 %.not, i64 %1, i64 %i.d
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @parser_read(ptr nofree readnone captures(none) %0) #6 {
bb.a:
  %i.a = tail call ptr @gen_intern(ptr noundef nonnull @.str.172, i64 noundef 0)
  %i.b = tail call ptr @leval(ptr noundef %i.a, ptr noundef null)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @os_classification() #6 {
bb.a:
  %i.a = tail call ptr @gen_intern(ptr noundef nonnull @.str.238, i64 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @err0() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @err(ptr noundef nonnull @.str.235, ptr noundef null) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pr(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i64, ptr @nheaps, align 8, !tbaa !13 ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = load ptr, ptr @heaps, align 8, !tbaa !17
  %i.e = load i64, ptr @heap_size, align 8
  %i.f = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.01116.i = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.01116.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 4 uses
  %.not.i = icmp ne ptr %i.h, null
  %.not14.i = icmp uge ptr %0, %i.h
  %or.cond.not21.i = and i1 %.not.i, %.not14.i
  %i.i = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.e
  %i.j = icmp ult ptr %0, %i.i
  %or.cond20.i = select i1 %or.cond.not21.i, i1 %i.j, i1 false
  br i1 %or.cond20.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.f, %i.k
  %i.m = urem i64 %i.l, 24
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i16, ptr %i.a, align 2, !tbaa !23
  %i.p = icmp eq i16 %i.o, 12
  br i1 %i.p, label %bb.e, label %looks_pointerp.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.q = add nuw nsw i64 %.01116.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %i.b
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b, !llvm.loop !115

looks_pointerp.exit:                              ; preds = %bb.d
  %i.r = tail call ptr @lprint(ptr noundef nonnull %0, ptr noundef null) ; 0 uses
  br label %put_st.exit

.loopexit:                                        ; preds = %bb.e, %bb.a
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !39
  %i.t = load i64, ptr @nointerrupt, align 8, !tbaa !13 ; 2 uses
  store i64 1, ptr @nointerrupt, align 8, !tbaa !13
  %i.u = tail call i64 @fwrite(ptr nonnull @.str.236, i64 8, i64 1, ptr %i.s) ; 0 uses
  store i64 %i.t, ptr @nointerrupt, align 8, !tbaa !13
  %i.v = icmp eq i64 %i.t, 0
  %i.w = load i64, ptr @interrupt_differed, align 8
  %i.x = icmp eq i64 %i.w, 1
  %or.cond.i.i.i = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond.i.i.i, label %bb.f, label %put_st.exit

bb.f:                                             ; preds = %.loopexit
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !13
  %i.y = tail call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null), !inline_history !38 ; 0 uses
  br label %put_st.exit

put_st.exit:                                      ; preds = %bb.f, %.loopexit, %looks_pointerp.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @prp(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  tail call void @pr(ptr noundef %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #28

declare ptr @read_from_string(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal noundef i32 @rcsp_puts(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #6 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = load ptr, ptr %1, align 8, !tbaa !61     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %2 = icmp sgt i64 %i.a, %i.g
  %i.h = tail call i64 @llvm.smin.i64(i64 %i.a, i64 %i.g) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %0, i64 %i.h, i1 false)
  %i.i = load ptr, ptr %1, align 8, !tbaa !61
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %i.h ; 2 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !61
  store i8 0, ptr %i.j, align 1, !tbaa !11
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @err(ptr noundef nonnull @.str.237, ptr noundef null) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #29

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #30

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #29

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #29

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind }
attributes #30 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #31 = { nounwind }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { noreturn nounwind }
attributes #34 = { cold noreturn nounwind }
attributes #35 = { nounwind returns_twice }
attributes #36 = { nounwind willreturn memory(none) }
attributes #37 = { "function-inline-cost-multiplier"="2" }
attributes #38 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{null}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !18, i64 0}
!18 = !{!"p2 _ZTS3obj", !19, i64 0}
!19 = !{!"any p2 pointer", !10, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS3obj", !10, i64 0}
!22 = !{ptr @err_ctrl_c}
!23 = !{!24, !25, i64 2}
!24 = !{!"obj", !25, i64 0, !25, i64 2, !6, i64 8}
!25 = !{!"short", !6, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTS11catch_frame", !10, i64 0}
!28 = !{!29, !21, i64 0}
!29 = !{!"catch_frame", !21, i64 0, !21, i64 8, !6, i64 16, !27, i64 216}
!30 = !{!29, !21, i64 8}
!31 = distinct !{!31, !16}
!32 = !{!10, !10, i64 0}
!33 = !{!34, !10, i64 0}
!34 = !{!"repl_hooks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!35 = !{!34, !10, i64 8}
!36 = !{!34, !10, i64 16}
!37 = !{!34, !10, i64 24}
!38 = !{ptr @no_interrupt, ptr @err_ctrl_c}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 short", !10, i64 0}
!46 = !{!25, !25, i64 0}
!47 = distinct !{!47, !16}
!48 = !{!49, !10, i64 0}
!49 = !{!"gen_printio", !10, i64 0, !10, i64 8, !10, i64 16}
!50 = !{!49, !10, i64 8}
!51 = !{!49, !10, i64 16}
!52 = !{ptr @cons, ptr @gc_fatal_error}
!53 = !{ptr @cons}
!54 = !{!24, !25, i64 0}
!55 = !{!56, !14, i64 0}
!56 = !{!"tms", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!57 = !{!56, !14, i64 8}
!58 = !{ptr @grepl_puts}
!59 = !{!60, !60, i64 0}
!60 = !{!"double", !6, i64 0}
!61 = !{!62, !9, i64 0}
!62 = !{!"rcsp_puts", !9, i64 0, !9, i64 8}
!63 = !{!62, !9, i64 8}
!64 = !{!65, !14, i64 0}
!65 = !{!"timeval", !14, i64 0, !14, i64 8}
!66 = !{!65, !14, i64 8}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTS15user_type_hooks", !10, i64 0}
!69 = !{ptr @get_user_type_hooks}
!70 = !{ptr @get_user_type_hooks, ptr @must_malloc}
!71 = !{!72, !10, i64 24}
!72 = !{!"user_type_hooks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!73 = !{ptr @free_oldspace}
!74 = distinct !{!74, !16}
!75 = !{ptr @err_stack}
!76 = !{ptr @err_ubv}
!77 = !{ptr @car}
!78 = !{ptr @cdr}
!79 = distinct !{!79, !16}
!80 = !{ptr @cons, ptr @extend_env, ptr @gc_fatal_error}
!81 = !{ptr @cons, ptr @extend_env}
!82 = !{ptr @err_closure_code}
!83 = !{ptr @must_malloc, ptr @get_user_type_hooks}
!84 = !{!72, !10, i64 40}
!85 = !{ptr @gc_fatal_error}
!86 = !{ptr @get_c_string}
!87 = distinct !{!87, !16}
!88 = distinct !{!88, !16}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, !16}
!91 = distinct !{!91, !16}
!92 = !{ptr @must_malloc}
!93 = !{!94, !18, i64 0}
!94 = !{!"gc_protected", !18, i64 0, !14, i64 8, !95, i64 16}
!95 = !{!"p1 _ZTS12gc_protected", !10, i64 0}
!96 = !{!94, !14, i64 8}
!97 = !{!95, !95, i64 0}
!98 = !{!94, !95, i64 16}
!99 = !{ptr @err, ptr @gc_fatal_error}
!100 = !{!72, !10, i64 0}
!101 = !{ptr @gc_relocate}
!102 = distinct !{!102, !16}
!103 = distinct !{!103, !16}
!104 = !{!72, !10, i64 32}
!105 = !{ptr @setvar}
!106 = distinct !{!106, !16}
!107 = !{!72, !10, i64 8}
!108 = !{!72, !10, i64 16}
!109 = !{ptr @gput_st}
!110 = distinct !{!110, !16}
!111 = distinct !{!111, !16}
!112 = !{ptr @gc_kind_check}
!113 = distinct !{!113, !16}
!114 = distinct !{!114, !16}
!115 = distinct !{!115, !16}
!116 = !{ptr @mark_locations_array, ptr @mark_locations}
!117 = distinct !{!117, !16, !118}
!118 = !{!"llvm.loop.unswitch.partial.disable"}
!119 = !{ptr @mark_protected_registers}
!120 = distinct !{!120, !16}
!121 = distinct !{!121, !16}
!122 = distinct !{!122, !16, !118}
end_hunk_0
