Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/pack-objects?download=true
inline.NumInlined: 363
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@threaded_find_deltas_by_path:bb.a
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 8), align 8, !tbaa !55
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !153  ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !145  ; 3 uses
  %mul.ov.i.i = icmp ugt i64 %i.p, 2305843009213693951
  br i1 %mul.ov.i.i, label %bb.b, label %st_mult.exit.i

bb.b:                                             ; preds = %.preheader
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.164, i64 noundef 8, i64 noundef %i.p) #22
  unreachable

st_mult.exit.i:                                   ; preds = %.preheader
  %i.q = shl nuw i64 %i.p, 3
  %i.r = tail call ptr @xmalloc(i64 noundef %i.q) #21 ; 4 uses
  %i.s = load i64, ptr %i.o, align 8, !tbaa !145
  %.not14.i = icmp eq i64 %i.s, 0
  br i1 %.not14.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %st_mult.exit.i
  store i32 0, ptr %i.a, align 4
  br label %find_deltas_for_region.exit

._crit_edge.i:                                    ; preds = %should_attempt_deltas.exit.thread
  store i32 %i.aw, ptr %i.a, align 4
  %i.t = icmp ugt i32 %i.aw, 1
  br i1 %i.t, label %bb.c, label %find_deltas_for_region.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.u = zext i32 %i.aw to i64
  tail call void @qsort(ptr noundef %i.r, i64 noundef %i.u, i64 noundef 8, ptr noundef nonnull @type_size_sort) #21
  br label %find_deltas_for_region.exit

.lr.ph.i:                                         ; preds = %st_mult.exit.i, %should_attempt_deltas.exit.thread
  %.013.i = phi i64 [ %i.ax, %should_attempt_deltas.exit.thread ], [ 0, %st_mult.exit.i ] ; 2 uses
  %i.v = phi i32 [ %i.aw, %should_attempt_deltas.exit.thread ], [ 0, %st_mult.exit.i ] ; 8 uses
  %i.w = load i64, ptr %i.m, align 8, !tbaa !144
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %i.l, i64 %i.w
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %i.x, i64 %.013.i ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !134
  %.not.i.i = icmp eq i32 %i.aa, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 88 ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8 ; 5 uses
  br i1 %.not.i.i, label %oe_delta.exit.thread.i, label %oe_delta.exit.i

oe_delta.exit.i:                                  ; preds = %.lr.ph.i
  %i.ab = and i64 %.pre.i, 36028797018963968
  %.not8.i.i = icmp eq i64 %i.ab, 0
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 136), align 8
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 8), align 8
  %.0.i.v.i = select i1 %.not8.i.i, ptr %i.ad, ptr %i.ac
  %.not.i16 = icmp ne ptr %.0.i.v.i, null
  %i.ae = and i64 %.pre.i, 1073741824
  %.not8.i = icmp eq i64 %i.ae, 0
  %or.cond = select i1 %.not.i16, i1 true, i1 %.not8.i
  br i1 %or.cond, label %should_attempt_deltas.exit.thread, label %bb.d

oe_delta.exit.thread.i:                           ; preds = %.lr.ph.i
  %.old = and i64 %.pre.i, 1073741824
  %.not8.i.old = icmp eq i64 %.old, 0
  br i1 %.not8.i.old, label %should_attempt_deltas.exit.thread, label %bb.d

bb.d:                                             ; preds = %oe_delta.exit.i, %oe_delta.exit.thread.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %.not.i13.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i13.i, label %bb.e, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.ah = and i32 %i.ag, 2147483646
  %i.ai = icmp samesign ult i32 %i.ah, 50
  br i1 %i.ai, label %should_attempt_deltas.exit.thread, label %oe_size_less_than.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 152), align 8, !tbaa !125
  %i.ak = icmp ugt i64 %i.aj, 50
  br i1 %i.ak, label %oe_size_less_than.exit.thread.i, label %oe_size_less_than.exit.i

oe_size_less_than.exit.i:                         ; preds = %bb.e
  %i.al = tail call i64 @oe_get_size_slow(ptr noundef nonnull @to_pack, ptr noundef nonnull %i.y)
  %i.am = icmp ult i64 %i.al, 50
  br i1 %i.am, label %should_attempt_deltas.exit.thread, label %oe_size_less_than.exit.i.oe_size_less_than.exit.oe_size_less_than.exit.thread_crit_edge.i_crit_edge

oe_size_less_than.exit.i.oe_size_less_than.exit.oe_size_less_than.exit.thread_crit_edge.i_crit_edge: ; preds = %oe_size_less_than.exit.i
  %.pre22.i.pre = load i64, ptr %.phi.trans.insert.i, align 8
  br label %oe_size_less_than.exit.thread.i

oe_size_less_than.exit.thread.i:                  ; preds = %.split.i, %oe_size_less_than.exit.i.oe_size_less_than.exit.oe_size_less_than.exit.thread_crit_edge.i_crit_edge, %bb.e
  %i.an = phi i64 [ %.pre.i, %bb.e ], [ %.pre22.i.pre, %oe_size_less_than.exit.i.oe_size_less_than.exit.oe_size_less_than.exit.thread_crit_edge.i_crit_edge ], [ %.pre.i, %.split.i ] ; 3 uses
  %i.ao = and i64 %i.an, 2147483648
  %.not10.i = icmp eq i64 %i.ao, 0
  br i1 %.not10.i, label %bb.f, label %should_attempt_deltas.exit.thread

bb.f:                                             ; preds = %oe_size_less_than.exit.thread.i
  %i.ap = and i64 %i.an, 274877906944
  %.not11.i = icmp eq i64 %i.ap, 0
  %i.aq = and i64 %i.an, 1073741824
  %.not.i15.i = icmp eq i64 %i.aq, 0              ; 2 uses
  br i1 %.not11.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i15.i, label %bb.h, label %should_attempt_deltas.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call fastcc ptr @_(ptr noundef nonnull @.str.248)
  %i.as = tail call ptr @oid_to_hex(ptr noundef nonnull %i.y) #21
  tail call void (ptr, ...) @die(ptr noundef %i.ar, ptr noundef %i.as) #22
  unreachable

