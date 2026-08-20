inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 44
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@mi_arenas_try_purge:bb.a
  br label %mi_option_get.exit.i

mi_option_get.exit.i:                             ; preds = %bb.c, %bb.b
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 480), align 16, !tbaa !114
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 776), align 8, !tbaa !111
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %mi_arena_purge_delay.exit, !prof !17

bb.d:                                             ; preds = %mi_option_get.exit.i
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 768)), !inline_history !113
  br label %mi_arena_purge_delay.exit

mi_arena_purge_delay.exit:                        ; preds = %mi_option_get.exit.i, %bb.d
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 768), align 16, !tbaa !114
  %i.h = mul i64 %i.g, %i.d
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %mi_arena_purge_delay.exit
  %i.j = load atomic i64, ptr @mi_arena_count acquire, align 64 ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = cmpxchg ptr @mi_arenas_try_purge.purge_guard, i64 0, i64 1 acq_rel acquire, align 8
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.preheader
  %i.o = select i1 %1, i64 %i.j, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.q = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #55 ; 0 uses
  %i.r = load i64, ptr %4, align 8, !tbaa !138
  %i.s = mul i64 %i.r, 1000
  %i.t = load i64, ptr %i.p, align 8, !tbaa !140
  %i.u = sdiv i64 %i.t, 1000000
  %i.v = add i64 %i.u, %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.02140 = phi i64 [ 0, %bb.f ], [ %i.dk, %.thread ] ; 2 uses
  %.02239 = phi i64 [ %i.o, %bb.f ], [ %.233, %.thread ] ; 9 uses
  %i.w = getelementptr [8 x i8], ptr @mi_arenas, i64 %.02140
  %i.x = load atomic ptr, ptr %i.w acquire, align 8 ; 7 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !132, !range !42, !noundef !43
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %i.x, i64 128     ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !141
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %i.x, i64 104     ; 3 uses
  %i.af = load atomic i64, ptr %i.ae monotonic, align 8 ; 3 uses
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = icmp sle i64 %i.af, %i.v
  %or.cond.not.i = or i1 %0, %i.ah
  %or.cond.i = and i1 %i.ag, %or.cond.not.i
  br i1 %or.cond.i, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = cmpxchg ptr %i.ae, i64 %i.af, i64 0 acq_rel acquire, align 8 ; 0 uses
  %i.aj = getelementptr i8, ptr %i.x, i64 48      ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !131 ; 2 uses
  %.not99.i = icmp eq i64 %i.ak, 0
  br i1 %.not99.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.al = getelementptr i8, ptr %i.x, i64 136
  br label %bb.l

._crit_edge.i:                                    ; preds = %.loopexit.i
  br i1 %.4.i, label %mi_arena_try_purge.exit, label %bb.u

bb.l:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %i.am = phi i64 [ %i.ak, %.lr.ph.i ], [ %i.cr, %.loopexit.i ]
  %.05896.i = phi i1 [ false, %.lr.ph.i ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %.06295.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cs, %.loopexit.i ] ; 5 uses
  %.06394.i = phi i1 [ true, %.lr.ph.i ], [ %.4.i, %.loopexit.i ] ; 2 uses
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !141
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %.06295.i
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %.loopexit.i, label %.preheader82.i

.preheader82.i:                                   ; preds = %bb.l
  %i.aq = shl i64 %.06295.i, 6
  %i.ar = and i64 %.06295.i, 288230376151711743
  %i.as = getelementptr [8 x i8], ptr %i.al, i64 %i.ar ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge74.i, %.preheader82.i
  %.05792.i = phi i64 [ 0, %.preheader82.i ], [ %i.cp, %.critedge74.i ] ; 7 uses
  %.15991.i = phi i1 [ %.05896.i, %.preheader82.i ], [ %.2.i, %.critedge74.i ] ; 2 uses
  %.06090.i = phi i64 [ %i.ap, %.preheader82.i ], [ %.161.i, %.critedge74.i ] ; 3 uses
  %.16489.i = phi i1 [ %.06394.i, %.preheader82.i ], [ %.366.i, %.critedge74.i ] ; 3 uses
  %i.at = sub nuw nsw i64 64, %.05792.i           ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.preheader.i
  %.05586.i = phi i64 [ 0, %.preheader.i ], [ %i.ax, %bb.n ] ; 4 uses
  %i.au = add nuw nsw i64 %.05586.i, %.05792.i
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.av, %.06090.i
  %.not70.i = icmp eq i64 %i.aw, 0
  br i1 %.not70.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = add nuw nsw i64 %.05586.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %i.at
  br i1 %exitcond.not.i, label %mi_bitmap_mask_.exit.i.i.preheader, label %bb.m, !llvm.loop !144

.critedge.i:                                      ; preds = %bb.m
  %.not7187.i = icmp eq i64 %.05586.i, 0
  br i1 %.not7187.i, label %.critedge74.i, label %mi_bitmap_mask_.exit.i.i.preheader

mi_bitmap_mask_.exit.i.i.preheader:               ; preds = %bb.n, %.critedge.i
  %.15688.i.ph = phi i64 [ %.05586.i, %.critedge.i ], [ %i.at, %bb.n ]
  br label %mi_bitmap_mask_.exit.i.i

mi_bitmap_mask_.exit.i.i:                         ; preds = %mi_bitmap_mask_.exit.i.i.preheader, %_mi_bitmap_try_claim.exit.i
  %.15688.i = phi i64 [ %i.bh, %_mi_bitmap_try_claim.exit.i ], [ %.15688.i.ph, %mi_bitmap_mask_.exit.i.i.preheader ] ; 6 uses
  %i.ay = icmp ugt i64 %.15688.i, 63              ; 2 uses
  %notmask.i.i.i = shl nsw i64 -1, %.15688.i
  %i.az = xor i64 %notmask.i.i.i, -1
  %i.ba = shl i64 %i.az, %.05792.i                ; 2 uses
  %.0.i.i.i = select i1 %i.ay, i64 -1, i64 %i.ba  ; 2 uses
  %i.bb = load atomic i64, ptr %i.as monotonic, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %mi_bitmap_mask_.exit.i.i
  %.016.i.i = phi i64 [ %i.bb, %mi_bitmap_mask_.exit.i.i ], [ %i.bg, %bb.p ] ; 3 uses
  %i.bc = and i64 %.016.i.i, %.0.i.i.i
  %.not.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i, label %bb.p, label %_mi_bitmap_try_claim.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bd = or i64 %.016.i.i, %.0.i.i.i
  %i.be = cmpxchg ptr %i.as, i64 %.016.i.i, i64 %i.bd acq_rel acquire, align 8 ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  %i.bg = extractvalue { i64, i1 } %i.be, 0
  br i1 %i.bf, label %bb.q, label %bb.o, !llvm.loop !145

_mi_bitmap_try_claim.exit.i:                      ; preds = %bb.o
  %i.bh = add nsw i64 %.15688.i, -1               ; 2 uses
  %.not71.i = icmp eq i64 %i.bh, 0
  br i1 %.not71.i, label %.critedge74.i, label %mi_bitmap_mask_.exit.i.i, !llvm.loop !146

bb.q:                                             ; preds = %bb.p
  %i.bi = load ptr, ptr %i.ab, align 8, !tbaa !141
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %.06295.i
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 3 uses
  %i.bl = add i64 %.15688.i, %.05792.i            ; 4 uses
  %i.bm = icmp ult i64 %.05792.i, %i.bl
  br i1 %i.bm, label %.preheader.i.i.preheader, label %mi_arena_purge_range.exit.thread.i

