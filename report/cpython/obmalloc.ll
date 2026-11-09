Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/obmalloc?download=true
inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@mi_arena_schedule_purge:bb.a
  %i.be = atomicrmw or ptr %.030.lcssa.i, i64 %i.an acq_rel, align 8 ; 0 uses
  br label %_mi_bitmap_claim_across.exit

_mi_bitmap_claim_across.exit:                     ; preds = %bb.m, %._crit_edge.i, %._crit_edge.thread.i, %bb.e, %mi_arena_purge_delay.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_arenas_try_purge(i1 noundef zeroext %0, i1 noundef zeroext %1, ptr nofree noundef captures(address) %2) unnamed_addr #2 !guid !868 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = tail call zeroext i1 @_mi_preloading()
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 488), align 8, !tbaa !386
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %mi_option_get.exit.i, !prof !314

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 480)), !inline_history !387
  br label %mi_option_get.exit.i

mi_option_get.exit.i:                             ; preds = %bb.c, %bb.b
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 480), align 16, !tbaa !388
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 776), align 8, !tbaa !386
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %mi_arena_purge_delay.exit, !prof !314

bb.d:                                             ; preds = %mi_option_get.exit.i
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 768)), !inline_history !387
  br label %mi_arena_purge_delay.exit

mi_arena_purge_delay.exit:                        ; preds = %mi_option_get.exit.i, %bb.d
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 768), align 16, !tbaa !388
  %i.h = mul i64 %i.g, %i.d
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %mi_arena_purge_delay.exit
  %i.j = load atomic i64, ptr @mi_arena_count acquire, align 64 ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = cmpxchg ptr @mi_arenas_try_purge.purge_guard, i64 0, i64 1 acq_rel acquire, align 8
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #52
  %i.n = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #52 ; 0 uses
  %i.o = load i64, ptr %4, align 8, !tbaa !406
  %i.p = mul i64 %i.o, 1000
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !407
  %i.s = sdiv i64 %i.r, 1000000
  %i.t = add i64 %i.s, %i.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #52
  %i.u = select i1 %1, i64 %i.j, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %mi_arena_try_purge.exit.thread
  %.02137 = phi i64 [ 0, %bb.g ], [ %i.dl, %mi_arena_try_purge.exit.thread ] ; 2 uses
  %.02236 = phi i64 [ %i.u, %bb.g ], [ %.2, %mi_arena_try_purge.exit.thread ] ; 9 uses
  %i.w = getelementptr [8 x i8], ptr @mi_arenas, i64 %.02137
  %i.x = load atomic ptr, ptr %i.w acquire, align 8 ; 7 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %mi_arena_try_purge.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !402, !range !339, !noundef !340
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %mi_arena_try_purge.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %i.x, i64 128     ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !408
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %mi_arena_try_purge.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %i.x, i64 104     ; 3 uses
  %i.af = load atomic i64, ptr %i.ae monotonic, align 8 ; 3 uses
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = icmp sle i64 %i.af, %i.t
  %or.cond.not.i = or i1 %0, %i.ah
  %or.cond.i = and i1 %i.ag, %or.cond.not.i
  br i1 %or.cond.i, label %bb.l, label %mi_arena_try_purge.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ai = cmpxchg ptr %i.ae, i64 %i.af, i64 0 acq_rel acquire, align 8 ; 0 uses
  %i.aj = getelementptr i8, ptr %i.x, i64 48      ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !401 ; 2 uses
  %.not99.i = icmp eq i64 %i.ak, 0
  br i1 %.not99.i, label %mi_arena_try_purge.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.al = getelementptr i8, ptr %i.x, i64 136
  br label %bb.m

._crit_edge.i:                                    ; preds = %.loopexit.i
  br i1 %.4.i, label %mi_arena_try_purge.exit, label %bb.v

bb.m:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %i.am = phi i64 [ %i.ak, %.lr.ph.i ], [ %i.cr, %.loopexit.i ]
  %.05896.i = phi i1 [ false, %.lr.ph.i ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %.06295.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cs, %.loopexit.i ] ; 5 uses
  %.06394.i = phi i1 [ true, %.lr.ph.i ], [ %.4.i, %.loopexit.i ] ; 2 uses
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !408
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %.06295.i
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %.loopexit.i, label %.preheader82.i

