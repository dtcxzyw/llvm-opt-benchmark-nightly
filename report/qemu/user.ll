Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/user?download=true
inline.NumInlined: 32
inline.NumDeleted: 18
begin_hunk_0_@gdb_breakpoint_insert:bb.a
  br i1 %.not15, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.01117, i64 552
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !33
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !34

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -38, %bb.a ], [ 0, %bb.b ], [ %i.b, %.lr.ph ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @cpu_breakpoint_insert(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @gdb_breakpoint_remove(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic ptr, ptr @cpus_queue monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !35
  %.not16 = icmp eq ptr %i.a, null
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.01117 = phi ptr [ %i.d, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.b = tail call i32 @cpu_breakpoint_remove(ptr noundef nonnull %.01117, i64 noundef %2, i32 noundef 16) #15 ; 2 uses
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.01117, i64 552
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !36
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !37

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -38, %bb.a ], [ 0, %bb.b ], [ %i.b, %.lr.ph ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @cpu_breakpoint_remove(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gdb_breakpoint_remove_all(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @cpu_breakpoint_remove_all(ptr noundef %0, i32 noundef 16) #15
  ret void
}

declare void @cpu_breakpoint_remove_all(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gdb_syscall_handling(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = tail call i32 @gdb_put_packet(ptr noundef %0) #15 ; 0 uses
  %i.c = load i8, ptr @gdbserver_state, align 8, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i32, ptr @gdbserver_user_state, align 8
  %i.f = icmp sgt i32 %i.e, -1
  %or.cond.not.i = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond.not.i, label %bb.b, label %gdb_handlesig.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_state, i64 8), align 8
  tail call void @cpu_single_step(ptr noundef %i.g, i32 noundef 0) #15
  %i.h = load i32, ptr @gdbserver_user_state, align 8
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %gdb_handlesig.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_state, i64 32), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 16), align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !annotation !7
  %i.j = load i32, ptr @gdbserver_user_state, align 8
  %i.k = call i64 @read(i32 noundef %i.j, ptr noundef nonnull %i.a, i64 noundef 256) #15 ; 2 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.c, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.lr.ph.i
  %wide.trip.count.i = and i64 %i.k, 2147483647
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.o = load i8, ptr %i.n, align 1
  tail call void @gdb_read_byte(i8 noundef zeroext %i.o) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.e, label %.preheader.i, !llvm.loop !18

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = icmp eq i32 %i.l, 0
  br i1 %i.p, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr @gdbserver_user_state, align 8
  %i.r = tail call i32 @close(i32 noundef %i.q) #15 ; 0 uses
  br label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  store i32 -1, ptr @gdbserver_user_state, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %gdb_handlesig.exit

bb.e:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 16), align 8, !range !10, !noundef !11
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.e
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_state, i64 131160), align 8
  br label %gdb_handlesig.exit

gdb_handlesig.exit:                               ; preds = %bb.a, %bb.b, %.thread.i, %._crit_edge.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gdb_syscall_entry(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 17), align 1, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %should_catch_syscall.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %1, 1023
  br i1 %or.cond.i, label %should_catch_syscall.exit.thread3, label %should_catch_syscall.exit

should_catch_syscall.exit:                        ; preds = %bb.b
  %i.c = zext nneg i32 %1 to i64                  ; 2 uses
  %i.d = lshr i64 %i.c, 6
  %i.e = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 24), i64 %i.d
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.c, 63
  %i.h = lshr i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %should_catch_syscall.exit.thread, label %should_catch_syscall.exit.thread3

should_catch_syscall.exit.thread:                 ; preds = %bb.a, %should_catch_syscall.exit
  %i.j = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.21, i32 noundef %1) #15 ; 2 uses
  %i.k = tail call i32 @gdb_target_sigtrap() #15
  %i.l = tail call i32 @gdb_handlesig(ptr noundef %0, i32 noundef %i.k, ptr noundef %i.j, ptr noundef null, i32 noundef 0) ; 0 uses
  tail call void @g_free(ptr noundef %i.j) #15
  br label %should_catch_syscall.exit.thread3

