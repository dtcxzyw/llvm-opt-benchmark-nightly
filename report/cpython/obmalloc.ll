Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/obmalloc?download=true
inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@mi_arenas_try_purge:bb.a
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !149, !range !86, !noundef !87
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %i.x, i64 128     ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !155
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
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
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
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !155
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
  br i1 %exitcond.not.i, label %mi_bitmap_mask_.exit.i.i.preheader, label %bb.m, !llvm.loop !485

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
  br i1 %i.bf, label %bb.q, label %bb.o, !llvm.loop !13

_mi_bitmap_try_claim.exit.i:                      ; preds = %bb.o
  %i.bh = add nsw i64 %.15688.i, -1               ; 2 uses
  %.not71.i = icmp eq i64 %i.bh, 0
  br i1 %.not71.i, label %.critedge74.i, label %mi_bitmap_mask_.exit.i.i, !llvm.loop !486

bb.q:                                             ; preds = %bb.p
  %i.bi = load ptr, ptr %i.ab, align 8, !tbaa !155
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
  %vec.ind.next = add <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !487

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.critedge.i.i, label %scalar.ph.preheader

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
  %i.cb = add i64 %.028.i.i, 1                    ; 3 uses
  %i.cc = add i64 %i.cb, %.02429.i.i
  %i.cd = icmp ult i64 %i.cc, %i.bl
  br i1 %i.cd, label %scalar.ph, label %.critedge.i.i, !llvm.loop !488

.critedge.i.i:                                    ; preds = %bb.r, %scalar.ph, %vector.early.exit, %middle.block
  %.0.lcssa.i.i = phi i64 [ %n.vec, %middle.block ], [ %i.bx, %vector.early.exit ], [ %i.cb, %bb.r ], [ %.028.i.i, %scalar.ph ] ; 4 uses
  %.not27.i.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not27.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  %i.ce = add i64 %.02429.i.i, %i.aq
  call fastcc void @mi_arena_purge(ptr noundef nonnull %i.x, i64 noundef %i.ce, i64 noundef %.0.lcssa.i.i, ptr noundef %2)
  %i.cf = icmp eq i64 %.0.lcssa.i.i, %.15688.i
  %spec.select.i.i = select i1 %i.cf, i1 true, i1 %.02330.i.i
  %i.cg = freeze i1 %spec.select.i.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge.i.i
  %.2.i.i = phi i1 [ %i.cg, %bb.s ], [ %.02330.i.i, %.critedge.i.i ] ; 2 uses
  %i.ch = add i64 %.02429.i.i, 1
  %i.ci = add i64 %i.ch, %.0.lcssa.i.i            ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.bl
  br i1 %i.cj, label %.preheader.i.i, label %mi_arena_purge_range.exit.i, !llvm.loop !489

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
  br i1 %i.cq, label %.preheader.i, label %.loopexit.loopexit.i, !llvm.loop !490

.loopexit.loopexit.i:                             ; preds = %.critedge74.i
  %.pre.i = load i64, ptr %i.aj, align 8, !tbaa !148
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.l
  %i.cr = phi i64 [ %i.am, %bb.l ], [ %.pre.i, %.loopexit.loopexit.i ] ; 2 uses
  %.4.i = phi i1 [ %.06394.i, %bb.l ], [ %.366.i, %.loopexit.loopexit.i ] ; 2 uses
  %.3.i = phi i1 [ %.05896.i, %bb.l ], [ %.2.i, %.loopexit.loopexit.i ] ; 3 uses
  %i.cs = add nuw i64 %.06295.i, 1                ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  br i1 %i.ct, label %bb.l, label %._crit_edge.i, !llvm.loop !491

bb.u:                                             ; preds = %._crit_edge.i
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 488), align 8, !tbaa !133
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.v, label %mi_option_get.exit.i.i, !prof !61

bb.v:                                             ; preds = %bb.u
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 480)), !inline_history !134
  br label %mi_option_get.exit.i.i

mi_option_get.exit.i.i:                           ; preds = %bb.v, %bb.u
  %i.cw = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 480), align 16, !tbaa !135
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 776), align 8, !tbaa !133
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.w, label %mi_arena_purge_delay.exit.i, !prof !61

