inline.NumInlined: 82
inline.NumDeleted: 1
begin_hunk_0_@PMIx_Alloc_directive_string
; Function Attrs: nounwind uwtable
define range(i32 -29, 1) i32 @pmix_bfrops_base_print_iof_channel(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = select i1 %i.a, ptr @.str.1, ptr %1
  %i.c = load i16, ptr %2, align 2, !tbaa !33
  %i.d = tail call ptr @PMIx_IOF_channel_string(i16 noundef zeroext %i.c) #8
  %i.e = tail call i32 (ptr, ptr, ...) @asprintf(ptr noundef %0, ptr noundef nonnull @.str.80, ptr noundef nonnull %i.b, ptr noundef %i.d) #8
  %i.f = icmp slt i32 %i.e, 0
  %. = select i1 %i.f, i32 -29, i32 0
  ret i32 %.
}

declare ptr @PMIx_IOF_channel_string(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -29, 1) i32 @pmix_bfrops_base_print_regex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = select i1 %i.a, ptr @.str.1, ptr %1
  %i.c = tail call i32 (ptr, ptr, ...) @asprintf(ptr noundef %0, ptr noundef nonnull @.str.88, ptr noundef nonnull %i.b, ptr noundef %2) #8
  %i.d = icmp slt i32 %i.c, 0
  %. = select i1 %i.d, i32 -29, i32 0
  ret i32 %.
}

declare ptr @PMIx_Job_state_string(i8 noundef zeroext) local_unnamed_addr #4

declare ptr @PMIx_Link_state_string(i8 noundef zeroext) local_unnamed_addr #4

declare ptr @pmix_hwloc_print_cpuset(ptr noundef) local_unnamed_addr #4

declare i32 @PMIx_Argv_append_nosize(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @PMIx_Argv_free(ptr noundef) local_unnamed_addr #4

declare ptr @PMIx_Argv_join(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @PMIx_Device_type_string(i64 noundef) local_unnamed_addr #4

declare ptr @pmix_hwloc_print_topology(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef i32 @pmix_bfrops_base_print_pstats(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %1, null
  %i.c = select i1 %i.b, ptr @.str.1, ptr %1      ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef %0, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.c) #8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.f = load i64, ptr %i.e, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.h = load i64, ptr %i.g, align 8, !tbaa !98
  %i.i = load ptr, ptr %2, align 8, !tbaa !99
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = tail call ptr @pmix_util_print_name_args(ptr noundef nonnull %i.j) #8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 268
  %i.m = load i32, ptr %i.l, align 4, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.q = load i8, ptr %i.p, align 8, !tbaa !102
  %i.r = sext i8 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 308
  %i.t = load i32, ptr %i.s, align 4, !tbaa !103
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.v = load i16, ptr %i.u, align 8, !tbaa !104
  %i.w = zext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 332
  %i.y = load i16, ptr %i.x, align 4, !tbaa !105
  %i.z = zext i16 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !107
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.af = load float, ptr %i.ae, align 8, !tbaa !108
  %i.ag = fpext float %i.af to double
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 316
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !109
  %i.aj = fpext float %i.ai to double
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.al = load float, ptr %i.ak, align 8, !tbaa !110
  %i.am = fpext float %i.al to double
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.ao = load float, ptr %i.an, align 8, !tbaa !111
  %i.ap = fpext float %i.ao to double
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 324
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !112
  %i.as = fpext float %i.ar to double
  %i.at = tail call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef %0, ptr noundef nonnull @.str.109, ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef %i.h, ptr noundef nonnull %i.c, ptr noundef %i.i, ptr noundef %i.k, i32 noundef %i.m, ptr noundef %i.o, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.w, i32 noundef %i.z, ptr noundef nonnull %i.c, i64 noundef %i.ab, i64 noundef %i.ad, double noundef %i.ag, double noundef %i.aj, double noundef %i.am, double noundef %i.ap, double noundef %i.as) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

declare ptr @pmix_util_print_name_args(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef i32 @pmix_bfrops_base_print_dkstats(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %1, null
  %i.c = select i1 %i.b, ptr @.str.1, ptr %1      ; 5 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef %0, ptr noundef nonnull @.str.110, ptr noundef nonnull %i.c) #8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !116
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !118
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !120
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !121
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !122
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !123
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.y = load i64, ptr %i.x, align 8, !tbaa !124
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !125
  %i.ab = tail call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef %0, ptr noundef nonnull @.str.111, ptr noundef nonnull %i.c, ptr noundef %i.e, ptr noundef nonnull %i.c, i64 noundef %i.g, i64 noundef %i.i, i64 noundef %i.k, i64 noundef %i.m, ptr noundef nonnull %i.c, i64 noundef %i.o, i64 noundef %i.q, i64 noundef %i.s, i64 noundef %i.u, ptr noundef nonnull %i.c, i64 noundef %i.w, i64 noundef %i.y, i64 noundef %i.aa) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @pmix_bfrops_base_print_netstats(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %1, null
  %i.c = select i1 %i.b, ptr @.str.1, ptr %1      ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef %0, ptr noundef nonnull @.str.112, ptr noundef nonnull %i.c) #8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !129
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !132
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !133
  %i.r = tail call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef %0, ptr noundef nonnull @.str.113, ptr noundef nonnull %i.c, ptr noundef %i.e, ptr noundef nonnull %i.c, i64 noundef %i.g, i64 noundef %i.i, i64 noundef %i.k, ptr noundef nonnull %i.c, i64 noundef %i.m, i64 noundef %i.o, i64 noundef %i.q) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @pmix_bfrops_base_print_ndstats(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %1, null
  %i.c = select i1 %i.b, ptr @.str.1, ptr %1      ; 5 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef %0, ptr noundef nonnull @.str.114, ptr noundef nonnull %i.c) #8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !136
  %i.i = load ptr, ptr %2, align 8, !tbaa !137
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 20
  %4 = load float, ptr %i.j, align 4, !tbaa !138
  %5 = fpext float %4 to double
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = load float, ptr %6, align 8, !tbaa !139
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %10 = load float, ptr %9, align 4, !tbaa !140
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load float, ptr %12, align 8, !tbaa !141
  %14 = fpext float %13 to double
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 36
  %15 = load float, ptr %i.k, align 4, !tbaa !142
  %16 = fpext float %15 to double
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load float, ptr %i.l, align 8, !tbaa !143
  %i.n = fpext float %i.m to double
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 44
  %17 = load float, ptr %i.o, align 4, !tbaa !144
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %20 = load float, ptr %19, align 8, !tbaa !145
  %21 = fpext float %20 to double
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %23 = load float, ptr %22, align 8, !tbaa !146
  %24 = fpext float %23 to double
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %26 = load float, ptr %25, align 4, !tbaa !147
  %27 = fpext float %26 to double
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %29 = load float, ptr %28, align 8, !tbaa !148
  %30 = fpext float %29 to double
  %i.p = tail call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef %0, ptr noundef nonnull @.str.115, ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef %i.h, ptr noundef %i.i, ptr noundef nonnull %i.c, double noundef %5, double noundef %8, double noundef %11, double noundef %14, ptr noundef nonnull %i.c, double noundef %16, double noundef %i.n, double noundef %18, double noundef %21, ptr noundef nonnull %i.c, double noundef %24, double noundef %27, double noundef %30) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @pmix_bfrops_base_print_dbuf(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %1, null
  %i.c = select i1 %i.b, ptr @.str.1, ptr %1      ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef %0, ptr noundef nonnull @.str.116, ptr noundef nonnull %i.c) #8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !149
  %i.g = tail call i32 (ptr, ptr, ...) @pmix_asprintf(ptr noundef %0, ptr noundef nonnull @.str.117, ptr noundef nonnull %i.c, i64 noundef %i.f) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{ptr @pmix_bfrops_base_print_value}
