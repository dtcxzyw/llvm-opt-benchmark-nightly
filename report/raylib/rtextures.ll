Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 119
begin_hunk_0_@stbi__de_iphone:bb.a

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
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !204

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
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !205

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
  %i.m = mul nuw nsw i32 %5, %4                   ; 3 uses
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
  %i.r = mul nuw nsw i32 %i.h, %i.m
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
  %i.bf = zext nneg i32 %i.af to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.aq to i64     ; 8 uses
  %i.bg = sub nsw i64 %i.av, %i.ar                ; 28 uses
  %i.bh = add i32 %i.y, -1                        ; 3 uses
  %i.bi = add nuw nsw i64 %i.ba, 1
  %min.iters.check699 = icmp ult i64 %i.bg, 8
  %i.bj = add nsw i64 %i.ar, -1
  %diff.check697 = icmp ult i64 %i.bj, 31
  %or.cond733 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bg, 32
  %i.bk = and i64 %i.bg, 24
  %n.vec703 = and i64 %i.bg, -32                  ; 4 uses
  %i.bl = add nsw i64 %n.vec703, %i.ar
  %cmp.n712 = icmp eq i64 %i.bg, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bk, 0
  %n.vec720 = and i64 %i.bg, -8                   ; 3 uses
  %i.bm = add nsw i64 %n.vec720, %i.ar
  %cmp.n727 = icmp eq i64 %i.bg, %n.vec720
  %i.bn = add nsw i64 %i.av, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.bo = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bo, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter747 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %min.iters.check632 = icmp ult i64 %i.bg, 4
  %i.bp = add nsw i64 %i.ar, -1
  %diff.check626 = icmp ult i64 %i.bp, 15
  %min.iters.check634 = icmp ult i64 %i.bg, 16
  %i.bq = and i64 %i.bg, 12
  %n.vec636 = and i64 %i.bg, -16                  ; 4 uses
  %i.br = add nsw i64 %n.vec636, %i.ar
  %cmp.n645 = icmp eq i64 %i.bg, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bq, 0
  %n.vec653 = and i64 %i.bg, -4                   ; 3 uses
  %i.bs = add nsw i64 %n.vec653, %i.ar
  %cmp.n662 = icmp eq i64 %i.bg, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.bt = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.bt, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter749 = and i64 %wide.trip.count424, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %i.bu = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bg, 4
  %i.bv = add nsw i64 %i.ar, -1
  %diff.check561 = icmp ult i64 %i.bv, 15
  %min.iters.check565 = icmp ult i64 %i.bg, 16
  %i.bw = and i64 %i.bg, 12
  %n.vec567 = and i64 %i.bg, -16                  ; 4 uses
  %i.bx = add nsw i64 %n.vec567, %i.ar
  %cmp.n575 = icmp eq i64 %i.bg, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.bw, 0
  %n.vec583 = and i64 %i.bg, -4                   ; 3 uses
  %i.by = add nsw i64 %n.vec583, %i.ar
  %cmp.n591 = icmp eq i64 %i.bg, %n.vec583
  %i.bz = add nsw i64 %i.av, -1
  %min.iters.check530 = icmp ult i32 %i.aq, 4
  %min.iters.check532 = icmp ult i32 %i.aq, 32
  %i.ca = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.ca, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter755 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %min.iters.check506 = icmp ult i64 %i.bg, 8
  %i.cb = add nsw i64 %i.ar, -1
  %diff.check = icmp ult i64 %i.cb, 31
  %or.cond732 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bg, 32
  %i.cc = and i64 %i.bg, 24
  %n.vec509 = and i64 %i.bg, -32                  ; 4 uses
  %i.cd = add nsw i64 %n.vec509, %i.ar
  %cmp.n518 = icmp eq i64 %i.bg, %n.vec509
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  %n.vec520 = and i64 %i.bg, -8                   ; 3 uses
  %i.ce = add nsw i64 %n.vec520, %i.ar
  %cmp.n525 = icmp eq i64 %i.bg, %n.vec520
  %i.cf = add nsw i64 %i.av, -1
  %xtraiter761 = and i32 %4, 1
  %i.cg = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod762.not = icmp eq i32 %xtraiter761, 0
  %lcmp.mod763 = trunc i32 %4 to i1
  %xtraiter764 = and i32 %i.y, 3                  ; 3 uses
  %i.ch = icmp ult i32 %i.y, 4
  %unroll_iter767 = and i32 %i.y, -4
  %lcmp.mod765.not = icmp eq i32 %xtraiter764, 0
  %lcmp.mod766 = icmp ne i32 %xtraiter764, 0
  %i.ci = and i64 %i.ba, 1
  %lcmp.mod770.not.not = icmp eq i64 %i.ci, 0
  %i.cj = shl nuw nsw i64 %i.ba, 2
  %i.ck = mul nuw nsw i64 %i.ba, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.ba, -1
  %i.cl = icmp eq i32 %.030.i305, 0
  %8 = add nuw nsw i64 %i.ba, 1                   ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %8, 4294967288                 ; 3 uses
  %i.cm = sub nsw i64 %i.ba, %n.vec
  %cmp.n = icmp eq i64 %8, %n.vec
  %xtraiter772 = and i32 %i.y, 1
  %i.cn = icmp eq i32 %i.bh, 0
  %unroll_iter776 = and i32 %i.y, -2
  %lcmp.mod774.not = icmp eq i32 %xtraiter772, 0
  %lcmp.mod775 = trunc i32 %i.y to i1
  %xtraiter778 = and i32 %i.y, 1
  %i.co = icmp eq i32 %i.bh, 0
  %unroll_iter782 = and i32 %i.y, -2
  %lcmp.mod780.not = icmp eq i32 %xtraiter778, 0
  %lcmp.mod781 = trunc i32 %i.y to i1
  %xtraiter784 = and i32 %i.y, 1
  %i.cp = icmp eq i32 %i.bh, 0
  %unroll_iter788 = and i32 %i.y, -2
  %lcmp.mod786.not = icmp eq i32 %xtraiter784, 0
  %lcmp.mod787 = trunc i32 %i.y to i1
  %i.cq = and i64 %i.ba, 1
  %lcmp.mod791.not.not = icmp eq i64 %i.cq, 0
  %i.cr = shl nuw nsw i64 %i.ba, 2
  %i.cs = mul nuw nsw i64 %i.ba, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.ba, -1
  %i.ct = icmp eq i32 %.030.i305, 0
  %xtraiter793 = and i64 %i.bi, 3                 ; 2 uses
  %lcmp.mod794.not = icmp eq i64 %xtraiter793, 0
  %i.cu = icmp ult i32 %.030.i305, 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qe, %.loopexit ] ; 2 uses
  %i.cv = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.cw = trunc i64 %indvars.iv457 to i1
  %i.cx = select i1 %i.cw, i64 %i.bf, i64 0       ; 7 uses
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
  %wide.load677 = load <16 x i8>, ptr %i.dt, align 1
  %i.du = add <16 x i8> %wide.load676, %wide.load674
  %i.dv = add <16 x i8> %wide.load677, %wide.load675
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 %index673 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <16 x i8> %i.du, ptr %i.dw, align 1
  store <16 x i8> %i.dv, ptr %i.dx, align 1
  %index.next678 = add nuw i64 %index673, 32      ; 2 uses
  %i.dy = icmp eq i64 %index.next678, %n.vec671
  br i1 %i.dy, label %middle.block679, label %vector.body672, !llvm.loop !206

