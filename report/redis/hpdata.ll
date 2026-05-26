inline.NumInlined: 82
inline.NumDeleted: 20
begin_hunk_0_@je_hpdata_age_heap_remove:bb.a
  br i1 %.not86.i.i41, label %._crit_edge92, label %.lr.ph91, !llvm.loop !26

._crit_edge92:                                    ; preds = %bb.bs, %.thread168, %phn_merge.exit11.i37
  %.076.i.i39.lcssa = phi ptr [ %.0.i10.i38, %phn_merge.exit11.i37 ], [ %.075.i.i4090, %.thread168 ], [ %.0.i8.i47, %bb.bs ]
  %i.kw = ptrtoint ptr %.0.i10.i38 to i64
  %i.kx = add i64 %i.kw, 40
  %i.ky = inttoptr i64 %i.kx to ptr
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !16 ; 2 uses
  %.not87.i.i52 = icmp eq ptr %i.la, null
  br i1 %.not87.i.i52, label %ph_merge_children.exit67.thread79, label %.preheader83

.preheader83:                                     ; preds = %._crit_edge92, %bb.by
  %.278.i.i53 = phi ptr [ %.0.i7.i59, %bb.by ], [ %.076.i.i39.lcssa, %._crit_edge92 ]
  %.2.i.i54 = phi ptr [ %i.lf, %bb.by ], [ %.0.i10.i38, %._crit_edge92 ] ; 7 uses
  %.0.i.i55 = phi ptr [ %i.mh, %bb.by ], [ %i.la, %._crit_edge92 ] ; 7 uses
  %i.lb = ptrtoint ptr %.0.i.i55 to i64
  %i.lc = add i64 %i.lb, 40
  %i.ld = inttoptr i64 %i.lc to ptr               ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 3 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !16 ; 3 uses
  %i.lg = ptrtoint ptr %.2.i.i54 to i64
  %i.lh = add i64 %i.lg, 40
  %i.li = inttoptr i64 %i.lh to ptr               ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 2 uses
  store ptr null, ptr %i.lj, align 8, !tbaa !16
  store ptr null, ptr %i.le, align 8, !tbaa !16
  %i.lk = icmp eq ptr %.0.i.i55, null
  br i1 %i.lk, label %phn_merge.exit.i58, label %bb.bt

bb.bt:                                            ; preds = %.preheader83
  %i.ll = getelementptr i8, ptr %.2.i.i54, i64 8
  %.2.i.i54.val = load i64, ptr %i.ll, align 8, !tbaa !19
  %i.lm = getelementptr i8, ptr %.0.i.i55, i64 8
  %.0.i.i55.val = load i64, ptr %i.lm, align 8, !tbaa !19
  %i.ln = icmp ult i64 %.2.i.i54.val, %.0.i.i55.val
  br i1 %i.ln, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  store ptr %.2.i.i54, ptr %i.ld, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 16 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !25 ; 3 uses
  store ptr %i.lp, ptr %i.le, align 8, !tbaa !16
  %.not.i19.i63 = icmp eq ptr %i.lp, null
  br i1 %.not.i19.i63, label %phn_merge_ordered.exit20.i64, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = add i64 %i.lq, 40
  %i.ls = inttoptr i64 %i.lr to ptr
  store ptr %.0.i.i55, ptr %i.ls, align 8, !tbaa !18
  br label %phn_merge_ordered.exit20.i64

phn_merge_ordered.exit20.i64:                     ; preds = %bb.bv, %bb.bu
  store ptr %.0.i.i55, ptr %i.lo, align 8, !tbaa !25
  br label %phn_merge.exit.i58

bb.bw:                                            ; preds = %bb.bt
  store ptr %.0.i.i55, ptr %i.li, align 8, !tbaa !18
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 16 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !25 ; 3 uses
  store ptr %i.lu, ptr %i.lj, align 8, !tbaa !16
  %.not.i21.i56 = icmp eq ptr %i.lu, null
  br i1 %.not.i21.i56, label %phn_merge_ordered.exit22.i57, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = add i64 %i.lv, 40
  %i.lx = inttoptr i64 %i.lw to ptr
  store ptr %.2.i.i54, ptr %i.lx, align 8, !tbaa !18
  br label %phn_merge_ordered.exit22.i57

phn_merge_ordered.exit22.i57:                     ; preds = %bb.bx, %bb.bw
  store ptr %.2.i.i54, ptr %i.lt, align 8, !tbaa !25
  br label %phn_merge.exit.i58

phn_merge.exit.i58:                               ; preds = %phn_merge_ordered.exit22.i57, %phn_merge_ordered.exit20.i64, %.preheader83
  %.0.i7.i59 = phi ptr [ %.0.i.i55, %phn_merge_ordered.exit22.i57 ], [ %.2.i.i54, %.preheader83 ], [ %.2.i.i54, %phn_merge_ordered.exit20.i64 ] ; 3 uses
  %i.ly = icmp eq ptr %i.lf, null
  br i1 %i.ly, label %ph_merge_children.exit67.thread79, label %bb.by

bb.by:                                            ; preds = %phn_merge.exit.i58
  %i.lz = ptrtoint ptr %.278.i.i53 to i64
  %i.ma = add i64 %i.lz, 40
  %i.mb = inttoptr i64 %i.ma to ptr
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store ptr %.0.i7.i59, ptr %i.mc, align 8, !tbaa !16
  %i.md = ptrtoint ptr %i.lf to i64
  %i.me = add i64 %i.md, 40
  %i.mf = inttoptr i64 %i.me to ptr
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !16
  br label %.preheader83