bb.w:                                             ; preds = %mi_option_get.exit.i.i
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 768)), !inline_history !134
  br label %mi_arena_purge_delay.exit.i

mi_arena_purge_delay.exit.i:                      ; preds = %bb.w, %mi_option_get.exit.i.i
  %i.cz = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 768), align 16, !tbaa !135
  %i.da = mul i64 %i.cz, %i.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  %i.db = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #52 ; 0 uses
  %i.dc = load i64, ptr %3, align 8, !tbaa !153
  %i.dd = mul i64 %i.dc, 1000
  %i.de = load i64, ptr %i.l, align 8, !tbaa !154
  %i.df = sdiv i64 %i.de, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
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
  br i1 %exitcond.not, label %bb.y, label %bb.g, !llvm.loop !492

bb.y:                                             ; preds = %.thread, %bb.x
  store atomic i64 0, ptr @mi_arenas_try_purge.purge_guard release, align 8
  br label %.critedge, !llvm.loop !493

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
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !126
  %.not24.i = icmp eq ptr %i.e, null
  br i1 %.not24.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !495
  %i.h = add i32 %i.g, -3
  %i.i = icmp ult i32 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.c, i64 8
  store atomic ptr null, ptr %i.b release, align 8
  %i.k = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !126
  %i.l = getelementptr i8, ptr %i.c, i64 40
  %.val.i = load i64, ptr %i.l, align 8, !tbaa !127
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !158
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.c, i64 noundef %i.r, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.p, ptr nonnull poison)
  br label %mi_arena_meta_free.exit.i

mi_arena_meta_free.exit.i:                        ; preds = %bb.e, %bb.f, %.lr.ph.i
  %.2.i = phi i64 [ %.027.i, %.lr.ph.i ], [ %.1.i, %bb.f ], [ %.1.i, %bb.e ] ; 2 uses
  %i.s = add nuw i64 %.02125.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.a
  br i1 %exitcond.not.i, label %mi_arenas_unsafe_destroy.exit, label %.lr.ph.i, !llvm.loop !494

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
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !126
  %.not20 = icmp ugt ptr %i.e, %0
  br i1 %.not20, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !126
  %i.g = getelementptr i8, ptr %i.c, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !127
  %i.i = shl i64 %i.h, 25
  %i.j = getelementptr i8, ptr %i.f, i64 %i.i
  %i.k = icmp ugt ptr %i.j, %0
  br i1 %i.k, label %.critedge23, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %.lr.ph
  %i.l = add nuw i64 %.01725, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %i.a
  br i1 %exitcond.not, label %.critedge23, label %.lr.ph, !llvm.loop !9

end_hunk_0
begin_hunk_1_@mi_recurse_enter_prim:bb.a
  %.0 = xor i1 %i.c, true
  ret i1 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_recurse_exit_prim() unnamed_addr #51 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @recurse)
  store i8 0, ptr %i.a, align 1, !tbaa !142
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #34

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #52

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_large_huge_page_alloc(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 524288
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !121
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %1, 2097152
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i64 %1, 8388608
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i64 %1, 33554432
  %..i = select i1 %i.e, i64 1048576, i64 4194304
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i = phi i64 [ %i.b, %bb.b ], [ 262144, %bb.d ], [ 65536, %bb.c ], [ %..i, %bb.e ] ; 5 uses
  %i.f = xor i64 %.0.i, -1
  %.not.i = icmp ult i64 %1, %i.f
  br i1 %.not.i, label %bb.g, label %_mi_os_good_alloc_size.exit, !prof !96

bb.g:                                             ; preds = %bb.f
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i)
  %i.h = icmp samesign ult i64 %i.g, 2
  %i.i = add nsw i64 %1, -1
  %i.j = add i64 %i.i, %.0.i                      ; 3 uses
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = sub i64 0, %.0.i
  %i.l = and i64 %i.j, %i.k
  br label %_mi_os_good_alloc_size.exit

