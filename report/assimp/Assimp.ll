inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
  %.lhs.trunc4 = trunc nuw i32 %i.ba to i16
  %i.bb = udiv i16 %.lhs.trunc4, %.rhs.trunc
  %i.bc = trunc i16 %i.bb to i8
  store i8 %i.bc, ptr %i.aj, align 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1
  store i8 %i.be, ptr %.14711, align 1
  store i8 %i.ah, ptr %i.bd, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %.14711, i64 4
  %i.bg = add nuw i32 %.112, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bg, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !188

.lr.ph15:                                         ; preds = %.lr.ph15, %.lr.ph15.preheader.new
  %.24813 = phi ptr [ %.24.val, %.lr.ph15.preheader.new ], [ %i.bw, %.lr.ph15 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.bh = load i8, ptr %.24813, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1
  store i8 %i.bj, ptr %.24813, align 1
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1
  store i8 %i.bn, ptr %i.bk, align 1
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1
  store i8 %i.br, ptr %i.bo, align 1
  store i8 %i.bp, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1
  store i8 %i.bv, ptr %i.bs, align 1
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15, !llvm.loop !189

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.ca, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bx = load i8, ptr %.04616.epil, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1
  store i8 %i.bz, ptr %.04616.epil, align 1
  store i8 %i.bx, ptr %i.by, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !190

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.bw, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.ce, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.cb = load i8, ptr %.24813.epil, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1
  store i8 %i.cd, ptr %.24813.epil, align 1
  store i8 %i.cb, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !191

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #30 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.b
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit.thread, %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.v, align 8
  br label %bb.ak

bb.e:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.x, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.f
  %i.y = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.y
  br i1 %.not23.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.f
  %i.z = mul i32 %i.g, %4                         ; 18 uses
  %i.aa = or i32 %i.z, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.aa, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.g:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.ab = icmp eq i32 %6, 0
  br i1 %i.ab, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.g
  %i.ac = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.z, %i.ac
  %i.ad = mul i32 %i.z, %6                        ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2147483640
  %or.cond = or i1 %.not.i, %i.ae
  br i1 %or.cond, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit.thread:       ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %bb.e, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.af, align 8
  br label %bb.ak

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.g, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 13 uses
  br i1 %i.k, label %_ZL21stbi__mad2sizes_validiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i299

_ZL21stbi__mul2sizes_validii.exit.i299:           ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  %i.ai = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %.not10.i, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %_ZL21stbi__mad2sizes_validiii.exit

_ZL21stbi__mad2sizes_validiii.exit:               ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, %_ZL21stbi__mul2sizes_validii.exit.i299
  %i.aj = mul nuw nsw i32 %i.ah, %5
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not330, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %bb.h

_ZL21stbi__mad2sizes_validiii.exit.thread:        ; preds = %_ZL21stbi__mul2sizes_validii.exit.i299, %_ZL21stbi__mad2sizes_validiii.exit
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.al, align 8
  br label %bb.ak

bb.h:                                             ; preds = %_ZL21stbi__mad2sizes_validiii.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.ap, align 8
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ar) #50 ; 5 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.at, align 8
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.au = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.au, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.au, i32 %i.ah, i32 %4
  %i.av = zext nneg i32 %i.ah to i64
  %i.aw = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.ax = sext i32 %spec.select to i64            ; 40 uses
  %i.ay = icmp slt i32 %spec.select, %i.aw        ; 4 uses
  %i.az = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.ba = icmp sgt i32 %i.aw, 0
  %i.bb = sext i32 %i.aw to i64                   ; 13 uses
  %i.bc = icmp eq i32 %6, 8
  %i.bd = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.be = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.z, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.bf = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bg = zext i32 %.030.i305 to i64              ; 17 uses
  %i.bh = zext i32 %i.z to i64
  %i.bi = icmp eq i32 %7, 0
  %i.bj = sext i32 %6 to i64
  %i.bk = getelementptr inbounds i8, ptr @_ZL23stbi__depth_scale_table, i64 %i.bj
  %wide.trip.count460 = zext i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.aw to i64     ; 8 uses
  %i.bl = sub nsw i64 %i.bb, %i.ax                ; 28 uses
  %i.bm = add i32 %i.z, -1                        ; 3 uses
  %i.bn = add nuw nsw i64 %i.bg, 1
  %min.iters.check711 = icmp ult i64 %i.bl, 8
  %i.bo = add nsw i64 %i.ax, -1
  %diff.check709 = icmp ult i64 %i.bo, 31
  %or.cond750.a = select i1 %min.iters.check711, i1 true, i1 %diff.check709
  %min.iters.check713 = icmp ult i64 %i.bl, 32
  %n.mod.vf715 = and i64 %i.bl, 24
  %n.vec716 = and i64 %i.bl, -32                  ; 4 uses
  %i.bp = add nsw i64 %n.vec716, %i.ax
  %cmp.n725 = icmp eq i64 %i.bl, %n.vec716
  %min.epilog.iters.check731 = icmp eq i64 %n.mod.vf715, 0
  %n.vec734 = and i64 %i.bl, -8                   ; 3 uses
  %i.bq = add nsw i64 %n.vec734, %i.ax
  %cmp.n741 = icmp eq i64 %i.bl, %n.vec734
  %i.br = add nsw i64 %i.bb, -1
  %min.iters.check677 = icmp ult i32 %spec.select, 4
  %min.iters.check679 = icmp ult i32 %spec.select, 32
  %n.mod.vf681 = and i64 %wide.trip.count424, 28
  %n.vec682 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n691 = icmp eq i64 %n.vec682, %wide.trip.count424
  %min.epilog.iters.check696 = icmp eq i64 %n.mod.vf681, 0
  %n.vec699 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n706 = icmp eq i64 %n.vec699, %wide.trip.count424
  %xtraiter764 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod765.not = icmp eq i64 %xtraiter764, 0
  %min.iters.check640 = icmp ult i64 %i.bl, 4
  %i.bs = add nsw i64 %i.ax, -1
  %diff.check634 = icmp ult i64 %i.bs, 15
  %min.iters.check642 = icmp ult i64 %i.bl, 16
  %n.mod.vf644 = and i64 %i.bl, 12
  %n.vec645 = and i64 %i.bl, -16                  ; 4 uses
  %i.bt = add nsw i64 %n.vec645, %i.ax
  %cmp.n654 = icmp eq i64 %i.bl, %n.vec645
  %min.epilog.iters.check660 = icmp eq i64 %n.mod.vf644, 0
  %n.vec663 = and i64 %i.bl, -4                   ; 3 uses
  %i.bu = add nsw i64 %n.vec663, %i.ax
  %cmp.n672 = icmp eq i64 %i.bl, %n.vec663
  %min.iters.check602 = icmp ult i32 %spec.select, 4
  %min.iters.check604 = icmp ult i32 %spec.select, 32
  %n.mod.vf606 = and i64 %wide.trip.count424, 28
  %n.vec607 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n616 = icmp eq i64 %n.vec607, %wide.trip.count424
  %min.epilog.iters.check621 = icmp eq i64 %n.mod.vf606, 0
  %n.vec624 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n631 = icmp eq i64 %n.vec624, %wide.trip.count424
  %xtraiter766 = and i64 %wide.trip.count424, 1
  %lcmp.mod767.not = icmp eq i64 %xtraiter766, 0
  %i.bv = add nsw i64 %wide.trip.count424, -1
  %min.iters.check567 = icmp ult i64 %i.bl, 4
  %i.bw = add nsw i64 %i.ax, -1
  %diff.check565.a = icmp ult i64 %i.bw, 15
  %min.iters.check569 = icmp ult i64 %i.bl, 16
  %n.mod.vf571 = and i64 %i.bl, 12
  %n.vec572 = and i64 %i.bl, -16                  ; 4 uses
  %i.bx = add nsw i64 %n.vec572, %i.ax
  %cmp.n580 = icmp eq i64 %i.bl, %n.vec572
  %min.epilog.iters.check586 = icmp eq i64 %n.mod.vf571, 0
  %n.vec589 = and i64 %i.bl, -4                   ; 3 uses
  %i.by = add nsw i64 %n.vec589, %i.ax
  %cmp.n597 = icmp eq i64 %i.bl, %n.vec589
  %i.bz = add nsw i64 %i.bb, -1
  %min.iters.check532 = icmp ult i32 %i.aw, 4
  %min.iters.check534 = icmp ult i32 %i.aw, 32
  %n.mod.vf536 = and i64 %wide.trip.count444, 28
  %n.vec537 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n546 = icmp eq i64 %n.vec537, %wide.trip.count444
  %min.epilog.iters.check551 = icmp eq i64 %n.mod.vf536, 0
  %n.vec554 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n561 = icmp eq i64 %n.vec554, %wide.trip.count444
  %xtraiter772 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod773.not = icmp eq i64 %xtraiter772, 0
  %min.iters.check506 = icmp ult i64 %i.bl, 8
  %i.ca = add nsw i64 %i.ax, -1
  %diff.check = icmp ult i64 %i.ca, 31
  %or.cond749.a = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bl, 32
  %n.mod.vf509 = and i64 %i.bl, 24
  %n.vec510 = and i64 %i.bl, -32                  ; 4 uses
  %i.cb = add nsw i64 %n.vec510, %i.ax
  %cmp.n519 = icmp eq i64 %i.bl, %n.vec510
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf509, 0
  %n.vec522 = and i64 %i.bl, -8                   ; 3 uses
  %i.cc = add nsw i64 %n.vec522, %i.ax
  %cmp.n527 = icmp eq i64 %i.bl, %n.vec522
  %i.cd = add nsw i64 %i.bb, -1
  %xtraiter778 = and i32 %4, 1
  %i.ce = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod779.not = icmp eq i32 %xtraiter778, 0
  %lcmp.mod780 = trunc i32 %4 to i1
  %xtraiter781 = and i32 %i.z, 3                  ; 3 uses
  %i.cf = icmp ult i32 %i.z, 4
  %unroll_iter784 = and i32 %i.z, -4
  %lcmp.mod782.not = icmp eq i32 %xtraiter781, 0
  %lcmp.mod783 = icmp ne i32 %xtraiter781, 0
  %i.cg = and i64 %i.bg, 1
  %lcmp.mod787.not.not = icmp eq i64 %i.cg, 0
  %i.ch = shl nuw nsw i64 %i.bg, 2
  %i.ci = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bg, -1
  %i.cj = icmp eq i32 %.030.i305, 0
  %i.ck = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %i.ck, 4294967288              ; 3 uses
  %i.cl = sub nsw i64 %i.bg, %n.vec
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  %xtraiter789 = and i32 %i.z, 1
  %i.cm = icmp eq i32 %i.bm, 0
  %unroll_iter793 = and i32 %i.z, -2
  %lcmp.mod791.not = icmp eq i32 %xtraiter789, 0
  %lcmp.mod792 = trunc i32 %i.z to i1
  %xtraiter795 = and i32 %i.z, 1
  %i.cn = icmp eq i32 %i.bm, 0
  %unroll_iter799 = and i32 %i.z, -2
  %lcmp.mod797.not = icmp eq i32 %xtraiter795, 0
  %lcmp.mod798 = trunc i32 %i.z to i1
  %xtraiter801 = and i32 %i.z, 1
  %i.co = icmp eq i32 %i.bm, 0
  %unroll_iter805 = and i32 %i.z, -2
  %lcmp.mod803.not = icmp eq i32 %xtraiter801, 0
  %lcmp.mod804 = trunc i32 %i.z to i1
  %i.cp = and i64 %i.bg, 1
  %lcmp.mod808.not.not = icmp eq i64 %i.cp, 0
  %i.cq = shl nuw nsw i64 %i.bg, 2
  %i.cr = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bg, -1
  %i.cs = icmp eq i32 %.030.i305, 0
  %xtraiter810 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod811.not = icmp eq i64 %xtraiter810, 0
  %i.ct = icmp ult i32 %.030.i305, 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 9 uses
  %.0237399 = phi ptr [ %1, %.lr.ph400 ], [ %i.rc, %.loopexit ] ; 2 uses
  %i.cu = trunc i64 %indvars.iv457 to i32
  %i.cv = and i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 1
  %i.cx = mul nuw nsw i32 %i.ah, %i.cw
  %i.cy = trunc i64 %indvars.iv457 to i32
  %i.cz = and i32 %i.cy, 1
  %i.da = xor i32 %i.cz, 1
  %i.db = mul nuw nsw i32 %i.ah, %i.da
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dd = trunc i64 %indvars.iv457 to i32
  %i.de = and i32 %i.dd, 1
  %i.df = xor i32 %i.de, 1
  %i.dg = mul nuw nsw i32 %i.ah, %i.df
  %i.dh = trunc i64 %indvars.iv457 to i32
  %i.di = and i32 %i.dh, 1
  %i.dj = xor i32 %i.di, 1
  %i.dk = mul nuw nsw i32 %i.ah, %i.dj
  %i.dl = trunc i64 %indvars.iv457 to i32
  %i.dm = and i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 1
  %i.do = mul nuw nsw i32 %i.ah, %i.dn
  %i.dp = trunc nuw i64 %indvars.iv457 to i32     ; 2 uses
  %i.dq = trunc i64 %indvars.iv457 to i1
  %i.dr = select i1 %i.dq, i64 %i.av, i64 0       ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dr ; 75 uses
  %i.dt = and i32 %i.dp, 1
  %i.du = xor i32 %i.dt, 1
  %i.dv = mul nuw nsw i32 %i.du, %i.ah
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dw ; 30 uses
  %i.dy = load ptr, ptr %i.u, align 8
  %i.dz = mul i32 %i.e, %i.dp
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ea ; 33 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0237399, i64 1 ; 41 uses
  %i.ed = load i8, ptr %.0237399, align 1         ; 3 uses
  %i.ee = icmp ugt i8 %i.ed, 4
  br i1 %i.ee, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ef = icmp eq i64 %indvars.iv457, 0
  br i1 %i.ef, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eg = zext nneg i8 %i.ed to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0257.in = phi i8 [ %i.ei, %bb.o ], [ %i.ed, %bb.n ]
  switch i8 %.0257.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

end_hunk_0