.preheader82.i:                                   ; preds = %bb.m
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
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.preheader.i
  %.05586.i = phi i64 [ 0, %.preheader.i ], [ %i.ax, %bb.o ] ; 4 uses
  %i.au = add nuw nsw i64 %.05586.i, %.05792.i
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.av, %.06090.i
  %.not70.i = icmp eq i64 %i.aw, 0
  br i1 %.not70.i, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = add nuw nsw i64 %.05586.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %i.at
  br i1 %exitcond.not.i, label %mi_bitmap_mask_.exit.i.i.preheader, label %bb.n, !llvm.loop !860

.critedge.i:                                      ; preds = %bb.n
  %.not7187.i = icmp eq i64 %.05586.i, 0
  br i1 %.not7187.i, label %.critedge74.i, label %mi_bitmap_mask_.exit.i.i.preheader

mi_bitmap_mask_.exit.i.i.preheader:               ; preds = %bb.o, %.critedge.i
  %.15688.i.ph = phi i64 [ %.05586.i, %.critedge.i ], [ %i.at, %bb.o ]
  br label %mi_bitmap_mask_.exit.i.i

mi_bitmap_mask_.exit.i.i:                         ; preds = %mi_bitmap_mask_.exit.i.i.preheader, %_mi_bitmap_try_claim.exit.i
  %.15688.i = phi i64 [ %i.bh, %_mi_bitmap_try_claim.exit.i ], [ %.15688.i.ph, %mi_bitmap_mask_.exit.i.i.preheader ] ; 6 uses
  %i.ay = icmp ugt i64 %.15688.i, 63              ; 2 uses
  %notmask.i.i.i = shl nsw i64 -1, %.15688.i
  %i.az = xor i64 %notmask.i.i.i, -1
  %i.ba = shl i64 %i.az, %.05792.i                ; 2 uses
  %.0.i.i.i = select i1 %i.ay, i64 -1, i64 %i.ba  ; 2 uses
  %i.bb = load atomic i64, ptr %i.as monotonic, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %mi_bitmap_mask_.exit.i.i
  %.016.i.i = phi i64 [ %i.bb, %mi_bitmap_mask_.exit.i.i ], [ %i.bg, %bb.q ] ; 3 uses
  %i.bc = and i64 %.016.i.i, %.0.i.i.i
  %.not.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i, label %bb.q, label %_mi_bitmap_try_claim.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bd = or i64 %.016.i.i, %.0.i.i.i
  %i.be = cmpxchg ptr %i.as, i64 %.016.i.i, i64 %i.bd acq_rel acquire, align 8 ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  %i.bg = extractvalue { i64, i1 } %i.be, 0
  br i1 %i.bf, label %bb.r, label %bb.p, !llvm.loop !13

_mi_bitmap_try_claim.exit.i:                      ; preds = %bb.p
  %i.bh = add nsw i64 %.15688.i, -1               ; 2 uses
  %.not71.i = icmp eq i64 %i.bh, 0
  br i1 %.not71.i, label %.critedge74.i, label %mi_bitmap_mask_.exit.i.i, !llvm.loop !861

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %i.ab, align 8, !tbaa !408
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %.06295.i
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 3 uses
  %i.bl = add i64 %.15688.i, %.05792.i            ; 4 uses
  %i.bm = icmp ult i64 %.05792.i, %i.bl
  br i1 %i.bm, label %.preheader.i.i.preheader, label %mi_arena_purge_range.exit.thread.i

