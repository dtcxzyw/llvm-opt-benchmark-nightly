inline.NumInlined: 33
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@nf_logger_put:bb.a

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @module_put(ptr noundef %i.q) #14
  br label %nf_logger_put.exit14

nf_logger_put.exit14:                             ; preds = %bb.h, %bb.i, %bb.f, %bb.e
  tail call void @__rcu_read_unlock() #14
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_log_packet(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ...) #0 align 16 prefalign(16) {
bb.a:
  %8 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  tail call void @__rcu_read_lock() #14
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %1 to i64
  %i.c = getelementptr [16 x i8], ptr @loggers, i64 %i.b
  %i.d = load i8, ptr %6, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 2696
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ %1, %bb.c ], [ %i.d, %bb.b ]
  %.sink23 = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  %i.f = zext i8 %.sink to i64
  %i.g = getelementptr [8 x i8], ptr %.sink23, i64 %i.f
  %i.h = load volatile ptr, ptr %i.g, align 8     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !annotation !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !annotation !22
  %.not21 = icmp eq ptr %i.h, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.va_start.p0(ptr nonnull %8)
  %i.i = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef %7, ptr noundef nonnull %8) #14 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %8)
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %i.a) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @__rcu_read_unlock() #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_log_trace(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ...) #0 align 16 prefalign(16) {
bb.a:
  %8 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !annotation !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !annotation !22
  tail call void @__rcu_read_lock() #14
  %i.b = getelementptr i8, ptr %0, i64 2696
  %i.c = zext i8 %1 to i64
  %i.d = getelementptr [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load volatile ptr, ptr %i.d, align 8     ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %8)
  %i.f = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef %7, ptr noundef nonnull %8) #14 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %8)
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @__rcu_read_unlock() #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 1) i32 @nf_log_buf_add(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ...) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false), !annotation !22
  %i.a = load i32, ptr %0, align 4
  %i.b = icmp ult i32 %i.a, 1019
  br i1 %i.b, label %bb.b, label %bb.d, !prof !23

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i32, ptr %0, align 4
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr i8, ptr %i.c, i64 %i.e
  %i.g = sub nsw i64 1019, %i.e
  %i.h = call i32 @vsnprintf(ptr noundef %i.f, i64 noundef %i.g, ptr noundef %1, ptr noundef nonnull %2) #14
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.i = load i32, ptr %0, align 4
  %i.j = add i32 %i.i, %i.h                       ; 2 uses
  %i.k = icmp ult i32 %i.j, 1019
  br i1 %i.k, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  store i32 %i.j, ptr %0, align 4
  br label %.critedge

bb.d:                                             ; preds = %bb.b, %bb.a
  store i32 1019, ptr %0, align 4
  %.b = load i1, ptr @nf_log_buf_add.__already_done, align 1
  br i1 %.b, label %.critedge, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  store i1 true, ptr @nf_log_buf_add.__already_done, align 1
  %i.l = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #17 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %.0
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef nonnull ptr @nf_log_buf_open() #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.b = tail call noalias align 8 dereferenceable_or_null(1024) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 2080, i64 noundef 1024) #18 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.loopexit, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !25 ; 0 uses
  tail call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, i32 512, ptr nonnull elementtype(i32) @__preempt_count) #15, !srcloc !26
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !27
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.d = tail call ptr asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) @emergency_ptr, ptr null, ptr nonnull elementtype(ptr) @emergency_ptr) #15, !srcloc !28 ; 2 uses
  %.not16 = icmp eq ptr %i.d, null
  br i1 %.not16, label %bb.c, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.d, %bb.c ]  ; 2 uses
  store i32 0, ptr %.0, align 4
  ret ptr %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_log_buf_close(ptr noundef %0) #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.b = load i32, ptr %0, align 4
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  store i8 0, ptr %i.d, align 1
  %i.e = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %i.a) #17 ; 0 uses
  %.not = icmp eq ptr %0, @emergency
  br i1 %.not, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void @kfree(ptr noundef %0) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr @emergency_ptr, align 8
  %i.f = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !31
  tail call void @__local_bh_enable_ip(i64 noundef %i.f, i32 noundef 512) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local i32 @netfilter_log_init() local_unnamed_addr #8 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @register_pernet_subsys(ptr noundef nonnull @nf_log_net_ops) #14
  ret i32 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree noredzone nounwind null_pointer_is_valid willreturn memory(read)
declare dso_local i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -12, 1) i32 @nf_log_net_init(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2688       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 64
  %i.c = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %i.b, ptr noundef nonnull @nflog_seq_ops, i32 noundef 8, ptr noundef null) #14
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %netfilter_log_sysctl_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, @init_net             ; 2 uses
  br i1 %.not.i, label %.preheader.preheader.i, label %bb.c

