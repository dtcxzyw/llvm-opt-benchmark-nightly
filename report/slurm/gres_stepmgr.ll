inline.NumInlined: 17
inline.NumDeleted: 15
begin_hunk_0_@gres_stepmgr_job_build_details:bb.a

bb.n:                                             ; preds = %bb.l
  %i.bb = trunc nuw nsw i64 %indvars.iv116 to i32
  %i.bc = call ptr @hostlist_nth(ptr noundef nonnull %i.az, i32 noundef %i.bb) #7 ; 5 uses
  %.not32.i = icmp eq ptr %i.bc, null
  call void @hostlist_destroy(ptr noundef nonnull %i.az) #7
  br i1 %.not32.i, label %_build_shared_gres_details.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = call ptr @find_node_record(ptr noundef nonnull %i.bc) #7 ; 2 uses
  %.not33.i = icmp eq ptr %i.bd, null
  br i1 %.not33.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.51, ptr noundef nonnull %i.bc) #7 ; 0 uses
  call void @free(ptr noundef nonnull %i.bc) #7
  br label %_build_shared_gres_details.exit

bb.q:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.bc) #7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 208
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call ptr @list_find_first(ptr noundef %i.bg, ptr noundef nonnull @gres_find_id, ptr noundef nonnull %i.aj) #7 ; 2 uses
  %.not34.i = icmp eq ptr %i.bh, null
  br i1 %.not34.i, label %_build_shared_gres_details.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not35.i = icmp eq ptr %i.bj, null
  br i1 %.not35.i, label %_build_shared_gres_details.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load ptr, ptr %i.v, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv116
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call i64 @bit_size(ptr noundef %i.bm) #7 ; 2 uses
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  %wide.trip.count.i = and i64 %i.bn, 2147483647
  br label %bb.t

._crit_edge.i:                                    ; preds = %bb.t
  %.pre.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not36.i = icmp eq ptr %.pre.i, null
  br i1 %.not36.i, label %._crit_edge.thread.i, label %bb.u

bb.t:                                             ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.t ] ; 3 uses
  %i.br = load ptr, ptr %i.ai, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv116
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %i.bq, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i
  %i.by = load i64, ptr %i.bx, align 8
  call void (ptr, ptr, ptr, ...) @_xstrfmtcatat(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.52, i64 noundef %i.bv, i64 noundef %i.by) #7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.t, !llvm.loop !48

bb.u:                                             ; preds = %._crit_edge.i
  %i.bz = getelementptr inbounds i8, ptr %.pre.i, i64 -1
  store i8 0, ptr %i.bz, align 1
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.u, %._crit_edge.i, %bb.s
  %i.ca = load ptr, ptr %i.b, align 8
  br label %_build_shared_gres_details.exit

_build_shared_gres_details.exit:                  ; preds = %bb.m, %bb.n, %bb.p, %bb.q, %bb.r, %._crit_edge.thread.i
  %.025.i = phi ptr [ %i.ca, %._crit_edge.thread.i ], [ null, %bb.q ], [ null, %bb.m ], [ null, %bb.p ], [ null, %bb.r ], [ null, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  store ptr %.025.i, ptr %i.f, align 8
  %i.cb = load ptr, ptr %i.d, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.11, ptr noundef nonnull %.str.8..str.10, ptr noundef %i.cb, i64 noundef %.0, ptr noundef %.025.i) #7
  call void @slurm_xfree(ptr noundef nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.y

bb.v:                                             ; preds = %bb.k, %bb.j
  %i.cc = call ptr @bit_fmt(ptr noundef nonnull %i.c, i32 noundef 128, ptr noundef nonnull %i.av) #7 ; 0 uses
  %i.cd = load ptr, ptr %i.d, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.12, ptr noundef nonnull %.str.8..str.10, ptr noundef %i.cd, i64 noundef %.0, ptr noundef nonnull %i.c) #7
  br label %bb.y

bb.w:                                             ; preds = %bb.i
  %.not92 = icmp eq i64 %i.aq, 0
  br i1 %.not92, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = load ptr, ptr %i.d, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.13, ptr noundef nonnull %.str.8..str.10, ptr noundef %i.ce, i64 noundef %.0) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.w, %_build_shared_gres_details.exit
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge108.loopexit, label %bb.h, !llvm.loop !49

._crit_edge108.loopexit:                          ; preds = %bb.h, %bb.y
  %.069.lcssa.ph = phi i64 [ %i.as, %bb.y ], [ %.069105, %bb.h ]
  %.pre = load ptr, ptr %i.d, align 8
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %bb.g
  %i.cf = phi ptr [ %i.af, %bb.g ], [ %.pre, %._crit_edge108.loopexit ]
  %.069.lcssa = phi i64 [ 0, %bb.g ], [ %.069.lcssa.ph, %._crit_edge108.loopexit ]
  %i.cg = load ptr, ptr %i.e, align 8
  %.not93 = icmp eq ptr %i.cg, null
  %i.ch = select i1 %.not93, ptr @.str.8, ptr @.str.10
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ch, ptr noundef %i.cf, i64 noundef %.069.lcssa) #7
  call void @slurm_xfree(ptr noundef nonnull %i.d) #7
  br label %.outer, !llvm.loop !47

bb.z:                                             ; preds = %bb.c
  call void @list_iterator_destroy(ptr noundef %i.o) #7
  store i32 %.070.ph, ptr %2, align 4
  store ptr %.072.ph, ptr %3, align 8
  %i.ci = load ptr, ptr %i.e, align 8
  store ptr %i.ci, ptr %4, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret void
}

declare i32 @gres_init() local_unnamed_addr #2

declare ptr @xstrdup_printf(ptr noundef, ...) local_unnamed_addr #2

