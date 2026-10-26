Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5PLpath?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
begin_hunk_0_@H5PL__insert_path:bb.a

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !21
  %i.j = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !21
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__insert_path, i32 noundef 481, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.10) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5PL__remove_path(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5PL_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @H5PL_paths_g, align 8, !tbaa !19
  %i.h = zext i32 %0 to i64                       ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !21
  %i.l = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !21
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__remove_path, i32 noundef 510, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.11, i32 noundef %0) #12 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = load i32, ptr @H5PL_num_paths_g, align 4, !tbaa !16
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr @H5PL_num_paths_g, align 4, !tbaa !16
  %i.p = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.j) #12
  %i.q = load ptr, ptr @H5PL_paths_g, align 8, !tbaa !19 ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.h
  store ptr %i.p, ptr %i.r, align 8, !tbaa !10
  %i.s = load i32, ptr @H5PL_num_paths_g, align 4, !tbaa !16 ; 3 uses
  %i.t = icmp ult i32 %0, %i.s
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.u = shl nuw nsw i64 %i.h, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.u
  %i.v = getelementptr i8, ptr %i.q, i64 %i.u
  %scevgep14 = getelementptr i8, ptr %i.v, i64 8
  %i.w = xor i32 %0, -1
  %i.x = add i32 %i.s, %i.w
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep14, i64 %i.aa, i1 false), !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.d
  %i.ab = zext i32 %i.s to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %._crit_edge, %bb.a
  %.0 = phi i32 [ 0, %._crit_edge ], [ -1, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @H5PL__get_path(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5PL_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @H5PL_num_paths_g, align 4, !tbaa !16
  %.not = icmp ult i32 %0, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !21
  %i.i = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !21
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__get_path, i32 noundef 546, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.12, i32 noundef %0) #12 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @H5PL_paths_g, align 8, !tbaa !19
  %i.l = zext i32 %0 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.05 = phi ptr [ %i.n, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.05
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @H5PL__path_table_iterate(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %3 = alloca %struct.stat, align 8               ; 7 uses
  %i.d = load i8, ptr @H5PL_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  %i.j = load i32, ptr @H5PL_num_paths_g, align 4
  %i.k = icmp ne i32 %i.j, 0
  %or.cond = select i1 %i.i, i1 %i.k, i1 false, !prof !23
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !prof !23

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = icmp eq i32 %0, 3
  %i.n = icmp eq i32 %0, 0
  %i.o = icmp eq i32 %0, 1
  %i.p = icmp eq i32 %0, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.q = load ptr, ptr @H5PL_paths_g, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.t = load i8, ptr @H5PL_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = xor i1 %i.w, true
  %i.y = select i1 %i.u, i1 true, i1 %i.x
  br i1 %i.y, label %bb.c, label %.sink.split, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.z = call noalias ptr @opendir(ptr noundef %i.s) ; 4 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %H5PL__path_table_iterate_process_path.exit.thread16, label %.preheader.i

H5PL__path_table_iterate_process_path.exit.thread16: ; preds = %bb.c
  %i.aa = call ptr @H5MM_xfree(ptr noundef null) #12 ; 0 uses
  br label %.sink.split

.preheader.i:                                     ; preds = %bb.c
  %i.ab = call ptr @readdir64(ptr noundef nonnull %i.z) #12 ; 2 uses
  %.not5384.i = icmp eq ptr %i.ab, null
  br i1 %.not5384.i, label %.loopexit.thread.i, label %sub_0.i

sub_0.i:                                          ; preds = %.preheader.i, %.backedge.i
  %i.ac = phi ptr [ %i.by, %.backedge.i ], [ %i.ab, %.preheader.i ] ; 3 uses
  %.04085.i = phi ptr [ %.040.be.i, %.backedge.i ], [ null, %.preheader.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 19 ; 5 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %.not87.i = icmp eq i8 %i.ae, 108
  br i1 %.not87.i, label %sub_1.i, label %.backedge.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ag = load i8, ptr %i.af, align 1
  %.not88.i = icmp eq i8 %i.ag, 105
  br i1 %.not88.i, label %.tail.i, label %.backedge.i

.tail.i:                                          ; preds = %sub_1.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 21
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp eq i8 %i.ai, 98
  br i1 %i.aj, label %bb.d, label %.backedge.i

bb.d:                                             ; preds = %.tail.i
  %i.ak = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(1) @.str.22) #14
  %.not55.i = icmp eq ptr %i.ak, null
  br i1 %.not55.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(1) @.str.23) #14
  %.not56.i = icmp eq ptr %i.al, null
  br i1 %.not56.i, label %.backedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.am = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #14
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #14
  %i.ao = add i64 %i.am, 6
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.ap) #13 ; 11 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !21
  %i.at = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !21
  %i.au = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__path_table_iterate_process_path, i32 noundef 643, i64 noundef %i.as, i64 noundef %i.at, ptr noundef nonnull @.str.24) #12 ; 0 uses
  br label %.thread.i