.preheader.preheader.i:                           ; preds = %bb.b
  %i.d = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @nf_log_sysctl_fnames, i64 noundef 3, ptr noundef nonnull @.str.10, i32 noundef 0) #14 ; 0 uses
  store ptr @nf_log_sysctl_fnames, ptr @nf_log_sysctl_table, align 16
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 16), align 16
  store i16 420, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 20), align 4
  store ptr @nf_log_proc_dostring, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 24), align 8
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 40), align 8
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 3), i64 noundef 3, ptr noundef nonnull @.str.10, i32 noundef 1) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 3), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 56), align 8
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 72), align 8
  store i16 420, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 76), align 4
  store ptr @nf_log_proc_dostring, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 80), align 16
  store ptr inttoptr (i64 1 to ptr), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 96), align 16
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 6), i64 noundef 3, ptr noundef nonnull @.str.10, i32 noundef 2) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 6), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 112), align 16
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 128), align 16
  store i16 420, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 132), align 4
  store ptr @nf_log_proc_dostring, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 136), align 8
  store ptr inttoptr (i64 2 to ptr), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 152), align 8
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 9), i64 noundef 3, ptr noundef nonnull @.str.10, i32 noundef 3) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 9), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 168), align 8
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 184), align 8
  store i16 420, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 188), align 4
  store ptr @nf_log_proc_dostring, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 192), align 16
  store ptr inttoptr (i64 3 to ptr), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 208), align 16
  %i.h = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 12), i64 noundef 3, ptr noundef nonnull @.str.10, i32 noundef 4) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 12), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 224), align 16
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 240), align 16
  store i16 420, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 244), align 4
  store ptr @nf_log_proc_dostring, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 248), align 8
  store ptr inttoptr (i64 4 to ptr), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 264), align 8
  %i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 15), i64 noundef 3, ptr noundef nonnull @.str.10, i32 noundef 5) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 15), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 280), align 8
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 296), align 8
  store i16 420, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 300), align 4
  store ptr @nf_log_proc_dostring, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 304), align 16
  store ptr inttoptr (i64 5 to ptr), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 320), align 16
  %i.j = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 18), i64 noundef 3, ptr noundef nonnull @.str.10, i32 noundef 6) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 18), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 336), align 16
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 352), align 16
  store i16 420, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 356), align 4
  store ptr @nf_log_proc_dostring, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 360), align 8
  store ptr inttoptr (i64 6 to ptr), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 376), align 8
  %i.k = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 21), i64 noundef 3, ptr noundef nonnull @.str.10, i32 noundef 7) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 21), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 392), align 8
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 408), align 8
  store i16 420, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 412), align 4
  store ptr @nf_log_proc_dostring, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 416), align 16
  store ptr inttoptr (i64 7 to ptr), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 432), align 16
  %i.l = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 24), i64 noundef 3, ptr noundef nonnull @.str.10, i32 noundef 8) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 24), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 448), align 16
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 464), align 16
  store i16 420, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 468), align 4
  store ptr @nf_log_proc_dostring, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 472), align 8
  store ptr inttoptr (i64 8 to ptr), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 488), align 8
  %i.m = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 27), i64 noundef 3, ptr noundef nonnull @.str.10, i32 noundef 9) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 27), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 504), align 8
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 520), align 8
  store i16 420, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 524), align 4
  store ptr @nf_log_proc_dostring, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 528), align 16
  store ptr inttoptr (i64 9 to ptr), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 544), align 16
  %i.n = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 30), i64 noundef 3, ptr noundef nonnull @.str.10, i32 noundef 10) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_fnames, i64 30), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 560), align 16
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 576), align 16
  store i16 420, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 580), align 4
  store ptr @nf_log_proc_dostring, ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 584), align 8
  store ptr inttoptr (i64 10 to ptr), ptr getelementptr inbounds nuw (i8, ptr @nf_log_sysctl_table, i64 600), align 8
  %i.o = tail call ptr @register_net_sysctl_sz(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @nf_log_sysctl_ftable, i64 noundef 1) #14 ; 2 uses
  store ptr %i.o, ptr @nf_log_sysctl_fhdr, align 8
  %.not32.i = icmp eq ptr %i.o, null
  br i1 %.not32.i, label %bb.h, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call dereferenceable_or_null(616) ptr @kmemdup_noprof(ptr noundef nonnull @nf_log_sysctl_table, i64 noundef 616, i32 noundef 3264) #20 ; 2 uses
  %.not31.i = icmp eq ptr %i.p, null
  br i1 %.not31.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.preheader.i
  %.030.i = phi ptr [ @nf_log_sysctl_table, %.preheader.preheader.i ], [ %i.p, %bb.c ] ; 13 uses
  %i.q = getelementptr i8, ptr %.030.i, i64 48
  store ptr %0, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %.030.i, i64 104
  store ptr %0, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.030.i, i64 160
  store ptr %0, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %.030.i, i64 216
  store ptr %0, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %.030.i, i64 272
  store ptr %0, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.030.i, i64 328
  store ptr %0, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %.030.i, i64 384
  store ptr %0, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.030.i, i64 440
  store ptr %0, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %.030.i, i64 496
  store ptr %0, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %.030.i, i64 552
  store ptr %0, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %.030.i, i64 608
  store ptr %0, ptr %i.aa, align 8
  %i.ab = tail call ptr @register_net_sysctl_sz(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %.030.i, i64 noundef 11) #14 ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 2784
  store ptr %i.ab, ptr %i.ac, align 32
  %.not33.i = icmp eq ptr %i.ab, null
  br i1 %.not33.i, label %bb.e, label %netfilter_log_sysctl_init.exit

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @kfree(ptr noundef nonnull %.030.i) #14
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr @nf_log_sysctl_fhdr, align 8
  tail call void @unregister_net_sysctl_table(ptr noundef %i.ad) #14
  br label %bb.h