middle.block679:                                  ; preds = %vector.body672
  br i1 %cmp.n680, label %.preheader354, label %vec.epilog.iter.check684

vec.epilog.iter.check684:                         ; preds = %middle.block679
  br i1 %min.epilog.iters.check685, label %.lr.ph360.preheader, label %vec.epilog.ph686, !prof !16

vec.epilog.ph686:                                 ; preds = %vector.main.loop.iter.check668, %vec.epilog.iter.check684
  %vec.epilog.resume.val681 = phi i64 [ %n.vec671, %vec.epilog.iter.check684 ], [ 0, %vector.main.loop.iter.check668 ]
  br label %vec.epilog.vector.body688

vec.epilog.vector.body688:                        ; preds = %vec.epilog.vector.body688, %vec.epilog.ph686
  %index689 = phi i64 [ %vec.epilog.resume.val681, %vec.epilog.ph686 ], [ %index.next692, %vec.epilog.vector.body688 ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 %index689
  %wide.load690 = load <4 x i8>, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index689
  %wide.load691 = load <4 x i8>, ptr %i.ea, align 1
  %i.eb = add <4 x i8> %wide.load691, %wide.load690
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cy, i64 %index689
  store <4 x i8> %i.eb, ptr %i.ec, align 1
  %index.next692 = add nuw i64 %index689, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.ed, label %vec.epilog.middle.block693, label %vec.epilog.vector.body688, !llvm.loop !207

vec.epilog.middle.block693:                       ; preds = %vec.epilog.vector.body688
  br i1 %cmp.n694, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check682, %vec.epilog.iter.check684, %vec.epilog.middle.block693
  %indvars.iv421.ph = phi i64 [ 0, %iter.check682 ], [ %n.vec671, %vec.epilog.iter.check684 ], [ %n.vec687, %vec.epilog.middle.block693 ] ; 3 uses
  br i1 %lcmp.mod748.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv421.prol
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv421.prol
  %i.eh = load i8, ptr %i.eg, align 1
  %.narrow286.prol = add i8 %i.eh, %i.ef
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.ei, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter747
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !208

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.ej = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.ek = icmp ugt i64 %i.ej, -4
  br i1 %i.ek, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.at, label %iter.check611, label %.preheader351

iter.check611:                                    ; preds = %.preheader353
  %i.el = sub nsw i64 %i.dc, %i.cx
  %diff.check594 = icmp ugt i64 %i.el, -32
  %or.cond730 = select i1 %min.iters.check596, i1 true, i1 %diff.check594
  br i1 %or.cond730, label %.lr.ph364.preheader, label %vector.main.loop.iter.check597

vector.main.loop.iter.check597:                   ; preds = %iter.check611
  br i1 %min.iters.check598, label %vec.epilog.ph615, label %vector.body601

vector.body601:                                   ; preds = %vector.main.loop.iter.check597, %vector.body601
  %index602 = phi i64 [ %index.next607, %vector.body601 ], [ 0, %vector.main.loop.iter.check597 ] ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.di, i64 %index602 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load603 = load <16 x i8>, ptr %i.em, align 1
  %wide.load604 = load <16 x i8>, ptr %i.en, align 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index602 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load605 = load <16 x i8>, ptr %i.eo, align 1
  %wide.load606 = load <16 x i8>, ptr %i.ep, align 1
  %i.eq = lshr <16 x i8> %wide.load605, splat (i8 1)
  %i.er = lshr <16 x i8> %wide.load606, splat (i8 1)
  %i.es = add <16 x i8> %i.eq, %wide.load603
  %i.et = add <16 x i8> %i.er, %wide.load604
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cy, i64 %index602 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <16 x i8> %i.es, ptr %i.eu, align 1
  store <16 x i8> %i.et, ptr %i.ev, align 1
  %index.next607 = add nuw i64 %index602, 32      ; 2 uses
  %i.ew = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.ew, label %middle.block608, label %vector.body601, !llvm.loop !209

middle.block608:                                  ; preds = %vector.body601
  br i1 %cmp.n609, label %.preheader351, label %vec.epilog.iter.check613

vec.epilog.iter.check613:                         ; preds = %middle.block608
  br i1 %min.epilog.iters.check614, label %.lr.ph364.preheader, label %vec.epilog.ph615, !prof !16

vec.epilog.ph615:                                 ; preds = %vector.main.loop.iter.check597, %vec.epilog.iter.check613
  %vec.epilog.resume.val610 = phi i64 [ %n.vec600, %vec.epilog.iter.check613 ], [ 0, %vector.main.loop.iter.check597 ]
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph615
  %index618 = phi i64 [ %vec.epilog.resume.val610, %vec.epilog.ph615 ], [ %index.next621, %vec.epilog.vector.body617 ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.di, i64 %index618
  %wide.load619 = load <4 x i8>, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index618
  %wide.load620 = load <4 x i8>, ptr %i.ey, align 1
  %i.ez = lshr <4 x i8> %wide.load620, splat (i8 1)
  %i.fa = add <4 x i8> %i.ez, %wide.load619
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cy, i64 %index618
  store <4 x i8> %i.fa, ptr %i.fb, align 1
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.fc, label %vec.epilog.middle.block622, label %vec.epilog.vector.body617, !llvm.loop !210

vec.epilog.middle.block622:                       ; preds = %vec.epilog.vector.body617
  br i1 %cmp.n623, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check611, %vec.epilog.iter.check613, %vec.epilog.middle.block622
  %indvars.iv431.ph = phi i64 [ 0, %iter.check611 ], [ %n.vec600, %vec.epilog.iter.check613 ], [ %n.vec616, %vec.epilog.middle.block622 ] ; 6 uses
  br i1 %lcmp.mod750.not, label %.lr.ph364.prol.loopexit, label %.lr.ph364.prol

.lr.ph364.prol:                                   ; preds = %.lr.ph364.preheader
  %i.fd = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv431.ph
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv431.ph
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = lshr i8 %i.fg, 1
  %.narrow290.prol = add i8 %i.fh, %i.fe
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv431.ph
end_hunk_0
begin_hunk_1_@stbir__calculate_filters:bb.a
  %i.gf = phi i32 [ %.pre.i, %._crit_edge86.i ], [ %.06380.i, %bb.v ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store i32 %.06380.i, ptr %i.gg, align 4
  %i.gh = sub nsw i32 %.06380.i, %i.gf
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.gi
  store float %spec.store.select.i, ptr %i.gj, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.2.i159 = phi i32 [ %i.fq, %bb.t ], [ %.179.i, %bb.w ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i160, label %.loopexit.i, label %bb.s

.loopexit.i:                                      ; preds = %bb.x, %bb.r, %bb.n
  %.3.ph.i = phi i32 [ %.06181.i, %bb.n ], [ %.06181.i, %bb.r ], [ %.2.i159, %bb.x ]
  %i.gk = add i32 %.06380.i, 1                    ; 2 uses
  %exitcond85.not.i = icmp eq i32 %i.gk, %i.cq
  br i1 %exitcond85.not.i, label %stbir__calculate_coefficients_for_gather_downsample.exit, label %bb.n

stbir__calculate_coefficients_for_gather_downsample.exit: ; preds = %bb.p, %.loopexit.i, %bb.m
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gm = load i32, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 116
  tail call fastcc void @stbir__cleanup_gathered_coefficients(i32 noundef %i.gm, ptr noundef %i.gn, ptr noundef %i.a, i32 noundef %.0148, ptr noundef %.0145, ptr noundef %.0142, i32 noundef %.0140)
  %i.go = load i32, ptr %i.q, align 8
  %.not152 = icmp eq i32 %i.go, 0
  br i1 %.not152, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %stbir__calculate_coefficients_for_gather_downsample.exit, %bb.k
  %.1149 = phi i32 [ %.0148, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.cy, %bb.k ] ; 2 uses
  %.1146 = phi ptr [ %.0145, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.cs, %bb.k ]
  %.1143 = phi ptr [ %.0142, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.cu, %bb.k ]
  %.1141 = phi i32 [ %.0140, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.cw, %bb.k ]
  %i.gp = xor i32 %i.cp, -1                       ; 2 uses
  %i.gq = icmp sgt i32 %.1149, 0
  br i1 %i.gq, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %bb.y
  %i.gr = sext i32 %.1141 to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph184, %._crit_edge178
  %.0137182 = phi i32 [ %i.gp, %.lr.ph184 ], [ %.1.lcssa, %._crit_edge178 ] ; 2 uses
  %.0139181 = phi i32 [ 0, %.lr.ph184 ], [ %i.jz, %._crit_edge178 ] ; 13 uses
  %.2144180 = phi ptr [ %.1143, %.lr.ph184 ], [ %i.jy, %._crit_edge178 ] ; 2 uses
  %.2147179 = phi ptr [ %.1146, %.lr.ph184 ], [ %i.jx, %._crit_edge178 ] ; 3 uses
  %i.gs = load i32, ptr %.2147179, align 4        ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.2147179, i64 4
  %i.gu = load i32, ptr %i.gt, align 4            ; 2 uses
  %i.gv = load i32, ptr %i.o, align 4             ; 4 uses
  %.not153170 = icmp sgt i32 %i.gs, %i.gu
  br i1 %.not153170, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.z
  %i.gw = load ptr, ptr %0, align 8
  %i.gx = add nsw i32 %i.gs, %i.cp                ; 2 uses
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gy
  %i.ha = load ptr, ptr %i.m, align 8
  %i.hb = mul nsw i32 %i.gv, %i.gx
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hc
  %i.he = xor i32 %.0139181, -1
  %i.hf = add nsw i32 %.0139181, -2
  %i.hg = sext i32 %i.gv to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph177, %stbir__insert_coeff.exit
  %.0134175 = phi ptr [ %.2144180, %.lr.ph177 ], [ %i.hh, %stbir__insert_coeff.exit ] ; 2 uses
  %.0135174 = phi ptr [ %i.hd, %.lr.ph177 ], [ %i.jv, %stbir__insert_coeff.exit ] ; 14 uses
  %.0136173 = phi i32 [ %i.gs, %.lr.ph177 ], [ %i.jw, %stbir__insert_coeff.exit ] ; 4 uses
  %.1172 = phi i32 [ %.0137182, %.lr.ph177 ], [ %.2, %stbir__insert_coeff.exit ] ; 8 uses
  %.0138171 = phi ptr [ %i.gz, %.lr.ph177 ], [ %i.ju, %stbir__insert_coeff.exit ] ; 8 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0134175, i64 4
  %i.hi = load float, ptr %.0134175, align 4      ; 5 uses
  %i.hj = tail call float @llvm.fabs.f32(float %i.hi)
  %or.cond = fcmp ult float %i.hj, f0x03800000
  br i1 %or.cond, label %stbir__insert_coeff.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hk = icmp sgt i32 %.0136173, %.1172
  br i1 %i.hk, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hl = load i32, ptr %.0138171, align 4        ; 8 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.0138171, i64 4 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4            ; 6 uses
  %i.ho = icmp sgt i32 %i.hl, %i.hn
  br i1 %i.ho, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hp = load ptr, ptr %0, align 8
  %i.hq = add nsw i32 %.1172, %i.cp
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr [8 x i8], ptr %i.hp, i64 %i.hr ; 2 uses
  %.0133167 = getelementptr i8, ptr %i.hs, i64 8  ; 2 uses
  %i.ht = icmp ult ptr %.0133167, %.0138171
  br i1 %i.ht, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ad, %.lr.ph
  %.0133169 = phi ptr [ %.0133, %.lr.ph ], [ %.0133167, %bb.ad ] ; 3 uses
  %.pn154168 = phi ptr [ %.0133169, %.lr.ph ], [ %i.hs, %bb.ad ]
  store i32 0, ptr %.0133169, align 4
  %i.hu = getelementptr i8, ptr %.pn154168, i64 12
  store i32 -1, ptr %i.hu, align 4
  %.0133 = getelementptr i8, ptr %.0133169, i64 8 ; 2 uses
  %i.hv = icmp ult ptr %.0133, %.0138171
  br i1 %i.hv, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.ad
  store i32 %.0139181, ptr %.0138171, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %.0138171, i64 4
  store i32 %.0139181, ptr %i.hw, align 4
  store float %i.hi, ptr %.0135174, align 4
  br label %stbir__insert_coeff.exit

bb.ae:                                            ; preds = %bb.ac
  %.not.i162 = icmp sgt i32 %.0139181, %i.hn
  br i1 %.not.i162, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hx = icmp slt i32 %.0139181, %i.hl
  br i1 %i.hx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hy = sub nuw nsw i32 %i.hn, %.0139181
  %.not60.not.i = icmp slt i32 %i.hy, %i.gv
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %i.hz = sub nuw nsw i32 %i.hl, %.0139181        ; 2 uses
  %i.ia = sub i32 %i.hn, %i.hl                    ; 2 uses
  %i.ib = zext i32 %i.ia to i64                   ; 4 uses
  %i.ic = sext i32 %i.hz to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0135174, i64 %i.ic ; 6 uses
  %i.id = add nuw nsw i64 %i.ib, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ia, 7
  %i.ie = shl nsw i64 %i.ic, 2
  %diff.check = icmp ugt i64 %i.ie, -32
  %or.cond208 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond208, label %.lr.ph.i164.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.id, 8589934584              ; 3 uses
  %i.if = sub nsw i64 %i.ib, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ig = sub i64 %i.ib, %index                   ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.ig ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -12
  %i.ij = getelementptr inbounds i8, ptr %i.ih, i64 -28
  %wide.load = load <4 x float>, ptr %i.ii, align 4
  %wide.load207 = load <4 x float>, ptr %i.ij, align 4
  %i.ik = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ig ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 -12
  %i.im = getelementptr i8, ptr %i.ik, i64 -28
  store <4 x float> %wide.load, ptr %i.il, align 4
  store <4 x float> %wide.load207, ptr %i.im, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !587

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.id, %n.vec
  br i1 %cmp.n, label %.preheader.i.loopexit, label %.lr.ph.i164.preheader

.lr.ph.i164.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i165.ph = phi i64 [ %i.ib, %.lr.ph.preheader.i ], [ %i.if, %middle.block ] ; 4 uses
  %i.io = add nsw i64 %indvars.iv.i165.ph, 1
  %xtraiter = and i64 %i.io, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol

.lr.ph.i164.prol:                                 ; preds = %.lr.ph.i164.preheader, %.lr.ph.i164.prol
  %indvars.iv.i165.prol = phi i64 [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ], [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i164.prol ], [ 0, %.lr.ph.i164.preheader ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165.prol
  %i.iq = load float, ptr %i.ip, align 4
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165.prol
  store float %i.iq, ptr %gep.i.prol, align 4
  %indvars.iv.next.i166.prol = add nsw i64 %indvars.iv.i165.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol, !llvm.loop !588

.lr.ph.i164.prol.loopexit:                        ; preds = %.lr.ph.i164.prol, %.lr.ph.i164.preheader
  %indvars.iv.i165.unr = phi i64 [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ], [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ]
  %i.ir = icmp ult i64 %indvars.iv.i165.ph, 3
  br i1 %i.ir, label %.preheader.i.loopexit, label %.lr.ph.i164

.preheader.i.loopexit:                            ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164, %middle.block
  %i.is = icmp sgt i32 %i.hz, 1
  br i1 %i.is, label %.lr.ph63.preheader.i, label %._crit_edge.i163

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %scevgep.i = getelementptr i8, ptr %.0135174, i64 4
  %i.it = add i32 %i.hl, %i.he
  %i.iu = zext i32 %i.it to i64
  %i.iv = shl nuw nsw i64 %i.iu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.iv, i1 false)
  br label %._crit_edge.i163

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166.3, %.lr.ph.i164 ], [ %indvars.iv.i165.unr, %.lr.ph.i164.prol.loopexit ] ; 6 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165
  %i.ix = load float, ptr %i.iw, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165
  store float %i.ix, ptr %gep.i, align 4
  %indvars.iv.next.i166 = add nsw i64 %indvars.iv.i165, -1 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166
  %i.iz = load float, ptr %i.iy, align 4
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166
  store float %i.iz, ptr %gep.i.1, align 4
  %indvars.iv.next.i166.1 = add nsw i64 %indvars.iv.i165, -2 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.1
  %i.jb = load float, ptr %i.ja, align 4
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.1
  store float %i.jb, ptr %gep.i.2, align 4
  %indvars.iv.next.i166.2 = add nsw i64 %indvars.iv.i165, -3 ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.2
  %i.jd = load float, ptr %i.jc, align 4
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.2
  store float %i.jd, ptr %gep.i.3, align 4
  %indvars.iv.next.i166.3 = add nsw i64 %indvars.iv.i165, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i166.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i164, !llvm.loop !589

._crit_edge.i163:                                 ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.hi, ptr %.0135174, align 4
  store i32 %.0139181, ptr %.0138171, align 4
  br label %stbir__insert_coeff.exit

bb.ah:                                            ; preds = %bb.af
  %i.je = sub nsw i32 %.0139181, %i.hl
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.jf ; 2 uses
  %i.jh = load float, ptr %i.jg, align 4
  %i.ji = fadd float %i.hi, %i.jh
  store float %i.ji, ptr %i.jg, align 4
  br label %stbir__insert_coeff.exit

bb.ai:                                            ; preds = %bb.ae
  %i.jj = sub nsw i32 %.0139181, %i.hl            ; 3 uses
  %.not59.not.i = icmp slt i32 %i.jj, %i.gv
  br i1 %.not59.not.i, label %bb.aj, label %stbir__insert_coeff.exit

bb.aj:                                            ; preds = %bb.ai
  %i.jk = sub nsw i32 %i.hn, %i.hl
  %.064.i = add nsw i32 %i.jk, 1                  ; 2 uses
  %i.jl = icmp slt i32 %.064.i, %i.jj
  br i1 %i.jl, label %.lr.ph67.preheader.i, label %._crit_edge68.i

.lr.ph67.preheader.i:                             ; preds = %bb.aj
  %i.jm = sext i32 %.064.i to i64
  %i.jn = shl nuw nsw i64 %i.jm, 2
  %scevgep73.i = getelementptr i8, ptr %.0135174, i64 %i.jn
  %i.jo = sub i32 %i.hf, %i.hn
  %i.jp = zext i32 %i.jo to i64
  %i.jq = shl nuw nsw i64 %i.jp, 2
  %i.jr = add nuw nsw i64 %i.jq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.jr, i1 false)
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.preheader.i, %bb.aj
  %i.js = sext i32 %i.jj to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %.0135174, i64 %i.js
  store float %i.hi, ptr %i.jt, align 4
  store i32 %.0139181, ptr %i.hm, align 4
  br label %stbir__insert_coeff.exit

stbir__insert_coeff.exit:                         ; preds = %._crit_edge68.i, %bb.ai, %bb.ah, %._crit_edge.i163, %bb.ag, %._crit_edge, %bb.aa
  %.2 = phi i32 [ %.0136173, %._crit_edge ], [ %.1172, %bb.aa ], [ %.1172, %bb.ag ], [ %.1172, %._crit_edge.i163 ], [ %.1172, %bb.ah ], [ %.1172, %bb.ai ], [ %.1172, %._crit_edge68.i ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.0138171, i64 8
  %i.jv = getelementptr inbounds [4 x i8], ptr %.0135174, i64 %i.hg
  %i.jw = add i32 %.0136173, 1
  %exitcond.not = icmp eq i32 %.0136173, %i.gu
  br i1 %exitcond.not, label %._crit_edge178, label %bb.aa

._crit_edge178:                                   ; preds = %stbir__insert_coeff.exit, %bb.z
  %.1.lcssa = phi i32 [ %.0137182, %bb.z ], [ %.2, %stbir__insert_coeff.exit ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.2147179, i64 8
  %i.jy = getelementptr inbounds [4 x i8], ptr %.2144180, i64 %i.gr
  %i.jz = add nuw nsw i32 %.0139181, 1            ; 2 uses
  %exitcond192.not = icmp eq i32 %i.jz, %.1149
  br i1 %exitcond192.not, label %._crit_edge185, label %bb.z

._crit_edge185:                                   ; preds = %._crit_edge178, %bb.y
  %.0137.lcssa = phi i32 [ %i.gp, %bb.y ], [ %.1.lcssa, %._crit_edge178 ]
  %i.ka = load ptr, ptr %0, align 8               ; 2 uses
  %i.kb = add nsw i32 %.0137.lcssa, %i.cp
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr [8 x i8], ptr %i.ka, i64 %i.kc ; 2 uses
  %i.ke = load i32, ptr %i.j, align 8
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.kf ; 2 uses
  %.0187 = getelementptr i8, ptr %i.kd, i64 8     ; 2 uses
  %i.kh = icmp ult ptr %.0187, %i.kg
  br i1 %i.kh, label %.lr.ph191, label %.loopexit

.lr.ph191:                                        ; preds = %._crit_edge185, %.lr.ph191
  %.0189 = phi ptr [ %.0, %.lr.ph191 ], [ %.0187, %._crit_edge185 ] ; 3 uses
  %.pn188 = phi ptr [ %.0189, %.lr.ph191 ], [ %i.kd, %._crit_edge185 ]
  store i32 0, ptr %.0189, align 4
  %i.ki = getelementptr i8, ptr %.pn188, i64 12
  store i32 -1, ptr %i.ki, align 4
  %.0 = getelementptr i8, ptr %.0189, i64 8       ; 2 uses
  %i.kj = icmp ult ptr %.0, %i.kg
  br i1 %i.kj, label %.lr.ph191, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph191, %._crit_edge185, %stbir__calculate_coefficients_for_gather_downsample.exit, %stbir__calculate_coefficients_for_gather_upsample.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stbir__cleanup_gathered_coefficients(i32 noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, i32 noundef %6) unnamed_addr #24 {
bb.a:
  %i.a = load i32, ptr %2, align 4                ; 7 uses
  %i.b = add nsw i32 %i.a, -1                     ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 4              ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.f = load i32, ptr %i.e, align 4              ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp slt i32 %i.d, %3
  %i.k = select i1 %i.i, i1 %i.j, i1 false        ; 2 uses
  %spec.select = select i1 %i.k, i32 %i.d, i32 %3 ; 2 uses
  %i.l = icmp sgt i32 %spec.select, 0
  br i1 %i.l, label %.lr.ph319, label %._crit_edge320

.lr.ph319:                                        ; preds = %bb.a
  %i.m = sext i32 %6 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph319, %.loopexit292
  %.0190317 = phi ptr [ %4, %.lr.ph319 ], [ %i.bh, %.loopexit292 ] ; 3 uses
  %.0192315 = phi ptr [ %5, %.lr.ph319 ], [ %i.bi, %.loopexit292 ] ; 9 uses
  %.0206314 = phi i32 [ 0, %.lr.ph319 ], [ %i.bj, %.loopexit292 ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0190317, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = load i32, ptr %.0190317, align 4         ; 3 uses
  %.not232307 = icmp slt i32 %i.o, %i.p
  br i1 %.not232307, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = add i32 %i.o, 1
  %i.r = sub i32 %i.q, %i.p                       ; 3 uses
  %wide.trip.count = zext i32 %i.r to i64         ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.s = add i32 %i.r, -1
  %i.t = icmp ult i32 %i.s, 3
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0187309 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.v = load float, ptr %i.u, align 4
  %i.w = fpext float %i.v to double
  %i.x = fadd double %.0187309, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fpext float %i.aa to double
  %i.ac = fadd double %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = fpext float %i.af to double
  %i.ah = fadd double %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = fpext float %i.ak to double
  %i.am = fadd double %i.ah, %i.al                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0187309.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.am, %._crit_edge.unr-lcssa ]
  %lcmp.mod632 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod632)
  br label %.lr.ph.epil

end_hunk_1
