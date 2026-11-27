Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hpdata?download=true
inline.NumInlined: 82
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@je_hpdata_age_heap_remove:bb.a
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 2 uses
  store ptr null, ptr %i.lj, align 8, !tbaa !19
  store ptr null, ptr %i.le, align 8, !tbaa !19
  %i.lk = icmp eq ptr %.0.i.i55, null
  br i1 %i.lk, label %phn_merge.exit.i58, label %bb.bt

bb.bt:                                            ; preds = %.preheader83
  %i.ll = getelementptr i8, ptr %.2.i.i54, i64 8
  %.2.i.i54.val = load i64, ptr %i.ll, align 8, !tbaa !26
  %i.lm = getelementptr i8, ptr %.0.i.i55, i64 8
  %.0.i.i55.val = load i64, ptr %i.lm, align 8, !tbaa !26
  %i.ln = icmp ult i64 %.2.i.i54.val, %.0.i.i55.val
  br i1 %i.ln, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  store ptr %.2.i.i54, ptr %i.ld, align 8, !tbaa !20
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 16 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !27 ; 3 uses
  store ptr %i.lp, ptr %i.le, align 8, !tbaa !19
  %.not.i19.i63 = icmp eq ptr %i.lp, null
  br i1 %.not.i19.i63, label %phn_merge_ordered.exit20.i64, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = add i64 %i.lq, 40
  %i.ls = inttoptr i64 %i.lr to ptr
  store ptr %.0.i.i55, ptr %i.ls, align 8, !tbaa !20
  br label %phn_merge_ordered.exit20.i64

phn_merge_ordered.exit20.i64:                     ; preds = %bb.bv, %bb.bu
  store ptr %.0.i.i55, ptr %i.lo, align 8, !tbaa !27
  br label %phn_merge.exit.i58

bb.bw:                                            ; preds = %bb.bt
  store ptr %.0.i.i55, ptr %i.li, align 8, !tbaa !20
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 16 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !27 ; 3 uses
  store ptr %i.lu, ptr %i.lj, align 8, !tbaa !19
  %.not.i21.i56 = icmp eq ptr %i.lu, null
  br i1 %.not.i21.i56, label %phn_merge_ordered.exit22.i57, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = add i64 %i.lv, 40
  %i.lx = inttoptr i64 %i.lw to ptr
  store ptr %.2.i.i54, ptr %i.lx, align 8, !tbaa !20
  br label %phn_merge_ordered.exit22.i57

phn_merge_ordered.exit22.i57:                     ; preds = %bb.bx, %bb.bw
  store ptr %.2.i.i54, ptr %i.lt, align 8, !tbaa !27
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
  store ptr %.0.i7.i59, ptr %i.mc, align 8, !tbaa !19
  %i.md = ptrtoint ptr %i.lf to i64
  %i.me = add i64 %i.md, 40
  %i.mf = inttoptr i64 %i.me to ptr
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !19
  br label %.preheader83

ph_merge_children.exit67.thread79:                ; preds = %phn_merge.exit.i58, %._crit_edge92, %bb.bd
  %.0.i6282 = phi ptr [ %i.in, %bb.bd ], [ %.0.i10.i38, %._crit_edge92 ], [ %.0.i7.i59, %phn_merge.exit.i58 ] ; 4 uses
  %.not87.i = icmp eq ptr %.0.i175, null
  br i1 %.not87.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %ph_merge_children.exit67.thread79
  %i.mi = ptrtoint ptr %.0.i6282 to i64
  %i.mj = add i64 %i.mi, 40
  %i.mk = inttoptr i64 %i.mj to ptr               ; 2 uses
  store ptr %.0.i175, ptr %i.mk, align 8, !tbaa !20
  br label %.sink.split