bb.h:                                             ; preds = %.preheader.preheader.i, %bb.g, %bb.f, %bb.c
  %i.ae = load ptr, ptr %i.a, align 64
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.5, ptr noundef %i.ae) #14
  br label %netfilter_log_sysctl_init.exit

netfilter_log_sysctl_init.exit:                   ; preds = %bb.d, %bb.a, %bb.h
  %.0 = phi i32 [ -12, %bb.h ], [ -12, %bb.a ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nf_log_net_exit(ptr nofree noundef readonly captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2784
  %i.b = load ptr, ptr %i.a, align 32             ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @unregister_net_sysctl_table(ptr noundef %i.b) #14
  %.not.i = icmp eq ptr %0, @init_net
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @kfree(ptr noundef %i.d) #14
  br label %netfilter_log_sysctl_exit.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @nf_log_sysctl_fhdr, align 8
  tail call void @unregister_net_sysctl_table(ptr noundef %i.e) #14
  br label %netfilter_log_sysctl_exit.exit

netfilter_log_sysctl_exit.exit:                   ; preds = %bb.b, %bb.c
  %i.f = getelementptr i8, ptr %0, i64 2688
  %i.g = load ptr, ptr %i.f, align 64
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.5, ptr noundef %i.g) #14
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @seq_start(ptr nofree readonly captures(none) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @nf_log_mutex) #14
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp ugt i64 %i.a, 10
  %. = select i1 %i.b, ptr null, ptr %1
  ret ptr %.
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @seq_stop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_unlock(ptr noundef nonnull @nf_log_mutex) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal ptr @seq_next(ptr nofree readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(ret: address, provenance) %2) #12 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = add i64 %i.a, 1                          ; 2 uses
  store i64 %i.b, ptr %2, align 8
  %i.c = icmp ugt i64 %i.b, 10
  %. = select i1 %i.c, ptr null, ptr %2
  ret ptr %.
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -28, 1) i32 @seq_show(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %.val = load ptr, ptr %i.a, align 8
  %.val.val = load ptr, ptr %.val, align 8
  %i.b = getelementptr i8, ptr %.val.val, i64 2696
  %i.c = load i64, ptr %1, align 8                ; 3 uses
  %i.d = getelementptr [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i64 noundef %i.c) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %i.c, ptr noundef %i.f) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %.val36 = load i64, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %.val37 = load i64, ptr %i.h, align 8
  %i.i = icmp eq i64 %.val37, %.val36
  br i1 %i.i, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.j = load i64, ptr %1, align 8                ; 2 uses
  %i.k = getelementptr [16 x i8], ptr @loggers, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 16             ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.preheader.1, label %seq_puts.exit

seq_puts.exit:                                    ; preds = %.preheader.preheader
  %i.n = load ptr, ptr %i.l, align 8
  tail call void @__seq_puts(ptr noundef %0, ptr noundef %i.n) #14
  %i.o = load i64, ptr %1, align 8
  %i.p = getelementptr [16 x i8], ptr @loggers, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %.not31 = icmp eq ptr %i.r, null
  br i1 %.not31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %seq_puts.exit
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 44) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %seq_puts.exit
  %.val34 = load i64, ptr %i.g, align 8
  %.val35 = load i64, ptr %i.h, align 8
  %i.s = icmp eq i64 %.val35, %.val34
  br i1 %i.s, label %.loopexit, label %..preheader.1_crit_edge

..preheader.1_crit_edge:                          ; preds = %bb.f
  %.pre = load i64, ptr %1, align 8
  br label %.preheader.1

.preheader.1:                                     ; preds = %..preheader.1_crit_edge, %.preheader.preheader
  %i.t = phi i64 [ %.pre, %..preheader.1_crit_edge ], [ %i.j, %.preheader.preheader ]
  %i.u = getelementptr [16 x i8], ptr @loggers, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %seq_puts.exit.1

seq_puts.exit.1:                                  ; preds = %.preheader.1
  %i.y = load ptr, ptr %i.w, align 8
  tail call void @__seq_puts(ptr noundef %0, ptr noundef %i.y) #14
  %.val34.1 = load i64, ptr %i.g, align 8
  %.val35.1 = load i64, ptr %i.h, align 8
  %i.z = icmp eq i64 %.val35.1, %.val34.1
  br i1 %i.z, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %seq_puts.exit.1, %.preheader.1
end_hunk_0