bb.i:                                             ; preds = %bb.f
  br i1 %.not.i15.i, label %should_attempt_deltas.exit.thread, label %should_attempt_deltas.exit

should_attempt_deltas.exit:                       ; preds = %bb.i, %bb.g
  %i.at = add i32 %i.v, 1
  %i.au = zext i32 %i.v to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.au
  store ptr %i.y, ptr %i.av, align 8, !tbaa !121
  br label %should_attempt_deltas.exit.thread

should_attempt_deltas.exit.thread:                ; preds = %.split.i, %bb.i, %oe_size_less_than.exit.i, %oe_size_less_than.exit.thread.i, %oe_delta.exit.thread.i, %oe_delta.exit.i, %should_attempt_deltas.exit
  %i.aw = phi i32 [ %i.at, %should_attempt_deltas.exit ], [ %i.v, %oe_delta.exit.i ], [ %i.v, %oe_delta.exit.thread.i ], [ %i.v, %oe_size_less_than.exit.thread.i ], [ %i.v, %oe_size_less_than.exit.i ], [ %i.v, %bb.i ], [ %i.v, %.split.i ] ; 4 uses
  %i.ax = add nuw i64 %.013.i, 1                  ; 2 uses
  %i.ay = load i64, ptr %i.o, align 8, !tbaa !145
  %i.az = icmp ult i64 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

find_deltas_for_region.exit:                      ; preds = %._crit_edge.thread.i, %._crit_edge.i, %bb.c
  %i.ba = load i32, ptr @window, align 4, !tbaa !65
  %i.bb = load i32, ptr @depth, align 4, !tbaa !65
  call fastcc void @find_deltas(ptr noundef %i.r, ptr noundef nonnull %i.a, i32 noundef %i.ba, i32 noundef %i.bb, ptr noundef %i.n)
  tail call void @free(ptr noundef %i.r) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.bc = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @progress_mutex) #21 ; 0 uses
  %i.bd = load i32, ptr %i.c, align 4, !tbaa !154
  %i.be = add i32 %i.bd, -1                       ; 2 uses
  store i32 %i.be, ptr %i.c, align 4, !tbaa !154
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !153
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.bg, ptr %i.e, align 8, !tbaa !153
  %.not14 = icmp eq i32 %i.be, 0
  br i1 %.not14, label %bb.j, label %.preheader.backedge

.preheader.backedge:                              ; preds = %find_deltas_for_region.exit, %._crit_edge
  br label %.preheader, !llvm.loop !427

bb.j:                                             ; preds = %find_deltas_for_region.exit
  store i32 0, ptr %i.g, align 8, !tbaa !151
  %i.bh = tail call i32 @pthread_cond_signal(ptr noundef nonnull @progress_cond) #21 ; 0 uses
  %i.bi = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @progress_mutex) #21 ; 0 uses
  %i.bj = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #21 ; 0 uses
  %i.bk = load i32, ptr %i.i, align 4, !tbaa !152
  %.not1524 = icmp eq i32 %i.bk, 0
  br i1 %.not1524, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %i.bl = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.j, ptr noundef nonnull %i.h) #21 ; 0 uses
  %i.bm = load i32, ptr %i.i, align 4, !tbaa !152
  %.not15 = icmp eq i32 %i.bm, 0
  br i1 %.not15, label %.lr.ph, label %._crit_edge, !llvm.loop !428

._crit_edge:                                      ; preds = %.lr.ph, %bb.j
  store i32 0, ptr %i.i, align 4, !tbaa !152
  %i.bn = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #21 ; 0 uses
  %i.bo = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @progress_mutex) #21 ; 0 uses
  %i.bp = load i32, ptr %i.c, align 4, !tbaa !154
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %._crit_edge26, label %.preheader.backedge

._crit_edge26:                                    ; preds = %._crit_edge, %bb.a
  %i.bq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @progress_mutex) #21 ; 0 uses
  ret ptr null
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #6

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @find_deltas(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %5 = alloca %struct.unpacked, align 8           ; 4 uses
  %i.e = sext i32 %2 to i64
  %i.f = tail call ptr @xcalloc(i64 noundef %i.e, i64 noundef 32) #21 ; 14 uses
  %i.g = icmp sgt i32 %2, 1
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @progress_mutex) #21 ; 0 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !65     ; 2 uses
  %.not374 = icmp eq i32 %i.i, 0
  br i1 %.not374, label %.thread, label %.lr.ph380

.thread:                                          ; preds = %bb.cc, %bb.a
  %i.j = call i32 @pthread_mutex_unlock(ptr noundef nonnull @progress_mutex) #21 ; 0 uses
  %.not244 = icmp eq i32 %2, 0
  br i1 %.not244, label %._crit_edge243, label %.lr.ph242.preheader

.lr.ph380:                                        ; preds = %bb.a, %bb.cc
  %i.k = phi i32 [ %i.nd, %bb.cc ], [ %i.i, %bb.a ]
  %i.l = phi ptr [ %i.nb, %bb.cc ], [ %i.f, %bb.a ] ; 7 uses
  %.0378 = phi ptr [ %i.m, %bb.cc ], [ %0, %bb.a ] ; 2 uses
  %.0103377 = phi i32 [ %.3106, %bb.cc ], [ 0, %bb.a ] ; 2 uses
  %.0107376 = phi i32 [ %.1108, %bb.cc ], [ 0, %bb.a ] ; 6 uses
  %.0165375 = phi i64 [ %.6, %bb.cc ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0378, i64 8
  %i.n = load ptr, ptr %.0378, align 8, !tbaa !121 ; 8 uses
  %i.o = add i32 %i.k, -1
  store i32 %i.o, ptr %1, align 4, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 88 ; 8 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 274877906944
  %.not119 = icmp eq i64 %i.r, 0
  br i1 %.not119, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph380
  %i.s = load i32, ptr %4, align 4, !tbaa !65
  %i.t = add i32 %i.s, 1                          ; 2 uses
  store i32 %i.t, ptr %4, align 4, !tbaa !65
  %i.u = load ptr, ptr @progress_state, align 8, !tbaa !92
  %i.v = zext i32 %i.t to i64
  call void @display_progress(ptr noundef %i.u, i64 noundef %i.v) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph380
  %i.w = call i32 @pthread_mutex_unlock(ptr noundef nonnull @progress_mutex) #21 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !434
  %i.z = call i64 @sizeof_delta_index(ptr noundef %i.y) #21 ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !434
  call void @free_delta_index(ptr noundef %i.aa) #21
  store ptr null, ptr %i.x, align 8, !tbaa !434
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 7 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !435 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %free_unpacked.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !436 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %.not.i.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = and i32 %i.af, 2147483647
  %i.ah = zext nneg i32 %i.ag to i64
  br label %oe_size.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ai = call i64 @oe_get_size_slow(ptr noundef nonnull @to_pack, ptr noundef nonnull %i.ad)
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !435
  br label %oe_size.exit.i

oe_size.exit.i:                                   ; preds = %bb.f, %bb.e
  %i.aj = phi ptr [ %i.ac, %bb.e ], [ %.pre.i, %bb.f ]
  %.0.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.ai, %bb.f ]
  %i.ak = add i64 %.0.i.i, %i.z
  call void @free(ptr noundef %i.aj) #21
  store ptr null, ptr %i.ab, align 8, !tbaa !435
  br label %free_unpacked.exit