bb.ca:                                            ; preds = %ph_merge_children.exit67.thread79
  %i.ml = load ptr, ptr %i.e, align 8, !tbaa !20  ; 3 uses
  %i.mm = ptrtoint ptr %.0.i6282 to i64
  %i.mn = add i64 %i.mm, 40
  %i.mo = inttoptr i64 %i.mn to ptr               ; 3 uses
  store ptr %i.ml, ptr %i.mo, align 8, !tbaa !20
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
  store ptr %.0.i6282, ptr %i.ms, align 8, !tbaa !29
  br label %bb.cb

bb.cb:                                            ; preds = %.sink.split, %bb.ca
  %.pre-phi101 = phi ptr [ %i.mo, %bb.ca ], [ %.pre-phi101.ph, %.sink.split ]
  %i.mt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !19 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.pre-phi101, i64 8
  store ptr %i.mu, ptr %i.mv, align 8, !tbaa !19
  %.not89.i = icmp eq ptr %i.mu, null
  br i1 %.not89.i, label %ph_remove.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = add i64 %i.mw, 40
  %i.my = inttoptr i64 %i.mx to ptr
  store ptr %.0.i6282, ptr %i.my, align 8, !tbaa !20
  br label %ph_remove.exit

ph_merge_children.exit67.thread:                  ; preds = %bb.bc
  %.not84.i = icmp eq ptr %spec.select.i, null
  br i1 %.not84.i, label %ph_merge_children.exit67.thread.thread, label %bb.cd

bb.cd:                                            ; preds = %ph_merge_children.exit67.thread
  %i.mz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !19 ; 4 uses
  %i.nb = ptrtoint ptr %spec.select.i to i64
  %i.nc = add i64 %i.nb, 40
  %i.nd = inttoptr i64 %i.nc to ptr
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store ptr %i.na, ptr %i.ne, align 8, !tbaa !27
  %.not85.i = icmp eq ptr %i.na, null
  br i1 %.not85.i, label %ph_remove.exit, label %.thread181

.thread181:                                       ; preds = %bb.cd
  %i.nf = ptrtoint ptr %i.na to i64
  %i.ng = add i64 %i.nf, 40
  %i.nh = inttoptr i64 %i.ng to ptr
  store ptr %spec.select.i, ptr %i.nh, align 8, !tbaa !20
  br label %bb.ce

ph_merge_children.exit67.thread.thread:           ; preds = %.thread173, %ph_merge_children.exit67.thread
  %i.ni = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !19 ; 3 uses
  %i.nk = ptrtoint ptr %i.ib to i64
  %i.nl = add i64 %i.nk, 40
  %i.nm = inttoptr i64 %i.nl to ptr
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store ptr %i.nj, ptr %i.nn, align 8, !tbaa !19
  %.not86.i = icmp eq ptr %i.nj, null
  br i1 %.not86.i, label %ph_remove.exit, label %bb.ce

bb.ce:                                            ; preds = %.thread181, %ph_merge_children.exit67.thread.thread
  %i.no = phi ptr [ %i.na, %.thread181 ], [ %i.nj, %ph_merge_children.exit67.thread.thread ]
  %i.np = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.nq = ptrtoint ptr %i.no to i64
  %i.nr = add i64 %i.nq, 40
  %i.ns = inttoptr i64 %i.nr to ptr
  store ptr %i.np, ptr %i.ns, align 8, !tbaa !20
  br label %ph_remove.exit

