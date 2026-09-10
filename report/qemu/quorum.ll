Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/quorum?download=true
inline.NumInlined: 32
inline.NumDeleted: 15
begin_hunk_0_@quorum_recurse_can_replace:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d, %bb.e
  %.012 = phi i1 [ %i.p, %bb.e ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.012
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @quorum_open(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 12 uses
  tail call void @qdict_flatten(ptr noundef %1) #16
  %i.d = tail call i32 @qdict_array_entries(ptr noundef %1, ptr noundef nonnull @.str.6) #16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 9 uses
  store i32 %i.d, ptr %i.e, align 8
  %i.f = icmp slt i32 %i.d, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 956, ptr noundef nonnull @__func__.quorum_open, ptr noundef nonnull @.str.8) #16
  br label %quorum_valid_threshold.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.d, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 961, ptr noundef nonnull @__func__.quorum_open, ptr noundef nonnull @.str.9) #16
  br label %quorum_valid_threshold.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @qemu_opts_create(ptr noundef nonnull @quorum_runtime_opts, ptr noundef null, i32 noundef 0, ptr noundef nonnull @error_abort) #16 ; 13 uses
  %i.i = tail call zeroext i1 @qemu_opts_absorb_qdict(ptr noundef %i.h, ptr noundef %1, ptr noundef %3) #16
  br i1 %i.i, label %bb.f, label %quorum_valid_threshold.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i64 @qemu_opt_get_number(ptr noundef %i.h, ptr noundef nonnull @.str.2, i64 noundef 0) #16
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i32 %i.k, ptr %i.l, align 8
  %i.m = icmp slt i32 %i.k, 1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 886, ptr noundef nonnull @__func__.quorum_valid_threshold, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.21) #16
  br label %quorum_valid_threshold.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.e, align 8
  %i.o = icmp slt i32 %i.n, %i.k
  br i1 %i.o, label %bb.i, label %quorum_valid_threshold.exit

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 891, ptr noundef nonnull @__func__.quorum_valid_threshold, ptr noundef nonnull @.str.22) #16
  br label %quorum_valid_threshold.exit.thread

quorum_valid_threshold.exit:                      ; preds = %bb.h
  %i.p = tail call ptr @qemu_opt_get(ptr noundef %i.h, ptr noundef nonnull @.str.5) #16 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.thread113, label %bb.j

.thread113:                                       ; preds = %quorum_valid_threshold.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 0, ptr %i.q, align 8
  br label %bb.m

bb.j:                                             ; preds = %quorum_valid_threshold.exit
  %i.r = tail call i32 @qapi_enum_parse(ptr noundef nonnull @QuorumReadPattern_lookup, ptr noundef nonnull %i.p, i32 noundef -22, ptr noundef null) #16 ; 5 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 987, ptr noundef nonnull @__func__.quorum_open, ptr noundef nonnull @.str.10) #16
  br label %quorum_valid_threshold.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.r, ptr %i.t, align 8
  %i.u = icmp eq i32 %i.r, 0
  br i1 %i.u, label %bb.m, label %bb.t

bb.m:                                             ; preds = %.thread113, %bb.l
  %i.v = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %i.h, ptr noundef nonnull @.str.3, i1 noundef zeroext false) #16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.x = zext i1 %i.v to i8
  store i8 %i.x, ptr %i.w, align 4
  br i1 %i.v, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.y = load i32, ptr %i.e, align 8
  %.not107 = icmp eq i32 %i.y, 2
  br i1 %.not107, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.z = load i32, ptr %i.l, align 8
  %.not108 = icmp eq i32 %i.z, 2
  br i1 %.not108, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 996, ptr noundef nonnull @__func__.quorum_open, ptr noundef nonnull @.str.11) #16
  br label %quorum_valid_threshold.exit.thread

