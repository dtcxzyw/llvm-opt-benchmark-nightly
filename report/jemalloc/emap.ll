Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/emap?download=true
inline.NumInlined: 59
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@je_emap_update_edata_state:bb.a
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !23
  store ptr %i.ee, ptr %i.eb, align 8, !tbaa !23
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !21
  store ptr %i.dy, ptr %i.ed, align 8, !tbaa !23
  %i.ef = lshr i64 %i.cf, 12
  %i.eg = and i64 %i.ef, 262143
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.eg
  br label %atomic_store_p.exit27

atomic_store_p.exit27:                            ; preds = %bb.m, %bb.l, %bb.j, %bb.n
  %i.ei = phi ptr [ %i.eh, %bb.n ], [ %i.cq, %bb.j ], [ %i.dd, %bb.l ], [ %i.dw, %bb.m ] ; 2 uses
  %i.ej = load atomic ptr, ptr %.1.i24 monotonic, align 8
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = and i64 %i.ek, -29
  %i.em = shl i32 %3, 2
  %i.en = zext i32 %i.em to i64
  %i.eo = or i64 %i.el, %i.en
  %i.ep = inttoptr i64 %i.eo to ptr               ; 2 uses
  store atomic ptr %i.ep, ptr %.1.i24 release, align 8
  %.not.i = icmp eq ptr %i.ei, null
  br i1 %.not.i, label %rtree_leaf_elm_state_update.exit, label %atomic_store_p.exit

atomic_store_p.exit:                              ; preds = %atomic_store_p.exit27
  store atomic ptr %i.ep, ptr %i.ei release, align 8
  br label %rtree_leaf_elm_state_update.exit

