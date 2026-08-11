inline.NumInlined: 82
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@je_hpdata_age_heap_remove_any:bb.a

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
  %.092 = phi i64 [ 0, %bb.a ], [ %.294, %bb.d ]  ; 3 uses
  %.088 = phi i64 [ 0, %bb.a ], [ %.290, %bb.d ]  ; 3 uses
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
  %.294 = phi i64 [ %i.t, %fb_find_impl.exit.i ], [ %.092, %._crit_edge.i ], [ %.092, %.lr.ph.i.preheader ], [ %.092, %.lr.ph.i ] ; 6 uses
  %.290 = phi i64 [ %i.aj, %fb_find_impl.exit.i ], [ %.088, %._crit_edge.i ], [ %.088, %.lr.ph.i.preheader ], [ %.088, %.lr.ph.i ] ; 9 uses
  %.not = icmp ult i64 %.290, %i.a
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %fb_urange_iter.exit
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.290, i64 %.032)
  %i.ak = add i64 %.290, %.294
  br label %bb.b

bb.e:                                             ; preds = %fb_urange_iter.exit
  %i.al = lshr i64 %.294, 6                       ; 7 uses
  %i.am = and i64 %.294, 63                       ; 4 uses
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
  br i1 %i.ay, label %fb_assign_visitor.exit.preheader.i, label %._crit_edge.i43

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
  %.neg112 = add nsw i64 %i.an, -64
  %i.bh = add nsw i64 %umin.i, %i.bg
  %i.bi = sub nsw i64 %.neg112, %i.bh
  %i.bj = add nuw nsw i64 %i.al, 2
  %i.bk = add nuw nsw i64 %i.bj, %i.bd
  br label %._crit_edge.i43

._crit_edge.i43:                                  ; preds = %fb_assign_visitor.exit.preheader.i, %bb.e
  %.0.i.lcssa.i = phi i64 [ %i.ax, %bb.e ], [ %i.bi, %fb_assign_visitor.exit.preheader.i ] ; 2 uses
  %.029.i.lcssa.i = phi i64 [ %.029.i9.i, %bb.e ], [ %i.bk, %fb_assign_visitor.exit.preheader.i ]
  %.not.i.i44 = icmp eq i64 %.0.i.lcssa.i, 0
  br i1 %.not.i.i44, label %fb_set_range.exit, label %fb_assign_visitor.exit4.i

fb_assign_visitor.exit4.i:                        ; preds = %._crit_edge.i43
  %i.bl = sub nuw nsw i64 64, %.0.i.lcssa.i
  %i.bm = lshr i64 -1, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.029.i.lcssa.i ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !35
  %i.bp = or i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !35
  br label %fb_set_range.exit

fb_set_range.exit:                                ; preds = %._crit_edge.i43, %fb_assign_visitor.exit4.i
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
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %2 = add nuw nsw i64 %i.a, %i.am
  %i.bz = add nsw i64 %2, -65
  %3 = sub nsw i64 %i.bz, %i.by                   ; 2 uses
  %i.ca = lshr i64 %3, 6
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 192
  br i1 %min.iters.check, label %.lr.ph.preheader237, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.cb, 576460752303423484      ; 4 uses
  %i.cc = add nuw nsw i64 %.029.i9.i, %n.vec      ; 2 uses
  %i.cd = shl i64 %n.vec, 6
  %i.ce = sub i64 %i.ax, %i.cd                    ; 2 uses
  %i.cf = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bx, i64 0
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.029.i9.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.cf, %vector.ph ], [ %i.cl, %vector.body ]
  %vec.phi219 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cm, %vector.body ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load = load <2 x i64>, ptr %i.ch, align 8, !tbaa !35
  %wide.load220 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !35
  %i.cj = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ck = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load220)
  %i.cl = add <2 x i64> %i.cj, %vec.phi           ; 2 uses
  %i.cm = add <2 x i64> %i.ck, %vec.phi219        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cm, %i.cl
  %i.co = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %fb_scount.exit, label %.lr.ph.preheader237

