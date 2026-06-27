inline.NumInlined: 9
inline.NumDeleted: 1
begin_hunk_0_@redis_check_rdb:bb.a
  %.sink.ph = phi i32 [ 1, %bb.bf ], [ 0, %.thread152 ]
  %.0.ph.ph = phi i32 [ 0, %bb.bf ], [ 1, %.thread152 ]
  %i.en = call i32 @fclose(ptr noundef nonnull %.077) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %.thread152, %bb.bf
  %.sink = phi i32 [ 1, %bb.bf ], [ 0, %.thread152 ], [ %.sink.ph, %.sink.split.sink.split ]
  %.0.ph = phi i32 [ 0, %bb.bf ], [ 1, %.thread152 ], [ %.0.ph.ph, %.sink.split.sink.split ]
  call void @stopLoading(i32 noundef %.sink) #13
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

declare i64 @mstime() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #1

declare void @startLoadingFile(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @rioInitWithFile(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @rdbLoadProgressCallback(ptr noundef, ptr noundef, i64 noundef) #8

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 0, 2) i64 @rioRead(ptr noundef nonnull %0, i64 noundef range(i64 1, 10) %1) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a, %bb.d
  %.0254 = phi i64 [ %i.m, %bb.d ], [ %1, %bb.a ] ; 3 uses
  %.0273 = phi ptr [ %i.l, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 64), align 8, !tbaa !42 ; 2 uses
  %.not32.not = icmp eq i64 %i.c, 0
  %i.d = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %.0254)
  %i.e = select i1 %.not32.not, i64 %.0254, i64 %i.d ; 5 uses
  %i.f = load ptr, ptr @redis_check_rdb.rdb, align 8, !tbaa !43
  %i.g = tail call i64 %i.f(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273, i64 noundef %i.e) #13
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %.preheader
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.j = or i64 %i.i, 1
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  br label %.loopexit

bb.b:                                             ; preds = %.preheader
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 32), align 8, !tbaa !40 ; 2 uses
  %.not33 = icmp eq ptr %i.k, null
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.k(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273, i64 noundef %i.e) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0273, i64 %i.e
  %i.m = sub i64 %.0254, %i.e                     ; 2 uses
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 56), align 8, !tbaa !23
  %i.o = add i64 %i.n, %i.e
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 56), align 8, !tbaa !23
  %.not31 = icmp eq i64 %i.m, 0
  br i1 %.not31, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.d, %.thread, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ 0, %.thread ], [ 1, %bb.d ]
  ret i64 %.2
}

declare i32 @rdbLoadType(ptr noundef) local_unnamed_addr #8

declare i64 @rdbLoadTime(ptr noundef) local_unnamed_addr #8

declare i64 @rdbLoadMillisecondTime(ptr noundef, i32 noundef) local_unnamed_addr #8

