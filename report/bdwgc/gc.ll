Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_get_prof_stats_unsafe:bb.a
  store i64 %i.ae, ptr %.16..16..16..sroa_idx, align 8
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 64), align 8
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.af, ptr %.24..24..24..sroa_idx, align 8
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 48), align 8
  %.32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.ag, ptr %.32..32..32..sroa_idx, align 8
  %i.ah = load i64, ptr @GC_non_gc_bytes, align 8
  %.40..40..40..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.ah, ptr %.40..40..40..sroa_idx, align 8
  %i.ai = load i64, ptr @GC_gc_no, align 8
  %.48..48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.ai, ptr %.48..48..48..sroa_idx, align 8
  %i.aj = load i32, ptr @GC_parallel, align 4
  %i.ak = sext i32 %i.aj to i64
  %.56..56..56..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %i.ak, ptr %.56..56..56..sroa_idx, align 8
  %i.al = load i64, ptr @GC_bytes_found, align 8
  %i.am = tail call i64 @llvm.smax.i64(i64 %i.al, i64 0)
  %.64..64..64..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.am, ptr %.64..64..64..sroa_idx, align 8
  %i.an = load i64, ptr @GC_reclaimed_bytes_before_gc, align 8
  %.72..72..72..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %i.an, ptr %.72..72..72..sroa_idx, align 8
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %.80..80..80..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %i.ao, ptr %.80..80..80..sroa_idx, align 8
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %.88..88..88..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.ap, ptr %.88..88..88..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 8 %2, i64 %1, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %.0 = phi i64 [ 96, %bb.b ], [ 96, %bb.c ], [ %1, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @GC_is_init_called() local_unnamed_addr #10 {
bb.a:
  %.b = load i1, ptr @GC_is_initialized, align 4
  %i.a = zext i1 %.b to i32
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @GC_set_log_fd(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  store i32 %0, ptr @GC_log, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @GC_set_manual_vdb_allowed(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  store i32 %0, ptr @manual_vdb_allowed, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GC_get_manual_vdb_allowed() local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @manual_vdb_allowed, align 4
  ret i32 %i.a
}

declare i32 @pthread_setcancelstate(i32 noundef, ptr noundef) local_unnamed_addr #32

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_setpagesize() unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @getpagesize() #51         ; 2 uses
  %i.b = zext i32 %i.a to i64
  store i64 %i.b, ptr @GC_page_size, align 8
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.d(ptr noundef nonnull @.str.238) #45
  tail call void @abort() #48
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #33

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @maybe_install_looping_handler() unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @installed_looping_handler, align 4
  br i1 %.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.230) #45
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @signal(i32 noundef 11, ptr noundef nonnull @looping_handler) #45
  store ptr %i.b, ptr @old_segv_handler, align 8
  %i.c = tail call ptr @signal(i32 noundef 7, ptr noundef nonnull @looping_handler) #45
  store ptr %i.c, ptr @old_bus_handler, align 8
  store i1 true, ptr @installed_looping_handler, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @GC_get_main_stack_base() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 8 uses
  %0 = alloca %union.pthread_attr_t, align 8      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  %i.d = tail call i64 @pthread_self() #51
  %i.e = call i32 @pthread_getattr_np(i64 noundef %i.d, ptr noundef nonnull %0) #45
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @pthread_attr_getstack(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #45
  %i.h = icmp eq i32 %i.g, 0
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = icmp ne ptr %i.i, null
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  %i.k = call i32 @pthread_attr_destroy(ptr noundef nonnull %0) #45 ; 0 uses
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = load i64, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  br label %bb.t

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr @GC_current_warn_proc, align 8
  call void %i.o(ptr noundef nonnull @.str.115, i64 noundef 0) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %.not.i = icmp eq ptr null, @__libc_stack_end
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @__libc_stack_end, align 8 ; 2 uses
  %.not45.i = icmp eq ptr %i.p, null
  br i1 %.not45.i, label %bb.f, label %GC_linux_main_stack_base.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.239, i32 noundef 0) #45 ; 3 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.g, label %.preheader53.i

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @__errno_location() #51
  %i.t = load i32, ptr %i.s, align 4
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.240, i32 noundef %i.t)
  %i.u = load ptr, ptr @GC_on_abort, align 8
  call void %i.u(ptr noundef nonnull @.str.241) #45, !inline_history !160
  call void @abort() #48
  unreachable