bb.h:                                             ; preds = %bb.f
  %i.av = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.aq, i64 noundef %i.ap, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.s, ptr noundef nonnull %i.ad) #12 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 144, i1 false)
  %i.aw = call i32 @stat64(ptr noundef nonnull %i.aq, ptr noundef nonnull %3) #12
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = load i64, ptr @H5E_FILE_g, align 8, !tbaa !21
  %i.az = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !21
  %i.ba = tail call ptr @__errno_location() #15
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !16
  %i.bc = call ptr @strerror(i32 noundef %i.bb) #12
  %i.bd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__path_table_iterate_process_path, i32 noundef 651, i64 noundef %i.ay, i64 noundef %i.az, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.aq, ptr noundef %i.bc) #12 ; 0 uses
  br label %.thread.i

bb.j:                                             ; preds = %bb.h
  %i.be = load i32, ptr %i.l, align 8, !tbaa !27
  %i.bf = and i32 %i.be, 61440
  %i.bg = icmp eq i32 %i.bf, 16384
  br i1 %i.bg, label %.backedge.sink.split.i, label %bb.k, !llvm.loop !30

bb.k:                                             ; preds = %bb.j
  store i32 -1, ptr %i.a, align 4, !tbaa !16
  store ptr null, ptr %i.b, align 8, !tbaa !24
  store i8 0, ptr %i.c, align 1, !tbaa !12
  %i.bh = call i32 @H5PL__open(ptr noundef nonnull %i.aq, i32 noundef 3, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !21
  %i.bk = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !21
  %i.bl = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__path_table_iterate_process_path, i32 noundef 662, i64 noundef %i.bj, i64 noundef %i.bk, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.aq) #12 ; 0 uses
  br label %.thread.i

bb.m:                                             ; preds = %bb.k
  br i1 %i.m, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = load i32, ptr %i.a, align 4             ; 3 uses
  %i.bn = icmp eq i32 %i.bm, 0
  %or.cond.i = select i1 %i.n, i1 %i.bn, i1 false
  %i.bo = icmp eq i32 %i.bm, 1
  %or.cond3.i = select i1 %i.o, i1 %i.bo, i1 false
  %or.cond86.i = select i1 %or.cond.i, i1 true, i1 %or.cond3.i
  br i1 %or.cond86.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = icmp eq i32 %i.bm, 2
  %i.bq = select i1 %i.p, i1 %i.bp, i1 false
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.br = phi i1 [ %i.bq, %bb.o ], [ true, %bb.n ], [ true, %bb.m ]
  %i.bs = load i8, ptr %i.c, align 1, !tbaa !12, !range !13, !noundef !14
  %i.bt = trunc nuw i8 %i.bs to i1
  %or.cond5.i = select i1 %i.bt, i1 %i.br, i1 false
  br i1 %or.cond5.i, label %bb.q, label %.thread61.i