bb.q:                                             ; preds = %bb.o, %bb.m
  %i.aa = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %i.h, ptr noundef nonnull @.str.4, i1 noundef zeroext false) #16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  %i.ac = zext i1 %i.aa to i8
  store i8 %i.ac, ptr %i.ab, align 1
  br i1 %i.aa, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ad = load i8, ptr %i.w, align 4, !range !15, !noundef !16
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 1005, ptr noundef nonnull @__func__.quorum_open, ptr noundef nonnull @.str.12) #16
  br label %quorum_valid_threshold.exit.thread

bb.t:                                             ; preds = %bb.l, %bb.r, %bb.q
  %.098112115 = phi i32 [ 0, %bb.q ], [ 0, %bb.r ], [ %i.r, %bb.l ]
  %i.af = load i32, ptr %i.e, align 8
  %i.ag = sext i32 %i.af to i64
  %i.ah = tail call noalias ptr @g_malloc0_n(i64 noundef %i.ag, i64 noundef 8) #17
  store ptr %i.ah, ptr %i.c, align 8
  %i.ai = load i32, ptr %i.e, align 8
  %i.aj = sext i32 %i.ai to i64
  %i.ak = tail call noalias ptr @g_malloc0(i64 noundef %i.aj) #18 ; 4 uses
  %i.al = load i32, ptr %i.e, align 8             ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.t, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 0, %bb.t ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !17
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 32, i32 noundef 1, i64 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %i.an) #16 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 32
  br i1 %i.ap, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 1018, ptr noundef nonnull @__PRETTY_FUNCTION__.quorum_open) #19
  unreachable