bb.i:                                             ; preds = %bb.g
  %i.m = urem i64 %i.j, %.0.i
  %i.n = sub nuw i64 %i.j, %i.m
  br label %_mi_os_good_alloc_size.exit

_mi_os_good_alloc_size.exit:                      ; preds = %bb.f, %bb.h, %bb.i
  %.010.i = phi i64 [ %1, %bb.f ], [ %i.l, %bb.h ], [ %i.n, %bb.i ] ; 3 uses
  %i.o = icmp ugt i64 %.010.i, 16777216
  %i.p = icmp ne i64 %2, 0
  %i.q = or i1 %i.p, %i.o
  %i.r = add i64 %.010.i, 7
  %i.s = select i1 %i.q, i64 2147483655, i64 %i.r ; 4 uses
  %i.t = lshr i64 %i.s, 3                         ; 2 uses
  %i.u = icmp ult i64 %i.s, 16
  br i1 %i.u, label %mi_page_queue.exit, label %bb.j

bb.j:                                             ; preds = %_mi_os_good_alloc_size.exit
  %i.v = icmp ult i64 %i.s, 72
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = add nuw nsw i64 %i.t, 1
  %i.x = and i64 %i.w, 30
  br label %mi_page_queue.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp ugt i64 %i.s, 131079
  br i1 %i.y, label %mi_page_queue.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i64 %i.t, -1                     ; 2 uses
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 false) ; 2 uses
  %i.ab = sub nsw i64 61, %i.aa
  %i.ac = lshr i64 %i.z, %i.ab
  %i.ad = and i64 %i.ac, 3
  %i.ae = shl nuw nsw i64 %i.aa, 2
  %reass.sub = sub nsw i64 %i.ad, %i.ae
  %i.af = add nsw i64 %reass.sub, 249
  %i.ag = and i64 %i.af, 255
  br label %mi_page_queue.exit

mi_page_queue.exit:                               ; preds = %_mi_os_good_alloc_size.exit, %bb.k, %bb.l, %bb.m
  %.0.i.i.i = phi i64 [ %i.ag, %bb.m ], [ %i.x, %bb.k ], [ 1, %_mi_os_good_alloc_size.exit ], [ 73, %bb.l ]
  %i.ah = getelementptr i8, ptr %0, i64 1040
  %i.ai = getelementptr [24 x i8], ptr %i.ah, i64 %.0.i.i.i
  %i.aj = tail call fastcc ptr @mi_page_fresh_alloc(ptr noundef %0, ptr noundef %i.ai, i64 noundef %.010.i, i64 noundef %2)
  ret ptr %i.aj
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_page_fresh_alloc(ptr noundef %0, ptr nofree noundef captures(address) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72     ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = getelementptr i8, ptr %i.a, i64 952
  %i.d = tail call ptr @_mi_segment_page_alloc(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %3, ptr noundef %i.b, ptr noundef %i.c) ; 15 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !103
  %i.h = icmp eq i64 %.val, 131080
  br i1 %i.h, label %bb.d, label %mi_page_block_size.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !65   ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.e, label %_mi_segment_page_start.exit.i, !prof !96

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %i.j to i64
  br label %mi_page_block_size.exit

_mi_segment_page_start.exit.i:                    ; preds = %bb.d
  %i.m = load i32, ptr %i.d, align 8, !tbaa !93
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 16
  br label %mi_page_block_size.exit

mi_page_block_size.exit:                          ; preds = %_mi_segment_page_start.exit.i, %bb.e, %bb.c
  %i.p = phi i64 [ %2, %bb.c ], [ %i.l, %bb.e ], [ %i.o, %_mi_segment_page_start.exit.i ] ; 7 uses
  %i.q = getelementptr i8, ptr %i.d, i64 48
  %i.r = ptrtoint ptr %0 to i64
  store atomic i64 %i.r, ptr %i.q release, align 8
  %i.s = getelementptr i8, ptr %0, i64 3057
  %i.t = load i8, ptr %i.s, align 1, !tbaa !176
  %i.u = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.v = load i8, ptr %i.u, align 8               ; 2 uses
  %i.w = shl i8 %i.t, 3
  %i.x = and i8 %i.w, 120
  %i.y = and i8 %i.v, -121
  %i.z = or disjoint i8 %i.y, %i.x                ; 2 uses
  store i8 %i.z, ptr %i.u, align 8
  %i.aa = getelementptr i8, ptr %0, i64 3059
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !642, !range !86, !noundef !87
  %i.ac = shl nuw nsw i8 %i.ab, 2
  %i.ad = and i8 %i.z, -5
  %i.ae = or disjoint i8 %i.ad, %i.ac
  store i8 %i.ae, ptr %i.u, align 8
  %i.af = getelementptr i8, ptr %0, i64 3058
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !643
  %i.ah = getelementptr i8, ptr %i.d, i64 9
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !644
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.p, i64 2147483648) ; 6 uses
  %i.aj = trunc nuw i64 %i.ai to i32              ; 2 uses
  %i.ak = getelementptr i8, ptr %i.d, i64 28
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !65
  %i.al = load i32, ptr %i.d, align 8, !tbaa !93
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 16               ; 2 uses
  %i.ao = icmp ugt i64 %i.p, 7                    ; 2 uses
  br i1 %i.ao, label %bb.f, label %_mi_segment_page_start.exit.i21