ph_merge_children.exit67.thread79:                ; preds = %phn_merge.exit.i58, %._crit_edge92, %bb.bd
  %.0.i6282 = phi ptr [ %i.in, %bb.bd ], [ %.0.i10.i38, %._crit_edge92 ], [ %.0.i7.i59, %phn_merge.exit.i58 ] ; 4 uses
  %.not87.i = icmp eq ptr %.0.i175, null
  br i1 %.not87.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %ph_merge_children.exit67.thread79
  %i.mi = ptrtoint ptr %.0.i6282 to i64
  %i.mj = add i64 %i.mi, 40
  %i.mk = inttoptr i64 %i.mj to ptr               ; 2 uses
  store ptr %.0.i175, ptr %i.mk, align 8, !tbaa !18
  br label %.sink.split

bb.ca:                                            ; preds = %ph_merge_children.exit67.thread79
  %i.ml = load ptr, ptr %i.e, align 8, !tbaa !18  ; 3 uses
  %i.mm = ptrtoint ptr %.0.i6282 to i64
  %i.mn = add i64 %i.mm, 40
  %i.mo = inttoptr i64 %i.mn to ptr               ; 3 uses
  store ptr %i.ml, ptr %i.mo, align 8, !tbaa !18
  %.not88.i = icmp eq ptr %i.ml, null
  br i1 %.not88.i, label %bb.cb, label %.sink.split

.sink.split:                                      ; preds = %bb.ca, %bb.bz
  %.sink = phi ptr [ %.0.i175, %bb.bz ], [ %i.ml, %bb.ca ]
  %.sink190 = phi i64 [ 16, %bb.bz ], [ 8, %bb.ca ]
  %.pre-phi101.ph = phi ptr [ %i.mk, %bb.bz ], [ %i.mo, %bb.ca ]
  %i.mp = ptrtoint ptr %.sink to i64
  %i.mq = add i64 %i.mp, 40
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %.sink190
  store ptr %.0.i6282, ptr %i.ms, align 8, !tbaa !30
  br label %bb.cb

bb.cb:                                            ; preds = %.sink.split, %bb.ca
  %.pre-phi101 = phi ptr [ %i.mo, %bb.ca ], [ %.pre-phi101.ph, %.sink.split ]
  %i.mt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !16 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.pre-phi101, i64 8
  store ptr %i.mu, ptr %i.mv, align 8, !tbaa !16
  %.not89.i = icmp eq ptr %i.mu, null
  br i1 %.not89.i, label %ph_remove.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = add i64 %i.mw, 40
  %i.my = inttoptr i64 %i.mx to ptr
  store ptr %.0.i6282, ptr %i.my, align 8, !tbaa !18
  br label %ph_remove.exit

ph_merge_children.exit67.thread:                  ; preds = %bb.bc
  %.not84.i = icmp eq ptr %spec.select.i, null
  br i1 %.not84.i, label %ph_merge_children.exit67.thread.thread, label %bb.cd

bb.cd:                                            ; preds = %ph_merge_children.exit67.thread
  %i.mz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !16 ; 4 uses
  %i.nb = ptrtoint ptr %spec.select.i to i64
  %i.nc = add i64 %i.nb, 40
  %i.nd = inttoptr i64 %i.nc to ptr
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store ptr %i.na, ptr %i.ne, align 8, !tbaa !25
  %.not85.i = icmp eq ptr %i.na, null
  br i1 %.not85.i, label %ph_remove.exit, label %.thread181

.thread181:                                       ; preds = %bb.cd
  %i.nf = ptrtoint ptr %i.na to i64
  %i.ng = add i64 %i.nf, 40
  %i.nh = inttoptr i64 %i.ng to ptr
  store ptr %spec.select.i, ptr %i.nh, align 8, !tbaa !18
  br label %bb.ce

ph_merge_children.exit67.thread.thread:           ; preds = %.thread173, %ph_merge_children.exit67.thread
  %i.ni = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !16 ; 3 uses
  %i.nk = ptrtoint ptr %i.ib to i64
  %i.nl = add i64 %i.nk, 40
  %i.nm = inttoptr i64 %i.nl to ptr
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store ptr %i.nj, ptr %i.nn, align 8, !tbaa !16
  %.not86.i = icmp eq ptr %i.nj, null
  br i1 %.not86.i, label %ph_remove.exit, label %bb.ce

bb.ce:                                            ; preds = %.thread181, %ph_merge_children.exit67.thread.thread
  %i.no = phi ptr [ %i.na, %.thread181 ], [ %i.nj, %ph_merge_children.exit67.thread.thread ]
  %i.np = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nq = ptrtoint ptr %i.no to i64
  %i.nr = add i64 %i.nq, 40
  %i.ns = inttoptr i64 %i.nr to ptr
  store ptr %i.np, ptr %i.ns, align 8, !tbaa !18
  br label %ph_remove.exit