ph_remove.exit:                                   ; preds = %bb.cd, %bb.c, %bb.d, %ph_merge_children.exit, %bb.cb, %bb.cc, %ph_merge_children.exit67.thread.thread, %bb.ce
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @je_hpdata_age_heap_remove_any(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 !guid !49 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %je_hpdata_age_heap_any.exit, label %select.unfold

select.unfold:                                    ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = add i64 %i.c, 40
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  %spec.select = select i1 %.not.i.i, ptr %i.a, ptr %i.g ; 2 uses
  tail call void @je_hpdata_age_heap_remove(ptr noundef nonnull %0, ptr noundef nonnull %spec.select)
  br label %je_hpdata_age_heap_any.exit

je_hpdata_age_heap_any.exit:                      ; preds = %bb.a, %select.unfold
  %.1.i.i8 = phi ptr [ %spec.select, %select.unfold ], [ null, %bb.a ]
  ret ptr %.1.i.i8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @je_hpdata_init(ptr nofree noundef writeonly captures(none) initializes((0, 21), (32, 37), (96, 248)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !guid !50 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 256, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.e, align 4, !tbaa !52
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 512, ptr %3, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i8 0, i64 144, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden ptr @je_hpdata_reserve_alloc(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #5 !guid !55 {
bb.a:
  %i.a = lshr i64 %1, 12                          ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.093 = phi i64 [ 0, %bb.a ], [ %.295, %bb.d ]  ; 3 uses
  %.089 = phi i64 [ 0, %bb.a ], [ %.291, %bb.d ]  ; 3 uses
  %.034 = phi i64 [ 0, %bb.a ], [ %i.ak, %bb.d ]  ; 2 uses
  %.032 = phi i64 [ 0, %bb.a ], [ %spec.select, %bb.d ] ; 3 uses
  %i.c = lshr i64 %.034, 6                        ; 3 uses
  %i.d = and i64 %.034, 63
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32
  %i.g = xor i64 %i.f, -1
  %notmask.i4.i = shl nsw i64 -1, %i.d
  %.0.i5.i = and i64 %notmask.i4.i, %i.g          ; 2 uses
  %i.h = icmp eq i64 %.0.i5.i, 0
  br i1 %i.h, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.i = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.j = icmp eq i64 %i.i, 8
  br i1 %i.j, label %fb_urange_iter.exit, label %.lr.ph210

.lr.ph.i:                                         ; preds = %.lr.ph210
  %i.k = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.l = icmp eq i64 %i.k, 8
  br i1 %i.l, label %fb_urange_iter.exit, label %.lr.ph210, !llvm.loop !1

.lr.ph210:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.m = phi i64 [ %i.k, %.lr.ph.i ], [ %i.i, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !1

._crit_edge.loopexit.i:                           ; preds = %.lr.ph210
  %i.q = xor i64 %i.o, -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %.039.i6.lcssa.i = phi i64 [ %i.c, %bb.b ], [ %i.m, %._crit_edge.loopexit.i ] ; 2 uses
  %.1.i7.lcssa.i = phi i64 [ %.0.i5.i, %bb.b ], [ %i.q, %._crit_edge.loopexit.i ]
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.1.i7.lcssa.i, i1 true) ; 2 uses
  %i.s = shl i64 %.039.i6.lcssa.i, 6              ; 2 uses
  %i.t = or disjoint i64 %i.r, %i.s               ; 2 uses
  %or.cond.i = icmp ugt i64 %i.s, 511
  br i1 %or.cond.i, label %fb_urange_iter.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.u = and i64 %.039.i6.lcssa.i, 288230376151711743 ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %notmask.i.i = shl nsw i64 -1, %i.r
  %.0.i.i43 = and i64 %i.w, %notmask.i.i          ; 2 uses
  %i.x = icmp eq i64 %.0.i.i43, 0
  br i1 %i.x, label %.lr.ph19.i.preheader, label %._crit_edge20.i

.lr.ph19.i.preheader:                             ; preds = %bb.c
  %i.y = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %i.z = icmp eq i64 %i.y, 8
  br i1 %i.z, label %fb_find_impl.exit.i, label %.lr.ph211

.lr.ph19.i:                                       ; preds = %.lr.ph211
  %i.aa = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 8
  br i1 %i.ab, label %fb_find_impl.exit.i, label %.lr.ph211, !llvm.loop !1

.lr.ph211:                                        ; preds = %.lr.ph19.i.preheader, %.lr.ph19.i
  %i.ac = phi i64 [ %i.aa, %.lr.ph19.i ], [ %i.y, %.lr.ph19.i.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !32 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph19.i, label %._crit_edge20.i, !llvm.loop !1

._crit_edge20.i:                                  ; preds = %.lr.ph211, %bb.c
  %.039.i.lcssa.i = phi i64 [ %i.u, %bb.c ], [ %i.ac, %.lr.ph211 ]
  %.1.i.lcssa.i = phi i64 [ %.0.i.i43, %bb.c ], [ %i.ae, %.lr.ph211 ]
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.1.i.lcssa.i, i1 true)
  %i.ah = shl i64 %.039.i.lcssa.i, 6
  %i.ai = or disjoint i64 %i.ag, %i.ah
  br label %fb_find_impl.exit.i

fb_find_impl.exit.i:                              ; preds = %.lr.ph19.i, %.lr.ph19.i.preheader, %._crit_edge20.i
  %.141.i.i = phi i64 [ %i.ai, %._crit_edge20.i ], [ 512, %.lr.ph19.i.preheader ], [ 512, %.lr.ph19.i ]
  %i.aj = sub nsw i64 %.141.i.i, %i.t
  br label %fb_urange_iter.exit

fb_urange_iter.exit:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i, %fb_find_impl.exit.i
  %.295 = phi i64 [ %i.t, %fb_find_impl.exit.i ], [ %.093, %._crit_edge.i ], [ %.093, %.lr.ph.i.preheader ], [ %.093, %.lr.ph.i ] ; 6 uses
  %.291 = phi i64 [ %i.aj, %fb_find_impl.exit.i ], [ %.089, %._crit_edge.i ], [ %.089, %.lr.ph.i.preheader ], [ %.089, %.lr.ph.i ] ; 9 uses
  %.not = icmp ult i64 %.291, %i.a
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %fb_urange_iter.exit
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.291, i64 %.032)
  %i.ak = add i64 %.291, %.295
  br label %bb.b

bb.e:                                             ; preds = %fb_urange_iter.exit
  %i.al = lshr i64 %.295, 6                       ; 7 uses
  %i.am = and i64 %.295, 63                       ; 4 uses
  %i.an = add nuw nsw i64 %i.am, %i.a             ; 8 uses
  %i.ao = icmp samesign ugt i64 %i.an, 64
  %i.ap = sub nuw nsw i64 64, %i.am
  %i.aq = select i1 %i.ao, i64 %i.ap, i64 %i.a    ; 2 uses
  %i.ar = sub nsw i64 64, %i.aq
  %i.as = lshr i64 -1, %i.ar
  %i.at = shl i64 %i.as, %i.am                    ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !32
  %i.aw = or i64 %i.av, %i.at
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !32
  %i.ax = sub nsw i64 %i.a, %i.aq                 ; 8 uses
  %.0.i9.i = add nuw nsw i64 %i.al, 1             ; 7 uses
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 -1, i64 %i.bf, i1 false), !tbaa !32
  %i.bg = and i64 %i.bc, -64
  %.neg113 = add nsw i64 %i.an, -64
  %i.bh = add nsw i64 %umin.i, %i.bg
  %i.bi = sub nsw i64 %.neg113, %i.bh
  %i.bj = add nuw nsw i64 %i.al, 2
  %i.bk = add nuw nsw i64 %i.bj, %i.bd
  br label %._crit_edge.i44

._crit_edge.i44:                                  ; preds = %fb_assign_visitor.exit.preheader.i, %bb.e
  %.029.i.lcssa.i = phi i64 [ %i.ax, %bb.e ], [ %i.bi, %fb_assign_visitor.exit.preheader.i ] ; 2 uses
  %.0.i.lcssa.i = phi i64 [ %.0.i9.i, %bb.e ], [ %i.bk, %fb_assign_visitor.exit.preheader.i ]
  %.not.i.i45 = icmp eq i64 %.029.i.lcssa.i, 0
  br i1 %.not.i.i45, label %fb_set_range.exit, label %fb_assign_visitor.exit4.i

fb_assign_visitor.exit4.i:                        ; preds = %._crit_edge.i44
  %i.bl = sub nuw nsw i64 64, %.029.i.lcssa.i
  %i.bm = lshr i64 -1, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0.i.lcssa.i ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !32
  %i.bp = or i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !32
  br label %fb_set_range.exit

fb_set_range.exit:                                ; preds = %._crit_edge.i44, %fb_assign_visitor.exit4.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !33
  %i.bs = add i64 %i.br, %i.a
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.al ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !32 ; 3 uses
  %i.bw = and i64 %i.bv, %i.at
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bw) ; 4 uses
  br i1 %i.ay, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %fb_set_range.exit
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.bz = add nuw nsw i64 %i.a, %i.am
  %i.ca = add nsw i64 %i.bz, -65
  %i.cb = sub nsw i64 %i.ca, %i.by                ; 2 uses
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cb, 192
  br i1 %min.iters.check, label %.lr.ph.preheader237, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.cd, 576460752303423484      ; 4 uses
  %i.ce = add nuw nsw i64 %.0.i9.i, %n.vec        ; 2 uses
  %i.cf = shl i64 %n.vec, 6
  %i.cg = sub i64 %i.ax, %i.cf                    ; 2 uses
  %i.ch = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bx, i64 0
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.0.i9.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ch, %vector.ph ], [ %i.cn, %vector.body ]
  %vec.phi219 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.co, %vector.body ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load = load <2 x i64>, ptr %i.cj, align 8, !tbaa !32
  %wide.load220 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !32
  %i.cl = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