!12 = !{!5, !5, i64 0}
!13 = !{!14, !5, i64 128}
!14 = !{!"pmix_pointer_array_t", !15, i64 0, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !19, i64 144, !18, i64 152}
!15 = !{!"pmix_object_t", !6, i64 0, !16, i64 40, !5, i64 48, !17, i64 56}
!16 = !{!"p1 _ZTS12pmix_class_t", !10, i64 0}
!17 = !{!"pmix_tma", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !18, i64 56}
!18 = !{!"any p2 pointer", !10, i64 0}
!19 = !{!"p1 long", !10, i64 0}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!14, !18, i64 152}
!22 = !{!10, !10, i64 0}
!23 = !{!24, !10, i64 160}
!24 = !{!"", !15, i64 0, !25, i64 120, !9, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160}
!25 = !{!"short", !6, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"_Bool", !6, i64 0}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!6, !6, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"long", !6, i64 0}
!33 = !{!25, !25, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !6, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"double", !6, i64 0}
!38 = !{!39, !32, i64 0}
!39 = !{!"timeval", !32, i64 0, !32, i64 8}
!40 = !{!39, !32, i64 8}
!41 = !{!42, !25, i64 0}
!42 = !{!"pmix_value", !25, i64 0, !6, i64 8}
!43 = !{!44, !32, i64 8}
!44 = !{!"pmix_byte_object", !9, i64 0, !32, i64 8}
!45 = !{!46, !9, i64 0}
!46 = !{!"pmix_regattr_t", !9, i64 0, !6, i64 8, !25, i64 520, !47, i64 528}
!47 = !{!"p2 omnipotent char", !18, i64 0}
!48 = !{!49, !9, i64 0}
!49 = !{!"", !9, i64 0, !9, i64 8, !6, i64 16}
!50 = !{!49, !9, i64 8}
!51 = !{!49, !6, i64 16}
!52 = !{!53, !6, i64 0}
!53 = !{!"pmix_coord", !6, i64 0, !54, i64 8, !32, i64 16}
!54 = !{!"p1 int", !10, i64 0}
!55 = !{!53, !32, i64 16}
!56 = !{!57, !9, i64 0}
!57 = !{!"pmix_device_distance", !9, i64 0, !9, i64 8, !32, i64 16, !25, i64 24, !25, i64 26}
!58 = !{!57, !9, i64 8}
!59 = !{!57, !32, i64 16}
!60 = !{!57, !25, i64 24}
!61 = !{!57, !25, i64 26}
!62 = !{!63, !9, i64 0}
!63 = !{!"pmix_endpoint", !9, i64 0, !9, i64 8, !44, i64 16}
!64 = !{!63, !9, i64 8}
!65 = !{!63, !32, i64 24}
!66 = !{!67, !5, i64 256}
!67 = !{!"pmix_proc", !6, i64 0, !5, i64 256}
!68 = !{!69, !9, i64 264}
!69 = !{!"pmix_proc_info", !67, i64 0, !9, i64 264, !9, i64 272, !5, i64 280, !5, i64 284, !6, i64 288}
!70 = !{!69, !9, i64 272}
!71 = !{!69, !5, i64 280}
!72 = !{!69, !5, i64 284}
!73 = !{!69, !6, i64 288}
!74 = !{!75, !32, i64 8}
!75 = !{!"pmix_data_array", !25, i64 0, !32, i64 8, !10, i64 16}
!76 = !{!75, !25, i64 0}
!77 = !{!75, !10, i64 16}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!47, !47, i64 0}
!81 = !{!82, !32, i64 0}
!82 = !{!"pmix_geometry", !32, i64 0, !9, i64 8, !9, i64 16, !83, i64 24, !32, i64 32}
!83 = !{!"p1 _ZTS10pmix_coord", !10, i64 0}
!84 = !{!82, !9, i64 8}
!85 = !{!82, !9, i64 16}
!86 = !{!82, !32, i64 32}
!87 = !{!82, !83, i64 24}
!88 = distinct !{!88, !79}
!89 = !{!90, !47, i64 0}
!90 = !{!"pmix_query", !47, i64 0, !91, i64 8, !32, i64 16}
!91 = !{!"p1 _ZTS9pmix_info", !10, i64 0}
!92 = distinct !{!92, !79}
!93 = !{!90, !32, i64 16}
!94 = !{!90, !91, i64 8}
!95 = distinct !{!95, !79}
!96 = !{!97, !32, i64 336}
!97 = !{!"pmix_proc_stats", !9, i64 0, !67, i64 8, !5, i64 268, !9, i64 272, !6, i64 280, !39, i64 288, !35, i64 304, !5, i64 308, !25, i64 312, !35, i64 316, !35, i64 320, !35, i64 324, !35, i64 328, !25, i64 332, !39, i64 336}
!98 = !{!97, !32, i64 344}
!99 = !{!97, !9, i64 0}
!100 = !{!97, !5, i64 268}
!101 = !{!97, !9, i64 272}
!102 = !{!97, !6, i64 280}
!103 = !{!97, !5, i64 308}
!104 = !{!97, !25, i64 312}
!105 = !{!97, !25, i64 332}
!106 = !{!97, !32, i64 288}
!107 = !{!97, !32, i64 296}
!108 = !{!97, !35, i64 304}
!109 = !{!97, !35, i64 316}
!110 = !{!97, !35, i64 320}
!111 = !{!97, !35, i64 328}
!112 = !{!97, !35, i64 324}
!113 = !{!114, !9, i64 0}
!114 = !{!"", !9, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56, !32, i64 64, !32, i64 72, !32, i64 80, !32, i64 88}
!115 = !{!114, !32, i64 8}
!116 = !{!114, !32, i64 16}
!117 = !{!114, !32, i64 24}
!118 = !{!114, !32, i64 32}
!119 = !{!114, !32, i64 40}
!120 = !{!114, !32, i64 48}
!121 = !{!114, !32, i64 56}
!122 = !{!114, !32, i64 64}
!123 = !{!114, !32, i64 72}
!124 = !{!114, !32, i64 80}
!125 = !{!114, !32, i64 88}
!126 = !{!127, !9, i64 0}
!127 = !{!"", !9, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48}
!128 = !{!127, !32, i64 8}
!129 = !{!127, !32, i64 16}
!130 = !{!127, !32, i64 24}
!131 = !{!127, !32, i64 32}
!132 = !{!127, !32, i64 40}
!133 = !{!127, !32, i64 48}
!134 = !{!135, !32, i64 56}
!135 = !{!"", !9, i64 0, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !39, i64 56, !10, i64 72, !32, i64 80, !10, i64 88, !32, i64 96}
!136 = !{!135, !32, i64 64}
!137 = !{!135, !9, i64 0}
!138 = !{!135, !35, i64 20}
!139 = !{!135, !35, i64 24}
!140 = !{!135, !35, i64 28}
!141 = !{!135, !35, i64 32}
!142 = !{!135, !35, i64 36}
!143 = !{!135, !35, i64 40}
!144 = !{!135, !35, i64 44}
!145 = !{!135, !35, i64 48}
!146 = !{!135, !35, i64 8}
!147 = !{!135, !35, i64 12}
!148 = !{!135, !35, i64 16}
!149 = !{!150, !32, i64 32}
!150 = !{!"pmix_data_buffer", !9, i64 0, !9, i64 8, !9, i64 16, !32, i64 24, !32, i64 32}
end_hunk_0
