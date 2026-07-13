inline.NumInlined: 82
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@je_hpdata_age_heap_remove_any:bb.a
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
define hidden void @je_hpdata_init(ptr nofree noundef writeonly captures(none) initializes((0, 21), (32, 37), (96, 248)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
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
define hidden ptr @je_hpdata_reserve_alloc(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i64 %1, 12                          ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.093 = phi i64 [ 0, %bb.a ], [ %.295, %bb.d ]  ; 3 uses
  %.089 = phi i64 [ 0, %bb.a ], [ %.291, %bb.d ]  ; 3 uses
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
  br i1 %i.j, label %fb_urange_iter.exit, label %.lr.ph211

.lr.ph.i:                                         ; preds = %.lr.ph211
  %i.k = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.l = icmp eq i64 %i.k, 8
  br i1 %i.l, label %fb_urange_iter.exit, label %.lr.ph211, !llvm.loop !36

.lr.ph211:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.m = phi i64 [ %i.k, %.lr.ph.i ], [ %i.i, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !36

._crit_edge.loopexit.i:                           ; preds = %.lr.ph211
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
  br i1 %i.z, label %fb_find_impl.exit.i, label %.lr.ph212

.lr.ph19.i:                                       ; preds = %.lr.ph212
  %i.aa = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 8
  br i1 %i.ab, label %fb_find_impl.exit.i, label %.lr.ph212, !llvm.loop !36

.lr.ph212:                                        ; preds = %.lr.ph19.i.preheader, %.lr.ph19.i
  %i.ac = phi i64 [ %i.aa, %.lr.ph19.i ], [ %i.y, %.lr.ph19.i.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph19.i, label %._crit_edge20.i, !llvm.loop !36

._crit_edge20.i:                                  ; preds = %.lr.ph212, %bb.c
  %.141.i.lcssa.i = phi i64 [ %.040.i.i, %bb.c ], [ %i.ae, %.lr.ph212 ]
  %.039.i.lcssa.i = phi i64 [ %i.u, %bb.c ], [ %i.ac, %.lr.ph212 ]
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i, i1 true)
  %i.ah = shl i64 %.039.i.lcssa.i, 6
  %i.ai = or disjoint i64 %i.ah, %i.ag
  br label %fb_find_impl.exit.i

fb_find_impl.exit.i:                              ; preds = %.lr.ph19.i, %.lr.ph19.i.preheader, %._crit_edge20.i
  %.1.i.i = phi i64 [ %i.ai, %._crit_edge20.i ], [ 512, %.lr.ph19.i.preheader ], [ 512, %.lr.ph19.i ]
  %i.aj = sub nsw i64 %.1.i.i, %i.t
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
  %.neg113 = add nsw i64 %i.an, -64
  %i.bh = add nsw i64 %umin.i, %i.bg
  %i.bi = sub nsw i64 %.neg113, %i.bh
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
  %2 = add nsw i64 %i.a, -65
  %3 = add nsw i64 %2, %i.am
  %umin = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %4 = sub nsw i64 %3, %umin                      ; 2 uses
  %i.by = lshr i64 %4, 6
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 192
  br i1 %min.iters.check, label %.lr.ph.preheader238, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bz, 576460752303423484      ; 4 uses
  %i.ca = add nuw nsw i64 %.029.i9.i, %n.vec      ; 2 uses
  %i.cb = shl i64 %n.vec, 6
  %i.cc = sub i64 %i.ax, %i.cb                    ; 2 uses
  %i.cd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bx, i64 0
  %i.ce = getelementptr [8 x i8], ptr %i.bt, i64 %.029.i9.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.cd, %vector.ph ], [ %i.cj, %vector.body ]
  %vec.phi220 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ck, %vector.body ]
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load = load <2 x i64>, ptr %i.cf, align 8, !tbaa !35
  %wide.load221 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !35
  %i.ch = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ci = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load221)
  %i.cj = add <2 x i64> %i.ch, %vec.phi           ; 2 uses
  %i.ck = add <2 x i64> %i.ci, %vec.phi220        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ck, %i.cj
  %i.cm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %fb_scount.exit, label %.lr.ph.preheader238

.lr.ph.preheader238:                              ; preds = %.lr.ph.preheader, %middle.block
  %.029.i.i129.ph = phi i64 [ %.029.i9.i, %.lr.ph.preheader ], [ %i.ca, %middle.block ]
  %.0.i.i128.ph = phi i64 [ %i.ax, %.lr.ph.preheader ], [ %i.cc, %middle.block ]
  %.097127.ph = phi i64 [ %i.bx, %.lr.ph.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader238, %.lr.ph
  %.029.i.i129 = phi i64 [ %.029.i.i, %.lr.ph ], [ %.029.i.i129.ph, %.lr.ph.preheader238 ] ; 2 uses
  %.0.i.i128 = phi i64 [ %i.cr, %.lr.ph ], [ %.0.i.i128.ph, %.lr.ph.preheader238 ]
  %.097127 = phi i64 [ %i.cq, %.lr.ph ], [ %.097127.ph, %.lr.ph.preheader238 ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.029.i.i129
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !35
  %i.cp = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.co)
  %i.cq = add i64 %i.cp, %.097127                 ; 2 uses
  %i.cr = add i64 %.0.i.i128, -64                 ; 3 uses
  %.029.i.i = add nuw nsw i64 %.029.i.i129, 1     ; 2 uses
  %i.cs = icmp ugt i64 %i.cr, 64
  br i1 %i.cs, label %.lr.ph, label %fb_scount.exit, !llvm.loop !41

._crit_edge:                                      ; preds = %fb_set_range.exit
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %fb_scount.exit.thread, label %fb_scount.exit

fb_scount.exit.thread:                            ; preds = %._crit_edge
  %i.ct = or i64 %i.bv, %i.at
  store i64 %i.ct, ptr %i.bu, align 8, !tbaa !35
  br label %._crit_edge.i47

fb_scount.exit:                                   ; preds = %.lr.ph, %middle.block, %._crit_edge
  %.029.i.i.lcssa173 = phi i64 [ %.029.i9.i, %._crit_edge ], [ %i.ca, %middle.block ], [ %.029.i.i, %.lr.ph ]
  %.0.i.i.lcssa172 = phi i64 [ %i.ax, %._crit_edge ], [ %i.cc, %middle.block ], [ %i.cr, %.lr.ph ]
  %.097.lcssa171 = phi i64 [ %i.bx, %._crit_edge ], [ %i.cm, %middle.block ], [ %i.cq, %.lr.ph ]
  %i.cu = sub nuw nsw i64 64, %.0.i.i.lcssa172
  %i.cv = lshr i64 -1, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.029.i.i.lcssa173
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !35
  %i.cy = and i64 %i.cx, %i.cv
  %i.cz = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cy)
  %i.da = add i64 %i.cz, %.097.lcssa171           ; 2 uses
  %i.db = or i64 %i.bv, %i.at
  store i64 %i.db, ptr %i.bu, align 8, !tbaa !35
  br i1 %i.ay, label %fb_assign_visitor.exit.preheader.i52, label %._crit_edge.i47

fb_assign_visitor.exit.preheader.i52:             ; preds = %fb_scount.exit
  %i.dc = shl nuw nsw i64 %i.al, 3
  %i.dd = getelementptr i8, ptr %i.bt, i64 %i.dc
  %scevgep.i53 = getelementptr i8, ptr %i.dd, i64 8
  %i.de = add nsw i64 %i.an, -65
  %umin.i54 = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64) ; 2 uses
  %i.df = sub nsw i64 %i.de, %umin.i54            ; 2 uses
  %i.dg = lshr i64 %i.df, 6                       ; 2 uses
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = add nuw nsw i64 %i.dh, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i53, i8 -1, i64 %i.di, i1 false), !tbaa !35
  %i.dj = and i64 %i.df, -64
  %.neg115 = add nsw i64 %i.an, -64
  %i.dk = add nsw i64 %umin.i54, %i.dj
  %i.dl = sub nsw i64 %.neg115, %i.dk
  %i.dm = add nuw nsw i64 %i.al, 2
  %i.dn = add nuw nsw i64 %i.dm, %i.dg
  br label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %fb_scount.exit.thread, %fb_assign_visitor.exit.preheader.i52, %fb_scount.exit
  %.pn = phi i64 [ %i.da, %fb_scount.exit ], [ %i.da, %fb_assign_visitor.exit.preheader.i52 ], [ %i.bx, %fb_scount.exit.thread ]
  %.0.i.lcssa.i48 = phi i64 [ %i.ax, %fb_scount.exit ], [ %i.dl, %fb_assign_visitor.exit.preheader.i52 ], [ %i.ax, %fb_scount.exit.thread ] ; 2 uses
  %.029.i.lcssa.i49 = phi i64 [ %.029.i9.i, %fb_scount.exit ], [ %i.dn, %fb_assign_visitor.exit.preheader.i52 ], [ %.029.i9.i, %fb_scount.exit.thread ]
  %i.do = sub i64 %i.a, %.pn
  %.not.i.i50 = icmp eq i64 %.0.i.lcssa.i48, 0
  br i1 %.not.i.i50, label %fb_set_range.exit55, label %fb_assign_visitor.exit4.i51

