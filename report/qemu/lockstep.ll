Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/lockstep?download=true
inline.NumInlined: 13
inline.NumDeleted: 10
begin_hunk_0_@fprintf
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @qemu_plugin_register_vcpu_tb_trans_cb(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @vcpu_tb_trans(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #16 ; 4 uses
  %i.b = tail call i64 @qemu_plugin_tb_vaddr(ptr noundef %0) #12
  store i64 %i.b, ptr %i.a, align 8
  %i.c = tail call i64 @qemu_plugin_tb_n_insns(ptr noundef %0) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8
  %i.e = load ptr, ptr @blocks, align 8
  %i.f = tail call ptr @g_slist_prepend(ptr noundef %i.e, ptr noundef nonnull %i.a) #12
  store ptr %i.f, ptr @blocks, align 8
  tail call void @qemu_plugin_register_vcpu_tb_exec_cb(ptr noundef %0, ptr noundef nonnull @vcpu_tb_exec, i32 noundef 0, ptr noundef nonnull %i.a) #12
  ret void
}

declare void @qemu_plugin_register_atexit_cb(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @plugin_exit(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @g_string_new(ptr noundef nonnull @.str.24) #12 ; 4 uses
  %i.b = load i64, ptr @bb_count, align 8
  %i.c = load ptr, ptr @log, align 8
  %i.d = tail call i32 @g_slist_length(ptr noundef %i.c) #12
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.a, ptr noundef nonnull @.str.25, i64 noundef %i.b, i32 noundef %i.d) #12
  %i.e = load i64, ptr @insn_count, align 8
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.a, ptr noundef nonnull @.str.26, i64 noundef %i.e) #12
  %i.f = load ptr, ptr %i.a, align 8
  tail call void @qemu_plugin_outs(ptr noundef %i.f) #12
  %i.g = load ptr, ptr @blocks, align 8
  tail call void @g_slist_free_full(ptr noundef %i.g, ptr noundef nonnull @g_free) #12
  %i.h = load ptr, ptr @log, align 8
  tail call void @g_slist_free_full(ptr noundef %i.h, ptr noundef nonnull @g_free) #12
  %i.i = load ptr, ptr @divergence_log, align 8
  tail call void @g_slist_free(ptr noundef %i.i) #12
  %i.j = load i32, ptr @socket_fd, align 4
  %i.k = tail call i32 @close(i32 noundef %i.j) #12 ; 0 uses
  %i.l = load ptr, ptr @path_to_unlink, align 8   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %glib_autoptr_cleanup_GString.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @unlink(ptr noundef nonnull %i.l) #12 ; 0 uses
  br label %glib_autoptr_cleanup_GString.exit

glib_autoptr_cleanup_GString.exit:                ; preds = %bb.a, %bb.b
  %i.n = tail call ptr @g_string_free(ptr noundef nonnull %i.a, i32 noundef 1) #12 ; 0 uses
  ret void
}

declare void @g_free(ptr noundef) #2

declare void @g_strfreev(ptr noundef) local_unnamed_addr #2

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #2