bb.q:                                             ; preds = %bb.p
  %i.bu = load i32, ptr %i.a, align 4, !tbaa !16
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.bw = call i32 %1(i32 noundef %i.bu, ptr noundef %i.bv, ptr noundef %2) #12, !inline_history !31 ; 4 uses
  %.not57.i = icmp eq i32 %i.bw, 0
  br i1 %.not57.i, label %.thread61.i, label %.loopexit.i

.thread61.i:                                      ; preds = %bb.q, %bb.p
  %i.bx = call ptr @H5MM_xfree(ptr noundef nonnull %i.aq) #12
  br label %.backedge.sink.split.i

.thread.i:                                        ; preds = %bb.l, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.loopexit.thread.i

.backedge.sink.split.i:                           ; preds = %.thread61.i, %bb.j
  %.040.be.ph.i = phi ptr [ %i.bx, %.thread61.i ], [ %i.aq, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.sink.split.i, %bb.e, %.tail.i, %sub_1.i, %sub_0.i
  %.040.be.i = phi ptr [ %.04085.i, %sub_0.i ], [ %.04085.i, %.tail.i ], [ %.04085.i, %sub_1.i ], [ %.04085.i, %bb.e ], [ %.040.be.ph.i, %.backedge.sink.split.i ] ; 2 uses
  %i.by = call ptr @readdir64(ptr noundef nonnull %i.z) #12 ; 2 uses
  %.not53.i = icmp eq ptr %i.by, null
  br i1 %.not53.i, label %.loopexit.thread.i, label %sub_0.i, !llvm.loop !30

.loopexit.i:                                      ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.bz = icmp slt i32 %i.bw, 0
  br i1 %i.bz, label %bb.r, label %.loopexit.thread.i

bb.r:                                             ; preds = %.loopexit.i
  %i.ca = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !21
  %i.cb = load i64, ptr @H5E_CALLBACK_g, align 8, !tbaa !21
  %i.cc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__path_table_iterate_process_path, i32 noundef 679, i64 noundef %i.ca, i64 noundef %i.cb, ptr noundef nonnull @.str.28) #12 ; 0 uses
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.backedge.i, %bb.r, %.loopexit.i, %.thread.i, %.preheader.i
  %.444.ph.i = phi ptr [ %i.aq, %.thread.i ], [ %i.aq, %.loopexit.i ], [ %i.aq, %bb.r ], [ null, %.preheader.i ], [ %.040.be.i, %.backedge.i ] ; 2 uses
  %.5.ph.i = phi i32 [ -1, %.thread.i ], [ %i.bw, %.loopexit.i ], [ %i.bw, %bb.r ], [ 0, %.preheader.i ], [ 0, %.backedge.i ] ; 2 uses
  %i.cd = call i32 @closedir(ptr noundef nonnull %i.z)
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %H5PL__path_table_iterate_process_path.exit.thread13, label %H5PL__path_table_iterate_process_path.exit

H5PL__path_table_iterate_process_path.exit.thread13: ; preds = %.loopexit.thread.i
  %i.cf = load i64, ptr @H5E_FILE_g, align 8, !tbaa !21
  %i.cg = load i64, ptr @H5E_CLOSEERROR_g, align 8, !tbaa !21
  %i.ch = tail call ptr @__errno_location() #15
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !16
  %i.cj = call ptr @strerror(i32 noundef %i.ci) #12
  %i.ck = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__path_table_iterate_process_path, i32 noundef 685, i64 noundef %i.cf, i64 noundef %i.cg, ptr noundef nonnull @.str.29, ptr noundef %i.cj) #12 ; 0 uses
  %i.cl = call ptr @H5MM_xfree(ptr noundef %.444.ph.i) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit19

