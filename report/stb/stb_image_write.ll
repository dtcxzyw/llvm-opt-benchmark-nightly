Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_write?download=true
inline.NumInlined: 97
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 28
begin_hunk_0_@stbiw__zlib_bitrev:bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %._crit_edge.loopexit.unr-lcssa ], [ %i.r, %.lr.ph.epil ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @stbiw__zlib_countm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %2, i32 258) ; 2 uses
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %invariant.smin to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %.not = icmp eq i8 %i.c, %i.e
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit.split.loop.exit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %._crit_edge.loopexit.split.loop.exit ], [ %invariant.smin, %bb.b ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stbiw__zhash(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load i16, ptr %0, align 1
  %i.b = zext i16 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 16
  %i.g = or disjoint i32 %i.f, %i.b               ; 2 uses
  %i.h = shl nuw nsw i32 %i.g, 3
  %i.i = xor i32 %i.h, %i.g                       ; 2 uses
  %i.j = lshr i32 %i.i, 5
  %i.k = add nuw nsw i32 %i.j, %i.i               ; 2 uses
  %i.l = shl nuw i32 %i.k, 4
  %i.m = xor i32 %i.l, %i.k                       ; 2 uses
  %i.n = lshr i32 %i.m, 17
  %i.o = add i32 %i.n, %i.m                       ; 2 uses
  %i.p = shl i32 %i.o, 25
  %i.q = xor i32 %i.p, %i.o                       ; 2 uses
  %i.r = lshr i32 %i.q, 6
  %i.s = add i32 %i.r, %i.q
  ret i32 %i.s
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define ptr @stbi_zlib_compress(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #26 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.by, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %3, i32 5) ; 4 uses
  %malloc = tail call dereferenceable_or_null(10) ptr @malloc(i64 10) ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %malloc) ]
  %i.c = getelementptr inbounds nuw i8, ptr %malloc, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %malloc, i64 8 ; 2 uses
  store i32 2, ptr %malloc, align 4, !tbaa !8
  store i32 1, ptr %i.c, align 4, !tbaa !8
  store i8 120, ptr %i.d, align 4, !tbaa !13
  %i.e = tail call dereferenceable_or_null(13) ptr @realloc(ptr noundef nonnull %malloc, i64 noundef 13) #27 ; 3 uses
  %.not18.i253 = icmp eq ptr %i.e, null
  br i1 %.not18.i253, label %stbiw__zlib_flushf.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 5, ptr %i.e, align 4, !tbaa !8
  br label %stbiw__zlib_flushf.exit.thread

stbiw__zlib_flushf.exit.thread:                   ; preds = %bb.b, %bb.c
  %.1633 = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.1633, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8    ; 2 uses
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !8
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds i8, ptr %.1633, i64 %i.j
  store i8 94, ptr %i.k, align 1, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.a, i8 0, i64 131072, i1 false), !tbaa !46
  %i.l = add nsw i32 %1, -3
  %i.m = icmp sgt i32 %1, 3
  br i1 %i.m, label %.lr.ph763, label %.preheader712

.lr.ph763:                                        ; preds = %stbiw__zlib_flushf.exit.thread
  %i.n = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.o = shl nuw nsw i32 %spec.store.select, 1
  %i.p = zext nneg i32 %spec.store.select to i64  ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  br label %bb.d

.preheader712:                                    ; preds = %stbiw__zlib_flushf.exit354, %stbiw__zlib_flushf.exit.thread
  %.0667.lcssa = phi i32 [ 3, %stbiw__zlib_flushf.exit.thread ], [ %.4671, %stbiw__zlib_flushf.exit354 ] ; 2 uses
  %.0638.lcssa = phi i32 [ 3, %stbiw__zlib_flushf.exit.thread ], [ %.4642, %stbiw__zlib_flushf.exit354 ] ; 2 uses
  %.2634.lcssa = phi ptr [ %.1633, %stbiw__zlib_flushf.exit.thread ], [ %.5636, %stbiw__zlib_flushf.exit354 ] ; 2 uses
  %.1193.lcssa = phi i32 [ 0, %stbiw__zlib_flushf.exit.thread ], [ %.2194, %stbiw__zlib_flushf.exit354 ] ; 2 uses
  %i.r = icmp slt i32 %.1193.lcssa, %1
  br i1 %i.r, label %.lr.ph772.preheader, label %.lr.ph.i423.preheader