free_unpacked.exit:                               ; preds = %bb.c, %oe_size.exit.i
  %.0.i = phi i64 [ %i.ak, %oe_size.exit.i ], [ %i.z, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 5 uses
  store i32 0, ptr %i.al, align 8, !tbaa !437
  %i.am = sub i64 %.0165375, %.0.i                ; 2 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !436
  %i.an = load i64, ptr @window_memory_limit, align 8, !tbaa !46 ; 2 uses
  %.not120221 = icmp eq i64 %i.an, 0
  br i1 %.not120221, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %free_unpacked.exit
  %i.ao = add i32 %.0107376, %2
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %free_unpacked.exit140
  %i.ap = phi i64 [ %i.an, %.lr.ph ], [ %i.bn, %free_unpacked.exit140 ]
  %.1104223 = phi i32 [ %.0103377, %.lr.ph ], [ %i.bm, %free_unpacked.exit140 ] ; 4 uses
  %.1166222 = phi i64 [ %i.am, %.lr.ph ], [ %i.bl, %free_unpacked.exit140 ] ; 3 uses
  %i.aq = icmp ugt i64 %.1166222, %i.ap
  %i.ar = icmp ugt i32 %.1104223, 1
  %or.cond3 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond3, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.as = sub i32 %i.ao, %.1104223
  %i.at = urem i32 %i.as, %2
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.au ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !434
  %i.ay = call i64 @sizeof_delta_index(ptr noundef %i.ax) #21 ; 2 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !434
  call void @free_delta_index(ptr noundef %i.az) #21
  store ptr null, ptr %i.aw, align 8, !tbaa !434
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !435 ; 2 uses
  %.not.i134 = icmp eq ptr %i.bb, null
  br i1 %.not.i134, label %free_unpacked.exit140, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !436 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 68
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %.not.i.i135 = icmp sgt i32 %i.be, -1
  br i1 %.not.i.i135, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = and i32 %i.be, 2147483647
  %i.bg = zext nneg i32 %i.bf to i64
  br label %oe_size.exit.i136

bb.k:                                             ; preds = %bb.i
  %i.bh = call i64 @oe_get_size_slow(ptr noundef nonnull @to_pack, ptr noundef nonnull %i.bc)
  %.pre.i139 = load ptr, ptr %i.ba, align 8, !tbaa !435
  br label %oe_size.exit.i136

oe_size.exit.i136:                                ; preds = %bb.k, %bb.j
  %i.bi = phi ptr [ %i.bb, %bb.j ], [ %.pre.i139, %bb.k ]
  %.0.i.i137 = phi i64 [ %i.bg, %bb.j ], [ %i.bh, %bb.k ]
  %i.bj = add i64 %.0.i.i137, %i.ay
  call void @free(ptr noundef %i.bi) #21
  store ptr null, ptr %i.ba, align 8, !tbaa !435
  br label %free_unpacked.exit140

free_unpacked.exit140:                            ; preds = %bb.h, %oe_size.exit.i136
  %.0.i138 = phi i64 [ %i.bj, %oe_size.exit.i136 ], [ %i.ay, %bb.h ]
  store ptr null, ptr %i.av, align 8, !tbaa !436
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i32 0, ptr %i.bk, align 8, !tbaa !437
  %i.bl = sub i64 %.1166222, %.0.i138             ; 2 uses
  %i.bm = add i32 %.1104223, -1                   ; 2 uses
  %i.bn = load i64, ptr @window_memory_limit, align 8, !tbaa !46 ; 2 uses
  %.not120 = icmp eq i64 %i.bn, 0
  br i1 %.not120, label %.critedge, label %bb.g, !llvm.loop !429

.critedge:                                        ; preds = %free_unpacked.exit140, %bb.g, %free_unpacked.exit
  %.1166.lcssa = phi i64 [ %i.am, %free_unpacked.exit ], [ %.1166222, %bb.g ], [ %i.bl, %free_unpacked.exit140 ] ; 4 uses
  %.1104.lcssa = phi i32 [ %.0103377, %free_unpacked.exit ], [ %.1104223, %bb.g ], [ %i.bm, %free_unpacked.exit140 ] ; 3 uses
  %i.bo = load i64, ptr %i.p, align 8
  %i.bp = and i64 %i.bo, 274877906944
  %.not121 = icmp eq i64 %i.bp, 0
  br i1 %.not121, label %bb.l, label %oe_delta.exit158.thread

bb.l:                                             ; preds = %.critedge
  %i.bq = getelementptr i8, ptr %i.n, i64 76
  %.val = load i32, ptr %i.bq, align 4, !tbaa !135 ; 2 uses
  %.not.i141 = icmp eq i32 %.val, 0
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 8), align 8
  %.not122189 = icmp eq ptr %i.br, null
  %.not122 = select i1 %.not.i141, i1 true, i1 %.not122189
  br i1 %.not122, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = call fastcc i32 @check_delta_limit(i32 %.val, i32 noundef 0)
  %i.bt = sub i32 %3, %i.bs                       ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 1
  br i1 %i.bu, label %oe_delta.exit158.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0101 = phi i32 [ %i.bt, %bb.m ], [ %3, %bb.l ] ; 4 uses
  br i1 %i.g, label %.lr.ph230, label %.thread179