rtree_leaf_elm_state_update.exit:                 ; preds = %atomic_store_p.exit27.thread, %atomic_store_p.exit27, %atomic_store_p.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden ptr @je_emap_try_acquire_edata_neighbor(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @emap_try_acquire_edata_neighbor_impl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext false)
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @emap_try_acquire_edata_neighbor_impl(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #3 {
tsdn_witness_tsdp_get.exit:
  %7 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %i.a = icmp eq ptr %0, null
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !18  ; 5 uses
  br i1 %5, label %bb.a, label %.thread

.thread:                                          ; preds = %tsdn_witness_tsdp_get.exit
  %i.c = ptrtoint ptr %.val to i64
  %i.d = and i64 %i.c, 4095
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds i8, ptr %.val, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4096
  br label %bb.b

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.h = getelementptr i8, ptr %2, i64 16
  %.val33 = load i64, ptr %i.h, align 8, !tbaa !24
  %i.i = ptrtoint ptr %.val to i64
  %i.j = and i64 %i.i, 4095
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %.val, i64 %i.k
  %i.m = and i64 %.val33, -4096
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = icmp eq ptr %.val, null
  br i1 %i.o, label %bb.v, label %bb.b

bb.b:                                             ; preds = %.thread, %bb.a
  %i.p = phi ptr [ %i.g, %.thread ], [ %i.n, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  br i1 %i.a, label %bb.c, label %bb.d, !prof !25

bb.c:                                             ; preds = %bb.b
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %7) #6
  br label %tsdn_rtree_ctx.exit

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.c, %bb.d
  %.0.i30 = phi ptr [ %7, %bb.c ], [ %i.q, %bb.d ] ; 11 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 6 uses
  %i.s = lshr i64 %i.r, 30
  %i.t = and i64 %i.s, 15
  %i.u = and i64 %i.r, -1073741824                ; 11 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.0.i30, i64 %i.t ; 6 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21   ; 3 uses
  %i.x = icmp eq i64 %i.w, %i.u
  br i1 %i.x, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.aa = lshr i64 %i.r, 12
  %i.ab = and i64 %i.aa, 262143
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i30, i64 256 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !21
  %i.af = icmp eq i64 %i.ae, %i.u
  br i1 %i.af, label %bb.g, label %.preheader.preheader, !prof !22

.preheader.preheader:                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i30, i64 272 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.ai = icmp eq i64 %i.ah, %i.u
  br i1 %i.ai, label %bb.i, label %.preheader.1, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i30, i64 264 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !23 ; 2 uses
  store i64 %i.w, ptr %i.ad, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !23
  store i64 %i.u, ptr %i.v, align 8, !tbaa !21
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !23
  %i.an = lshr i64 %i.r, 12
  %i.ao = and i64 %i.an, 262143
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ao
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i30, i64 288 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21
  %i.as = icmp eq i64 %i.ar, %i.u
  br i1 %i.as, label %bb.i, label %.preheader.2, !prof !22

.preheader.2:                                     ; preds = %.preheader.1
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i30, i64 304 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !21
  %i.av = icmp eq i64 %i.au, %i.u
  br i1 %i.av, label %bb.i, label %.preheader.3, !prof !22

.preheader.3:                                     ; preds = %.preheader.2
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i30, i64 320 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !21
  %i.ay = icmp eq i64 %i.ax, %i.u
  br i1 %i.ay, label %bb.i, label %.preheader.4, !prof !22

.preheader.4:                                     ; preds = %.preheader.3
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i30, i64 336 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !21
  %i.bb = icmp eq i64 %i.ba, %i.u
  br i1 %i.bb, label %bb.i, label %.preheader.5, !prof !22

.preheader.5:                                     ; preds = %.preheader.4
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i30, i64 352 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !21
  %i.be = icmp eq i64 %i.bd, %i.u
  br i1 %i.be, label %bb.i, label %.preheader.6, !prof !22

.preheader.6:                                     ; preds = %.preheader.5
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i30, i64 368 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !21
  %i.bh = icmp eq i64 %i.bg, %i.u
  br i1 %i.bh, label %bb.i, label %bb.h, !prof !22

bb.h:                                             ; preds = %.preheader.6
  %i.bi = call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i30, i64 noundef %i.r, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %rtree_leaf_elm_lookup.exit

bb.i:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.ag, %.preheader.preheader ], [ %i.aq, %.preheader.1 ], [ %i.at, %.preheader.2 ], [ %i.aw, %.preheader.3 ], [ %i.az, %.preheader.4 ], [ %i.bc, %.preheader.5 ], [ %i.bf, %.preheader.6 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %i.bl = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !21
  store i64 %i.bm, ptr %.lcssa, align 8, !tbaa !21
  %i.bn = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !23
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !23
  store i64 %i.w, ptr %i.bl, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !23
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !23
  store i64 %i.u, ptr %i.v, align 8, !tbaa !21
  store ptr %i.bk, ptr %i.bp, align 8, !tbaa !23
  %i.br = lshr i64 %i.r, 12
  %i.bs = and i64 %i.br, 262143
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bs
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.i, %bb.e, %bb.g, %bb.h
  %.1.i = phi ptr [ %i.ac, %bb.e ], [ %i.ap, %bb.g ], [ %i.bi, %bb.h ], [ %i.bt, %bb.i ] ; 2 uses
  %i.bu = icmp eq ptr %.1.i, null
  br i1 %i.bu, label %extent_can_acquire_neighbor.exit.thread, label %bb.j

bb.j:                                             ; preds = %rtree_leaf_elm_lookup.exit
  %i.bv = load atomic ptr, ptr %.1.i acquire, align 8, !noalias !37
  %i.bw = ptrtoint ptr %i.bv to i64               ; 3 uses
  %8 = lshr i64 %i.bw, 2
  %9 = trunc i64 %8 to i32
  %i.bx = and i32 %9, 7                           ; 2 uses
  %i.by = shl i64 %i.bw, 16
  %i.bz = ashr exact i64 %i.by, 16
  %i.ca = and i64 %i.bz, -128                     ; 2 uses
  %i.cb = inttoptr i64 %i.ca to ptr               ; 4 uses
  %i.cc = icmp eq i64 %i.ca, 0
  br i1 %i.cc, label %extent_can_acquire_neighbor.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val35 = load i64, ptr %2, align 8, !tbaa !17  ; 3 uses
  br i1 %5, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cd = and i64 %i.bw, 2
  %.not = icmp eq i64 %i.cd, 0
  br i1 %.not, label %extent_neighbor_head_state_mergeable.exit, label %extent_can_acquire_neighbor.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.ce = and i64 %.val35, 17592186044416
  %.not49 = icmp eq i64 %i.ce, 0
  br i1 %.not49, label %extent_neighbor_head_state_mergeable.exit, label %extent_can_acquire_neighbor.exit.thread

extent_neighbor_head_state_mergeable.exit:        ; preds = %bb.m, %bb.l
  %i.cf = icmp eq i32 %3, 0
  br i1 %i.cf, label %bb.n, label %bb.q

bb.n:                                             ; preds = %extent_neighbor_head_state_mergeable.exit
  %.not.i = icmp eq i32 %i.bx, %4
  br i1 %.not.i, label %bb.o, label %extent_can_acquire_neighbor.exit.thread

bb.o:                                             ; preds = %bb.n
  %.val38.pre54 = load i64, ptr %i.cb, align 128, !tbaa !17 ; 3 uses
  br i1 %6, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = xor i64 %.val38.pre54, %.val35
  %i.ch = and i64 %i.cg, 8192
  %.not50 = icmp eq i64 %i.ch, 0
  br i1 %.not50, label %bb.r, label %extent_can_acquire_neighbor.exit.thread

bb.q:                                             ; preds = %extent_neighbor_head_state_mergeable.exit
  %i.ci = icmp eq i32 %i.bx, 0
  br i1 %i.ci, label %extent_can_acquire_neighbor.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q
  %.val38.pre = load i64, ptr %i.cb, align 128, !tbaa !17
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.p, %bb.o
  %.val38 = phi i64 [ %.val38.pre, %._crit_edge ], [ %.val38.pre54, %bb.p ], [ %.val38.pre54, %bb.o ] ; 2 uses
  %10 = lshr i64 %.val38, 14
  %11 = trunc i64 %10 to i32
  %i.cj = and i32 %11, 1
  %.not17.i = icmp eq i32 %i.cj, %3
  br i1 %.not17.i, label %bb.s, label %extent_can_acquire_neighbor.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ck = load i8, ptr @je_opt_retain, align 1, !tbaa !27, !range !38, !noundef !39
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = xor i64 %.val38, %.val35
  %i.cn = and i64 %i.cm, 4095
  %.not18.i = icmp eq i64 %i.cn, 0
  br i1 %.not18.i, label %bb.u, label %extent_can_acquire_neighbor.exit.thread

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.cb, i32 noundef 5)
  br label %extent_can_acquire_neighbor.exit.thread