.preheader.i.i.preheader:                         ; preds = %bb.r
  %broadcast.splatinsert66 = insertelement <16 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat67 = shufflevector <16 x i64> %broadcast.splatinsert66, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.u
  %.02330.i.i = phi i1 [ %.2.i.i, %bb.u ], [ false, %.preheader.i.i.preheader ] ; 2 uses
  %.02429.i.i = phi i64 [ %i.ci, %bb.u ], [ %.05792.i, %.preheader.i.i.preheader ] ; 7 uses
  %i.bn = add i64 %.02429.i.i, 1
  %i.bo = call i64 @llvm.umax.i64(i64 %i.bl, i64 %i.bn)
  %i.bp = sub i64 %i.bo, %.02429.i.i              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bp, 80
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
  %i.bs = and <16 x i64> %i.br, %broadcast.splat67
  %.fr = freeze <16 x i64> %i.bs
  %i.bt = icmp eq <16 x i64> %.fr, zeroinitializer ; 2 uses
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %.not68 = icmp eq i16 %i.bu, 0
  br i1 %.not68, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !862

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

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.s
  %.028.i.i = phi i64 [ %i.cb, %bb.s ], [ %.028.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.by = add i64 %.028.i.i, %.02429.i.i
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = and i64 %i.bz, %i.bk
  %.not.i75.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i75.i, label %.critedge.i.i, label %bb.s

bb.s:                                             ; preds = %scalar.ph
  %i.cb = add i64 %.028.i.i, 1                    ; 3 uses
  %i.cc = add i64 %i.cb, %.02429.i.i
  %i.cd = icmp ult i64 %i.cc, %i.bl
  br i1 %i.cd, label %scalar.ph, label %.critedge.i.i, !llvm.loop !863

.critedge.i.i:                                    ; preds = %bb.s, %scalar.ph, %vector.early.exit, %middle.block
  %.0.lcssa.i.i = phi i64 [ %n.vec, %middle.block ], [ %i.bx, %vector.early.exit ], [ %i.cb, %bb.s ], [ %.028.i.i, %scalar.ph ] ; 4 uses
  %.not27.i.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not27.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge.i.i
  %i.ce = add i64 %.02429.i.i, %i.aq
  call fastcc void @mi_arena_purge(ptr noundef nonnull %i.x, i64 noundef %i.ce, i64 noundef %.0.lcssa.i.i, ptr noundef %2)
  %i.cf = icmp eq i64 %.0.lcssa.i.i, %.15688.i
  %spec.select.i.i = select i1 %i.cf, i1 true, i1 %.02330.i.i
  %i.cg = freeze i1 %spec.select.i.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.critedge.i.i
  %.2.i.i = phi i1 [ %i.cg, %bb.t ], [ %.02330.i.i, %.critedge.i.i ] ; 2 uses
  %i.ch = add nuw i64 %.02429.i.i, 1
  %i.ci = add i64 %i.ch, %.0.lcssa.i.i            ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.bl
  br i1 %i.cj, label %.preheader.i.i, label %mi_arena_purge_range.exit.i, !llvm.loop !864

mi_arena_purge_range.exit.i:                      ; preds = %bb.u
  %spec.select.i = select i1 %.2.i.i, i1 %.16489.i, i1 false
  br label %mi_arena_purge_range.exit.thread.i

mi_arena_purge_range.exit.thread.i:               ; preds = %mi_arena_purge_range.exit.i, %bb.r
  %i.ck = phi i1 [ false, %bb.r ], [ %spec.select.i, %mi_arena_purge_range.exit.i ]
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
  br i1 %i.cq, label %.preheader.i, label %.loopexit.loopexit.i, !llvm.loop !865

.loopexit.loopexit.i:                             ; preds = %.critedge74.i
  %.pre.i = load i64, ptr %i.aj, align 8, !tbaa !401
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.m
  %i.cr = phi i64 [ %i.am, %bb.m ], [ %.pre.i, %.loopexit.loopexit.i ] ; 2 uses
  %.4.i = phi i1 [ %.06394.i, %bb.m ], [ %.366.i, %.loopexit.loopexit.i ] ; 2 uses
  %.3.i = phi i1 [ %.05896.i, %bb.m ], [ %.2.i, %.loopexit.loopexit.i ] ; 3 uses
  %i.cs = add nuw i64 %.06295.i, 1                ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  br i1 %i.ct, label %bb.m, label %._crit_edge.i, !llvm.loop !866

bb.v:                                             ; preds = %._crit_edge.i
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 488), align 8, !tbaa !386
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.w, label %mi_option_get.exit.i.i, !prof !314