declare i64 @rdbLoadLen(ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @rdbLoadCheckModuleValue(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @decrRefCount(ptr noundef) local_unnamed_addr #8

declare ptr @rdbLoadStringObject(ptr noundef) local_unnamed_addr #8

declare void @moduleTypeNameByID(ptr noundef, i64 noundef) local_unnamed_addr #8

declare i32 @rdbFunctionLoad(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @sdsfree(ptr noundef) local_unnamed_addr #8

declare ptr @rdbLoadObject(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare i64 @hashTypeGetMinExpire(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #1

declare void @stopLoading(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @redis_check_rdb_main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.sigaction, align 8          ; 10 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = icmp ne i32 %0, 2
  %i.b = icmp eq ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %sub_0

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !50
  %i.d = load ptr, ptr %1, align 8, !tbaa !26
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.64, ptr noundef %i.d) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

sub_0:                                            ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 4 uses
  %i.h = load i8, ptr %i.g, align 1
  %.not16 = icmp eq i8 %i.h, 45
  br i1 %.not16, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %.not17 = icmp eq i8 %i.j, 118
  br i1 %.not17, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.c, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(10) @.str.66) #16
  %.not14 = icmp eq i32 %i.n, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.tail.thread, %.tail
  %i.o = tail call ptr @getVersion() #13          ; 2 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, ptr noundef %i.o) ; 0 uses
  tail call void @sdsfree(ptr noundef %i.o) #13
  tail call void @exit(i32 noundef 0) #17
  unreachable

bb.d:                                             ; preds = %.tail.thread
  %i.q = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #13 ; 0 uses
  %i.r = load i64, ptr %4, align 8, !tbaa !52
  %i.s = mul nsw i64 %i.r, 1000000
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !54
  %i.v = add nsw i64 %i.s, %i.u
  %i.w = tail call i32 @getpid() #13
  %i.x = sext i32 %i.w to i64
  %i.y = xor i64 %i.v, %i.x
  tail call void @init_genrand64(i64 noundef %i.y) #13
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 896), align 8, !tbaa !55
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @createSharedObjects() #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2520), align 8, !tbaa !56
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6452), align 4, !tbaa !87
  store i32 1, ptr @rdbCheckMode, align 4, !tbaa !9
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !26
  tail call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull @.str.68, ptr noundef %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = call i32 @sigemptyset(ptr noundef nonnull %i.ac) #13 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i32 -1073741820, ptr %i.ae, align 8, !tbaa !33
  store ptr @rdbCheckHandleCrash, ptr %3, align 8, !tbaa !36
  %i.af = call i32 @sigaction(i32 noundef 11, ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  %i.ag = call i32 @sigaction(i32 noundef 7, ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  %i.ah = call i32 @sigaction(i32 noundef 8, ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  %i.ai = call i32 @sigaction(i32 noundef 4, ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  %i.aj = call i32 @sigaction(i32 noundef 6, ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.al = call i32 @redis_check_rdb(ptr noundef %i.ak, ptr noundef %2) ; 2 uses
  %5 = icmp ne i32 %i.al, 0                       ; 2 uses
  br i1 %5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull @.str.69)
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 24), align 8, !tbaa !13
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i64 noundef %i.am) ; 0 uses
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 32), align 8, !tbaa !19
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %i.ao) ; 0 uses
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 40), align 8, !tbaa !20
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i64 noundef %i.aq) ; 0 uses
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 48), align 8, !tbaa !21
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i64 noundef %i.as) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %i.b, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %6 = sext i1 %5 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %6

bb.j:                                             ; preds = %bb.h
  call void @exit(i32 noundef %i.al) #17
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

declare ptr @getVersion() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