declare i32 @g_file_test(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 @connect(i32 noundef, ptr, i32 noundef) local_unnamed_addr #2

declare void @qemu_plugin_outs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @accept(i32 noundef, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #8

declare i64 @qemu_plugin_tb_vaddr(ptr noundef) local_unnamed_addr #2

declare i64 @qemu_plugin_tb_n_insns(ptr noundef) local_unnamed_addr #2

declare ptr @g_slist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @qemu_plugin_register_vcpu_tb_exec_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @vcpu_tb_exec(i32 %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.DivergeState, align 8       ; 6 uses
  %3 = alloca %struct.ExecState, align 8          ; 5 uses
  %4 = alloca %struct.ExecState, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  store i64 %i.a, ptr %3, align 8
  %i.b = load i64, ptr @insn_count, align 8       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.b, ptr %i.c, align 8
  %i.d = load i32, ptr @socket_fd, align 4
  %i.e = call i64 @write(i32 noundef %i.d, ptr noundef nonnull %3, i64 noundef 16) #12
  %i.f = icmp ult i64 %i.e, 16
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @qemu_plugin_outs(ptr noundef nonnull @.str.16) #12
  %i.g = load i64, ptr @our_id, align 8
  tail call void @qemu_plugin_uninstall(i64 noundef %i.g, ptr noundef nonnull @plugin_cleanup, ptr noundef null) #12
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !8
  %i.h = load i32, ptr @socket_fd, align 4
  %i.i = call i64 @read(i32 noundef %i.h, ptr noundef nonnull %4, i64 noundef 16) #12
  %i.j = icmp ult i64 %i.i, 16
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @qemu_plugin_outs(ptr noundef nonnull @.str.18) #12
  %i.k = load i64, ptr @our_id, align 8
  tail call void @qemu_plugin_uninstall(i64 noundef %i.k, ptr noundef nonnull @plugin_cleanup, ptr noundef null) #12
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.l = load i64, ptr %4, align 8                ; 2 uses
  %.not = icmp eq i64 %i.a, %i.l
  br i1 %.not, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val25 = load i64, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.n = load ptr, ptr @log, align 8
  store ptr %i.n, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = tail call ptr @g_string_new(ptr noundef nonnull @.str.19) #12 ; 7 uses
  %i.r = load ptr, ptr @divergence_log, align 8   ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.critedge36.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.03010.i = load ptr, ptr @log, align 8         ; 3 uses
  %.not3211.i = icmp eq ptr %.03010.i, null
  br i1 %.not3211.i, label %.critedge36.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.03010.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.critedge36.thread.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.pre = load ptr, ptr %i.s, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i
  %i.w = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %.03012.i26 = phi ptr [ %i.w, %.lr.ph.i ], [ %.03010.i, %.lr.ph.preheader ]
  %i.x = phi i32 [ %i.z, %.lr.ph.i ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.y = icmp eq ptr %.03012.i26, %.pre
  br i1 %i.y, label %.critedge36.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.z = add i32 %i.x, 1                          ; 3 uses
  store i32 %i.z, ptr %i.o, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.critedge36.i, label %.lr.ph

.critedge36.i:                                    ; preds = %.lr.ph.i, %.lr.ph
  %.lcssa.ph = phi i32 [ %i.z, %.lr.ph.i ], [ %i.x, %.lr.ph ]
  %i.ad = icmp eq i32 %.lcssa.ph, 1
  br i1 %i.ad, label %bb.h, label %.critedge36.thread.i

bb.h:                                             ; preds = %.critedge36.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %5, label %.critedge36.thread.i

5:                                                ; preds = %bb.h
  br label %.critedge36.thread.i

.critedge36.thread.i:                             ; preds = %.lr.ph.i.preheader, %5, %bb.h, %.critedge36.i, %bb.g, %bb.f
  %.1.i = phi i1 [ false, %bb.f ], [ true, %5 ], [ false, %bb.h ], [ false, %.critedge36.i ], [ false, %bb.g ], [ false, %.lr.ph.i.preheader ] ; 2 uses
  %i.ah = call noundef dereferenceable_or_null(16) ptr @g_memdup2(ptr noundef nonnull %2, i64 noundef 16) #17
  %i.ai = call ptr @g_slist_prepend(ptr noundef %i.r, ptr noundef %i.ah) #12 ; 2 uses
  store ptr %i.ai, ptr @divergence_log, align 8
  %i.aj = load i8, ptr @verbose, align 1, !range !9, !noundef !10
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = load i32, ptr %i.o, align 8
  %i.am = icmp eq i32 %i.al, 1
  %or.cond.i = select i1 %i.ak, i1 true, i1 %i.am
  %or.cond4.i = or i1 %.1.i, %or.cond.i
  br i1 %or.cond4.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge36.thread.i
  %i.an = call i32 @g_slist_length(ptr noundef %i.ai) #12
  %i.ao = load i32, ptr %i.o, align 8
  call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.q, ptr noundef nonnull @.str.20, i64 noundef %i.a, i64 noundef %i.b, i64 noundef %i.l, i64 noundef %.val25, i32 noundef %i.an, i32 noundef %i.ao) #12
  %i.ap = load ptr, ptr %i.q, align 8
  call void @qemu_plugin_outs(ptr noundef %i.ap) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge36.thread.i
  br i1 %.1.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  call void (ptr, ptr, ...) @g_string_printf(ptr noundef %i.q, ptr noundef nonnull @.str.21) #12
  %.02815.i = load ptr, ptr @log, align 8         ; 2 uses
  %.not3416.i = icmp eq ptr %.02815.i, null
  br i1 %.not3416.i, label %.thread.i, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %bb.k, %bb.l
  %.02818.i = phi ptr [ %.028.i, %bb.l ], [ %.02815.i, %bb.k ] ; 2 uses
  %.02917.i = phi i32 [ %i.bb, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02818.i, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp ne ptr %i.ar, null
  %i.at = icmp samesign ult i32 %.02917.i, 5
  %or.cond6.i = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond6.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %.lr.ph19.i
  %i.au = load ptr, ptr %.02818.i, align 8        ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.q, ptr noundef nonnull @.str.22, i64 noundef %i.aw, i64 noundef %i.ay, i64 noundef %i.ba) #12
  %i.bb = add nuw nsw i32 %.02917.i, 1
  %.028.i = load ptr, ptr %i.aq, align 8          ; 2 uses
  %.not34.i = icmp eq ptr %.028.i, null
  br i1 %.not34.i, label %.thread.i, label %.lr.ph19.i, !llvm.loop !11

.thread.i:                                        ; preds = %bb.l, %.lr.ph19.i, %bb.k
  %i.bc = load ptr, ptr %i.q, align 8
  call void @qemu_plugin_outs(ptr noundef %i.bc) #12
  call void @qemu_plugin_outs(ptr noundef nonnull @.str.23) #12
  %i.bd = load i64, ptr @our_id, align 8
  call void @qemu_plugin_uninstall(i64 noundef %i.bd, ptr noundef nonnull @plugin_cleanup, ptr noundef null) #12
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %report_divergance.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread.i
  %i.be = call ptr @g_string_free(ptr noundef nonnull %i.q, i32 noundef 1) #12 ; 0 uses
  br label %report_divergance.exit

report_divergance.exit:                           ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.o

bb.o:                                             ; preds = %report_divergance.exit, %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = load i64, ptr @insn_count, align 8
  %i.bi = add i64 %i.bh, %i.bg
  store i64 %i.bi, ptr @insn_count, align 8
  %i.bj = load i64, ptr @bb_count, align 8
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr @bb_count, align 8
  %i.bl = call noalias dereferenceable_or_null(24) ptr @g_malloc0(i64 noundef 24) #16 ; 4 uses
  store ptr %1, ptr %i.bl, align 8
  %i.bm = load i64, ptr @insn_count, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.bm, ptr %i.bn, align 8
  %i.bo = load i64, ptr @bb_count, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %i.bo, ptr %i.bp, align 8
  %i.bq = load ptr, ptr @log, align 8
  %i.br = call ptr @g_slist_prepend(ptr noundef %i.bq, ptr noundef nonnull %i.bl) #12
  store ptr %i.br, ptr @log, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

declare void @qemu_plugin_uninstall(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @plugin_cleanup(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @blocks, align 8
  tail call void @g_slist_free_full(ptr noundef %i.a, ptr noundef nonnull @g_free) #12
  %i.b = load ptr, ptr @log, align 8
  tail call void @g_slist_free_full(ptr noundef %i.b, ptr noundef nonnull @g_free) #12
  %i.c = load ptr, ptr @divergence_log, align 8
  tail call void @g_slist_free(ptr noundef %i.c) #12
  %i.d = load i32, ptr @socket_fd, align 4
  %i.e = tail call i32 @close(i32 noundef %i.d) #12 ; 0 uses
  %i.f = load ptr, ptr @path_to_unlink, align 8   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @unlink(ptr noundef nonnull %i.f) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare void @g_slist_free_full(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_slist_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #3

declare ptr @g_string_new(ptr noundef) local_unnamed_addr #2

declare void @g_string_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @g_slist_length(ptr noundef) local_unnamed_addr #2

declare void @g_string_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1)
declare ptr @g_memdup2(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = distinct !{!11, !7}
end_hunk_0