bb.w:                                             ; preds = %bb.v
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 480)), !inline_history !387
  br label %mi_option_get.exit.i.i

mi_option_get.exit.i.i:                           ; preds = %bb.w, %bb.v
  %i.cw = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 480), align 16, !tbaa !388
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 776), align 8, !tbaa !386
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.x, label %mi_arena_purge_delay.exit.i, !prof !314

bb.x:                                             ; preds = %mi_option_get.exit.i.i
  call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 768)), !inline_history !387
  br label %mi_arena_purge_delay.exit.i

mi_arena_purge_delay.exit.i:                      ; preds = %bb.x, %mi_option_get.exit.i.i
  %i.cz = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 768), align 16, !tbaa !388
  %i.da = mul i64 %i.cz, %i.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  %i.db = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #52 ; 0 uses
  %i.dc = load i64, ptr %3, align 8, !tbaa !406
  %i.dd = mul i64 %i.dc, 1000
  %i.de = load i64, ptr %i.v, align 8, !tbaa !407
  %i.df = sdiv i64 %i.de, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  %i.dg = add i64 %i.dd, %i.da
  %i.dh = add i64 %i.dg, %i.df
  %i.di = cmpxchg ptr %i.ae, i64 0, i64 %i.dh acq_rel acquire, align 8 ; 0 uses
  br i1 %.3.i, label %bb.y, label %mi_arena_try_purge.exit.thread

mi_arena_try_purge.exit:                          ; preds = %._crit_edge.i
  br i1 %.3.i, label %bb.y, label %mi_arena_try_purge.exit.thread

bb.y:                                             ; preds = %mi_arena_purge_delay.exit.i, %mi_arena_try_purge.exit
  %i.dj = icmp ult i64 %.02236, 2
  br i1 %i.dj, label %.critedge.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = add i64 %.02236, -1
  br label %mi_arena_try_purge.exit.thread

mi_arena_try_purge.exit.thread:                   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %mi_arena_purge_delay.exit.i, %mi_arena_try_purge.exit, %bb.z, %bb.h
  %.2 = phi i64 [ %.02236, %bb.h ], [ %i.dk, %bb.z ], [ %.02236, %mi_arena_try_purge.exit ], [ %.02236, %mi_arena_purge_delay.exit.i ], [ %.02236, %bb.i ], [ %.02236, %bb.j ], [ %.02236, %bb.k ], [ %.02236, %bb.l ]
  %i.dl = add nuw i64 %.02137, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, %i.j
  br i1 %exitcond.not, label %.critedge.critedge, label %bb.h, !llvm.loop !867

.critedge.critedge:                               ; preds = %bb.y, %mi_arena_try_purge.exit.thread
  store atomic i64 0, ptr @mi_arenas_try_purge.purge_guard release, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.critedge, %bb.f, %bb.a, %mi_arena_purge_delay.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_arena_collect(i1 noundef zeroext %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #2 !guid !869 {
bb.a:
  tail call fastcc void @mi_arenas_try_purge(i1 noundef zeroext %0, i1 noundef zeroext true, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_arena_unsafe_destroy_all(ptr nofree noundef captures(address) %0) local_unnamed_addr #2 !guid !871 {
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
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !379
  %.not24.i = icmp eq ptr %i.e, null
  br i1 %.not24.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !872
  %i.h = add i32 %i.g, -3
  %i.i = icmp ult i32 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.e

end_hunk_0
begin_hunk_1_@_PyMem_MiRawMalloc:bb.a
  %i.l = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0), !inline_history !344
  br label %mi_malloc.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.h, i64 24       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !315
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !315
  %i.p = load atomic i64, ptr %i.j monotonic, align 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8, !tbaa !313
  br label %mi_malloc.exit

bb.e:                                             ; preds = %bb.a
  %i.r = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %1, i1 noundef zeroext false, i64 noundef 0)
  br label %mi_malloc.exit