.lr.ph772.preheader:                              ; preds = %.preheader712
  %i.s = sext i32 %.1193.lcssa to i64
  %wide.trip.count857 = sext i32 %1 to i64
  br label %.lr.ph772

bb.d:                                             ; preds = %.lr.ph763, %stbiw__zlib_flushf.exit354
  %.1193762 = phi i32 [ 0, %.lr.ph763 ], [ %.2194, %stbiw__zlib_flushf.exit354 ] ; 6 uses
  %.2634761 = phi ptr [ %.1633, %.lr.ph763 ], [ %.5636, %stbiw__zlib_flushf.exit354 ] ; 8 uses
  %.0638760 = phi i32 [ 3, %.lr.ph763 ], [ %.4642, %stbiw__zlib_flushf.exit354 ] ; 12 uses
  %.0667759 = phi i32 [ 3, %.lr.ph763 ], [ %.4671, %stbiw__zlib_flushf.exit354 ] ; 4 uses
  %i.t = sext i32 %.1193762 to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t ; 8 uses
  %i.v = load i16, ptr %i.u, align 1
  %i.w = zext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 16
  %i.ab = or disjoint i32 %i.aa, %i.w             ; 2 uses
  %i.ac = shl nuw nsw i32 %i.ab, 3
  %i.ad = xor i32 %i.ac, %i.ab                    ; 2 uses
  %i.ae = lshr i32 %i.ad, 5
  %i.af = add nuw nsw i32 %i.ae, %i.ad            ; 2 uses
  %i.ag = shl nuw i32 %i.af, 4
  %i.ah = xor i32 %i.ag, %i.af                    ; 2 uses
  %i.ai = lshr i32 %i.ah, 17
  %i.aj = add i32 %i.ai, %i.ah                    ; 2 uses
  %i.ak = lshr i32 %i.aj, 6
  %i.al = add i32 %i.ak, %i.aj
  %i.am = and i32 %i.al, 16383
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 10 uses
  %.not239 = icmp eq ptr %i.ap, null              ; 3 uses
  br i1 %.not239, label %._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8  ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge.thread995

.lr.ph:                                           ; preds = %bb.e
  %i.at = add nsw i32 %.1193762, -32768
  %i.au = sext i32 %i.at to i64
  %i.av = sub nsw i32 %1, %.1193762
  %invariant.smin.i = tail call i32 @llvm.smin.i32(i32 %i.av, i32 258) ; 2 uses
  %wide.trip.count.i = zext nneg i32 %invariant.smin.i to i64
  %wide.trip.count = zext nneg i32 %i.ar to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.0180751 = phi ptr [ null, %.lr.ph ], [ %.2, %bb.h ] ; 2 uses
  %.0182750 = phi i32 [ 3, %.lr.ph ], [ %.2184, %bb.h ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !49 ; 3 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.n
  %i.ba = icmp sgt i64 %i.az, %i.au
  br i1 %i.ba, label %.lr.ph.i269, label %bb.h

.lr.ph.i269:                                      ; preds = %bb.f, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  %.not.i270 = icmp eq i8 %i.bc, %i.be
  br i1 %.not.i270, label %bb.g, label %._crit_edge.loopexit.split.loop.exit.i

bb.g:                                             ; preds = %.lr.ph.i269
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbiw__zlib_countm.exit, label %.lr.ph.i269, !llvm.loop !45

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i269
  %i.bf = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %stbiw__zlib_countm.exit

stbiw__zlib_countm.exit:                          ; preds = %bb.g, %._crit_edge.loopexit.split.loop.exit.i
  %.0.lcssa.i268 = phi i32 [ %i.bf, %._crit_edge.loopexit.split.loop.exit.i ], [ %invariant.smin.i, %bb.g ] ; 2 uses
  %.not250 = icmp slt i32 %.0.lcssa.i268, %.0182750
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0.lcssa.i268, i32 %.0182750)
  %spec.select709 = select i1 %.not250, ptr %.0180751, ptr %i.ax
  br label %bb.h