H5PL__path_table_iterate_process_path.exit:       ; preds = %.loopexit.thread.i
  %i.cm = call ptr @H5MM_xfree(ptr noundef %.444.ph.i) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.cn = icmp slt i32 %.5.ph.i, 0
  br i1 %i.cn, label %.loopexit19, label %bb.s

.loopexit19:                                      ; preds = %H5PL__path_table_iterate_process_path.exit, %H5PL__path_table_iterate_process_path.exit.thread13
  %i.co = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !21
  %i.cp = load i64, ptr @H5E_BADITER_g, align 8, !tbaa !21
  %i.cq = load ptr, ptr @H5PL_paths_g, align 8, !tbaa !19
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !10
  %i.ct = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__path_table_iterate, i32 noundef 578, i64 noundef %i.co, i64 noundef %i.cp, ptr noundef nonnull @.str.13, ptr noundef %i.cs) #12 ; 0 uses
  br label %.loopexit

.sink.split:                                      ; preds = %bb.b, %H5PL__path_table_iterate_process_path.exit.thread16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %H5PL__path_table_iterate_process_path.exit
  %.7.i12 = phi i32 [ %.5.ph.i, %H5PL__path_table_iterate_process_path.exit ], [ 0, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = load i32, ptr @H5PL_num_paths_g, align 4, !tbaa !16
  %i.cv = zext i32 %i.cu to i64
  %i.cw = icmp samesign ult i64 %indvars.iv.next, %i.cv
  %i.cx = icmp eq i32 %.7.i12, 0
  %i.cy = and i1 %i.cx, %i.cw
  br i1 %i.cy, label %bb.b, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %bb.s, %.loopexit19, %bb.a
  %.1 = phi i32 [ -1, %.loopexit19 ], [ 0, %bb.a ], [ %.7.i12, %bb.s ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define noundef i32 @H5PL__find_plugin_in_path_table(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 6 uses
  %i.a = load i8, ptr @H5PL_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !15

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1, !tbaa !12
  store ptr null, ptr %2, align 8, !tbaa !24
  %i.g = load i32, ptr @H5PL_num_paths_g, align 4, !tbaa !16
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.c:                                             ; preds = %H5PL__find_plugin_in_path.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr @H5PL_num_paths_g, align 4, !tbaa !16
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %bb.d, label %.loopexit, !llvm.loop !33

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.m = load ptr, ptr @H5PL_paths_g, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !10   ; 4 uses
  %i.p = load i8, ptr @H5PL_init_g, align 1, !tbaa !12, !range !13, !noundef !14
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = load i8, ptr @H5_libterm_g, align 1, !range !13
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = xor i1 %i.s, true
  %i.u = select i1 %i.q, i1 true, i1 %i.t
  br i1 %i.u, label %bb.e, label %H5PL__find_plugin_in_path.exit.thread, !prof !15

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %1, align 1, !tbaa !12
  %i.v = tail call noalias ptr @opendir(ptr noundef %i.o) ; 4 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.p, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.w = tail call ptr @readdir64(ptr noundef nonnull %i.v) #12 ; 2 uses
  %.not4469.i = icmp eq ptr %i.w, null
  br i1 %.not4469.i, label %.loopexit.i, label %sub_0.i

sub_0.i:                                          ; preds = %.preheader.i, %.backedge.i
  %i.x = phi ptr [ %i.bn, %.backedge.i ], [ %i.w, %.preheader.i ] ; 3 uses
  %.03570.i = phi ptr [ %.035.be.i, %.backedge.i ], [ null, %.preheader.i ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 19 ; 5 uses
  %i.z = load i8, ptr %i.y, align 1
  %.not71.i = icmp eq i8 %i.z, 108
  br i1 %.not71.i, label %sub_1.i, label %.backedge.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ab = load i8, ptr %i.aa, align 1
  %.not72.i = icmp eq i8 %i.ab, 105
  br i1 %.not72.i, label %.tail.i, label %.backedge.i

.tail.i:                                          ; preds = %sub_1.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 21
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp eq i8 %i.ad, 98
  br i1 %i.ae, label %bb.f, label %.backedge.i

bb.f:                                             ; preds = %.tail.i
  %i.af = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) @.str.22) #14
  %.not46.i = icmp eq ptr %i.af, null
  br i1 %.not46.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) @.str.23) #14
  %.not47.i = icmp eq ptr %i.ag, null
  br i1 %.not47.i, label %.backedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ah = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #14
  %i.ai = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #14
  %i.aj = add i64 %i.ah, 6
  %i.ak = add i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.ak) #13 ; 7 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !21
  %i.ao = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !21
  %i.ap = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__find_plugin_in_path, i32 noundef 881, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.24) #12 ; 0 uses
  br label %.thread.i