bb.f:                                             ; preds = %mi_page_block_size.exit
  %i.ap = icmp ult i64 %i.p, 65
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = mul nuw nsw i64 %i.ai, 3
  br label %_mi_segment_page_start.exit.i21

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp ult i64 %i.p, 513
  %spec.select.i.i.i = select i1 %i.ar, i64 %i.ai, i64 0
  br label %_mi_segment_page_start.exit.i21

_mi_segment_page_start.exit.i21:                  ; preds = %bb.h, %bb.g, %mi_page_block_size.exit
  %.0.i.i.i = phi i64 [ %i.aq, %bb.g ], [ 0, %mi_page_block_size.exit ], [ %spec.select.i.i.i, %bb.h ]
  %i.as = sub nsw i64 %i.an, %.0.i.i.i
  %i.at = udiv i64 %i.as, %i.p                    ; 2 uses
  %i.au = trunc i64 %i.at to i16                  ; 2 uses
  %i.av = getelementptr i8, ptr %i.d, i64 12
  store i16 %i.au, ptr %i.av, align 4, !tbaa !181
  %i.aw = lshr i8 %i.v, 1
  %i.ax = and i8 %i.aw, 1
  %i.ay = getelementptr i8, ptr %i.d, i64 15      ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = and i8 %i.az, -2
  %i.bb = or disjoint i8 %i.ba, %i.ax
  store i8 %i.bb, ptr %i.ay, align 1
  %i.bc = getelementptr i8, ptr %i.d, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !60
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %bb.i, label %mi_page_init.exit

bb.i:                                             ; preds = %_mi_segment_page_start.exit.i21
  %i.be = getelementptr i8, ptr %i.d, i64 10      ; 3 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !114 ; 2 uses
  %.not24.i.i = icmp ult i16 %i.bf, %i.au
  br i1 %.not24.i.i, label %bb.j, label %mi_page_init.exit

bb.j:                                             ; preds = %bb.i
  br i1 %i.ao, label %bb.k, label %_mi_page_start.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp ult i64 %i.p, 65
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = mul nuw nsw i64 %i.ai, 3
  br label %_mi_page_start.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp ult i64 %i.p, 513
  %spec.select.i.i.i.i.i = select i1 %i.bi, i64 %i.ai, i64 0
  br label %_mi_page_start.exit.i.i