bb.h:                                             ; preds = %stbiw__zlib_countm.exit, %bb.f
  %.2184 = phi i32 [ %.0182750, %bb.f ], [ %spec.select, %stbiw__zlib_countm.exit ] ; 2 uses
  %.2 = phi ptr [ %.0180751, %bb.f ], [ %spec.select709, %stbiw__zlib_countm.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread995, label %bb.f, !llvm.loop !51

._crit_edge.thread995:                            ; preds = %bb.h, %bb.e
  %.0180.lcssa999 = phi ptr [ null, %bb.e ], [ %.2, %bb.h ] ; 2 uses
  %.0182.lcssa998 = phi i32 [ 3, %bb.e ], [ %.2184, %bb.h ] ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.ap, i64 -4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !8  ; 2 uses
  %i.bi = icmp eq i32 %i.bh, %i.o
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.thread995
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.p
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.q, i1 false)
  store i32 %spec.store.select, ptr %i.bg, align 4, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.thread995
  %i.bk = phi i32 [ %spec.store.select, %bb.i ], [ %i.bh, %._crit_edge.thread995 ]
  %i.bl = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.bm = add nsw i32 %i.bk, 1
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !8  ; 2 uses
  %.not241 = icmp slt i32 %i.bm, %i.bn
  br i1 %.not241, label %stbiw__sbgrowf.exit276, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = shl nsw i32 %i.bn, 1
  %i.bp = or disjoint i32 %i.bo, 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.d, %bb.k
  %.0180.lcssa994 = phi ptr [ %.0180.lcssa999, %bb.k ], [ null, %bb.d ] ; 2 uses
  %.0182.lcssa992 = phi i32 [ %.0182.lcssa998, %bb.k ], [ 3, %bb.d ] ; 2 uses
  %i.bq = phi i32 [ %i.bp, %bb.k ], [ 2, %bb.d ]  ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %spec.select.i272 = select i1 %.not239, ptr null, ptr %i.br
  %i.bs = shl nsw i32 %i.bq, 3
  %i.bt = sext i32 %i.bs to i64
  %i.bu = add nsw i64 %i.bt, 8
  %i.bv = tail call ptr @realloc(ptr noundef %spec.select.i272, i64 noundef %i.bu) #27 ; 4 uses
  %.not18.i273 = icmp eq ptr %i.bv, null
  br i1 %.not18.i273, label %stbiw__sbgrowf.exit276, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread
  br i1 %.not239, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 0, ptr %i.bw, align 4, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  store ptr %i.bx, ptr %i.ao, align 8, !tbaa !40
  store i32 %i.bq, ptr %i.bv, align 4, !tbaa !8
  br label %stbiw__sbgrowf.exit276

stbiw__sbgrowf.exit276:                           ; preds = %bb.n, %._crit_edge.thread, %bb.j
  %.0180.lcssa993 = phi ptr [ %.0180.lcssa994, %bb.n ], [ %.0180.lcssa994, %._crit_edge.thread ], [ %.0180.lcssa999, %bb.j ] ; 2 uses
  %.0182.lcssa991 = phi i32 [ %.0182.lcssa992, %bb.n ], [ %.0182.lcssa992, %._crit_edge.thread ], [ %.0182.lcssa998, %bb.j ] ; 6 uses
  %i.by = phi ptr [ %i.bx, %bb.n ], [ %i.ap, %._crit_edge.thread ], [ %i.ap, %bb.j ] ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !8  ; 2 uses
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !8
  %i.cc = sext i32 %i.ca to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cc
  store ptr %i.u, ptr %i.cd, align 8, !tbaa !49
  %.not242 = icmp eq ptr %.0180.lcssa993, null
  br i1 %.not242, label %.thread705, label %bb.o