.lr.ph230:                                        ; preds = %bb.n
  %i.bv = add i32 %.0101, 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph230, %bb.bs
  %.in = phi i32 [ %2, %.lr.ph230 ], [ %i.bw, %bb.bs ] ; 2 uses
  %.099229 = phi i32 [ -1, %.lr.ph230 ], [ %.2, %bb.bs ] ; 12 uses
  %.2167228 = phi i64 [ %.1166.lcssa, %.lr.ph230 ], [ %.3168, %bb.bs ] ; 9 uses
  %i.bw = add nsw i32 %.in, -1                    ; 2 uses
  %i.bx = add i32 %i.bw, %.0107376                ; 2 uses
  %.not123 = icmp ult i32 %i.bx, %2
  %i.by = select i1 %.not123, i32 0, i32 %2
  %spec.select = sub nuw i32 %i.bx, %i.by         ; 2 uses
  %i.bz = zext i32 %spec.select to i64
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.bz ; 5 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !436 ; 10 uses
  %.not124 = icmp eq ptr %i.cb, null
  br i1 %.not124, label %.thread179, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.l, align 8, !tbaa !436 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.cd = getelementptr i8, ptr %i.cc, i64 88     ; 3 uses
  %.val132.i = load i64, ptr %i.cd, align 8       ; 4 uses
  %i.ce = and i64 %.val132.i, 1073741824
  %.not.i.i143 = icmp eq i64 %i.ce, 0
  %i.cf = getelementptr i8, ptr %i.cb, i64 88     ; 2 uses
  %.val.i = load i64, ptr %i.cf, align 8          ; 4 uses
  %i.cg = and i64 %.val.i, 1073741824
  %.not.i133.i = icmp eq i64 %i.cg, 0             ; 2 uses
  %i.ch = xor i64 %.val.i, %.val132.i
  %i.ci = and i64 %i.ch, 30064771072
  %.not187188.i = icmp eq i64 %i.ci, 0
  %not..not.i133.i = xor i1 %.not.i133.i, true
  %.not187.i = and i1 %.not187188.i, %not..not.i133.i
  %.not.i144 = select i1 %.not.i.i143, i1 %.not.i133.i, i1 %.not187.i
  br i1 %.not.i144, label %bb.q, label %try_delta.exit

bb.q:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@find_deltas:bb.a

oe_delta.exit159.i:                               ; preds = %bb.bc
  %i.ha = load i64, ptr %i.cd, align 8
  %i.hb = and i64 %i.ha, 36028797018963968
  %.not8.i157.i = icmp eq i64 %i.hb, 0
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 136), align 8
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 8), align 8 ; 2 uses
  %.0.i158.v.i = select i1 %.not8.i157.i, ptr %i.hd, ptr %i.hc
  %.not127.i = icmp eq ptr %.0.i158.v.i, null
  br i1 %.not127.i, label %oe_delta.exit159.thread.i, label %bb.bd

bb.bd:                                            ; preds = %oe_delta.exit159.i
  %i.he = load i64, ptr %i.a, align 8, !tbaa !46
  %i.hf = getelementptr inbounds nuw i8, ptr %i.cc, i64 84
  %i.hg = load i24, ptr %i.hf, align 4            ; 2 uses
  %.not.i160.i = icmp sgt i24 %i.hg, -1
  br i1 %.not.i160.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hh = and i24 %i.hg, 8388607
  %i.hi = zext nneg i24 %i.hh to i64
  br label %oe_delta_size.exit162.i

bb.bf:                                            ; preds = %bb.bd
  %i.hj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 72), align 8, !tbaa !132
  %i.hk = ptrtoint ptr %i.cc to i64
  %i.hl = ptrtoint ptr %i.hd to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = sdiv exact i64 %i.hm, 12
  %i.ho = getelementptr inbounds i8, ptr %i.hj, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !46
  br label %oe_delta_size.exit162.i

oe_delta_size.exit162.i:                          ; preds = %bb.bf, %bb.be
  %.0.i161.i = phi i64 [ %i.hi, %bb.be ], [ %i.hp, %bb.bf ]
  %i.hq = icmp eq i64 %i.he, %.0.i161.i
  br i1 %i.hq, label %bb.bg, label %oe_delta.exit159.thread.i

bb.bg:                                            ; preds = %oe_delta_size.exit162.i
  %i.hr = load i32, ptr %i.dd, align 8, !tbaa !437
  %i.hs = add i32 %i.hr, 1
  %i.ht = load i32, ptr %i.al, align 8, !tbaa !437
  %.not128.i = icmp ult i32 %i.hs, %i.ht
  br i1 %.not128.i, label %oe_delta.exit159.thread.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @free(ptr noundef nonnull %i.gy) #21
  br label %bb.bs

oe_delta.exit159.thread.i:                        ; preds = %bb.bg, %oe_delta_size.exit162.i, %oe_delta.exit159.i, %bb.bc
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 4 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !192
  call void @free(ptr noundef %i.hv) #21
  %i.hw = call i32 @pthread_mutex_lock(ptr noundef nonnull @cache_mutex) #21 ; 0 uses
  %i.hx = load ptr, ptr %i.hu, align 8, !tbaa !192
  %.not129.i = icmp eq ptr %i.hx, null
  br i1 %.not129.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %oe_delta.exit159.thread.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.cc, i64 84
  %i.hz = load i24, ptr %i.hy, align 4            ; 2 uses
  %.not.i163.i = icmp sgt i24 %i.hz, -1
  br i1 %.not.i163.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ia = and i24 %i.hz, 8388607
  %i.ib = zext nneg i24 %i.ia to i64
  br label %oe_delta_size.exit165.i

bb.bk:                                            ; preds = %bb.bi
  %i.ic = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 72), align 8, !tbaa !132
  %i.id = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 8), align 8, !tbaa !55
  %i.ie = ptrtoint ptr %i.cc to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = sdiv exact i64 %i.ig, 12
  %i.ii = getelementptr inbounds i8, ptr %i.ic, i64 %i.ih
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !46
  br label %oe_delta_size.exit165.i

