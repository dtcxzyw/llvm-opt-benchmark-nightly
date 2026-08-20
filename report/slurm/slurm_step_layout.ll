inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@_init_task_layout:bb.a
  %i.ha = icmp slt i64 %indvars.iv.next104.i, %i.gc
  %or.cond.i82 = select i1 %.not85.i, i1 %i.ha, i1 false
  br i1 %or.cond.i82, label %.lr.ph92.i, label %._crit_edge.i80, !llvm.loop !23

._crit_edge.i80:                                  ; preds = %bb.al, %bb.aj
  %.3.i = phi i32 [ %.068.i, %bb.aj ], [ %.270.i, %bb.al ] ; 2 uses
  %i.hb = tail call i32 @get_log_level() #8
  %i.hc = icmp sgt i32 %i.hb, 6
  br i1 %i.hc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge.i80
  %i.hd = load ptr, ptr %i.g, align 8
  %i.he = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.gp
  %i.hf = load i16, ptr %i.he, align 2
  %i.hg = zext i16 %i.hf to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.gm, i32 noundef %i.hg) #8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge.i80
  %i.hh = load ptr, ptr %i.g, align 8
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.hh, i64 %i.gp
  %i.hj = load i16, ptr %i.hi, align 2            ; 2 uses
  %i.hk = icmp eq i16 %i.hj, 0
  br i1 %i.hk, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hl = zext i16 %i.hj to i64
  %i.hm = tail call ptr @slurm_xcalloc(i64 noundef %i.hl, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 649, ptr noundef nonnull @__func__._task_layout_hostfile) #8
  %i.hn = load ptr, ptr %i.p, align 8
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.gp
  store ptr %i.hm, ptr %i.ho, align 8
  br i1 %i.gh, label %.lr.ph99.i, label %._crit_edge100.i

.lr.ph99.i:                                       ; preds = %bb.ao, %bb.aq
  %indvars.iv106.i = phi i64 [ %indvars.iv.next107.i, %bb.aq ], [ 0, %bb.ao ] ; 3 uses
  %.07295.i = phi i32 [ %.173.i, %bb.aq ], [ 0, %bb.ao ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv106.i
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = icmp eq ptr %i.gn, %i.hq
  br i1 %i.hr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph99.i
  %indvars110.i = trunc i64 %indvars.iv106.i to i32
  %i.hs = load ptr, ptr %i.p, align 8
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.gp
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = sext i32 %.07295.i to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.hv
  store i32 %indvars110.i, ptr %i.hw, align 4
  %i.hx = add nsw i32 %.07295.i, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph99.i
  %.173.i = phi i32 [ %i.hx, %bb.ap ], [ %.07295.i, %.lr.ph99.i ] ; 2 uses
  %i.hy = load ptr, ptr %i.g, align 8
  %i.hz = getelementptr inbounds [2 x i8], ptr %i.hy, i64 %i.gp
  %i.ia = load i16, ptr %i.hz, align 2
  %i.ib = zext i16 %i.ia to i32
  %.not86.i = icmp sge i32 %.173.i, %i.ib
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next107.i, %wide.trip.count.i78
  %or.cond117.i = select i1 %.not86.i, i1 true, i1 %exitcond.not.i81
  br i1 %or.cond117.i, label %._crit_edge100.i, label %.lr.ph99.i, !llvm.loop !24

._crit_edge100.i:                                 ; preds = %bb.aq, %bb.ao
  %i.ic = add nsw i32 %.074.i, 1
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge100.i, %bb.an
  %.175.i = phi i32 [ %.074.i, %bb.an ], [ %i.ic, %._crit_edge100.i ] ; 2 uses
  tail call void @free(ptr noundef %i.gm) #8
  %i.id = load i32, ptr %i.fs, align 8
  %i.ie = icmp ugt i32 %.175.i, %i.id
  br i1 %i.ie, label %bb.as, label %bb.ai, !llvm.loop !25

bb.as:                                            ; preds = %bb.ar, %bb.ai
  %.4.i = phi i32 [ %.3.i, %bb.ar ], [ %.068.i, %bb.ai ] ; 2 uses
  tail call void @hostlist_iterator_destroy(ptr noundef %i.fz) #8
  tail call void @hostlist_iterator_destroy(ptr noundef %i.ga) #8
  tail call void @hostlist_destroy(ptr noundef %i.fy) #8
  tail call void @hostlist_destroy(ptr noundef %i.fq) #8
  call void @slurm_xfree(ptr noundef nonnull %i.a) #8
  %i.if = load i32, ptr %i.fs, align 8            ; 2 uses
  %.not87.i = icmp eq i32 %.4.i, %i.if
  br i1 %.not87.i, label %_task_layout_hostfile.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ig = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.16, i32 noundef %i.if, i32 noundef %.4.i) #8 ; 0 uses
  br label %_task_layout_hostfile.exit

