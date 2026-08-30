Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 119
begin_hunk_0_@stbi__de_iphone:bb.a
  store i8 %i.bq, ptr %i.bn, align 1
  store i8 %i.bo, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.bv, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bs = load i8, ptr %.04616.epil, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1
  store i8 %i.bu, ptr %.04616.epil, align 1
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !202

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.br, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.bz, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.bw = load i8, ptr %.24813.epil, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1
  store i8 %i.by, ptr %.24813.epil, align 1
  store i8 %i.bw, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !203

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__create_png_image_raw(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #9 {
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
  br i1 %or.cond.not.i.i.i, label %bb.b, label %stbi__malloc_mad3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.b
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.a, %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

stbi__malloc_mad3.exit:                           ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.s) #53 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.w, label %stbi__mul2sizes_valid.exit.thread15.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.f
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i

stbi__mul2sizes_valid.exit.thread15.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.f
  %i.y = mul i32 %i.g, %4                         ; 18 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %stbi__mad3sizes_valid.exit.thread

bb.g:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %stbi__mad3sizes_valid.exit._crit_edge, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.g
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond = or i1 %.not.i, %i.ad
  br i1 %or.cond, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit._crit_edge

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15.i, %bb.e, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

stbi__mad3sizes_valid.exit._crit_edge:            ; preds = %bb.g, %stbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %stbi__mul2sizes_valid.exit12.i ], [ 0, %bb.g ]
  %i.ae = add i32 %.pre-phi, 7
  %i.af = lshr i32 %i.ae, 3                       ; 8 uses
  br i1 %i.k, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i299

stbi__mul2sizes_valid.exit.i299:                  ; preds = %stbi__mad3sizes_valid.exit._crit_edge
  %i.ag = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.af, %i.ag
  br i1 %.not10.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %stbi__mad3sizes_valid.exit._crit_edge, %stbi__mul2sizes_valid.exit.i299
  %i.ah = mul nuw nsw i32 %i.af, %5
  %i.ai = xor i32 %i.af, 2147483647
  %.not330 = icmp sgt i32 %i.ah, %i.ai
  br i1 %.not330, label %stbi__mad2sizes_valid.exit.thread, label %bb.h