declare void @_xstrfmtcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @bit_fmt(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gres_stepmgr_set_job_tres_cnt(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 -2, label %bb.c
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_set_type_tres_cnt(ptr noundef %0, ptr noundef %2, i1 noundef zeroext %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_set_type_tres_cnt(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.assoc_mgr_lock_t, align 4   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 4 dereferenceable(28) @__const._set_type_tres_cnt.locks, i64 28, i1 false)
  %.b = load i1, ptr @_set_type_tres_cnt.first_run, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @_set_type_tres_cnt.first_run, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_set_type_tres_cnt.tres_rec, i8 0, i64 40, i1 false)
  store ptr @.str.53, ptr getelementptr inbounds nuw (i8, ptr @_set_type_tres_cnt.tres_rec, i64 40), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.d, label %bb.al

bb.d:                                             ; preds = %bb.c
  br i1 %2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @assoc_mgr_lock(ptr noundef nonnull %3) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @gres_clear_tres_cnt(ptr noundef nonnull %1, i1 noundef zeroext true) #7
  %i.d = call ptr @list_iterator_create(ptr noundef nonnull %0) #7 ; 3 uses
  %i.e = call ptr @list_next(ptr noundef %i.d) #7 ; 2 uses
  %.not88 = icmp eq ptr %i.e, null
  br i1 %.not88, label %._crit_edge, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.f, %.loopexit
  %i.f = phi ptr [ %i.bx, %.loopexit ], [ %i.e, %bb.f ] ; 6 uses
  %.090 = phi i1 [ %.4, %.loopexit ], [ false, %bb.f ] ; 2 uses
  %.06089 = phi i1 [ %.363, %.loopexit ], [ false, %bb.f ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @_set_type_tres_cnt.tres_rec, i64 32), align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  switch i32 %i.j, label %bb.n [
    i32 2, label %bb.g
    i32 1, label %bb.m
  ]

bb.g:                                             ; preds = %.lr.ph91
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.n = load ptr, ptr %i.m, align 8
  %.not77 = icmp eq ptr %i.n, null
  br i1 %.not77, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %.not78 = icmp eq i64 %i.p, 0
  br i1 %.not78, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.r = load i64, ptr %i.q, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.064 = phi i64 [ %i.r, %bb.i ], [ %i.p, %bb.h ]
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = call i32 @xstrcmp(ptr noundef %i.s, ptr noundef %i.h) #7
  %.not79 = icmp eq i32 %i.t, 0
  br i1 %.not79, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @slurm_xfree(ptr noundef nonnull %i.a) #7
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_set_type_tres_cnt.tres_rec, i64 32), align 8
  %i.v = call ptr @xstrdup(ptr noundef %i.u) #7
  store ptr %i.v, ptr %i.a, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.a = phi i1 [ false, %bb.k ], [ %.06089, %bb.j ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %.not80 = icmp eq ptr %i.x, null                ; 2 uses
  %..1 = select i1 %.not80, i1 true, i1 %.1.a
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph91
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load i64, ptr %i.aa, align 8
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph91
  %i.ac = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__._set_type_tres_cnt, i32 noundef %i.j) #7 ; 0 uses
  br label %.loopexit, !llvm.loop !50

bb.o:                                             ; preds = %bb.m, %bb.l
  %.366 = phi i1 [ %..1, %bb.l ], [ %.06089, %bb.m ] ; 8 uses
  %.262 = phi i1 [ %.not80, %bb.l ], [ %.090, %bb.m ] ; 8 uses
  %.1 = phi i64 [ %.064, %bb.l ], [ %i.ab, %bb.m ] ; 5 uses
  %i.ad = call i32 @assoc_mgr_find_tres_pos(ptr noundef nonnull @_set_type_tres_cnt.tres_rec, i1 noundef zeroext true) #7 ; 4 uses
  %.not81.not = icmp eq i32 %i.ad, -1             ; 2 uses
  br i1 %.not81.not, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = icmp eq i64 %.1, -3
  br i1 %i.ae, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %1, i64 %i.af
  store i64 -3, ptr %i.ag, align 8
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  br i1 %.366, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = sext i32 %i.ad to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, %.1
  store i64 %i.ak, ptr %i.ai, align 8
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  br i1 %.262, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.al = sext i32 %i.ad to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %1, i64 %i.al
  store i64 %.1, ptr %i.am, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.t, %bb.u, %bb.s, %bb.o
  %i.an = load i32, ptr %i.i, align 8             ; 2 uses
  switch i32 %i.an, label %bb.aj [
    i32 2, label %bb.w
    i32 1, label %bb.ad
  ]

bb.w:                                             ; preds = %bb.v
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not84 = icmp eq ptr %i.ar, null
  br i1 %.not84, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = load ptr, ptr %i.g, align 8
  %i.at = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.54, ptr noundef %i.as, ptr noundef nonnull %i.ar) #7
  store ptr %i.at, ptr getelementptr inbounds nuw (i8, ptr @_set_type_tres_cnt.tres_rec, i64 32), align 8
  %i.au = call i32 @assoc_mgr_find_tres_pos(ptr noundef nonnull @_set_type_tres_cnt.tres_rec, i1 noundef zeroext true) #7 ; 2 uses
  %.not86 = icmp eq i32 %i.au, -1
  br i1 %.not86, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.av
  store i64 %.1, ptr %i.aw, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_set_type_tres_cnt.tres_rec, i64 32)) #7
  br label %.loopexit

bb.aa:                                            ; preds = %bb.w
  br i1 %.not81.not, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.ax = load ptr, ptr %i.g, align 8
  store ptr %i.ax, ptr getelementptr inbounds nuw (i8, ptr @_set_type_tres_cnt.tres_rec, i64 32), align 8
  %i.ay = call i32 @assoc_mgr_find_tres_pos2(ptr noundef nonnull @_set_type_tres_cnt.tres_rec, i1 noundef zeroext true) #7 ; 2 uses
  %.not85 = icmp eq i32 %i.ay, -1
  br i1 %.not85, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %1, i64 %i.az
  store i64 %.1, ptr %i.ba, align 8
  br label %.loopexit