.preheader.i.i.preheader:                         ; preds = %bb.q
  %broadcast.splatinsert70 = insertelement <16 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat71 = shufflevector <16 x i64> %broadcast.splatinsert70, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.t
  %.02330.i.i = phi i1 [ %.2.i.i, %bb.t ], [ false, %.preheader.i.i.preheader ] ; 2 uses
  %.02429.i.i = phi i64 [ %i.ci, %bb.t ], [ %.05792.i, %.preheader.i.i.preheader ] ; 7 uses
  %i.bn = add i64 %.02429.i.i, 1
  %i.bo = call i64 @llvm.umax.i64(i64 %i.bl, i64 %i.bn)
  %i.bp = sub i64 %i.bo, %.02429.i.i              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bp, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i
  %n.vec = and i64 %i.bp, -16                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.02429.i.i, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.bq = add <16 x i64> %vec.ind, %broadcast.splat
  %i.br = shl nuw <16 x i64> splat (i64 1), %i.bq
  %i.bs = and <16 x i64> %i.br, %broadcast.splat71
  %.fr = freeze <16 x i64> %i.bs
  %i.bt = icmp eq <16 x i64> %.fr, zeroinitializer ; 2 uses
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %.not72 = icmp eq i16 %i.bu, 0
  br i1 %.not72, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nuw <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %bb.s, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %.028.i.i.ph = phi i64 [ 0, %.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.bw = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.bt, i1 false)
  %i.bx = add i64 %index, %i.bw
  br label %.critedge.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.r
  %.028.i.i = phi i64 [ %i.cb, %bb.r ], [ %.028.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.by = add i64 %.028.i.i, %.02429.i.i
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = and i64 %i.bz, %i.bk
  %.not.i75.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i75.i, label %.critedge.i.i, label %bb.r

bb.r:                                             ; preds = %scalar.ph
  %i.cb = add nuw i64 %.028.i.i, 1                ; 3 uses
  %i.cc = add i64 %i.cb, %.02429.i.i
  %i.cd = icmp ult i64 %i.cc, %i.bl
  br i1 %i.cd, label %scalar.ph, label %bb.s, !llvm.loop !150

.critedge.i.i:                                    ; preds = %scalar.ph, %vector.early.exit
  %.028.i.i.lcssa = phi i64 [ %i.bx, %vector.early.exit ], [ %.028.i.i, %scalar.ph ] ; 2 uses
  %.not27.i.i = icmp eq i64 %.028.i.i.lcssa, 0
  br i1 %.not27.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %middle.block, %.critedge.i.i
  %.0.lcssa35.i.i = phi i64 [ %.028.i.i.lcssa, %.critedge.i.i ], [ %n.vec, %middle.block ], [ %i.cb, %bb.r ] ; 3 uses
  %i.ce = add i64 %.02429.i.i, %i.aq
  call fastcc void @mi_arena_purge(ptr noundef nonnull %i.x, i64 noundef %i.ce, i64 noundef %.0.lcssa35.i.i, ptr noundef %2)
  %i.cf = icmp eq i64 %.0.lcssa35.i.i, %.15688.i
  %spec.select.i.i = select i1 %i.cf, i1 true, i1 %.02330.i.i
  %i.cg = freeze i1 %spec.select.i.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge.i.i
  %.0.lcssa36.i.i = phi i64 [ %.0.lcssa35.i.i, %bb.s ], [ 0, %.critedge.i.i ]
  %.2.i.i = phi i1 [ %i.cg, %bb.s ], [ %.02330.i.i, %.critedge.i.i ] ; 2 uses
  %i.ch = add i64 %.02429.i.i, 1
  %i.ci = add i64 %i.ch, %.0.lcssa36.i.i          ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.bl
  br i1 %i.cj, label %.preheader.i.i, label %mi_arena_purge_range.exit.i, !llvm.loop !151

mi_arena_purge_range.exit.i:                      ; preds = %bb.t
  %spec.select.i = select i1 %.2.i.i, i1 %.16489.i, i1 false
  br label %mi_arena_purge_range.exit.thread.i

mi_arena_purge_range.exit.thread.i:               ; preds = %mi_arena_purge_range.exit.i, %bb.q
  %i.ck = phi i1 [ false, %bb.q ], [ %spec.select.i, %mi_arena_purge_range.exit.i ]
  %i.cl = xor i64 %i.ba, -1
  %i.cm = select i1 %i.ay, i64 0, i64 %i.cl
  %i.cn = atomicrmw and ptr %i.as, i64 %i.cm acq_rel, align 8 ; 0 uses
  br label %.critedge74.i

.critedge74.i:                                    ; preds = %_mi_bitmap_try_claim.exit.i, %mi_arena_purge_range.exit.thread.i, %.critedge.i
  %.15684.i = phi i64 [ %.15688.i, %mi_arena_purge_range.exit.thread.i ], [ 0, %.critedge.i ], [ 0, %_mi_bitmap_try_claim.exit.i ]
  %.366.i = phi i1 [ %i.ck, %mi_arena_purge_range.exit.thread.i ], [ %.16489.i, %.critedge.i ], [ %.16489.i, %_mi_bitmap_try_claim.exit.i ] ; 2 uses
  %.161.i = phi i64 [ %i.bk, %mi_arena_purge_range.exit.thread.i ], [ %.06090.i, %.critedge.i ], [ %.06090.i, %_mi_bitmap_try_claim.exit.i ]
  %.2.i = phi i1 [ true, %mi_arena_purge_range.exit.thread.i ], [ %.15991.i, %.critedge.i ], [ %.15991.i, %_mi_bitmap_try_claim.exit.i ] ; 2 uses
  %i.co = add nuw nsw i64 %.05792.i, 1
  %i.cp = add i64 %i.co, %.15684.i                ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 64
  br i1 %i.cq, label %.preheader.i, label %.loopexit.loopexit.i, !llvm.loop !152

.loopexit.loopexit.i:                             ; preds = %.critedge74.i
  %.pre.i = load i64, ptr %i.aj, align 8, !tbaa !131
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.l
  %i.cr = phi i64 [ %i.am, %bb.l ], [ %.pre.i, %.loopexit.loopexit.i ] ; 2 uses
  %.4.i = phi i1 [ %.06394.i, %bb.l ], [ %.366.i, %.loopexit.loopexit.i ] ; 2 uses
  %.3.i = phi i1 [ %.05896.i, %bb.l ], [ %.2.i, %.loopexit.loopexit.i ] ; 3 uses
  %i.cs = add nuw i64 %.06295.i, 1                ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  br i1 %i.ct, label %bb.l, label %._crit_edge.i, !llvm.loop !153

bb.u:                                             ; preds = %._crit_edge.i
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 488), align 8, !tbaa !111
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.v, label %mi_option_get.exit.i.i, !prof !17

bb.v:                                             ; preds = %bb.u
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 480)), !inline_history !113
  br label %mi_option_get.exit.i.i

mi_option_get.exit.i.i:                           ; preds = %bb.v, %bb.u
  %i.cw = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 480), align 16, !tbaa !114
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 776), align 8, !tbaa !111
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.w, label %mi_arena_purge_delay.exit.i, !prof !17

bb.w:                                             ; preds = %mi_option_get.exit.i.i
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 768)), !inline_history !113
  br label %mi_arena_purge_delay.exit.i

mi_arena_purge_delay.exit.i:                      ; preds = %bb.w, %mi_option_get.exit.i.i
  %i.cz = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 768), align 16, !tbaa !114
  %i.da = mul i64 %i.cz, %i.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.db = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #55 ; 0 uses
  %i.dc = load i64, ptr %3, align 8, !tbaa !138
  %i.dd = mul i64 %i.dc, 1000
  %i.de = load i64, ptr %i.l, align 8, !tbaa !140
  %i.df = sdiv i64 %i.de, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.dg = add i64 %i.dd, %i.da
  %i.dh = add i64 %i.dg, %i.df
  %i.di = cmpxchg ptr %i.ae, i64 0, i64 %i.dh acq_rel acquire, align 8 ; 0 uses
  br i1 %.3.i, label %bb.x, label %.thread

mi_arena_try_purge.exit:                          ; preds = %._crit_edge.i
  br i1 %.3.i, label %bb.x, label %.thread

bb.x:                                             ; preds = %mi_arena_try_purge.exit, %mi_arena_purge_delay.exit.i
  %i.dj = icmp ugt i64 %.02239, 1
  %spec.select28 = add i64 %.02239, -1
  br i1 %i.dj, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %mi_arena_purge_delay.exit.i, %bb.g, %mi_arena_try_purge.exit, %bb.x
  %.233 = phi i64 [ %spec.select28, %bb.x ], [ %.02239, %mi_arena_try_purge.exit ], [ %.02239, %bb.g ], [ %.02239, %mi_arena_purge_delay.exit.i ], [ %.02239, %bb.h ], [ %.02239, %bb.i ], [ %.02239, %bb.j ], [ %.02239, %bb.k ]
  %i.dk = add nuw i64 %.02140, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dk, %i.j
  br i1 %exitcond.not, label %bb.y, label %bb.g, !llvm.loop !154

bb.y:                                             ; preds = %.thread, %bb.x
  store atomic i64 0, ptr @mi_arenas_try_purge.purge_guard release, align 8
  br label %.critedge, !llvm.loop !155