should_catch_syscall.exit.thread3:                ; preds = %bb.b, %should_catch_syscall.exit.thread, %should_catch_syscall.exit
  ret void
}

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gdb_syscall_return(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 17), align 1, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %should_catch_syscall.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %1, 1023
  br i1 %or.cond.i, label %should_catch_syscall.exit.thread3, label %should_catch_syscall.exit

should_catch_syscall.exit:                        ; preds = %bb.b
  %i.c = zext nneg i32 %1 to i64                  ; 2 uses
  %i.d = lshr i64 %i.c, 6
  %i.e = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 24), i64 %i.d
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.c, 63
  %i.h = lshr i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %should_catch_syscall.exit.thread, label %should_catch_syscall.exit.thread3

should_catch_syscall.exit.thread:                 ; preds = %bb.a, %should_catch_syscall.exit
  %i.j = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.22, i32 noundef %1) #15 ; 2 uses
  %i.k = tail call i32 @gdb_target_sigtrap() #15
  %i.l = tail call i32 @gdb_handlesig(ptr noundef %0, i32 noundef %i.k, ptr noundef %i.j, ptr noundef null, i32 noundef 0) ; 0 uses
  tail call void @g_free(ptr noundef %i.j) #15
  br label %should_catch_syscall.exit.thread3

should_catch_syscall.exit.thread3:                ; preds = %bb.b, %should_catch_syscall.exit.thread, %should_catch_syscall.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gdb_handle_set_catch_syscalls(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
sub_0:
  %i.a = alloca [16 x i64], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !annotation !7
  %i.f = load i8, ptr %i.e, align 1
  switch i8 %i.f, label %.loopexit [
    i8 48, label %.tail
    i8 49, label %.tail12
  ]

.tail:                                            ; preds = %sub_0
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.a, label %.loopexit

bb.a:                                             ; preds = %.tail
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 17), align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 24), i8 noundef 0, i64 noundef 128, i1 noundef false) #15
  %i.j = tail call i32 @gdb_put_packet(ptr noundef nonnull @.str.19) #15 ; 0 uses
  br label %bb.l

.tail12:                                          ; preds = %sub_0
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.tail12
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 17), align 1
  %i.n = tail call i32 @gdb_put_packet(ptr noundef nonnull @.str.19) #15 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %.tail12
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 59
  br i1 %i.q, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 noundef 0, i64 noundef 128, i1 noundef false) #15
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  store ptr %i.r, ptr %i.c, align 8
  %i.s = call i32 @qemu_strtoui(ptr noundef nonnull %i.r, ptr noundef nonnull %i.c, i32 noundef 16, ptr noundef nonnull %i.b) #15
  %.not16 = icmp eq i32 %i.s, 0
  br i1 %.not16, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  store ptr %i.t, ptr %i.c, align 8
  %i.u = call i32 @qemu_strtoui(ptr noundef nonnull %i.t, ptr noundef nonnull %i.c, i32 noundef 16, ptr noundef nonnull %i.b) #15
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.017 = phi i8 [ %.1, %bb.e ], [ 0, %bb.d ]
  %i.v = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  switch i8 %i.w, label %.loopexit [
    i8 0, label %bb.f
    i8 59, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph, %.lr.ph
  %i.x = load i32, ptr %i.b, align 4              ; 2 uses
  %i.y = icmp ugt i32 %i.x, 1023
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = zext nneg i32 %i.x to i64                ; 2 uses
  %i.aa = and i64 %i.z, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = lshr i64 %i.z, 6
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ad = load i64, ptr %2, align 8
  %i.ae = or i64 %i.ad, %i.ab
  store i64 %i.ae, ptr %2, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.1 = phi i8 [ %.017, %bb.g ], [ 1, %bb.f ]     ; 3 uses
  %.not11 = icmp eq i8 %i.w, 0
  br i1 %.not11, label %bb.i, label %bb.e

bb.i:                                             ; preds = %bb.h
  %i.af = trunc nuw i8 %.1 to i1
  store i8 %.1, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 17), align 1
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 24), ptr noundef nonnull align 16 dereferenceable(128) %i.a, i64 noundef 128, i1 noundef false) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = call i32 @gdb_put_packet(ptr noundef nonnull @.str.19) #15 ; 0 uses
  br label %bb.l

