Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/check-qobject?download=true
inline.NumInlined: 49
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@qobject_is_equal_conversion_test:bb.a
  br label %glib_autoptr_cleanup_QNum.exit11

glib_autoptr_cleanup_QNum.exit11:                 ; preds = %glib_autoptr_cleanup_QNum.exit, %bb.f
  %.not.i.i12 = icmp eq ptr %i.a, null
  br i1 %.not.i.i12, label %glib_autoptr_cleanup_QNum.exit13, label %bb.g

bb.g:                                             ; preds = %glib_autoptr_cleanup_QNum.exit11
  tail call void @qnum_unref(ptr noundef nonnull %i.a) #9
  br label %glib_autoptr_cleanup_QNum.exit13

glib_autoptr_cleanup_QNum.exit13:                 ; preds = %glib_autoptr_cleanup_QNum.exit11, %bb.g
  ret void
}

declare i32 @g_test_run() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_test_equality(i1 noundef zeroext %0, i32 %1, ...) unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 10 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false), !annotation !12
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr nonnull %2)
  %.promoted = load i32, ptr %2, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 16
  %.promoted48 = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.d = phi ptr [ %.promoted48, %bb.a ], [ %i.k, %bb.e ] ; 3 uses
  %i.e = phi i32 [ %.promoted, %bb.a ], [ %i.l, %bb.e ] ; 4 uses
  %.039 = phi i32 [ 0, %bb.a ], [ %i.o, %bb.e ]   ; 7 uses
  %i.f = icmp ult i32 %i.e, 41
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr i8, ptr %i.c, i64 %i.g
  %i.i = add nuw nsw i32 %i.e, 8                  ; 2 uses
  store i32 %i.i, ptr %2, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  store ptr %i.j, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.d, %bb.c ], [ %i.j, %bb.d ]
  %i.l = phi i32 [ %i.i, %bb.c ], [ %i.e, %bb.d ]
  %i.m = phi ptr [ %i.h, %bb.c ], [ %i.d, %bb.d ]
  %i.n = load ptr, ptr %i.m, align 8
  %.not = icmp eq ptr %i.n, @test_equality_end_of_arguments
  %i.o = add i32 %.039, 1
  br i1 %.not, label %bb.f, label %bb.b, !llvm.loop !8

bb.f:                                             ; preds = %bb.e
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.p = sext i32 %.039 to i64                    ; 2 uses
  %i.q = call noalias ptr @g_malloc_n(i64 noundef %i.p, i64 noundef 8) #11 ; 6 uses
  %i.r = icmp sgt i32 %.039, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.f
  call void @llvm.va_end.p0(ptr nonnull %3)
  br label %._crit_edge58

.lr.ph:                                           ; preds = %bb.f
  %.promoted49 = load i32, ptr %3, align 16       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 16             ; 3 uses
  %.promoted51 = load ptr, ptr %i.s, align 8      ; 2 uses
  %wide.trip.count = zext nneg i32 %.039 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.v = icmp eq i32 %.039, 1
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.m ] ; 3 uses
  %i.w = phi ptr [ %.promoted51, %.lr.ph.new ], [ %i.an, %bb.m ] ; 3 uses
  %i.x = phi i32 [ %.promoted49, %.lr.ph.new ], [ %i.ao, %bb.m ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.m ]
  %i.y = icmp ult i32 %i.x, 41
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr i8, ptr %i.u, i64 %i.z
  %i.ab = add nuw nsw i32 %i.x, 8                 ; 2 uses
  store i32 %i.ab, ptr %3, align 16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.w, i64 8       ; 2 uses
  store ptr %i.ac, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = phi ptr [ %i.w, %bb.h ], [ %i.ac, %bb.i ] ; 3 uses
  %i.ae = phi i32 [ %i.ab, %bb.h ], [ %i.x, %bb.i ] ; 4 uses
  %i.af = phi ptr [ %i.aa, %bb.h ], [ %i.w, %bb.i ]
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = icmp ult i32 %i.ae, 41
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %i.ad, i64 8      ; 2 uses
  store ptr %i.aj, ptr %i.s, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ak = zext nneg i32 %i.ae to i64
  %i.al = getelementptr i8, ptr %i.u, i64 %i.ak
  %i.am = add nuw nsw i32 %i.ae, 8                ; 2 uses
  store i32 %i.am, ptr %3, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = phi ptr [ %i.ad, %bb.l ], [ %i.aj, %bb.k ] ; 2 uses
  %i.ao = phi i32 [ %i.am, %bb.l ], [ %i.ae, %bb.k ] ; 2 uses
  %i.ap = phi ptr [ %i.al, %bb.l ], [ %i.ad, %bb.k ]
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.aq, ptr %i.as, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.g, !llvm.loop !9