.critedge:                                        ; preds = %.preheader, %bb.y, %bb.e, %bb.a, %mi_arena_purge_delay.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_arena_collect(i1 noundef zeroext %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @mi_arenas_try_purge(i1 noundef zeroext %0, i1 noundef zeroext true, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_arena_unsafe_destroy_all(ptr nofree noundef captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load atomic i64, ptr @mi_arena_count monotonic, align 64 ; 3 uses
  %.not28.i = icmp eq i64 %i.a, 0
  br i1 %.not28.i, label %mi_arenas_unsafe_destroy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %mi_arena_meta_free.exit.i
  %.027.i = phi i64 [ %.2.i, %mi_arena_meta_free.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.02125.i = phi i64 [ %i.s, %mi_arena_meta_free.exit.i ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr [8 x i8], ptr @mi_arenas, i64 %.02125.i ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 9 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %mi_arena_meta_free.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !98
  %.not24.i = icmp eq ptr %i.e, null
  br i1 %.not24.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !156
  %i.h = add i32 %i.g, -3
  %i.i = icmp ult i32 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.c, i64 8
  store atomic ptr null, ptr %i.b release, align 8
  %i.k = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !98
  %i.l = getelementptr i8, ptr %i.c, i64 40
  %.val.i = load i64, ptr %i.l, align 8, !tbaa !100
  %i.m = shl i64 %.val.i, 25
  tail call void @_mi_os_free_ex(ptr noundef %i.k, i64 noundef %i.m, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.j, ptr nonnull poison)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1.i = phi i64 [ %.027.i, %bb.d ], [ %.02125.i, %bb.c ], [ %.02125.i, %bb.b ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr i8, ptr %i.c, i64 84
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %i.n = add i32 %.sroa.3.0.copyload, -3
  %i.o = icmp ult i32 %i.n, 3
  br i1 %i.o, label %bb.f, label %mi_arena_meta_free.exit.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.c, i64 64
  %i.q = getelementptr i8, ptr %i.c, i64 56
  %i.r = load i64, ptr %i.q, align 8, !tbaa !157
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.c, i64 noundef %i.r, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.p, ptr nonnull poison)
  br label %mi_arena_meta_free.exit.i

mi_arena_meta_free.exit.i:                        ; preds = %bb.e, %bb.f, %.lr.ph.i
  %.2.i = phi i64 [ %.027.i, %.lr.ph.i ], [ %.1.i, %bb.f ], [ %.1.i, %bb.e ] ; 2 uses
  %i.s = add nuw i64 %.02125.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.a
  br i1 %exitcond.not.i, label %mi_arenas_unsafe_destroy.exit, label %.lr.ph.i, !llvm.loop !158

mi_arenas_unsafe_destroy.exit:                    ; preds = %mi_arena_meta_free.exit.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.2.i, %mi_arena_meta_free.exit.i ]
  %i.t = cmpxchg ptr @mi_arena_count, i64 %i.a, i64 %.0.lcssa.i acq_rel acquire, align 64 ; 0 uses
  tail call fastcc void @mi_arenas_try_purge(i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %0)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define hidden noundef zeroext i1 @_mi_arena_contains(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load atomic i64, ptr @mi_arena_count monotonic, align 64 ; 2 uses
  %.not2124.not = icmp eq i64 %i.a, 0
  br i1 %.not2124.not, label %.critedge23, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.01725 = phi i64 [ %i.l, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr [8 x i8], ptr @mi_arenas, i64 %.01725
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !98
  %.not20 = icmp ugt ptr %i.e, %0
  br i1 %.not20, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !98
  %i.g = getelementptr i8, ptr %i.c, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !100
  %i.i = shl i64 %i.h, 25
  %i.j = getelementptr i8, ptr %i.f, i64 %i.i
  %i.k = icmp ugt ptr %i.j, %0
  br i1 %i.k, label %.critedge23, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %.lr.ph
  %i.l = add nuw i64 %.01725, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %i.a
  br i1 %exitcond.not, label %.critedge23, label %.lr.ph, !llvm.loop !101

.critedge23:                                      ; preds = %bb.c, %.critedge, %bb.a
end_hunk_0
begin_hunk_1_@_mi_os_alloc_huge_os_pages:bb.a
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  store i32 0, ptr %i.w, align 4, !tbaa !7
  %i.y = load i32, ptr %i.i, align 4, !tbaa !175
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.i, align 4, !tbaa !175
  %i.aa = zext i32 %i.x to i64
  %i.ab = shl nuw nsw i64 %i.aa, 13
  %i.ac = and i64 %i.ab, 4396972769280
  %i.ad = or disjoint i64 %i.ac, 35184372088832
  br label %bb.k

bb.k:                                             ; preds = %_mi_heap_random_next.exit.i, %bb.g, %bb.f
  %.1.i = phi i64 [ %.019.i, %bb.f ], [ %i.ad, %_mi_heap_random_next.exit.i ], [ 35184372088832, %bb.g ] ; 2 uses
  %i.ae = add i64 %.1.i, %i.c
  %i.af = cmpxchg ptr @mi_huge_start, i64 %.019.i, i64 %i.ae acq_rel acquire, align 64 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  br i1 %i.ag, label %bb.l, label %bb.f, !llvm.loop !176

bb.l:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %.1.i to ptr               ; 2 uses
  %i.aj = load i64, ptr @mi_clock_diff, align 8, !tbaa !105
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %_mi_clock_start.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #55
  %i.al = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #55 ; 0 uses
  %i.am = load i64, ptr %9, align 8, !tbaa !138
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !140
  %.neg.i = sdiv i64 %i.ao, -1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  %i.ap = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #55 ; 0 uses
  %i.aq = load i64, ptr %8, align 8, !tbaa !138
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !140
  %i.at = sdiv i64 %i.as, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #55
  %reass.add.i = sub i64 %i.aq, %i.am
  %reass.mul.i = mul i64 %reass.add.i, 1000
  %.neg2.i = add nsw i64 %i.at, %.neg.i
  %i.au = add i64 %.neg2.i, %reass.mul.i
  store i64 %i.au, ptr @mi_clock_diff, align 8, !tbaa !105
  br label %_mi_clock_start.exit

_mi_clock_start.exit:                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  %i.av = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #55 ; 0 uses
  %i.aw = load i64, ptr %7, align 8, !tbaa !138
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  %.not110 = icmp eq i64 %0, 0
  br i1 %.not110, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_mi_clock_start.exit
  %.neg = sdiv i64 %i.ay, -1000000
  %i.az = icmp sgt i64 %2, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bb = shl nuw i64 %2, 1
  %i.bc = add nuw i64 %2, 1
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.ad
  %.047108 = phi i8 [ 1, %.lr.ph ], [ %spec.select, %bb.ad ]
  %.049107 = phi i64 [ 0, %.lr.ph ], [ %i.cd, %bb.ad ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.bd = shl i64 %.049107, 30
  %i.be = getelementptr i8, ptr %i.ai, i64 %i.bd  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.bf = call i32 @_mi_prim_alloc_huge_os_pages(ptr noundef %i.be, i64 noundef 1073741824, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 3 uses
  %i.bg = load i8, ptr %i.a, align 1, !tbaa !125, !range !42, !noundef !43
  %i.bh = trunc nuw i8 %i.bg to i1
  %spec.select = select i1 %i.bh, i8 %.047108, i8 0 ; 3 uses
  %.not67 = icmp eq i32 %i.bf, 0
  br i1 %.not67, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.27, i32 noundef %i.bf, i32 noundef %i.bf, ptr noundef %i.be, i64 noundef 1073741824)
  br label %.thread79

bb.p:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %.not68 = icmp eq ptr %i.bi, %i.be
  br i1 %.not68, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not71 = icmp eq ptr %i.bi, null
  br i1 %.not71, label %.thread79, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.28, i64 noundef %.049107, ptr noundef %i.be)
  %i.bj = call i32 @munmap(ptr noundef nonnull %i.bi, i64 noundef 1073741824) #55
  %i.bk = icmp eq i32 %i.bj, -1
  br i1 %i.bk, label %_mi_prim_free.exit.i, label %_mi_prim_free.exit.thread.i

_mi_prim_free.exit.i:                             ; preds = %bb.r
  %i.bl = tail call ptr @__errno_location() #63
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7  ; 3 uses
  %.not.i74 = icmp eq i32 %i.bm, 0
  br i1 %.not.i74, label %_mi_prim_free.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %_mi_prim_free.exit.i
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.94, i32 noundef %i.bm, i32 noundef %i.bm, i64 noundef 1073741824, ptr noundef nonnull %i.bi)
  br label %_mi_prim_free.exit.thread.i

_mi_prim_free.exit.thread.i:                      ; preds = %bb.s, %_mi_prim_free.exit.i, %bb.r
  %i.bn = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 1073741824 monotonic, align 8
  %i.bo = add i64 %i.bn, -1073741824              ; 2 uses
  %i.bp = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %_mi_prim_free.exit.thread.i
  %.0.i.i.i.i = phi i64 [ %i.bp, %_mi_prim_free.exit.thread.i ], [ %i.bt, %bb.u ] ; 2 uses
  %i.bq = icmp slt i64 %.0.i.i.i.i, %i.bo
  br i1 %i.bq, label %bb.u, label %mi_atomic_maxi64_relaxed.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.br = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i.i, i64 %i.bo release monotonic, align 8 ; 2 uses
  %i.bs = extractvalue { i64, i1 } %i.br, 1
  %i.bt = extractvalue { i64, i1 } %i.br, 0
  br i1 %i.bs, label %mi_atomic_maxi64_relaxed.exit.i.i.i, label %bb.t, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i.i:              ; preds = %bb.u, %bb.t
  %i.bu = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 1073741824 monotonic, align 8 ; 0 uses
  %i.bv = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 88), i64 1073741824 monotonic, align 8
  %i.bw = add i64 %i.bv, -1073741824              ; 2 uses
  %i.bx = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80) monotonic, align 16
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %mi_atomic_maxi64_relaxed.exit.i.i.i
  %.0.i.i.i16.i = phi i64 [ %i.bx, %mi_atomic_maxi64_relaxed.exit.i.i.i ], [ %i.cb, %bb.w ] ; 2 uses
  %i.by = icmp slt i64 %.0.i.i.i16.i, %i.bw
  br i1 %i.by, label %bb.w, label %mi_os_prim_free.exit

bb.w:                                             ; preds = %bb.v
  %i.bz = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80), i64 %.0.i.i.i16.i, i64 %i.bw release monotonic, align 8 ; 2 uses
  %i.ca = extractvalue { i64, i1 } %i.bz, 1
  %i.cb = extractvalue { i64, i1 } %i.bz, 0
  br i1 %i.ca, label %mi_os_prim_free.exit, label %bb.v, !llvm.loop !124

mi_os_prim_free.exit:                             ; preds = %bb.v, %bb.w
  %i.cc = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 1073741824 monotonic, align 8 ; 0 uses
  br label %.thread79

bb.x:                                             ; preds = %bb.p
  %i.cd = add nuw i64 %.049107, 1                 ; 4 uses
  %i.ce = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 1073741824 monotonic, align 8
  %i.cf = add i64 %i.ce, 1073741824               ; 2 uses
  %i.cg = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.0.i.i.i = phi i64 [ %i.cg, %bb.x ], [ %i.ck, %bb.z ] ; 2 uses
  %i.ch = icmp slt i64 %.0.i.i.i, %i.cf
  br i1 %i.ch, label %bb.z, label %_mi_stat_increase.exit

bb.z:                                             ; preds = %bb.y
  %i.ci = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i, i64 %i.cf release monotonic, align 8 ; 2 uses
  %i.cj = extractvalue { i64, i1 } %i.ci, 1
  %i.ck = extractvalue { i64, i1 } %i.ci, 0
  br i1 %i.cj, label %_mi_stat_increase.exit, label %bb.y, !llvm.loop !124

_mi_stat_increase.exit:                           ; preds = %bb.y, %bb.z
  %i.cl = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 96), i64 1073741824 monotonic, align 8 ; 0 uses
  %i.cm = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 88), i64 1073741824 monotonic, align 8
  %i.cn = add i64 %i.cm, 1073741824               ; 2 uses
  %i.co = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80) monotonic, align 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %_mi_stat_increase.exit
  %.0.i.i.i75 = phi i64 [ %i.co, %_mi_stat_increase.exit ], [ %i.cs, %bb.ab ] ; 2 uses
  %i.cp = icmp slt i64 %.0.i.i.i75, %i.cn
  br i1 %i.cp, label %bb.ab, label %_mi_stat_increase.exit76