declare void @init_genrand64(i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #7

declare void @createSharedObjects() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold nofree noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !18, i64 24}
!14 = !{!"", !15, i64 0, !17, i64 8, !10, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !10, i64 56, !10, i64 60, !11, i64 64}
!15 = !{!"p1 _ZTS4_rio", !16, i64 0}
!16 = !{!"any pointer", !11, i64 0}
!17 = !{!"p1 _ZTS11redisObject", !16, i64 0}
!18 = !{!"long", !11, i64 0}
!19 = !{!14, !18, i64 32}
!20 = !{!14, !18, i64 40}
!21 = !{!14, !18, i64 48}
!22 = !{!14, !15, i64 0}
!23 = !{!24, !18, i64 56}
!24 = !{!"_rio", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !11, i64 72}
!25 = !{!14, !10, i64 56}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 omnipotent char", !16, i64 0}
!28 = !{!14, !17, i64 8}
!29 = !{!30, !16, i64 8}
!30 = !{!"redisObject", !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 3, !10, i64 4, !10, i64 5, !16, i64 8}
!31 = !{!14, !10, i64 16}
!32 = !{!14, !10, i64 60}
!33 = !{!34, !10, i64 136}
!34 = !{!"sigaction", !11, i64 0, !35, i64 8, !10, i64 136, !16, i64 144}
!35 = !{!"", !11, i64 0}
!36 = !{!11, !11, i64 0}
!37 = !{!38, !18, i64 48}
!38 = !{!"stat", !18, i64 0, !18, i64 8, !18, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !39, i64 72, !39, i64 88, !39, i64 104, !11, i64 120}
!39 = !{!"timespec", !18, i64 0, !18, i64 8}
!40 = !{!24, !16, i64 32}
!41 = !{!24, !18, i64 48}
!42 = !{!24, !18, i64 64}
!43 = !{!24, !16, i64 0}
!44 = !{ptr @rioRead}
!45 = distinct !{null}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!24, !18, i64 40}
!49 = !{!18, !18, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!52 = !{!53, !18, i64 0}
!53 = !{!"timeval", !18, i64 0, !18, i64 8}
!54 = !{!53, !18, i64 8}
!55 = !{!17, !17, i64 0}
!56 = !{!57, !18, i64 2520}
!57 = !{!"redisServer", !10, i64 0, !18, i64 8, !27, i64 16, !27, i64 24, !58, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !60, i64 64, !61, i64 72, !61, i64 80, !62, i64 88, !63, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !64, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !27, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !18, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !27, i64 232, !27, i64 240, !10, i64 248, !10, i64 252, !18, i64 256, !11, i64 264, !61, i64 272, !61, i64 280, !61, i64 288, !65, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !27, i64 472, !27, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !66, i64 1336, !65, i64 1440, !65, i64 1448, !65, i64 1456, !65, i64 1464, !65, i64 1472, !65, i64 1480, !65, i64 1488, !68, i64 1496, !68, i64 1504, !16, i64 1512, !63, i64 1520, !10, i64 1528, !63, i64 1536, !10, i64 1544, !65, i64 1552, !11, i64 1560, !11, i64 1624, !61, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !69, i64 2424, !10, i64 2448, !64, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !18, i64 2488, !18, i64 2496, !18, i64 2504, !18, i64 2512, !18, i64 2520, !18, i64 2528, !64, i64 2536, !64, i64 2544, !64, i64 2552, !64, i64 2560, !64, i64 2568, !64, i64 2576, !71, i64 2584, !64, i64 2592, !64, i64 2600, !64, i64 2608, !64, i64 2616, !64, i64 2624, !64, i64 2632, !18, i64 2640, !64, i64 2648, !64, i64 2656, !64, i64 2664, !64, i64 2672, !64, i64 2680, !64, i64 2688, !64, i64 2696, !64, i64 2704, !18, i64 2712, !18, i64 2720, !18, i64 2728, !64, i64 2736, !64, i64 2744, !64, i64 2752, !64, i64 2760, !64, i64 2768, !71, i64 2776, !64, i64 2784, !64, i64 2792, !64, i64 2800, !64, i64 2808, !64, i64 2816, !65, i64 2824, !64, i64 2832, !64, i64 2840, !18, i64 2848, !72, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !18, i64 2976, !18, i64 2984, !18, i64 2992, !18, i64 3000, !18, i64 3008, !18, i64 3016, !18, i64 3024, !18, i64 3032, !71, i64 3040, !11, i64 3048, !18, i64 3080, !64, i64 3088, !64, i64 3096, !64, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !64, i64 5168, !64, i64 5176, !64, i64 5184, !64, i64 5192, !11, i64 5200, !64, i64 6264, !64, i64 6272, !18, i64 6280, !64, i64 6288, !64, i64 6296, !18, i64 6304, !11, i64 6312, !73, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !18, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !18, i64 6496, !18, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !27, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !74, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !27, i64 6680, !27, i64 6688, !10, i64 6696, !10, i64 6700, !18, i64 6704, !18, i64 6712, !18, i64 6720, !18, i64 6728, !18, i64 6736, !10, i64 6744, !10, i64 6748, !27, i64 6752, !10, i64 6760, !10, i64 6764, !64, i64 6768, !64, i64 6776, !18, i64 6784, !18, i64 6792, !18, i64 6800, !10, i64 6808, !10, i64 6812, !18, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !18, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !16, i64 6872, !10, i64 6880, !64, i64 6888, !64, i64 6896, !64, i64 6904, !64, i64 6912, !10, i64 6920, !75, i64 6928, !10, i64 6936, !27, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !18, i64 6968, !18, i64 6976, !18, i64 6984, !18, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !76, i64 7024, !10, i64 7032, !10, i64 7036, !27, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !77, i64 7072, !10, i64 7088, !27, i64 7096, !10, i64 7104, !27, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !64, i64 7232, !64, i64 7240, !11, i64 7248, !64, i64 7256, !10, i64 7264, !10, i64 7268, !79, i64 7272, !64, i64 7280, !64, i64 7288, !80, i64 7296, !18, i64 7344, !18, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !18, i64 7400, !65, i64 7408, !18, i64 7416, !27, i64 7424, !27, i64 7432, !27, i64 7440, !10, i64 7448, !10, i64 7452, !68, i64 7456, !68, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !18, i64 7488, !18, i64 7496, !18, i64 7504, !18, i64 7512, !18, i64 7520, !81, i64 7528, !81, i64 7536, !10, i64 7544, !27, i64 7552, !18, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !18, i64 7584, !18, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !27, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !64, i64 7680, !10, i64 7688, !65, i64 7696, !10, i64 7704, !64, i64 7712, !64, i64 7720, !18, i64 7728, !18, i64 7736, !10, i64 7744, !64, i64 7752, !18, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !64, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !65, i64 7872, !65, i64 7880, !10, i64 7888, !18, i64 7896, !65, i64 7904, !65, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !18, i64 7936, !18, i64 7944, !18, i64 7952, !18, i64 7960, !18, i64 7968, !18, i64 7976, !18, i64 7984, !18, i64 7992, !18, i64 8000, !64, i64 8008, !64, i64 8016, !64, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !18, i64 8048, !11, i64 8056, !64, i64 8064, !64, i64 8072, !10, i64 8080, !18, i64 8088, !64, i64 8096, !18, i64 8104, !64, i64 8112, !82, i64 8120, !61, i64 8128, !10, i64 8136, !82, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !64, i64 8168, !64, i64 8176, !27, i64 8184, !64, i64 8192, !64, i64 8200, !64, i64 8208, !10, i64 8216, !83, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !27, i64 8256, !27, i64 8264, !27, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !64, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !64, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !64, i64 8384, !61, i64 8392, !27, i64 8400, !18, i64 8408, !27, i64 8416, !10, i64 8424, !84, i64 8432, !10, i64 8472, !18, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !85, i64 8504, !27, i64 8624, !27, i64 8632, !27, i64 8640, !27, i64 8648, !86, i64 8656, !64, i64 8664, !10, i64 8672, !27, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !18, i64 8704, !10, i64 8712, !10, i64 8716, !27, i64 8720, !10, i64 8728, !10, i64 8732}
!58 = !{!"p2 omnipotent char", !59, i64 0}
!59 = !{!"any p2 pointer", !16, i64 0}
!60 = !{!"p1 _ZTS7redisDb", !16, i64 0}
!61 = !{!"p1 _ZTS4dict", !16, i64 0}
!62 = !{!"p1 _ZTS11aeEventLoop", !16, i64 0}
!63 = !{!"p1 _ZTS3rax", !16, i64 0}
!64 = !{!"long long", !11, i64 0}
!65 = !{!"p1 _ZTS4list", !16, i64 0}
!66 = !{!"connListener", !11, i64 0, !10, i64 64, !58, i64 72, !10, i64 80, !10, i64 84, !67, i64 88, !16, i64 96}
!67 = !{!"p1 _ZTS14ConnectionType", !16, i64 0}
!68 = !{!"p1 _ZTS6client", !16, i64 0}
!69 = !{!"pendingCommandPool", !70, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!70 = !{!"p2 _ZTS14pendingCommand", !59, i64 0}
!71 = !{!"double", !11, i64 0}
!72 = !{!"malloc_stats", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80}
!73 = !{!"p1 _ZTS11hotkeyStats", !16, i64 0}
!74 = !{!"p1 double", !16, i64 0}
!75 = !{!"p1 _ZTS9saveparam", !16, i64 0}
!76 = !{!"p2 _ZTS10connection", !59, i64 0}
!77 = !{!"redisOpArray", !78, i64 0, !10, i64 8, !10, i64 12}
!78 = !{!"p1 _ZTS7redisOp", !16, i64 0}
!79 = !{!"p1 _ZTS11replBacklog", !16, i64 0}
!80 = !{!"replDataBuf", !65, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40}
!81 = !{!"p1 _ZTS10connection", !16, i64 0}
!82 = !{!"p1 _ZTS8_kvstore", !16, i64 0}
!83 = !{!"p1 _ZTS12clusterState", !16, i64 0}
!84 = !{!"aclInfo", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32}
!85 = !{!"redisTLSContextConfig", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !10, i64 48, !27, i64 56, !27, i64 64, !27, i64 72, !27, i64 80, !27, i64 88, !27, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!86 = !{!"p1 _ZTS14sentinelConfig", !16, i64 0}
!87 = !{!57, !10, i64 6452}
end_hunk_0