ph_remove.exit:                                   ; preds = %bb.cd, %bb.c, %bb.d, %ph_merge_children.exit, %bb.cb, %bb.cc, %ph_merge_children.exit67.thread.thread, %bb.ce
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @je_hpdata_age_heap_remove_any(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %je_hpdata_age_heap_any.exit.thread, label %je_hpdata_age_heap_any.exit.thread8

je_hpdata_age_heap_any.exit.thread8:              ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = add i64 %i.c, 40
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  %spec.select = select i1 %.not.i.i, ptr %i.a, ptr %i.g ; 2 uses
  tail call void @je_hpdata_age_heap_remove(ptr noundef nonnull %0, ptr noundef nonnull %spec.select)
  br label %je_hpdata_age_heap_any.exit.thread

je_hpdata_age_heap_any.exit.thread:               ; preds = %bb.a, %je_hpdata_age_heap_any.exit.thread8
  %.1.i.i7 = phi ptr [ %spec.select, %je_hpdata_age_heap_any.exit.thread8 ], [ null, %bb.a ]
  ret ptr %.1.i.i7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @je_hpdata_init(ptr noundef writeonly captures(none) initializes((0, 21), (32, 37), (96, 248)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.d, i8 0, i64 5, i1 false)
  store i64 512, ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i8 0, i64 144, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden ptr @je_hpdata_reserve_alloc(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i64 %1, 12                          ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.094 = phi i64 [ 0, %bb.a ], [ %.296, %bb.d ]  ; 3 uses
  %.090 = phi i64 [ 0, %bb.a ], [ %.292, %bb.d ]  ; 3 uses
  %.032 = phi i64 [ 0, %bb.a ], [ %spec.select, %bb.d ] ; 3 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ak, %bb.d ]    ; 2 uses
  %i.c = lshr i64 %.0, 6                          ; 3 uses
  %i.d = and i64 %.0, 63
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = xor i64 %i.f, -1
  %notmask.i4.i = shl nsw i64 -1, %i.d
  %.040.i5.i = and i64 %notmask.i4.i, %i.g        ; 2 uses
  %i.h = icmp eq i64 %.040.i5.i, 0
  br i1 %i.h, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.i = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.j = icmp eq i64 %i.i, 8
  br i1 %i.j, label %fb_urange_iter.exit, label %.lr.ph210

.lr.ph.i:                                         ; preds = %.lr.ph210
  %i.k = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.l = icmp eq i64 %i.k, 8
  br i1 %i.l, label %fb_urange_iter.exit, label %.lr.ph210, !llvm.loop !36

.lr.ph210:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.m = phi i64 [ %i.k, %.lr.ph.i ], [ %i.i, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !36

._crit_edge.loopexit.i:                           ; preds = %.lr.ph210
  %i.q = xor i64 %i.o, -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %.141.i6.lcssa.i = phi i64 [ %.040.i5.i, %bb.b ], [ %i.q, %._crit_edge.loopexit.i ]
  %.039.i7.lcssa.i = phi i64 [ %i.c, %bb.b ], [ %i.m, %._crit_edge.loopexit.i ] ; 2 uses
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i6.lcssa.i, i1 true) ; 2 uses
  %i.s = shl i64 %.039.i7.lcssa.i, 6              ; 2 uses
  %i.t = or disjoint i64 %i.s, %i.r               ; 2 uses
  %or.cond.i = icmp ugt i64 %i.s, 511
  br i1 %or.cond.i, label %fb_urange_iter.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.u = and i64 %.039.i7.lcssa.i, 288230376151711743 ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !35
  %notmask.i.i = shl nsw i64 -1, %i.r
  %.040.i.i = and i64 %i.w, %notmask.i.i          ; 2 uses
  %i.x = icmp eq i64 %.040.i.i, 0
  br i1 %i.x, label %.lr.ph19.i.preheader, label %._crit_edge20.i

.lr.ph19.i.preheader:                             ; preds = %bb.c
  %i.y = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %i.z = icmp eq i64 %i.y, 8
  br i1 %i.z, label %fb_find_impl.exit.i, label %.lr.ph211

.lr.ph19.i:                                       ; preds = %.lr.ph211
  %i.aa = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 8
  br i1 %i.ab, label %fb_find_impl.exit.i, label %.lr.ph211, !llvm.loop !36

.lr.ph211:                                        ; preds = %.lr.ph19.i.preheader, %.lr.ph19.i
  %i.ac = phi i64 [ %i.aa, %.lr.ph19.i ], [ %i.y, %.lr.ph19.i.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph19.i, label %._crit_edge20.i, !llvm.loop !36

._crit_edge20.i:                                  ; preds = %.lr.ph211, %bb.c
  %.141.i.lcssa.i = phi i64 [ %.040.i.i, %bb.c ], [ %i.ae, %.lr.ph211 ]
  %.039.i.lcssa.i = phi i64 [ %i.u, %bb.c ], [ %i.ac, %.lr.ph211 ]
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i, i1 true)
  %i.ah = shl i64 %.039.i.lcssa.i, 6
  %i.ai = or disjoint i64 %i.ah, %i.ag
  br label %fb_find_impl.exit.i

fb_find_impl.exit.i:                              ; preds = %.lr.ph19.i, %.lr.ph19.i.preheader, %._crit_edge20.i
  %.1.i.i = phi i64 [ %i.ai, %._crit_edge20.i ], [ 512, %.lr.ph19.i.preheader ], [ 512, %.lr.ph19.i ]
  %i.aj = sub nsw i64 %.1.i.i, %i.t
  br label %fb_urange_iter.exit

fb_urange_iter.exit:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i, %fb_find_impl.exit.i
  %.296 = phi i64 [ %i.t, %fb_find_impl.exit.i ], [ %.094, %._crit_edge.i ], [ %.094, %.lr.ph.i.preheader ], [ %.094, %.lr.ph.i ] ; 6 uses
  %.292 = phi i64 [ %i.aj, %fb_find_impl.exit.i ], [ %.090, %._crit_edge.i ], [ %.090, %.lr.ph.i.preheader ], [ %.090, %.lr.ph.i ] ; 9 uses
  %.not = icmp ult i64 %.292, %i.a
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %fb_urange_iter.exit
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.292, i64 %.032)
  %i.ak = add i64 %.292, %.296
  br label %bb.b

bb.e:                                             ; preds = %fb_urange_iter.exit
  %i.al = lshr i64 %.296, 6                       ; 7 uses
  %i.am = and i64 %.296, 63                       ; 4 uses
  %i.an = add nuw nsw i64 %i.am, %i.a             ; 8 uses
  %i.ao = icmp samesign ugt i64 %i.an, 64
  %i.ap = sub nuw nsw i64 64, %i.am
  %i.aq = select i1 %i.ao, i64 %i.ap, i64 %i.a    ; 2 uses
  %i.ar = sub nsw i64 64, %i.aq
  %i.as = lshr i64 -1, %i.ar
  %i.at = shl i64 %i.as, %i.am                    ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !35
  %i.aw = or i64 %i.av, %i.at
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !35
  %i.ax = sub nsw i64 %i.a, %i.aq                 ; 8 uses
  %.029.i9.i = add nuw nsw i64 %i.al, 1           ; 7 uses
  %i.ay = icmp ugt i64 %i.ax, 64                  ; 3 uses
  br i1 %i.ay, label %fb_assign_visitor.exit.preheader.i, label %._crit_edge.i44

fb_assign_visitor.exit.preheader.i:               ; preds = %bb.e
  %i.az = shl nuw nsw i64 %i.al, 3
  %i.ba = getelementptr i8, ptr %i.b, i64 %i.az
  %scevgep.i = getelementptr i8, ptr %i.ba, i64 8
  %i.bb = add nsw i64 %i.an, -65
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64) ; 2 uses
  %i.bc = sub nsw i64 %i.bb, %umin.i              ; 2 uses
  %i.bd = lshr i64 %i.bc, 6                       ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 -1, i64 %i.bf, i1 false), !tbaa !35
  %i.bg = and i64 %i.bc, -64
  %.neg114 = add nsw i64 %i.an, -64
  %i.bh = add nsw i64 %umin.i, %i.bg
  %i.bi = sub nsw i64 %.neg114, %i.bh
  %i.bj = add nuw nsw i64 %i.al, 2
  %i.bk = add nuw nsw i64 %i.bj, %i.bd
  br label %._crit_edge.i44