mi_malloc.exit:                                   ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.l, %bb.c ], [ %i.j, %bb.d ]
  ret ptr %.0.i.i.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_MiRawCalloc(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #2 !guid !1172 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348  ; 3 uses
  %.not.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_calloc.exit, label %bb.c, !prof !314

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp ult i64 %storemerge.i.ph.i.i, 1025
  br i1 %i.f, label %bb.d, label %bb.i, !prof !349

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %storemerge.i.ph.i.i, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !347  ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !313  ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f, !prof !314

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext true, i64 noundef 0), !inline_history !344
  br label %mi_calloc.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.k, i64 24       ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !315
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !315
  %i.s = load atomic i64, ptr %i.m monotonic, align 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8, !tbaa !313
  %i.u = getelementptr i8, ptr %i.k, i64 15
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i64 0, ptr %i.m seq_cst, align 8, !tbaa !317
  br label %mi_calloc.exit

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.k, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !318
  %i.z = zext i32 %i.y to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.z, i1 false)
  br label %mi_calloc.exit

bb.i:                                             ; preds = %bb.c
  %i.aa = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext true, i64 noundef 0)
  br label %mi_calloc.exit

mi_calloc.exit:                                   ; preds = %bb.b, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i.i = phi ptr [ null, %bb.b ], [ %i.aa, %bb.i ], [ %i.o, %bb.e ], [ %i.m, %bb.g ], [ %i.m, %bb.h ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_MiRawRealloc(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2) #2 !guid !1173 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348
  %i.c = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden void @_PyMem_MiRawFree(ptr nofree readnone captures(none) %0, ptr noundef %1) #2 !guid !1174 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %mi_free.exit, label %bb.b, !prof !314

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #57, !srcloc !352
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr i8, ptr %i.e, i64 256
  %i.i = load atomic i64, ptr %i.h monotonic, align 256
  %i.j = icmp eq i64 %i.i, %i.g
  %i.k = sub i64 %i.b, %i.d
  %i.l = lshr i64 %i.k, 16
  %i.m = getelementptr i8, ptr %i.e, i64 264
  %i.n = getelementptr [80 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !353
  %i.q = zext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r     ; 6 uses
  br i1 %i.j, label %bb.c, label %bb.g, !prof !349

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.s, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !354
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f, !prof !349

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.s, i64 32       ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !351
  %i.y = ptrtoint ptr %i.x to i64
  store atomic i64 %i.y, ptr %1 monotonic, align 8
  store ptr %1, ptr %i.w, align 8, !tbaa !351
  %i.z = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !315
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !315
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %mi_free.exit, !prof !314

bb.e:                                             ; preds = %bb.d
  tail call void @_mi_page_retire(ptr noundef %i.s)
  br label %mi_free.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext true, ptr noundef nonnull %1)
  br label %mi_free.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext false, ptr noundef nonnull %1)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_DefaultRawMalloc(i64 noundef %0) local_unnamed_addr #37 !guid !1175 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  %i.a = tail call noalias noundef ptr @malloc(i64 noundef %spec.store.select.i) #62
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_DefaultRawCalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !guid !1176 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = icmp eq i64 %1, 0
  %or.cond.i = or i1 %i.a, %i.b                   ; 2 uses
  %spec.select.i = select i1 %or.cond.i, i64 1, i64 %0
  %spec.select8.i = select i1 %or.cond.i, i64 1, i64 %1
  %i.c = tail call noalias noundef ptr @calloc(i64 noundef %spec.select.i, i64 noundef %spec.select8.i) #63
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_DefaultRawRealloc(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #40 !guid !1177 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %1, i64 1)
  %i.a = tail call noalias noundef ptr @realloc(ptr noundef %0, i64 noundef %spec.store.select.i) #64
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_PyMem_DefaultRawFree(ptr noundef captures(none) %0) local_unnamed_addr #42 !guid !1178 {
bb.a:
  tail call void @free(ptr noundef %0) #52
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_PyMem_DefaultRawWcsdup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #43 !guid !1179 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #58 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 2305843009213693950
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = add nuw nsw i64 %i.c, 4                  ; 2 uses
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #62 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.e, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_ArenaAlloc(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #2 !guid !1180 {
bb.a:
  %i.a = tail call ptr @mmap64(ptr noundef null, i64 noundef %1, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #52 ; 4 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_PyAnnotateMemoryMap.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_Py_GetConfig() #52
  %i.d = getelementptr i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1181
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_PyAnnotateMemoryMap.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = tail call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, i64 noundef %i.f, i64 noundef %1, ptr noundef nonnull @.str.35) #52 ; 0 uses
  br label %_PyAnnotateMemoryMap.exit

_PyAnnotateMemoryMap.exit:                        ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.a, %bb.b ], [ %i.a, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define hidden void @_PyMem_ArenaFree(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 !guid !1182 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @munmap(ptr noundef nonnull %1, i64 noundef %2) #52 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -1, 1) i32 @_PyMem_GetAllocatorName(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #18 !guid !1183 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !354
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.36) #58
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.37) #58
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.38) #58
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.39) #58
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.40) #58
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.41) #58
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.42) #58
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(13) @.str.43) #58
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.sink = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 5, %bb.e ], [ 7, %bb.g ], [ 3, %bb.i ], [ 8, %bb.h ], [ 6, %bb.f ], [ 2, %bb.d ], [ 1, %bb.b ], [ 4, %bb.j ]
  store i32 %.sink, ptr %1, align 4, !tbaa !54
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  %.0 = phi i32 [ -1, %bb.j ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyMem_SetupAllocators(i32 noundef %0) local_unnamed_addr #2 !guid !1184 {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #52
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  switch i32 %0, label %set_up_allocators_unlocked.exit [
    i32 0, label %bb.g
    i32 1, label %bb.c
    i32 2, label %set_default_allocator_unlocked.exit12.i
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.e
    i32 8, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.f
  ]

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !337
  store ptr @_PyMem_RawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !337
  store ptr @_PyMem_RawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !337
  store ptr @_PyMem_RawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !337
  store ptr @_PyMem_RawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !337
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !337
  store ptr @_PyObject_Malloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !337
  store ptr @_PyObject_Calloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !337
  store ptr @_PyObject_Realloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !337
  store ptr @_PyObject_Free, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !337
  br label %.sink.split.i

set_default_allocator_unlocked.exit12.i:          ; preds = %_PyMutex_Lock.exit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !337
  store ptr @_PyMem_RawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !337
  store ptr @_PyMem_RawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !337
  store ptr @_PyMem_RawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !337
  store ptr @_PyMem_RawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !337
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1072), ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), i64 40, i1 false), !tbaa.struct !477
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1064), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !337
  store ptr @_PyMem_DebugRawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !337
  store ptr @_PyMem_DebugRawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !337
  store ptr @_PyMem_DebugRawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !337
  store ptr @_PyMem_DebugRawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !337
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !337
  store ptr @_PyObject_Malloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !337
  store ptr @_PyObject_Calloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !337
  store ptr @_PyObject_Realloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !337
  store ptr @_PyObject_Free, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !337
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1120), ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), i64 40, i1 false), !tbaa.struct !477
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1112), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !337
  store ptr @_PyMem_DebugMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !337
  store ptr @_PyMem_DebugCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !337
  store ptr @_PyMem_DebugRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !337
  store ptr @_PyMem_DebugFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !337
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), align 8, !tbaa !337
  store ptr @_PyObject_Malloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1032), align 8, !tbaa !337
  store ptr @_PyObject_Calloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1040), align 8, !tbaa !337
  store ptr @_PyObject_Realloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1048), align 8, !tbaa !337
  store ptr @_PyObject_Free, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1056), align 8, !tbaa !337
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1168), ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), i64 40, i1 false), !tbaa.struct !477
  br label %.sink.split.i