end_hunk_0
begin_hunk_1_@je_hpdata_purge_next:bb.a
  %i.an = shl i64 %i.t, 12
  %i.ao = add i64 %i.an, %i.am
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr %i.ap, ptr %2, align 8, !tbaa !29
  %i.aq = shl i64 %i.al, 12
  store i64 %i.aq, ptr %3, align 8, !tbaa !32
  store i64 %.141.i.i, ptr %i.a, align 8, !tbaa !37
  %i.ar = load i64, ptr %1, align 8, !tbaa !36
  %i.as = add i64 %i.ar, %i.al
  store i64 %i.as, ptr %1, align 8, !tbaa !36
  br label %fb_srange_iter.exit.thread

fb_srange_iter.exit.thread:                       ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %fb_find_impl.exit10.i, %.loopexit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.loopexit ], [ false, %fb_find_impl.exit10.i ], [ false, %.lr.ph.i.preheader ], [ false, %.lr.ph.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @je_hpdata_purge_end(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 !guid !61 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load <2 x i64>, ptr %i.a, align 8, !tbaa !32
  %i.d = xor <2 x i64> %i.c, splat (i64 -1)       ; 2 uses
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !32
  %i.h = xor <2 x i64> %i.g, splat (i64 -1)
  store <2 x i64> %i.h, ptr %i.e, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load <2 x i64>, ptr %i.i, align 8, !tbaa !32
  %i.l = xor <2 x i64> %i.k, splat (i64 -1)
  store <2 x i64> %i.l, ptr %i.i, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load <2 x i64>, ptr %i.m, align 8, !tbaa !32
  %i.p = xor <2 x i64> %i.o, splat (i64 -1)
  store <2 x i64> %i.p, ptr %i.m, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !32
  %i.s = extractelement <2 x i64> %i.d, i64 0
  %i.t = and i64 %i.r, %i.s
  store i64 %i.t, ptr %i.q, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !32
  %i.w = load i64, ptr %i.b, align 8, !tbaa !32
  %i.x = and i64 %i.w, %i.v
  store i64 %i.x, ptr %i.u, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !32
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !32
  %i.ab = and i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !32
  %i.af = and i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !32
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !32
  %i.aj = and i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.am = load i64, ptr %i.j, align 8, !tbaa !32
  %i.an = and i64 %i.am, %i.al
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !32
  %i.aq = load i64, ptr %i.m, align 8, !tbaa !32
  %i.ar = and i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !32
  %i.au = load i64, ptr %i.n, align 8, !tbaa !32
  %i.av = and i64 %i.au, %i.at
  store i64 %i.av, ptr %i.as, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !34
  %i.ba = sub i64 %i.az, %i.ax
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @je_hpdata_hugify(ptr nofree noundef writeonly captures(none) initializes((16, 17), (176, 248)) %0) local_unnamed_addr #0 !guid !62 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 -1, i64 64, i1 false)
  store i64 512, ptr %i.c, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @je_hpdata_dehugify(ptr nofree noundef writeonly captures(none) initializes((16, 17)) %0) local_unnamed_addr #0 !guid !63 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !28}
!1 = distinct !{!1, !28}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!"long", !10, i64 0}
!15 = !{!"ph_s", !13, i64 0, !14, i64 8}
!16 = !{!15, !13, i64 0}
!17 = !{!15, !14, i64 8}
!18 = !{!"phn_link_s", !13, i64 0, !13, i64 8, !13, i64 16}
!19 = !{!18, !13, i64 8}
!20 = !{!18, !13, i64 0}
!21 = !{!"_Bool", !10, i64 0}
!22 = !{!"", !14, i64 0}
!23 = !{!"p1 _ZTS8hpdata_s", !13, i64 0}
!24 = !{!"", !23, i64 0, !23, i64 8}
!25 = !{!"hpdata_s", !13, i64 0, !14, i64 8, !21, i64 16, !21, i64 17, !21, i64 18, !21, i64 19, !21, i64 20, !22, i64 24, !21, i64 32, !21, i64 33, !21, i64 34, !21, i64 35, !21, i64 36, !10, i64 40, !24, i64 64, !24, i64 80, !14, i64 96, !14, i64 104, !10, i64 112, !14, i64 176, !10, i64 184}
!26 = !{!25, !14, i64 8}
!27 = !{!18, !13, i64 16}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!13, !13, i64 0}
!30 = !{!25, !13, i64 0}
!31 = !{!25, !14, i64 96}
!32 = !{!14, !14, i64 0}
!33 = !{!25, !14, i64 104}
!34 = !{!25, !14, i64 176}
!35 = !{!"hpdata_purge_state_s", !14, i64 0, !14, i64 8, !10, i64 16, !14, i64 80}
!36 = !{!35, !14, i64 0}
!37 = !{!35, !14, i64 80}
!38 = !{!35, !14, i64 8}
!39 = !{!25, !21, i64 16}
!40 = !{i64 1299119491585655040}
!41 = !{i64 -8624947958720816644}
!42 = !{i64 -3423583281626806420}
!43 = !{i64 -817775075389730863}
!44 = distinct !{!44, !28, !46}
!45 = !{i64 8554218011277739744}
!46 = !{!"llvm.loop.unswitch.partial.disable"}
!47 = !{i64 1037017308994346567}
!48 = !{i64 -7818726943047286710}
!49 = !{i64 2304025572538093391}
!50 = !{i64 -7812327080982692693}
!51 = !{!25, !21, i64 20}
!52 = !{!25, !21, i64 36}
!53 = distinct !{!53, !28, !56, !57}
!54 = distinct !{!54, !28, !57, !56}
!55 = !{i64 -149982646400330737}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{i64 -495345574331681203}
!59 = !{i64 3848057562775271188}
!60 = !{i64 -4486943581509839808}
!61 = !{i64 2986033704561729336}
!62 = !{i64 -3665148707185806900}
!63 = !{i64 -2249827169828412053}
end_hunk_1