._crit_edge.i44:                                  ; preds = %fb_assign_visitor.exit.preheader.i, %bb.e
  %.0.i.lcssa.i = phi i64 [ %i.ax, %bb.e ], [ %i.bi, %fb_assign_visitor.exit.preheader.i ] ; 2 uses
  %.029.i.lcssa.i = phi i64 [ %.029.i9.i, %bb.e ], [ %i.bk, %fb_assign_visitor.exit.preheader.i ]
  %.not.i.i45 = icmp eq i64 %.0.i.lcssa.i, 0
  br i1 %.not.i.i45, label %fb_set_range.exit, label %fb_assign_visitor.exit4.i

fb_assign_visitor.exit4.i:                        ; preds = %._crit_edge.i44
  %i.bl = sub nuw nsw i64 64, %.0.i.lcssa.i
  %i.bm = lshr i64 -1, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.029.i.lcssa.i ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !35
  %i.bp = or i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !35
  br label %fb_set_range.exit

fb_set_range.exit:                                ; preds = %._crit_edge.i44, %fb_assign_visitor.exit4.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !37
  %i.bs = add i64 %i.br, %i.a
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.al ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !35 ; 3 uses
  %i.bw = and i64 %i.bv, %i.at
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bw) ; 4 uses
  br i1 %i.ay, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %fb_set_range.exit
  %i.by = add nsw i64 %i.a, -65
  %i.bz = add nsw i64 %i.by, %i.am
  %umin = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.ca = sub nsw i64 %i.bz, %umin                ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ca, 192
  br i1 %min.iters.check, label %.lr.ph.preheader237, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.cc, 576460752303423484      ; 4 uses
  %i.cd = add nuw nsw i64 %.029.i9.i, %n.vec      ; 2 uses
  %i.ce = shl i64 %n.vec, 6
  %i.cf = sub i64 %i.ax, %i.ce                    ; 2 uses
  %i.cg = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bx, i64 0
  %i.ch = getelementptr [8 x i8], ptr %i.bt, i64 %.029.i9.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.cg, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi219 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %i.ci = getelementptr [8 x i8], ptr %i.ch, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load = load <2 x i64>, ptr %i.ci, align 8, !tbaa !35
  %wide.load220 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !35
  %i.ck = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.cl = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load220)
  %i.cm = add <2 x i64> %i.ck, %vec.phi           ; 2 uses
  %i.cn = add <2 x i64> %i.cl, %vec.phi219        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cn, %i.cm
  %i.cp = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %fb_scount.exit, label %.lr.ph.preheader237