.lr.ph.preheader237:                              ; preds = %.lr.ph.preheader, %middle.block
  %.029.i.i128.ph = phi i64 [ %.029.i9.i, %.lr.ph.preheader ], [ %i.cc, %middle.block ]
  %.0.i.i127.ph = phi i64 [ %i.ax, %.lr.ph.preheader ], [ %i.ce, %middle.block ]
  %.096126.ph = phi i64 [ %i.bx, %.lr.ph.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader237, %.lr.ph
  %.029.i.i128 = phi i64 [ %.029.i.i, %.lr.ph ], [ %.029.i.i128.ph, %.lr.ph.preheader237 ] ; 2 uses
  %.0.i.i127 = phi i64 [ %i.ct, %.lr.ph ], [ %.0.i.i127.ph, %.lr.ph.preheader237 ]
  %.096126 = phi i64 [ %i.cs, %.lr.ph ], [ %.096126.ph, %.lr.ph.preheader237 ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.029.i.i128
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !35
  %i.cr = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cq)
  %i.cs = add i64 %i.cr, %.096126                 ; 2 uses
  %i.ct = add i64 %.0.i.i127, -64                 ; 3 uses
  %.029.i.i = add nuw nsw i64 %.029.i.i128, 1     ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, 64
  br i1 %i.cu, label %.lr.ph, label %fb_scount.exit, !llvm.loop !41

._crit_edge:                                      ; preds = %fb_set_range.exit
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %fb_scount.exit.thread, label %fb_scount.exit

fb_scount.exit.thread:                            ; preds = %._crit_edge
  %i.cv = or i64 %i.bv, %i.at
  store i64 %i.cv, ptr %i.bu, align 8, !tbaa !35
  br label %._crit_edge.i46

fb_scount.exit:                                   ; preds = %.lr.ph, %middle.block, %._crit_edge
  %.029.i.i.lcssa172 = phi i64 [ %.029.i9.i, %._crit_edge ], [ %i.cc, %middle.block ], [ %.029.i.i, %.lr.ph ]
  %.0.i.i.lcssa171 = phi i64 [ %i.ax, %._crit_edge ], [ %i.ce, %middle.block ], [ %i.ct, %.lr.ph ]
  %.096.lcssa170 = phi i64 [ %i.bx, %._crit_edge ], [ %i.co, %middle.block ], [ %i.cs, %.lr.ph ]
  %i.cw = sub nuw nsw i64 64, %.0.i.i.lcssa171
  %i.cx = lshr i64 -1, %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.029.i.i.lcssa172
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !35
  %i.da = and i64 %i.cz, %i.cx
  %i.db = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.da)
  %i.dc = add i64 %i.db, %.096.lcssa170           ; 2 uses
  %i.dd = or i64 %i.bv, %i.at
  store i64 %i.dd, ptr %i.bu, align 8, !tbaa !35
  br i1 %i.ay, label %fb_assign_visitor.exit.preheader.i51, label %._crit_edge.i46

fb_assign_visitor.exit.preheader.i51:             ; preds = %fb_scount.exit
  %i.de = shl nuw nsw i64 %i.al, 3
  %i.df = getelementptr i8, ptr %i.bt, i64 %i.de
  %scevgep.i52 = getelementptr i8, ptr %i.df, i64 8
  %i.dg = add nsw i64 %i.an, -65
  %umin.i53 = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64) ; 2 uses
  %i.dh = sub nsw i64 %i.dg, %umin.i53            ; 2 uses
  %i.di = lshr i64 %i.dh, 6                       ; 2 uses
  %i.dj = shl nuw nsw i64 %i.di, 3
  %i.dk = add nuw nsw i64 %i.dj, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i52, i8 -1, i64 %i.dk, i1 false), !tbaa !35
  %i.dl = and i64 %i.dh, -64
  %.neg114 = add nsw i64 %i.an, -64
  %i.dm = add nsw i64 %umin.i53, %i.dl
  %i.dn = sub nsw i64 %.neg114, %i.dm
  %i.do = add nuw nsw i64 %i.al, 2
  %i.dp = add nuw nsw i64 %i.do, %i.di
  br label %._crit_edge.i46

._crit_edge.i46:                                  ; preds = %fb_scount.exit.thread, %fb_assign_visitor.exit.preheader.i51, %fb_scount.exit
  %.pn = phi i64 [ %i.dc, %fb_scount.exit ], [ %i.dc, %fb_assign_visitor.exit.preheader.i51 ], [ %i.bx, %fb_scount.exit.thread ]
  %.0.i.lcssa.i47 = phi i64 [ %i.ax, %fb_scount.exit ], [ %i.dn, %fb_assign_visitor.exit.preheader.i51 ], [ %i.ax, %fb_scount.exit.thread ] ; 2 uses
  %.029.i.lcssa.i48 = phi i64 [ %.029.i9.i, %fb_scount.exit ], [ %i.dp, %fb_assign_visitor.exit.preheader.i51 ], [ %.029.i9.i, %fb_scount.exit.thread ]
  %i.dq = sub i64 %i.a, %.pn
  %.not.i.i49 = icmp eq i64 %.0.i.lcssa.i47, 0
  br i1 %.not.i.i49, label %fb_set_range.exit54, label %fb_assign_visitor.exit4.i50

fb_assign_visitor.exit4.i50:                      ; preds = %._crit_edge.i46
  %i.dr = sub nuw nsw i64 64, %.0.i.lcssa.i47
  %i.ds = lshr i64 -1, %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.029.i.lcssa.i48 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !35
  %i.dv = or i64 %i.du, %i.ds
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !35
  br label %fb_set_range.exit54