.preheader53.i:                                   ; preds = %bb.f, %bb.h
  %.015.i.i = phi i64 [ %.116.i.i, %bb.h ], [ undef, %bb.f ]
  %.014.i.i = phi i64 [ %.1.i.i, %bb.h ], [ 0, %bb.f ] ; 5 uses
  %i.v = icmp ult i64 %.014.i.i, 4096
  br i1 %i.v, label %bb.h, label %GC_repeat_read.exit.i

bb.h:                                             ; preds = %.preheader53.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %.014.i.i
  %i.x = sub nuw nsw i64 4096, %.014.i.i
  %i.y = call i64 @read(i32 noundef range(i32 0, -1) %i.q, ptr noundef nonnull %i.w, i64 noundef %i.x) #45 ; 4 uses
  %i.z = icmp slt i64 %i.y, 0                     ; 2 uses
  %i.aa = icmp eq i64 %i.y, 0
  %spec.select21.i.i = select i1 %i.aa, i32 3, i32 0
  %.116.i.i = select i1 %i.z, i64 %i.y, i64 %.015.i.i ; 2 uses
  %i.ab = call i64 @llvm.smax.i64(i64 %i.y, i64 0)
  %.1.i.i = add nuw i64 %i.ab, %.014.i.i          ; 2 uses
  %.0.i.i = select i1 %i.z, i32 1, i32 %spec.select21.i.i
  switch i32 %.0.i.i, label %GC_repeat_read.exit.i.loopexit [
    i32 0, label %.preheader53.i
    i32 3, label %GC_repeat_read.exit.i
  ], !llvm.loop !26

GC_repeat_read.exit.i.loopexit:                   ; preds = %bb.h
  br label %GC_repeat_read.exit.i

GC_repeat_read.exit.i:                            ; preds = %.preheader53.i, %bb.h, %GC_repeat_read.exit.i.loopexit
  %.217.i.i = phi i64 [ %.1.i.i, %bb.h ], [ %.014.i.i, %.preheader53.i ], [ %.116.i.i, %GC_repeat_read.exit.i.loopexit ] ; 8 uses
  %i.ac = icmp slt i64 %.217.i.i, 0
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %GC_repeat_read.exit.i
  %i.ad = tail call ptr @__errno_location() #51
  %i.ae = load i32, ptr %i.ad, align 4
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.242, i32 noundef %i.ae)
  %i.af = load ptr, ptr @GC_on_abort, align 8
  call void %i.af(ptr noundef nonnull @.str.243) #45, !inline_history !160
  call void @abort() #48
  unreachable

bb.j:                                             ; preds = %GC_repeat_read.exit.i
  %i.ag = call i32 @close(i32 noundef %i.q) #45   ; 0 uses
  br label %.preheader52.i

.preheader52.i:                                   ; preds = %.critedge2.i, %bb.j
  %.056.i = phi i64 [ 0, %bb.j ], [ %.4.i, %.critedge2.i ] ; 3 uses
  %.03655.i = phi i64 [ 0, %bb.j ], [ %i.bc, %.critedge2.i ]
  %smax.i = call i64 @llvm.smax.i64(i64 %.056.i, i64 %.217.i.i) ; 3 uses
  %exitcond.not.i26.not = icmp slt i64 %.056.i, %.217.i.i
  br i1 %exitcond.not.i26.not, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %.preheader52.i
  %i.ah = tail call ptr @__ctype_b_loc() #51
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %.lr.ph