fb_assign_visitor.exit4.i51:                      ; preds = %._crit_edge.i47
  %i.dp = sub nuw nsw i64 64, %.0.i.lcssa.i48
  %i.dq = lshr i64 -1, %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.029.i.lcssa.i49 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !35
  %i.dt = or i64 %i.ds, %i.dq
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !35
  br label %fb_set_range.exit55

fb_set_range.exit55:                              ; preds = %._crit_edge.i47, %fb_assign_visitor.exit4.i51
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !42
  %i.dw = add i64 %i.do, %i.dv
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !42
  %i.dx = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %.val42 = load i64, ptr %i.dx, align 8, !tbaa !34
  %i.dy = icmp eq i64 %.291, %.val42
  br i1 %i.dy, label %bb.f, label %bb.i

bb.f:                                             ; preds = %fb_set_range.exit55
  %i.dz = add i64 %.295, %i.a                     ; 2 uses
  %i.ea = icmp ult i64 %i.dz, 512
  br i1 %i.ea, label %.lr.ph135, label %.thread107

.lr.ph135:                                        ; preds = %bb.f, %bb.h
  %.2133 = phi i64 [ %i.fg, %bb.h ], [ %i.dz, %bb.f ] ; 2 uses
  %.335132 = phi i64 [ %spec.select40, %bb.h ], [ %.032, %bb.f ] ; 4 uses
  %i.eb = lshr i64 %.2133, 6                      ; 3 uses
  %i.ec = and i64 %.2133, 63
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.eb
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !35
  %i.ef = xor i64 %i.ee, -1
  %notmask.i4.i56 = shl nsw i64 -1, %i.ec
  %.040.i5.i57 = and i64 %notmask.i4.i56, %i.ef   ; 2 uses
  %i.eg = icmp eq i64 %.040.i5.i57, 0
  br i1 %i.eg, label %.lr.ph.i71.preheader, label %bb.g