_task_layout_hostfile.exit:                       ; preds = %bb.aa, %bb.ae, %bb.as, %bb.at
  %.076.i = phi i32 [ -1, %bb.ae ], [ -1, %bb.at ], [ -1, %bb.aa ], [ 0, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %_task_layout_cyclic.exit

bb.au:                                            ; preds = %bb.w
  %i.ih = call fastcc i32 @_task_layout_plane(ptr noundef nonnull %1, ptr noundef %i.e)
  br label %_task_layout_cyclic.exit

bb.av:                                            ; preds = %bb.w
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8            ; 2 uses
  %.not66 = icmp eq ptr %i.ij, null
  br i1 %.not66, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call fastcc void @_task_layout_topo(ptr noundef nonnull %1, ptr noundef %i.ij, ptr noundef %i.e)
  br label %_task_layout_cyclic.exit

bb.ax:                                            ; preds = %bb.av
  call fastcc void @_task_layout_block(ptr noundef nonnull %1, ptr noundef %i.e)
  br label %_task_layout_cyclic.exit

_task_layout_cyclic.exit:                         ; preds = %.critedge.i, %bb.r, %bb.b, %bb.a, %bb.ax, %bb.aw, %bb.au, %_task_layout_hostfile.exit, %bb.j
  %.058 = phi i32 [ 0, %bb.ax ], [ -1, %bb.a ], [ -1, %bb.j ], [ 0, %bb.b ], [ %.076.i, %_task_layout_hostfile.exit ], [ %i.ih, %bb.au ], [ 0, %bb.aw ], [ 0, %bb.r ], [ 0, %.critedge.i ]
  ret i32 %.058
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @slurm_step_layout_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @slurm_free_node_alias_addrs(ptr noundef %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @slurm_xfree(ptr noundef nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @slurm_xfree(ptr noundef nonnull %i.e) #8
  tail call void @slurm_xfree(ptr noundef nonnull %0) #8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @slurm_xfree(ptr noundef nonnull %i.f) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %.not5 = icmp eq i32 %i.h, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  tail call void @slurm_xfree(ptr noundef %i.k) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %i.g, align 8
  %i.m = zext i32 %i.l to i64
  %i.n = icmp samesign ult i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.c, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @slurm_xfree(ptr noundef nonnull %i.o) #8
  call void @slurm_xfree(ptr noundef nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret i32 0
}

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @fake_slurm_step_layout_create(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i32 %3, 0
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %4, label %bb.e [
    i32 -2, label %bb.d
    i32 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.a
  %i.d = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.1, i32 noundef %3, i32 noundef %4, ptr noundef %0) #8 ; 0 uses
  br label %.loopexit95

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.e = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 80, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 167, ptr noundef nonnull @__func__.fake_slurm_step_layout_create) #8 ; 9 uses
  %i.f = tail call ptr @xstrdup(ptr noundef nonnull %0) #8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  store i32 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 50
  store i16 %5, ptr %i.i, align 2
  %i.j = zext i32 %3 to i64                       ; 2 uses
  %i.k = tail call ptr @slurm_xcalloc(i64 noundef %i.j, i64 noundef 2, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 171, ptr noundef nonnull @__func__.fake_slurm_step_layout_create) #8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 8 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = tail call ptr @slurm_xcalloc(i64 noundef %i.j, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 172, ptr noundef nonnull @__func__.fake_slurm_step_layout_create) #8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 6 uses
  store ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 7 uses
  store i32 0, ptr %i.o, align 8
  %i.p = load i32, ptr %i.h, align 8
  %.not105 = icmp eq i32 %i.p, 0
  br i1 %.not105, label %.loopexit95, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.e
  %i.q = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.c, %i.q
  %i.r = add i32 %4, -1
  br i1 %or.cond5, label %.lr.ph104.split.us.preheader, label %.lr.ph104.split

.lr.ph104.split.us.preheader:                     ; preds = %.lr.ph104
  %.pre120 = load ptr, ptr %i.l, align 8
  br label %.lr.ph104.split.us

.lr.ph104.split.us:                               ; preds = %.lr.ph104.split.us.preheader, %._crit_edge.us
  %i.s = phi ptr [ %.pre120, %.lr.ph104.split.us.preheader ], [ %i.as, %._crit_edge.us ]
  %indvars.iv117 = phi i64 [ 0, %.lr.ph104.split.us.preheader ], [ %indvars.iv.next118, %._crit_edge.us ] ; 7 uses
  %.081101.us = phi i32 [ 0, %.lr.ph104.split.us.preheader ], [ %spec.select94.us, %._crit_edge.us ] ; 2 uses
  %.083100.us = phi i32 [ 0, %.lr.ph104.split.us.preheader ], [ %spec.select.us, %._crit_edge.us ]
  %i.t = zext nneg i32 %.081101.us to i64         ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv117
  store i16 %i.v, ptr %i.w, align 2
  %i.x = load ptr, ptr %i.l, align 8
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv117
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i64
  %i.ab = tail call ptr @slurm_xcalloc(i64 noundef %i.aa, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull @__func__.fake_slurm_step_layout_create) #8
  %i.ac = load ptr, ptr %i.n, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv117
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv117
  %i.ag = load i16, ptr %i.af, align 2
  %.not107 = icmp eq i16 %i.ag, 0
  br i1 %.not107, label %._crit_edge.us, label %.lr.ph99.us

.lr.ph99.us:                                      ; preds = %.lr.ph104.split.us, %.lr.ph99.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %.lr.ph99.us ], [ 0, %.lr.ph104.split.us ] ; 2 uses
  %i.ah = load i32, ptr %i.o, align 8             ; 2 uses
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.o, align 8
  %i.aj = load ptr, ptr %i.n, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv117
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv114
  store i32 %i.ah, ptr %i.am, align 4
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.an = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv117
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i64
  %i.ar = icmp samesign ult i64 %indvars.iv.next115, %i.aq
  br i1 %i.ar, label %.lr.ph99.us, label %._crit_edge.us, !llvm.loop !27

._crit_edge.us:                                   ; preds = %.lr.ph99.us, %.lr.ph104.split.us
  %i.as = phi ptr [ %i.ae, %.lr.ph104.split.us ], [ %i.an, %.lr.ph99.us ]
  %i.at = add nsw i32 %.083100.us, 1              ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.t
  %i.av = load i32, ptr %i.au, align 4
  %.not93.us = icmp uge i32 %i.at, %i.av          ; 2 uses
  %spec.select.us = select i1 %.not93.us, i32 0, i32 %i.at
  %i.aw = zext i1 %.not93.us to i32
  %spec.select94.us = add nuw nsw i32 %.081101.us, %i.aw
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.ax = load i32, ptr %i.h, align 8
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next118, %i.ay
  br i1 %i.az, label %.lr.ph104.split.us, label %.loopexit95, !llvm.loop !28

.lr.ph104.split:                                  ; preds = %.lr.ph104, %.loopexit
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %.loopexit ], [ 0, %.lr.ph104 ] ; 8 uses
  %i.ba = load i32, ptr %i.o, align 8             ; 2 uses
  %.not = icmp ult i32 %i.ba, %4
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph104.split
  %i.bb = load ptr, ptr %i.l, align 8
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv111
  store i16 0, ptr %i.bc, align 2
  %i.bd = load ptr, ptr %i.n, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv111
  store ptr null, ptr %i.be, align 8
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph104.split
  %6 = trunc nuw nsw i64 %indvars.iv111 to i32
  %7 = sub i32 %3, %6                             ; 3 uses
  %i.bf = add i32 %i.r, %7
  %i.bg = sub i32 %i.bf, %i.ba                    ; 2 uses
  %i.bh = udiv i32 %i.bg, %7                      ; 2 uses
  %i.bi = trunc i32 %i.bh to i16
  %i.bj = load ptr, ptr %i.l, align 8
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv111
  store i16 %i.bi, ptr %i.bk, align 2
  %i.bl = zext i32 %i.bh to i64                   ; 2 uses
  %i.bm = tail call ptr @slurm_xcalloc(i64 noundef %i.bl, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 199, ptr noundef nonnull @__func__.fake_slurm_step_layout_create) #8
  %i.bn = load ptr, ptr %i.n, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv111
  store ptr %i.bm, ptr %i.bo, align 8
  %.not106 = icmp ugt i32 %7, %i.bg
  br i1 %.not106, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %.pre = load i32, ptr %i.o, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.bp = phi i32 [ %.pre, %.lr.ph.preheader ], [ %i.bv, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.o, align 8
  %i.br = load ptr, ptr %i.n, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv111
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv
  store i32 %i.bp, ptr %i.bu, align 4
  %i.bv = load i32, ptr %i.o, align 8             ; 2 uses
  %.not92 = icmp ult i32 %i.bv, %4
  br i1 %.not92, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bw = trunc i64 %indvars.iv to i16
  %i.bx = add i16 %i.bw, 1
  %i.by = load ptr, ptr %i.l, align 8
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv111
  store i16 %i.bx, ptr %i.bz, align 2
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ca = icmp samesign ult i64 %indvars.iv.next, %i.bl
  br i1 %i.ca, label %.lr.ph, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %bb.i, %bb.g, %bb.h, %bb.f
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.cb = load i32, ptr %i.h, align 8
  %i.cc = zext i32 %i.cb to i64
  %i.cd = icmp samesign ult i64 %indvars.iv.next112, %i.cc
  br i1 %i.cd, label %.lr.ph104.split, label %.loopexit95, !llvm.loop !28

.loopexit95:                                      ; preds = %.loopexit, %._crit_edge.us, %bb.e, %bb.d
  %.085 = phi ptr [ null, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %._crit_edge.us ], [ %i.e, %.loopexit ]
  ret ptr %.085
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @slurm_step_layout_copy(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 80, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 227, ptr noundef nonnull @__func__.slurm_step_layout_copy) #8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not53 = icmp eq ptr %i.c, null
  br i1 %.not53, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 40, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 229, ptr noundef nonnull @__func__.slurm_step_layout_copy) #8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  %i.f = load ptr, ptr %i.b, align 8
  tail call void @slurm_copy_node_alias_addrs_members(ptr noundef %i.d, ptr noundef %i.f) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @xstrdup(ptr noundef %i.h) #8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  store i32 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.o = load i16, ptr %i.n, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  store i16 %i.o, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 %i.u, ptr %i.v, align 4
  %i.w = zext i32 %i.l to i64
  %i.x = tail call ptr @slurm_xcalloc(i64 noundef %i.w, i64 noundef 2, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 239, ptr noundef nonnull @__func__.slurm_step_layout_copy) #8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i32, ptr %i.m, align 8
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.x, ptr align 2 %i.aa, i64 %i.ad, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8            ; 3 uses
  %.not54 = icmp eq i32 %i.af, 0
  br i1 %.not54, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.af, ptr %i.ag, align 8
  %i.ah = zext i32 %i.af to i64                   ; 4 uses
  %i.ai = tail call ptr @slurm_xcalloc(i64 noundef %i.ah, i64 noundef 2, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 247, ptr noundef nonnull @__func__.slurm_step_layout_copy) #8 ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = shl nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ai, ptr align 2 %i.aj, i64 %i.ak, i1 false)
  %i.al = tail call ptr @slurm_xcalloc(i64 noundef %i.ah, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 253, ptr noundef nonnull @__func__.slurm_step_layout_copy) #8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = shl nuw nsw i64 %i.ah, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.al, ptr align 4 %i.ao, i64 %i.ap, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aq = load i32, ptr %i.m, align 8
  %i.ar = zext i32 %i.aq to i64
  %i.as = tail call ptr @slurm_xcalloc(i64 noundef %i.ar, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 260, ptr noundef nonnull @__func__.slurm_step_layout_copy) #8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  store ptr %i.as, ptr %i.at, align 8
  %i.au = load i32, ptr %i.m, align 8
  %.not56 = icmp eq i32 %i.au, 0
  br i1 %.not56, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 6 uses
  %i.aw = load ptr, ptr %i.y, align 8
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = zext i16 %i.ay to i64
  %i.ba = tail call ptr @slurm_xcalloc(i64 noundef %i.az, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 262, ptr noundef nonnull @__func__.slurm_step_layout_copy) #8
  %i.bb = load ptr, ptr %i.at, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  store ptr %i.ba, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.at, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load ptr, ptr %i.av, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.y, align 8
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = zext i16 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bf, ptr align 4 %i.bi, i64 %i.bn, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = load i32, ptr %i.m, align 8
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %bb.g, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.a, %bb.f ], [ %i.a, %bb.g ]
  ret ptr %.0
}

declare void @slurm_copy_node_alias_addrs_members(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @slurm_step_layout_merge(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @hostlist_create(ptr noundef %i.b) #8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @hostlist_create(ptr noundef %i.e) #8 ; 2 uses
  %i.g = tail call ptr @hostlist_iterator_create(ptr noundef %i.f) #8 ; 3 uses
  %i.h = tail call ptr @hostlist_next(ptr noundef %i.g) #8 ; 2 uses
  %.not50 = icmp eq ptr %i.h, null
  br i1 %.not50, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph53, %._crit_edge
  %indvars.iv61 = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next62, %._crit_edge ] ; 5 uses
  %i.n = phi ptr [ %i.h, %.lr.ph53 ], [ %i.ar, %._crit_edge ] ; 3 uses
end_hunk_0