bb.v:                                             ; preds = %.lr.ph
  %i.aq = call ptr @bdrv_open_child(ptr noundef null, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull @child_of_bds, i32 noundef 1, i1 noundef zeroext false, ptr noundef %3) #16
  %i.ar = load ptr, ptr %i.c, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  store ptr %i.aq, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.c, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8
  %.not109 = icmp eq ptr %i.av, null
  br i1 %.not109, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv
  store i8 1, ptr %i.aw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i32, ptr %i.e, align 8             ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.w, %bb.t
  %.1.lcssa = phi i32 [ %.098112115, %bb.t ], [ %i.ao, %bb.w ]
  %.lcssa121 = phi i32 [ %i.al, %bb.t ], [ %i.ax, %bb.w ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %.lcssa121, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16588
  store i32 64, ptr %i.bb, align 4
  %i.bc = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16592 ; 3 uses
  store i32 276, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i, label %quorum_refresh_flags.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %i.bh = phi i32 [ %i.bo, %.lr.ph.i ], [ 276, %._crit_edge ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %._crit_edge ] ; 2 uses
  %i.bi = load ptr, ptr %i.bc, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16592
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = and i32 %i.bn, %i.bh                    ; 3 uses
  store i32 %i.bo, ptr %i.bd, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bp = load i32, ptr %i.be, align 8
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next.i, %i.bq
  br i1 %i.br, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.bs = or disjoint i32 %i.bo, 64
  br label %quorum_refresh_flags.exit

quorum_refresh_flags.exit:                        ; preds = %._crit_edge, %._crit_edge.loopexit.i
  %i.bt = phi i32 [ %i.bs, %._crit_edge.loopexit.i ], [ 340, %._crit_edge ]
  store i32 %i.bt, ptr %i.bd, align 8
  call void @g_free(ptr noundef %i.ak) #16
  br label %quorum_valid_threshold.exit.thread

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @bdrv_graph_wrlock_drained() #16
  %i.bu = load i32, ptr %i.e, align 8             ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph130, label %._crit_edge131

.lr.ph130:                                        ; preds = %bb.x, %bb.z
  %i.bw = phi i32 [ %i.cd, %bb.z ], [ %i.bu, %bb.x ]
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %bb.z ], [ 0, %bb.x ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv137
  %i.by = load i8, ptr %i.bx, align 1, !range !15, !noundef !16
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph130
  %i.ca = load ptr, ptr %i.c, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv137
  %i.cc = load ptr, ptr %i.cb, align 8
  call void @bdrv_unref_child(ptr noundef %0, ptr noundef %i.cc) #16
  %.pre = load i32, ptr %i.e, align 8
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph130, %bb.y
  %i.cd = phi i32 [ %i.bw, %.lr.ph130 ], [ %.pre, %bb.y ] ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next138, %i.ce
  br i1 %i.cf, label %.lr.ph130, label %._crit_edge131, !llvm.loop !20

._crit_edge131:                                   ; preds = %bb.z, %bb.x
  call void @bdrv_graph_wrunlock() #16
  %i.cg = load ptr, ptr %i.c, align 8
  call void @g_free(ptr noundef %i.cg) #16
  call void @g_free(ptr noundef %i.ak) #16
  br label %quorum_valid_threshold.exit.thread

quorum_valid_threshold.exit.thread:               ; preds = %bb.i, %bb.g, %bb.e, %._crit_edge131, %quorum_refresh_flags.exit, %bb.s, %bb.p, %bb.k, %bb.d, %bb.b
  %.0101 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.k ], [ %i.h, %bb.p ], [ %i.h, %bb.s ], [ %i.h, %._crit_edge131 ], [ %i.h, %quorum_refresh_flags.exit ], [ %i.h, %bb.g ], [ %i.h, %bb.i ]
  %.3 = phi i32 [ -22, %bb.b ], [ -22, %bb.d ], [ -22, %bb.e ], [ %i.r, %bb.k ], [ -22, %bb.p ], [ -22, %bb.s ], [ -22, %._crit_edge131 ], [ %.1.lcssa, %quorum_refresh_flags.exit ], [ -34, %bb.g ], [ -34, %bb.i ]
  call void @qemu_opts_del(ptr noundef %.0101) #16
  ret i32 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @quorum_close(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  tail call void @bdrv_graph_wrlock_drained() #16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @bdrv_unref_child(ptr noundef nonnull %0, ptr noundef %i.h) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.c, align 8
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @bdrv_graph_wrunlock() #16
  %i.l = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.l) #16
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @quorum_gather_child_options(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 zeroext %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call ptr @qlist_new() #16           ; 2 uses
  tail call void @qdict_put_obj(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef %i.c) #16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %qobject_ref_impl.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %qobject_ref_impl.exit ], [ 0, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12360
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not28 = icmp eq ptr %i.l, null
  br i1 %.not28, label %qobject_ref_impl.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 1 seq_cst, align 8 ; 0 uses
  br label %qobject_ref_impl.exit

qobject_ref_impl.exit:                            ; preds = %.lr.ph, %bb.b
  tail call void @qlist_append_obj(ptr noundef %i.c, ptr noundef %i.l) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = load i32, ptr %i.d, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %qobject_ref_impl.exit, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noalias noundef ptr @quorum_dirname(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef 1196, ptr noundef nonnull @__func__.quorum_dirname, ptr noundef nonnull @.str.24) #16
  ret ptr null
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @quorum_add_child(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i8, ptr %i.d, align 4, !range !15, !noundef !16
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 1078, ptr noundef nonnull @__func__.quorum_add_child, ptr noundef nonnull @.str.25) #16
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp ult i32 %i.h, 268435456
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.7, i32 noundef 1082, ptr noundef nonnull @__PRETTY_FUNCTION__.quorum_add_child) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.h, 268435455
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 5 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 1085, ptr noundef nonnull @__func__.quorum_add_child, ptr noundef nonnull @.str.27) #16
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.n = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 32, i32 noundef 1, i64 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %i.l) #16
  %or.cond = icmp ugt i32 %i.n, 31
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 1091, ptr noundef nonnull @__func__.quorum_add_child, ptr noundef nonnull @.str.29) #16
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = load i32, ptr %i.k, align 4
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.k, align 4
  call void @bdrv_ref(ptr noundef %1) #16
  %i.q = call ptr @bdrv_attach_child(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull @child_of_bds, i32 noundef 1, ptr noundef %2) #16 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = load i32, ptr %i.k, align 4
  %i.t = add i32 %i.s, -1
  store i32 %i.t, ptr %i.k, align 4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = load i32, ptr %i.g, align 8
  %i.w = add i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = call ptr @g_realloc_n(ptr noundef %i.u, i64 noundef %i.x, i64 noundef 8) #16 ; 2 uses
  store ptr %i.y, ptr %i.c, align 8
  %i.z = load i32, ptr %i.g, align 8              ; 2 uses
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.g, align 8
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ab
  store ptr %i.q, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16592 ; 3 uses
  store i32 276, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %quorum_refresh_flags.exit

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %i.ai = phi i32 [ %i.ap, %.lr.ph.i ], [ 276, %bb.l ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.l ] ; 2 uses
  %i.aj = load ptr, ptr %i.ad, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16592
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = and i32 %i.ao, %i.ai                    ; 3 uses
  store i32 %i.ap, ptr %i.ae, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = load i32, ptr %i.af, align 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next.i, %i.ar
  br i1 %i.as, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.at = or disjoint i32 %i.ap, 64
  br label %quorum_refresh_flags.exit