stbi__mad2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.i299, %stbi__mad2sizes_valid.exit
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.h:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.aj = add nuw nsw i32 %i.af, 1
  %i.ak = mul i32 %i.aj, %5
  %i.al = icmp ult i32 %2, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr @.str.107, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.am = shl nuw nsw i32 %i.af, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.an) #53 ; 5 uses
  %.not283 = icmp eq ptr %i.ao, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.ap, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.ap, i32 %i.af, i32 %4
  %8 = zext nneg i32 %i.af to i64
  %i.aq = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.ar = sext i32 %spec.select to i64            ; 40 uses
  %i.as = icmp slt i32 %spec.select, %i.aq        ; 4 uses
  %i.at = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.au = icmp sgt i32 %i.aq, 0
  %i.av = sext i32 %i.aq to i64                   ; 13 uses
  %i.aw = icmp eq i32 %6, 8
  %i.ax = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.ay = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.y, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.az = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.ba = zext i32 %.030.i305 to i64              ; 17 uses
  %i.bb = zext i32 %i.y to i64
  %i.bc = icmp eq i32 %7, 0
  %i.bd = sext i32 %6 to i64
  %i.be = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %i.bd
  %wide.trip.count460 = zext i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.aq to i64     ; 8 uses
  %i.bf = sub nsw i64 %i.av, %i.ar                ; 28 uses
  %i.bg = add i32 %i.y, -1                        ; 3 uses
  %i.bh = add nuw nsw i64 %i.ba, 1
  %min.iters.check699 = icmp ult i64 %i.bf, 8
  %i.bi = add nsw i64 %i.ar, -1
  %diff.check697 = icmp ult i64 %i.bi, 31
  %or.cond733 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bf, 32
  %i.bj = and i64 %i.bf, 24
  %n.vec703 = and i64 %i.bf, -32                  ; 4 uses
  %i.bk = add nsw i64 %n.vec703, %i.ar
  %cmp.n712 = icmp eq i64 %i.bf, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bj, 0
  %n.vec720 = and i64 %i.bf, -8                   ; 3 uses
  %i.bl = add nsw i64 %n.vec720, %i.ar
  %cmp.n727 = icmp eq i64 %i.bf, %n.vec720
  %i.bm = add nsw i64 %i.av, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.bn = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bn, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter747 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %min.iters.check632 = icmp ult i64 %i.bf, 4
  %i.bo = add nsw i64 %i.ar, -1
  %diff.check626 = icmp ult i64 %i.bo, 15
  %min.iters.check634 = icmp ult i64 %i.bf, 16
  %i.bp = and i64 %i.bf, 12
  %n.vec636 = and i64 %i.bf, -16                  ; 4 uses
  %i.bq = add nsw i64 %n.vec636, %i.ar
  %cmp.n645 = icmp eq i64 %i.bf, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bp, 0
  %n.vec653 = and i64 %i.bf, -4                   ; 3 uses
  %i.br = add nsw i64 %n.vec653, %i.ar
  %cmp.n662 = icmp eq i64 %i.bf, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.bs = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.bs, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter749 = and i64 %wide.trip.count424, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %i.bt = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bf, 4
  %i.bu = add nsw i64 %i.ar, -1
  %diff.check561 = icmp ult i64 %i.bu, 15
  %min.iters.check565 = icmp ult i64 %i.bf, 16
  %i.bv = and i64 %i.bf, 12
  %n.vec567 = and i64 %i.bf, -16                  ; 4 uses
  %i.bw = add nsw i64 %n.vec567, %i.ar
  %cmp.n575 = icmp eq i64 %i.bf, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.bv, 0
  %n.vec583 = and i64 %i.bf, -4                   ; 3 uses
  %i.bx = add nsw i64 %n.vec583, %i.ar
  %cmp.n591 = icmp eq i64 %i.bf, %n.vec583
  %i.by = add nsw i64 %i.av, -1
  %min.iters.check530 = icmp ult i32 %i.aq, 4
  %min.iters.check532 = icmp ult i32 %i.aq, 32
  %i.bz = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.bz, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter755 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %min.iters.check506 = icmp ult i64 %i.bf, 8
  %i.ca = add nsw i64 %i.ar, -1
  %diff.check = icmp ult i64 %i.ca, 31
  %or.cond732 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bf, 32
  %i.cb = and i64 %i.bf, 24
  %n.vec509 = and i64 %i.bf, -32                  ; 4 uses
  %i.cc = add nsw i64 %n.vec509, %i.ar
  %cmp.n518 = icmp eq i64 %i.bf, %n.vec509
  %min.epilog.iters.check = icmp eq i64 %i.cb, 0
  %n.vec520 = and i64 %i.bf, -8                   ; 3 uses
  %i.cd = add nsw i64 %n.vec520, %i.ar
  %cmp.n525 = icmp eq i64 %i.bf, %n.vec520
  %i.ce = add nsw i64 %i.av, -1
  %xtraiter761 = and i32 %4, 1
  %i.cf = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod762.not = icmp eq i32 %xtraiter761, 0
  %lcmp.mod763 = trunc i32 %4 to i1
  %xtraiter764 = and i32 %i.y, 3                  ; 3 uses
  %i.cg = icmp ult i32 %i.y, 4
  %unroll_iter767 = and i32 %i.y, -4
  %lcmp.mod765.not = icmp eq i32 %xtraiter764, 0
  %lcmp.mod766 = icmp ne i32 %xtraiter764, 0
  %i.ch = and i64 %i.ba, 1
  %lcmp.mod770.not.not = icmp eq i64 %i.ch, 0
  %i.ci = shl nuw nsw i64 %i.ba, 2
  %i.cj = mul nuw nsw i64 %i.ba, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.ba, -1
  %i.ck = icmp eq i32 %.030.i305, 0
  %i.cl = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %i.cl, 4294967288              ; 3 uses
  %i.cm = sub nsw i64 %i.ba, %n.vec
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  %xtraiter772 = and i32 %i.y, 1
  %i.cn = icmp eq i32 %i.bg, 0
  %unroll_iter776 = and i32 %i.y, -2
  %lcmp.mod774.not = icmp eq i32 %xtraiter772, 0
  %lcmp.mod775 = trunc i32 %i.y to i1
  %xtraiter778 = and i32 %i.y, 1
  %i.co = icmp eq i32 %i.bg, 0
  %unroll_iter782 = and i32 %i.y, -2
  %lcmp.mod780.not = icmp eq i32 %xtraiter778, 0
  %lcmp.mod781 = trunc i32 %i.y to i1
  %xtraiter784 = and i32 %i.y, 1
  %i.cp = icmp eq i32 %i.bg, 0
  %unroll_iter788 = and i32 %i.y, -2
  %lcmp.mod786.not = icmp eq i32 %xtraiter784, 0
  %lcmp.mod787 = trunc i32 %i.y to i1
  %i.cq = and i64 %i.ba, 1
  %lcmp.mod791.not.not = icmp eq i64 %i.cq, 0
  %i.cr = shl nuw nsw i64 %i.ba, 2
  %i.cs = mul nuw nsw i64 %i.ba, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.ba, -1
  %i.ct = icmp eq i32 %.030.i305, 0
  %xtraiter793 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod794.not = icmp eq i64 %xtraiter793, 0
  %i.cu = icmp ult i32 %.030.i305, 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qe, %.loopexit ] ; 2 uses
  %i.cv = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.cw = trunc i64 %indvars.iv457 to i1
  %i.cx = select i1 %i.cw, i64 %8, i64 0          ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cx ; 75 uses
  %i.cz = and i32 %i.cv, 1
  %i.da = xor i32 %i.cz, 1
  %i.db = mul nuw nsw i32 %i.da, %i.af
  %i.dc = zext nneg i32 %i.db to i64              ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.dc ; 30 uses
  %i.de = load ptr, ptr %i.u, align 8
  %i.df = mul i32 %i.e, %i.cv
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dg ; 33 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dj = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.dk = icmp ugt i8 %i.dj, 4
  br i1 %i.dk, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dl = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dm = zext nneg i8 %i.dj to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.do, %bb.o ], [ %i.dj, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.at, label %iter.check682, label %.preheader354

iter.check682:                                    ; preds = %.preheader356
  %i.dp = sub nsw i64 %i.dc, %i.cx
  %diff.check665 = icmp ugt i64 %i.dp, -32
  %or.cond729 = select i1 %min.iters.check667, i1 true, i1 %diff.check665
  br i1 %or.cond729, label %.lr.ph360.preheader, label %vector.main.loop.iter.check668

vector.main.loop.iter.check668:                   ; preds = %iter.check682
  br i1 %min.iters.check669, label %vec.epilog.ph686, label %vector.body672

vector.body672:                                   ; preds = %vector.main.loop.iter.check668, %vector.body672
  %index673 = phi i64 [ %index.next678, %vector.body672 ], [ 0, %vector.main.loop.iter.check668 ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 %index673 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load674 = load <16 x i8>, ptr %i.dq, align 1
  %wide.load675 = load <16 x i8>, ptr %i.dr, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index673 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load676 = load <16 x i8>, ptr %i.ds, align 1
end_hunk_0
