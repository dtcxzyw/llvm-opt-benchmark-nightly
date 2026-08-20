inline.NumInlined: 10
inline.NumDeleted: 8
begin_hunk_0_@usage:bb.a
  unreachable
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal noalias noundef ptr @rcu_q_reader(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0) #2 {
bb.a:
  tail call void @rcu_register_thread() #9
  %i.a = tail call ptr @get_ptr_rcu_reader() #9
  store ptr %i.a, ptr %0, align 8
  %i.b = atomicrmw add ptr @nthreadsrunning, i32 1 seq_cst, align 4 ; 0 uses
  %i.c = load atomic i32, ptr @goflag monotonic, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %i.e = load atomic i32, ptr @goflag monotonic, align 4
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %.lr.ph28, label %._crit_edge29

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  tail call void @g_usleep(i64 noundef 1000) #9
  %i.g = load atomic i32, ptr @goflag monotonic, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.preheader, !llvm.loop !19

.lr.ph28:                                         ; preds = %.preheader, %rcu_read_unlock.exit
  %.027 = phi i64 [ %.2, %rcu_read_unlock.exit ], [ 0, %.preheader ] ; 2 uses
  %i.i = tail call ptr @get_ptr_rcu_reader() #9   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.b, label %rcu_read_lock.exit

bb.b:                                             ; preds = %.lr.ph28
  %i.m = load atomic i64, ptr @rcu_gp_ctr monotonic, align 8
  %i.n = and i64 %i.m, 4294967295
  store atomic i64 %i.n, ptr %i.i monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !20
  fence seq_cst
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %.lr.ph28, %bb.b
  %i.o = load atomic ptr, ptr @Q_list_head.0 monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !21
  %.not21 = icmp eq ptr %i.o, null
  br i1 %.not21, label %._crit_edge, label %.lr.ph24

.lr.ph24:                                         ; preds = %rcu_read_lock.exit, %bb.c
  %.123 = phi i64 [ %i.p, %bb.c ], [ %.027, %rcu_read_lock.exit ]
  %.01822 = phi ptr [ %i.s, %bb.c ], [ %i.o, %rcu_read_lock.exit ]
  %i.p = add i64 %.123, 1                         ; 3 uses
  %i.q = load atomic i32, ptr @goflag monotonic, align 4
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph24
  %i.s = load atomic ptr, ptr %.01822 monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !22
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %._crit_edge, label %.lr.ph24, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.c, %.lr.ph24, %rcu_read_lock.exit
  %.2 = phi i64 [ %.027, %rcu_read_lock.exit ], [ %i.p, %.lr.ph24 ], [ %i.p, %bb.c ] ; 2 uses
  %i.t = tail call ptr @get_ptr_rcu_reader() #9   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %.not.i19 = icmp eq i32 %i.v, 0
  br i1 %.not.i19, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 101, ptr noundef nonnull @__PRETTY_FUNCTION__.rcu_read_unlock) #12
  unreachable

bb.e:                                             ; preds = %._crit_edge
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4
  %.not8.i = icmp eq i32 %i.w, 0
  br i1 %.not8.i, label %bb.f, label %rcu_read_unlock.exit

bb.f:                                             ; preds = %bb.e
  store atomic i64 0, ptr %i.t release, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !24
  fence seq_cst
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.y = load atomic i8, ptr %i.x monotonic, align 8, !range !25, !noundef !26
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %rcu_read_unlock.exit, !prof !27

bb.g:                                             ; preds = %bb.f
  store atomic i8 0, ptr %i.x monotonic, align 8
  tail call void @qemu_event_set(ptr noundef nonnull @rcu_gp_event) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %bb.e, %bb.f, %bb.g
  tail call void @g_usleep(i64 noundef 100) #9
  %i.aa = load atomic i32, ptr @goflag monotonic, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph28, label %._crit_edge29, !llvm.loop !28

._crit_edge29:                                    ; preds = %rcu_read_unlock.exit, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %.2, %rcu_read_unlock.exit ]
  %i.ac = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.ac(ptr noundef nonnull @counts_mutex, ptr noundef nonnull @.str.5, i32 noundef 191) #9
  %i.ad = load i64, ptr @n_reads, align 8
  %i.ae = add i64 %i.ad, %.0.lcssa
  store i64 %i.ae, ptr @n_reads, align 8
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @counts_mutex, ptr noundef nonnull @.str.5, i32 noundef 193) #9
  tail call void @rcu_unregister_thread() #9
  ret ptr null
}