extent_can_acquire_neighbor.exit.thread:          ; preds = %bb.u, %bb.j, %bb.p, %bb.q, %bb.r, %bb.n, %bb.t, %bb.l, %bb.m, %rtree_leaf_elm_lookup.exit
  %.1 = phi ptr [ null, %rtree_leaf_elm_lookup.exit ], [ %i.cb, %bb.u ], [ null, %bb.j ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.n ], [ null, %bb.t ], [ null, %bb.l ], [ null, %bb.m ]
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
  br i1 %i.c, label %bb.b, label %bb.c, !prof !25

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
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i = load i64, ptr %2, align 8, !tbaa !17  ; 2 uses
  %sh.diff.i = lshr i64 %.val.i, 43
  %i.i = and i64 %sh.diff.i, 2
  %i.j = lshr i64 %.val.i, 15
  %i.k = and i64 %i.j, 28
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %.sroa.7.0.i = phi i64 [ %i.i, %bb.e ], [ 0, %bb.d ]
  %i.l = phi i64 [ %i.k, %bb.e ], [ 0, %bb.d ]
  %i.m = ptrtoint ptr %2 to i64
  %i.n = and i64 %i.m, 281474976710655
  %i.o = zext i32 %3 to i64
  %i.p = shl i64 %i.o, 48
  %i.q = zext i1 %4 to i64
  %i.r = or disjoint i64 %i.l, %i.p
  %i.s = or disjoint i64 %i.r, %.sroa.7.0.i
  %i.t = or disjoint i64 %i.s, %i.q
  %i.u = or i64 %i.t, %i.n
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  store atomic ptr %i.v, ptr %i.f release, align 8
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %emap_rtree_write_acquired.exit, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  store atomic ptr %i.v, ptr %i.g release, align 8
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
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.b = ptrtoint ptr %.val to i64
  %i.c = and i64 %i.b, 4095
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %.val, i64 %i.d
  %i.f = ptrtoint ptr %i.e to i64                 ; 6 uses
  %i.g = lshr i64 %i.f, 30
  %i.h = and i64 %i.g, 15
  %i.i = and i64 %i.f, -1073741824                ; 11 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.h ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21   ; 3 uses
  %i.l = icmp eq i64 %i.k, %i.i
  br i1 %i.l, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.o = lshr i64 %i.f, 12
  %i.p = and i64 %i.o, 262143
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  br label %rtree_leaf_elm_lookup.exit23

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21
  %i.t = icmp eq i64 %i.s, %i.i
  br i1 %i.t, label %bb.d, label %.preheader30.preheader, !prof !22

.preheader30.preheader:                           ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21
  %i.w = icmp eq i64 %i.v, %i.i
  br i1 %i.w, label %bb.f, label %.preheader30.1, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23   ; 2 uses
  store i64 %i.k, ptr %i.r, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !23
  store i64 %i.i, ptr %i.j, align 8, !tbaa !21
  store ptr %i.y, ptr %i.z, align 8, !tbaa !23
  %i.ab = lshr i64 %i.f, 12
  %i.ac = and i64 %i.ab, 262143
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ac
  br label %rtree_leaf_elm_lookup.exit23

.preheader30.1:                                   ; preds = %.preheader30.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !21
  %i.ag = icmp eq i64 %i.af, %i.i
  br i1 %i.ag, label %bb.f, label %.preheader30.2, !prof !22

.preheader30.2:                                   ; preds = %.preheader30.1
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !21
  %i.aj = icmp eq i64 %i.ai, %i.i
  br i1 %i.aj, label %bb.f, label %.preheader30.3, !prof !22

.preheader30.3:                                   ; preds = %.preheader30.2
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.am = icmp eq i64 %i.al, %i.i
  br i1 %i.am, label %bb.f, label %.preheader30.4, !prof !22

.preheader30.4:                                   ; preds = %.preheader30.3
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !21
  %i.ap = icmp eq i64 %i.ao, %i.i
  br i1 %i.ap, label %bb.f, label %.preheader30.5, !prof !22

.preheader30.5:                                   ; preds = %.preheader30.4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21
  %i.as = icmp eq i64 %i.ar, %i.i
  br i1 %i.as, label %bb.f, label %.preheader30.6, !prof !22