.loopexit:                                        ; preds = %bb.e, %.lr.ph, %sub_0, %.tail, %bb.d, %bb.c
  %i.ah = call i32 @gdb_put_packet(ptr noundef nonnull @.str.24) #15 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.k, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare i32 @qemu_strtoui(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gdb_handle_query_xfer_siginfo(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, %i.b
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 304), align 8
  %i.g = icmp ugt i64 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @gdb_put_packet(ptr noundef nonnull @.str.25) #15 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 176), i64 %i.b
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_state, i64 131184), align 8
  %i.k = tail call ptr @g_string_assign(ptr noundef %i.j, ptr noundef nonnull @.str.26) #15 ; 0 uses
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_state, i64 131184), align 8
  %i.m = trunc i64 %i.d to i32
  tail call void @gdb_memtox(ptr noundef %i.l, ptr noundef nonnull %i.i, i32 noundef %i.m) #15
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_state, i64 131184), align 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = trunc i64 %i.q to i32
  %i.s = tail call i32 @gdb_put_packet_binary(ptr noundef %i.o, i32 noundef %i.r, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare ptr @g_string_assign(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gdb_memtox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gdb_put_packet_binary(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gdb_build_stop_packet(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void (ptr, ptr, ...) @g_string_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 5) #15
  tail call void @gdb_append_thread_id(ptr noundef %1, ptr noundef %0) #15
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.g = tail call ptr @g_string_insert_c(ptr noundef %0, i64 noundef -1, i8 noundef signext 59) #15 ; 0 uses
  br label %g_string_append_c_inline.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8
  store i64 %i.c, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  store i8 59, ptr %i.i, align 1
  %i.j = load ptr, ptr %0, align 8
  %i.k = load i64, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 0, ptr %i.l, align 1
  br label %g_string_append_c_inline.exit

g_string_append_c_inline.exit:                    ; preds = %.critedge.i, %bb.c
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #12

declare ptr @g_string_insert_c(ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare ptr @g_string_append_len(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @g_string_insert_len(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @g_strfreev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @error_setg_errno_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @qemu_set_cloexec(i32 noundef) local_unnamed_addr #2

declare i32 @socket_set_fast_reuse(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @g_string_new(ptr noundef) local_unnamed_addr #2

declare void @g_string_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #13

declare void @pstrcpy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @accept(i32 noundef, ptr, ptr noundef) local_unnamed_addr #2

declare i32 @socket_set_nodelay(i32 noundef) local_unnamed_addr #2

declare void @gdb_init_gdbserver_state() local_unnamed_addr #2

declare void @gdb_create_default_process(ptr noundef) local_unnamed_addr #2

declare ptr @gdb_first_attached_cpu() local_unnamed_addr #2

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #2

declare void @async_safe_run_on_cpu(ptr noundef, ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_gdb_handlesig(ptr noundef %0, i64 %1) #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = load i8, ptr @gdbserver_state, align 8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i32, ptr @gdbserver_user_state, align 8
  %i.e = icmp sgt i32 %i.d, -1
  %or.cond.not.i = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond.not.i, label %bb.b, label %gdb_handlesig.exit

bb.b:                                             ; preds = %bb.a
  tail call void @cpu_single_step(ptr noundef %0, i32 noundef 0) #15
  %i.f = load i32, ptr @gdbserver_user_state, align 8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %gdb_handlesig.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_state, i64 32), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 16), align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !annotation !7
  %i.h = load i32, ptr @gdbserver_user_state, align 8
  %i.i = call i64 @read(i32 noundef %i.h, ptr noundef nonnull %i.a, i64 noundef 256) #15 ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.lr.ph.i
  %wide.trip.count.i = and i64 %i.i, 2147483647
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1
  tail call void @gdb_read_byte(i8 noundef zeroext %i.m) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.e, label %.preheader.i, !llvm.loop !18

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = icmp eq i32 %i.j, 0
  br i1 %i.n, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr @gdbserver_user_state, align 8
  %i.p = tail call i32 @close(i32 noundef %i.o) #15 ; 0 uses
  br label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  store i32 -1, ptr @gdbserver_user_state, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %gdb_handlesig.exit

bb.e:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @gdbserver_user_state, i64 16), align 8, !range !10, !noundef !11
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.e
end_hunk_0