; Function Attrs: nounwind sspstrong uwtable
define internal noalias noundef ptr @rcu_q_updater(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0) #2 {
bb.a:
  %i.a = tail call ptr @get_ptr_rcu_reader() #9
  store ptr %i.a, ptr %0, align 8
  %i.b = atomicrmw add ptr @nthreadsrunning, i32 1 seq_cst, align 4 ; 0 uses
  %i.c = load atomic i32, ptr @goflag monotonic, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.preheader79

.preheader79:                                     ; preds = %.lr.ph, %bb.a
  %i.e = load atomic i32, ptr @goflag monotonic, align 4
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %.lr.ph89, label %.critedge._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  tail call void @g_usleep(i64 noundef 1000) #9
  %i.g = load atomic i32, ptr @goflag monotonic, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.preheader79, !llvm.loop !29

.lr.ph89:                                         ; preds = %.preheader79, %.loopexit
  %.06288 = phi i64 [ %.163, %.loopexit ], [ 0, %.preheader79 ] ; 4 uses
  %.06487 = phi i64 [ %i.ah, %.loopexit ], [ 0, %.preheader79 ] ; 2 uses
  %.06586 = phi i64 [ %.166, %.loopexit ], [ 0, %.preheader79 ] ; 2 uses
  %i.i = tail call i32 @rand() #9
  %i.j = srem i32 %i.i, 100
  %i.k = load atomic ptr, ptr @Q_list_head.0 monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !30
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph89
  %.068 = phi ptr [ %i.k, %.lr.ph89 ], [ %i.l, %bb.c ] ; 5 uses
  %.0 = phi i32 [ 0, %.lr.ph89 ], [ %i.m, %bb.c ]
  %.not = icmp eq ptr %.068, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load atomic ptr, ptr %.068 monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !31
  %i.m = add i32 %.0, 1                           ; 2 uses
  %i.n = icmp eq i32 %i.j, %i.m
  br i1 %i.n, label %bb.d, label %bb.b, !llvm.loop !32

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr @Q_list_head.0, align 8    ; 3 uses
  %i.p = icmp eq ptr %i.o, %.068
  br i1 %i.p, label %.loopexit105, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader
  %.069 = phi ptr [ %i.q, %.preheader ], [ %i.o, %bb.d ] ; 2 uses
  %i.q = load ptr, ptr %.069, align 8             ; 3 uses
  %.not77 = icmp eq ptr %i.q, %.068
  br i1 %.not77, label %.loopexit105, label %.preheader, !llvm.loop !33

.loopexit105:                                     ; preds = %.preheader, %bb.d
  %.lcssa.sink = phi ptr [ %i.o, %bb.d ], [ %i.q, %.preheader ]
  %.069.lcssa.sink = phi ptr [ @Q_list_head.0, %bb.d ], [ %.069, %.preheader ]
  %i.r = load ptr, ptr %.lcssa.sink, align 8
  store atomic ptr %i.r, ptr %.069.lcssa.sink monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.068, i64 8
  tail call void @call_rcu1(ptr noundef nonnull %i.s, ptr noundef nonnull @reclaim_list_el) #9
  %i.t = add i64 %.06586, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.loopexit105
  %.166 = phi i64 [ %i.t, %.loopexit105 ], [ %.06586, %bb.b ] ; 3 uses
  %i.u = load atomic i32, ptr @goflag monotonic, align 4
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %.critedge._crit_edge, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.w = tail call i32 @rand() #9
  %i.x = srem i32 %i.w, 100                       ; 2 uses
  %i.y = load atomic ptr, ptr @Q_list_head.0 monotonic, align 8 ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !34
  %.not7882 = icmp eq ptr %i.y, null
  br i1 %.not7882, label %.loopexit, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %bb.e
  %i.z = icmp eq i32 %i.x, 1
  br i1 %i.z, label %.lr.ph85._crit_edge, label %.lr.ph109

.lr.ph85:                                         ; preds = %.lr.ph109
  %i.aa = add nuw i32 %i.af, 1                    ; 2 uses
  %i.ab = icmp eq i32 %i.x, %i.aa
  br i1 %i.ab, label %.lr.ph85._crit_edge, label %.lr.ph109, !llvm.loop !35