.preheader30.6:                                   ; preds = %.preheader30.5
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !21
  %i.av = icmp eq i64 %i.au, %i.i
  br i1 %i.av, label %bb.f, label %bb.e, !prof !22

bb.e:                                             ; preds = %.preheader30.6
  %i.aw = tail call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %i.f, i1 noundef zeroext %4, i1 noundef zeroext %5) #6
end_hunk_0
begin_hunk_1_@je_emap_deregister_boundary:bb.a
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
  br i1 %i.a, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #6
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %3, %bb.b ], [ %i.b, %bb.c ]  ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val7 = load i64, ptr %i.c, align 8, !tbaa !24
  %i.d = and i64 %.val7, -4096                    ; 2 uses
  %i.e = icmp ugt i64 %i.d, 8192
  br i1 %i.e, label %bb.d, label %rtree_clear_range.exit

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.f = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !18  ; 2 uses
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
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !21 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.ak = lshr i64 %.0.i25.i, 12
  %i.al = and i64 %i.ak, 262143
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.al
  br label %rtree_leaf_elm_lookup.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.q, align 8, !tbaa !21
  %i.ao = icmp eq i64 %i.an, %i.ae
  br i1 %i.ao, label %bb.i, label %.preheader.preheader.i, !prof !22

.preheader.preheader.i:                           ; preds = %bb.h
  %i.ap = load i64, ptr %i.s, align 8, !tbaa !21
  %i.aq = icmp eq i64 %i.ap, %i.ae
  br i1 %i.aq, label %bb.k, label %.preheader.1.i, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !23  ; 2 uses
  store i64 %i.ag, ptr %i.q, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !23
  store ptr %i.at, ptr %i.r, align 8, !tbaa !23
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !21
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !23
  %i.au = lshr i64 %.0.i25.i, 12
  %i.av = and i64 %i.au, 262143
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.av
  br label %rtree_leaf_elm_lookup.exit.i.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.ax = load i64, ptr %i.t, align 8, !tbaa !21
  %i.ay = icmp eq i64 %i.ax, %i.ae
  br i1 %i.ay, label %bb.k, label %.preheader.2.i, !prof !22

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.az = load i64, ptr %i.u, align 8, !tbaa !21
  %i.ba = icmp eq i64 %i.az, %i.ae
  br i1 %i.ba, label %bb.k, label %.preheader.3.i, !prof !22

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.bb = load i64, ptr %i.v, align 8, !tbaa !21
  %i.bc = icmp eq i64 %i.bb, %i.ae
  br i1 %i.bc, label %bb.k, label %.preheader.4.i, !prof !22

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.bd = load i64, ptr %i.w, align 8, !tbaa !21
  %i.be = icmp eq i64 %i.bd, %i.ae
  br i1 %i.be, label %bb.k, label %.preheader.5.i, !prof !22

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.bf = load i64, ptr %i.x, align 8, !tbaa !21
  %i.bg = icmp eq i64 %i.bf, %i.ae
  br i1 %i.bg, label %bb.k, label %.preheader.6.i, !prof !22

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.bh = load i64, ptr %i.y, align 8, !tbaa !21
  %i.bi = icmp eq i64 %i.bh, %i.ae
  br i1 %i.bi, label %bb.k, label %bb.j, !prof !22

bb.j:                                             ; preds = %.preheader.6.i
  %i.bj = call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, i64 noundef %.0.i25.i, i1 noundef zeroext true, i1 noundef zeroext false) #6
  br label %rtree_leaf_elm_lookup.exit.i.i

