Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/emap?download=true
inline.NumInlined: 59
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@emap_try_acquire_edata_neighbor_impl:tsdn_witness_tsdp_get.exit
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !22
  %i.an = lshr i64 %i.r, 12
  %i.ao = and i64 %i.an, 262143
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ao
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i30, i64 288 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.as = icmp eq i64 %i.ar, %i.u
  br i1 %i.as, label %bb.i, label %.preheader.2, !prof !21

.preheader.2:                                     ; preds = %.preheader.1
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i30, i64 304 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !18
  %i.av = icmp eq i64 %i.au, %i.u
  br i1 %i.av, label %bb.i, label %.preheader.3, !prof !21

.preheader.3:                                     ; preds = %.preheader.2
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i30, i64 320 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !18
  %i.ay = icmp eq i64 %i.ax, %i.u
  br i1 %i.ay, label %bb.i, label %.preheader.4, !prof !21

.preheader.4:                                     ; preds = %.preheader.3
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i30, i64 336 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !18
  %i.bb = icmp eq i64 %i.ba, %i.u
  br i1 %i.bb, label %bb.i, label %.preheader.5, !prof !21

.preheader.5:                                     ; preds = %.preheader.4
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i30, i64 352 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !18
  %i.be = icmp eq i64 %i.bd, %i.u
  br i1 %i.be, label %bb.i, label %.preheader.6, !prof !21

.preheader.6:                                     ; preds = %.preheader.5
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i30, i64 368 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !18
  %i.bh = icmp eq i64 %i.bg, %i.u
  br i1 %i.bh, label %bb.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %.preheader.6
  %i.bi = call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i30, i64 noundef %i.r, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %rtree_leaf_elm_lookup.exit

bb.i:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.ag, %.preheader.preheader ], [ %i.aq, %.preheader.1 ], [ %i.at, %.preheader.2 ], [ %i.aw, %.preheader.3 ], [ %i.az, %.preheader.4 ], [ %i.bc, %.preheader.5 ], [ %i.bf, %.preheader.6 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !22 ; 2 uses
  %i.bl = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !18
  store i64 %i.bm, ptr %.lcssa, align 8, !tbaa !18
  %i.bn = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !22
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !22
  store i64 %i.w, ptr %i.bl, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !22
  store i64 %i.u, ptr %i.v, align 8, !tbaa !18
  store ptr %i.bk, ptr %i.bp, align 8, !tbaa !22
  %i.br = lshr i64 %i.r, 12
  %i.bs = and i64 %i.br, 262143
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bs
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.i, %bb.e, %bb.g, %bb.h
  %.1.i = phi ptr [ %i.ac, %bb.e ], [ %i.ap, %bb.g ], [ %i.bi, %bb.h ], [ %i.bt, %bb.i ] ; 2 uses
  %i.bu = icmp eq ptr %.1.i, null
  br i1 %i.bu, label %extent_can_acquire_neighbor.exit.thread, label %bb.j

bb.j:                                             ; preds = %rtree_leaf_elm_lookup.exit
  %i.bv = load atomic ptr, ptr %.1.i acquire, align 8, !noalias !25
  %i.bw = ptrtoint ptr %i.bv to i64               ; 3 uses
  %i.bx = trunc i64 %i.bw to i32
  %i.by = lshr i32 %i.bx, 2
  %i.bz = and i32 %i.by, 7                        ; 2 uses
  %i.ca = shl i64 %i.bw, 16
  %i.cb = ashr exact i64 %i.ca, 16
  %i.cc = and i64 %i.cb, -128                     ; 2 uses
  %i.cd = inttoptr i64 %i.cc to ptr               ; 4 uses
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %extent_can_acquire_neighbor.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val35 = load i64, ptr %2, align 8, !tbaa !12  ; 3 uses
  br i1 %5, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cf = and i64 %i.bw, 2
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %extent_neighbor_head_state_mergeable.exit, label %extent_can_acquire_neighbor.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.cg = and i64 %.val35, 17592186044416
  %.not49 = icmp eq i64 %i.cg, 0
  br i1 %.not49, label %extent_neighbor_head_state_mergeable.exit, label %extent_can_acquire_neighbor.exit.thread

extent_neighbor_head_state_mergeable.exit:        ; preds = %bb.m, %bb.l
  %i.ch = icmp eq i32 %3, 0
  br i1 %i.ch, label %bb.n, label %bb.q

bb.n:                                             ; preds = %extent_neighbor_head_state_mergeable.exit
  %.not.i = icmp eq i32 %i.bz, %4
  br i1 %.not.i, label %bb.o, label %extent_can_acquire_neighbor.exit.thread

bb.o:                                             ; preds = %bb.n
  %.val38.pre54 = load i64, ptr %i.cd, align 128, !tbaa !12 ; 3 uses
  br i1 %6, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = xor i64 %.val38.pre54, %.val35
  %i.cj = and i64 %i.ci, 8192
  %.not50 = icmp eq i64 %i.cj, 0
  br i1 %.not50, label %bb.r, label %extent_can_acquire_neighbor.exit.thread

bb.q:                                             ; preds = %extent_neighbor_head_state_mergeable.exit
  %i.ck = icmp eq i32 %i.bz, 0
  br i1 %i.ck, label %extent_can_acquire_neighbor.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q
  %.val38.pre = load i64, ptr %i.cd, align 128, !tbaa !12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.p, %bb.o
  %.val38 = phi i64 [ %.val38.pre, %._crit_edge ], [ %.val38.pre54, %bb.p ], [ %.val38.pre54, %bb.o ] ; 2 uses
  %i.cl = trunc i64 %.val38 to i32
  %i.cm = lshr i32 %i.cl, 14
  %i.cn = and i32 %i.cm, 1
  %.not17.i = icmp eq i32 %i.cn, %3
  br i1 %.not17.i, label %bb.s, label %extent_can_acquire_neighbor.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.co = load i8, ptr @je_opt_retain, align 1, !tbaa !28, !range !30, !noundef !31
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = xor i64 %.val38, %.val35
  %i.cr = and i64 %i.cq, 4095
  %.not18.i = icmp eq i64 %i.cr, 0
  br i1 %.not18.i, label %bb.u, label %extent_can_acquire_neighbor.exit.thread

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.cd, i32 noundef 5)
  br label %extent_can_acquire_neighbor.exit.thread