_mi_page_start.exit.i.i:                          ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i.i = phi i64 [ %i.bh, %bb.l ], [ 0, %bb.j ], [ %spec.select.i.i.i.i.i, %bb.m ]
  %i.bj = sub nsw i64 %i.an, %.0.i.i.i.i.i
  %i.bk = icmp slt i32 %i.aj, 0
  %i.bl = select i1 %i.bk, i64 %i.bj, i64 %i.ai   ; 3 uses
  %4 = and i64 %i.at, 65535
  %i.bm = zext i16 %i.bf to i64
  %5 = sub nuw nsw i64 %4, %i.bm
  %i.bn = icmp ugt i64 %i.bl, 4095
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_mi_page_start.exit.i.i
  %.rhs.trunc.i.i = trunc nuw nsw i64 %i.bl to i16
  %i.bo = udiv i16 4096, %.rhs.trunc.i.i
  %i.bp = tail call i16 @llvm.umax.i16(i16 %i.bo, i16 4)
  %i.bq = zext nneg i16 %i.bp to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_mi_page_start.exit.i.i
  %spec.store.select.i.i = phi i64 [ %i.bq, %bb.n ], [ 4, %_mi_page_start.exit.i.i ]
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %5, i64 %spec.store.select.i.i) ; 2 uses
  tail call fastcc void @mi_page_free_list_extend(ptr noundef nonnull %i.d, i64 noundef %i.bl, i64 noundef %spec.select.i.i)
  %i.br = trunc nuw nsw i64 %spec.select.i.i to i16
  %i.bs = load i16, ptr %i.be, align 2, !tbaa !114
  %i.bt = add i16 %i.bs, %i.br
  store i16 %i.bt, ptr %i.be, align 2, !tbaa !114
  br label %mi_page_init.exit

mi_page_init.exit:                                ; preds = %_mi_segment_page_start.exit.i21, %bb.i, %bb.o
  br i1 %i.f, label %bb.q, label %bb.p

bb.p:                                             ; preds = %mi_page_init.exit
  tail call fastcc void @mi_page_queue_push(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.d)
  br label %bb.q

bb.q:                                             ; preds = %mi_page_init.exit, %bb.p, %bb.a
  ret ptr %i.d
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_free_list_extend(ptr noundef nonnull %0, i64 noundef %1, i64 noundef range(i64 0, 4097) %2) unnamed_addr #53 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !65   ; 4 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp ugt i32 %i.f, 7
  br i1 %i.h, label %bb.b, label %_mi_page_start.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i32 %i.f, 65
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = mul nuw nsw i64 %i.g, 3
  br label %_mi_page_start.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %i.f, 513
  %spec.select.i.i.i = select i1 %i.k, i64 %i.g, i64 0
  br label %_mi_page_start.exit