.lr.ph.i71.preheader:                             ; preds = %.lr.ph135
  %i.eh = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 8
  br i1 %i.ei, label %.thread107, label %.lr.ph213

.lr.ph.i71:                                       ; preds = %.lr.ph213
  %i.ej = add nuw nsw i64 %i.el, 1                ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 8
  br i1 %i.ek, label %.thread107, label %.lr.ph213, !llvm.loop !36

.lr.ph213:                                        ; preds = %.lr.ph.i71.preheader, %.lr.ph.i71
  %i.el = phi i64 [ %i.ej, %.lr.ph.i71 ], [ %i.eh, %.lr.ph.i71.preheader ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !35 ; 2 uses
  %i.eo = icmp eq i64 %i.en, -1
  br i1 %i.eo, label %.lr.ph.i71, label %._crit_edge.loopexit.i73, !llvm.loop !36

._crit_edge.loopexit.i73:                         ; preds = %.lr.ph213
  %i.ep = xor i64 %i.en, -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph135, %._crit_edge.loopexit.i73
  %.141.i6.lcssa.i59 = phi i64 [ %.040.i5.i57, %.lr.ph135 ], [ %i.ep, %._crit_edge.loopexit.i73 ]
  %.039.i7.lcssa.i60 = phi i64 [ %i.eb, %.lr.ph135 ], [ %i.el, %._crit_edge.loopexit.i73 ] ; 4 uses
  %i.eq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i6.lcssa.i59, i1 true) ; 2 uses
  %i.er = shl nuw nsw i64 %.039.i7.lcssa.i60, 6
  %i.es = or disjoint i64 %i.er, %i.eq            ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.039.i7.lcssa.i60
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !35
  %notmask.i.i62 = shl nsw i64 -1, %i.eq
  %.040.i.i63 = and i64 %i.eu, %notmask.i.i62     ; 2 uses
  %i.ev = icmp eq i64 %.040.i.i63, 0
  br i1 %i.ev, label %.lr.ph19.i69.preheader, label %.loopexit

.lr.ph19.i69.preheader:                           ; preds = %bb.g
  %i.ew = add nuw nsw i64 %.039.i7.lcssa.i60, 1   ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 8
  br i1 %i.ex, label %.loopexit.thread, label %.lr.ph215

.lr.ph19.i69:                                     ; preds = %.lr.ph215
  %i.ey = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 8
  br i1 %i.ez, label %.loopexit.thread, label %.lr.ph215, !llvm.loop !36

.lr.ph215:                                        ; preds = %.lr.ph19.i69.preheader, %.lr.ph19.i69
  %i.fa = phi i64 [ %i.ey, %.lr.ph19.i69 ], [ %i.ew, %.lr.ph19.i69.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !35 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %.lr.ph19.i69, label %.loopexit, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph215, %bb.g
  %.141.i.lcssa.i65 = phi i64 [ %.040.i.i63, %bb.g ], [ %i.fc, %.lr.ph215 ]
  %.039.i.lcssa.i66 = phi i64 [ %.039.i7.lcssa.i60, %bb.g ], [ %i.fa, %.lr.ph215 ] ; 2 uses
  %i.fe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i65, i1 true)
  %i.ff = shl nuw nsw i64 %.039.i.lcssa.i66, 6
  %i.fg = or disjoint i64 %i.ff, %i.fe            ; 2 uses
  %i.fh = sub nsw i64 %i.fg, %i.es                ; 2 uses
  %i.fi = icmp eq i64 %i.fh, %.291
  br i1 %i.fi, label %.thread107, label %bb.h
end_hunk_0