bb.j:                                             ; preds = %bb.h
  %i.aq = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.al, i64 noundef %i.ak, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.o, ptr noundef nonnull %i.y) #12 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 144, i1 false)
  %i.ar = call i32 @stat64(ptr noundef nonnull %i.al, ptr noundef nonnull %3) #12
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = load i64, ptr @H5E_FILE_g, align 8, !tbaa !21
  %i.au = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !21
  %i.av = tail call ptr @__errno_location() #15
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16
  %i.ax = tail call ptr @strerror(i32 noundef %i.aw) #12
  %i.ay = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__find_plugin_in_path, i32 noundef 889, i64 noundef %i.at, i64 noundef %i.au, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.al, ptr noundef %i.ax) #12 ; 0 uses
  br label %.thread.i

bb.l:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.h, align 8, !tbaa !27
  %i.ba = and i32 %i.az, 61440
  %i.bb = icmp eq i32 %i.ba, 16384
  br i1 %i.bb, label %.backedge.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = load i32, ptr %0, align 8, !tbaa !37
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.be = tail call i32 @H5PL__open(ptr noundef nonnull %i.al, i32 noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %2) #12
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !21
  %i.bh = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !21
  %i.bi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__find_plugin_in_path, i32 noundef 899, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.31) #12 ; 0 uses
  br label %.thread.i

bb.o:                                             ; preds = %bb.m
  %i.bj = load i8, ptr %1, align 1, !tbaa !12, !range !13, !noundef !14
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.thread.i, label %.backedge.sink.split.i

.thread.i:                                        ; preds = %bb.o, %bb.n, %bb.k, %bb.i
  %i.bl = phi i1 [ true, %bb.i ], [ true, %bb.n ], [ true, %bb.k ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.loopexit.i

.backedge.sink.split.i:                           ; preds = %bb.o, %bb.l
  %i.bm = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.al) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.sink.split.i, %bb.g, %.tail.i, %sub_1.i, %sub_0.i
  %.035.be.i = phi ptr [ %.03570.i, %sub_0.i ], [ %.03570.i, %.tail.i ], [ %.03570.i, %sub_1.i ], [ %.03570.i, %bb.g ], [ %i.bm, %.backedge.sink.split.i ] ; 2 uses
  %i.bn = tail call ptr @readdir64(ptr noundef nonnull %i.v) #12 ; 2 uses
  %.not44.i = icmp eq ptr %i.bn, null
  br i1 %.not44.i, label %.loopexit.i, label %sub_0.i, !llvm.loop !34

bb.p:                                             ; preds = %bb.e
  %i.bo = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !21
  %i.bp = load i64, ptr @H5E_OPENERROR_g, align 8, !tbaa !21
  %i.bq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__find_plugin_in_path, i32 noundef 858, i64 noundef %i.bo, i64 noundef %i.bp, ptr noundef nonnull @.str.30, ptr noundef %i.o) #12 ; 0 uses
  br label %H5PL__find_plugin_in_path.exit.thread14