bb.ab:                                            ; preds = %bb.aa
  %i.cq = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80), i64 %.0.i.i.i75, i64 %i.cn release monotonic, align 8 ; 2 uses
  %i.cr = extractvalue { i64, i1 } %i.cq, 1
  %i.cs = extractvalue { i64, i1 } %i.cq, 0
  br i1 %i.cr, label %_mi_stat_increase.exit76, label %bb.aa, !llvm.loop !124

_mi_stat_increase.exit76:                         ; preds = %bb.aa, %bb.ab
  %i.ct = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 1073741824 monotonic, align 8 ; 0 uses
  br i1 %i.az, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_mi_stat_increase.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.cu = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #55 ; 0 uses
  %i.cv = load i64, ptr %6, align 8, !tbaa !138
  %i.cw = load i64, ptr %i.ba, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  %i.cx = sdiv i64 %i.cw, 1000000
  %i.cy = load i64, ptr @mi_clock_diff, align 8, !tbaa !105
  %reass.add = sub i64 %i.cv, %i.aw
  %reass.mul = mul i64 %reass.add, 1000
  %.neg89 = add nsw i64 %i.cx, %.neg
  %i.cz = sub i64 %.neg89, %i.cy
  %i.da = add i64 %i.cz, %reass.mul               ; 2 uses
  %i.db = add nuw i64 %.049107, 2
  %i.dc = udiv i64 %i.da, %i.db
  %i.dd = mul i64 %i.dc, %0
  %i.de = icmp sgt i64 %i.dd, %i.bb
  %spec.select73 = select i1 %i.de, i64 %i.bc, i64 %i.da
  %i.df = icmp sgt i64 %spec.select73, %2
  br i1 %i.df, label %.thread, label %bb.ad

.thread:                                          ; preds = %bb.ac
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.29, i64 noundef %i.cd)
  br label %.thread79

.thread79:                                        ; preds = %bb.o, %.thread, %bb.q, %mi_os_prim_free.exit
  %.150.ph = phi i64 [ %.049107, %mi_os_prim_free.exit ], [ %.049107, %bb.q ], [ %i.cd, %.thread ], [ %.049107, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.loopexit

bb.ad:                                            ; preds = %_mi_stat_increase.exit76, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %exitcond.not = icmp eq i64 %i.cd, %0
  br i1 %exitcond.not, label %.loopexit, label %bb.n

.loopexit:                                        ; preds = %bb.ad, %_mi_clock_start.exit, %.thread79
  %.251 = phi i64 [ %.150.ph, %.thread79 ], [ 0, %_mi_clock_start.exit ], [ %0, %bb.ad ] ; 3 uses
  %.2 = phi i8 [ %spec.select, %.thread79 ], [ 1, %_mi_clock_start.exit ], [ %spec.select, %bb.ad ]
  br i1 %.not66, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  store i64 %.251, ptr %3, align 8, !tbaa !105
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.loopexit
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dg = shl i64 %.251, 30
  store i64 %i.dg, ptr %4, align 8, !tbaa !105
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not72 = icmp eq i64 %.251, 0
  br i1 %.not72, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !125
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !125
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 %.2, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !125
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 19
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.777.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 4, ptr %.sroa.777.0..sroa_idx, align 4, !tbaa !110
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.dh = phi ptr [ null, %bb.ah ], [ %i.ai, %bb.ai ]
  ret ptr %i.dh
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_warning_message(ptr nofree noundef readonly captures(address_is_null) %0, ...) local_unnamed_addr #2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 72), align 8, !tbaa !111
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %mi_option_get.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 64)), !inline_history !177
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.a, %bb.b
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 64), align 16, !tbaa !114
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %mi_option_get.exit
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 8), align 8, !tbaa !111
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %mi_option_get.exit2, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @mi_option_init(ptr noundef nonnull @options), !inline_history !177
  br label %mi_option_get.exit2

mi_option_get.exit2:                              ; preds = %bb.c, %bb.d
  %i.f = load i64, ptr @options, align 16, !tbaa !114
  %.not3 = icmp eq i64 %i.f, 0
  br i1 %.not3, label %bb.h, label %bb.e

bb.e:                                             ; preds = %mi_option_get.exit2
  %i.g = load i64, ptr @mi_max_warning_count, align 8, !tbaa !105
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw add ptr @warning_count, i64 1 acq_rel, align 8
  %i.j = load i64, ptr @mi_max_warning_count, align 8, !tbaa !105
  %i.k = icmp sgt i64 %i.i, %i.j
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %mi_option_get.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  call void @llvm.va_start.p0(ptr nonnull %1)
  call fastcc void @mi_vfprintf_thread(ptr noundef nonnull @.str.24, ptr noundef %0, ptr noundef %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %mi_option_get.exit2, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at(i64 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext false, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_interleave(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %_mi_os_numa_node_count.exit

bb.c:                                             ; preds = %bb.b
  %i.b = load atomic i64, ptr @_mi_numa_node_count monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %_mi_os_numa_node_count.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i64 @_mi_os_numa_node_count_get()
  br label %_mi_os_numa_node_count.exit

_mi_os_numa_node_count.exit:                      ; preds = %bb.d, %bb.c, %bb.b
  %spec.store.select = phi i64 [ %1, %bb.b ], [ %i.c, %bb.d ], [ %i.b, %bb.c ] ; 4 uses
  %i.d = udiv i64 %0, %spec.store.select
  %i.e = urem i64 %0, %spec.store.select
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_mi_os_numa_node_count.exit
  %i.g = udiv i64 %2, %spec.store.select
  %i.h = add i64 %i.g, 50
  br label %bb.f

bb.f:                                             ; preds = %_mi_os_numa_node_count.exit, %bb.e
  %i.i = phi i64 [ %i.h, %bb.e ], [ 0, %_mi_os_numa_node_count.exit ]
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.h
  %.03349 = phi i64 [ 0, %bb.f ], [ %i.n, %bb.h ] ; 3 uses
  %.03648 = phi i64 [ %0, %bb.f ], [ %.137, %bb.h ] ; 2 uses
  %i.j = icmp ult i64 %.03349, %i.e
  %i.k = zext i1 %i.j to i64
  %spec.select = add i64 %i.d, %i.k               ; 3 uses
  %i.l = trunc i64 %.03349 to i32
  %i.m = tail call range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %spec.select, i32 noundef %i.l, i64 noundef %i.i, i1 noundef zeroext false, ptr noundef null) ; 2 uses
  %.not43 = icmp eq i32 %i.m, 0
  br i1 %.not43, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %.137 = tail call i64 @llvm.usub.sat.i64(i64 %.03648, i64 %spec.select)
  %i.n = add nuw i64 %.03349, 1                   ; 2 uses
  %i.o = icmp uge i64 %i.n, %spec.store.select
  %i.p = icmp ule i64 %.03648, %spec.select
  %.not46 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %.not46, label %.loopexit, label %bb.g, !llvm.loop !178

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.h ], [ %i.m, %bb.g ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages(i64 noundef %0, double noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.16)
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !105
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = fmul double %1, 1.000000e+03
  %i.b = fptoui double %i.a to i64                ; 2 uses
  %i.c = icmp eq i64 %0, 0
  br i1 %i.c, label %mi_reserve_huge_os_pages_interleave.exit, label %bb.d

end_hunk_1
begin_hunk_2_@mi_find_page:bb.a
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.dr, i64 %spec.store.select.i.i.i) ; 2 uses
  tail call fastcc void @mi_page_free_list_extend(ptr noundef nonnull %.02647.i.i, i64 noundef %i.do, i64 noundef %spec.select.i.i.i), !inline_history !275
  %i.dw = trunc nuw nsw i64 %spec.select.i.i.i to i16
  %i.dx = load i16, ptr %i.cx, align 2, !tbaa !74
  %i.dy = add i16 %i.dx, %i.dw
  store i16 %i.dy, ptr %i.cx, align 2, !tbaa !74
  br label %mi_page_queue_find_free_ex.exit.sink.split.i

bb.ae:                                            ; preds = %bb.y
  %i.dz = getelementptr i8, ptr %.02647.i.i, i64 14
  %.val.i.i.i = load i8, ptr %i.dz, align 2
  %i.ea = trunc i8 %.val.i.i.i to i1
  br i1 %i.ea, label %mi_page_to_full.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eb = getelementptr i8, ptr %.02647.i.i, i64 48
  %i.ec = load atomic i64, ptr %i.eb monotonic, align 8
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = getelementptr i8, ptr %i.ed, i64 2816
  tail call fastcc void @mi_page_queue_enqueue_from(ptr noundef %i.ee, ptr noundef nonnull %i.v, ptr noundef nonnull %.02647.i.i), !inline_history !275
  %i.ef = load atomic i64, ptr %i.bm monotonic, align 8
  %.not.i.i.i.i = icmp ult i64 %i.ef, 4
  br i1 %.not.i.i.i.i, label %_mi_page_thread_free_collect.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eg = load atomic i64, ptr %i.bm monotonic, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.029.i.i.i.i.i = phi i64 [ %i.eg, %bb.ag ], [ %i.ek, %bb.ah ] ; 3 uses
  %i.eh = and i64 %.029.i.i.i.i.i, 3
  %i.ei = cmpxchg weak ptr %i.bm, i64 %.029.i.i.i.i.i, i64 %i.eh acq_rel acquire, align 8 ; 2 uses
  %i.ej = extractvalue { i64, i1 } %i.ei, 1
  %i.ek = extractvalue { i64, i1 } %i.ei, 0
  br i1 %i.ej, label %bb.ai, label %bb.ah, !llvm.loop !73

bb.ai:                                            ; preds = %bb.ah
  %i.el = and i64 %.029.i.i.i.i.i, -4             ; 2 uses
  %i.em = inttoptr i64 %i.el to ptr               ; 4 uses
  %i.en = icmp eq i64 %i.el, 0
  br i1 %i.en, label %_mi_page_thread_free_collect.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eo = load i16, ptr %i.cx, align 2, !tbaa !74 ; 2 uses
  %i.ep = zext i16 %i.eo to i32                   ; 2 uses
  %i.eq = load atomic i64, ptr %i.em monotonic, align 8 ; 2 uses
  %i.er = icmp ne i64 %i.eq, 0
  %i.es = icmp ne i16 %i.eo, 0
  %i.et = select i1 %i.er, i1 %i.es, i1 false
  br i1 %i.et, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aj, %.lr.ph.i.i.i.i.i
  %i.eu = phi i64 [ %i.ex, %.lr.ph.i.i.i.i.i ], [ %i.eq, %bb.aj ]
  %.02834.i.i.i.i.i = phi i32 [ %i.ew, %.lr.ph.i.i.i.i.i ], [ 1, %bb.aj ] ; 2 uses
  %i.ev = inttoptr i64 %i.eu to ptr               ; 2 uses
  %i.ew = add nuw nsw i32 %.02834.i.i.i.i.i, 1    ; 2 uses
  %i.ex = load atomic i64, ptr %i.ev monotonic, align 8 ; 2 uses
  %i.ey = icmp ne i64 %i.ex, 0
  %i.ez = icmp samesign ult i32 %.02834.i.i.i.i.i, %i.ep
  %i.fa = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !75

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.aj
  %.028.lcssa.i.i.i.i.i = phi i32 [ 1, %bb.aj ], [ %i.ew, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.em, %bb.aj ], [ %i.ev, %.lr.ph.i.i.i.i.i ]
  %i.fb = icmp samesign ugt i32 %.028.lcssa.i.i.i.i.i, %i.ep
  br i1 %i.fb, label %bb.ak, label %_mi_page_thread_free_collect.exit.i.i.thread.i.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100), !inline_history !275
  br label %_mi_page_thread_free_collect.exit.i.i.i.i