bb.ad:                                            ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 8            ; 2 uses
  %.not92 = icmp eq i16 %i.be, 0
  br i1 %.not92, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 168
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 144
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.ai
  %i.bh = phi i16 [ %i.be, %.lr.ph ], [ %i.bt, %bb.ai ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ai ] ; 3 uses
  %i.bi = load ptr, ptr %i.bf, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not82 = icmp eq ptr %i.bk, null
  br i1 %.not82, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bl = load ptr, ptr %i.g, align 8
  %i.bm = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.54, ptr noundef %i.bl, ptr noundef nonnull %i.bk) #7
  store ptr %i.bm, ptr getelementptr inbounds nuw (i8, ptr @_set_type_tres_cnt.tres_rec, i64 32), align 8
  %i.bn = load ptr, ptr %i.bg, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i32 @assoc_mgr_find_tres_pos(ptr noundef nonnull @_set_type_tres_cnt.tres_rec, i1 noundef zeroext true) #7 ; 2 uses
  %.not83 = icmp eq i32 %i.bq, -1
  br i1 %.not83, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %1, i64 %i.br
  store i64 %i.bp, ptr %i.bs, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_set_type_tres_cnt.tres_rec, i64 32)) #7
  %.pre = load i16, ptr %i.bd, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah
  %i.bt = phi i16 [ %i.bh, %bb.ae ], [ %.pre, %bb.ah ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = zext i16 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %bb.ae, label %.loopexit, !llvm.loop !51

bb.aj:                                            ; preds = %bb.v
  %i.bw = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__._set_type_tres_cnt, i32 noundef %i.an) #7 ; 0 uses
  br label %.loopexit, !llvm.loop !50

.loopexit:                                        ; preds = %bb.ai, %bb.ad, %bb.aa, %bb.ac, %bb.ab, %bb.z, %bb.aj, %bb.n
  %.363 = phi i1 [ %.06089, %bb.n ], [ %.366, %bb.aj ], [ %.366, %bb.aa ], [ %.366, %bb.z ], [ %.366, %bb.ab ], [ %.366, %bb.ac ], [ %.366, %bb.ad ], [ %.366, %bb.ai ]
  %.4 = phi i1 [ %.090, %bb.n ], [ %.262, %bb.aj ], [ %.262, %bb.aa ], [ %.262, %bb.z ], [ %.262, %bb.ab ], [ %.262, %bb.ac ], [ %.262, %bb.ad ], [ %.262, %bb.ai ]
  %i.bx = call ptr @list_next(ptr noundef %i.d) #7 ; 2 uses
  %.not = icmp eq ptr %i.bx, null
  br i1 %.not, label %._crit_edge, label %.lr.ph91