bb.d:                                             ; preds = %_PyMutex_Lock.exit, %_PyMutex_Lock.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false), !tbaa.struct !477
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.pymalloc, i64 40, i1 false), !tbaa.struct !477
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.pymalloc, i64 40, i1 false), !tbaa.struct !477
  %i.c = icmp eq i32 %0, 6                        ; 2 uses
end_hunk_1
begin_hunk_2_@PyObject_GetArenaAllocator
define dso_local void @PyObject_GetArenaAllocator(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #2 !guid !1190 {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #52
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1216), i64 24, i1 false), !tbaa.struct !645
  %i.c = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %_PyMutex_Unlock.exit, label %bb.c

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #52
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %_PyMutex_Lock.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PyObject_SetArenaAllocator(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 !guid !1191 {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #52
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1216), ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !645
  %i.c = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %_PyMutex_Unlock.exit, label %bb.c

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #52
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %_PyMutex_Lock.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyObject_VirtualAlloc(i64 noundef %0) local_unnamed_addr #2 !guid !1192 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1224), align 8, !tbaa !646
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1216), align 8, !tbaa !647
  %i.c = tail call ptr %i.a(ptr noundef %i.b, i64 noundef %0) #52
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden void @_PyObject_VirtualFree(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 !guid !1193 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1232), align 8, !tbaa !648
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1216), align 8, !tbaa !647
  tail call void %i.a(ptr noundef %i.b, ptr noundef %0, i64 noundef %1) #52
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyMem_RawMalloc(i64 noundef %0) local_unnamed_addr #2 !guid !1194 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !642
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !649
  %i.d = tail call ptr %i.b(ptr noundef %i.c, i64 noundef %0) #52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyMem_RawCalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 !guid !1195 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = udiv i64 9223372036854775807, %1
  %i.b = icmp ugt i64 %0, %i.a
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !650
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !649
  %i.e = tail call ptr %i.c(ptr noundef %i.d, i64 noundef %0, i64 noundef %1) #52
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyMem_RawRealloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 !guid !1196 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !651
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !649
  %i.d = tail call ptr %i.b(ptr noundef %i.c, ptr noundef %0, i64 noundef %1) #52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @PyMem_RawFree(ptr noundef %0) local_unnamed_addr #2 !guid !1197 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !652
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !649
  tail call void %i.a(ptr noundef %i.b, ptr noundef %0) #52
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyMem_Malloc(i64 noundef %0) local_unnamed_addr #2 !guid !1198 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !643
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !653
  %i.d = tail call ptr %i.b(ptr noundef %i.c, i64 noundef %0) #52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyMem_Calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 !guid !1199 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = udiv i64 9223372036854775807, %1
  %i.b = icmp ugt i64 %0, %i.a
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !1200
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !653
  %i.e = tail call ptr %i.c(ptr noundef %i.d, i64 noundef %0, i64 noundef %1) #52
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyMem_Realloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 !guid !1201 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !1202
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !653
  %i.d = tail call ptr %i.b(ptr noundef %i.c, ptr noundef %0, i64 noundef %1) #52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @PyMem_Free(ptr noundef %0) local_unnamed_addr #2 !guid !1203 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !654
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !653
  tail call void %i.a(ptr noundef %i.b, ptr noundef %0) #52
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_RawWcsdup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 !guid !1204 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #58 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 2305843009213693950
  br i1 %i.b, label %PyMem_RawMalloc.exit.thread, label %PyMem_RawMalloc.exit