extent_can_acquire_neighbor.exit.thread:          ; preds = %bb.u, %bb.j, %bb.p, %bb.q, %bb.r, %bb.n, %bb.t, %bb.l, %bb.m, %rtree_leaf_elm_lookup.exit
  %.1 = phi ptr [ null, %rtree_leaf_elm_lookup.exit ], [ %i.cd, %bb.u ], [ null, %bb.j ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.n ], [ null, %bb.t ], [ null, %bb.l ], [ null, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %extent_can_acquire_neighbor.exit.thread
  %.2 = phi ptr [ %.1, %extent_can_acquire_neighbor.exit.thread ], [ null, %bb.a ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_emap_try_acquire_edata_neighbor_expand(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @emap_try_acquire_edata_neighbor_impl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext true, i1 noundef zeroext true)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @je_emap_release_edata(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_emap_register_boundary(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %5) #6
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %5, %bb.b ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.e = call fastcc zeroext i1 @emap_rtree_leaf_elms_lookup(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  br i1 %i.e, label %emap_rtree_write_acquired.exit, label %bb.d

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %6 = ptrtoint ptr %2 to i64
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i = load i64, ptr %2, align 8, !tbaa !12  ; 2 uses
  %sh.diff.i = lshr i64 %.val.i, 43
  %i.i = and i64 %sh.diff.i, 2
  %i.j = lshr i64 %.val.i, 15
  %i.k = and i64 %i.j, 28
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %.sroa.7.0.i = phi i64 [ %i.i, %bb.e ], [ 0, %bb.d ]
  %i.l = phi i64 [ %i.k, %bb.e ], [ 0, %bb.d ]
  %i.m = and i64 %6, 281474976710655
  %i.n = zext i32 %3 to i64
  %i.o = shl i64 %i.n, 48
  %i.p = zext i1 %4 to i64
  %i.q = or disjoint i64 %i.l, %i.o
  %i.r = or disjoint i64 %i.q, %.sroa.7.0.i
  %i.s = or disjoint i64 %i.r, %i.p
  %i.t = or i64 %i.s, %i.m
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  store atomic ptr %i.u, ptr %i.f release, align 8
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %emap_rtree_write_acquired.exit, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  store atomic ptr %i.u, ptr %i.g release, align 8
  br label %emap_rtree_write_acquired.exit

emap_rtree_write_acquired.exit:                   ; preds = %bb.f, %.critedge.i, %tsdn_rtree_ctx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @emap_rtree_leaf_elms_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %6, ptr nofree noundef writeonly captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.b = ptrtoint ptr %.val to i64
  %i.c = and i64 %i.b, 4095
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %.val, i64 %i.d
  %i.f = ptrtoint ptr %i.e to i64                 ; 6 uses
  %i.g = lshr i64 %i.f, 30
  %i.h = and i64 %i.g, 15
  %i.i = and i64 %i.f, -1073741824                ; 11 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.h ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18   ; 3 uses
  %i.l = icmp eq i64 %i.k, %i.i
  br i1 %i.l, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = lshr i64 %i.f, 12
  %i.p = and i64 %i.o, 262143
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  br label %rtree_leaf_elm_lookup.exit23

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !18
  %i.t = icmp eq i64 %i.s, %i.i
  br i1 %i.t, label %bb.d, label %.preheader30.preheader, !prof !21

.preheader30.preheader:                           ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !18
  %i.w = icmp eq i64 %i.v, %i.i
  br i1 %i.w, label %bb.f, label %.preheader30.1, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22   ; 2 uses
  store i64 %i.k, ptr %i.r, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !22
  store i64 %i.i, ptr %i.j, align 8, !tbaa !18
  store ptr %i.y, ptr %i.z, align 8, !tbaa !22
  %i.ab = lshr i64 %i.f, 12
  %i.ac = and i64 %i.ab, 262143
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ac
  br label %rtree_leaf_elm_lookup.exit23

.preheader30.1:                                   ; preds = %.preheader30.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.ag = icmp eq i64 %i.af, %i.i
  br i1 %i.ag, label %bb.f, label %.preheader30.2, !prof !21

.preheader30.2:                                   ; preds = %.preheader30.1
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.aj = icmp eq i64 %i.ai, %i.i
  br i1 %i.aj, label %bb.f, label %.preheader30.3, !prof !21

.preheader30.3:                                   ; preds = %.preheader30.2
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !18
  %i.am = icmp eq i64 %i.al, %i.i
  br i1 %i.am, label %bb.f, label %.preheader30.4, !prof !21

.preheader30.4:                                   ; preds = %.preheader30.3
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !18
  %i.ap = icmp eq i64 %i.ao, %i.i
  br i1 %i.ap, label %bb.f, label %.preheader30.5, !prof !21

.preheader30.5:                                   ; preds = %.preheader30.4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.as = icmp eq i64 %i.ar, %i.i
  br i1 %i.as, label %bb.f, label %.preheader30.6, !prof !21

.preheader30.6:                                   ; preds = %.preheader30.5
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !18
  %i.av = icmp eq i64 %i.au, %i.i
  br i1 %i.av, label %bb.f, label %bb.e, !prof !21

bb.e:                                             ; preds = %.preheader30.6
  %i.aw = tail call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %i.f, i1 noundef zeroext %4, i1 noundef zeroext %5) #6
  br label %rtree_leaf_elm_lookup.exit23

bb.f:                                             ; preds = %.preheader30.6, %.preheader30.5, %.preheader30.4, %.preheader30.3, %.preheader30.2, %.preheader30.1, %.preheader30.preheader
  %.lcssa35 = phi ptr [ %i.u, %.preheader30.preheader ], [ %i.ae, %.preheader30.1 ], [ %i.ah, %.preheader30.2 ], [ %i.ak, %.preheader30.3 ], [ %i.an, %.preheader30.4 ], [ %i.aq, %.preheader30.5 ], [ %i.at, %.preheader30.6 ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.lcssa35, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22 ; 2 uses
  %i.az = getelementptr i8, ptr %.lcssa35, i64 -16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !18
  store i64 %i.ba, ptr %.lcssa35, align 8, !tbaa !18
  %i.bb = getelementptr i8, ptr %.lcssa35, i64 -8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !22
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !22
  store i64 %i.k, ptr %i.az, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !22
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !22
  store i64 %i.i, ptr %i.j, align 8, !tbaa !18
  store ptr %i.ay, ptr %i.bd, align 8, !tbaa !22
  %i.bf = lshr i64 %i.f, 12
  %i.bg = and i64 %i.bf, 262143
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bg
  br label %rtree_leaf_elm_lookup.exit23

rtree_leaf_elm_lookup.exit23:                     ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i22 = phi ptr [ %i.q, %bb.b ], [ %i.ad, %bb.d ], [ %i.aw, %bb.e ], [ %i.bh, %bb.f ] ; 2 uses
  store ptr %.1.i22, ptr %6, align 8, !tbaa !32
  %.not = xor i1 %4, true
  %i.bi = icmp ne ptr %.1.i22, null
  %or.cond.not = select i1 %4, i1 true, i1 %i.bi
  br i1 %or.cond.not, label %bb.g, label %bb.m

bb.g:                                             ; preds = %rtree_leaf_elm_lookup.exit23
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %i.bj = getelementptr i8, ptr %3, i64 16
  %.val25 = load i64, ptr %i.bj, align 8, !tbaa !23
  %i.bk = ptrtoint ptr %.val24 to i64
  %i.bl = and i64 %i.bk, 4095
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %.val24, i64 %i.bm
  %i.bo = and i64 %.val25, -4096
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4096
  %i.br = ptrtoint ptr %i.bq to i64               ; 6 uses
  %i.bs = lshr i64 %i.br, 30
  %i.bt = and i64 %i.bs, 15
  %i.bu = and i64 %i.br, -1073741824              ; 11 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.bt ; 6 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !18 ; 3 uses
  %i.bx = icmp eq i64 %i.bw, %i.bu
  br i1 %i.bx, label %bb.h, label %bb.i, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !22
  %i.ca = lshr i64 %i.br, 12
  %i.cb = and i64 %i.ca, 262143
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cb
  br label %rtree_leaf_elm_lookup.exit

bb.i:                                             ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !18
  %i.cf = icmp eq i64 %i.ce, %i.bu
  br i1 %i.cf, label %bb.j, label %.preheader.preheader, !prof !21

.preheader.preheader:                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !18
  %i.ci = icmp eq i64 %i.ch, %i.bu
  br i1 %i.ci, label %bb.l, label %.preheader.1, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !22 ; 2 uses
  store i64 %i.bw, ptr %i.cd, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !22
  store ptr %i.cm, ptr %i.cj, align 8, !tbaa !22
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !18
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !22
  %i.cn = lshr i64 %i.br, 12
  %i.co = and i64 %i.cn, 262143
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.co
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !18
  %i.cs = icmp eq i64 %i.cr, %i.bu
  br i1 %i.cs, label %bb.l, label %.preheader.2, !prof !21

.preheader.2:                                     ; preds = %.preheader.1
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !18
  %i.cv = icmp eq i64 %i.cu, %i.bu
  br i1 %i.cv, label %bb.l, label %.preheader.3, !prof !21

.preheader.3:                                     ; preds = %.preheader.2
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !18
  %i.cy = icmp eq i64 %i.cx, %i.bu
  br i1 %i.cy, label %bb.l, label %.preheader.4, !prof !21

.preheader.4:                                     ; preds = %.preheader.3
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !18
  %i.db = icmp eq i64 %i.da, %i.bu
  br i1 %i.db, label %bb.l, label %.preheader.5, !prof !21

.preheader.5:                                     ; preds = %.preheader.4
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !18
  %i.de = icmp eq i64 %i.dd, %i.bu
  br i1 %i.de, label %bb.l, label %.preheader.6, !prof !21

.preheader.6:                                     ; preds = %.preheader.5
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !18
  %i.dh = icmp eq i64 %i.dg, %i.bu
  br i1 %i.dh, label %bb.l, label %bb.k, !prof !21

bb.k:                                             ; preds = %.preheader.6
  %i.di = tail call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %i.br, i1 noundef zeroext %4, i1 noundef zeroext %5) #6
  br label %rtree_leaf_elm_lookup.exit

bb.l:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.cg, %.preheader.preheader ], [ %i.cq, %.preheader.1 ], [ %i.ct, %.preheader.2 ], [ %i.cw, %.preheader.3 ], [ %i.cz, %.preheader.4 ], [ %i.dc, %.preheader.5 ], [ %i.df, %.preheader.6 ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !22 ; 2 uses
  %i.dl = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !18
  store i64 %i.dm, ptr %.lcssa, align 8, !tbaa !18
  %i.dn = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !22
  store ptr %i.do, ptr %i.dj, align 8, !tbaa !22
  store i64 %i.bw, ptr %i.dl, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !22
  store ptr %i.dq, ptr %i.dn, align 8, !tbaa !22
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !18
  store ptr %i.dk, ptr %i.dp, align 8, !tbaa !22
  %i.dr = lshr i64 %i.br, 12
  %i.ds = and i64 %i.dr, 262143
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ds
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.l, %bb.h, %bb.j, %bb.k
  %.1.i = phi ptr [ %i.cc, %bb.h ], [ %i.cp, %bb.j ], [ %i.di, %bb.k ], [ %i.dt, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %7, align 8, !tbaa !32
  %i.du = icmp eq ptr %.1.i, null
  %or.cond19 = select i1 %.not, i1 %i.du, i1 false
  br label %bb.m

bb.m:                                             ; preds = %rtree_leaf_elm_lookup.exit, %rtree_leaf_elm_lookup.exit23
  %.0 = phi i1 [ %or.cond19, %rtree_leaf_elm_lookup.exit ], [ true, %rtree_leaf_elm_lookup.exit23 ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @je_emap_register_interior(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %4) #6
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %4, %bb.b ], [ %i.b, %bb.c ]  ; 11 uses
  %5 = ptrtoint ptr %2 to i64
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.d = ptrtoint ptr %.val to i64
  %i.e = and i64 %i.d, 4095
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %.val, i64 %i.f ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = add i64 %i.h, 4096                       ; 3 uses
  %i.j = getelementptr i8, ptr %2, i64 16
  %.val9 = load i64, ptr %i.j, align 8, !tbaa !23
  %i.k = and i64 %.val9, -4096
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4096
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.n, -4096                      ; 2 uses
  %i.p = and i64 %5, 281474976710654
  %i.q = zext i32 %3 to i64
  %i.r = shl i64 %i.q, 48
  %i.s = or disjoint i64 %i.r, %i.p
  %i.t = or disjoint i64 %i.s, 1
  %i.u = inttoptr i64 %i.t to ptr
  %.not.i35 = icmp ugt i64 %i.i, %i.o
  br i1 %.not.i35, label %rtree_write_range_impl.exit, label %.lr.ph

.lr.ph:                                           ; preds = %tsdn_rtree_ctx.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 256 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 264 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 272 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 288 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 304 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 320 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 336 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 352 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 368 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %rtree_leaf_elm_lookup.exit.i
  %.0.i737 = phi i64 [ %i.i, %.lr.ph ], [ %i.cb, %rtree_leaf_elm_lookup.exit.i ] ; 9 uses
  %.014.i36 = phi ptr [ null, %.lr.ph ], [ %i.ca, %rtree_leaf_elm_lookup.exit.i ]
  %i.ae = icmp eq i64 %.0.i737, %i.i
  %i.af = and i64 %.0.i737, 1073741823
  %i.ag = icmp eq i64 %i.af, 0
  %or.cond = or i1 %i.ae, %i.ag
  br i1 %or.cond, label %bb.e, label %rtree_leaf_elm_lookup.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ah = lshr i64 %.0.i737, 30
  %i.ai = and i64 %i.ah, 15
  %i.aj = and i64 %.0.i737, -1073741824           ; 11 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %i.ai ; 6 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !18 ; 3 uses
  %i.am = icmp eq i64 %i.al, %i.aj
  br i1 %i.am, label %bb.f, label %bb.g, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !22
  %i.ap = lshr i64 %.0.i737, 12
  %i.aq = and i64 %i.ap, 262143
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  br label %rtree_leaf_elm_lookup.exit.i

bb.g:                                             ; preds = %bb.e
  %i.as = load i64, ptr %i.v, align 8, !tbaa !18
  %i.at = icmp eq i64 %i.as, %i.aj
  br i1 %i.at, label %bb.h, label %.preheader.preheader, !prof !21

.preheader.preheader:                             ; preds = %bb.g
  %i.au = load i64, ptr %i.x, align 8, !tbaa !18
  %i.av = icmp eq i64 %i.au, %i.aj
  br i1 %i.av, label %bb.j, label %.preheader.1, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.w, align 8, !tbaa !22  ; 2 uses
  store i64 %i.al, ptr %i.v, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  store ptr %i.ay, ptr %i.w, align 8, !tbaa !22
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !18
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !22
  %i.az = lshr i64 %.0.i737, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit.i

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.bc = load i64, ptr %i.y, align 8, !tbaa !18
  %i.bd = icmp eq i64 %i.bc, %i.aj
  br i1 %i.bd, label %bb.j, label %.preheader.2, !prof !21

.preheader.2:                                     ; preds = %.preheader.1
  %i.be = load i64, ptr %i.z, align 8, !tbaa !18
  %i.bf = icmp eq i64 %i.be, %i.aj
  br i1 %i.bf, label %bb.j, label %.preheader.3, !prof !21

.preheader.3:                                     ; preds = %.preheader.2
  %i.bg = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.bh = icmp eq i64 %i.bg, %i.aj
  br i1 %i.bh, label %bb.j, label %.preheader.4, !prof !21

.preheader.4:                                     ; preds = %.preheader.3
  %i.bi = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.bj = icmp eq i64 %i.bi, %i.aj
  br i1 %i.bj, label %bb.j, label %.preheader.5, !prof !21

.preheader.5:                                     ; preds = %.preheader.4
  %i.bk = load i64, ptr %i.ac, align 8, !tbaa !18
  %i.bl = icmp eq i64 %i.bk, %i.aj
  br i1 %i.bl, label %bb.j, label %.preheader.6, !prof !21

.preheader.6:                                     ; preds = %.preheader.5
  %i.bm = load i64, ptr %i.ad, align 8, !tbaa !18
  %i.bn = icmp eq i64 %i.bm, %i.aj
  br i1 %i.bn, label %bb.j, label %bb.i, !prof !21

bb.i:                                             ; preds = %.preheader.6
  %i.bo = call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, i64 noundef %.0.i737, i1 noundef zeroext true, i1 noundef zeroext false) #6
  br label %rtree_leaf_elm_lookup.exit.i

bb.j:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.x, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.z, %.preheader.2 ], [ %i.aa, %.preheader.3 ], [ %i.ab, %.preheader.4 ], [ %i.ac, %.preheader.5 ], [ %i.ad, %.preheader.6 ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22 ; 2 uses
  %i.br = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !18
  store i64 %i.bs, ptr %.lcssa, align 8, !tbaa !18
  %i.bt = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !22
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !22
  store i64 %i.al, ptr %i.br, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !22
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !22
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !18
  store ptr %i.bq, ptr %i.bv, align 8, !tbaa !22
  %i.bx = lshr i64 %.0.i737, 12
  %i.by = and i64 %i.bx, 262143
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.by
  br label %rtree_leaf_elm_lookup.exit.i

rtree_leaf_elm_lookup.exit.i:                     ; preds = %bb.d, %bb.f, %bb.h, %bb.i, %bb.j
  %.1.i = phi ptr [ %.014.i36, %bb.d ], [ %i.ar, %bb.f ], [ %i.bb, %bb.h ], [ %i.bo, %bb.i ], [ %i.bz, %bb.j ] ; 2 uses
  store atomic ptr %i.u, ptr %.1.i release, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.cb = add i64 %.0.i737, 4096                  ; 2 uses
  %.not.i = icmp ugt i64 %i.cb, %i.o
  br i1 %.not.i, label %rtree_write_range_impl.exit, label %bb.d, !llvm.loop !33

rtree_write_range_impl.exit:                      ; preds = %rtree_leaf_elm_lookup.exit.i, %tsdn_rtree_ctx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_emap_deregister_boundary(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq ptr %0, null
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #6
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i11 = phi ptr [ %3, %bb.b ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.e = call fastcc zeroext i1 @emap_rtree_leaf_elms_lookup(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i11, ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  store atomic ptr inttoptr (i64 65302194596872192 to ptr), ptr %i.f release, align 8
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %emap_rtree_write_acquired.exit, label %bb.d

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  store atomic ptr inttoptr (i64 65302194596872192 to ptr), ptr %i.g release, align 8
  br label %emap_rtree_write_acquired.exit

emap_rtree_write_acquired.exit:                   ; preds = %tsdn_rtree_ctx.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_emap_deregister_interior(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #6
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %3, %bb.b ], [ %i.b, %bb.c ]  ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val7 = load i64, ptr %i.c, align 8, !tbaa !23
  %i.d = and i64 %.val7, -4096                    ; 2 uses
  %i.e = icmp ugt i64 %i.d, 8192
  br i1 %i.e, label %bb.d, label %rtree_clear_range.exit

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.f = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %i.g = ptrtoint ptr %.val to i64
  %i.h = and i64 %i.g, 4095
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds i8, ptr %.val, i64 %i.i ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, 4096                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4096
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %i.o, -4096                      ; 2 uses
  %.not.i23.i = icmp ugt i64 %i.l, %i.p
  br i1 %.not.i23.i, label %rtree_clear_range.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 256 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 264 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 272 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 288 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 304 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 320 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 336 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 352 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 368 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %rtree_leaf_elm_lookup.exit.i.i, %.lr.ph.i
  %.0.i25.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.bw, %rtree_leaf_elm_lookup.exit.i.i ] ; 9 uses
  %.014.i24.i = phi ptr [ null, %.lr.ph.i ], [ %i.bv, %rtree_leaf_elm_lookup.exit.i.i ]
  %i.z = icmp eq i64 %.0.i25.i, %i.l
  %i.aa = and i64 %.0.i25.i, 1073741823
  %i.ab = icmp eq i64 %i.aa, 0
  %or.cond.i = or i1 %i.z, %i.ab
  br i1 %or.cond.i, label %bb.f, label %rtree_leaf_elm_lookup.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ac = lshr i64 %.0.i25.i, 30
  %i.ad = and i64 %i.ac, 15
  %i.ae = and i64 %.0.i25.i, -1073741824          ; 11 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %i.ad ; 6 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !18 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ak = lshr i64 %.0.i25.i, 12
  %i.al = and i64 %i.ak, 262143
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.al
  br label %rtree_leaf_elm_lookup.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.q, align 8, !tbaa !18
  %i.ao = icmp eq i64 %i.an, %i.ae
  br i1 %i.ao, label %bb.i, label %.preheader.preheader.i, !prof !21

.preheader.preheader.i:                           ; preds = %bb.h
  %i.ap = load i64, ptr %i.s, align 8, !tbaa !18
  %i.aq = icmp eq i64 %i.ap, %i.ae
  br i1 %i.aq, label %bb.k, label %.preheader.1.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !22  ; 2 uses
  store i64 %i.ag, ptr %i.q, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !22
  store ptr %i.at, ptr %i.r, align 8, !tbaa !22
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !18
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !22
  %i.au = lshr i64 %.0.i25.i, 12
  %i.av = and i64 %i.au, 262143
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.av
  br label %rtree_leaf_elm_lookup.exit.i.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.ax = load i64, ptr %i.t, align 8, !tbaa !18
  %i.ay = icmp eq i64 %i.ax, %i.ae
  br i1 %i.ay, label %bb.k, label %.preheader.2.i, !prof !21

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.az = load i64, ptr %i.u, align 8, !tbaa !18
  %i.ba = icmp eq i64 %i.az, %i.ae
  br i1 %i.ba, label %bb.k, label %.preheader.3.i, !prof !21

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.bb = load i64, ptr %i.v, align 8, !tbaa !18
  %i.bc = icmp eq i64 %i.bb, %i.ae
  br i1 %i.bc, label %bb.k, label %.preheader.4.i, !prof !21

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.bd = load i64, ptr %i.w, align 8, !tbaa !18
  %i.be = icmp eq i64 %i.bd, %i.ae
  br i1 %i.be, label %bb.k, label %.preheader.5.i, !prof !21

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.bf = load i64, ptr %i.x, align 8, !tbaa !18
  %i.bg = icmp eq i64 %i.bf, %i.ae
  br i1 %i.bg, label %bb.k, label %.preheader.6.i, !prof !21

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.bh = load i64, ptr %i.y, align 8, !tbaa !18
  %i.bi = icmp eq i64 %i.bh, %i.ae
  br i1 %i.bi, label %bb.k, label %bb.j, !prof !21

bb.j:                                             ; preds = %.preheader.6.i
  %i.bj = call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, i64 noundef %.0.i25.i, i1 noundef zeroext true, i1 noundef zeroext false) #6
  br label %rtree_leaf_elm_lookup.exit.i.i

bb.k:                                             ; preds = %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.lcssa.i = phi ptr [ %i.s, %.preheader.preheader.i ], [ %i.t, %.preheader.1.i ], [ %i.u, %.preheader.2.i ], [ %i.v, %.preheader.3.i ], [ %i.w, %.preheader.4.i ], [ %i.x, %.preheader.5.i ], [ %i.y, %.preheader.6.i ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !22 ; 2 uses
  %i.bm = getelementptr i8, ptr %.lcssa.i, i64 -16 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !18
  store i64 %i.bn, ptr %.lcssa.i, align 8, !tbaa !18
  %i.bo = getelementptr i8, ptr %.lcssa.i, i64 -8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !22
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !22
  store i64 %i.ag, ptr %i.bm, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !22
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !22
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !18
  store ptr %i.bl, ptr %i.bq, align 8, !tbaa !22
  %i.bs = lshr i64 %.0.i25.i, 12
  %i.bt = and i64 %i.bs, 262143
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bt
  br label %rtree_leaf_elm_lookup.exit.i.i

rtree_leaf_elm_lookup.exit.i.i:                   ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.e
  %.1.i.i = phi ptr [ %.014.i24.i, %bb.e ], [ %i.am, %bb.g ], [ %i.aw, %bb.i ], [ %i.bj, %bb.j ], [ %i.bu, %bb.k ] ; 2 uses
  store atomic ptr inttoptr (i64 65302194596872192 to ptr), ptr %.1.i.i release, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %i.bw = add i64 %.0.i25.i, 4096                 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.bw, %i.p
  br i1 %.not.i.i, label %rtree_clear_range.exit, label %bb.e, !llvm.loop !33

rtree_clear_range.exit:                           ; preds = %rtree_leaf_elm_lookup.exit.i.i, %bb.d, %tsdn_rtree_ctx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_emap_remap(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %5) #6
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %5, %bb.b ], [ %i.b, %bb.c ]  ; 22 uses
  %.not = icmp eq i32 %3, 232
  br i1 %.not, label %rtree_write.exit, label %bb.d

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  %6 = ptrtoint ptr %2 to i64                     ; 2 uses
  %.val24 = load i64, ptr %2, align 8, !tbaa !12  ; 2 uses
  %i.c = lshr i64 %.val24, 44
  %i.d = trunc i64 %i.c to i8
  %i.e = and i8 %i.d, 1                           ; 2 uses
  %i.f = trunc i64 %.val24 to i32
  %i.g = lshr i32 %i.f, 17
  %i.h = and i32 %i.g, 7                          ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val26 = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.j = ptrtoint ptr %.val26 to i64              ; 6 uses
  %i.k = lshr i64 %i.j, 30
  %i.l = and i64 %i.k, 15
  %i.m = and i64 %i.j, -1073741824                ; 11 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %i.l ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18   ; 3 uses
  %i.p = icmp eq i64 %i.o, %i.m
  br i1 %i.p, label %bb.e, label %bb.f, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = lshr i64 %i.j, 12
  %i.t = and i64 %i.s, 262143
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t
  br label %rtree_leaf_elm_lookup.exit.i19

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 256 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18
  %i.x = icmp eq i64 %i.w, %i.m
  br i1 %i.x, label %bb.g, label %.preheader87.preheader, !prof !21

.preheader87.preheader:                           ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 272 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !18
  %i.aa = icmp eq i64 %i.z, %i.m
  br i1 %i.aa, label %bb.i, label %.preheader87.1, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 264 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  store i64 %i.o, ptr %i.v, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !22
  store i64 %i.m, ptr %i.n, align 8, !tbaa !18
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !22
  %i.af = lshr i64 %i.j, 12
  %i.ag = and i64 %i.af, 262143
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ag
  br label %rtree_leaf_elm_lookup.exit.i19

.preheader87.1:                                   ; preds = %.preheader87.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i, i64 288 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !18
  %i.ak = icmp eq i64 %i.aj, %i.m
  br i1 %i.ak, label %bb.i, label %.preheader87.2, !prof !21

.preheader87.2:                                   ; preds = %.preheader87.1
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 304 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !18
  %i.an = icmp eq i64 %i.am, %i.m
  br i1 %i.an, label %bb.i, label %.preheader87.3, !prof !21

.preheader87.3:                                   ; preds = %.preheader87.2
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 320 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !18
  %i.aq = icmp eq i64 %i.ap, %i.m
  br i1 %i.aq, label %bb.i, label %.preheader87.4, !prof !21

.preheader87.4:                                   ; preds = %.preheader87.3
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 336 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !18
  %i.at = icmp eq i64 %i.as, %i.m
  br i1 %i.at, label %bb.i, label %.preheader87.5, !prof !21

.preheader87.5:                                   ; preds = %.preheader87.4
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 352 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !18
  %i.aw = icmp eq i64 %i.av, %i.m
  br i1 %i.aw, label %bb.i, label %.preheader87.6, !prof !21

.preheader87.6:                                   ; preds = %.preheader87.5
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i, i64 368 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !18
  %i.az = icmp eq i64 %i.ay, %i.m
  br i1 %i.az, label %bb.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %.preheader87.6
  %i.ba = call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, i64 noundef %i.j, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %rtree_leaf_elm_lookup.exit.i19

bb.i:                                             ; preds = %.preheader87.6, %.preheader87.5, %.preheader87.4, %.preheader87.3, %.preheader87.2, %.preheader87.1, %.preheader87.preheader
  %.lcssa92 = phi ptr [ %i.y, %.preheader87.preheader ], [ %i.ai, %.preheader87.1 ], [ %i.al, %.preheader87.2 ], [ %i.ao, %.preheader87.3 ], [ %i.ar, %.preheader87.4 ], [ %i.au, %.preheader87.5 ], [ %i.ax, %.preheader87.6 ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa92, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !22 ; 2 uses
  %i.bd = getelementptr i8, ptr %.lcssa92, i64 -16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !18
  store i64 %i.be, ptr %.lcssa92, align 8, !tbaa !18
  %i.bf = getelementptr i8, ptr %.lcssa92, i64 -8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !22
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !22
  store i64 %i.o, ptr %i.bd, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !22
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !22
  store i64 %i.m, ptr %i.n, align 8, !tbaa !18
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !22
  %i.bj = lshr i64 %i.j, 12
  %i.bk = and i64 %i.bj, 262143
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bk
  br label %rtree_leaf_elm_lookup.exit.i19

rtree_leaf_elm_lookup.exit.i19:                   ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %.1.i.i20 = phi ptr [ %i.u, %bb.e ], [ %i.ah, %bb.g ], [ %i.ba, %bb.h ], [ %i.bl, %bb.i ] ; 2 uses
  %i.bm = icmp eq ptr %.1.i.i20, null
  br i1 %i.bm, label %rtree_write.exit21, label %bb.j

bb.j:                                             ; preds = %rtree_leaf_elm_lookup.exit.i19
  %i.bn = and i64 %6, 281474976710655
  %i.bo = zext i32 %3 to i64
  %i.bp = shl i64 %i.bo, 48
  %i.bq = zext i1 %4 to i64
  %i.br = shl nuw nsw i8 %i.e, 1
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = shl nuw nsw i32 %i.h, 2
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = or disjoint i64 %i.bp, %i.bu
  %i.bw = or disjoint i64 %i.bv, %i.bs
  %i.bx = or disjoint i64 %i.bw, %i.bq
  %i.by = or i64 %i.bx, %i.bn
  %i.bz = inttoptr i64 %i.by to ptr
  store atomic ptr %i.bz, ptr %.1.i.i20 release, align 8
  br label %rtree_write.exit21

rtree_write.exit21:                               ; preds = %rtree_leaf_elm_lookup.exit.i19, %bb.j
  br i1 %4, label %bb.k, label %rtree_write.exit

bb.k:                                             ; preds = %rtree_write.exit21
  %i.ca = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.ca, align 8, !tbaa !23
  %i.cb = and i64 %.val, -4096                    ; 2 uses
  %i.cc = icmp ugt i64 %i.cb, 4096
  br i1 %i.cc, label %bb.l, label %rtree_write.exit

bb.l:                                             ; preds = %bb.k
  %.val22 = load ptr, ptr %i.i, align 8, !tbaa !17 ; 2 uses
  %i.cd = ptrtoint ptr %.val22 to i64
  %i.ce = and i64 %i.cd, 4095
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds i8, ptr %.val22, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cb
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = add i64 %i.ci, -4096                    ; 6 uses
  %i.ck = lshr i64 %i.cj, 30
  %i.cl = and i64 %i.ck, 15
  %i.cm = and i64 %i.cj, -1073741824              ; 11 uses
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %i.cl ; 6 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !18 ; 3 uses
  %i.cp = icmp eq i64 %i.co, %i.cm
  br i1 %i.cp, label %bb.m, label %bb.n, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !22
  %i.cs = lshr i64 %i.cj, 12
  %i.ct = and i64 %i.cs, 262143
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  br label %rtree_leaf_elm_lookup.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i, i64 256 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !18
  %i.cx = icmp eq i64 %i.cw, %i.cm
  br i1 %i.cx, label %bb.o, label %.preheader.preheader, !prof !21

.preheader.preheader:                             ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 272 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !18
  %i.da = icmp eq i64 %i.cz, %i.cm
  br i1 %i.da, label %bb.q, label %.preheader.1, !prof !21

bb.o:                                             ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i, i64 264 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !22 ; 2 uses
  store i64 %i.co, ptr %i.cv, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !22
  store ptr %i.de, ptr %i.db, align 8, !tbaa !22
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !18
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !22
  %i.df = lshr i64 %i.cj, 12
  %i.dg = and i64 %i.df, 262143
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dg
  br label %rtree_leaf_elm_lookup.exit.i

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i, i64 288 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !18
  %i.dk = icmp eq i64 %i.dj, %i.cm
  br i1 %i.dk, label %bb.q, label %.preheader.2, !prof !21

.preheader.2:                                     ; preds = %.preheader.1
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i, i64 304 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !18
  %i.dn = icmp eq i64 %i.dm, %i.cm
  br i1 %i.dn, label %bb.q, label %.preheader.3, !prof !21

.preheader.3:                                     ; preds = %.preheader.2
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i, i64 320 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !18
  %i.dq = icmp eq i64 %i.dp, %i.cm
  br i1 %i.dq, label %bb.q, label %.preheader.4, !prof !21

.preheader.4:                                     ; preds = %.preheader.3
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i, i64 336 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !18
  %i.dt = icmp eq i64 %i.ds, %i.cm
  br i1 %i.dt, label %bb.q, label %.preheader.5, !prof !21

.preheader.5:                                     ; preds = %.preheader.4
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i, i64 352 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !18
  %i.dw = icmp eq i64 %i.dv, %i.cm
  br i1 %i.dw, label %bb.q, label %.preheader.6, !prof !21

.preheader.6:                                     ; preds = %.preheader.5
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i, i64 368 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !18
  %i.dz = icmp eq i64 %i.dy, %i.cm
  br i1 %i.dz, label %bb.q, label %bb.p, !prof !21

bb.p:                                             ; preds = %.preheader.6
  %i.ea = call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, i64 noundef %i.cj, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %rtree_leaf_elm_lookup.exit.i

bb.q:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.cy, %.preheader.preheader ], [ %i.di, %.preheader.1 ], [ %i.dl, %.preheader.2 ], [ %i.do, %.preheader.3 ], [ %i.dr, %.preheader.4 ], [ %i.du, %.preheader.5 ], [ %i.dx, %.preheader.6 ] ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !22 ; 2 uses
  %i.ed = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !18
  store i64 %i.ee, ptr %.lcssa, align 8, !tbaa !18
  %i.ef = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !22
  store ptr %i.eg, ptr %i.eb, align 8, !tbaa !22
  store i64 %i.co, ptr %i.ed, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !22
  store ptr %i.ei, ptr %i.ef, align 8, !tbaa !22
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !18
  store ptr %i.ec, ptr %i.eh, align 8, !tbaa !22
  %i.ej = lshr i64 %i.cj, 12
  %i.ek = and i64 %i.ej, 262143
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ek
  br label %rtree_leaf_elm_lookup.exit.i

rtree_leaf_elm_lookup.exit.i:                     ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.1.i.i = phi ptr [ %i.cu, %bb.m ], [ %i.dh, %bb.o ], [ %i.ea, %bb.p ], [ %i.el, %bb.q ] ; 2 uses
  %i.em = icmp eq ptr %.1.i.i, null
  br i1 %i.em, label %rtree_write.exit, label %bb.r

bb.r:                                             ; preds = %rtree_leaf_elm_lookup.exit.i
  %i.en = and i64 %6, 281474976710654
  %i.eo = zext i32 %3 to i64
  %i.ep = shl i64 %i.eo, 48
  %i.eq = shl nuw nsw i8 %i.e, 1
  %i.er = zext nneg i8 %i.eq to i64
  %i.es = shl nuw nsw i32 %i.h, 2
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = or disjoint i64 %i.ep, %i.et
  %i.ev = or disjoint i64 %i.eu, %i.er
  %i.ew = or i64 %i.ev, %i.en
  %i.ex = or disjoint i64 %i.ew, 1
  %i.ey = inttoptr i64 %i.ex to ptr
  store atomic ptr %i.ey, ptr %.1.i.i release, align 8
  br label %rtree_write.exit

rtree_write.exit:                                 ; preds = %rtree_write.exit21, %bb.k, %rtree_leaf_elm_lookup.exit.i, %bb.r, %tsdn_rtree_ctx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_emap_split_prepare(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %8 = alloca %struct.edata_s, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %7) #6
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %7, %bb.b ], [ %i.b, %bb.c ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i8 0, i64 104, i1 false)
  %i.d = getelementptr i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.val, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %4, ptr %i.f, align 8, !tbaa !23
  store i64 0, ptr %8, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = call fastcc zeroext i1 @emap_rtree_leaf_elms_lookup(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, ptr noundef nonnull %8, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %2, ptr noundef nonnull %i.g) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.k = call fastcc zeroext i1 @emap_rtree_leaf_elms_lookup(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) ; 0 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !35
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.s = icmp eq ptr %i.r, null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %tsdn_rtree_ctx.exit, %bb.d, %bb.e
  %.0 = phi i1 [ true, %tsdn_rtree_ctx.exit ], [ %i.s, %bb.f ], [ true, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden void @je_emap_split_commit(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %7 = ptrtoint ptr %3 to i64
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %3, align 8, !tbaa !12  ; 2 uses
  %sh.diff.i = lshr i64 %.val.i, 43
  %i.e = and i64 %sh.diff.i, 2
  %i.f = lshr i64 %.val.i, 15
  %i.g = and i64 %i.f, 28
  %i.h = or disjoint i64 %i.e, %i.g
  %i.i = or disjoint i64 %i.h, 65302194596872192
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.j = phi i64 [ %i.i, %bb.b ], [ 65302194596872192, %bb.a ]
  %i.k = and i64 %7, 281474976710655
  %i.l = or i64 %i.j, %i.k
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  store atomic ptr %i.m, ptr %i.a release, align 8
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %emap_rtree_write_acquired.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  store atomic ptr %i.m, ptr %i.c release, align 8
  br label %emap_rtree_write_acquired.exit

emap_rtree_write_acquired.exit:                   ; preds = %.critedge.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %8 = ptrtoint ptr %5 to i64
  %i.r = icmp eq ptr %5, null
  br i1 %i.r, label %.critedge.i12, label %bb.d

bb.d:                                             ; preds = %emap_rtree_write_acquired.exit
  %.val.i10 = load i64, ptr %5, align 8, !tbaa !12 ; 2 uses
  %sh.diff.i11 = lshr i64 %.val.i10, 43
  %i.s = and i64 %sh.diff.i11, 2
  %i.t = lshr i64 %.val.i10, 15
  %i.u = and i64 %i.t, 28
  %i.v = or disjoint i64 %i.s, %i.u
  %i.w = or disjoint i64 %i.v, 65302194596872192
  br label %.critedge.i12

.critedge.i12:                                    ; preds = %bb.d, %emap_rtree_write_acquired.exit
  %i.x = phi i64 [ %i.w, %bb.d ], [ 65302194596872192, %emap_rtree_write_acquired.exit ]
  %i.y = and i64 %8, 281474976710655
  %i.z = or i64 %i.x, %i.y
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  store atomic ptr %i.aa, ptr %i.o release, align 8
  %.not.i14 = icmp eq ptr %i.q, null
  br i1 %.not.i14, label %emap_rtree_write_acquired.exit15, label %bb.e

bb.e:                                             ; preds = %.critedge.i12
  store atomic ptr %i.aa, ptr %i.q release, align 8
  br label %emap_rtree_write_acquired.exit15

emap_rtree_write_acquired.exit15:                 ; preds = %.critedge.i12, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_emap_merge_prepare(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %5) #6
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %5, %bb.b ], [ %i.b, %bb.c ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = call fastcc zeroext i1 @emap_rtree_leaf_elms_lookup(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %2, ptr noundef nonnull %i.c) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = call fastcc zeroext i1 @emap_rtree_leaf_elms_lookup(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, ptr noundef %4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden void @je_emap_merge_commit(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store atomic ptr inttoptr (i64 65302194596872192 to ptr), ptr %i.b release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %.not16 = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  store atomic ptr inttoptr (i64 65302194596872192 to ptr), ptr %i.f release, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0.in = phi ptr [ %i.c, %bb.d ], [ %i.e, %bb.c ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !32  ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !35
  %5 = ptrtoint ptr %3 to i64
  %i.h = icmp eq ptr %3, null
  br i1 %i.h, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i = load i64, ptr %3, align 8, !tbaa !12  ; 2 uses
  %sh.diff.i = lshr i64 %.val.i, 43
  %i.i = and i64 %sh.diff.i, 2
  %i.j = lshr i64 %.val.i, 15
  %i.k = and i64 %i.j, 28
  %i.l = or disjoint i64 %i.i, %i.k
  %i.m = or disjoint i64 %i.l, 65302194596872192
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %i.n = phi i64 [ %i.m, %bb.f ], [ 65302194596872192, %bb.e ]
  %i.o = and i64 %5, 281474976710655
  %i.p = or i64 %i.n, %i.o
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  store atomic ptr %i.q, ptr %i.g release, align 8
  %.not.i = icmp eq ptr %.0, null
  br i1 %.not.i, label %emap_rtree_write_acquired.exit, label %bb.g

bb.g:                                             ; preds = %.critedge.i
  store atomic ptr %i.q, ptr %.0 release, align 8
  br label %emap_rtree_write_acquired.exit

emap_rtree_write_acquired.exit:                   ; preds = %.critedge.i, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_emap_do_assert_mapped(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #6
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %3, %bb.b ], [ %i.b, %bb.c ]  ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.d = ptrtoint ptr %.val to i64
  %i.e = and i64 %i.d, 4095
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %.val, i64 %i.f
  %i.h = ptrtoint ptr %i.g to i64                 ; 6 uses
  %i.i = lshr i64 %i.h, 30
  %i.j = and i64 %i.i, 15
  %i.k = and i64 %i.h, -1073741824                ; 11 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %i.j ; 6 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !40 ; 3 uses
  %i.n = icmp eq i64 %i.m, %i.k
  br i1 %i.n, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22, !noalias !40
  %i.q = lshr i64 %i.h, 12
  %i.r = and i64 %i.q, 262143
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  br label %rtree_read.exit

bb.e:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 256 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18, !noalias !40
  %i.v = icmp eq i64 %i.u, %i.k
  br i1 %i.v, label %bb.f, label %.preheader.preheader.i, !prof !21

.preheader.preheader.i:                           ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 272 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18, !noalias !40
  %i.y = icmp eq i64 %i.x, %i.k
  br i1 %i.y, label %bb.h, label %.preheader.1.i, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 264 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22, !noalias !40 ; 2 uses
  store i64 %i.m, ptr %i.t, align 8, !tbaa !18, !noalias !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22, !noalias !40
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !22, !noalias !40
  store i64 %i.k, ptr %i.l, align 8, !tbaa !18, !noalias !40
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !22, !noalias !40
  %i.ad = lshr i64 %i.h, 12
  %i.ae = and i64 %i.ad, 262143
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ae
  br label %rtree_read.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 288 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !18, !noalias !40
  %i.ai = icmp eq i64 %i.ah, %i.k
  br i1 %i.ai, label %bb.h, label %.preheader.2.i, !prof !21

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 304 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !18, !noalias !40
  %i.al = icmp eq i64 %i.ak, %i.k
  br i1 %i.al, label %bb.h, label %.preheader.3.i, !prof !21

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 320 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !18, !noalias !40
  %i.ao = icmp eq i64 %i.an, %i.k
  br i1 %i.ao, label %bb.h, label %.preheader.4.i, !prof !21

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 336 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !18, !noalias !40
  %i.ar = icmp eq i64 %i.aq, %i.k
  br i1 %i.ar, label %bb.h, label %.preheader.5.i, !prof !21

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 352 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !40
  %i.au = icmp eq i64 %i.at, %i.k
  br i1 %i.au, label %bb.h, label %.preheader.6.i, !prof !21

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 368 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !18, !noalias !40
  %i.ax = icmp eq i64 %i.aw, %i.k
  br i1 %i.ax, label %bb.h, label %bb.g, !prof !21

bb.g:                                             ; preds = %.preheader.6.i
  %i.ay = call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, i64 noundef %i.h, i1 noundef zeroext true, i1 noundef zeroext false) #6, !noalias !40
  br label %rtree_read.exit

bb.h:                                             ; preds = %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.lcssa.i = phi ptr [ %i.w, %.preheader.preheader.i ], [ %i.ag, %.preheader.1.i ], [ %i.aj, %.preheader.2.i ], [ %i.am, %.preheader.3.i ], [ %i.ap, %.preheader.4.i ], [ %i.as, %.preheader.5.i ], [ %i.av, %.preheader.6.i ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !22, !noalias !40 ; 2 uses
  %i.bb = getelementptr i8, ptr %.lcssa.i, i64 -16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !18, !noalias !40
  store i64 %i.bc, ptr %.lcssa.i, align 8, !tbaa !18, !noalias !40
  %i.bd = getelementptr i8, ptr %.lcssa.i, i64 -8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !22, !noalias !40
  store ptr %i.be, ptr %i.az, align 8, !tbaa !22, !noalias !40
  store i64 %i.m, ptr %i.bb, align 8, !tbaa !18, !noalias !40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !22, !noalias !40
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !22, !noalias !40
  store i64 %i.k, ptr %i.l, align 8, !tbaa !18, !noalias !40
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !22, !noalias !40
  %i.bh = lshr i64 %i.h, 12
  %i.bi = and i64 %i.bh, 262143
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bi
  br label %rtree_read.exit

rtree_read.exit:                                  ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i.i = phi ptr [ %i.s, %bb.d ], [ %i.af, %bb.f ], [ %i.ay, %bb.g ], [ %i.bj, %bb.h ]
  %i.bk = load atomic ptr, ptr %.1.i.i monotonic, align 8, !noalias !43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_emap_do_assert_not_mapped(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %4 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %5 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %6 = alloca %struct.rtree_contents_s, align 8   ; 3 uses
  %i.a = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.b = ptrtoint ptr %.val to i64
  %i.c = and i64 %i.b, 4095
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %.val, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.f = icmp eq ptr %0, null
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 16         ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call fastcc void @rtree_read_independent(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i64 noundef %i.g, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %.val917 = load ptr, ptr %i.a, align 8, !tbaa !17
  %.val1018 = load i64, ptr %i.h, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %5) #6
  br label %tsdn_rtree_ctx.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call fastcc void @rtree_read_independent(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.i, i64 noundef %i.g, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %.val9 = load ptr, ptr %i.a, align 8, !tbaa !17
  %.val10 = load i64, ptr %i.h, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.c, %bb.b
  %.val1021 = phi i64 [ %.val1018, %bb.b ], [ %.val10, %bb.c ]
  %.val919 = phi ptr [ %.val917, %bb.b ], [ %.val9, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %5, %bb.b ], [ %i.j, %bb.c ]
  %i.k = ptrtoint ptr %.val919 to i64
  %i.l = and i64 %i.k, 4095
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %.val919, i64 %i.m
  %i.o = and i64 %.val1021, -4096
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4096
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.r = ptrtoint ptr %i.q to i64
  call fastcc void @rtree_read_independent(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i.i, i64 noundef %i.r, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret void
}

declare void @je_rtree_ctx_data_init(ptr noundef) local_unnamed_addr #1

declare ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rtree_read_independent(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %3, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !21

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22   ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  store ptr %i.u, ptr %i.r, align 8, !tbaa !22
  store i64 %i.c, ptr %i.d, align 8, !tbaa !18
  store ptr %i.s, ptr %i.t, align 8, !tbaa !22
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !18
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !21

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !21

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !21

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !21

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !18
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !21

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !18
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !21

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !22 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !18
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !18
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !22
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !22
  store i64 %i.e, ptr %i.at, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !22
  store i64 %i.c, ptr %i.d, align 8, !tbaa !18
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !22
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ] ; 2 uses
  %i.bc = icmp eq ptr %.1.i, null
  br i1 %i.bc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rtree_leaf_elm_lookup.exit
  %i.bd = load atomic ptr, ptr %.1.i acquire, align 8, !noalias !46
  %i.be = ptrtoint ptr %i.bd to i64               ; 4 uses
  %i.bf = lshr i64 %i.be, 48
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = trunc i64 %i.be to i8                   ; 2 uses
  %i.bi = and i8 %i.bh, 1
  %i.bj = lshr i8 %i.bh, 1
  %i.bk = and i8 %i.bj, 1
  %i.bl = trunc i64 %i.be to i32
  %i.bm = lshr i32 %i.bl, 2
  %i.bn = and i32 %i.bm, 7
  %i.bo = shl i64 %i.be, 16
  %i.bp = ashr exact i64 %i.bo, 16
  %i.bq = and i64 %i.bp, -128
  store i64 %i.bq, ptr %4, align 8, !tbaa !49
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bg, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !51
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.bn, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !51
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %i.bk, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !28
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 %i.bi, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %rtree_leaf_elm_lookup.exit, %bb.g
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !14, i64 0}
!13 = !{!"edata_s", !14, i64 0, !15, i64 8, !10, i64 16, !16, i64 24, !14, i64 32, !10, i64 40, !10, i64 64}
!14 = !{!"long", !10, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"p1 _ZTS8hpdata_s", !15, i64 0}
!17 = !{!13, !15, i64 8}
!18 = !{!19, !14, i64 0}
!19 = !{!"rtree_ctx_cache_elm_s", !14, i64 0, !20, i64 8}
!20 = !{!"p1 _ZTS16rtree_leaf_elm_s", !15, i64 0}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{!19, !20, i64 8}
!23 = !{!10, !10, i64 0}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!26}
!26 = distinct !{!26, !27, !"rtree_leaf_elm_read: argument 0"}
!27 = distinct !{!27, !"rtree_leaf_elm_read"}
!28 = !{!29, !29, i64 0}
!29 = !{!"_Bool", !10, i64 0}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!20, !20, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!36, !20, i64 0}
!36 = !{!"emap_prepare_s", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!37 = !{!36, !20, i64 8}
!38 = !{!36, !20, i64 16}
!39 = !{!36, !20, i64 24}
!40 = !{!41}
!41 = distinct !{!41, !42, !"rtree_read: argument 0"}
!42 = distinct !{!42, !"rtree_read"}
!43 = !{!44, !41}
!44 = distinct !{!44, !45, !"rtree_leaf_elm_read: argument 0"}
!45 = distinct !{!45, !"rtree_leaf_elm_read"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"rtree_leaf_elm_read: argument 0"}
!48 = distinct !{!48, !"rtree_leaf_elm_read"}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTS7edata_s", !15, i64 0}
!51 = !{!9, !9, i64 0}
end_hunk_0