oe_delta_size.exit165.i:                          ; preds = %bb.bk, %bb.bj
  %.0.i164.i = phi i64 [ %i.ib, %bb.bj ], [ %i.ij, %bb.bk ]
  %i.ik = load i64, ptr @delta_cache_size, align 8, !tbaa !46
  %i.il = sub i64 %i.ik, %.0.i164.i
  store i64 %i.il, ptr @delta_cache_size, align 8, !tbaa !46
  store ptr null, ptr %i.hu, align 8, !tbaa !192
  br label %bb.bl

bb.bl:                                            ; preds = %oe_delta_size.exit165.i, %oe_delta.exit159.thread.i
  %i.im = load i64, ptr %i.a, align 8, !tbaa !46  ; 4 uses
  %i.in = load i64, ptr @max_delta_cache_size, align 8, !tbaa !46 ; 2 uses
  %.not.i166.i = icmp eq i64 %i.in, 0
  br i1 %.not.i166.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.io = load i64, ptr @delta_cache_size, align 8, !tbaa !46
  %i.ip = add i64 %i.io, %i.im
  %i.iq = icmp ugt i64 %i.ip, %i.in
  br i1 %i.iq, label %delta_cacheable.exit.thread.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ir = load i64, ptr @cache_max_small_delta_size, align 8, !tbaa !46
  %i.is = icmp ult i64 %i.im, %i.ir
  br i1 %i.is, label %delta_cacheable.exit.thread183.i, label %delta_cacheable.exit.i

delta_cacheable.exit.i:                           ; preds = %bb.bn
  %i.it = lshr i64 %.0.i150.i, 20
  %i.iu = lshr i64 %.0.i144.i, 21
  %i.iv = add nuw nsw i64 %i.it, %i.iu
  %i.iw = lshr i64 %i.im, 10
  %.not189.i = icmp samesign ugt i64 %i.iv, %i.iw
  br i1 %.not189.i, label %delta_cacheable.exit.thread183.i, label %delta_cacheable.exit.thread.i

delta_cacheable.exit.thread183.i:                 ; preds = %delta_cacheable.exit.i, %bb.bn
  %i.ix = load i64, ptr @delta_cache_size, align 8, !tbaa !46
  %i.iy = add i64 %i.ix, %i.im
  store i64 %i.iy, ptr @delta_cache_size, align 8, !tbaa !46
  %i.iz = call i32 @pthread_mutex_unlock(ptr noundef nonnull @cache_mutex) #21 ; 0 uses
  %i.ja = load i64, ptr %i.a, align 8, !tbaa !46
  %i.jb = call ptr @xrealloc(ptr noundef nonnull %i.gy, i64 noundef %i.ja) #21
  store ptr %i.jb, ptr %i.hu, align 8, !tbaa !192
  br label %oe_set_delta.exit.i

delta_cacheable.exit.thread.i:                    ; preds = %delta_cacheable.exit.i, %bb.bm
  %i.jc = call i32 @pthread_mutex_unlock(ptr noundef nonnull @cache_mutex) #21 ; 0 uses
  call void @free(ptr noundef nonnull %i.gy) #21
  br label %oe_set_delta.exit.i

oe_set_delta.exit.i:                              ; preds = %delta_cacheable.exit.thread.i, %delta_cacheable.exit.thread183.i
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 8), align 8, !tbaa !55
  %i.je = ptrtoint ptr %i.cb to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = sdiv exact i64 %i.jg, 96
  %i.ji = trunc i64 %i.jh to i32
  %i.jj = add i32 %i.ji, 1
  store i32 %i.jj, ptr %i.dk, align 8, !tbaa !134
  %i.jk = load i64, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.jl = load i64, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 160), align 8, !tbaa !131
  %i.jm = icmp ult i64 %i.jk, %i.jl
  br i1 %i.jm, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %oe_set_delta.exit.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.cc, i64 84
  %i.jo = trunc i64 %i.jk to i24
  %i.jp = or i24 %i.jo, -8388608
  store i24 %i.jp, ptr %i.jn, align 4
  br label %bb.br

bb.bp:                                            ; preds = %oe_set_delta.exit.i
  %i.jq = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @to_pack, i64 96)) #21 ; 0 uses
  %i.jr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 72), align 8, !tbaa !132
  %.not.i159 = icmp eq ptr %i.jr, null
  br i1 %.not.i159, label %st_mult.exit.i, label %bb.bq

st_mult.exit.i:                                   ; preds = %bb.bp
  %i.js = load i32, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 20), align 4, !tbaa !133
  %i.jt = zext i32 %i.js to i64
  %i.ju = shl nuw nsw i64 %i.jt, 3
  %i.jv = call ptr @xmalloc(i64 noundef %i.ju) #21
  store ptr %i.jv, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 72), align 8, !tbaa !132
  br label %bb.bq

bb.bq:                                            ; preds = %st_mult.exit.i, %bb.bp
  %i.jw = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @to_pack, i64 96)) #21 ; 0 uses
  %i.jx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 72), align 8, !tbaa !132
  %i.jy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 8), align 8, !tbaa !55
  %i.jz = ptrtoint ptr %i.cc to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = sdiv exact i64 %i.kb, 12
  %i.kd = getelementptr inbounds i8, ptr %i.jx, i64 %i.kc
  store i64 %i.jk, ptr %i.kd, align 8, !tbaa !46
  %i.ke = getelementptr inbounds nuw i8, ptr %i.cc, i64 84 ; 2 uses
  %i.kf = load i24, ptr %i.ke, align 4
  %i.kg = and i24 %i.kf, 8388607
  store i24 %i.kg, ptr %i.ke, align 4
  br label %bb.br

try_delta.exit:                                   ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.thread179

bb.br:                                            ; preds = %bb.bq, %bb.bo
  %i.kh = load i32, ptr %i.dd, align 8, !tbaa !437
  %i.ki = add i32 %i.kh, 1
  store i32 %i.ki, ptr %i.al, align 8, !tbaa !437
  br label %bb.bs