fb_set_range.exit54:                              ; preds = %._crit_edge.i46, %fb_assign_visitor.exit4.i50
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !42
  %i.dy = add i64 %i.dq, %i.dx
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !42
  %i.dz = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %.val41 = load i64, ptr %i.dz, align 8, !tbaa !34
  %i.ea = icmp eq i64 %.290, %.val41
  br i1 %i.ea, label %bb.f, label %bb.i

bb.f:                                             ; preds = %fb_set_range.exit54
  %i.eb = add i64 %.294, %i.a                     ; 2 uses
  %i.ec = icmp ult i64 %i.eb, 512
  br i1 %i.ec, label %.lr.ph134, label %.thread106

.lr.ph134:                                        ; preds = %bb.f, %bb.h
  %.2132 = phi i64 [ %i.fi, %bb.h ], [ %i.eb, %bb.f ] ; 2 uses
  %.335131 = phi i64 [ %spec.select40, %bb.h ], [ %.032, %bb.f ] ; 4 uses
  %i.ed = lshr i64 %.2132, 6                      ; 3 uses
  %i.ee = and i64 %.2132, 63
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ed
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !35
  %i.eh = xor i64 %i.eg, -1
  %notmask.i4.i55 = shl nsw i64 -1, %i.ee
  %.040.i5.i56 = and i64 %notmask.i4.i55, %i.eh   ; 2 uses
  %i.ei = icmp eq i64 %.040.i5.i56, 0
  br i1 %i.ei, label %.lr.ph.i70.preheader, label %bb.g

.lr.ph.i70.preheader:                             ; preds = %.lr.ph134
  %i.ej = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 8
  br i1 %i.ek, label %.thread106, label %.lr.ph212

.lr.ph.i70:                                       ; preds = %.lr.ph212
  %i.el = add nuw nsw i64 %i.en, 1                ; 2 uses
  %i.em = icmp eq i64 %i.el, 8
  br i1 %i.em, label %.thread106, label %.lr.ph212, !llvm.loop !36

.lr.ph212:                                        ; preds = %.lr.ph.i70.preheader, %.lr.ph.i70
  %i.en = phi i64 [ %i.el, %.lr.ph.i70 ], [ %i.ej, %.lr.ph.i70.preheader ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !35 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, -1
  br i1 %i.eq, label %.lr.ph.i70, label %._crit_edge.loopexit.i72, !llvm.loop !36

._crit_edge.loopexit.i72:                         ; preds = %.lr.ph212
  %i.er = xor i64 %i.ep, -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph134, %._crit_edge.loopexit.i72
  %.141.i6.lcssa.i58 = phi i64 [ %.040.i5.i56, %.lr.ph134 ], [ %i.er, %._crit_edge.loopexit.i72 ]
  %.039.i7.lcssa.i59 = phi i64 [ %i.ed, %.lr.ph134 ], [ %i.en, %._crit_edge.loopexit.i72 ] ; 4 uses
  %i.es = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i6.lcssa.i58, i1 true) ; 2 uses
  %i.et = shl nuw nsw i64 %.039.i7.lcssa.i59, 6
  %i.eu = or disjoint i64 %i.et, %i.es            ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.039.i7.lcssa.i59
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !35
  %notmask.i.i61 = shl nsw i64 -1, %i.es
  %.040.i.i62 = and i64 %i.ew, %notmask.i.i61     ; 2 uses
  %i.ex = icmp eq i64 %.040.i.i62, 0
  br i1 %i.ex, label %.lr.ph19.i68.preheader, label %.loopexit

.lr.ph19.i68.preheader:                           ; preds = %bb.g
  %i.ey = add nuw nsw i64 %.039.i7.lcssa.i59, 1   ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 8
  br i1 %i.ez, label %.loopexit.thread, label %.lr.ph214

.lr.ph19.i68:                                     ; preds = %.lr.ph214
  %i.fa = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 8
  br i1 %i.fb, label %.loopexit.thread, label %.lr.ph214, !llvm.loop !36

.lr.ph214:                                        ; preds = %.lr.ph19.i68.preheader, %.lr.ph19.i68
  %i.fc = phi i64 [ %i.fa, %.lr.ph19.i68 ], [ %i.ey, %.lr.ph19.i68.preheader ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !35 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %.lr.ph19.i68, label %.loopexit, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph214, %bb.g
  %.141.i.lcssa.i64 = phi i64 [ %.040.i.i62, %bb.g ], [ %i.fe, %.lr.ph214 ]
  %.039.i.lcssa.i65 = phi i64 [ %.039.i7.lcssa.i59, %bb.g ], [ %i.fc, %.lr.ph214 ] ; 2 uses
  %i.fg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i64, i1 true)
  %i.fh = shl nuw nsw i64 %.039.i.lcssa.i65, 6
  %i.fi = or disjoint i64 %i.fh, %i.fg            ; 2 uses
end_hunk_0