._crit_edge:                                      ; preds = %.loopexit, %bb.f
  call void @list_iterator_destroy(ptr noundef %i.d) #7
  call void @slurm_xfree(ptr noundef nonnull %i.a) #7
  br i1 %2, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge
  call void @assoc_mgr_unlock(ptr noundef nonnull %3) #7
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge, %bb.ak, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gres_stepmgr_set_node_tres_cnt(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_set_type_tres_cnt(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gres_stepmgr_step_alloc(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i16 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i1 noundef zeroext %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr nofree noundef captures(none) %13) local_unnamed_addr #0 {
bb.a:
  %14 = alloca %struct.slurm_step_id_t, align 8   ; 10 uses
  %15 = alloca %struct.gres_search_key, align 4   ; 7 uses
  %16 = alloca %struct.foreach_step_alloc_t, align 8 ; 18 uses
  %i.a = zext i1 %9 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.gres_stepmgr_step_alloc, ptr noundef %7) #7 ; 0 uses
  br label %bb.ad

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @list_create(ptr noundef nonnull @gres_step_list_delete) #7
  store ptr %i.f, ptr %1, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 0, ptr %10, align 8
  %i.g = load i64, ptr %7, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 448
  %i.i = load i32, ptr %i.h, align 8
  store i64 %i.g, ptr %14, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 -2, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  store i32 %8, ptr %.sroa.4.0..sroa_idx, align 8
  %i.j = tail call ptr @list_iterator_create(ptr noundef nonnull %0) #7 ; 3 uses
  %i.k = tail call ptr @list_next(ptr noundef %i.j) #7 ; 2 uses
  %.not4752 = icmp eq ptr %i.k, null
  br i1 %.not4752, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 4 uses
  %i.q = zext i16 %5 to i64
  %i.r = icmp eq i32 %6, 1
  %i.s = add i32 %6, -1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 52 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.ac
  %i.ae = phi ptr [ %i.k, %.lr.ph ], [ %i.cd, %bb.ac ] ; 6 uses
  %.04153 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.ac ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #7
  %i.ah = load i32, ptr %i.ae, align 8
  store i32 %i.ah, ptr %15, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.l, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %.not48 = icmp eq ptr %i.al, null
  br i1 %.not48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ag, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %storemerge = phi i32 [ %i.am, %bb.h ], [ -2, %bb.g ]
  store i32 %storemerge, ptr %i.m, align 4
  store i32 %3, ptr %i.n, align 4
  store ptr %12, ptr %16, align 8
  store i8 %i.a, ptr %i.o, align 8
  store i64 0, ptr %i.p, align 8
  br i1 %4, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store i64 0, ptr %i.an, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %bb.l, label %_step_get_gres_needed.exit

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %.not37.i = icmp eq i64 %i.ar, 0
  br i1 %.not37.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = mul i64 %i.ar, %i.q
  br label %_step_get_gres_needed.exit

bb.n:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.au = load i16, ptr %i.at, align 8            ; 2 uses
  %.not38.i = icmp eq i16 %i.au, 0
  br i1 %.not38.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = udiv i16 %5, %i.au
  %i.aw = zext i16 %i.av to i64
  br label %_step_get_gres_needed.exit

bb.p:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ay = load i64, ptr %i.ax, align 8            ; 6 uses
  %i.az = icmp ne i64 %i.ay, 0                    ; 2 uses
  %or.cond.i = and i1 %i.r, %i.az
  br i1 %or.cond.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = sub i64 %i.ay, %i.bb
  br label %_step_get_gres_needed.exit

bb.r:                                             ; preds = %bb.p
  br i1 %i.az, label %bb.s, label %_step_get_gres_needed.exit

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.bf = add i64 %i.be, %i.t                     ; 2 uses
  %.not39.i = icmp ult i64 %i.be, %i.ay
  br i1 %.not39.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %i.p, align 8
  br label %_step_get_gres_needed.exit

bb.u:                                             ; preds = %bb.s
  %i.bg = icmp ugt i64 %i.ay, %i.bf
  br i1 %i.bg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bh = sub nuw i64 %i.ay, %i.bf
  store i64 %i.bh, ptr %i.p, align 8
  br label %_step_get_gres_needed.exit

bb.w:                                             ; preds = %bb.u
  %i.bi = sub i64 %i.ay, %i.be
  store i64 %i.bi, ptr %i.p, align 8
  br label %_step_get_gres_needed.exit

_step_get_gres_needed.exit:                       ; preds = %bb.k, %bb.m, %bb.o, %bb.q, %bb.r, %bb.t, %bb.v, %bb.w
end_hunk_0
begin_hunk_1_@gres_stepmgr_step_test:bb.a
bb.af:                                            ; preds = %bb.b, %bb.a, %.loopexit
  %.036 = phi i64 [ %.3, %.loopexit ], [ -2, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i64 %.036
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_step_get_gres_cnt(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !11, !noundef !12
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 4 uses
  %i.j = tail call i32 @gres_find_job_by_key_with_cnt(ptr noundef %0, ptr noundef %i.b) #7
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %1, align 8
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, -3
  br i1 %i.q, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %.not54 = icmp ult i32 %i.i, %i.s
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.69, ptr noundef %i.u, ptr noundef nonnull @__func__._step_get_gres_cnt, ptr noundef %i.g, i32 noundef %i.i, i32 noundef %i.s) #7 ; 0 uses
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.b, align 4
  %i.x = tail call zeroext i1 @gres_id_shared(i32 noundef %i.w) #7
  br i1 %i.x, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not55 = icmp eq ptr %i.z, null
  br i1 %.not55, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = sext i32 %i.i to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not56 = icmp eq ptr %i.ac, null
  br i1 %.not56, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call i32 @bit_set_count(ptr noundef nonnull %i.ac) #7
  %i.ae = sext i32 %i.ad to i64
  %i.af = load i64, ptr %1, align 8
  %i.ag = add i64 %i.af, %i.ae
  store i64 %i.ag, ptr %1, align 8
  br i1 %i.e, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not57 = icmp eq ptr %i.ai, null
  br i1 %.not57, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aa
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not58 = icmp eq ptr %i.ak, null
  br i1 %.not58, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = tail call i32 @bit_set_count(ptr noundef nonnull %i.ak) #7
  %i.am = sext i32 %i.al to i64
  %i.an = load i64, ptr %1, align 8
  %i.ao = sub i64 %i.an, %i.am
  br label %.sink.split

bb.n:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not59 = icmp eq ptr %i.aq, null
  br i1 %.not59, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 176 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %.not60 = icmp eq ptr %i.as, null
  br i1 %.not60, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = sext i32 %i.i to i64                    ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = load i64, ptr %1, align 8
  %i.ax = add i64 %i.aw, %i.av                    ; 2 uses
  store i64 %i.ax, ptr %1, align 8
  br i1 %i.e, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %i.ar, align 8
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.at
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = sub i64 %i.ax, %i.ba
  br label %.sink.split

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.bc = tail call i32 @get_log_level() #7
  %i.bd = icmp sgt i32 %i.bc, 6
  br i1 %i.bd, label %bb.s, label %.sink.split

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.70, ptr noundef %i.bf, ptr noundef %i.bh, ptr noundef nonnull @__func__._step_get_gres_cnt, ptr noundef %i.g) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.s, %bb.d, %bb.f, %bb.q, %bb.m
  %.sink = phi i64 [ %i.ao, %bb.m ], [ %i.bb, %bb.q ], [ -3, %bb.d ], [ 0, %bb.f ], [ -2, %bb.s ], [ -2, %bb.r ]
  %.0.ph = phi i32 [ 0, %bb.m ], [ 0, %bb.q ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.s ], [ -1, %bb.r ]
  store i64 %.sink, ptr %1, align 8
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.l, %bb.k, %bb.j, %bb.p, %bb.a
  %.0 = phi i32 [ 0, %bb.p ], [ 0, %bb.j ], [ 0, %bb.a ], [ 0, %bb.k ], [ 0, %bb.l ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gres_stepmgr_gres_2_tres_str(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.assoc_mgr_lock_t, align 4   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) @__const._set_type_tres_cnt.locks, i64 28, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @assoc_mgr_lock(ptr noundef nonnull %2) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = call ptr @list_iterator_create(ptr noundef nonnull %0) #7 ; 3 uses
  %i.c = call ptr @list_next(ptr noundef %i.b) #7 ; 2 uses
  %.not2223 = icmp eq ptr %i.c, null
  br i1 %.not2223, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.backedge
  %i.d = phi ptr [ %i.h, %.backedge ], [ %i.c, %bb.d ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  switch i32 %i.f, label %bb.f [
    i32 2, label %bb.g
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.g = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.gres_stepmgr_gres_2_tres_str, i32 noundef %i.f) #7 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.g
  %i.h = call ptr @list_next(ptr noundef %i.b) #7 ; 2 uses
  %.not22 = icmp eq ptr %i.h, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph, !llvm.loop !59

bb.g:                                             ; preds = %.lr.ph, %bb.e
  %.sink27 = phi i64 [ 72, %bb.e ], [ 128, %.lr.ph ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink27
  %.018.in = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.018 = load ptr, ptr %.018.in, align 8
  %.019 = load i64, ptr %i.k, align 8             ; 2 uses
  %i.l = icmp eq i64 %.019, -3
  %spec.store.select = select i1 %i.l, i64 0, i64 %.019
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call fastcc void @_gres_2_tres_str_internal(ptr noundef %i.a, ptr noundef %i.n, ptr noundef %.018, i64 noundef %spec.store.select)
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %bb.d
  call void @list_iterator_destroy(ptr noundef %i.b) #7
  br i1 %1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call void @assoc_mgr_unlock(ptr noundef nonnull %2) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.o = load ptr, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.0 = phi ptr [ %i.o, %bb.i ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @gres_stepmgr_step_test_per_step(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.foreach_gres_cnt_t, align 8 ; 11 uses
  %5 = alloca %struct.slurm_step_id_t, align 8    ; 8 uses
  %6 = alloca %struct.gres_search_key, align 4    ; 7 uses
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.g = load i64, ptr %1, align 8
  store i64 %i.g, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.j = load i32, ptr %i.i, align 8
  store i32 %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 -2, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 -2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.m, align 4
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not50 = icmp eq ptr %i.o, null
  br i1 %.not50, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @gres_init() #7            ; 0 uses
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = tail call i64 @bit_fls(ptr noundef %i.f) #7
  %i.u = trunc i64 %i.t to i32
  %i.v = add i32 %i.u, 1                          ; 4 uses
  %.not51 = icmp slt i32 %i.s, %i.v
  %spec.store.select = select i1 %.not51, i32 %i.s, i32 0
  %spec.store.select.fr = freeze i32 %spec.store.select ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr %5, ptr %i.w, align 8
  %i.x = call ptr @list_iterator_create(ptr noundef nonnull %0) #7 ; 3 uses
  %i.y = call ptr @list_next(ptr noundef %i.x) #7 ; 2 uses
  %.not52311 = icmp eq ptr %i.y, null
  br i1 %.not52311, label %._crit_edge315, label %.lr.ph314

.lr.ph314:                                        ; preds = %bb.c
  %i.z = add nsw i32 %3, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 3 uses
  %.not.i = icmp eq i32 %i.v, 0
  %.not28.i = icmp eq i32 %spec.store.select.fr, 0
  %i.ae = sext i32 %spec.store.select.fr to i64   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph314, %bb.ah
  %i.ag = phi ptr [ %i.y, %.lr.ph314 ], [ %i.ek, %bb.ah ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %.not53 = icmp eq i64 %i.ak, 0
  br i1 %.not53, label %bb.ah, label %bb.e, !llvm.loop !60

bb.e:                                             ; preds = %bb.d
  %i.al = trunc i64 %i.ak to i32                  ; 3 uses
  %i.am = add nsw i32 %i.z, %i.al
  %i.an = sdiv i32 %i.am, %3                      ; 3 uses
  %i.ao = load i32, ptr %i.ag, align 8
  store i32 %i.ao, ptr %6, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aq = load i32, ptr %i.ap, align 4
  store i32 %i.aq, ptr %i.aa, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %.not54 = icmp eq ptr %i.as, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = load i32, ptr %i.ai, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %storemerge = phi i32 [ %i.at, %bb.f ], [ -2, %bb.e ]
  store i32 %storemerge, ptr %i.ab, align 4
  store ptr %6, ptr %i.ac, align 8
  %i.au = call i64 @bit_size(ptr noundef %2) #7
  %i.av = call ptr @bit_alloc(i64 noundef %i.au) #7
  store ptr %i.av, ptr %i.b, align 8
  %i.aw = load i32, ptr %i.ad, align 8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = call ptr @slurm_xcalloc(i64 noundef %i.ax, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 3471, ptr noundef nonnull @__func__.gres_stepmgr_step_test_per_step) #7
  store ptr %i.ay, ptr %i.a, align 8
  %i.az = load i32, ptr %i.ad, align 8
  %.not317 = icmp eq i32 %i.az, 0
  br i1 %.not317, label %.preheader82, label %.lr.ph

.preheader82:                                     ; preds = %.lr.ph, %bb.g
  %i.ba = icmp slt i32 %i.an, 0
  %brmerge = select i1 %i.ba, i1 true, i1 %.not.i
  br i1 %brmerge, label %._crit_edge, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader82
  br i1 %.not28.i, label %.preheader.us297, label %.preheader

.preheader.us297:                                 ; preds = %.preheader.lr.ph.split, %_gres_next_node_inx.exit.thread.us301
  %.043293.us299 = phi i32 [ %.0.ph239.us.us, %_gres_next_node_inx.exit.thread.us301 ], [ %i.an, %.preheader.lr.ph.split ]
  %.175292.us300 = phi i32 [ %.144.ph237.us.us, %_gres_next_node_inx.exit.thread.us301 ], [ %i.al, %.preheader.lr.ph.split ]
  br label %.lr.ph89.us.us

_gres_next_node_inx.exit.thread.us301:            ; preds = %bb.q, %bb.p, %bb.o
  %i.bb = icmp sgt i32 %.0.ph239.us.us, -1
  br i1 %i.bb, label %.preheader.us297, label %._crit_edge, !llvm.loop !61

.lr.ph89.us.us:                                   ; preds = %.lr.ph89.us.us.backedge, %.preheader.us297
  %.0.ph239.us.us = phi i32 [ -1, %.preheader.us297 ], [ %.1.us.us, %.lr.ph89.us.us.backedge ] ; 4 uses
  %.144.ph237.us.us = phi i32 [ %.175292.us300, %.preheader.us297 ], [ %.245.us.us, %.lr.ph89.us.us.backedge ] ; 3 uses
  %.070.ph236.us.us = phi i32 [ -1, %.preheader.us297 ], [ %i.ce, %.lr.ph89.us.us.backedge ]
  %.276.ph235.us.us = phi i32 [ undef, %.preheader.us297 ], [ %.4.us.us247.us, %.lr.ph89.us.us.backedge ]
  br label %bb.n

bb.h:                                             ; preds = %.split.us.us.us
  store i32 %i.ce, ptr %i.af, align 4
  store i64 -1, ptr %4, align 8
  %i.bc = load ptr, ptr %i.n, align 8
  %i.bd = call i32 @list_for_each(ptr noundef %i.bc, ptr noundef nonnull @_step_get_gres_cnt, ptr noundef nonnull %4) #7 ; 0 uses
  %i.be = load i64, ptr %4, align 8
  %i.bf = trunc i64 %i.be to i32
  %i.bg = load ptr, ptr %i.a, align 8
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.ck
  store i32 %i.bf, ptr %i.bh, align 4
  %.pre331 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert332 = getelementptr inbounds [4 x i8], ptr %.pre331, i64 %i.ck
  %.pre333 = load i32, ptr %.phi.trans.insert332, align 4
  br label %bb.i

bb.i:                                             ; preds = %.split.us.us.us, %bb.h
  %i.bi = phi i32 [ %i.cm, %.split.us.us.us ], [ %.pre333, %bb.h ] ; 2 uses
  %.not58.us.us = icmp slt i32 %i.bi, %.043293.us299
  br i1 %.not58.us.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.b, align 8
  call void @bit_set(ptr noundef %i.bj, i64 noundef %i.cf) #7
  %i.bk = load ptr, ptr %i.a, align 8
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.ck
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = sub nsw i32 %.144.ph237.us.us, %i.bm
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %spec.select.us.us = call i32 @llvm.smax.i32(i32 %i.bi, i32 %.0.ph239.us.us)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.245.us.us = phi i32 [ %i.bn, %bb.j ], [ %.144.ph237.us.us, %bb.k ] ; 2 uses
  %.1.us.us = phi i32 [ %.0.ph239.us.us, %bb.j ], [ %spec.select.us.us, %bb.k ]
  %i.bo = icmp slt i32 %.245.us.us, 1
  br i1 %i.bo, label %bb.m, label %.lr.ph89.us.us.backedge

bb.m:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr %i.b, align 8
  %i.bq = call i32 @bit_set_count(ptr noundef %i.bp) #7
  %.not59.us.us = icmp slt i32 %i.bq, %3
  br i1 %.not59.us.us, label %.lr.ph89.us.us.backedge, label %._crit_edge.sink.split

.lr.ph89.us.us.backedge:                          ; preds = %bb.m, %bb.l
  br label %.lr.ph89.us.us, !llvm.loop !62

bb.n:                                             ; preds = %.backedge, %.lr.ph89.us.us
  %.07088.us.us.us = phi i32 [ %.070.ph236.us.us, %.lr.ph89.us.us ], [ %i.ce, %.backedge ] ; 2 uses
  %.27687.us.us.us = phi i32 [ %.276.ph235.us.us, %.lr.ph89.us.us ], [ %.4.us.us247.us, %.backedge ]
  %.pn.pn320 = load ptr, ptr %i.c, align 8
  %.in319 = getelementptr inbounds nuw i8, ptr %.pn.pn320, i64 92
  %i.br = load i32, ptr %.in319, align 4
  %i.bs = icmp eq i32 %.07088.us.us.us, -1
  br i1 %i.bs, label %.critedge.i.us.us246.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = add nsw i32 %.27687.us.us.us, 1
  %i.bu = srem i32 %i.bt, %i.v                    ; 3 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_gres_next_node_inx.exit.thread.us301, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = icmp sgt i32 %i.bu, 0
  %i.bx = sext i32 %i.bu to i64
  %i.by = call i64 @bit_ffs_from_bit(ptr noundef %i.f, i64 noundef %i.bx) #7
  %i.bz = trunc i64 %i.by to i32                  ; 2 uses
  %.not29.i.us.us244.us = icmp slt i32 %i.bz, 0
  %or.cond.i.us.us245.us = select i1 %i.bw, i1 true, i1 %.not29.i.us.us244.us
  br i1 %or.cond.i.us.us245.us, label %bb.q, label %_gres_next_node_inx.exit.thread.us301

.critedge.i.us.us246.us:                          ; preds = %bb.n
  %i.ca = call i64 @bit_ffs_from_bit(ptr noundef %i.f, i64 noundef %i.ae) #7
  %i.cb = trunc i64 %i.ca to i32
  br label %bb.q

bb.q:                                             ; preds = %.critedge.i.us.us246.us, %bb.p
  %.4.us.us247.us = phi i32 [ %i.cb, %.critedge.i.us.us246.us ], [ %i.bz, %bb.p ] ; 4 uses
  %i.cc = icmp slt i32 %.4.us.us247.us, 0
  br i1 %i.cc, label %_gres_next_node_inx.exit.thread.us301, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = add nsw i32 %.07088.us.us.us, 1
  %i.ce = srem i32 %i.cd, %i.br                   ; 4 uses
  %i.cf = zext nneg i32 %.4.us.us247.us to i64    ; 3 uses
  %i.cg = call i32 @slurm_bit_test(ptr noundef %2, i64 noundef %i.cf) #7
  %.not56.us.us249.us = icmp eq i32 %i.cg, 0
  br i1 %.not56.us.us249.us, label %.backedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = load ptr, ptr %i.b, align 8
  %i.ci = call i32 @slurm_bit_test(ptr noundef %i.ch, i64 noundef %i.cf) #7
  %.not57.us.us250.us = icmp eq i32 %i.ci, 0
  br i1 %.not57.us.us250.us, label %.split.us.us.us, label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.r
  br label %bb.n

.split.us.us.us:                                  ; preds = %bb.s
  %i.cj = load ptr, ptr %i.a, align 8
  %i.ck = sext i32 %i.ce to i64                   ; 4 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4            ; 2 uses
  %i.cn = icmp eq i32 %i.cm, -2
  br i1 %i.cn, label %bb.h, label %bb.i

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.g ] ; 2 uses
  %i.co = load ptr, ptr %i.a, align 8
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv
  store i32 -2, ptr %i.cp, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cq = load i32, ptr %i.ad, align 8
  %i.cr = zext i32 %i.cq to i64
  %i.cs = icmp samesign ult i64 %indvars.iv.next, %i.cr
  br i1 %i.cs, label %.lr.ph, label %.preheader82, !llvm.loop !63

.preheader:                                       ; preds = %.preheader.lr.ph.split, %_gres_next_node_inx.exit.thread
  %.043293 = phi i32 [ %.0.ph239, %_gres_next_node_inx.exit.thread ], [ %i.an, %.preheader.lr.ph.split ]
  %.175292 = phi i32 [ %.144.ph237, %_gres_next_node_inx.exit.thread ], [ %i.al, %.preheader.lr.ph.split ]
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89.backedge, %.preheader
  %.0.ph239 = phi i32 [ -1, %.preheader ], [ %.1, %.lr.ph89.backedge ] ; 4 uses
  %.144.ph237 = phi i32 [ %.175292, %.preheader ], [ %.245, %.lr.ph89.backedge ] ; 3 uses
  %.070.ph236 = phi i32 [ -1, %.preheader ], [ %i.di, %.lr.ph89.backedge ]
  %.276.ph235 = phi i32 [ undef, %.preheader ], [ %.4, %.lr.ph89.backedge ]
  br label %bb.t

bb.t:                                             ; preds = %.backedge372, %.lr.ph89
  %.07088 = phi i32 [ %.070.ph236, %.lr.ph89 ], [ %i.di, %.backedge372 ] ; 2 uses
  %.27687 = phi i32 [ %.276.ph235, %.lr.ph89 ], [ %.4, %.backedge372 ]
  %.pn.pn = load ptr, ptr %i.c, align 8
  %.in318 = getelementptr inbounds nuw i8, ptr %.pn.pn, i64 92
  %i.ct = load i32, ptr %.in318, align 4
  %i.cu = icmp eq i32 %.07088, -1
  br i1 %i.cu, label %.critedge.i, label %bb.u

.critedge.i:                                      ; preds = %bb.t
  %i.cv = call i32 @bit_set_count_range(ptr noundef %i.f, i32 noundef 0, i32 noundef %spec.store.select.fr) #7
  %i.cw = add nsw i32 %i.cv, -1
  %i.cx = call i64 @bit_ffs_from_bit(ptr noundef %i.f, i64 noundef %i.ae) #7
  %i.cy = trunc i64 %i.cx to i32
  br label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cz = add nsw i32 %.27687, 1
  %i.da = srem i32 %i.cz, %i.v                    ; 3 uses
  %i.db = icmp eq i32 %i.da, %spec.store.select.fr
  br i1 %i.db, label %_gres_next_node_inx.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = icmp sgt i32 %i.da, %spec.store.select.fr
  %i.dd = sext i32 %i.da to i64
  %i.de = call i64 @bit_ffs_from_bit(ptr noundef %i.f, i64 noundef %i.dd) #7
  %i.df = trunc i64 %i.de to i32                  ; 2 uses
  %.not29.i = icmp sgt i32 %spec.store.select.fr, %i.df
  %or.cond.i = select i1 %i.dc, i1 true, i1 %.not29.i
  br i1 %or.cond.i, label %bb.w, label %_gres_next_node_inx.exit.thread

bb.w:                                             ; preds = %bb.v, %.critedge.i
  %.4 = phi i32 [ %i.cy, %.critedge.i ], [ %i.df, %bb.v ] ; 4 uses
  %.171 = phi i32 [ %i.cw, %.critedge.i ], [ %.07088, %bb.v ]
  %i.dg = icmp slt i32 %.4, 0
  br i1 %i.dg, label %_gres_next_node_inx.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = add nsw i32 %.171, 1
  %i.di = srem i32 %i.dh, %i.ct                   ; 4 uses
  %i.dj = zext nneg i32 %.4 to i64                ; 3 uses
  %i.dk = call i32 @slurm_bit_test(ptr noundef %2, i64 noundef %i.dj) #7
  %.not56 = icmp eq i32 %i.dk, 0
  br i1 %.not56, label %.backedge372, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = load ptr, ptr %i.b, align 8
  %i.dm = call i32 @slurm_bit_test(ptr noundef %i.dl, i64 noundef %i.dj) #7
  %.not57 = icmp eq i32 %i.dm, 0
  br i1 %.not57, label %.split, label %.backedge372

.backedge372:                                     ; preds = %bb.y, %bb.x
  br label %bb.t

.split:                                           ; preds = %bb.y
  %i.dn = load ptr, ptr %i.a, align 8
  %i.do = sext i32 %i.di to i64                   ; 4 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dr = icmp eq i32 %i.dq, -2
  br i1 %i.dr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.split
  store i32 %i.di, ptr %i.af, align 4
  store i64 -1, ptr %4, align 8
  %i.ds = load ptr, ptr %i.n, align 8
  %i.dt = call i32 @list_for_each(ptr noundef %i.ds, ptr noundef nonnull @_step_get_gres_cnt, ptr noundef nonnull %4) #7 ; 0 uses
  %i.du = load i64, ptr %4, align 8
  %i.dv = trunc i64 %i.du to i32
  %i.dw = load ptr, ptr %i.a, align 8
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.do
  store i32 %i.dv, ptr %i.dx, align 4
  %.pre = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.do
  %.pre330 = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.split
  %i.dy = phi i32 [ %.pre330, %bb.z ], [ %i.dq, %.split ] ; 2 uses
  %.not58 = icmp slt i32 %i.dy, %.043293
  br i1 %.not58, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = load ptr, ptr %i.b, align 8
  call void @bit_set(ptr noundef %i.dz, i64 noundef %i.dj) #7
  %i.ea = load ptr, ptr %i.a, align 8
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.do
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = sub nsw i32 %.144.ph237, %i.ec
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %spec.select = call i32 @llvm.smax.i32(i32 %i.dy, i32 %.0.ph239)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.245 = phi i32 [ %i.ed, %bb.ab ], [ %.144.ph237, %bb.ac ] ; 2 uses
  %.1 = phi i32 [ %.0.ph239, %bb.ab ], [ %spec.select, %bb.ac ]
  %i.ee = icmp slt i32 %.245, 1
  br i1 %i.ee, label %bb.ae, label %.lr.ph89.backedge

bb.ae:                                            ; preds = %bb.ad
  %i.ef = load ptr, ptr %i.b, align 8
  %i.eg = call i32 @bit_set_count(ptr noundef %i.ef) #7
  %.not59 = icmp slt i32 %i.eg, %3
  br i1 %.not59, label %.lr.ph89.backedge, label %._crit_edge.sink.split

.lr.ph89.backedge:                                ; preds = %bb.ae, %bb.ad
  br label %.lr.ph89, !llvm.loop !62

_gres_next_node_inx.exit.thread:                  ; preds = %bb.u, %bb.v, %bb.w
  %i.eh = icmp sgt i32 %.0.ph239, -1
  br i1 %i.eh, label %.preheader, label %._crit_edge, !llvm.loop !61

._crit_edge.sink.split:                           ; preds = %bb.ae, %bb.m
  %i.ei = load ptr, ptr %i.b, align 8
  call void @bit_and(ptr noundef %2, ptr noundef %i.ei) #7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_gres_next_node_inx.exit.thread, %_gres_next_node_inx.exit.thread.us301, %._crit_edge.sink.split, %.preheader82
  %i.ej = load ptr, ptr %i.b, align 8
  %.not55 = icmp eq ptr %i.ej, null
  br i1 %.not55, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge
  store ptr null, ptr %i.b, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.a) #7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.d, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  %i.ek = call ptr @list_next(ptr noundef %i.x) #7 ; 2 uses
  %.not52 = icmp eq ptr %i.ek, null
  br i1 %.not52, label %._crit_edge315, label %bb.d

._crit_edge315:                                   ; preds = %bb.ah, %bb.c
  call void @list_iterator_destroy(ptr noundef %i.x) #7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.b, %bb.a, %._crit_edge315
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret void
}

declare i64 @bit_size(ptr noundef) local_unnamed_addr #2

declare void @bit_and(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gres_find_job_by_key(ptr noundef, ptr noundef) #2

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @gres_use_busy_dev(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @bit_copy(ptr noundef) local_unnamed_addr #2

declare ptr @slurm_bit_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @bit_overlap_any(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bit_and_not(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_allocate_gres_bits(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6, i1 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  %i.b = icmp ne ptr %6, null                     ; 3 uses
  %or.cond = and i1 %i.b, %7
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @bit_size(ptr noundef nonnull %6) #7
  %i.d = tail call ptr @bit_alloc(i64 noundef %i.c) #7 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.f = icmp sgt i64 %2, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.i = sext i32 %4 to i64                       ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  br i1 %5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.b, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.g
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %bb.g ], [ 0, %.lr.ph.split.us ] ; 7 uses
  %i.m = load i64, ptr %3, align 8
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph.split.us.split.us
  %i.o = load ptr, ptr %i.g, align 8
  %i.p = tail call i32 @slurm_bit_test(ptr noundef %i.o, i64 noundef %indvars.iv52) #7
  %.not34.us.us = icmp eq i32 %i.p, 0
  br i1 %.not34.us.us, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = trunc nuw nsw i64 %indvars.iv52 to i32
  %i.r = tail call fastcc zeroext i1 @_cores_on_gres(ptr noundef nonnull %6, ptr noundef %i.e, ptr noundef nonnull %0, i32 noundef %i.q, ptr noundef %1)
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.g, align 8
  tail call void @bit_set(ptr noundef %i.s, i64 noundef %indvars.iv52) #7
  %i.t = load ptr, ptr %i.h, align 8
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.i
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @bit_set(ptr noundef %i.v, i64 noundef %indvars.iv52) #7
  %i.w = load ptr, ptr %i.k, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv52
  %i.y = load i64, ptr %i.x, align 8
  %sext.us.us = shl i64 %i.y, 32
  %i.z = ashr exact i64 %sext.us.us, 32           ; 3 uses
  %i.aa = load ptr, ptr %i.l, align 8
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.i
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv52
  store i64 %i.z, ptr %i.ad, align 8
  %i.ae = load i64, ptr %i.j, align 8
  %i.af = add i64 %i.ae, %i.z
  store i64 %i.af, ptr %i.j, align 8
  %i.ag = load i64, ptr %3, align 8
  %i.ah = sub nsw i64 %i.ag, %i.z
  store i64 %i.ah, ptr %3, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next53, %2
  br i1 %exitcond55.not, label %.critedge, label %.lr.ph.split.us.split.us, !llvm.loop !64

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.j
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %bb.j ], [ 0, %.lr.ph.split.us ] ; 6 uses
  %i.ai = load i64, ptr %3, align 8
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph.split.us.split
  %i.ak = load ptr, ptr %i.g, align 8
  %i.al = tail call i32 @slurm_bit_test(ptr noundef %i.ak, i64 noundef %indvars.iv48) #7
  %.not34.us = icmp eq i32 %i.al, 0
  br i1 %.not34.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.g, align 8
  tail call void @bit_set(ptr noundef %i.am, i64 noundef %indvars.iv48) #7
  %i.an = load ptr, ptr %i.h, align 8
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.i
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @bit_set(ptr noundef %i.ap, i64 noundef %indvars.iv48) #7
  %i.aq = load ptr, ptr %i.k, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv48
  %i.as = load i64, ptr %i.ar, align 8
  %sext.us = shl i64 %i.as, 32
  %i.at = ashr exact i64 %sext.us, 32             ; 3 uses
  %i.au = load ptr, ptr %i.l, align 8
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.i
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv48
  store i64 %i.at, ptr %i.ax, align 8
  %i.ay = load i64, ptr %i.j, align 8
  %i.az = add i64 %i.ay, %i.at
  store i64 %i.az, ptr %i.j, align 8
  %i.ba = load i64, ptr %3, align 8
  %i.bb = sub nsw i64 %i.ba, %i.at
  store i64 %i.bb, ptr %3, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next49, %2
  br i1 %exitcond51.not, label %.critedge, label %.lr.ph.split.us.split, !llvm.loop !64

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.b, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.n
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.n ], [ 0, %.lr.ph.split ] ; 5 uses
  %i.bc = load i64, ptr %3, align 8
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph.split.split.us
  %i.be = load ptr, ptr %i.g, align 8
  %i.bf = tail call i32 @slurm_bit_test(ptr noundef %i.be, i64 noundef %indvars.iv44) #7
  %.not34.us39 = icmp eq i32 %i.bf, 0
  br i1 %.not34.us39, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bg = trunc nuw nsw i64 %indvars.iv44 to i32
  %i.bh = tail call fastcc zeroext i1 @_cores_on_gres(ptr noundef nonnull %6, ptr noundef %i.e, ptr noundef nonnull %0, i32 noundef %i.bg, ptr noundef %1)
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.g, align 8
  tail call void @bit_set(ptr noundef %i.bi, i64 noundef %indvars.iv44) #7
  %i.bj = load ptr, ptr %i.h, align 8
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.i
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void @bit_set(ptr noundef %i.bl, i64 noundef %indvars.iv44) #7
  %i.bm = load i64, ptr %i.j, align 8
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.j, align 8
  %i.bo = load i64, ptr %3, align 8
  %i.bp = add nsw i64 %i.bo, -1
  store i64 %i.bp, ptr %3, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next45, %2
  br i1 %exitcond47.not, label %.critedge, label %.lr.ph.split.split.us, !llvm.loop !64

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.bq = load i64, ptr %3, align 8
end_hunk_1