bb.bs:                                            ; preds = %oe_in_pack.exit142.i, %bb.t, %bb.aa, %oe_size.exit151.i, %bb.bh, %bb.ax, %bb.ae, %.thread178.i, %bb.bb, %_.exit155.i, %bb.br
  %.3168 = phi i64 [ %.9, %bb.br ], [ %.2167228, %bb.aa ], [ %.2167228, %oe_size.exit151.i ], [ %.2167228, %bb.ae ], [ %.7, %.thread178.i ], [ %.8, %_.exit155.i ], [ %.8, %bb.ax ], [ %.9, %bb.bb ], [ %.9, %bb.bh ], [ %.2167228, %bb.t ], [ %.2167228, %oe_in_pack.exit142.i ] ; 2 uses
  %.2 = phi i32 [ %spec.select, %bb.br ], [ %.099229, %bb.aa ], [ %.099229, %oe_size.exit151.i ], [ %.099229, %bb.ae ], [ %.099229, %.thread178.i ], [ %.099229, %_.exit155.i ], [ %.099229, %bb.ax ], [ %.099229, %bb.bb ], [ %.099229, %bb.bh ], [ %.099229, %bb.t ], [ %.099229, %oe_in_pack.exit142.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.kj = icmp samesign ugt i32 %.in, 2
  br i1 %i.kj, label %bb.o, label %.thread179

.thread179:                                       ; preds = %bb.bs, %bb.o, %bb.n, %try_delta.exit
  %.2167202 = phi i64 [ %.2167228, %try_delta.exit ], [ %.1166.lcssa, %bb.n ], [ %.3168, %bb.bs ], [ %.2167228, %bb.o ] ; 4 uses
  %.099196 = phi i32 [ %.099229, %try_delta.exit ], [ -1, %bb.n ], [ %.2, %bb.bs ], [ %.099229, %bb.o ] ; 6 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 4 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !192
  %i.km = icmp eq ptr %i.kl, null
  %i.kn = load i32, ptr @pack_to_stdout, align 4
  %i.ko = icmp ne i32 %i.kn, 0
  %or.cond = select i1 %i.km, i1 true, i1 %i.ko
  br i1 %or.cond, label %bb.ca, label %bb.bt

bb.bt:                                            ; preds = %.thread179
  %i.kp = getelementptr inbounds nuw i8, ptr %i.n, i64 84 ; 2 uses
  %i.kq = load i24, ptr %i.kp, align 4            ; 2 uses
  %.not.i148 = icmp sgt i24 %i.kq, -1
  br i1 %.not.i148, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kr = and i24 %i.kq, 8388607
  %i.ks = zext nneg i24 %i.kr to i64
  br label %oe_delta_size.exit

bb.bv:                                            ; preds = %bb.bt
  %i.kt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 72), align 8, !tbaa !132
  %i.ku = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 8), align 8, !tbaa !55
  %i.kv = ptrtoint ptr %i.n to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = sdiv exact i64 %i.kx, 12
  %i.kz = getelementptr inbounds i8, ptr %i.kt, i64 %i.ky
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !46
  br label %oe_delta_size.exit

oe_delta_size.exit:                               ; preds = %bb.bu, %bb.bv
  %.0.i149 = phi i64 [ %i.ks, %bb.bu ], [ %i.la, %bb.bv ]
  %i.lb = call fastcc i64 @do_compress(ptr noundef nonnull %i.kk, i64 noundef %.0.i149) ; 2 uses
  %i.lc = icmp ult i64 %i.lb, 1048576
  br i1 %i.lc, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %oe_delta_size.exit
  %i.ld = load i64, ptr %i.p, align 8
  %i.le = shl nuw nsw i64 %i.lb, 10
  %i.lf = and i64 %i.ld, -1073740801
  %i.lg = or disjoint i64 %i.lf, %i.le
  store i64 %i.lg, ptr %i.p, align 8
  %i.lh = call i32 @pthread_mutex_lock(ptr noundef nonnull @cache_mutex) #21 ; 0 uses
  %i.li = load i24, ptr %i.kp, align 4            ; 2 uses
  %.not.i150 = icmp sgt i24 %i.li, -1
  br i1 %.not.i150, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lj = and i24 %i.li, 8388607
  %i.lk = zext nneg i24 %i.lj to i64
  br label %oe_delta_size.exit152

bb.by:                                            ; preds = %bb.bw
  %i.ll = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 72), align 8, !tbaa !132
  %i.lm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 8), align 8, !tbaa !55
  %i.ln = ptrtoint ptr %i.n to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = sdiv exact i64 %i.lp, 12
  %i.lr = getelementptr inbounds i8, ptr %i.ll, i64 %i.lq
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !46
  br label %oe_delta_size.exit152

oe_delta_size.exit152:                            ; preds = %bb.bx, %bb.by
  %.0.i151 = phi i64 [ %i.lk, %bb.bx ], [ %i.ls, %bb.by ]
  %i.lt = load i64, ptr @delta_cache_size, align 8, !tbaa !46
  %i.lu = sub i64 %i.lt, %.0.i151
  %i.lv = load i64, ptr %i.p, align 8
  %i.lw = lshr i64 %i.lv, 10
  %i.lx = and i64 %i.lw, 1048575
  %i.ly = add i64 %i.lx, %i.lu
  store i64 %i.ly, ptr @delta_cache_size, align 8, !tbaa !46
  %i.lz = call i32 @pthread_mutex_unlock(ptr noundef nonnull @cache_mutex) #21 ; 0 uses
  br label %bb.ca

bb.bz:                                            ; preds = %oe_delta_size.exit
  %i.ma = load ptr, ptr %i.kk, align 8, !tbaa !192
  call void @free(ptr noundef %i.ma) #21
  store ptr null, ptr %i.kk, align 8, !tbaa !192
  %i.mb = load i64, ptr %i.p, align 8
  %i.mc = and i64 %i.mb, -1073740801
  store i64 %i.mc, ptr %i.p, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %oe_delta_size.exit152, %bb.bz, %.thread179
  %i.md = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.me = load i32, ptr %i.md, align 8, !tbaa !134
  %.not.i153 = icmp eq i32 %i.me, 0
  br i1 %.not.i153, label %oe_delta.exit158.thread, label %oe_delta.exit