.preheader.i:                                     ; preds = %.critedge2.i
  %i.aj = icmp slt i64 %.4.i, %.217.i.i
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ak = tail call ptr @__ctype_b_loc() #51
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.am, %smax.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !161

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.1.i27 = phi i64 [ %i.am, %bb.k ], [ %.056.i, %.lr.ph.preheader ] ; 2 uses
  %i.am = add i64 %.1.i27, 1                      ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %i.a, i64 %.1.i27
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = sext i8 %i.ao to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = and i16 %i.ar, 8192
  %.not50.i = icmp eq i16 %i.as, 0
  br i1 %.not50.i, label %..critedge.i_crit_edge, label %bb.k, !llvm.loop !161

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !161

.critedge.i:                                      ; preds = %bb.k, %..critedge.i_crit_edge, %.preheader52.i
  %.2.i = phi i64 [ %i.am, %..critedge.i_crit_edge ], [ %smax.i, %.preheader52.i ], [ %smax.i, %bb.k ] ; 3 uses
  %smax64.i = call i64 @llvm.smax.i64(i64 %.2.i, i64 %.217.i.i) ; 3 uses
  %exitcond65.not.i30.not = icmp slt i64 %.2.i, %.217.i.i
  br i1 %exitcond65.not.i30.not, label %.lr.ph32.preheader, label %.critedge2.i

.lr.ph32.preheader:                               ; preds = %.critedge.i
  %i.at = tail call ptr @__ctype_b_loc() #51
  %i.au = load ptr, ptr %i.at, align 8
  br label %.lr.ph32

bb.l:                                             ; preds = %.lr.ph32
  %exitcond65.not.i = icmp eq i64 %i.av, %smax64.i
  br i1 %exitcond65.not.i, label %.critedge2.i, label %.lr.ph32, !llvm.loop !162

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %bb.l
  %.3.i31 = phi i64 [ %i.av, %bb.l ], [ %.2.i, %.lr.ph32.preheader ] ; 2 uses
  %i.av = add i64 %.3.i31, 1                      ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %i.a, i64 %.3.i31
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = sext i8 %i.ax to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = and i16 %i.ba, 8192
  %.not51.i = icmp eq i16 %i.bb, 0
  br i1 %.not51.i, label %bb.l, label %..critedge2.i_crit_edge, !llvm.loop !162

..critedge2.i_crit_edge:                          ; preds = %.lr.ph32
  br label %.critedge2.i, !llvm.loop !162

.critedge2.i:                                     ; preds = %bb.l, %..critedge2.i_crit_edge, %.critedge.i
  %.4.i = phi i64 [ %i.av, %..critedge2.i_crit_edge ], [ %smax64.i, %.critedge.i ], [ %smax64.i, %bb.l ] ; 3 uses
  %i.bc = add nuw nsw i64 %.03655.i, 1            ; 2 uses
  %exitcond66.not.i = icmp eq i64 %i.bc, 27
  br i1 %exitcond66.not.i, label %.preheader.i, label %.preheader52.i, !llvm.loop !163

bb.m:                                             ; preds = %bb.n, %.lr.ph.i
  %.557.i = phi i64 [ %.4.i, %.lr.ph.i ], [ %i.bj, %bb.n ] ; 6 uses
  %i.bd = getelementptr inbounds i8, ptr %i.a, i64 %.557.i
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = sext i8 %i.be to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = and i16 %i.bh, 8192
  %.not46.i = icmp eq i16 %i.bi, 0
  br i1 %.not46.i, label %.lr.ph61.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = add i64 %.557.i, 1                      ; 2 uses
  %exitcond67.not.i = icmp eq i64 %i.bj, %.217.i.i
  br i1 %exitcond67.not.i, label %._crit_edge.i, label %bb.m, !llvm.loop !164

.lr.ph61.i:                                       ; preds = %bb.m
  %1 = getelementptr inbounds i8, ptr %i.a, i64 %.557.i
  %i.bk = sub i64 %.217.i.i, %.557.i
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %i.bl = add nuw i64 %.13760.i, 1                ; 2 uses
  %exitcond68.not.i = icmp eq i64 %i.bl, %i.bk
  br i1 %exitcond68.not.i, label %._crit_edge.i, label %bb.p, !llvm.loop !165