quorum_refresh_flags.exit:                        ; preds = %bb.l, %._crit_edge.loopexit.i
  %i.au = phi i32 [ %i.at, %._crit_edge.loopexit.i ], [ 340, %bb.l ]
  store i32 %i.au, ptr %i.ae, align 8
  br label %bb.m

bb.m:                                             ; preds = %quorum_refresh_flags.exit, %bb.k, %bb.i, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @quorum_del_child(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.7, i32 noundef 1124, ptr noundef nonnull @__PRETTY_FUNCTION__.quorum_del_child) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %.not = icmp sgt i32 %i.e, %i.m
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 1129, ptr noundef nonnull @__func__.quorum_del_child, ptr noundef nonnull @.str.31, i32 noundef %i.m) #16
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.o = load i8, ptr %i.n, align 4, !range !15, !noundef !16
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.7, i32 noundef 1134, ptr noundef nonnull @__PRETTY_FUNCTION__.quorum_del_child) #19
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, -1
  %i.t = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 32, i32 noundef 1, i64 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %i.s) #16 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32) #20
  %.not46 = icmp eq i32 %i.w, 0
  br i1 %.not46, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr %i.q, align 4
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr %i.q, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = load ptr, ptr %i.c, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.d, align 8
  %i.ad = xor i32 %i.k, -1
  %i.ae = add i32 %i.ac, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 3
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.aa, ptr noundef nonnull align 1 %i.ab, i64 noundef range(i64 -17179869184, 17179869177) %i.ag, i1 noundef false) #16
  %i.ah = load i32, ptr %i.d, align 8
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.ai, ptr %i.d, align 8
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = sext i32 %i.ai to i64
  %i.al = call ptr @g_realloc_n(ptr noundef %i.aj, i64 noundef %i.ak, i64 noundef 8) #16
  store ptr %i.al, ptr %i.c, align 8
  call void @bdrv_unref_child(ptr noundef %0, ptr noundef nonnull %1) #16
  %i.am = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16592 ; 3 uses
  store i32 276, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i, label %quorum_refresh_flags.exit

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %i.ar = phi i32 [ %i.ay, %.lr.ph.i ], [ 276, %bb.j ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.j ] ; 2 uses
  %i.as = load ptr, ptr %i.am, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16592
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = and i32 %i.ax, %i.ar                    ; 3 uses
  store i32 %i.ay, ptr %i.an, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = load i32, ptr %i.ao, align 8
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next.i, %i.ba
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.bc = or disjoint i32 %i.ay, 64
  br label %quorum_refresh_flags.exit

quorum_refresh_flags.exit:                        ; preds = %bb.j, %._crit_edge.loopexit.i
  %i.bd = phi i32 [ %i.bc, %._crit_edge.loopexit.i ], [ 340, %bb.j ]
  store i32 %i.bd, ptr %i.an, align 8
  br label %bb.k

