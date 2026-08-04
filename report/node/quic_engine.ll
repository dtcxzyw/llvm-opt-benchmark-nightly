inline.NumInlined: 25
inline.NumDeleted: 17
begin_hunk_0_@ossl_quic_engine_new:bb.a
  %i.j = tail call i32 @ossl_quic_reactor_init(ptr noundef nonnull %i.i, ptr noundef nonnull @qeng_tick, ptr noundef nonnull %i.a, ptr noundef %i.e, i64 0, i64 noundef %i.h) #9
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 38) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ %i.a, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @ossl_quic_engine_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @ossl_quic_reactor_cleanup(ptr noundef nonnull %i.b) #9
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 51) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @ossl_quic_engine_get0_reactor(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ossl_quic_engine_get0_mutex(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ossl_quic_engine_get_time(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @ossl_time_now() #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = tail call i64 %i.b(ptr noundef %i.f) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret i64 %.sroa.0.0
}

declare i64 @ossl_time_now() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ossl_quic_engine_make_real_time(ptr nofree noundef readonly captures(none) %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %.fr = freeze ptr %i.b                          ; 2 uses
  %.not = icmp ne ptr %.fr, null
  %.off = add i64 %1, -1
  %switch = icmp ult i64 %.off, -2
  %or.cond = select i1 %.not, i1 %switch, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = tail call i64 %.fr(ptr noundef %i.d) #9
  %..i = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %i.e)
  %i.f = tail call i64 @ossl_time_now() #9
  %.sroa.03.0.i = tail call i64 @llvm.uadd.sat.i64(i64 %..i, i64 %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.07.0 = phi i64 [ %1, %bb.a ], [ %.sroa.03.0.i, %bb.b ]
  ret i64 %.sroa.07.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ossl_quic_engine_set_time_cb(ptr nofree noundef writeonly captures(none) initializes((24, 40)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.b, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ossl_quic_engine_set_inhibit_tick(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = zext i1 %i.a to i8
  %i.d = load i8, ptr %i.b, align 8
  %i.e = and i8 %i.d, -2
  %i.f = or disjoint i8 %i.e, %i.c
  store i8 %i.f, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ossl_quic_engine_get0_libctx(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ossl_quic_engine_get0_propq(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_quic_engine_update_poll_descriptors(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.04 = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not5 = icmp eq ptr %.04, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi ptr [ %.0, %.lr.ph ], [ %.04, %bb.a ] ; 2 uses
  %i.b = tail call i32 @ossl_quic_port_update_poll_descriptors(ptr noundef nonnull %.06, i32 noundef %1) #9 ; 0 uses
  %i.c = getelementptr i8, ptr %.06, i64 8
  %.0 = load ptr, ptr %i.c, align 8, !tbaa !32    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare i32 @ossl_quic_port_update_poll_descriptors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_quic_engine_create_port(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.quic_port_args_st, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !35
  %i.a = getelementptr i8, ptr %0, i64 152
  %.val = load i64, ptr %i.a, align 8, !tbaa !41
  %.not = icmp eq i64 %.val, 0
  %i.b = load ptr, ptr %2, align 8
  %.not4 = icmp eq ptr %i.b, null
  %or.cond = select i1 %.not, i1 %.not4, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %2, align 8, !tbaa !42
  %i.c = call ptr @ossl_quic_port_new(ptr noundef nonnull %2) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret ptr %.0
}

declare ptr @ossl_quic_port_new(ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_reactor_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @qeng_tick(ptr nofree noundef captures(none) initializes((0, 11)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.quic_tick_result_st, align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  store i8 0, ptr %i.b, align 1, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i8 0, ptr %i.c, align 2, !tbaa !47
  store i64 -1, ptr %0, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 1
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.014 = load ptr, ptr %i.g, align 8, !tbaa !32  ; 2 uses
  %.not1115 = icmp eq ptr %.014, null
  br i1 %.not1115, label %.loopexit, label %ossl_quic_tick_result_merge_into.exit.lr.ph

ossl_quic_tick_result_merge_into.exit.lr.ph:      ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 9
  br label %ossl_quic_tick_result_merge_into.exit

ossl_quic_tick_result_merge_into.exit:            ; preds = %ossl_quic_tick_result_merge_into.exit.lr.ph, %ossl_quic_tick_result_merge_into.exit
  %.016 = phi ptr [ %.014, %ossl_quic_tick_result_merge_into.exit.lr.ph ], [ %.0, %ossl_quic_tick_result_merge_into.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @ossl_quic_port_subtick(ptr noundef nonnull %.016, ptr noundef nonnull %3, i32 noundef %2) #9
  %i.j = load i8, ptr %i.a, align 8, !tbaa !44
  %.not.i = icmp ne i8 %i.j, 0
  %i.k = load i8, ptr %i.h, align 8
  %i.l = icmp ne i8 %i.k, 0
  %narrow = select i1 %.not.i, i1 true, i1 %i.l
  %i.m = zext i1 %narrow to i8
  store i8 %i.m, ptr %i.a, align 8, !tbaa !44
  %4 = load <2 x i8>, ptr %i.b, align 1, !tbaa !49
  %5 = icmp ne <2 x i8> %4, zeroinitializer
  %6 = load <2 x i8>, ptr %i.i, align 1
  %7 = icmp ne <2 x i8> %6, zeroinitializer
  %8 = select <2 x i1> %5, <2 x i1> splat (i1 true), <2 x i1> %7 ; 2 uses
  %9 = extractelement <2 x i1> %8, i64 0
  %10 = zext i1 %9 to i8
  store i8 %10, ptr %i.b, align 1, !tbaa !46
  %11 = extractelement <2 x i1> %8, i64 1
  %i.n = zext i1 %11 to i8
  store i8 %i.n, ptr %i.c, align 2, !tbaa !47
  %i.o = load i64, ptr %0, align 8
  %i.p = load i64, ptr %3, align 8
  %..i.i = call i64 @llvm.umin.i64(i64 %i.o, i64 %i.p)
  store i64 %..i.i, ptr %0, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.q = getelementptr i8, ptr %.016, i64 8
  %.0 = load ptr, ptr %i.q, align 8, !tbaa !32    ; 2 uses
  %.not11 = icmp eq ptr %.0, null
  br i1 %.not11, label %.loopexit, label %ossl_quic_tick_result_merge_into.exit, !llvm.loop !50

.loopexit:                                        ; preds = %ossl_quic_tick_result_merge_into.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @ossl_quic_port_subtick(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ossl_quic_reactor_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !16, i64 16}
!13 = !{!"quic_engine_args_st", !14, i64 0, !15, i64 8, !16, i64 16, !17, i64 24}
!14 = !{!"p1 _ZTS15ossl_lib_ctx_st", !11, i64 0}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"p1 _ZTS15crypto_mutex_st", !11, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!19, !16, i64 16}
!19 = !{!"quic_engine_st", !14, i64 0, !15, i64 8, !16, i64 16, !11, i64 24, !11, i64 32, !20, i64 40, !25, i64 136, !7, i64 160}
!20 = !{!"quic_reactor_st", !21, i64 0, !21, i64 16, !22, i64 32, !11, i64 40, !11, i64 48, !16, i64 56, !23, i64 64, !24, i64 72, !17, i64 80, !7, i64 88, !7, i64 88, !7, i64 88, !7, i64 88, !7, i64 88, !7, i64 88}
!21 = !{!"bio_poll_descriptor_st", !7, i64 0, !8, i64 8}
!22 = !{!"", !17, i64 0}
!23 = !{!"rio_notifier_st", !7, i64 0, !7, i64 4}
!24 = !{!"p1 _ZTS17crypto_condvar_st", !11, i64 0}
!25 = !{!"ossl_list_st_port", !26, i64 0, !26, i64 8, !17, i64 16}
!26 = !{!"p1 _ZTS12quic_port_st", !11, i64 0}
!27 = !{!13, !17, i64 24}
!28 = !{!19, !11, i64 24}
!29 = !{!19, !11, i64 32}
!30 = !{!19, !14, i64 0}
!31 = !{!19, !15, i64 8}
!32 = !{!26, !26, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{i64 0, i64 8, !36, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 24, i64 8, !38, i64 32, i64 4, !40, i64 36, i64 4, !40}
!36 = !{!37, !37, i64 0}
!37 = !{!"p1 _ZTS14quic_engine_st", !11, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTS10ssl_ctx_st", !11, i64 0}
!40 = !{!7, !7, i64 0}
!41 = !{!25, !17, i64 16}
!42 = !{!43, !37, i64 0}
!43 = !{!"quic_port_args_st", !37, i64 0, !11, i64 8, !11, i64 16, !39, i64 24, !7, i64 32, !7, i64 36}
!44 = !{!45, !8, i64 8}
!45 = !{!"quic_tick_result_st", !22, i64 0, !8, i64 8, !8, i64 9, !8, i64 10}
!46 = !{!45, !8, i64 9}
!47 = !{!45, !8, i64 10}
!48 = !{!17, !17, i64 0}
!49 = !{!8, !8, i64 0}
!50 = distinct !{!50, !34}
end_hunk_0