bb.p:                                             ; preds = %bb.o, %.lr.ph61.i
  %.13760.i = phi i64 [ 0, %.lr.ph61.i ], [ %i.bl, %bb.o ] ; 2 uses
  %i.bm = getelementptr i8, ptr %i.a, i64 %.13760.i ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 %.557.i
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = sext i8 %i.bo to i64
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = and i16 %i.br, 2048
  %.not47.i = icmp eq i16 %i.bs, 0
  br i1 %.not47.i, label %bb.q, label %bb.o

._crit_edge.i:                                    ; preds = %bb.n, %bb.o, %.preheader.i
  %i.bt = load ptr, ptr @GC_on_abort, align 8
  call void %i.bt(ptr noundef nonnull @.str.244) #45, !inline_history !160
  call void @abort() #48
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr i8, ptr %i.bm, i64 %.557.i
  store i8 0, ptr %i.bu, align 1
  %i.bv = call i64 @__isoc23_strtoul(ptr noundef nonnull %1, ptr noundef null, i32 noundef 10) #45 ; 4 uses
  %i.bw = icmp ugt i64 %i.bv, 1048575
  %i.bx = and i64 %i.bv, 7
  %.not49.i = icmp eq i64 %i.bx, 0
  %or.cond.i = and i1 %i.bw, %.not49.i
  br i1 %or.cond.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.245, i64 noundef %i.bv)
  %i.by = load ptr, ptr @GC_on_abort, align 8
  call void %i.by(ptr noundef nonnull @.str.246) #45, !inline_history !160
  call void @abort() #48
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bz = inttoptr i64 %i.bv to ptr
  br label %GC_linux_main_stack_base.exit