bb.k:                                             ; preds = %quorum_refresh_flags.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @quorum_child_perm(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %7) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = and i64 %4, 15                           ; 2 uses
  store i64 %i.c, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %i.e = load i8, ptr %i.d, align 1, !range !15, !noundef !16
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = or i64 %i.c, 2
  store i64 %i.g, ptr %6, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = and i64 %5, 5
  store i64 %i.h, ptr %7, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @quorum_co_preadv(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call noalias dereferenceable_or_null(104) ptr @g_malloc(i64 noundef 104) #18 ; 19 uses
  %i.d = tail call ptr @qemu_coroutine_self() #16
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.16.0..sroa_idx.i, i8 0, i64 3, i1 false)
  store ptr %0, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %4, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %3, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 5 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr @quorum_sha256_compare, ptr %.sroa.14.0..sroa_idx.i, align 8
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 0, ptr %.sroa.17.0..sroa_idx.i, align 4
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  store i32 0, ptr %.sroa.19.0..sroa_idx.i, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @g_malloc0_n(i64 noundef %i.h, i64 noundef 72) #17
  store ptr %i.i, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.j = load i32, ptr %i.f, align 8
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %quorum_aio_get.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.a ] ; 4 uses
  %i.l = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr null, ptr %i.n, align 8
  %i.o = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i32 0, ptr %i.q, align 8
  %i.r = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.s = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.c, ptr %i.t, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.u = load i32, ptr %i.f, align 8
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next.i, %i.v
  br i1 %i.w, label %.lr.ph.i, label %quorum_aio_get.exit, !llvm.loop !1

quorum_aio_get.exit:                              ; preds = %.lr.ph.i, %bb.a
  store i8 1, ptr %.sroa.15.0..sroa_idx.i, align 8
  store i32 0, ptr %.sroa.18.0..sroa_idx.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %quorum_aio_get.exit
  %i.aa = tail call i32 @read_quorum_children(ptr noundef nonnull %i.c)
  br label %bb.d

bb.c:                                             ; preds = %quorum_aio_get.exit
  %i.ab = tail call i32 @read_fifo_child(ptr noundef nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.aa, %bb.b ], [ %i.ab, %bb.c ]
  %i.ac = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8
  tail call void @g_free(ptr noundef %i.ac) #16
  tail call void @g_free(ptr noundef nonnull %i.c) #16
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @quorum_co_pwritev(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %5 = alloca %struct.QuorumCo, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noalias dereferenceable_or_null(104) ptr @g_malloc(i64 noundef 104) #18 ; 19 uses
  %i.d = tail call ptr @qemu_coroutine_self() #16
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.16.0..sroa_idx.i, i8 0, i64 3, i1 false)
  store ptr %0, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %4, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %3, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 5 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr @quorum_sha256_compare, ptr %.sroa.14.0..sroa_idx.i, align 8
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i8 0, ptr %.sroa.15.0..sroa_idx.i, align 8
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 2 uses
  store i32 0, ptr %.sroa.17.0..sroa_idx.i, align 4
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i32 0, ptr %.sroa.18.0..sroa_idx.i, align 8
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  store i32 0, ptr %.sroa.19.0..sroa_idx.i, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @g_malloc0_n(i64 noundef %i.h, i64 noundef 72) #17
  store ptr %i.i, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.j = load i32, ptr %i.f, align 8              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %.preheader

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.a ] ; 4 uses
  %i.l = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr null, ptr %i.n, align 8
  %i.o = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i32 0, ptr %i.q, align 8
  %i.r = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.s = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.c, ptr %i.t, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.u = load i32, ptr %i.f, align 8              ; 3 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next.i, %i.v
  br i1 %i.w, label %.lr.ph.i, label %quorum_aio_get.exit, !llvm.loop !1

quorum_aio_get.exit:                              ; preds = %.lr.ph.i
  %i.x = icmp sgt i32 %i.u, 0
  br i1 %i.x, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %quorum_aio_get.exit
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a, %quorum_aio_get.exit
  %i.aa = phi i32 [ %i.j, %bb.a ], [ %i.u, %quorum_aio_get.exit ], [ %i.af, %bb.b ]
  %i.ab = load i32, ptr %i.e, align 8
  %i.ac = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ac, label %.lr.ph18, label %._crit_edge
end_hunk_0