bb.o:                                             ; preds = %stbiw__sbgrowf.exit276
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 1
  %i.cg = zext i16 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 16
  %i.cl = or disjoint i32 %i.ck, %i.cg            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.cl, 3
  %i.cn = xor i32 %i.cm, %i.cl                    ; 2 uses
  %i.co = lshr i32 %i.cn, 5
  %i.cp = add nuw nsw i32 %i.co, %i.cn            ; 2 uses
  %i.cq = shl nuw i32 %i.cp, 4
  %i.cr = xor i32 %i.cq, %i.cp                    ; 2 uses
  %i.cs = lshr i32 %i.cr, 17
  %i.ct = add i32 %i.cs, %i.cr                    ; 2 uses
  %i.cu = lshr i32 %i.ct, 6
  %i.cv = add i32 %i.cu, %i.ct
  %i.cw = and i32 %i.cv, 16383
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !46 ; 3 uses
  %.not243 = icmp eq ptr %i.cz, null
  br i1 %.not243, label %stbiw__zlib_countm.exit287._crit_edge.thread.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !8  ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph755, label %stbiw__zlib_countm.exit287._crit_edge.thread.preheader

.lr.ph755:                                        ; preds = %bb.p
  %i.dd = add nsw i32 %.1193762, -32767
  %i.de = sext i32 %i.dd to i64
  %i.df = xor i32 %.1193762, -1
  %i.dg = add i32 %1, %i.df                       ; 2 uses
  %invariant.smin.i277 = tail call i32 @llvm.smin.i32(i32 %i.dg, i32 258) ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  %wide.trip.count.i280 = zext nneg i32 %invariant.smin.i277 to i64
  %wide.trip.count846 = zext nneg i32 %i.db to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph755, %bb.t
  %indvars.iv843 = phi i64 [ 0, %.lr.ph755 ], [ %indvars.iv.next844, %bb.t ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv843
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !49 ; 2 uses
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.n
  %i.dm = icmp sgt i64 %i.dl, %i.de
  br i1 %i.dm, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  br i1 %i.dh, label %.lr.ph.i281, label %stbiw__zlib_countm.exit287

.lr.ph.i281:                                      ; preds = %bb.r, %bb.s
  %indvars.iv.i282 = phi i64 [ %indvars.iv.next.i285, %bb.s ], [ 0, %bb.r ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.i282
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !13
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv.i282
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !13
  %.not.i283 = icmp eq i8 %i.do, %i.dq
  br i1 %.not.i283, label %bb.s, label %._crit_edge.loopexit.split.loop.exit.i284

bb.s:                                             ; preds = %.lr.ph.i281
  %indvars.iv.next.i285 = add nuw nsw i64 %indvars.iv.i282, 1 ; 2 uses
  %exitcond.not.i286 = icmp eq i64 %indvars.iv.next.i285, %wide.trip.count.i280
  br i1 %exitcond.not.i286, label %stbiw__zlib_countm.exit287, label %.lr.ph.i281, !llvm.loop !45

._crit_edge.loopexit.split.loop.exit.i284:        ; preds = %.lr.ph.i281
  %i.dr = trunc nuw nsw i64 %indvars.iv.i282 to i32
  br label %stbiw__zlib_countm.exit287

stbiw__zlib_countm.exit287:                       ; preds = %bb.s, %bb.r, %._crit_edge.loopexit.split.loop.exit.i284
  %.0.lcssa.i278 = phi i32 [ 0, %bb.r ], [ %i.dr, %._crit_edge.loopexit.split.loop.exit.i284 ], [ %invariant.smin.i277, %bb.s ]
  %i.ds = icmp sgt i32 %.0.lcssa.i278, %.0182.lcssa991
  br i1 %i.ds, label %.thread705, label %bb.t

bb.t:                                             ; preds = %stbiw__zlib_countm.exit287, %bb.q
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 1 ; 2 uses
  %exitcond847.not = icmp eq i64 %indvars.iv.next844, %wide.trip.count846
  br i1 %exitcond847.not, label %stbiw__zlib_countm.exit287._crit_edge.thread.preheader, label %bb.q, !llvm.loop !52

stbiw__zlib_countm.exit287._crit_edge.thread.preheader: ; preds = %bb.t, %bb.o, %bb.p
  br label %stbiw__zlib_countm.exit287._crit_edge.thread

stbiw__zlib_countm.exit287._crit_edge.thread:     ; preds = %stbiw__zlib_countm.exit287._crit_edge.thread.preheader, %stbiw__zlib_countm.exit287._crit_edge.thread
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %stbiw__zlib_countm.exit287._crit_edge.thread ], [ 0, %stbiw__zlib_countm.exit287._crit_edge.thread.preheader ] ; 6 uses
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1 ; 3 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr @__const.stbi_zlib_compress.lengthc, i64 %indvars.iv.next849
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !53
  %i.dv = zext i16 %i.du to i32
  %.not246 = icmp slt i32 %.0182.lcssa991, %i.dv
  br i1 %.not246, label %bb.u, label %stbiw__zlib_countm.exit287._crit_edge.thread, !llvm.loop !55

bb.u:                                             ; preds = %stbiw__zlib_countm.exit287._crit_edge.thread
  %i.dw = ptrtoint ptr %i.u to i64
  %i.dx = ptrtoint ptr %.0180.lcssa993 to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = trunc i64 %i.dy to i32                  ; 2 uses
  %i.ea = trunc nuw nsw i64 %indvars.iv848 to i32
  %i.eb = icmp samesign ult i64 %indvars.iv848, 23
  br i1 %i.eb, label %.lr.ph.i288.preheader, label %.lr.ph.i301

.lr.ph.i288.preheader:                            ; preds = %bb.u
  %trunc943 = trunc nuw nsw i64 %indvars.iv.next849 to i7
  %rev944 = tail call i7 @llvm.bitreverse.i7(i7 %trunc943)
  %i.ec = zext i7 %rev944 to i32
  %i.ed = shl i32 %i.ec, %.0638760
  %i.ee = or i32 %i.ed, %.0667759                 ; 2 uses
  %i.ef = add nsw i32 %.0638760, 7                ; 2 uses
  %i.eg = icmp sgt i32 %.0638760, 0
  br i1 %i.eg, label %.lr.ph.i293.preheader, label %stbiw__zlib_flushf.exit300

.lr.ph.i293.preheader:                            ; preds = %.lr.ph.i288.preheader, %stbiw__sbgrowf.exit.i298
  %.12679 = phi i32 [ %i.ez, %stbiw__sbgrowf.exit.i298 ], [ %i.ee, %.lr.ph.i288.preheader ] ; 2 uses
  %.12650 = phi i32 [ %i.fa, %stbiw__sbgrowf.exit.i298 ], [ %i.ef, %.lr.ph.i288.preheader ] ; 2 uses
  %.07.i294 = phi ptr [ %.1.i299, %stbiw__sbgrowf.exit.i298 ], [ %.2634761, %.lr.ph.i288.preheader ] ; 5 uses
  %i.eh = getelementptr inbounds i8, ptr %.07.i294, i64 -8
  %i.ei = getelementptr inbounds i8, ptr %.07.i294, i64 -4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.ek = add nsw i32 %i.ej, 1
  %i.el = load i32, ptr %i.eh, align 4, !tbaa !8  ; 2 uses
  %.not.i295 = icmp slt i32 %i.ek, %i.el
  br i1 %.not.i295, label %stbiw__sbgrowf.exit.i298, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i293.preheader
  %i.em = shl nsw i32 %i.el, 1                    ; 2 uses
end_hunk_0