_mi_page_thread_free_collect.exit.i.i.thread.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %i.fc = load ptr, ptr %i.cr, align 8, !tbaa !57
  %i.fd = ptrtoint ptr %i.fc to i64
  store atomic i64 %i.fd, ptr %.0.lcssa.i.i.i.i.i monotonic, align 8
  store ptr %i.em, ptr %i.cr, align 8, !tbaa !57
  %i.fe = getelementptr i8, ptr %.02647.i.i, i64 24 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !18
  %i.fg = sub i32 %i.ff, %.028.lcssa.i.i.i.i.i
  store i32 %i.fg, ptr %i.fe, align 8, !tbaa !18
  br label %bb.al

_mi_page_thread_free_collect.exit.i.i.i.i:        ; preds = %bb.ak, %bb.ai, %bb.af
  %.pr.i.i = load ptr, ptr %i.cr, align 8, !tbaa !57 ; 2 uses
  %.not22.i.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not22.i.i.i.i, label %mi_page_to_full.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_mi_page_thread_free_collect.exit.i.i.i.i, %_mi_page_thread_free_collect.exit.i.i.thread.i.i
  %i.fh = phi ptr [ %i.em, %_mi_page_thread_free_collect.exit.i.i.thread.i.i ], [ %.pr.i.i, %_mi_page_thread_free_collect.exit.i.i.i.i ]
  %i.fi = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %.sink.split.i.i.i.i, label %mi_page_to_full.exit.i.i, !prof !55

.sink.split.i.i.i.i:                              ; preds = %bb.al
  store ptr %i.fh, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11
  store ptr null, ptr %i.cr, align 8, !tbaa !57
  %i.fk = getelementptr i8, ptr %.02647.i.i, i64 15 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = and i8 %i.fl, -2
  store i8 %i.fm, ptr %i.fk, align 1
  br label %mi_page_to_full.exit.i.i

mi_page_to_full.exit.i.i:                         ; preds = %.sink.split.i.i.i.i, %bb.al, %_mi_page_thread_free_collect.exit.i.i.i.i, %bb.ae
  %.not.i12.i = icmp eq ptr %i.bl, null
  br i1 %.not.i12.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %mi_page_to_full.exit.i.i, %tailrecurse.i.i
  tail call void @_mi_heap_collect_retired(ptr noundef %0, i1 noundef zeroext false), !inline_history !275
  %i.fn = load i64, ptr %i.bi, align 8, !tbaa !61
  %i.fo = tail call fastcc ptr @mi_page_fresh_alloc(ptr noundef %0, ptr noundef nonnull %i.v, i64 noundef %i.fn, i64 noundef 0), !inline_history !275 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, null
  %or.cond.i.i = and i1 %.tr34.i.i, %i.fp
  br i1 %or.cond.i.i, label %tailrecurse.i.i, label %mi_find_free_page.exit

mi_page_queue_find_free_ex.exit.sink.split.i:     ; preds = %_mi_page_free_collect.exit.i.i, %mi_page_extend_free.exit.i.i, %.sink.split.i.i.i, %bb.x, %_mi_page_free_collect.exit.i, %.sink.split.i.i, %bb.p
  %.02647.i85.sink.i = phi ptr [ %i.w, %_mi_page_free_collect.exit.i ], [ %i.w, %.sink.split.i.i ], [ %i.w, %bb.p ], [ %.02647.i.i, %bb.x ], [ %.02647.i.i, %mi_page_extend_free.exit.i.i ], [ %.02647.i.i, %.sink.split.i.i.i ], [ %.02647.i.i, %_mi_page_free_collect.exit.i.i ] ; 2 uses
  %i.fq = getelementptr i8, ptr %.02647.i85.sink.i, i64 15 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = and i8 %i.fr, 1
  store i8 %i.fs, ptr %i.fq, align 1
  br label %mi_find_free_page.exit

mi_find_free_page.exit:                           ; preds = %._crit_edge.i.i, %mi_page_queue_find_free_ex.exit.sink.split.i, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.e, %bb.d ], [ %.02647.i85.sink.i, %mi_page_queue_find_free_ex.exit.sink.split.i ], [ %i.fo, %._crit_edge.i.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden i64 @_mi_os_random_weak(i64 noundef %0) #2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = xor i64 %0, ptrtoint (ptr @_mi_os_random_weak to i64)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #55 ; 0 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !138
  %i.d = mul i64 %i.c, 1000
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !140
  %i.g = sdiv i64 %i.f, 1000000
  %i.h = add i64 %i.g, %i.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  %i.i = xor i64 %i.a, %i.h                       ; 4 uses
  %i.j = lshr i64 %i.i, 17
  %i.k = xor i64 %i.j, %i.i                       ; 2 uses
  %i.l = and i64 %i.k, 15                         ; 2 uses
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.m, 30
  br label %bb.c

.unr-lcssa:                                       ; preds = %bb.c
  %i.o = and i64 %i.k, 1
  %lcmp.mod.not.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %bb.b

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.0910.epil.init = phi i64 [ %i.i, %bb.a ], [ %i.ao, %.unr-lcssa ] ; 2 uses
  %lcmp.mod13 = trunc i64 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod13)
  %i.p = icmp eq i64 %.0910.epil.init, 0
  %spec.store.select.i.epil = select i1 %i.p, i64 17, i64 %.0910.epil.init ; 2 uses
  %i.q = lshr i64 %spec.store.select.i.epil, 30
  %i.r = xor i64 %i.q, %spec.store.select.i.epil
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 27
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -7723592293110705685       ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ao, %.unr-lcssa ], [ %i.x, %.epil.preheader ]
  ret i64 %.lcssa

bb.c:                                             ; preds = %bb.c, %.new
  %.0910 = phi i64 [ %i.i, %.new ], [ %i.ao, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.y = icmp eq i64 %.0910, 0
  %spec.store.select.i = select i1 %i.y, i64 17, i64 %.0910 ; 2 uses
  %i.z = lshr i64 %spec.store.select.i, 30
  %i.aa = xor i64 %i.z, %spec.store.select.i
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 27
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = mul i64 %i.ad, -7723592293110705685     ; 2 uses
  %i.af = lshr i64 %i.ae, 31
  %i.ag = xor i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = lshr i64 %i.ag, 30
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 27
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = mul i64 %i.al, -7723592293110705685     ; 2 uses
  %i.an = lshr i64 %i.am, 31
  %i.ao = xor i64 %i.an, %i.am                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.c, !llvm.loop !276
}

; Function Attrs: nounwind uwtable
define hidden i64 @_mi_prim_clock_now() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #55
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #55 ; 0 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !138
  %i.c = mul i64 %i.b, 1000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !140
  %i.f = sdiv i64 %i.e, 1000000
  %i.g = add i64 %i.f, %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #55
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_random_init_ex(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br i1 %1, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call zeroext i1 @_mi_prim_random_buf(ptr noundef nonnull %i.a, i64 noundef 32)
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.102)
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.c = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #55, !inline_history !277 ; 0 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !138
  %i.e = mul i64 %i.d, 1000
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !140
  %i.h = sdiv i64 %i.g, 1000000
  %i.i = add i64 %i.h, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %i.j = xor i64 %i.i, ptrtoint (ptr @_mi_os_random_weak to i64) ; 4 uses
  %i.k = lshr i64 %i.j, 17
  %i.l = xor i64 %i.k, %i.j                       ; 2 uses
  %i.m = and i64 %i.l, 15                         ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %.epil.preheader, label %.critedge.new

