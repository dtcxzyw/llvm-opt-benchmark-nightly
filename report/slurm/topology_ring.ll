Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/topology_ring?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@slurm_bit_clear
declare void @slurm_bit_clear(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @slurm_hostlist_create(ptr noundef) local_unnamed_addr #1

declare void @slurm_bit_set(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @slurm_hostlist_push_host(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_hostlist_ranged_string_xmalloc(ptr noundef) local_unnamed_addr #1

declare void @slurm_hostlist_destroy(ptr noundef) local_unnamed_addr #1

declare void @ring_record_update_ring_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @topology_p_allow_one_node(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define dso_local i32 @topology_p_build_config(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @node_record_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ring_record_validate(ptr noundef %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @ring_record_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @topology_p_destroy_config(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  tail call void @ring_record_table_destroy(ptr noundef %i.b) #8
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @slurm_bit_free(ptr noundef nonnull %i.b) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.b, align 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.a) #8
  ret i32 0
}

declare void @ring_record_table_destroy(ptr noundef) local_unnamed_addr #1

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @topology_p_eval_node(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @common_test_node(ptr noundef %0, i32 noundef %1) #8
  ret i32 %i.a
}

declare i32 @common_test_node(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @topology_p_eval_nodes(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @slurm_bit_overlap_any(ptr noundef nonnull %i.e, ptr noundef %i.g) #8
  %.not7 = icmp eq i32 %i.h, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @eval_nodes_ring, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = tail call i32 @common_topo_choose_nodes(ptr noundef nonnull %0) #8
  ret i32 %i.k
}

declare i32 @slurm_bit_overlap_any(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @eval_nodes_ring(ptr noundef) #1

declare i32 @common_topo_choose_nodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @topology_p_whole_topo(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [104 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 @slurm_bit_overlap_any(ptr noundef %i.h, ptr noundef %0) #8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @slurm_bit_or(ptr noundef %0, ptr noundef %i.m) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.a, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !15
}

declare void @slurm_bit_or(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @topology_p_get_rank(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %1, align 8
  store i32 0, ptr %2, align 4
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @slurm_bit_set_count(ptr noundef nonnull %0) #8 ; 3 uses
  %.not47 = icmp eq i32 %i.c, 0
  br i1 %.not47, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext i32 %i.c to i64
  %i.e = tail call ptr @slurm_xcalloc(i64 noundef %i.d, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 480, ptr noundef nonnull @__func__.topology_p_get_rank) #8
  store ptr %i.e, ptr %1, align 8
  store i32 %i.c, ptr %2, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sext i32 %i.g to i64
  %i.i = tail call ptr @slurm_xcalloc(i64 noundef %i.h, i64 noundef 2, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 483, ptr noundef nonnull @__func__.topology_p_get_rank) #8 ; 3 uses
  store ptr %i.i, ptr %i.a, align 8
  %i.j = load i32, ptr %i.f, align 8
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_get_segment_start.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4
  %i.m = call ptr @next_node_bitmap(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #8
  %.not4868 = icmp eq ptr %i.m, null
  br i1 %.not4868, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph, %_get_segment_start.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_get_segment_start.exit ] ; 3 uses
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load i16, ptr %i.q, align 8              ; 4 uses
  %.not.i = icmp eq i16 %i.r, 0
  br i1 %.not.i, label %_get_segment_start.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = zext i32 %i.t to i64
  %i.v = tail call i32 @slurm_bit_test(ptr noundef nonnull %0, i64 noundef %i.u) #8
  %.not27.i = icmp eq i32 %i.v, 0
  br i1 %.not27.i, label %_get_segment_start.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = zext i16 %i.r to i64                     ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %i.s, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call i32 @slurm_bit_test(ptr noundef nonnull %0, i64 noundef %i.aa) #8
  %.not28.i = icmp ne i32 %i.ab, 0
  %i.ac = icmp ne i16 %i.r, 1
  %or.cond.i = and i1 %i.ac, %.not28.i
  br i1 %or.cond.i, label %.lr.ph.i, label %_get_segment_start.exit

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 1, %bb.f ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = zext i32 %i.ae to i64
  %i.ag = tail call i32 @slurm_bit_test(ptr noundef nonnull %0, i64 noundef %i.af) #8
  %.not29.i = icmp eq i32 %i.ag, 0
  br i1 %.not29.i, label %.preheader.preheader.i, label %bb.g

.preheader.preheader.i:                           ; preds = %.lr.ph.i
  %4 = add i16 %i.r, -1
  %wide.trip.count44.i = zext i16 %4 to i64       ; 2 uses
  %exitcond45.not.i96 = icmp eq i64 %indvars.iv.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i96, label %_get_segment_start.exit, label %.lr.ph98

.preheader.i:                                     ; preds = %.lr.ph98
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %_get_segment_start.exit, label %.lr.ph98, !llvm.loop !16

.lr.ph98:                                         ; preds = %.preheader.preheader.i, %.preheader.i
  %indvars.iv41.i97 = phi i64 [ %indvars.iv.next42.i, %.preheader.i ], [ %indvars.iv.i, %.preheader.preheader.i ]
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i97, 1 ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next42.i
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call i32 @slurm_bit_test(ptr noundef nonnull %0, i64 noundef %i.aj) #8
  %.not30.i = icmp eq i32 %i.ak, 0
  br i1 %.not30.i, label %.preheader.i, label %.loopexit.loopexit.split.loop.exit48.i, !llvm.loop !16

bb.g:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.w
  br i1 %exitcond.not.i, label %_get_segment_start.exit, label %.lr.ph.i, !llvm.loop !17

.loopexit.loopexit.split.loop.exit48.i:           ; preds = %.lr.ph98
  %i.al = trunc nuw i64 %indvars.iv.next42.i to i16
  br label %_get_segment_start.exit

_get_segment_start.exit:                          ; preds = %bb.g, %.preheader.i, %.preheader.preheader.i, %bb.d, %bb.e, %bb.f, %.loopexit.loopexit.split.loop.exit48.i
  %.124.i = phi i16 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %.preheader.preheader.i ], [ %i.al, %.loopexit.loopexit.split.loop.exit48.i ], [ 0, %.preheader.i ], [ 0, %bb.g ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv
  store i16 %.124.i, ptr %i.am, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i32, ptr %i.f, align 8
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.d, label %._crit_edge, !llvm.loop !18

._crit_edge72:                                    ; preds = %.loopexit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @slurm_xfree(ptr noundef nonnull %i.a) #8
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph71, %.loopexit
  %.04369 = phi i32 [ 0, %.lr.ph71 ], [ %i.cb, %.loopexit ] ; 2 uses
  %i.aq = load i32, ptr %i.f, align 8
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph67.preheader, label %.loopexit

.lr.ph67.preheader:                               ; preds = %bb.h
  %i.as = load ptr, ptr %i.n, align 8
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.critedge
  %.065 = phi i32 [ %i.bx, %.critedge ], [ 0, %.lr.ph67.preheader ] ; 2 uses
  %.03964 = phi ptr [ %i.by, %.critedge ], [ %i.as, %.lr.ph67.preheader ] ; 5 uses
  %i.at = load i32, ptr %i.b, align 4             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03964, i64 72
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = sext i32 %i.at to i64
  %i.ax = call i32 @slurm_bit_test(ptr noundef %i.av, i64 noundef %i.aw) #8
  %.not.i50 = icmp eq i32 %i.ax, 0
  br i1 %.not.i50, label %.critedge, label %.preheader.i51

.preheader.i51:                                   ; preds = %.lr.ph67
  %i.ay = getelementptr inbounds nuw i8, ptr %.03964, i64 80
  %i.az = load i16, ptr %i.ay, align 8            ; 4 uses
  %.not15.i = icmp eq i16 %i.az, 0
  br i1 %.not15.i, label %.critedge, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.preheader.i51
  %i.ba = getelementptr inbounds nuw i8, ptr %.03964, i64 8
  %wide.trip.count.i = zext i16 %i.az to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i52
  %indvars.iv.i53 = phi i64 [ 0, %.lr.ph.i52 ], [ %indvars.iv.next.i54, %bb.j ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i53
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = icmp eq i32 %i.bc, %i.at
  br i1 %i.bd, label %_get_ring_pos.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i
  br i1 %exitcond.not.i55, label %.critedge, label %bb.i, !llvm.loop !19

_get_ring_pos.exit:                               ; preds = %bb.i
  %i.be = trunc i64 %indvars.iv.i53 to i16        ; 2 uses
  %.not49 = icmp eq i16 %i.be, -1
  br i1 %.not49, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_get_ring_pos.exit
  %i.bf = zext nneg i32 %.065 to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = add i16 %i.az, %i.be
  %i.bj = sub i16 %i.bi, %i.bh
  %i.bk = urem i16 %i.bj, %i.az
  %i.bl = getelementptr inbounds nuw i8, ptr %.03964, i64 96
  %i.bm = load i16, ptr %i.bl, align 8
  %i.bn = zext i16 %i.bm to i32
  %i.bo = shl nuw i32 %i.bn, 16
  %i.bp = load ptr, ptr %1, align 8
  %i.bq = zext i32 %.04369 to i64                 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bq
  store i32 %i.bo, ptr %i.br, align 4
  %i.bs = zext i16 %i.bk to i32
  %i.bt = load ptr, ptr %1, align 8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bq ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = add i32 %i.bv, %i.bs
  store i32 %i.bw, ptr %i.bu, align 4
  br label %.loopexit

.critedge:                                        ; preds = %bb.j, %.preheader.i51, %.lr.ph67, %_get_ring_pos.exit
  %i.bx = add nuw nsw i32 %.065, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.03964, i64 104
  %i.bz = load i32, ptr %i.f, align 8
  %i.ca = icmp slt i32 %i.bx, %i.bz
  br i1 %i.ca, label %.lr.ph67, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %.critedge, %bb.h, %bb.k
  %i.cb = add i32 %.04369, 1
  %i.cc = load i32, ptr %i.b, align 4
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.b, align 4
  %i.ce = call ptr @next_node_bitmap(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #8
  %.not48 = icmp eq ptr %i.ce, null
  br i1 %.not48, label %._crit_edge72, label %bb.h, !llvm.loop !21

bb.l:                                             ; preds = %bb.b, %bb.a, %._crit_edge72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

declare i32 @slurm_bit_set_count(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @next_node_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @topology_p_get_bitmap(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i, label %ring_record_get_ring_inx.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.011.i = phi ptr [ %i.j, %bb.b ], [ %i.e, %.lr.ph.preheader.i ] ; 2 uses
  %.0810.i = phi i32 [ %i.i, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.f = load ptr, ptr %.011.i, align 8
  %i.g = tail call i32 @slurm_xstrcmp(ptr noundef %i.f, ptr noundef %0) #8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %ring_record_get_ring_inx.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = add nuw nsw i32 %.0810.i, 1              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i, i64 104
  %i.k = load i32, ptr %i.a, align 8
  %i.l = icmp slt i32 %i.i, %i.k
  br i1 %i.l, label %.lr.ph.i, label %ring_record_get_ring_inx.exit.thread, !llvm.loop !8

ring_record_get_ring_inx.exit:                    ; preds = %.lr.ph.i
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = zext nneg i32 %.0810.i to i64
  %i.o = getelementptr inbounds nuw [104 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  br label %ring_record_get_ring_inx.exit.thread

ring_record_get_ring_inx.exit.thread:             ; preds = %bb.b, %bb.a, %ring_record_get_ring_inx.exit
  %.0 = phi ptr [ %i.q, %ring_record_get_ring_inx.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @topology_p_generate_node_ranking(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind uwtable
define dso_local i32 @topology_p_get_node_addr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @slurm_find_node_record(ptr noundef %0) #8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %.preheader39

.preheader39:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not3641 = icmp sgt i32 %i.c, 0
  br i1 %.not3641, label %.critedge.lr.ph, label %.critedge38

.critedge.lr.ph:                                  ; preds = %.preheader39
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  br label %.critedge

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = load i32, ptr %i.b, align 8
  %i.g = sext i32 %i.f to i64
  %.not36 = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %.not36, label %.critedge, label %.critedge38, !llvm.loop !22

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw [104 x i8], ptr %i.h, i64 %indvars.iv ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i32, ptr %i.e, align 8
  %i.m = zext i32 %i.l to i64
  %i.n = tail call i32 @slurm_bit_test(ptr noundef %i.k, i64 noundef %i.m) #8
  %.not35 = icmp eq i32 %i.n, 0
  br i1 %.not35, label %bb.b, label %.preheader

end_hunk_0