.lr.ph85._crit_edge:                              ; preds = %.lr.ph85, %.lr.ph85.preheader
  %.06783.lcssa = phi ptr [ %i.y, %.lr.ph85.preheader ], [ %i.ag, %.lr.ph85 ] ; 2 uses
  %i.ac = tail call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #10 ; 2 uses
  %i.ad = add i64 %.06288, 1
  %i.ae = load ptr, ptr %.06783.lcssa, align 8
  store ptr %i.ae, ptr %i.ac, align 8
  store atomic ptr %i.ac, ptr %.06783.lcssa release, align 8
  br label %.loopexit

.lr.ph109:                                        ; preds = %.lr.ph85.preheader, %.lr.ph85
  %i.af = phi i32 [ %i.aa, %.lr.ph85 ], [ 1, %.lr.ph85.preheader ]
  %.06783108 = phi ptr [ %i.ag, %.lr.ph85 ], [ %i.y, %.lr.ph85.preheader ]
  %i.ag = load atomic ptr, ptr %.06783108 monotonic, align 8 ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !36
  %.not78 = icmp eq ptr %i.ag, null
  br i1 %.not78, label %.loopexit, label %.lr.ph85, !llvm.loop !35

.loopexit:                                        ; preds = %.lr.ph109, %bb.e, %.lr.ph85._crit_edge
  %.163 = phi i64 [ %i.ad, %.lr.ph85._crit_edge ], [ %.06288, %bb.e ], [ %.06288, %.lr.ph109 ] ; 2 uses
  %i.ah = add i64 %.06487, 2                      ; 2 uses
  tail call void @synchronize_rcu() #9
  %i.ai = load atomic i32, ptr @goflag monotonic, align 4
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %.lr.ph89, label %.critedge._crit_edge, !llvm.loop !37

.critedge._crit_edge:                             ; preds = %.loopexit, %.critedge, %.preheader79
  %.064.lcssa = phi i64 [ 0, %.preheader79 ], [ %.06487, %.critedge ], [ %i.ah, %.loopexit ]
  %.062.lcssa = phi i64 [ 0, %.preheader79 ], [ %.06288, %.critedge ], [ %.163, %.loopexit ]
  %.2 = phi i64 [ 0, %.preheader79 ], [ %.166, %.critedge ], [ %.166, %.loopexit ]
  tail call void @synchronize_rcu() #9
  %i.ak = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.ak(ptr noundef nonnull @counts_mutex, ptr noundef nonnull @.str.5, i32 noundef 247) #9
  %i.al = load i64, ptr @n_nodes, align 8
  %i.am = add i64 %i.al, %.062.lcssa
  store i64 %i.am, ptr @n_nodes, align 8
  %i.an = load i64, ptr @n_updates, align 8
  %i.ao = add i64 %i.an, %.064.lcssa
  store i64 %i.ao, ptr @n_updates, align 8
  %i.ap = load i64, ptr @n_nodes_removed, align 8
  %i.aq = add i64 %i.ap, %.2
  store atomic i64 %i.aq, ptr @n_nodes_removed monotonic, align 8
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @counts_mutex, ptr noundef nonnull @.str.5, i32 noundef 251) #9
  ret ptr null
}

declare void @call_rcu1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @reclaim_list_el(ptr noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @g_free(ptr noundef nonnull %i.a) #9
  %i.b = load i64, ptr @n_reclaims, align 8
  %i.c = add i64 %i.b, 1
  store atomic i64 %i.c, ptr @n_reclaims monotonic, align 8
  ret void
}

declare void @qemu_mutex_unlock_impl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @synchronize_rcu() local_unnamed_addr #1

declare void @g_usleep(i64 noundef) local_unnamed_addr #1

declare void @g_assertion_message_cmpnum(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, x86_fp80 noundef, ptr noundef, x86_fp80 noundef, i8 noundef signext) local_unnamed_addr #1

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #7

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @qemu_thread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @rcu_register_thread() local_unnamed_addr #1

declare ptr @get_ptr_rcu_reader() local_unnamed_addr #1

declare void @rcu_unregister_thread() local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @qemu_event_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #3

declare i32 @sleep(i32 noundef) local_unnamed_addr #1

declare ptr @qemu_thread_join(ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { cold noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"long-double-type", !"x86_fp80"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{null}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = !{i64 2150371635}
!15 = !{i64 2150376021}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = !{i64 2150304077}
!21 = !{i64 2150334784}
!22 = !{i64 2150339027}
!23 = distinct !{!23, !9}
!24 = !{i64 2150304891}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = !{i64 2150345595}
!31 = !{i64 2150349981}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = !{i64 2150357070}
!35 = distinct !{!35, !9}
!36 = !{i64 2150361321}
!37 = distinct !{!37, !9}
end_hunk_0