._crit_edge.unr-lcssa:                            ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.epil.init = phi ptr [ %.promoted51, %.lr.ph ], [ %i.an, %._crit_edge.unr-lcssa ] ; 2 uses
  %.epil.init78 = phi i32 [ %.promoted49, %.lr.ph ], [ %i.ao, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod79 = trunc i32 %.039 to i1
  call void @llvm.assume(i1 %lcmp.mod79)
  %i.at = icmp ult i32 %.epil.init78, 41
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.epil.preheader
  %i.au = getelementptr i8, ptr %.epil.init, i64 8
  store ptr %i.au, ptr %i.s, align 8
  br label %._crit_edge.epilog-lcssa

bb.o:                                             ; preds = %.epil.preheader
  %i.av = zext nneg i32 %.epil.init78 to i64
  %i.aw = getelementptr i8, ptr %i.u, i64 %i.av
  %i.ax = add nuw nsw i32 %.epil.init78, 8
  store i32 %i.ax, ptr %3, align 16
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %bb.o, %bb.n
  %i.ay = phi ptr [ %i.aw, %bb.o ], [ %.epil.init, %bb.n ]
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.epil.init
  store ptr %i.az, ptr %i.ba, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  call void @llvm.va_end.p0(ptr nonnull %3)
  %wide.trip.count73 = zext nneg i32 %.039 to i64 ; 2 uses
  br label %.lr.ph57

.loopexit:                                        ; preds = %bb.r, %bb.q
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %exitcond74.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge58, label %.lr.ph57, !llvm.loop !10

.lr.ph57:                                         ; preds = %._crit_edge, %.loopexit
  %indvars.iv69 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next70, %.loopexit ] ; 2 uses
  %indvars.iv61 = phi i64 [ 1, %._crit_edge ], [ %indvars.iv.next62, %.loopexit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv69 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = call zeroext i1 @qobject_is_equal(ptr noundef %i.bc, ptr noundef %i.bc) #9
  br i1 %i.bd, label %bb.q, label %bb.p, !prof !14

bb.p:                                             ; preds = %.lr.ph57
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 61, ptr noundef nonnull @__func__.do_test_equality, ptr noundef nonnull @.str.8) #10
  unreachable

bb.q:                                             ; preds = %.lr.ph57
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 3 uses
  %i.be = icmp slt i64 %indvars.iv.next70, %i.p
  br i1 %i.be, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %bb.q
  %4 = load ptr, ptr %i.bb, align 8
  br label %.lr.ph54

bb.r:                                             ; preds = %.lr.ph54
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count73
  br i1 %exitcond68.not, label %.loopexit, label %.lr.ph54, !llvm.loop !11

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %bb.r
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %bb.r ], [ %indvars.iv61, %.lr.ph54.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv63
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call zeroext i1 @qobject_is_equal(ptr noundef %4, ptr noundef %i.bg) #9
  %i.bi = xor i1 %0, %i.bh
  br i1 %i.bi, label %bb.s, label %bb.r, !prof !7

bb.s:                                             ; preds = %.lr.ph54
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 64, ptr noundef nonnull @__func__.do_test_equality, ptr noundef nonnull @.str.9) #10
  unreachable

._crit_edge58:                                    ; preds = %.loopexit, %._crit_edge.thread
  call void @g_free(ptr noundef %i.q) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc_n(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare zeroext i1 @qobject_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @g_free(ptr noundef) local_unnamed_addr #1

declare ptr @qnum_from_uint(i64 noundef) local_unnamed_addr #1

declare ptr @qnum_from_int(i64 noundef) local_unnamed_addr #1

declare ptr @qnum_from_double(double noundef) local_unnamed_addr #1

declare void @qnum_unref(ptr noundef) local_unnamed_addr #1

declare ptr @qbool_from_bool(i1 noundef zeroext) local_unnamed_addr #1

declare void @qbool_unref(ptr noundef) local_unnamed_addr #1

declare ptr @qstring_from_str(ptr noundef) local_unnamed_addr #1

declare ptr @qstring_from_substr(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @qstring_unref(ptr noundef) local_unnamed_addr #1

declare ptr @qlist_new() local_unnamed_addr #1

declare void @qlist_append_int(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @qlist_append_null(ptr noundef) local_unnamed_addr #1

declare ptr @qlist_copy(ptr noundef) local_unnamed_addr #1

declare void @qlist_append_obj(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qlist_unref(ptr noundef) local_unnamed_addr #1

declare ptr @qdict_new() local_unnamed_addr #1

declare void @qdict_put_int(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @qdict_put_null(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qdict_put_obj(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qdict_get_qdict(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qdict_clone_shallow(ptr noundef) local_unnamed_addr #1

declare void @qdict_unref(ptr noundef) local_unnamed_addr #1

declare ptr @qstring_new() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = distinct !{!8, !13}
!9 = distinct !{!9, !13}
!10 = distinct !{!10, !13}
!11 = distinct !{!11, !13}
!12 = !{!"auto-init"}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