oe_delta.exit:                                    ; preds = %bb.ca
  %i.mf = load i64, ptr %i.p, align 8
  %i.mg = and i64 %i.mf, 36028797018963968
  %.not8.i = icmp eq i64 %i.mg, 0
  %i.mh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 136), align 8
  %i.mi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 8), align 8
  %.0.i154.v = select i1 %.not8.i, ptr %i.mi, ptr %i.mh
  %.not126 = icmp eq ptr %.0.i154.v, null
  br i1 %.not126, label %oe_delta.exit158.thread, label %bb.cb

bb.cb:                                            ; preds = %oe_delta.exit
  %i.mj = load i32, ptr %i.al, align 8, !tbaa !437
  %.not127 = icmp ugt i32 %.0101, %i.mj
  br i1 %.not127, label %oe_delta.exit158, label %bb.cc

oe_delta.exit158:                                 ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.mk = sext i32 %.099196 to i64                ; 2 uses
  %i.ml = getelementptr inbounds [32 x i8], ptr %i.f, i64 %i.mk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ml, i64 32, i1 false), !tbaa.struct !439
  %i.mm = add i32 %.0107376, %2
  %i.mn = sub i32 %i.mm, %.099196                 ; 2 uses
  %i.mo = urem i32 %i.mn, %2                      ; 4 uses
  %6 = udiv i32 %i.mn, %2
  %.not129236 = icmp eq i32 %i.mo, 0
  br i1 %.not129236, label %._crit_edge, label %.lr.ph239.preheader

.lr.ph239.preheader:                              ; preds = %oe_delta.exit158
  %7 = add i32 %.0107376, -1
  %8 = sub i32 1, %6
  %9 = mul i32 %2, %8
  %10 = add i32 %7, %9
  %xtraiter = and i32 %i.mo, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph239.prol.loopexit, label %.lr.ph239.prol

.lr.ph239.prol:                                   ; preds = %.lr.ph239.preheader
  %11 = add nsw i32 %i.mo, -1
  %12 = add nsw i32 %.099196, 1
  %13 = srem i32 %12, %2                          ; 2 uses
  %14 = sext i32 %.099196 to i64
  %15 = getelementptr inbounds [32 x i8], ptr %i.f, i64 %14
  %16 = sext i32 %13 to i64                       ; 2 uses
  %17 = getelementptr inbounds [32 x i8], ptr %i.f, i64 %16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false), !tbaa.struct !439
  br label %.lr.ph239.prol.loopexit

.lr.ph239.prol.loopexit:                          ; preds = %.lr.ph239.prol, %.lr.ph239.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph239.preheader ], [ %16, %.lr.ph239.prol ]
  %.093238.unr = phi i32 [ %.099196, %.lr.ph239.preheader ], [ %13, %.lr.ph239.prol ]
  %.094237.unr = phi i32 [ %i.mo, %.lr.ph239.preheader ], [ %11, %.lr.ph239.prol ]
  %18 = icmp eq i32 %10, %.099196
  br i1 %18, label %._crit_edge, label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239
  %.093238 = phi i32 [ %i.mr, %.lr.ph239 ], [ %.093238.unr, %.lr.ph239.prol.loopexit ] ; 2 uses
  %.094237 = phi i32 [ %i.mp, %.lr.ph239 ], [ %.094237.unr, %.lr.ph239.prol.loopexit ]
  %19 = add nsw i32 %.093238, 1
  %20 = srem i32 %19, %2                          ; 3 uses
  %21 = sext i32 %.093238 to i64
  %22 = getelementptr inbounds [32 x i8], ptr %i.f, i64 %21
  %23 = sext i32 %20 to i64
  %24 = getelementptr inbounds [32 x i8], ptr %i.f, i64 %23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 32, i1 false), !tbaa.struct !439
  %i.mp = add nsw i32 %.094237, -2                ; 2 uses
  %i.mq = add nsw i32 %20, 1
  %i.mr = srem i32 %i.mq, %2                      ; 2 uses
  %i.ms = sext i32 %20 to i64
  %i.mt = getelementptr inbounds [32 x i8], ptr %i.f, i64 %i.ms
  %i.mu = sext i32 %i.mr to i64                   ; 2 uses
  %i.mv = getelementptr inbounds [32 x i8], ptr %i.f, i64 %i.mu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mt, ptr noundef nonnull align 8 dereferenceable(32) %i.mv, i64 32, i1 false), !tbaa.struct !439
  %.not129 = icmp eq i32 %i.mp, 0
  br i1 %.not129, label %._crit_edge, label %.lr.ph239, !llvm.loop !430

._crit_edge:                                      ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239, %oe_delta.exit158
  %.pre-phi = phi i64 [ %i.mk, %oe_delta.exit158 ], [ %.lcssa.unr, %.lr.ph239.prol.loopexit ], [ %i.mu, %.lr.ph239 ]
  %i.mw = getelementptr inbounds [32 x i8], ptr %i.f, i64 %.pre-phi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mw, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !439
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %oe_delta.exit158.thread

oe_delta.exit158.thread:                          ; preds = %oe_delta.exit, %bb.ca, %._crit_edge, %bb.m, %.critedge
  %.5 = phi i64 [ %.2167202, %bb.ca ], [ %.2167202, %._crit_edge ], [ %.1166.lcssa, %bb.m ], [ %.1166.lcssa, %.critedge ], [ %.2167202, %oe_delta.exit ]
  %i.mx = add i32 %.0107376, 1                    ; 2 uses
  %i.my = add i32 %.1104.lcssa, 1                 ; 2 uses
  %i.mz = icmp ult i32 %i.my, %2
  %spec.select132 = select i1 %i.mz, i32 %i.my, i32 %.1104.lcssa
  %.not130 = icmp ult i32 %i.mx, %2
  %spec.store.select = select i1 %.not130, i32 %i.mx, i32 0
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %oe_delta.exit158.thread
  %.6 = phi i64 [ %.2167202, %bb.cb ], [ %.5, %oe_delta.exit158.thread ]
  %.1108 = phi i32 [ %.0107376, %bb.cb ], [ %spec.store.select, %oe_delta.exit158.thread ] ; 2 uses
  %.3106 = phi i32 [ %.1104.lcssa, %bb.cb ], [ %spec.select132, %oe_delta.exit158.thread ]
  %i.na = zext i32 %.1108 to i64
  %i.nb = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.na
  %i.nc = call i32 @pthread_mutex_lock(ptr noundef nonnull @progress_mutex) #21 ; 0 uses
  %i.nd = load i32, ptr %1, align 4, !tbaa !65    ; 2 uses
  %.not = icmp eq i32 %i.nd, 0
  br i1 %.not, label %.thread, label %.lr.ph380