.loopexit.i:                                      ; preds = %.backedge.i, %.thread.i, %.preheader.i
  %.338.ph.i = phi ptr [ %i.al, %.thread.i ], [ null, %.preheader.i ], [ %.035.be.i, %.backedge.i ] ; 2 uses
  %.3.ph.i = phi i1 [ %i.bl, %.thread.i ], [ false, %.preheader.i ], [ false, %.backedge.i ]
  %i.br = tail call i32 @closedir(ptr noundef nonnull %i.v)
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %bb.q, label %H5PL__find_plugin_in_path.exit

bb.q:                                             ; preds = %.loopexit.i
  %i.bt = load i64, ptr @H5E_FILE_g, align 8, !tbaa !21
  %i.bu = load i64, ptr @H5E_CLOSEERROR_g, align 8, !tbaa !21
  %i.bv = tail call ptr @__errno_location() #15
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !16
  %i.bx = tail call ptr @strerror(i32 noundef %i.bw) #12
  %i.by = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__find_plugin_in_path, i32 noundef 910, i64 noundef %i.bt, i64 noundef %i.bu, ptr noundef nonnull @.str.29, ptr noundef %i.bx) #12 ; 0 uses
  br label %H5PL__find_plugin_in_path.exit.thread14

H5PL__find_plugin_in_path.exit.thread14:          ; preds = %bb.q, %bb.p
  %.33860.i.ph = phi ptr [ null, %bb.p ], [ %.338.ph.i, %bb.q ]
  %i.bz = tail call ptr @H5MM_xfree(ptr noundef %.33860.i.ph) #12 ; 0 uses
  br label %bb.r

H5PL__find_plugin_in_path.exit:                   ; preds = %.loopexit.i
  %i.ca = tail call ptr @H5MM_xfree(ptr noundef %.338.ph.i) #12 ; 0 uses
  br i1 %.3.ph.i, label %bb.r, label %H5PL__find_plugin_in_path.exit.thread

bb.r:                                             ; preds = %H5PL__find_plugin_in_path.exit.thread14, %H5PL__find_plugin_in_path.exit
  %i.cb = load i64, ptr @H5E_PLUGIN_g, align 8, !tbaa !21
  %i.cc = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !21
  %i.cd = load ptr, ptr @H5PL_paths_g, align 8, !tbaa !19
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !10
  %i.cg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5PL__find_plugin_in_path_table, i32 noundef 805, i64 noundef %i.cb, i64 noundef %i.cc, ptr noundef nonnull @.str.14, ptr noundef %i.cf) #12 ; 0 uses
  br label %H5PL__find_plugin_in_path.exit.thread

H5PL__find_plugin_in_path.exit.thread:            ; preds = %bb.d, %bb.r, %H5PL__find_plugin_in_path.exit
  %i.ch = load i8, ptr %1, align 1, !tbaa !12, !range !13, !noundef !14
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %H5PL__find_plugin_in_path.exit.thread, %bb.b, %bb.a
  ret i32 0
}

declare ptr @H5MM_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #8

declare ptr @readdir64(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

declare i32 @H5PL__open(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_Bool", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!5, !5, i64 0}
!17 = !{!"any p2 pointer", !8, i64 0}
!18 = !{!"p2 omnipotent char", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"long", !4, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"branch_weights", i32 2000, i32 2002}
!24 = !{!8, !8, i64 0}
!25 = !{!"timespec", !20, i64 0, !20, i64 8}
!26 = !{!"stat", !20, i64 0, !20, i64 8, !20, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !25, i64 72, !25, i64 88, !25, i64 104, !4, i64 120}
!27 = !{!26, !5, i64 24}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = distinct !{null}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = !{!"p1 _ZTS10H5PL_key_t", !8, i64 0}
!36 = !{!"H5PL_search_params_t", !5, i64 0, !35, i64 8}
!37 = !{!36, !5, i64 0}
!38 = !{!36, !35, i64 8}
end_hunk_0
