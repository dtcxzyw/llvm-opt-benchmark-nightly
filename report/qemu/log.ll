Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/log?download=true
inline.NumInlined: 27
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@qemu_set_dfilter_ranges:bb.a
.loopexit:                                        ; preds = %bb.r, %bb.c, %.thread67
  call void @g_strfreev(ptr noundef nonnull %i.d) #16
  ret void
}

declare ptr @g_strsplit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @g_array_unref(ptr noundef) local_unnamed_addr #4

declare ptr @g_array_sized_new(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @g_strv_length(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #10

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @qemu_strtou64(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare ptr @g_array_append_vals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @g_strfreev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 16777216) i32 @qemu_str_to_log_mask(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @g_strsplit(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 0) #16 ; 4 uses
  %.not57 = icmp eq ptr %i.a, null
  br i1 %.not57, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not4467 = icmp eq ptr %i.b, null
  br i1 %.not4467, label %.critedge, label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph.preheader, %.loopexit
  %i.c = phi ptr [ %i.bo, %.loopexit ], [ %i.b, %.lr.ph.preheader ] ; 27 uses
  %.0395869 = phi i32 [ %.2, %.loopexit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0385968 = phi ptr [ %i.bn, %.loopexit ], [ %i.a, %.lr.ph.preheader ]
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(4) @.str.55) #19
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %.lr.ph70
  %i.f = or i32 %.0395869, 16744319
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph70
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #19
  %i.h = icmp ugt i64 %i.g, 5
  br i1 %i.h, label %bb.c, label %.critedge50

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.c, align 1
  %i.j = xor i32 %i.i, 1667330676
  %i.k = getelementptr i8, ptr %i.c, i64 4
  %i.l = load i16, ptr %i.k, align 1
  %i.m = zext i16 %i.l to i32
  %i.n = xor i32 %i.m, 14949
  %i.o = or i32 %i.j, %i.n
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %.not51 = icmp eq i32 %i.q, 0
  br i1 %.not51, label %bb.d, label %.critedge50

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  %.not46 = icmp eq i8 %i.s, 0
  br i1 %.not46, label %.critedge50, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @trace_enable_events(ptr noundef nonnull %i.r) #16
  %i.t = or i32 %.0395869, 32768
  br label %.loopexit

.critedge50:                                      ; preds = %bb.b, %bb.d, %bb.c
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(8) @.str.11) #19
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.aa, label %bb.f

bb.f:                                             ; preds = %.critedge50
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(7) @.str.13) #19
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(3) @.str.15) #19
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.aa, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(7) @.str.17) #19
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.aa, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(7) @.str.19) #19
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.aa, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(10) @.str.21) #19
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(4) @.str.23) #19
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.aa, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(5) @.str.25) #19
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(4) @.str.27) #19
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(4) @.str.29) #19
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(4) @.str.31) #19
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(6) @.str.33) #19
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(10) @.str.35) #19
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(6) @.str.37) #19
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(13) @.str.39) #19
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(5) @.str.41) #19
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(8) @.str.43) #19
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(7) @.str.45) #19
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(7) @.str.47) #19
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(4) @.str.49) #19
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(4) @.str.51) #19
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(12) @.str.53) #19
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %.critedge50
  %.lcssa = phi i32 [ 1, %.critedge50 ], [ 2, %bb.f ], [ 4, %bb.g ], [ 8, %bb.h ], [ 65536, %bb.i ], [ 4194304, %bb.j ], [ 16, %bb.k ], [ 32, %bb.l ], [ 256, %bb.m ], [ 131072, %bb.n ], [ 4096, %bb.o ], [ 64, %bb.p ], [ 512, %bb.q ], [ 1024, %bb.r ], [ 2048, %bb.s ], [ 16384, %bb.t ], [ 8192, %bb.u ], [ 262144, %bb.v ], [ 524288, %bb.w ], [ 1048576, %bb.x ], [ 2097152, %bb.y ], [ 8388608, %bb.z ]
  %i.bm = or i32 %.lcssa, %.0395869
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.aa, %bb.e
  %.2 = phi i32 [ %i.bm, %bb.aa ], [ %i.t, %bb.e ], [ %i.f, %.preheader.preheader ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0385968, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not44 = icmp eq ptr %i.bo, null
  br i1 %.not44, label %.critedge, label %.lr.ph70, !llvm.loop !18

.critedge:                                        ; preds = %bb.z, %.loopexit, %.lr.ph.preheader, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.preheader ], [ %.2, %.loopexit ], [ 0, %bb.z ]
  tail call void @g_strfreev(ptr noundef %i.a) #16
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare void @trace_enable_events(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_print_log_usage(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.57) #16 ; 0 uses
  %i.b = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #16 ; 0 uses
  %i.c = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #16 ; 0 uses
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #16 ; 0 uses
  %i.e = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #16 ; 0 uses
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #16 ; 0 uses
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #16 ; 0 uses
  %i.h = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #16 ; 0 uses
  %i.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #16 ; 0 uses
  %i.j = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #16 ; 0 uses
  %i.k = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #16 ; 0 uses
  %i.l = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #16 ; 0 uses
  %i.m = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #16 ; 0 uses
  %i.n = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #16 ; 0 uses
  %i.o = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #16 ; 0 uses
  %i.p = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #16 ; 0 uses
  %i.q = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #16 ; 0 uses
  %i.r = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #16 ; 0 uses
  %i.s = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #16 ; 0 uses
  %i.t = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #16 ; 0 uses
  %i.u = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #16 ; 0 uses
  %i.v = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #16 ; 0 uses
  %i.w = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #16 ; 0 uses
  %i.x = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.59) #16 ; 0 uses
  %i.y = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.60) #16 ; 0 uses
  ret void
}

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

declare void @error_setg_errno_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: nofree nounwind sspstrong uwtable
define internal void @qemu_log_thread_cleanup(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #13 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @thread_file) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr @stderr, align 8
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @fclose(ptr noundef %i.b)  ; 0 uses
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @qemu_thread_atexit_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @gettid() local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @get_ptr_rcu_reader() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @flockfile(ptr noundef captures(none)) local_unnamed_addr #6

declare void @g_free(ptr noundef) local_unnamed_addr #4

declare void @g_date_time_unref(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @funlockfile(ptr noundef captures(none)) local_unnamed_addr #6

declare void @qemu_event_set(ptr noundef) local_unnamed_addr #4

declare i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #14

declare zeroext i1 @is_daemonized() local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #15

declare void @call_rcu1(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @rcu_close_file(ptr noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @fclose(ptr noundef %i.b)  ; 0 uses
  tail call void @g_free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #6

declare void @qemu_mutex_unlock_impl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #13 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #15 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i64 2150521832}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"auto-init"}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i64 2150521018}
!14 = !{i64 2150531552}
!15 = distinct !{null, null, null}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
end_hunk_0