.lr.ph.preheader237:                              ; preds = %.lr.ph.preheader, %middle.block
  %.029.i.i130.ph = phi i64 [ %.029.i9.i, %.lr.ph.preheader ], [ %i.cd, %middle.block ]
  %.0.i.i129.ph = phi i64 [ %i.ax, %.lr.ph.preheader ], [ %i.cf, %middle.block ]
  %.098128.ph = phi i64 [ %i.bx, %.lr.ph.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader237, %.lr.ph
  %.029.i.i130 = phi i64 [ %.029.i.i, %.lr.ph ], [ %.029.i.i130.ph, %.lr.ph.preheader237 ] ; 2 uses
  %.0.i.i129 = phi i64 [ %i.cu, %.lr.ph ], [ %.0.i.i129.ph, %.lr.ph.preheader237 ]
  %.098128 = phi i64 [ %i.ct, %.lr.ph ], [ %.098128.ph, %.lr.ph.preheader237 ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.029.i.i130
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !35
  %i.cs = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cr)
  %i.ct = add i64 %i.cs, %.098128                 ; 2 uses
  %i.cu = add i64 %.0.i.i129, -64                 ; 3 uses
  %.029.i.i = add nuw nsw i64 %.029.i.i130, 1     ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, 64
  br i1 %i.cv, label %.lr.ph, label %fb_scount.exit, !llvm.loop !41

._crit_edge:                                      ; preds = %fb_set_range.exit
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %fb_scount.exit.thread, label %fb_scount.exit

fb_scount.exit.thread:                            ; preds = %._crit_edge
  %i.cw = or i64 %i.bv, %i.at
  store i64 %i.cw, ptr %i.bu, align 8, !tbaa !35
  br label %._crit_edge.i47

fb_scount.exit:                                   ; preds = %.lr.ph, %middle.block, %._crit_edge
  %.029.i.i.lcssa174 = phi i64 [ %.029.i9.i, %._crit_edge ], [ %i.cd, %middle.block ], [ %.029.i.i, %.lr.ph ]
  %.0.i.i.lcssa173 = phi i64 [ %i.ax, %._crit_edge ], [ %i.cf, %middle.block ], [ %i.cu, %.lr.ph ]
  %.098.lcssa172 = phi i64 [ %i.bx, %._crit_edge ], [ %i.cp, %middle.block ], [ %i.ct, %.lr.ph ]
  %i.cx = sub nuw nsw i64 64, %.0.i.i.lcssa173
  %i.cy = lshr i64 -1, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.029.i.i.lcssa174
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !35
  %i.db = and i64 %i.da, %i.cy
  %i.dc = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.db)
  %i.dd = add i64 %i.dc, %.098.lcssa172           ; 2 uses
  %i.de = or i64 %i.bv, %i.at
  store i64 %i.de, ptr %i.bu, align 8, !tbaa !35
  br i1 %i.ay, label %fb_assign_visitor.exit.preheader.i52, label %._crit_edge.i47

fb_assign_visitor.exit.preheader.i52:             ; preds = %fb_scount.exit
  %i.df = shl nuw nsw i64 %i.al, 3
  %i.dg = getelementptr i8, ptr %i.bt, i64 %i.df
  %scevgep.i53 = getelementptr i8, ptr %i.dg, i64 8
  %i.dh = add nsw i64 %i.an, -65
  %umin.i54 = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64) ; 2 uses
  %i.di = sub nsw i64 %i.dh, %umin.i54            ; 2 uses
  %i.dj = lshr i64 %i.di, 6                       ; 2 uses
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = add nuw nsw i64 %i.dk, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i53, i8 -1, i64 %i.dl, i1 false), !tbaa !35
  %i.dm = and i64 %i.di, -64
  %.neg116 = add nsw i64 %i.an, -64
  %i.dn = add nsw i64 %umin.i54, %i.dm
  %i.do = sub nsw i64 %.neg116, %i.dn
  %i.dp = add nuw nsw i64 %i.al, 2
  %i.dq = add nuw nsw i64 %i.dp, %i.dj
  br label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %fb_scount.exit.thread, %fb_assign_visitor.exit.preheader.i52, %fb_scount.exit
  %.pn = phi i64 [ %i.dd, %fb_scount.exit ], [ %i.dd, %fb_assign_visitor.exit.preheader.i52 ], [ %i.bx, %fb_scount.exit.thread ]
  %.0.i.lcssa.i48 = phi i64 [ %i.ax, %fb_scount.exit ], [ %i.do, %fb_assign_visitor.exit.preheader.i52 ], [ %i.ax, %fb_scount.exit.thread ] ; 2 uses
  %.029.i.lcssa.i49 = phi i64 [ %.029.i9.i, %fb_scount.exit ], [ %i.dq, %fb_assign_visitor.exit.preheader.i52 ], [ %.029.i9.i, %fb_scount.exit.thread ]
  %i.dr = sub i64 %i.a, %.pn
  %.not.i.i50 = icmp eq i64 %.0.i.lcssa.i48, 0
  br i1 %.not.i.i50, label %fb_set_range.exit55, label %fb_assign_visitor.exit4.i51

fb_assign_visitor.exit4.i51:                      ; preds = %._crit_edge.i47
  %i.ds = sub nuw nsw i64 64, %.0.i.lcssa.i48
  %i.dt = lshr i64 -1, %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.029.i.lcssa.i49 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !35
  %i.dw = or i64 %i.dv, %i.dt
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !35
  br label %fb_set_range.exit55

fb_set_range.exit55:                              ; preds = %._crit_edge.i47, %fb_assign_visitor.exit4.i51
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !42
  %i.dz = add i64 %i.dr, %i.dy
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !42
  %i.ea = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %.val42 = load i64, ptr %i.ea, align 8, !tbaa !34
  %i.eb = icmp eq i64 %.292, %.val42
  br i1 %i.eb, label %bb.f, label %bb.i