PyMem_RawMalloc.exit:                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = add nuw nsw i64 %i.c, 4                  ; 2 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !642
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !649
  %i.g = tail call ptr %i.e(ptr noundef %i.f, i64 noundef %i.d) #52, !inline_history !655 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %PyMem_RawMalloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %PyMem_RawMalloc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.g, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.d, i1 false)
  br label %PyMem_RawMalloc.exit.thread

PyMem_RawMalloc.exit.thread:                      ; preds = %bb.b, %PyMem_RawMalloc.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.g, %bb.b ], [ null, %PyMem_RawMalloc.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_RawStrdup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 !guid !1205 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #58
  %i.b = add i64 %i.a, 1                          ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %PyMem_RawMalloc.exit.thread, label %PyMem_RawMalloc.exit

PyMem_RawMalloc.exit:                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !642
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !649
  %i.f = tail call ptr %i.d(ptr noundef %i.e, i64 noundef %i.b) #52, !inline_history !655 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %PyMem_RawMalloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %PyMem_RawMalloc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %0, i64 %i.b, i1 false)
  br label %PyMem_RawMalloc.exit.thread

PyMem_RawMalloc.exit.thread:                      ; preds = %bb.a, %PyMem_RawMalloc.exit, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %PyMem_RawMalloc.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyMem_Strdup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 !guid !1206 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #58
  %i.b = add i64 %i.a, 1                          ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %PyMem_Malloc.exit.thread, label %PyMem_Malloc.exit

PyMem_Malloc.exit:                                ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !643
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !653
  %i.f = tail call ptr %i.d(ptr noundef %i.e, i64 noundef %i.b) #52, !inline_history !1207 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %PyMem_Malloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %PyMem_Malloc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %0, i64 %i.b, i1 false)
  br label %PyMem_Malloc.exit.thread

PyMem_Malloc.exit.thread:                         ; preds = %bb.a, %PyMem_Malloc.exit, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %PyMem_Malloc.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @_PyMem_FreeDelayed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 !guid !1209 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %free_delayed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !354  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i.i, label %bb.d, label %free_delayed.exit

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !354
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %free_delayed.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #52
  br label %free_delayed.exit

bb.f:                                             ; preds = %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !654
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !653
  tail call void %i.h(ptr noundef %i.i, ptr noundef nonnull %0) #52, !inline_history !1208
  br label %free_delayed.exit

free_delayed.exit:                                ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_PyMem_ProcessDelayed(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #2 !guid !1210 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !656  ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 1024
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !657
  %i.e = getelementptr i8, ptr %i.d, i64 48
  store i8 0, ptr %i.e, align 8, !tbaa !1213
  %i.f = getelementptr i8, ptr %0, i64 1032
  tail call fastcc void @process_queue(ptr noundef %i.f, ptr noundef %0, i1 noundef zeroext true)
  %i.g = getelementptr i8, ptr %i.b, i64 80000    ; 2 uses
  %i.h = load atomic i32, ptr %i.g monotonic, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %maybe_process_interp_queue.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 80004    ; 3 uses
  %i.j = tail call i32 @_PyMutex_LockTimed(ptr noundef %i.i, i64 noundef 0, i32 noundef 0) #52
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %maybe_process_interp_queue.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.b, i64 80008    ; 3 uses
  tail call fastcc void @process_queue(ptr noundef %i.l, ptr noundef nonnull readonly %0, i1 noundef zeroext false)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !658
  %i.n = icmp ne ptr %i.m, %i.l
  %i.o = zext i1 %i.n to i32
  store atomic i32 %i.o, ptr %i.g monotonic, align 8
  %i.p = cmpxchg ptr %i.i, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.q = extractvalue { i8, i1 } %i.p, 1
  br i1 %i.q, label %maybe_process_interp_queue.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMutex_Unlock(ptr noundef %i.i) #52
  br label %maybe_process_interp_queue.exit

maybe_process_interp_queue.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process_queue(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #2 !guid !1215 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !658    ; 2 uses
  %.not4 = icmp eq ptr %i.a, %0
  br i1 %.not4, label %free_work_item.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 1024
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %free_work_item.exit
  %i.c = phi ptr [ %i.a, %.lr.ph ], [ %i.ag, %free_work_item.exit ] ; 7 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16       ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !660  ; 2 uses
  %i.f = getelementptr i8, ptr %i.c, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !661
  %i.h = icmp slt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 32
  %i.j = getelementptr [16 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !657
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1216
  %i.n = tail call zeroext i1 @_Py_qsbr_poll(ptr noundef %i.k, i64 noundef %i.m) #52
  br i1 %i.n, label %bb.d, label %free_work_item.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.d, align 8, !tbaa !660
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.d, align 8, !tbaa !660
  %i.q = load i64, ptr %i.j, align 8, !tbaa !663  ; 3 uses
  %i.r = and i64 %i.q, 1
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i64 %i.q, -1
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !354  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i.i, label %bb.f, label %free_work_item.exit, !llvm.loop !1214

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !354
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %free_work_item.exit, !llvm.loop !1214

end_hunk_2