_mi_page_start.exit:                              ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.a ], [ %spec.select.i.i.i, %bb.d ]
  %i.l = getelementptr i8, ptr %i.d, i64 264
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.a, %i.m
  %i.o = sdiv exact i64 %i.n, 80
  %i.p = shl i64 %i.o, 16
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 %.0.i.i.i ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 10
  %i.t = load i16, ptr %i.s, align 2, !tbaa !114
  %i.u = zext i16 %i.t to i64                     ; 2 uses
  %i.v = mul i64 %1, %i.u
  %i.w = getelementptr i8, ptr %i.r, i64 %i.v     ; 3 uses
  %i.x = add nsw i64 %2, -1
  %i.y = add nsw i64 %i.x, %i.u
  %i.z = mul i64 %i.y, %1
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.z    ; 3 uses
  %.not1 = icmp ugt ptr %i.w, %i.aa
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_mi_page_start.exit, %.lr.ph
  %.02 = phi ptr [ %i.ab, %.lr.ph ], [ %i.w, %_mi_page_start.exit ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.02, i64 %1      ; 3 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  store atomic i64 %i.ac, ptr %.02 monotonic, align 8
  %.not = icmp ugt ptr %i.ab, %i.aa
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !645

._crit_edge:                                      ; preds = %.lr.ph, %_mi_page_start.exit
  %i.ad = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.af = ptrtoint ptr %i.ae to i64
  store atomic i64 %i.af, ptr %i.aa monotonic, align 8
  store ptr %i.w, ptr %i.ad, align 8, !tbaa !60
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @chacha_block(ptr nofree noundef captures(none) %0) unnamed_addr #19 {
.preheader21:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !54
  %.sroa.6.0..sroa_idx = getelementptr i8, ptr %0, i64 4 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !54
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %0, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !54
  %.sroa.12.0..sroa_idx = getelementptr i8, ptr %0, i64 12
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !54
  %.sroa.15.0..sroa_idx = getelementptr i8, ptr %0, i64 16
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !54
  %.sroa.18.0..sroa_idx = getelementptr i8, ptr %0, i64 20 ; 2 uses
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !54
  %.sroa.21.0..sroa_idx = getelementptr i8, ptr %0, i64 24
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !54
  %.sroa.24.0..sroa_idx = getelementptr i8, ptr %0, i64 28
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !54
  %.sroa.27.0..sroa_idx = getelementptr i8, ptr %0, i64 32
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 4, !tbaa !54
  %.sroa.30.0..sroa_idx = getelementptr i8, ptr %0, i64 36 ; 2 uses
  %.sroa.30.0.copyload = load i32, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !54
  %.sroa.33.0..sroa_idx = getelementptr i8, ptr %0, i64 40
  %.sroa.33.0.copyload = load i32, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !54
  %.sroa.36.0..sroa_idx = getelementptr i8, ptr %0, i64 44
  %.sroa.36.0.copyload = load i32, ptr %.sroa.36.0..sroa_idx, align 4, !tbaa !54
  %.sroa.39.0..sroa_idx = getelementptr i8, ptr %0, i64 48 ; 3 uses
  %.sroa.39.0.copyload = load i32, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !54
  %.sroa.42.0..sroa_idx = getelementptr i8, ptr %0, i64 52 ; 3 uses
  %.sroa.42.0.copyload = load i32, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !54
  %.sroa.45.0..sroa_idx = getelementptr i8, ptr %0, i64 56 ; 3 uses
  %.sroa.45.0.copyload = load i32, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !54
  %.sroa.48.0..sroa_idx = getelementptr i8, ptr %0, i64 60 ; 2 uses
  %.sroa.48.0.copyload = load i32, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !54
  br label %bb.a

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i32, ptr %0, align 4, !tbaa !54
  %i.c = add i32 %i.b, %i.dd
  store i32 %i.c, ptr %i.a, align 4, !tbaa !54
  %i.d = getelementptr i8, ptr %0, i64 68
  %i.e = load <4 x i32>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !54
  %i.f = insertelement <4 x i32> poison, i32 %i.dy, i64 0
  %i.g = insertelement <4 x i32> %i.f, i32 %i.ea, i64 1
  %i.h = insertelement <4 x i32> %i.g, i32 %i.eg, i64 2
  %i.i = insertelement <4 x i32> %i.h, i32 %i.es, i64 3
  %i.j = add <4 x i32> %i.e, %i.i
  store <4 x i32> %i.j, ptr %i.d, align 4, !tbaa !54
  %i.k = getelementptr i8, ptr %0, i64 84
  %i.l = load <4 x i32>, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !54
  %i.m = insertelement <4 x i32> poison, i32 %i.el, i64 0
  %i.n = insertelement <4 x i32> %i.m, i32 %i.ep, i64 1
  %i.o = insertelement <4 x i32> %i.n, i32 %i.ef, i64 2
  %i.p = insertelement <4 x i32> %i.o, i32 %i.ed, i64 3
  %i.q = add <4 x i32> %i.l, %i.p
  store <4 x i32> %i.q, ptr %i.k, align 4, !tbaa !54
  %i.r = getelementptr i8, ptr %0, i64 100
  %i.s = load i32, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !54
  %i.t = load <4 x i32>, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !54
  %i.u = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %i.v = insertelement <4 x i32> %i.u, i32 %i.ej, i64 1
  %i.w = insertelement <4 x i32> %i.v, i32 %i.en, i64 2
  %i.x = insertelement <4 x i32> %i.w, i32 %i.em, i64 3
  %i.y = add <4 x i32> %i.t, %i.x
  store <4 x i32> %i.y, ptr %i.r, align 4, !tbaa !54
  %i.z = load i32, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !54 ; 2 uses
  %i.aa = add i32 %i.z, %i.ec
  %i.ab = getelementptr i8, ptr %0, i64 116
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !54
  %i.ac = load i32, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !54 ; 2 uses
  %i.ad = add i32 %i.ac, %i.ei
  %i.ae = getelementptr i8, ptr %0, i64 120
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !54
  %i.af = load i32, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !54
  %i.ag = add i32 %i.af, %i.df
  %i.ah = getelementptr i8, ptr %0, i64 124
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !54
  %i.ai = getelementptr i8, ptr %0, i64 128
  store i32 16, ptr %i.ai, align 4, !tbaa !166
  %i.aj = add i32 %i.s, 1                         ; 2 uses
  store i32 %i.aj, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !54
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.b, label %bb.d

bb.a:                                             ; preds = %.preheader21, %bb.a
  %.01953 = phi i64 [ 0, %.preheader21 ], [ %i.et, %bb.a ] ; 2 uses
  %i.al = phi i32 [ %.sroa.15.0.copyload, %.preheader21 ], [ %i.es, %bb.a ] ; 2 uses
  %i.am = phi i32 [ %.sroa.0.0.copyload, %.preheader21 ], [ %i.dd, %bb.a ]
  %i.an = phi i32 [ %.sroa.39.0.copyload, %.preheader21 ], [ %i.em, %bb.a ]
  %i.ao = phi i32 [ %.sroa.27.0.copyload, %.preheader21 ], [ %i.ed, %bb.a ]
  %i.ap = phi i32 [ %.sroa.18.0.copyload, %.preheader21 ], [ %i.el, %bb.a ] ; 2 uses
  %i.aq = phi i32 [ %.sroa.6.0.copyload, %.preheader21 ], [ %i.dy, %bb.a ]
  %i.ar = phi i32 [ %.sroa.42.0.copyload, %.preheader21 ], [ %i.ec, %bb.a ]
  %i.as = phi i32 [ %.sroa.30.0.copyload, %.preheader21 ], [ %i.eq, %bb.a ]
  %i.at = phi i32 [ %.sroa.21.0.copyload, %.preheader21 ], [ %i.ep, %bb.a ] ; 2 uses
  %i.au = phi i32 [ %.sroa.9.0.copyload, %.preheader21 ], [ %i.ea, %bb.a ]
  %i.av = phi i32 [ %.sroa.45.0.copyload, %.preheader21 ], [ %i.ei, %bb.a ]
  %i.aw = phi i32 [ %.sroa.33.0.copyload, %.preheader21 ], [ %i.ej, %bb.a ]
  %i.ax = phi i32 [ %.sroa.24.0.copyload, %.preheader21 ], [ %i.ef, %bb.a ] ; 2 uses
  %i.ay = phi i32 [ %.sroa.12.0.copyload, %.preheader21 ], [ %i.eg, %bb.a ]
  %i.az = phi i32 [ %.sroa.48.0.copyload, %.preheader21 ], [ %i.df, %bb.a ]
  %i.ba = phi i32 [ %.sroa.36.0.copyload, %.preheader21 ], [ %i.en, %bb.a ]
  %i.bb = add i32 %i.am, %i.al                    ; 2 uses
  %i.bc = xor i32 %i.an, %i.bb                    ; 2 uses
  %i.bd = tail call noundef i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 16) ; 2 uses
  %i.be = add i32 %i.bd, %i.ao                    ; 2 uses
  %i.bf = xor i32 %i.be, %i.al                    ; 2 uses
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 12) ; 2 uses
  %i.bh = add i32 %i.bg, %i.bb                    ; 2 uses
  %i.bi = xor i32 %i.bh, %i.bd                    ; 2 uses
  %i.bj = tail call noundef i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 8) ; 2 uses
  %i.bk = add i32 %i.bj, %i.be                    ; 2 uses
  %i.bl = xor i32 %i.bk, %i.bg                    ; 2 uses
  %i.bm = tail call noundef i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 7) ; 2 uses
  %i.bn = add i32 %i.aq, %i.ap                    ; 2 uses
  %i.bo = xor i32 %i.ar, %i.bn                    ; 2 uses
  %i.bp = tail call noundef i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 16) ; 2 uses
end_hunk_1