bb.f:                                             ; preds = %fb_set_range.exit55
  %i.ec = add i64 %.296, %i.a                     ; 2 uses
  %i.ed = icmp ult i64 %i.ec, 512
  br i1 %i.ed, label %.lr.ph136, label %.thread108

.lr.ph136:                                        ; preds = %bb.f, %bb.h
  %.2134 = phi i64 [ %i.fg, %bb.h ], [ %i.ec, %bb.f ] ; 2 uses
  %.335133 = phi i64 [ %spec.select40, %bb.h ], [ %.032, %bb.f ] ; 4 uses
  %i.ee = lshr i64 %.2134, 6                      ; 3 uses
  %i.ef = and i64 %.2134, 63
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ee
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !35
  %i.ei = xor i64 %i.eh, -1
  %notmask.i4.i56 = shl nsw i64 -1, %i.ef
  %.040.i5.i57 = and i64 %notmask.i4.i56, %i.ei   ; 2 uses
  %i.ej = icmp eq i64 %.040.i5.i57, 0
  br i1 %i.ej, label %.lr.ph.i72.preheader, label %bb.g

.lr.ph.i72.preheader:                             ; preds = %.lr.ph136
  %i.ek = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %i.el = icmp eq i64 %i.ek, 8
  br i1 %i.el, label %.thread108, label %.lr.ph212

.lr.ph.i72:                                       ; preds = %.lr.ph212
  %i.em = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %i.en = icmp eq i64 %i.em, 8
  br i1 %i.en, label %.thread108, label %.lr.ph212, !llvm.loop !36

.lr.ph212:                                        ; preds = %.lr.ph.i72.preheader, %.lr.ph.i72
  %i.eo = phi i64 [ %i.em, %.lr.ph.i72 ], [ %i.ek, %.lr.ph.i72.preheader ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !35 ; 2 uses
  %i.er = icmp eq i64 %i.eq, -1
  br i1 %i.er, label %.lr.ph.i72, label %._crit_edge.loopexit.i74, !llvm.loop !36

._crit_edge.loopexit.i74:                         ; preds = %.lr.ph212
  %i.es = xor i64 %i.eq, -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph136, %._crit_edge.loopexit.i74
  %.141.i6.lcssa.i59 = phi i64 [ %.040.i5.i57, %.lr.ph136 ], [ %i.es, %._crit_edge.loopexit.i74 ]
  %.039.i7.lcssa.i60 = phi i64 [ %i.ee, %.lr.ph136 ], [ %i.eo, %._crit_edge.loopexit.i74 ] ; 4 uses
  %2 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i6.lcssa.i59, i1 true) ; 2 uses
  %3 = shl nuw nsw i64 %.039.i7.lcssa.i60, 6
  %4 = or disjoint i64 %3, %2                     ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.039.i7.lcssa.i60
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !35
  %notmask.i.i63 = shl nsw i64 -1, %2
  %.040.i.i64 = and i64 %i.eu, %notmask.i.i63     ; 2 uses
  %i.ev = icmp eq i64 %.040.i.i64, 0
  br i1 %i.ev, label %.lr.ph19.i70.preheader, label %.loopexit

.lr.ph19.i70.preheader:                           ; preds = %bb.g
  %i.ew = add nuw nsw i64 %.039.i7.lcssa.i60, 1   ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 8
  br i1 %i.ex, label %.loopexit.thread, label %.lr.ph214

.lr.ph19.i70:                                     ; preds = %.lr.ph214
  %i.ey = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 8
  br i1 %i.ez, label %.loopexit.thread, label %.lr.ph214, !llvm.loop !36

.lr.ph214:                                        ; preds = %.lr.ph19.i70.preheader, %.lr.ph19.i70
  %i.fa = phi i64 [ %i.ey, %.lr.ph19.i70 ], [ %i.ew, %.lr.ph19.i70.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !35 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %.lr.ph19.i70, label %.loopexit, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph214, %bb.g
  %.141.i.lcssa.i66 = phi i64 [ %.040.i.i64, %bb.g ], [ %i.fc, %.lr.ph214 ]
  %.039.i.lcssa.i67 = phi i64 [ %.039.i7.lcssa.i60, %bb.g ], [ %i.fa, %.lr.ph214 ] ; 2 uses
  %i.fe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i66, i1 true)
  %i.ff = shl nuw nsw i64 %.039.i.lcssa.i67, 6
  %i.fg = or disjoint i64 %i.ff, %i.fe            ; 2 uses
  %i.fh = sub nsw i64 %i.fg, %4                   ; 2 uses
  %i.fi = icmp eq i64 %i.fh, %.292
  br i1 %i.fi, label %.thread108, label %bb.h

.loopexit.thread:                                 ; preds = %.lr.ph19.i70.preheader, %.lr.ph19.i70
  %i.fj = sub nsw i64 512, %4                     ; 2 uses
  %i.fk = icmp eq i64 %i.fj, %.292
  br i1 %i.fk, label %.thread108, label %.thread

.thread:                                          ; preds = %.loopexit.thread
  %spec.select40179 = tail call i64 @llvm.umax.i64(i64 %i.fj, i64 %.335133)
  br label %.thread108

bb.h:                                             ; preds = %.loopexit
  %spec.select40 = tail call i64 @llvm.umax.i64(i64 %i.fh, i64 %.335133) ; 2 uses
  %i.fl = icmp ult i64 %.039.i.lcssa.i67, 8
  br i1 %i.fl, label %.lr.ph136, label %.thread108