GC_linux_main_stack_base.exit:                    ; preds = %bb.e, %bb.s
  %.038.i = phi ptr [ %i.bz, %bb.s ], [ %i.p, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.ca = icmp eq ptr %.038.i, null
  %spec.store.select = select i1 %i.ca, ptr inttoptr (i64 -8 to ptr), ptr %.038.i
  br label %bb.t

bb.t:                                             ; preds = %GC_linux_main_stack_base.exit, %bb.c
  %.0 = phi ptr [ %i.n, %bb.c ], [ %spec.store.select, %GC_linux_main_stack_base.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #45
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_init_headers() unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8 ; 5 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d
  %.not33.i = icmp ult i64 %i.e, 8224
  br i1 %.not33.i, label %.lr.ph.split.i, label %GC_scratch_alloc.exit

.lr.ph.split.i:                                   ; preds = %bb.a, %bb.c
  %i.f = load i64, ptr @GC_page_size, align 8     ; 3 uses
  %notsub.i = add nsw i64 %i.f, -1
  %i.g = icmp ult i64 %notsub.i, -65537
  %i.h = add nsw i64 %i.f, 65535
  %i.i = select i1 %i.g, i64 %i.h, i64 -1, !prof !47
  %i.j = sub i64 0, %i.f
  %i.k = and i64 %i.i, %i.j                       ; 4 uses
  %i.l = tail call ptr @GC_unix_get_mem(i64 noundef %i.k) ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %bb.c, !prof !48

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.n = load ptr, ptr @GC_current_warn_proc, align 8
  tail call void %i.n(ptr noundef nonnull @.str.153, i64 noundef 8224) #45, !inline_history !61
  %i.o = load i64, ptr @GC_page_size, align 8     ; 2 uses
  %i.p = sub nsw i64 0, %i.o                      ; 2 uses
  %i.q = icmp ugt i64 %i.p, 8224
  %i.r = add i64 %i.o, 8223
  %i.s = select i1 %i.q, i64 %i.r, i64 -1, !prof !47
  %i.t = and i64 %i.s, %i.p                       ; 2 uses
  %i.u = tail call ptr @GC_unix_get_mem(i64 noundef %i.t) ; 2 uses
  %.not29.i = icmp eq ptr %i.u, null
  br i1 %.not29.i, label %GC_scratch_alloc.exit.thread, label %GC_scratch_alloc.exit.thread5

GC_scratch_alloc.exit.thread:                     ; preds = %bb.b
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.d

GC_scratch_alloc.exit.thread5:                    ; preds = %bb.b
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.w = add i64 %i.v, %i.t
  store i64 %i.w, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  br label %.sink.split

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.y = add i64 %i.x, %i.k
  store i64 %i.y, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %.not.i = icmp ult i64 %i.k, 8224
  br i1 %.not.i, label %.lr.ph.split.i, label %GC_scratch_alloc.exit.thread8

GC_scratch_alloc.exit.thread8:                    ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8224
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  br label %.sink.split

GC_scratch_alloc.exit:                            ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  %i.ac = icmp eq ptr %i.a, null
  br i1 %i.ac, label %bb.d, label %vector.ph

bb.d:                                             ; preds = %GC_scratch_alloc.exit.thread, %GC_scratch_alloc.exit
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.232)
  %i.ad = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ad(ptr noundef null) #45
  tail call void @exit(i32 noundef 1) #49
  unreachable

.sink.split:                                      ; preds = %GC_scratch_alloc.exit.thread5, %GC_scratch_alloc.exit.thread8
  %.lcssa16.sink = phi ptr [ %i.l, %GC_scratch_alloc.exit.thread8 ], [ %i.u, %GC_scratch_alloc.exit.thread5 ] ; 2 uses
  store ptr %.lcssa16.sink, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %vector.ph

vector.ph:                                        ; preds = %.sink.split, %GC_scratch_alloc.exit
  %.026.i7 = phi ptr [ %i.a, %GC_scratch_alloc.exit ], [ %.lcssa16.sink, %.sink.split ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8224) %.026.i7, i8 0, i64 8224, i1 false)
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.af, align 8
  store <2 x ptr> %broadcast.splat, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store <2 x ptr> %broadcast.splat, ptr %i.ai, align 8
  store <2 x ptr> %broadcast.splat, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  store <2 x ptr> %broadcast.splat, ptr %i.al, align 8
  store <2 x ptr> %broadcast.splat, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  store <2 x ptr> %broadcast.splat, ptr %i.ao, align 8
  store <2 x ptr> %broadcast.splat, ptr %i.ap, align 8
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.aq = icmp eq i64 %index.next.3, 2048
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @GC_dirty_init() unnamed_addr #2 {
bb.a:
  %i.a = alloca [1 x i64], align 8                ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %0 = alloca %struct.utsname, align 1            ; 9 uses
  %1 = alloca %struct.sigaction, align 8          ; 7 uses
  %2 = alloca %struct.sigaction, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  %i.c = load i64, ptr @GC_arrays, align 8
  %i.d = load i64, ptr @GC_page_size, align 8
  %i.e = udiv i64 %i.c, %i.d
  %i.f = icmp sgt i64 %i.e, 32767
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @GC_print_stats, align 4
  %.not14 = icmp eq i32 %i.g, 0
  br i1 %.not14, label %bb.aw, label %bb.c, !prof !47

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.253)
  br label %bb.aw

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 268435460, ptr %i.h, align 8
  store ptr @GC_write_fault_handler, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = call i32 @sigemptyset(ptr noundef nonnull %i.i) #45 ; 0 uses
  %i.k = load i32, ptr @GC_sig_suspend, align 4   ; 2 uses
  %.not.i = icmp eq i32 %i.k, -1
  %i.l = select i1 %.not.i, i32 30, i32 %i.k
  %i.m = call i32 @sigaddset(ptr noundef nonnull %i.i, i32 noundef %i.l) #45 ; 0 uses
  %i.n = load i32, ptr @GC_print_stats, align 4
  %.not = icmp eq i32 %i.n, 2
  br i1 %.not, label %bb.e, label %bb.f, !prof !48

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.254)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = load i64, ptr @GC_page_size, align 8
  %i.p = and i64 %i.o, 4095
  %.not3 = icmp eq i64 %i.p, 0
  br i1 %.not3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @GC_on_abort, align 8
end_hunk_0