.critedge.new:                                    ; preds = %.critedge
  %unroll_iter = and i64 %i.n, 30
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.critedge.new
  %.0910.i = phi i64 [ %i.j, %.critedge.new ], [ %i.af, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.critedge.new ], [ %niter.next.1, %bb.d ]
  %i.p = icmp eq i64 %.0910.i, 0
  %spec.store.select.i.i = select i1 %i.p, i64 17, i64 %.0910.i ; 2 uses
  %i.q = lshr i64 %spec.store.select.i.i, 30
  %i.r = xor i64 %i.q, %spec.store.select.i.i
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 27
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -7723592293110705685       ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v                       ; 2 uses
  %i.y = lshr i64 %i.x, 30
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -4658895280553007687      ; 2 uses
  %i.ab = lshr i64 %i.aa, 27
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, -7723592293110705685     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_mi_os_random_weak.exit.preheader.unr-lcssa, label %bb.d, !llvm.loop !276

_mi_os_random_weak.exit.preheader.unr-lcssa:      ; preds = %bb.d
  %i.ag = and i64 %i.l, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ag, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_mi_os_random_weak.exit.preheader

.epil.preheader:                                  ; preds = %_mi_os_random_weak.exit.preheader.unr-lcssa, %.critedge
  %.0910.i.epil.init = phi i64 [ %i.j, %.critedge ], [ %i.af, %_mi_os_random_weak.exit.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i64 %i.n to i1
  call void @llvm.assume(i1 %lcmp.mod27)
  %i.ah = icmp eq i64 %.0910.i.epil.init, 0
  %spec.store.select.i.i.epil = select i1 %i.ah, i64 17, i64 %.0910.i.epil.init ; 2 uses
  %i.ai = lshr i64 %spec.store.select.i.i.epil, 30
  %i.aj = xor i64 %i.ai, %spec.store.select.i.i.epil
  %i.ak = mul i64 %i.aj, -4658895280553007687     ; 2 uses
  %i.al = lshr i64 %i.ak, 27
  %i.am = xor i64 %i.al, %i.ak
  %i.an = mul i64 %i.am, -7723592293110705685     ; 2 uses
  %i.ao = lshr i64 %i.an, 31
  %i.ap = xor i64 %i.ao, %i.an
  br label %_mi_os_random_weak.exit.preheader

_mi_os_random_weak.exit.preheader:                ; preds = %_mi_os_random_weak.exit.preheader.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.af, %_mi_os_random_weak.exit.preheader.unr-lcssa ], [ %i.ap, %.epil.preheader ] ; 2 uses
  %i.aq = lshr i64 %.lcssa, 30
  %i.ar = xor i64 %i.aq, %.lcssa
  %i.as = mul i64 %i.ar, -4658895280553007687     ; 2 uses
  %i.at = lshr i64 %i.as, 27
  %i.au = xor i64 %i.at, %i.as
  %i.av = mul i64 %i.au, -7723592293110705685     ; 2 uses
  %i.aw = lshr i64 %i.av, 31
  %i.ax = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = lshr i64 %i.ax, 30
  %i.ba = xor i64 %i.az, %i.ax
  %i.bb = mul i64 %i.ba, -4658895280553007687     ; 2 uses
  %i.bc = lshr i64 %i.bb, 27
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = mul i64 %i.bd, -7723592293110705685     ; 2 uses
  %i.bf = lshr i64 %i.be, 31
  %i.bg = xor i64 %i.bf, %i.be                    ; 3 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = lshr i64 %i.bg, 30
  %i.bj = xor i64 %i.bi, %i.bg
  %i.bk = mul i64 %i.bj, -4658895280553007687     ; 2 uses
  %i.bl = lshr i64 %i.bk, 27
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = mul i64 %i.bm, -7723592293110705685     ; 2 uses
  %i.bo = lshr i64 %i.bn, 31
  %i.bp = xor i64 %i.bo, %i.bn                    ; 3 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i64 %i.bp, 30
  %i.bs = xor i64 %i.br, %i.bp
  %i.bt = mul i64 %i.bs, -4658895280553007687     ; 2 uses
  %i.bu = lshr i64 %i.bt, 27
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = mul i64 %i.bv, -7723592293110705685     ; 2 uses
  %i.bx = lshr i64 %i.bw, 31
  %i.by = xor i64 %i.bx, %i.bw                    ; 3 uses
  %i.bz = trunc i64 %i.by to i32
  %i.ca = lshr i64 %i.by, 30
  %i.cb = xor i64 %i.ca, %i.by
  %i.cc = mul i64 %i.cb, -4658895280553007687     ; 2 uses
  %i.cd = lshr i64 %i.cc, 27
  %i.ce = xor i64 %i.cd, %i.cc
  %i.cf = mul i64 %i.ce, -7723592293110705685     ; 2 uses
  %i.cg = lshr i64 %i.cf, 31
  %i.ch = xor i64 %i.cg, %i.cf                    ; 3 uses
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = lshr i64 %i.ch, 30
  %i.ck = xor i64 %i.cj, %i.ch
  %i.cl = mul i64 %i.ck, -4658895280553007687     ; 2 uses
  %i.cm = lshr i64 %i.cl, 27
  %i.cn = xor i64 %i.cm, %i.cl
  %i.co = mul i64 %i.cn, -7723592293110705685     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co                    ; 3 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = lshr i64 %i.cq, 30
  %i.ct = xor i64 %i.cs, %i.cq
  %i.cu = mul i64 %i.ct, -4658895280553007687     ; 2 uses
  %i.cv = lshr i64 %i.cu, 27
  %i.cw = xor i64 %i.cv, %i.cu
  %i.cx = mul i64 %i.cw, -7723592293110705685     ; 2 uses
  %i.cy = lshr i64 %i.cx, 31
  %i.cz = xor i64 %i.cy, %i.cx                    ; 3 uses
  %i.da = trunc i64 %i.cz to i32
  %i.db = lshr i64 %i.cz, 30
  %i.dc = xor i64 %i.db, %i.cz
  %i.dd = mul i64 %i.dc, -4658895280553007687     ; 2 uses
  %i.de = lshr i64 %i.dd, 27
  %i.df = xor i64 %i.de, %i.dd
  %i.dg = mul i64 %i.df, -7723592293110705685     ; 2 uses
  %i.dh = lshr i64 %i.dg, 31
  %i.di = xor i64 %i.dh, %i.dg
  %i.dj = trunc i64 %i.di to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre13 = load i32, ptr %.phi.trans.insert, align 4
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre15 = load i32, ptr %.phi.trans.insert14, align 8
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre17 = load i32, ptr %.phi.trans.insert16, align 4
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre19 = load i32, ptr %.phi.trans.insert18, align 16
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre21 = load i32, ptr %.phi.trans.insert20, align 4
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre23 = load i32, ptr %.phi.trans.insert22, align 8
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.pre25 = load i32, ptr %.phi.trans.insert24, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_mi_os_random_weak.exit.preheader
  %i.dk = phi i32 [ %.pre25, %bb.e ], [ %i.dj, %_mi_os_random_weak.exit.preheader ]
  %i.dl = phi i32 [ %.pre23, %bb.e ], [ %i.da, %_mi_os_random_weak.exit.preheader ]
  %i.dm = phi i32 [ %.pre21, %bb.e ], [ %i.cr, %_mi_os_random_weak.exit.preheader ]
  %i.dn = phi i32 [ %.pre19, %bb.e ], [ %i.ci, %_mi_os_random_weak.exit.preheader ]
  %i.do = phi i32 [ %.pre17, %bb.e ], [ %i.bz, %_mi_os_random_weak.exit.preheader ]
  %i.dp = phi i32 [ %.pre15, %bb.e ], [ %i.bq, %_mi_os_random_weak.exit.preheader ]
  %i.dq = phi i32 [ %.pre13, %bb.e ], [ %i.bh, %_mi_os_random_weak.exit.preheader ]
  %i.dr = phi i32 [ %.pre, %bb.e ], [ %i.ay, %_mi_os_random_weak.exit.preheader ]
  %i.ds = ptrtoint ptr %0 to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.du, i8 0, i64 72, i1 false)
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, ptr %0, align 4, !tbaa !7
  store i32 %i.dr, ptr %i.dt, align 4, !tbaa !7
  %i.dv = getelementptr i8, ptr %0, i64 20
  store i32 %i.dq, ptr %i.dv, align 4, !tbaa !7
  %i.dw = getelementptr i8, ptr %0, i64 24
  store i32 %i.dp, ptr %i.dw, align 4, !tbaa !7
  %i.dx = getelementptr i8, ptr %0, i64 28
  store i32 %i.do, ptr %i.dx, align 4, !tbaa !7
  %i.dy = getelementptr i8, ptr %0, i64 32
  store i32 %i.dn, ptr %i.dy, align 4, !tbaa !7
  %i.dz = getelementptr i8, ptr %0, i64 36
  store i32 %i.dm, ptr %i.dz, align 4, !tbaa !7
  %i.ea = getelementptr i8, ptr %0, i64 40
  store i32 %i.dl, ptr %i.ea, align 4, !tbaa !7
  %i.eb = getelementptr i8, ptr %0, i64 44
  store i32 %i.dk, ptr %i.eb, align 4, !tbaa !7
  %i.ec = getelementptr i8, ptr %0, i64 48
  store i32 0, ptr %i.ec, align 4, !tbaa !7
  %i.ed = getelementptr i8, ptr %0, i64 52
  store i32 0, ptr %i.ed, align 4, !tbaa !7
  %i.ee = getelementptr i8, ptr %0, i64 56
  store i64 %i.ds, ptr %i.ee, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_random_init_weak(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @mi_random_init_ex(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_random_reinit_if_weak(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 132
  %i.b = load i8, ptr %i.a, align 4, !tbaa !237, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_random_init_ex(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden i64 @_mi_commit_mask_committed_size(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #33 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !105    ; 3 uses
  switch i64 %i.a, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

bb.b:                                             ; preds = %bb.a
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.016 = phi i64 [ %i.c, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.115 = phi i64 [ %spec.select, %.lr.ph ], [ 0, %bb.a ]
  %i.b = and i64 %.016, 1
  %spec.select = add i64 %i.b, %.115              ; 2 uses
  %i.c = lshr i64 %.016, 1                        ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !278
end_hunk_2
begin_hunk_3_@mi_segment_span_allocate:bb.a
  %i.fg = sdiv i64 %i.ff, 1000000
  %i.fh = add i64 %i.fg, %i.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.fi = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 488), align 8, !tbaa !111
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.ag, label %mi_option_get.exit.i.i, !prof !17

bb.ag:                                            ; preds = %mi_commit_mask_any_set.exit.thread.i.i
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 480)), !inline_history !113
  br label %mi_option_get.exit.i.i

mi_option_get.exit.i.i:                           ; preds = %bb.ag, %mi_commit_mask_any_set.exit.thread.i.i
  %i.fk = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 480), align 16, !tbaa !114
  %i.fl = add i64 %i.fh, %i.fk
  %i.fm = getelementptr i8, ptr %0, i64 40
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !310
  %.pre37.i.i = load i64, ptr %i.ed, align 8, !tbaa !105
  %.phi.trans.insert38.i.i = getelementptr i8, ptr %0, i64 56
  %.pre39.i.i = load i64, ptr %.phi.trans.insert38.i.i, align 8, !tbaa !105
  %.phi.trans.insert40.i.i = getelementptr i8, ptr %0, i64 64
  %.pre41.i.i = load i64, ptr %.phi.trans.insert40.i.i, align 8, !tbaa !105
  %.phi.trans.insert42.i.i = getelementptr i8, ptr %0, i64 72
  %.pre43.i.i = load i64, ptr %.phi.trans.insert42.i.i, align 8, !tbaa !105
  %.phi.trans.insert44.i.i = getelementptr i8, ptr %0, i64 80
  %.pre45.i.i = load i64, ptr %.phi.trans.insert44.i.i, align 8, !tbaa !105
  %.phi.trans.insert46.i.i = getelementptr i8, ptr %0, i64 88
  %.pre47.i.i = load i64, ptr %.phi.trans.insert46.i.i, align 8, !tbaa !105
  %.phi.trans.insert48.i.i = getelementptr i8, ptr %0, i64 96
  %.pre49.i.i = load i64, ptr %.phi.trans.insert48.i.i, align 8, !tbaa !105
  %.phi.trans.insert50.i.i = getelementptr i8, ptr %0, i64 104
  %.pre51.i.i = load i64, ptr %.phi.trans.insert50.i.i, align 8, !tbaa !105
  br label %bb.ah

bb.ah:                                            ; preds = %mi_option_get.exit.i.i, %mi_commit_mask_any_set.exit.i.i
  %i.fn = phi i64 [ %.pre51.i.i, %mi_option_get.exit.i.i ], [ %i.ez, %mi_commit_mask_any_set.exit.i.i ]
  %i.fo = phi i64 [ %.pre49.i.i, %mi_option_get.exit.i.i ], [ %i.ew, %mi_commit_mask_any_set.exit.i.i ]
  %i.fp = phi i64 [ %.pre47.i.i, %mi_option_get.exit.i.i ], [ %i.et, %mi_commit_mask_any_set.exit.i.i ]
  %i.fq = phi i64 [ %.pre45.i.i, %mi_option_get.exit.i.i ], [ %i.eq, %mi_commit_mask_any_set.exit.i.i ]
  %i.fr = phi i64 [ %.pre43.i.i, %mi_option_get.exit.i.i ], [ %i.en, %mi_commit_mask_any_set.exit.i.i ]
  %i.fs = phi i64 [ %.pre41.i.i, %mi_option_get.exit.i.i ], [ %i.ek, %mi_commit_mask_any_set.exit.i.i ]
  %i.ft = phi i64 [ %.pre39.i.i, %mi_option_get.exit.i.i ], [ %i.eh, %mi_commit_mask_any_set.exit.i.i ]
  %i.fu = phi i64 [ %.pre37.i.i, %mi_option_get.exit.i.i ], [ %i.ee, %mi_commit_mask_any_set.exit.i.i ]
  %i.fv = xor i64 %i.bl, -1
  %i.fw = and i64 %i.fu, %i.fv
  store i64 %i.fw, ptr %i.ed, align 8, !tbaa !105
  %i.fx = xor i64 %i.bp, -1
  %i.fy = getelementptr i8, ptr %0, i64 56
  %i.fz = and i64 %i.ft, %i.fx
  store i64 %i.fz, ptr %i.fy, align 8, !tbaa !105
  %i.ga = xor i64 %i.bt, -1
  %i.gb = getelementptr i8, ptr %0, i64 64
  %i.gc = and i64 %i.fs, %i.ga
  store i64 %i.gc, ptr %i.gb, align 8, !tbaa !105
  %i.gd = xor i64 %i.bx, -1
  %i.ge = getelementptr i8, ptr %0, i64 72
  %i.gf = and i64 %i.fr, %i.gd
  store i64 %i.gf, ptr %i.ge, align 8, !tbaa !105
  %i.gg = xor i64 %i.aw, -1
  %i.gh = getelementptr i8, ptr %0, i64 80
  %i.gi = and i64 %i.fq, %i.gg
  store i64 %i.gi, ptr %i.gh, align 8, !tbaa !105
  %i.gj = xor i64 %i.ax, -1
  %i.gk = getelementptr i8, ptr %0, i64 88
  %i.gl = and i64 %i.fp, %i.gj
  store i64 %i.gl, ptr %i.gk, align 8, !tbaa !105
  %i.gm = xor i64 %i.az, -1
  %i.gn = getelementptr i8, ptr %0, i64 96
  %i.go = and i64 %i.fo, %i.gm
  store i64 %i.go, ptr %i.gn, align 8, !tbaa !105
  %i.gp = xor i64 %i.ec, -1
  %i.gq = getelementptr i8, ptr %0, i64 104
  %i.gr = and i64 %i.fn, %i.gp
  store i64 %i.gr, ptr %i.gq, align 8, !tbaa !105
  br label %mi_segment_ensure_committed.exit.thread2

mi_segment_ensure_committed.exit.thread2:         ; preds = %bb.ah, %mi_commit_mask_is_empty.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %mi_segment_ensure_committed.exit.thread

mi_segment_ensure_committed.exit:                 ; preds = %_mi_stat_decrease.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.ak

mi_segment_ensure_committed.exit.thread:          ; preds = %mi_commit_mask_is_empty.exit.i, %mi_segment_ensure_committed.exit.thread2
  %i.gs = getelementptr i8, ptr %i.e, i64 4
  store i32 0, ptr %i.gs, align 4, !tbaa !59
  %i.gt = trunc i64 %2 to i32
  store i32 %i.gt, ptr %i.e, align 8, !tbaa !52
  %i.gu = call i64 @llvm.umin.i64(i64 %i.j, i64 2147483648)
  %i.gv = trunc nuw i64 %i.gu to i32
  %i.gw = getelementptr i8, ptr %i.e, i64 28
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !21
  %i.gx = add i64 %2, -1
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.gx, i64 255) ; 2 uses
  %i.gy = add i64 %spec.store.select, %1
  %i.gz = getelementptr i8, ptr %0, i64 248
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !285 ; 3 uses
  %.not = icmp ult i64 %i.gy, %i.ha
  %i.hb = xor i64 %1, -1
  %i.hc = add i64 %i.ha, %i.hb
  %.049 = select i1 %.not, i64 %spec.store.select, i64 %i.hc ; 2 uses
  %.not554 = icmp eq i64 %.049, 0
  br i1 %.not554, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %mi_segment_ensure_committed.exit.thread
  %i.hd = add i64 %.049, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.hd, i64 2) ; 2 uses
  %i.he = add i64 %umax, -1                       ; 2 uses
  %i.hf = add i64 %umax, -2
  %xtraiter = and i64 %i.he, 3                    ; 3 uses
  %i.hg = icmp ult i64 %i.hf, 3
  br i1 %i.hg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.he, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0476.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ik, %._crit_edge.loopexit.unr-lcssa ]
  %.pn5.epil.init = phi ptr [ %i.e, %.lr.ph.preheader ], [ %.048.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0476.epil = phi i64 [ %i.hl, %.lr.ph.epil ], [ %.0476.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.pn5.epil = phi ptr [ %.048.epil, %.lr.ph.epil ], [ %.pn5.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.048.epil = getelementptr i8, ptr %.pn5.epil, i64 80 ; 2 uses
  %i.hh = trunc i64 %.0476.epil to i32
  %i.hi = mul i32 %i.hh, 80
  %i.hj = getelementptr i8, ptr %.pn5.epil, i64 84
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !59
  store i32 0, ptr %.048.epil, align 8, !tbaa !52
  %i.hk = getelementptr i8, ptr %.pn5.epil, i64 108
  store i32 1, ptr %i.hk, align 4, !tbaa !21
  %i.hl = add nuw i64 %.0476.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !644

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %mi_segment_ensure_committed.exit.thread
  %i.hm = getelementptr [80 x i8], ptr %i.e, i64 %2
  %i.hn = getelementptr i8, ptr %i.hm, i64 -80    ; 2 uses
  %i.ho = getelementptr [80 x i8], ptr %i.d, i64 %i.ha ; 2 uses
  %i.hp = icmp ugt ptr %i.hn, %i.ho
  %spec.select = select i1 %i.hp, ptr %i.ho, ptr %i.hn ; 5 uses
  %i.hq = icmp ugt ptr %spec.select, %i.e
  br i1 %i.hq, label %bb.ai, label %bb.aj

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0476 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.ik, %.lr.ph ] ; 5 uses
  %.pn5 = phi ptr [ %i.e, %.lr.ph.preheader.new ], [ %.048.3, %.lr.ph ] ; 12 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.048 = getelementptr i8, ptr %.pn5, i64 80
  %i.hr = trunc i64 %.0476 to i32
  %i.hs = mul i32 %i.hr, 80
  %i.ht = getelementptr i8, ptr %.pn5, i64 84
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !59
  store i32 0, ptr %.048, align 8, !tbaa !52
  %i.hu = getelementptr i8, ptr %.pn5, i64 108
  store i32 1, ptr %i.hu, align 4, !tbaa !21
  %.048.1 = getelementptr i8, ptr %.pn5, i64 160
  %i.hv = trunc i64 %.0476 to i32
  %i.hw = mul i32 %i.hv, 80
  %i.hx = add i32 %i.hw, 80
  %i.hy = getelementptr i8, ptr %.pn5, i64 164
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !59
  store i32 0, ptr %.048.1, align 8, !tbaa !52
  %i.hz = getelementptr i8, ptr %.pn5, i64 188
  store i32 1, ptr %i.hz, align 4, !tbaa !21
  %.048.2 = getelementptr i8, ptr %.pn5, i64 240
  %i.ia = trunc i64 %.0476 to i32
  %i.ib = mul i32 %i.ia, 80
  %i.ic = add i32 %i.ib, 160
  %i.id = getelementptr i8, ptr %.pn5, i64 244
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !59
  store i32 0, ptr %.048.2, align 8, !tbaa !52
  %i.ie = getelementptr i8, ptr %.pn5, i64 268
  store i32 1, ptr %i.ie, align 4, !tbaa !21
  %.048.3 = getelementptr i8, ptr %.pn5, i64 320  ; 3 uses
  %i.if = trunc i64 %.0476 to i32
  %i.ig = mul i32 %i.if, 80
  %i.ih = add i32 %i.ig, 240
  %i.ii = getelementptr i8, ptr %.pn5, i64 324
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !59
  store i32 0, ptr %.048.3, align 8, !tbaa !52
  %i.ij = getelementptr i8, ptr %.pn5, i64 348
  store i32 1, ptr %i.ij, align 4, !tbaa !21
  %i.ik = add nuw i64 %.0476, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !645

bb.ai:                                            ; preds = %._crit_edge
  %i.il = ptrtoint ptr %spec.select to i64
  %i.im = sub i64 %i.il, %i.f
  %i.in = trunc i64 %i.im to i32
  %i.io = getelementptr i8, ptr %spec.select, i64 4
  store i32 %i.in, ptr %i.io, align 4, !tbaa !59
  store i32 0, ptr %spec.select, align 8, !tbaa !52
  %i.ip = getelementptr i8, ptr %spec.select, i64 28
  store i32 1, ptr %i.ip, align 4, !tbaa !21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge
  %i.iq = getelementptr i8, ptr %i.e, i64 8       ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 8
  %i.is = or i8 %i.ir, 1
  store i8 %i.is, ptr %i.iq, align 8
  %i.it = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !67
  %i.iv = add i64 %i.iu, 1
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !67
  br label %bb.ak

bb.ak:                                            ; preds = %mi_segment_ensure_committed.exit, %bb.aj
  %.050 = phi ptr [ %i.e, %bb.aj ], [ null, %mi_segment_ensure_committed.exit ]
  ret ptr %.050
}

; Function Attrs: nounwind uwtable
define internal void @mi_buffered_out(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !60      ; 2 uses
  %.not22 = icmp eq i8 %i.c, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = getelementptr i8, ptr %1, i64 16         ; 5 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.h = phi i8 [ %i.c, %.lr.ph ], [ %i.av, %bb.k ] ; 2 uses
  %.023 = phi ptr [ %0, %.lr.ph ], [ %i.au, %bb.k ]
  %i.i = load i64, ptr %i.d, align 8, !tbaa !646  ; 3 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !330
  %.not18 = icmp ult i64 %i.i, %i.j
  br i1 %.not18, label %mi_buffered_flush.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !331
  %i.l = getelementptr i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !60
  %i.m = load ptr, ptr %1, align 8, !tbaa !327    ; 4 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !331  ; 2 uses
  %i.o = icmp eq ptr %i.m, null
  %i.p = load ptr, ptr @stdout, align 8
  %i.q = icmp eq ptr %i.m, %i.p
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %i.q
  %i.r = load ptr, ptr @stderr, align 8
  %i.s = icmp eq ptr %i.m, %i.r
  %or.cond17.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.s
  br i1 %or.cond17.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc noundef zeroext i1 @mi_recurse_enter_prim()
  br i1 %i.t, label %bb.e, label %mi_buffered_flush.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load atomic ptr, ptr @mi_out_arg acquire, align 8
  %i.v = load volatile ptr, ptr @mi_out_default, align 8, !tbaa !40 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  %i.x = select i1 %i.w, ptr @mi_out_buf, ptr %i.v
  tail call void %i.x(ptr noundef %i.n, ptr noundef %i.u) #55, !inline_history !647
  tail call fastcc void @mi_recurse_exit_prim()
  br label %mi_buffered_flush.exit

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !329
  tail call void %i.m(ptr noundef %i.n, ptr noundef %i.y) #55, !inline_history !647
  br label %mi_buffered_flush.exit

mi_buffered_flush.exit:                           ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.z = phi i64 [ %i.i, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !331
  %i.ab = add nuw i64 %i.z, 1
  store i64 %i.ab, ptr %i.d, align 8, !tbaa !646
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.z
  store i8 %i.h, ptr %i.ac, align 1, !tbaa !60
  %i.ad = icmp eq i8 %i.h, 10
  br i1 %i.ad, label %bb.g, label %bb.k

bb.g:                                             ; preds = %mi_buffered_flush.exit
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !331
  %i.af = load i64, ptr %i.d, align 8, !tbaa !646
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.af
  store i8 0, ptr %i.ag, align 1, !tbaa !60
  %i.ah = load ptr, ptr %1, align 8, !tbaa !327   ; 4 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !331 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, null
  %i.ak = load ptr, ptr @stdout, align 8
  %i.al = icmp eq ptr %i.ah, %i.ak
  %or.cond.i.i19 = select i1 %i.aj, i1 true, i1 %i.al
  %i.am = load ptr, ptr @stderr, align 8
  %i.an = icmp eq ptr %i.ah, %i.am
  %or.cond17.i.i20 = select i1 %or.cond.i.i19, i1 true, i1 %i.an
  br i1 %or.cond17.i.i20, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call fastcc noundef zeroext i1 @mi_recurse_enter_prim()
  br i1 %i.ao, label %bb.i, label %mi_buffered_flush.exit21

bb.i:                                             ; preds = %bb.h
  %i.ap = load atomic ptr, ptr @mi_out_arg acquire, align 8
  %i.aq = load volatile ptr, ptr @mi_out_default, align 8, !tbaa !40 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  %i.as = select i1 %i.ar, ptr @mi_out_buf, ptr %i.aq
  tail call void %i.as(ptr noundef %i.ai, ptr noundef %i.ap) #55, !inline_history !647
  tail call fastcc void @mi_recurse_exit_prim()
  br label %mi_buffered_flush.exit21

bb.j:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !329
  tail call void %i.ah(ptr noundef %i.ai, ptr noundef %i.at) #55, !inline_history !647
  br label %mi_buffered_flush.exit21

mi_buffered_flush.exit21:                         ; preds = %bb.h, %bb.i, %bb.j
  store i64 0, ptr %i.d, align 8, !tbaa !646
  br label %bb.k

bb.k:                                             ; preds = %mi_buffered_flush.exit21, %mi_buffered_flush.exit
  %i.au = getelementptr i8, ptr %.023, i64 1      ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !60  ; 2 uses
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !648

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_stat_print_ex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef range(i64 -1, 2) %2, ptr noundef nonnull %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  tail call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.139, ptr noundef %1)
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !128
  tail call fastcc void @mi_printf_amount(i64 noundef %i.d, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.e = load i64, ptr %0, align 8, !tbaa !129
  tail call fastcc void @mi_printf_amount(i64 noundef %i.e, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !130
  tail call fastcc void @mi_printf_amount(i64 noundef %i.g, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !127
  tail call fastcc void @mi_printf_amount(i64 noundef %i.i, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i8 0, ptr %i.a, align 16, !tbaa !60
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.146, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.145)
  %i.j = load i64, ptr %0, align 8, !tbaa !129
  %i.k = load i64, ptr %i.f, align 8, !tbaa !130
  %i.l = icmp sgt i64 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.12)
  %i.m = icmp eq ptr %4, null
  %i.n = select i1 %i.m, ptr @.str.140, ptr %4
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull %i.n)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.130)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.141)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.o = icmp slt i64 %2, 0
  %i.p = getelementptr i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !128  ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @mi_printf_amount(i64 noundef %i.q, i64 noundef -1, ptr noundef nonnull %3, ptr noundef null)
  %i.r = load i64, ptr %0, align 8, !tbaa !129
end_hunk_3