.thread108:                                       ; preds = %bb.h, %.loopexit, %.lr.ph.i72.preheader, %.lr.ph.i72, %.loopexit.thread, %.thread, %bb.f
  %.6 = phi i64 [ %spec.select40179, %.thread ], [ %.032, %bb.f ], [ %.292, %.loopexit.thread ], [ %.335133, %.lr.ph.i72 ], [ %.292, %.loopexit ], [ %spec.select40, %bb.h ], [ %.335133, %.lr.ph.i72.preheader ]
  store i64 %.6, ptr %i.ea, align 8, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %.thread108, %fb_set_range.exit55
  %.val43 = load ptr, ptr %0, align 8, !tbaa !31
  %i.fm = ptrtoint ptr %.val43 to i64
  %i.fn = shl i64 %.296, 12
  %i.fo = add i64 %i.fn, %i.fm
  %i.fp = inttoptr i64 %i.fo to ptr
  ret ptr %i.fp
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @je_hpdata_unreserve(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %.val21 = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = ptrtoint ptr %.val21 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = lshr i64 %i.c, 12                        ; 2 uses
  %i.e = lshr i64 %2, 12                          ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %.val = load i64, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.h = lshr i64 %i.c, 18                        ; 7 uses
  %i.i = and i64 %i.d, 63                         ; 4 uses
  %i.j = add nuw nsw i64 %i.i, %i.e               ; 4 uses
  %i.k = icmp samesign ugt i64 %i.j, 64
  %i.l = sub nuw nsw i64 64, %i.i
  %i.m = select i1 %i.k, i64 %i.l, i64 %i.e       ; 2 uses
  %i.n = sub nsw i64 64, %i.m
  %i.o = lshr i64 -1, %i.n
  %i.p = shl i64 %i.o, %i.i
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.r = xor i64 %i.p, -1
  %i.s = load i64, ptr %i.q, align 8, !tbaa !35
  %i.t = and i64 %i.s, %i.r                       ; 2 uses
  store i64 %i.t, ptr %i.q, align 8, !tbaa !35
  %i.u = sub nsw i64 %i.e, %i.m                   ; 2 uses
  %.029.i9.i = add nuw nsw i64 %i.h, 1
  %i.v = icmp ugt i64 %i.u, 64
  br i1 %i.v, label %fb_assign_visitor.exit.preheader.i, label %._crit_edge.i

fb_assign_visitor.exit.preheader.i:               ; preds = %bb.a
  %i.w = shl nuw nsw i64 %i.h, 3
  %i.x = getelementptr i8, ptr %i.g, i64 %i.w
  %scevgep.i = getelementptr i8, ptr %i.x, i64 8
  %i.y = add nsw i64 %i.j, -65
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64) ; 2 uses
  %i.z = sub nsw i64 %i.y, %umin.i                ; 2 uses
  %i.aa = lshr i64 %i.z, 6                        ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ac, i1 false), !tbaa !35
  %i.ad = and i64 %i.z, -64
  %.neg30 = add nsw i64 %i.j, -64
  %i.ae = add nsw i64 %umin.i, %i.ad
  %i.af = sub nsw i64 %.neg30, %i.ae
  %i.ag = add nuw nsw i64 %i.h, 2
  %i.ah = add nuw nsw i64 %i.ag, %i.aa
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %fb_assign_visitor.exit.preheader.i, %bb.a
  %.0.i.lcssa.i = phi i64 [ %i.u, %bb.a ], [ %i.af, %fb_assign_visitor.exit.preheader.i ] ; 2 uses
  %.029.i.lcssa.i = phi i64 [ %.029.i9.i, %bb.a ], [ %i.ah, %fb_assign_visitor.exit.preheader.i ]
  %.not.i.i = icmp eq i64 %.0.i.lcssa.i, 0
  br i1 %.not.i.i, label %fb_unset_range.exit, label %fb_assign_visitor.exit4.i

fb_assign_visitor.exit4.i:                        ; preds = %._crit_edge.i
  %i.ai = sub nuw nsw i64 64, %.0.i.lcssa.i
  %i.aj = lshr i64 -1, %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.029.i.lcssa.i ; 2 uses
  %i.al = xor i64 %i.aj, -1
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !35
  %i.an = and i64 %i.am, %i.al
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !35
  %.pre = load i64, ptr %i.q, align 8, !tbaa !35
  br label %fb_unset_range.exit

fb_unset_range.exit:                              ; preds = %._crit_edge.i, %fb_assign_visitor.exit4.i
  %i.ao = phi i64 [ %i.t, %._crit_edge.i ], [ %.pre, %fb_assign_visitor.exit4.i ]
  %i.ap = shl i64 2, %i.i
  %i.aq = add i64 %i.ap, -1
  %.040.i.i = and i64 %i.ao, %i.aq                ; 2 uses
  %i.ar = icmp eq i64 %.040.i.i, 0
  br i1 %i.ar, label %.lr.ph.i.preheader, label %._crit_edge.i22

.lr.ph.i.preheader:                               ; preds = %fb_unset_range.exit
  %i.as = icmp eq i64 %i.h, 0
  br i1 %i.as, label %fb_fls.exit, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.at = icmp eq i64 %i.au, 0
  br i1 %i.at, label %fb_fls.exit, label %.lr.ph, !llvm.loop !36

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.039.i4.i47 = phi i64 [ %i.au, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ]
  %i.au = add nsw i64 %.039.i4.i47, -1            ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !35 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i22, !llvm.loop !36