.lr.ph242.preheader:                              ; preds = %.thread
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph242

.lr.ph242:                                        ; preds = %.lr.ph242.preheader, %.lr.ph242
  %indvars.iv = phi i64 [ 0, %.lr.ph242.preheader ], [ %indvars.iv.next, %.lr.ph242 ] ; 2 uses
  %i.ne = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !434
  call void @free_delta_index(ptr noundef %i.ng) #21
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !435
  call void @free(ptr noundef %i.ni) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge243, label %.lr.ph242, !llvm.loop !431

._crit_edge243:                                   ; preds = %.lr.ph242, %.thread
  call void @free(ptr noundef %i.f) #21
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @check_delta_limit(i32 %.76.val, i32 noundef %0) unnamed_addr #17 {
bb.a:
  %.not.i = icmp eq i32 %.76.val, 0
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 8), align 8 ; 2 uses
  %.not47 = icmp eq ptr %i.a, null
  %.not4 = select i1 %.not.i, i1 true, i1 %.not47
  br i1 %.not4, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = add i32 %0, 1
  br label %select.unfold

select.unfold:                                    ; preds = %.lr.ph, %select.unfold
  %.06 = phi i32 [ %0, %.lr.ph ], [ %spec.select, %select.unfold ]
  %.pn.in.in = phi i32 [ %.76.val, %.lr.ph ], [ %.09.val, %select.unfold ]
  %.pn.in = add i32 %.pn.in.in, -1
  %.pn = zext i32 %.pn.in to i64
  %.095 = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %.pn ; 2 uses
  %i.c = getelementptr i8, ptr %.095, i64 76
  %.09.val13 = load i32, ptr %i.c, align 4, !tbaa !135
  %i.d = tail call fastcc i32 @check_delta_limit(i32 %.09.val13, i32 noundef %i.b)
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.06, i32 %i.d) ; 2 uses
  %i.e = getelementptr i8, ptr %.095, i64 80
  %.09.val = load i32, ptr %i.e, align 8, !tbaa !136 ; 2 uses
  %.not.i11 = icmp eq i32 %.09.val, 0
  br i1 %.not.i11, label %select.unfold._crit_edge, label %select.unfold

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.a
  %.0.lcssa = phi i32 [ %0, %bb.a ], [ %spec.select, %select.unfold ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @do_compress(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.git_zstream, align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.b = tail call ptr @repo_config_values(ptr noundef %i.a) #21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73
  call void @git_deflate_init(ptr noundef nonnull %2, i32 noundef %i.d) #21
  %i.e = call i64 @git_deflate_bound(ptr noundef nonnull %2, i64 noundef %1) #21 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !72     ; 2 uses
  %i.g = call ptr @xmalloc(i64 noundef %i.e) #21  ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr %i.f, ptr %i.h, align 8, !tbaa !196
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 %1, ptr %i.i, align 8, !tbaa !197
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 152
  store ptr %i.g, ptr %i.j, align 8, !tbaa !198
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %i.e, ptr %i.k, align 8, !tbaa !199
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.l = call i32 @git_deflate(ptr noundef nonnull %2, i32 noundef 4) #21
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c, !llvm.loop !440

bb.c:                                             ; preds = %bb.b
  call void @git_deflate_end(ptr noundef nonnull %2) #21
  call void @free(ptr noundef %i.f) #21
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.o = load i64, ptr %i.n, align 8, !tbaa !441
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i64 %i.o
}

declare void @free_delta_index(ptr noundef) local_unnamed_addr #2

declare i64 @sizeof_delta_index(ptr noundef) local_unnamed_addr #2

declare ptr @create_delta_index(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @create_delta(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @git_deflate_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @git_deflate_bound(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @git_deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @git_deflate_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dcngettext(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @island_delta_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @threaded_find_deltas(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @progress_mutex) #21 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !154
  %.not16 = icmp eq i32 %i.c, 0
  br i1 %.not16, label %._crit_edge19, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph18, %._crit_edge
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @progress_mutex) #21 ; 0 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !156
  %i.n = load i32, ptr %i.e, align 8, !tbaa !148
  %i.o = load i32, ptr %i.f, align 4, !tbaa !149
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !150
  tail call fastcc void @find_deltas(ptr noundef %i.m, ptr noundef nonnull %i.b, i32 noundef %i.n, i32 noundef %i.o, ptr noundef %i.p)
  %i.q = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @progress_mutex) #21 ; 0 uses
  store i32 0, ptr %i.h, align 8, !tbaa !151
  %i.r = tail call i32 @pthread_cond_signal(ptr noundef nonnull @progress_cond) #21 ; 0 uses
  %i.s = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @progress_mutex) #21 ; 0 uses
  %i.t = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #21 ; 0 uses
  %i.u = load i32, ptr %i.j, align 4, !tbaa !152
  %.not1415 = icmp eq i32 %i.u, 0
  br i1 %.not1415, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.v = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.k, ptr noundef nonnull %i.i) #21 ; 0 uses
  %i.w = load i32, ptr %i.j, align 4, !tbaa !152
  %.not14 = icmp eq i32 %i.w, 0
  br i1 %.not14, label %.lr.ph, label %._crit_edge, !llvm.loop !442

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  store i32 0, ptr %i.j, align 4, !tbaa !152
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #21 ; 0 uses
  %i.y = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @progress_mutex) #21 ; 0 uses
  %i.z = load i32, ptr %i.b, align 4, !tbaa !154
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %._crit_edge19, label %bb.b, !llvm.loop !443

._crit_edge19:                                    ; preds = %._crit_edge, %bb.a
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @progress_mutex) #21 ; 0 uses
  ret ptr null
}

declare i64 @write_in_full(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @hashfd_ext(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @create_tmp_packfile(ptr noundef, ptr noundef) local_unnamed_addr #2
end_hunk_1