bb.k:                                             ; preds = %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.lcssa.i = phi ptr [ %i.s, %.preheader.preheader.i ], [ %i.t, %.preheader.1.i ], [ %i.u, %.preheader.2.i ], [ %i.v, %.preheader.3.i ], [ %i.w, %.preheader.4.i ], [ %i.x, %.preheader.5.i ], [ %i.y, %.preheader.6.i ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !23 ; 2 uses
  %i.bm = getelementptr i8, ptr %.lcssa.i, i64 -16 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !21
  store i64 %i.bn, ptr %.lcssa.i, align 8, !tbaa !21
  %i.bo = getelementptr i8, ptr %.lcssa.i, i64 -8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !23
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !23
  store i64 %i.ag, ptr %i.bm, align 8, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !23
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !23
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !21
  store ptr %i.bl, ptr %i.bq, align 8, !tbaa !23
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
  br i1 %.not.i.i, label %rtree_clear_range.exit, label %bb.e, !llvm.loop !0

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
  br i1 %i.a, label %bb.b, label %bb.c, !prof !25

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
  %.val24 = load i64, ptr %2, align 8, !tbaa !17  ; 2 uses
  %i.c = lshr i64 %.val24, 44
  %i.d = trunc i64 %i.c to i8
  %i.e = and i8 %i.d, 1                           ; 2 uses
  %6 = lshr i64 %.val24, 17                       ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val26 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.g = ptrtoint ptr %.val26 to i64              ; 6 uses
  %i.h = lshr i64 %i.g, 30
  %i.i = and i64 %i.h, 15
  %i.j = and i64 %i.g, -1073741824                ; 11 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %i.i ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = lshr i64 %i.g, 12
  %i.q = and i64 %i.p, 262143
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  br label %rtree_leaf_elm_lookup.exit.i19

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 256 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21
  %i.u = icmp eq i64 %i.t, %i.j
  br i1 %i.u, label %bb.g, label %.preheader87.preheader, !prof !22

.preheader87.preheader:                           ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 272 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21
  %i.x = icmp eq i64 %i.w, %i.j
  br i1 %i.x, label %bb.i, label %.preheader87.1, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 264 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  store i64 %i.l, ptr %i.s, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !23
  store i64 %i.j, ptr %i.k, align 8, !tbaa !21
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !23
  %i.ac = lshr i64 %i.g, 12
  %i.ad = and i64 %i.ac, 262143
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ad
  br label %rtree_leaf_elm_lookup.exit.i19

.preheader87.1:                                   ; preds = %.preheader87.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 288 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !21
  %i.ah = icmp eq i64 %i.ag, %i.j
  br i1 %i.ah, label %bb.i, label %.preheader87.2, !prof !22

.preheader87.2:                                   ; preds = %.preheader87.1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i, i64 304 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !21
  %i.ak = icmp eq i64 %i.aj, %i.j
  br i1 %i.ak, label %bb.i, label %.preheader87.3, !prof !22

.preheader87.3:                                   ; preds = %.preheader87.2
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 320 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !21
  %i.an = icmp eq i64 %i.am, %i.j
  br i1 %i.an, label %bb.i, label %.preheader87.4, !prof !22

.preheader87.4:                                   ; preds = %.preheader87.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 336 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !21
  %i.aq = icmp eq i64 %i.ap, %i.j
  br i1 %i.aq, label %bb.i, label %.preheader87.5, !prof !22

.preheader87.5:                                   ; preds = %.preheader87.4
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 352 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !21
  %i.at = icmp eq i64 %i.as, %i.j
  br i1 %i.at, label %bb.i, label %.preheader87.6, !prof !22

.preheader87.6:                                   ; preds = %.preheader87.5
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 368 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !21
  %i.aw = icmp eq i64 %i.av, %i.j
  br i1 %i.aw, label %bb.i, label %bb.h, !prof !22

bb.h:                                             ; preds = %.preheader87.6
  %i.ax = call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, i64 noundef %i.g, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %rtree_leaf_elm_lookup.exit.i19

bb.i:                                             ; preds = %.preheader87.6, %.preheader87.5, %.preheader87.4, %.preheader87.3, %.preheader87.2, %.preheader87.1, %.preheader87.preheader
  %.lcssa92 = phi ptr [ %i.v, %.preheader87.preheader ], [ %i.af, %.preheader87.1 ], [ %i.ai, %.preheader87.2 ], [ %i.al, %.preheader87.3 ], [ %i.ao, %.preheader87.4 ], [ %i.ar, %.preheader87.5 ], [ %i.au, %.preheader87.6 ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.lcssa92, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23 ; 2 uses
  %i.ba = getelementptr i8, ptr %.lcssa92, i64 -16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !21
  store i64 %i.bb, ptr %.lcssa92, align 8, !tbaa !21
  %i.bc = getelementptr i8, ptr %.lcssa92, i64 -8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !23
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !23
  store i64 %i.l, ptr %i.ba, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !23
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !23
  store i64 %i.j, ptr %i.k, align 8, !tbaa !21
  store ptr %i.az, ptr %i.be, align 8, !tbaa !23
  %i.bg = lshr i64 %i.g, 12
  %i.bh = and i64 %i.bg, 262143
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bh
  br label %rtree_leaf_elm_lookup.exit.i19

rtree_leaf_elm_lookup.exit.i19:                   ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %.1.i.i20 = phi ptr [ %i.r, %bb.e ], [ %i.ae, %bb.g ], [ %i.ax, %bb.h ], [ %i.bi, %bb.i ] ; 2 uses
  %i.bj = icmp eq ptr %.1.i.i20, null
  br i1 %i.bj, label %rtree_write.exit21, label %bb.j

bb.j:                                             ; preds = %rtree_leaf_elm_lookup.exit.i19
  %i.bk = ptrtoint ptr %2 to i64
  %i.bl = and i64 %i.bk, 281474976710655
  %i.bm = zext i32 %3 to i64
  %i.bn = shl i64 %i.bm, 48
  %i.bo = zext i1 %4 to i64
  %i.bp = shl nuw nsw i8 %i.e, 1
  %i.bq = zext nneg i8 %i.bp to i64
  %7 = shl nuw nsw i64 %6, 2
  %8 = and i64 %7, 28
  %i.br = or disjoint i64 %8, %i.bn
  %i.bs = or disjoint i64 %i.br, %i.bq
  %i.bt = or disjoint i64 %i.bs, %i.bo
  %i.bu = or i64 %i.bt, %i.bl
  %i.bv = inttoptr i64 %i.bu to ptr
  store atomic ptr %i.bv, ptr %.1.i.i20 release, align 8
  br label %rtree_write.exit21

rtree_write.exit21:                               ; preds = %rtree_leaf_elm_lookup.exit.i19, %bb.j
  br i1 %4, label %bb.k, label %rtree_write.exit

bb.k:                                             ; preds = %rtree_write.exit21
  %i.bw = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.bw, align 8, !tbaa !24
  %i.bx = and i64 %.val, -4096                    ; 2 uses
  %i.by = icmp ugt i64 %i.bx, 4096
  br i1 %i.by, label %bb.l, label %rtree_write.exit

bb.l:                                             ; preds = %bb.k
  %.val22 = load ptr, ptr %i.f, align 8, !tbaa !18 ; 2 uses
  %i.bz = ptrtoint ptr %.val22 to i64
  %i.ca = and i64 %i.bz, 4095
  %i.cb = sub nsw i64 0, %i.ca
  %i.cc = getelementptr inbounds i8, ptr %.val22, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bx
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = add i64 %i.ce, -4096                    ; 6 uses
  %i.cg = lshr i64 %i.cf, 30
  %i.ch = and i64 %i.cg, 15
  %i.ci = and i64 %i.cf, -1073741824              ; 11 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %i.ch ; 6 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !21 ; 3 uses
  %i.cl = icmp eq i64 %i.ck, %i.ci
  br i1 %i.cl, label %bb.m, label %bb.n, !prof !22

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !23
  %i.co = lshr i64 %i.cf, 12
  %i.cp = and i64 %i.co, 262143
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cp
  br label %rtree_leaf_elm_lookup.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i, i64 256 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !21
  %i.ct = icmp eq i64 %i.cs, %i.ci
  br i1 %i.ct, label %bb.o, label %.preheader.preheader, !prof !22

.preheader.preheader:                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i, i64 272 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !21
  %i.cw = icmp eq i64 %i.cv, %i.ci
  br i1 %i.cw, label %bb.q, label %.preheader.1, !prof !22

bb.o:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i, i64 264 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !23 ; 2 uses
  store i64 %i.ck, ptr %i.cr, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !23
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !23
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !21
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !23
  %i.db = lshr i64 %i.cf, 12
  %i.dc = and i64 %i.db, 262143
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dc
  br label %rtree_leaf_elm_lookup.exit.i

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i, i64 288 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !21
  %i.dg = icmp eq i64 %i.df, %i.ci
  br i1 %i.dg, label %bb.q, label %.preheader.2, !prof !22

.preheader.2:                                     ; preds = %.preheader.1
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i, i64 304 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !21
  %i.dj = icmp eq i64 %i.di, %i.ci
  br i1 %i.dj, label %bb.q, label %.preheader.3, !prof !22

.preheader.3:                                     ; preds = %.preheader.2
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i, i64 320 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !21
  %i.dm = icmp eq i64 %i.dl, %i.ci
  br i1 %i.dm, label %bb.q, label %.preheader.4, !prof !22

.preheader.4:                                     ; preds = %.preheader.3
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i, i64 336 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !21
  %i.dp = icmp eq i64 %i.do, %i.ci
  br i1 %i.dp, label %bb.q, label %.preheader.5, !prof !22

.preheader.5:                                     ; preds = %.preheader.4
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i, i64 352 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !21
  %i.ds = icmp eq i64 %i.dr, %i.ci
  br i1 %i.ds, label %bb.q, label %.preheader.6, !prof !22

.preheader.6:                                     ; preds = %.preheader.5
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i, i64 368 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !21
  %i.dv = icmp eq i64 %i.du, %i.ci
  br i1 %i.dv, label %bb.q, label %bb.p, !prof !22

bb.p:                                             ; preds = %.preheader.6
  %i.dw = call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, i64 noundef %i.cf, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %rtree_leaf_elm_lookup.exit.i

bb.q:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.cu, %.preheader.preheader ], [ %i.de, %.preheader.1 ], [ %i.dh, %.preheader.2 ], [ %i.dk, %.preheader.3 ], [ %i.dn, %.preheader.4 ], [ %i.dq, %.preheader.5 ], [ %i.dt, %.preheader.6 ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !23 ; 2 uses
  %i.dz = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !21
  store i64 %i.ea, ptr %.lcssa, align 8, !tbaa !21
  %i.eb = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !23
  store ptr %i.ec, ptr %i.dx, align 8, !tbaa !23
  store i64 %i.ck, ptr %i.dz, align 8, !tbaa !21
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !23
  store ptr %i.ee, ptr %i.eb, align 8, !tbaa !23
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !21
  store ptr %i.dy, ptr %i.ed, align 8, !tbaa !23
  %i.ef = lshr i64 %i.cf, 12
  %i.eg = and i64 %i.ef, 262143
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.eg
  br label %rtree_leaf_elm_lookup.exit.i

rtree_leaf_elm_lookup.exit.i:                     ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.1.i.i = phi ptr [ %i.cq, %bb.m ], [ %i.dd, %bb.o ], [ %i.dw, %bb.p ], [ %i.eh, %bb.q ] ; 2 uses
  %i.ei = icmp eq ptr %.1.i.i, null
  br i1 %i.ei, label %rtree_write.exit, label %bb.r

bb.r:                                             ; preds = %rtree_leaf_elm_lookup.exit.i
  %i.ej = ptrtoint ptr %2 to i64
  %i.ek = and i64 %i.ej, 281474976710654
  %i.el = zext i32 %3 to i64
  %i.em = shl i64 %i.el, 48
  %i.en = shl nuw nsw i8 %i.e, 1
  %i.eo = zext nneg i8 %i.en to i64
  %9 = shl nuw nsw i64 %6, 2
  %10 = and i64 %9, 28
  %i.ep = or disjoint i64 %10, %i.em
  %i.eq = or disjoint i64 %i.ep, %i.eo
  %i.er = or i64 %i.eq, %i.ek
  %i.es = or disjoint i64 %i.er, 1
  %i.et = inttoptr i64 %i.es to ptr
  store atomic ptr %i.et, ptr %.1.i.i release, align 8
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
  br i1 %i.a, label %bb.b, label %bb.c, !prof !25

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
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.val, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %4, ptr %i.f, align 8, !tbaa !24
  store i64 0, ptr %8, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = call fastcc zeroext i1 @emap_rtree_leaf_elms_lookup(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, ptr noundef nonnull %8, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %2, ptr noundef nonnull %i.g) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.k = call fastcc zeroext i1 @emap_rtree_leaf_elms_lookup(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i, ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) ; 0 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !31
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !34
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
  %i.a = load ptr, ptr %2, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %3, align 8, !tbaa !17  ; 2 uses
  %sh.diff.i = lshr i64 %.val.i, 43
  %i.e = and i64 %sh.diff.i, 2
  %i.f = lshr i64 %.val.i, 15
  %i.g = and i64 %i.f, 28
  %i.h = or disjoint i64 %i.e, %i.g
  %i.i = or disjoint i64 %i.h, 65302194596872192
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.j = phi i64 [ %i.i, %bb.b ], [ 65302194596872192, %bb.a ]
  %i.k = ptrtoint ptr %3 to i64
  %i.l = and i64 %i.k, 281474976710655
  %i.m = or i64 %i.j, %i.l
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  store atomic ptr %i.n, ptr %i.a release, align 8
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %emap_rtree_write_acquired.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  store atomic ptr %i.n, ptr %i.c release, align 8
  br label %emap_rtree_write_acquired.exit

emap_rtree_write_acquired.exit:                   ; preds = %.critedge.i, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %i.s = icmp eq ptr %5, null
  br i1 %i.s, label %.critedge.i12, label %bb.d

bb.d:                                             ; preds = %emap_rtree_write_acquired.exit
  %.val.i10 = load i64, ptr %5, align 8, !tbaa !17 ; 2 uses
  %sh.diff.i11 = lshr i64 %.val.i10, 43
  %i.t = and i64 %sh.diff.i11, 2
  %i.u = lshr i64 %.val.i10, 15
  %i.v = and i64 %i.u, 28
  %i.w = or disjoint i64 %i.t, %i.v
  %i.x = or disjoint i64 %i.w, 65302194596872192
  br label %.critedge.i12

.critedge.i12:                                    ; preds = %bb.d, %emap_rtree_write_acquired.exit
  %i.y = phi i64 [ %i.x, %bb.d ], [ 65302194596872192, %emap_rtree_write_acquired.exit ]
  %i.z = ptrtoint ptr %5 to i64
  %i.aa = and i64 %i.z, 281474976710655
  %i.ab = or i64 %i.y, %i.aa
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  store atomic ptr %i.ac, ptr %i.p release, align 8
  %.not.i14 = icmp eq ptr %i.r, null
  br i1 %.not.i14, label %emap_rtree_write_acquired.exit15, label %bb.e

bb.e:                                             ; preds = %.critedge.i12
  store atomic ptr %i.ac, ptr %i.r release, align 8
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
  br i1 %i.a, label %bb.b, label %bb.c, !prof !25

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store atomic ptr inttoptr (i64 65302194596872192 to ptr), ptr %i.b release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %.not16 = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  store atomic ptr inttoptr (i64 65302194596872192 to ptr), ptr %i.f release, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0.in = phi ptr [ %i.c, %bb.d ], [ %i.e, %bb.c ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !28  ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !31
  %i.h = icmp eq ptr %3, null
end_hunk_1
begin_hunk_2_@je_emap_do_assert_mapped:bb.a
  %i.bd = getelementptr i8, ptr %.lcssa.i, i64 -8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !23, !noalias !44
  store ptr %i.be, ptr %i.az, align 8, !tbaa !23, !noalias !44
  store i64 %i.m, ptr %i.bb, align 8, !tbaa !21, !noalias !44
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !23, !noalias !44
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !23, !noalias !44
  store i64 %i.k, ptr %i.l, align 8, !tbaa !21, !noalias !44
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !23, !noalias !44
  %i.bh = lshr i64 %i.h, 12
  %i.bi = and i64 %i.bh, 262143
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bi
  br label %rtree_read.exit

rtree_read.exit:                                  ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i.i = phi ptr [ %i.s, %bb.d ], [ %i.af, %bb.f ], [ %i.ay, %bb.g ], [ %i.bj, %bb.h ]
  %i.bk = load atomic ptr, ptr %.1.i.i monotonic, align 8, !noalias !45 ; 0 uses
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
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.b = ptrtoint ptr %.val to i64
  %i.c = and i64 %i.b, 4095
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %.val, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.f = icmp eq ptr %0, null
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 16         ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call fastcc void @rtree_read_independent(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i64 noundef %i.g, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %.val917 = load ptr, ptr %i.a, align 8, !tbaa !18
  %.val1018 = load i64, ptr %i.h, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %5) #6
  br label %tsdn_rtree_ctx.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call fastcc void @rtree_read_independent(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.i, i64 noundef %i.g, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %.val9 = load ptr, ptr %i.a, align 8, !tbaa !18
  %.val10 = load i64, ptr %i.h, align 8, !tbaa !24
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !22

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23   ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23
  store ptr %i.u, ptr %i.r, align 8, !tbaa !23
  store i64 %i.c, ptr %i.d, align 8, !tbaa !21
  store ptr %i.s, ptr %i.t, align 8, !tbaa !23
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !21
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !22

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !21
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !22

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !21
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !22

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !21
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !22

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !22

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !21
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !22

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !23 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !21
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !21
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !23
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !23
  store i64 %i.e, ptr %i.at, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !23
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !23
  store i64 %i.c, ptr %i.d, align 8, !tbaa !21
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !23
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ] ; 2 uses
  %i.bc = icmp eq ptr %.1.i, null
  br i1 %i.bc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rtree_leaf_elm_lookup.exit
  %i.bd = load atomic ptr, ptr %.1.i acquire, align 8, !noalias !48
  %i.be = ptrtoint ptr %i.bd to i64               ; 5 uses
  %i.bf = lshr i64 %i.be, 48
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = trunc i64 %i.be to i8
  %i.bi = and i8 %i.bh, 1
  %5 = lshr i64 %i.be, 1
  %6 = trunc i64 %5 to i8
  %i.bj = and i8 %6, 1
  %7 = lshr i64 %i.be, 2
  %8 = trunc i64 %7 to i32
  %i.bk = and i32 %8, 7
  %i.bl = shl i64 %i.be, 16
  %i.bm = ashr exact i64 %i.bl, 16
  %i.bn = and i64 %i.bm, -128
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %4, align 8, !tbaa !50
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bg, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !51
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.bk, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !51
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %i.bj, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !27
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 %i.bi, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !27
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

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !29}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTS8hpdata_s", !14, i64 0}
!16 = !{!"edata_s", !13, i64 0, !14, i64 8, !9, i64 16, !15, i64 24, !13, i64 32, !9, i64 40, !9, i64 64}
!17 = !{!16, !13, i64 0}
!18 = !{!16, !14, i64 8}
!19 = !{!"p1 _ZTS16rtree_leaf_elm_s", !14, i64 0}
!20 = !{!"rtree_ctx_cache_elm_s", !13, i64 0, !19, i64 8}
!21 = !{!20, !13, i64 0}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!20, !19, i64 8}
!24 = !{!9, !9, i64 0}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{!"_Bool", !9, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!19, !19, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"emap_prepare_s", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24}
!31 = !{!30, !19, i64 0}
!32 = !{!30, !19, i64 8}
!33 = !{!30, !19, i64 16}
!34 = !{!30, !19, i64 24}
!35 = distinct !{!35, !"rtree_leaf_elm_read"}
!36 = distinct !{!36, !35, !"rtree_leaf_elm_read: argument 0"}
!37 = !{!36}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = distinct !{!40, !"rtree_read"}
!41 = distinct !{!41, !40, !"rtree_read: argument 0"}
!42 = distinct !{!42, !"rtree_leaf_elm_read"}
!43 = distinct !{!43, !42, !"rtree_leaf_elm_read: argument 0"}
!44 = !{!41}
!45 = !{!43, !41}
!46 = distinct !{!46, !"rtree_leaf_elm_read"}
!47 = distinct !{!47, !46, !"rtree_leaf_elm_read: argument 0"}
!48 = !{!47}
!49 = !{!"p1 _ZTS7edata_s", !14, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!10, !10, i64 0}
end_hunk_2