._crit_edge.i22:                                  ; preds = %.lr.ph, %fb_unset_range.exit
  %.141.i.lcssa.i = phi i64 [ %.040.i.i, %fb_unset_range.exit ], [ %i.aw, %.lr.ph ]
  %.039.i.lcssa.i = phi i64 [ %i.h, %fb_unset_range.exit ], [ %i.au, %.lr.ph ]
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i, i1 true)
  %i.az = shl nuw nsw i64 %.039.i.lcssa.i, 6
  %i.ba = or disjoint i64 %i.az, %i.ay
  %i.bb = xor i64 %i.ba, -64
  br label %fb_fls.exit

fb_fls.exit:                                      ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i22
  %.1.i.i = phi i64 [ %i.bb, %._crit_edge.i22 ], [ 0, %.lr.ph.i.preheader ], [ 0, %.lr.ph.i ]
  %i.bc = add nsw i64 %i.e, -1
  %i.bd = add nsw i64 %i.bc, %i.d                 ; 2 uses
  %i.be = lshr i64 %i.bd, 6                       ; 3 uses
  %i.bf = and i64 %i.bd, 63
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.be
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !35
  %notmask.i.i = shl nsw i64 -1, %i.bf
  %.040.i.i23 = and i64 %i.bh, %notmask.i.i       ; 2 uses
  %i.bi = icmp eq i64 %.040.i.i23, 0
  br i1 %i.bi, label %.lr.ph.i28.preheader, label %._crit_edge.i24

.lr.ph.i28.preheader:                             ; preds = %fb_fls.exit
  %i.bj = add nuw nsw i64 %i.be, 1                ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 8
  br i1 %i.bk, label %fb_ffs.exit, label %.lr.ph48

.lr.ph.i28:                                       ; preds = %.lr.ph48
  %i.bl = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 8
  br i1 %i.bm, label %fb_ffs.exit, label %.lr.ph48, !llvm.loop !36

.lr.ph48:                                         ; preds = %.lr.ph.i28.preheader, %.lr.ph.i28
  %i.bn = phi i64 [ %i.bl, %.lr.ph.i28 ], [ %i.bj, %.lr.ph.i28.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !35 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i28, label %._crit_edge.i24, !llvm.loop !36

._crit_edge.i24:                                  ; preds = %.lr.ph48, %fb_fls.exit
  %.141.i.lcssa.i25 = phi i64 [ %.040.i.i23, %fb_fls.exit ], [ %i.bp, %.lr.ph48 ]
  %.039.i.lcssa.i26 = phi i64 [ %i.be, %fb_fls.exit ], [ %i.bn, %.lr.ph48 ]
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i25, i1 true)
  %i.bs = shl i64 %.039.i.lcssa.i26, 6
  %i.bt = or disjoint i64 %i.bs, %i.br
  br label %fb_ffs.exit

fb_ffs.exit:                                      ; preds = %.lr.ph.i28, %.lr.ph.i28.preheader, %._crit_edge.i24
  %.1.i.i27 = phi i64 [ %i.bt, %._crit_edge.i24 ], [ 512, %.lr.ph.i28.preheader ], [ 512, %.lr.ph.i28 ]
  %i.bu = add i64 %.1.i.i27, %.1.i.i              ; 2 uses
  %i.bv = icmp ugt i64 %i.bu, %.val
  br i1 %i.bv, label %bb.b, label %bb.c

bb.b:                                             ; preds = %fb_ffs.exit
  store i64 %i.bu, ptr %i.f, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %fb_ffs.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !37
  %i.by = sub i64 %i.bx, %i.e
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !37
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i64 @je_hpdata_purge_begin(ptr noundef readonly captures(none) %0, ptr noundef captures(none) initializes((0, 8), (16, 88)) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i64], align 16               ; 16 uses
  store i64 0, ptr %1, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.b, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = load <2 x i64>, ptr %i.c, align 8, !tbaa !35
  %i.l = xor <2 x i64> %i.k, splat (i64 -1)
  %i.m = load <2 x i64>, ptr %i.j, align 8, !tbaa !35
  %i.n = and <2 x i64> %i.m, %i.l
  store <2 x i64> %i.n, ptr %i.a, align 16, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = load <2 x i64>, ptr %i.d, align 8, !tbaa !35
  %i.q = xor <2 x i64> %i.p, splat (i64 -1)
  %i.r = load <2 x i64>, ptr %i.o, align 8, !tbaa !35
  %i.s = and <2 x i64> %i.r, %i.q
  store <2 x i64> %i.s, ptr %i.e, align 16, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.u = load <2 x i64>, ptr %i.f, align 8, !tbaa !35
  %i.v = xor <2 x i64> %i.u, splat (i64 -1)
  %i.w = load <2 x i64>, ptr %i.t, align 8, !tbaa !35
  %i.x = and <2 x i64> %i.w, %i.v
  store <2 x i64> %i.x, ptr %i.g, align 16, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.z = load <2 x i64>, ptr %i.h, align 8, !tbaa !35
  %i.aa = xor <2 x i64> %i.z, splat (i64 -1)
  %i.ab = load <2 x i64>, ptr %i.y, align 8, !tbaa !35
  %i.ac = and <2 x i64> %i.ab, %i.aa
  store <2 x i64> %i.ac, ptr %i.i, align 16, !tbaa !35
end_hunk_0
