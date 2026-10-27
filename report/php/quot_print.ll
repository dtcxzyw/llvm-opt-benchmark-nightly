Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/quot_print?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@zif_quoted_printable_decode:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 4 uses
  br label %.loopexit.outer

.loopexit.outer:                                  ; preds = %.loopexit.outer.backedge, %zend_string_alloc.exit
  %.0105.ph = phi i64 [ 0, %zend_string_alloc.exit ], [ %.0105.ph.be, %.loopexit.outer.backedge ] ; 6 uses
  %.0.ph = phi i64 [ 0, %zend_string_alloc.exit ], [ %.0.ph.be, %.loopexit.outer.backedge ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %.loopexit.outer
  %.0 = phi i64 [ %.0.ph, %.loopexit.outer ], [ %.0.be, %.loopexit.backedge ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12    ; 2 uses
  switch i8 %i.y, label %bb.n [
    i8 0, label %bb.o
    i8 61, label %bb.e
  ]

bb.e:                                             ; preds = %.loopexit
  %i.z = add i64 %.0, 1                           ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !12  ; 3 uses
  %.not121 = icmp eq i8 %i.ab, 0
  br i1 %.not121, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %i.x, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12  ; 4 uses
  %.not122 = icmp eq i8 %i.ad, 0
  br i1 %.not122, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call ptr @__ctype_b_loc() #9
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22 ; 2 uses
  %i.ag = zext i8 %i.ab to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !24 ; 2 uses
  %i.aj = and i16 %i.ai, 4096
  %.not123 = icmp eq i16 %i.aj, 0
  br i1 %.not123, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = zext i8 %i.ad to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !24 ; 2 uses
  %i.an = and i16 %i.am, 4096
  %.not124 = icmp eq i16 %i.an, 0
  br i1 %.not124, label %.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = and i16 %i.ai, 2048
  %.not.i = icmp eq i16 %i.ao, 0
  %.sink11.i = select i1 %.not.i, i8 9, i8 0
  %i.ap = add i8 %.sink11.i, %i.ab
  %i.aq = shl i8 %i.ap, 4
  %i.ar = and i16 %i.am, 2048
  %.not.i131 = icmp eq i16 %i.ar, 0
  %i.as = add i8 %i.ad, -65
  %or.cond.i132 = icmp ult i8 %i.as, 6
  %spec.select.i133 = select i1 %or.cond.i132, i8 -55, i8 -87
  %.sink11.i134 = select i1 %.not.i131, i8 %spec.select.i133, i8 -48
  %i.at = add i8 %.sink11.i134, %i.ad
  %i.au = add i8 %i.at, %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 %.0105.ph
  store i8 %i.au, ptr %i.av, align 1, !tbaa !12
  %i.aw = add i64 %.0, 3
  br label %.loopexit.outer.backedge

.loopexit.outer.backedge:                         ; preds = %bb.i, %bb.m, %bb.n
  %.0.ph.be = phi i64 [ %i.bj, %bb.n ], [ %i.z, %bb.m ], [ %i.aw, %bb.i ]
  %.0105.ph.be = add i64 %.0105.ph, 1
  br label %.loopexit.outer, !llvm.loop !35

bb.j:                                             ; preds = %.preheader, %.critedge3
  %.0112 = phi i64 [ %i.ba, %.critedge3 ], [ 1, %.preheader ] ; 4 uses
  %i.ax = add i64 %.0112, %.0                     ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !12
  switch i8 %i.az, label %bb.m [
    i8 9, label %.critedge3
    i8 32, label %.critedge3
    i8 0, label %.loopexit.backedge
    i8 13, label %bb.k
    i8 10, label %.thread156
  ], !llvm.loop !35

.critedge3:                                       ; preds = %bb.j, %bb.j
  %i.ba = add i64 %.0112, 1
  br label %bb.j, !llvm.loop !36

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ax
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !12
  %i.be = icmp eq i8 %i.bd, 10
  br i1 %i.be, label %bb.l, label %.thread156

bb.l:                                             ; preds = %bb.k
  %i.bf = add i64 %.0, 2
  %i.bg = add i64 %i.bf, %.0112
  br label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %bb.j, %bb.l, %.thread156
  %.0.be = phi i64 [ %i.bh, %.thread156 ], [ %i.bg, %bb.l ], [ %i.ax, %bb.j ]
  br label %.loopexit, !llvm.loop !35

.thread156:                                       ; preds = %bb.j, %bb.k
  %i.bh = add i64 %i.z, %.0112
  br label %.loopexit.backedge

bb.m:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 %.0105.ph
  store i8 61, ptr %i.bi, align 1, !tbaa !12
  br label %.loopexit.outer.backedge

bb.n:                                             ; preds = %.loopexit
  %i.bj = add i64 %.0, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 %.0105.ph
  store i8 %i.y, ptr %i.bk, align 1, !tbaa !12
  br label %.loopexit.outer.backedge

bb.o:                                             ; preds = %.loopexit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 %.0105.ph
  store i8 0, ptr %i.bl, align 1, !tbaa !12
  store i64 %.0105.ph, ptr %i.v, align 8, !tbaa !19
  store ptr %i.s, ptr %1, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.bm, align 8, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.o, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare void @zend_wrong_parameters_count_error(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

declare void @zend_wrong_parameter_error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zif_quoted_printable_encode(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread62, !prof !26

.thread62:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !12
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %.split72.thread, label %zend_parse_arg_str_ex.exit, !prof !25

.split72.thread:                                  ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !28
  br label %.critedge

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #8
  %cond.fr52 = freeze i1 %i.i
  br i1 %cond.fr52, label %zend_parse_arg_str_ex.exit..critedge_crit_edge, label %bb.c, !prof !29

zend_parse_arg_str_ex.exit..critedge_crit_edge:   ; preds = %zend_parse_arg_str_ex.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %.critedge

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit, %.thread62
  %.04171 = phi i32 [ 1, %.thread62 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.04270 = phi i32 [ 0, %.thread62 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.04369 = phi ptr [ null, %.thread62 ], [ %i.d, %zend_parse_arg_str_ex.exit ]
  %.04468 = phi i32 [ 0, %.thread62 ], [ 1, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.04171, i32 noundef %.04468, ptr noundef null, i32 noundef %.04270, ptr noundef %.04369) #8
  br label %bb.f

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit..critedge_crit_edge, %.split72.thread
  %i.j = phi ptr [ %.pre, %zend_parse_arg_str_ex.exit..critedge_crit_edge ], [ %i.h, %.split72.thread ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %.not48 = icmp eq i64 %i.l, 0
  br i1 %.not48, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.m = load ptr, ptr @zend_empty_string, align 8, !tbaa !28
  store ptr %i.m, ptr %1, align 8, !tbaa !12
  br label %.sink.split

bb.e:                                             ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.o = call ptr @php_quot_print_encode(ptr noundef nonnull %i.n, i64 noundef %i.l) ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = and i32 %i.q, 64
  %.not49 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not49, i32 262, i32 6
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ 6, %bb.d ], [ %i.s, %bb.e ]
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sink, ptr %2, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #5

declare noalias ptr @_safe_emalloc(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1)
declare ptr @_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare zeroext i1 @zend_parse_arg_str_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"_zend_refcounted_h", !9, i64 0, !8, i64 4}
!15 = !{!14, !9, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"_zend_string", !14, i64 0, !16, i64 8, !16, i64 16, !8, i64 24}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !16, i64 16}
!20 = !{!"any pointer", !8, i64 0}
!21 = !{!"p1 short", !20, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"short", !8, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{!"branch_weights", i32 4000000, i32 4001}
!27 = !{!"p1 _ZTS12_zend_string", !20, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = !{!9, !9, i64 0}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
end_hunk_0
