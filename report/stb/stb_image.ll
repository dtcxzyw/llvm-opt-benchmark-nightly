Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__create_png_alpha_expand8:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !24
  %i.bq = load i8, ptr %i.bj, align 1, !tbaa !24
  store i8 %i.bq, ptr %i.bg, align 1, !tbaa !24
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.br = shl nsw i64 %indvars.iv.next, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  store i8 -1, ptr %i.bt, align 1, !tbaa !24
  %i.bu = mul nuw nsw i64 %indvars.iv.next, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bu ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !24
  %i.cc = load i8, ptr %i.bv, align 1, !tbaa !24
  store i8 %i.cc, ptr %i.bs, align 1, !tbaa !24
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !430

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph32.prol.loopexit, %.lr.ph32, %middle.block, %.preheader26, %.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__create_png_image_raw(ptr nofree noundef captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !32
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53   ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %stbi__malloc_mad3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not24.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.b
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !431
  br label %bb.d

stbi__malloc_mad3.exit:                           ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef %i.s) #38 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !431
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.v, align 8, !tbaa !26
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.x, label %stbi__mul2sizes_valid.exit.thread16.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.f
  %i.y = udiv i32 2147483647, %4
  %.not24.i = icmp sgt i32 %i.g, %i.y
  br i1 %.not24.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i

stbi__mul2sizes_valid.exit.thread16.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.f
  %i.z = mul i32 %i.g, %4                         ; 18 uses
  %i.aa = or i32 %i.z, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.aa, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %stbi__mad3sizes_valid.exit.thread

bb.g:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i
  %i.ab = icmp eq i32 %6, 0
  br i1 %i.ab, label %stbi__mad3sizes_valid.exit._crit_edge, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.g
  %i.ac = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.z, %i.ac
  %i.ad = mul i32 %i.z, %6                        ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2147483640
  %or.cond = or i1 %.not.i, %i.ae
  br i1 %or.cond, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit._crit_edge

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread16.i, %bb.e, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.af, align 8, !tbaa !26
  br label %bb.ak

stbi__mad3sizes_valid.exit._crit_edge:            ; preds = %bb.g, %stbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %stbi__mul2sizes_valid.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 8 uses
  br i1 %i.k, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i299

stbi__mul2sizes_valid.exit.i299:                  ; preds = %stbi__mad3sizes_valid.exit._crit_edge
  %i.ai = udiv i32 2147483647, %5
  %.not11.i = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %.not11.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %stbi__mad3sizes_valid.exit._crit_edge, %stbi__mul2sizes_valid.exit.i299
  %i.aj = mul nuw nsw i32 %i.ah, %5
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not330, label %stbi__mad2sizes_valid.exit.thread, label %bb.h

stbi__mad2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.i299, %stbi__mad2sizes_valid.exit
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.al, align 8, !tbaa !26
  br label %bb.ak

bb.h:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.49, ptr %i.ap, align 8, !tbaa !26
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias noundef ptr @malloc(i64 noundef %i.ar) #38 ; 5 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.at, align 8, !tbaa !26
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
  %8 = sext i32 %6 to i64
  %i.bj = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %8
  %wide.trip.count460 = zext i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.aw to i64     ; 8 uses
  %i.bk = sub nsw i64 %i.bb, %i.ax                ; 28 uses
  %i.bl = add i32 %i.z, -1                        ; 3 uses
  %i.bm = add nuw nsw i64 %i.bg, 1
  %min.iters.check699 = icmp ult i64 %i.bk, 8
  %i.bn = add nsw i64 %i.ax, -1
  %diff.check697 = icmp ult i64 %i.bn, 31
  %or.cond733 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bk, 32
  %i.bo = and i64 %i.bk, 24
  %n.vec703 = and i64 %i.bk, -32                  ; 4 uses
  %i.bp = add nsw i64 %n.vec703, %i.ax
  %cmp.n712 = icmp eq i64 %i.bk, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bo, 0
  %n.vec720 = and i64 %i.bk, -8                   ; 3 uses
  %i.bq = add nsw i64 %n.vec720, %i.ax
  %cmp.n727 = icmp eq i64 %i.bk, %n.vec720
  %i.br = add nsw i64 %i.bb, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.bs = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bs, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter747 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %min.iters.check632 = icmp ult i64 %i.bk, 4
  %i.bt = add nsw i64 %i.ax, -1
  %diff.check626 = icmp ult i64 %i.bt, 15
  %min.iters.check634 = icmp ult i64 %i.bk, 16
  %i.bu = and i64 %i.bk, 12
  %n.vec636 = and i64 %i.bk, -16                  ; 4 uses
  %i.bv = add nsw i64 %n.vec636, %i.ax
  %cmp.n645 = icmp eq i64 %i.bk, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bu, 0
  %n.vec653 = and i64 %i.bk, -4                   ; 3 uses
  %i.bw = add nsw i64 %n.vec653, %i.ax
  %cmp.n662 = icmp eq i64 %i.bk, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.bx = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.bx, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter749 = and i64 %wide.trip.count424, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %i.by = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bk, 4
  %i.bz = add nsw i64 %i.ax, -1
  %diff.check561 = icmp ult i64 %i.bz, 15
  %min.iters.check565 = icmp ult i64 %i.bk, 16
  %i.ca = and i64 %i.bk, 12
  %n.vec567 = and i64 %i.bk, -16                  ; 4 uses
  %i.cb = add nsw i64 %n.vec567, %i.ax
  %cmp.n575 = icmp eq i64 %i.bk, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.ca, 0
  %n.vec583 = and i64 %i.bk, -4                   ; 3 uses
  %i.cc = add nsw i64 %n.vec583, %i.ax
  %cmp.n591 = icmp eq i64 %i.bk, %n.vec583
  %i.cd = add nsw i64 %i.bb, -1
  %min.iters.check530 = icmp ult i32 %i.aw, 4
  %min.iters.check532 = icmp ult i32 %i.aw, 32
  %i.ce = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.ce, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter755 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %min.iters.check506 = icmp ult i64 %i.bk, 8
  %i.cf = add nsw i64 %i.ax, -1
  %diff.check = icmp ult i64 %i.cf, 31
  %or.cond732 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bk, 32
  %i.cg = and i64 %i.bk, 24
  %n.vec509 = and i64 %i.bk, -32                  ; 4 uses
  %i.ch = add nsw i64 %n.vec509, %i.ax
  %cmp.n518 = icmp eq i64 %i.bk, %n.vec509
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  %n.vec520 = and i64 %i.bk, -8                   ; 3 uses
  %i.ci = add nsw i64 %n.vec520, %i.ax
  %cmp.n525 = icmp eq i64 %i.bk, %n.vec520
  %i.cj = add nsw i64 %i.bb, -1
  %xtraiter761 = and i32 %4, 1
  %i.ck = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod762.not = icmp eq i32 %xtraiter761, 0
  %lcmp.mod763 = trunc i32 %4 to i1
  %xtraiter764 = and i32 %i.z, 3                  ; 3 uses
  %i.cl = icmp ult i32 %i.z, 4
  %unroll_iter767 = and i32 %i.z, -4
  %lcmp.mod765.not = icmp eq i32 %xtraiter764, 0
  %lcmp.mod766 = icmp ne i32 %xtraiter764, 0
  %i.cm = and i64 %i.bg, 1
  %lcmp.mod770.not.not = icmp eq i64 %i.cm, 0
  %i.cn = shl nuw nsw i64 %i.bg, 2
  %i.co = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bg, -1
  %i.cp = icmp eq i32 %.030.i305, 0
  %i.cq = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %i.cq, 4294967288              ; 3 uses
  %i.cr = sub nsw i64 %i.bg, %n.vec
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  %xtraiter772 = and i32 %i.z, 1
  %i.cs = icmp eq i32 %i.bl, 0
  %unroll_iter776 = and i32 %i.z, -2
  %lcmp.mod774.not = icmp eq i32 %xtraiter772, 0
  %lcmp.mod775 = trunc i32 %i.z to i1
  %xtraiter778 = and i32 %i.z, 1
  %i.ct = icmp eq i32 %i.bl, 0
  %unroll_iter782 = and i32 %i.z, -2
  %lcmp.mod780.not = icmp eq i32 %xtraiter778, 0
  %lcmp.mod781 = trunc i32 %i.z to i1
  %xtraiter784 = and i32 %i.z, 1
  %i.cu = icmp eq i32 %i.bl, 0
  %unroll_iter788 = and i32 %i.z, -2
  %lcmp.mod786.not = icmp eq i32 %xtraiter784, 0
  %lcmp.mod787 = trunc i32 %i.z to i1
  %i.cv = and i64 %i.bg, 1
  %lcmp.mod791.not.not = icmp eq i64 %i.cv, 0
  %i.cw = shl nuw nsw i64 %i.bg, 2
  %i.cx = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bg, -1
  %i.cy = icmp eq i32 %.030.i305, 0
  %xtraiter793 = and i64 %i.bm, 3                 ; 2 uses
  %lcmp.mod794.not = icmp eq i64 %xtraiter793, 0
  %i.cz = icmp ult i32 %.030.i305, 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qj, %.loopexit ] ; 2 uses
  %i.da = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.db = trunc i64 %indvars.iv457 to i1
  %i.dc = select i1 %i.db, i64 %i.av, i64 0       ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dc ; 75 uses
  %i.de = and i32 %i.da, 1
  %i.df = xor i32 %i.de, 1
  %i.dg = mul nuw nsw i32 %i.df, %i.ah
  %i.dh = zext nneg i32 %i.dg to i64              ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dh ; 30 uses
  %i.dj = load ptr, ptr %i.u, align 8, !tbaa !431
  %i.dk = mul i32 %i.e, %i.da
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dl ; 33 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.do = load i8, ptr %.0272398, align 1, !tbaa !24 ; 3 uses
  %i.dp = icmp ugt i8 %i.do, 4
  br i1 %i.dp, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dr = zext nneg i8 %i.do to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.dt, %bb.o ], [ %i.do, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.az, label %iter.check682, label %.preheader354

iter.check682:                                    ; preds = %.preheader356
  %i.du = sub nsw i64 %i.dh, %i.dc
  %diff.check665 = icmp ugt i64 %i.du, -32
  %or.cond729 = select i1 %min.iters.check667, i1 true, i1 %diff.check665
  br i1 %or.cond729, label %.lr.ph360.preheader, label %vector.main.loop.iter.check668

vector.main.loop.iter.check668:                   ; preds = %iter.check682
  br i1 %min.iters.check669, label %vec.epilog.ph686, label %vector.body672

vector.body672:                                   ; preds = %vector.main.loop.iter.check668, %vector.body672
  %index673 = phi i64 [ %index.next678, %vector.body672 ], [ 0, %vector.main.loop.iter.check668 ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index673 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load674 = load <16 x i8>, ptr %i.dv, align 1, !tbaa !24
  %wide.load675 = load <16 x i8>, ptr %i.dw, align 1, !tbaa !24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 %index673 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
end_hunk_0
begin_hunk_1_@stbi__create_png_image_raw:bb.a
  %.narrow286.prol = add i8 %i.em, %i.ek
  %i.en = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.en, align 1, !tbaa !24
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter747
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !434

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.eo = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.az, label %iter.check611, label %.preheader351

iter.check611:                                    ; preds = %.preheader353
  %i.eq = sub nsw i64 %i.dh, %i.dc
  %diff.check594 = icmp ugt i64 %i.eq, -32
  %or.cond730 = select i1 %min.iters.check596, i1 true, i1 %diff.check594
  br i1 %or.cond730, label %.lr.ph364.preheader, label %vector.main.loop.iter.check597

vector.main.loop.iter.check597:                   ; preds = %iter.check611
  br i1 %min.iters.check598, label %vec.epilog.ph615, label %vector.body601

vector.body601:                                   ; preds = %vector.main.loop.iter.check597, %vector.body601
  %index602 = phi i64 [ %index.next607, %vector.body601 ], [ 0, %vector.main.loop.iter.check597 ] ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index602 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load603 = load <16 x i8>, ptr %i.er, align 1, !tbaa !24
  %wide.load604 = load <16 x i8>, ptr %i.es, align 1, !tbaa !24
  %i.et = getelementptr inbounds nuw i8, ptr %i.di, i64 %index602 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load605 = load <16 x i8>, ptr %i.et, align 1, !tbaa !24
  %wide.load606 = load <16 x i8>, ptr %i.eu, align 1, !tbaa !24
  %i.ev = lshr <16 x i8> %wide.load605, splat (i8 1)
  %i.ew = lshr <16 x i8> %wide.load606, splat (i8 1)
  %i.ex = add <16 x i8> %i.ev, %wide.load603
  %i.ey = add <16 x i8> %i.ew, %wide.load604
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index602 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <16 x i8> %i.ex, ptr %i.ez, align 1, !tbaa !24
  store <16 x i8> %i.ey, ptr %i.fa, align 1, !tbaa !24
  %index.next607 = add nuw i64 %index602, 32      ; 2 uses
  %i.fb = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.fb, label %middle.block608, label %vector.body601, !llvm.loop !435

middle.block608:                                  ; preds = %vector.body601
  br i1 %cmp.n609, label %.preheader351, label %vec.epilog.iter.check613

vec.epilog.iter.check613:                         ; preds = %middle.block608
  br i1 %min.epilog.iters.check614, label %.lr.ph364.preheader, label %vec.epilog.ph615, !prof !77

vec.epilog.ph615:                                 ; preds = %vector.main.loop.iter.check597, %vec.epilog.iter.check613
  %vec.epilog.resume.val610 = phi i64 [ %n.vec600, %vec.epilog.iter.check613 ], [ 0, %vector.main.loop.iter.check597 ]
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph615
  %index618 = phi i64 [ %vec.epilog.resume.val610, %vec.epilog.ph615 ], [ %index.next621, %vec.epilog.vector.body617 ] ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index618
  %wide.load619 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !24
  %i.fd = getelementptr inbounds nuw i8, ptr %i.di, i64 %index618
  %wide.load620 = load <4 x i8>, ptr %i.fd, align 1, !tbaa !24
  %i.fe = lshr <4 x i8> %wide.load620, splat (i8 1)
  %i.ff = add <4 x i8> %i.fe, %wide.load619
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index618
  store <4 x i8> %i.ff, ptr %i.fg, align 1, !tbaa !24
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.fh, label %vec.epilog.middle.block622, label %vec.epilog.vector.body617, !llvm.loop !436

vec.epilog.middle.block622:                       ; preds = %vec.epilog.vector.body617
  br i1 %cmp.n623, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check611, %vec.epilog.iter.check613, %vec.epilog.middle.block622
  %indvars.iv431.ph = phi i64 [ 0, %iter.check611 ], [ %n.vec600, %vec.epilog.iter.check613 ], [ %n.vec616, %vec.epilog.middle.block622 ] ; 6 uses
  br i1 %lcmp.mod750.not, label %.lr.ph364.prol.loopexit, label %.lr.ph364.prol

.lr.ph364.prol:                                   ; preds = %.lr.ph364.preheader
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv431.ph
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !24
  %i.fk = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv431.ph
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !24
  %i.fm = lshr i8 %i.fl, 1
  %.narrow290.prol = add i8 %i.fm, %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv431.ph
  store i8 %.narrow290.prol, ptr %i.fn, align 1, !tbaa !24
  %indvars.iv.next432.prol = or disjoint i64 %indvars.iv431.ph, 1
  br label %.lr.ph364.prol.loopexit

.lr.ph364.prol.loopexit:                          ; preds = %.lr.ph364.prol, %.lr.ph364.preheader
  %indvars.iv431.unr = phi i64 [ %indvars.iv431.ph, %.lr.ph364.preheader ], [ %indvars.iv.next432.prol, %.lr.ph364.prol ]
  %i.fo = icmp eq i64 %indvars.iv431.ph, %i.by
  br i1 %i.fo, label %.preheader351, label %.lr.ph364

.preheader349:                                    ; preds = %bb.p
  br i1 %i.ba, label %iter.check545, label %.loopexit348

iter.check545:                                    ; preds = %.preheader349
  %i.fp = sub nsw i64 %i.dh, %i.dc
  %diff.check528 = icmp ugt i64 %i.fp, -32
  %or.cond731 = select i1 %min.iters.check530, i1 true, i1 %diff.check528
  br i1 %or.cond731, label %.lr.ph368.preheader, label %vector.main.loop.iter.check531

vector.main.loop.iter.check531:                   ; preds = %iter.check545
  br i1 %min.iters.check532, label %vec.epilog.ph549, label %vector.body535

vector.body535:                                   ; preds = %vector.main.loop.iter.check531, %vector.body535
  %index536 = phi i64 [ %index.next541, %vector.body535 ], [ 0, %vector.main.loop.iter.check531 ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index536 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %wide.load537 = load <16 x i8>, ptr %i.fq, align 1, !tbaa !24
  %wide.load538 = load <16 x i8>, ptr %i.fr, align 1, !tbaa !24
  %i.fs = getelementptr inbounds nuw i8, ptr %i.di, i64 %index536 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load539 = load <16 x i8>, ptr %i.fs, align 1, !tbaa !24
  %wide.load540 = load <16 x i8>, ptr %i.ft, align 1, !tbaa !24
  %i.fu = add <16 x i8> %wide.load539, %wide.load537
  %i.fv = add <16 x i8> %wide.load540, %wide.load538
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index536 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <16 x i8> %i.fu, ptr %i.fw, align 1, !tbaa !24
  store <16 x i8> %i.fv, ptr %i.fx, align 1, !tbaa !24
  %index.next541 = add nuw i64 %index536, 32      ; 2 uses
  %i.fy = icmp eq i64 %index.next541, %n.vec534
  br i1 %i.fy, label %middle.block542, label %vector.body535, !llvm.loop !437

middle.block542:                                  ; preds = %vector.body535
  br i1 %cmp.n543, label %.loopexit348, label %vec.epilog.iter.check547

vec.epilog.iter.check547:                         ; preds = %middle.block542
  br i1 %min.epilog.iters.check548, label %.lr.ph368.preheader, label %vec.epilog.ph549, !prof !77

vec.epilog.ph549:                                 ; preds = %vector.main.loop.iter.check531, %vec.epilog.iter.check547
  %vec.epilog.resume.val544 = phi i64 [ %n.vec534, %vec.epilog.iter.check547 ], [ 0, %vector.main.loop.iter.check531 ]
  br label %vec.epilog.vector.body551

vec.epilog.vector.body551:                        ; preds = %vec.epilog.vector.body551, %vec.epilog.ph549
  %index552 = phi i64 [ %vec.epilog.resume.val544, %vec.epilog.ph549 ], [ %index.next555, %vec.epilog.vector.body551 ] ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index552
  %wide.load553 = load <4 x i8>, ptr %i.fz, align 1, !tbaa !24
  %i.ga = getelementptr inbounds nuw i8, ptr %i.di, i64 %index552
  %wide.load554 = load <4 x i8>, ptr %i.ga, align 1, !tbaa !24
  %i.gb = add <4 x i8> %wide.load554, %wide.load553
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index552
  store <4 x i8> %i.gb, ptr %i.gc, align 1, !tbaa !24
  %index.next555 = add nuw i64 %index552, 4       ; 2 uses
  %i.gd = icmp eq i64 %index.next555, %n.vec550
  br i1 %i.gd, label %vec.epilog.middle.block556, label %vec.epilog.vector.body551, !llvm.loop !438

vec.epilog.middle.block556:                       ; preds = %vec.epilog.vector.body551
  br i1 %cmp.n557, label %.loopexit348, label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %iter.check545, %vec.epilog.iter.check547, %vec.epilog.middle.block556
  %indvars.iv441.ph = phi i64 [ 0, %iter.check545 ], [ %n.vec534, %vec.epilog.iter.check547 ], [ %n.vec550, %vec.epilog.middle.block556 ] ; 3 uses
  br i1 %lcmp.mod756.not, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol

.lr.ph368.prol:                                   ; preds = %.lr.ph368.preheader, %.lr.ph368.prol
  %indvars.iv441.prol = phi i64 [ %indvars.iv.next442.prol, %.lr.ph368.prol ], [ %indvars.iv441.ph, %.lr.ph368.preheader ] ; 4 uses
  %prol.iter757 = phi i64 [ %prol.iter757.next, %.lr.ph368.prol ], [ 0, %.lr.ph368.preheader ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv441.prol
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !24
  %i.gg = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv441.prol
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !24
  %.narrow292.prol = add i8 %i.gh, %i.gf
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv441.prol
  store i8 %.narrow292.prol, ptr %i.gi, align 1, !tbaa !24
  %indvars.iv.next442.prol = add nuw nsw i64 %indvars.iv441.prol, 1 ; 2 uses
  %prol.iter757.next = add i64 %prol.iter757, 1   ; 2 uses
  %prol.iter757.cmp.not = icmp eq i64 %prol.iter757.next, %xtraiter755
  br i1 %prol.iter757.cmp.not, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol, !llvm.loop !439

.lr.ph368.prol.loopexit:                          ; preds = %.lr.ph368.prol, %.lr.ph368.preheader
  %indvars.iv441.unr = phi i64 [ %indvars.iv441.ph, %.lr.ph368.preheader ], [ %indvars.iv.next442.prol, %.lr.ph368.prol ]
  %i.gj = sub nsw i64 %indvars.iv441.ph, %wide.trip.count444
  %i.gk = icmp ugt i64 %i.gj, -4
  br i1 %i.gk, label %.loopexit348, label %.lr.ph368

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %i.dn, i64 %i.bb, i1 false)
  br label %.loopexit348

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %i.dn, i64 %i.ax, i1 false)
  br i1 %i.ay, label %iter.check, label %.loopexit348

iter.check:                                       ; preds = %bb.r
  br i1 %or.cond732, label %.lr.ph370.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check507, label %vec.epilog.ph, label %vector.body510

vector.body510:                                   ; preds = %vector.main.loop.iter.check, %vector.body510
  %index511 = phi i64 [ %index.next516, %vector.body510 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.gl = add i64 %index511, %i.ax                ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %i.dn, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %wide.load512 = load <16 x i8>, ptr %i.gm, align 1, !tbaa !24
  %wide.load513 = load <16 x i8>, ptr %i.gn, align 1, !tbaa !24
  %i.go = getelementptr inbounds i8, ptr %i.dd, i64 %index511 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load514 = load <16 x i8>, ptr %i.go, align 1, !tbaa !24
  %wide.load515 = load <16 x i8>, ptr %i.gp, align 1, !tbaa !24
  %i.gq = add <16 x i8> %wide.load514, %wide.load512
  %i.gr = add <16 x i8> %wide.load515, %wide.load513
  %i.gs = getelementptr inbounds i8, ptr %i.dd, i64 %i.gl ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store <16 x i8> %i.gq, ptr %i.gs, align 1, !tbaa !24
  store <16 x i8> %i.gr, ptr %i.gt, align 1, !tbaa !24
  %index.next516 = add nuw i64 %index511, 32      ; 2 uses
  %i.gu = icmp eq i64 %index.next516, %n.vec509
  br i1 %i.gu, label %middle.block517, label %vector.body510, !llvm.loop !440

middle.block517:                                  ; preds = %vector.body510
  br i1 %cmp.n518, label %.loopexit348, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block517
  br i1 %min.epilog.iters.check, label %.lr.ph370.preheader, label %vec.epilog.ph, !prof !141

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec509, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index521 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next524, %vec.epilog.vector.body ] ; 3 uses
  %i.gv = add i64 %index521, %i.ax                ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %i.dn, i64 %i.gv
  %wide.load522 = load <8 x i8>, ptr %i.gw, align 1, !tbaa !24
  %i.gx = getelementptr inbounds i8, ptr %i.dd, i64 %index521
  %wide.load523 = load <8 x i8>, ptr %i.gx, align 1, !tbaa !24
  %i.gy = add <8 x i8> %wide.load523, %wide.load522
  %i.gz = getelementptr inbounds i8, ptr %i.dd, i64 %i.gv
  store <8 x i8> %i.gy, ptr %i.gz, align 1, !tbaa !24
  %index.next524 = add nuw i64 %index521, 8       ; 2 uses
  %i.ha = icmp eq i64 %index.next524, %n.vec520
  br i1 %i.ha, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !441

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n525, label %.loopexit348, label %.lr.ph370.preheader

.lr.ph370.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv446.ph = phi i64 [ %i.ax, %iter.check ], [ %i.ch, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ] ; 7 uses
  %i.hb = sub nsw i64 %i.bb, %indvars.iv446.ph
  %xtraiter758 = and i64 %i.hb, 1
  %lcmp.mod759.not = icmp eq i64 %xtraiter758, 0
  br i1 %lcmp.mod759.not, label %.lr.ph370.prol.loopexit, label %.lr.ph370.prol

.lr.ph370.prol:                                   ; preds = %.lr.ph370.preheader
  %i.hc = getelementptr inbounds i8, ptr %i.dn, i64 %indvars.iv446.ph
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !24
  %i.he = sub nsw i64 %indvars.iv446.ph, %i.ax
  %i.hf = getelementptr inbounds i8, ptr %i.dd, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !24
  %.narrow294.prol = add i8 %i.hg, %i.hd
  %i.hh = getelementptr inbounds i8, ptr %i.dd, i64 %indvars.iv446.ph
  store i8 %.narrow294.prol, ptr %i.hh, align 1, !tbaa !24
  %indvars.iv.next447.prol = add nsw i64 %indvars.iv446.ph, 1
  br label %.lr.ph370.prol.loopexit

.lr.ph370.prol.loopexit:                          ; preds = %.lr.ph370.prol, %.lr.ph370.preheader
  %indvars.iv446.unr = phi i64 [ %indvars.iv446.ph, %.lr.ph370.preheader ], [ %indvars.iv.next447.prol, %.lr.ph370.prol ]
  %i.hi = icmp eq i64 %indvars.iv446.ph, %i.cj
  br i1 %i.hi, label %.loopexit348, label %.lr.ph370

.lr.ph370:                                        ; preds = %.lr.ph370.prol.loopexit, %.lr.ph370
  %indvars.iv446 = phi i64 [ %indvars.iv.next447.1, %.lr.ph370 ], [ %indvars.iv446.unr, %.lr.ph370.prol.loopexit ] ; 5 uses
  %i.hj = getelementptr inbounds i8, ptr %i.dn, i64 %indvars.iv446
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !24
  %i.hl = sub nsw i64 %indvars.iv446, %i.ax
  %i.hm = getelementptr inbounds i8, ptr %i.dd, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !24
  %.narrow294 = add i8 %i.hn, %i.hk
  %i.ho = getelementptr inbounds i8, ptr %i.dd, i64 %indvars.iv446
  store i8 %.narrow294, ptr %i.ho, align 1, !tbaa !24
  %indvars.iv.next447 = add nsw i64 %indvars.iv446, 1 ; 3 uses
  %i.hp = getelementptr inbounds i8, ptr %i.dn, i64 %indvars.iv.next447
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !24
  %i.hr = sub nsw i64 %indvars.iv.next447, %i.ax
  %i.hs = getelementptr inbounds i8, ptr %i.dd, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !24
  %.narrow294.1 = add i8 %i.ht, %i.hq
  %i.hu = getelementptr inbounds i8, ptr %i.dd, i64 %indvars.iv.next447
  store i8 %.narrow294.1, ptr %i.hu, align 1, !tbaa !24
  %indvars.iv.next447.1 = add nsw i64 %indvars.iv446, 2 ; 2 uses
  %exitcond450.not.1 = icmp eq i64 %indvars.iv.next447.1, %i.bb
  br i1 %exitcond450.not.1, label %.loopexit348, label %.lr.ph370, !llvm.loop !442

.lr.ph368:                                        ; preds = %.lr.ph368.prol.loopexit, %.lr.ph368
  %indvars.iv441 = phi i64 [ %indvars.iv.next442.3, %.lr.ph368 ], [ %indvars.iv441.unr, %.lr.ph368.prol.loopexit ] ; 7 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv441
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !24
  %i.hx = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv441
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !24
  %.narrow292 = add i8 %i.hy, %i.hw
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv441
  store i8 %.narrow292, ptr %i.hz, align 1, !tbaa !24
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.next442
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !24
  %i.ic = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next442
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !24
  %.narrow292.1 = add i8 %i.id, %i.ib
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.next442
  store i8 %.narrow292.1, ptr %i.ie, align 1, !tbaa !24
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.next442.1
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !24
  %i.ih = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next442.1
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !24
  %.narrow292.2 = add i8 %i.ii, %i.ig
  %i.ij = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.next442.1
  store i8 %.narrow292.2, ptr %i.ij, align 1, !tbaa !24
  %indvars.iv.next442.2 = add nuw nsw i64 %indvars.iv441, 3 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.next442.2
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !24
  %i.im = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next442.2
  %i.in = load i8, ptr %i.im, align 1, !tbaa !24
  %.narrow292.3 = add i8 %i.in, %i.il
  %i.io = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.next442.2
  store i8 %.narrow292.3, ptr %i.io, align 1, !tbaa !24
  %indvars.iv.next442.3 = add nuw nsw i64 %indvars.iv441, 4 ; 2 uses
  %exitcond445.not.3 = icmp eq i64 %indvars.iv.next442.3, %wide.trip.count444
  br i1 %exitcond445.not.3, label %.loopexit348, label %.lr.ph368, !llvm.loop !443

.preheader351:                                    ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364, %middle.block608, %vec.epilog.middle.block622, %.preheader353
  br i1 %i.ay, label %iter.check578, label %.loopexit348

iter.check578:                                    ; preds = %.preheader351
  br i1 %min.iters.check563, label %.lr.ph366.preheader, label %vector.memcheck559

vector.memcheck559:                               ; preds = %iter.check578
  %i.ip = sub nsw i64 %i.dh, %i.dc
  %diff.check560 = icmp ugt i64 %i.ip, -16
  %conflict.rdx = or i1 %diff.check560, %diff.check561
  br i1 %conflict.rdx, label %.lr.ph366.preheader, label %vector.main.loop.iter.check564

vector.main.loop.iter.check564:                   ; preds = %vector.memcheck559
  br i1 %min.iters.check565, label %vec.epilog.ph582, label %vector.body568

vector.body568:                                   ; preds = %vector.main.loop.iter.check564, %vector.body568
  %index569 = phi i64 [ %index.next573, %vector.body568 ], [ 0, %vector.main.loop.iter.check564 ] ; 3 uses
  %i.iq = add i64 %index569, %i.ax                ; 3 uses
  %i.ir = getelementptr inbounds i8, ptr %i.dn, i64 %i.iq
  %wide.load570 = load <16 x i8>, ptr %i.ir, align 1, !tbaa !24
  %i.is = getelementptr inbounds i8, ptr %i.di, i64 %i.iq
  %wide.load571 = load <16 x i8>, ptr %i.is, align 1, !tbaa !24
  %i.it = zext <16 x i8> %wide.load571 to <16 x i16>
  %i.iu = getelementptr inbounds i8, ptr %i.dd, i64 %index569
  %wide.load572 = load <16 x i8>, ptr %i.iu, align 1, !tbaa !24
  %i.iv = zext <16 x i8> %wide.load572 to <16 x i16>
  %i.iw = add nuw nsw <16 x i16> %i.iv, %i.it
  %i.ix = lshr <16 x i16> %i.iw, splat (i16 1)
  %i.iy = trunc nuw <16 x i16> %i.ix to <16 x i8>
  %i.iz = add <16 x i8> %wide.load570, %i.iy
  %i.ja = getelementptr inbounds i8, ptr %i.dd, i64 %i.iq
  store <16 x i8> %i.iz, ptr %i.ja, align 1, !tbaa !24
  %index.next573 = add nuw i64 %index569, 16      ; 2 uses
  %i.jb = icmp eq i64 %index.next573, %n.vec567
  br i1 %i.jb, label %middle.block574, label %vector.body568, !llvm.loop !444

middle.block574:                                  ; preds = %vector.body568
  br i1 %cmp.n575, label %.loopexit348, label %vec.epilog.iter.check580

vec.epilog.iter.check580:                         ; preds = %middle.block574
  br i1 %min.epilog.iters.check581, label %.lr.ph366.preheader, label %vec.epilog.ph582, !prof !148

vec.epilog.ph582:                                 ; preds = %vector.main.loop.iter.check564, %vec.epilog.iter.check580
  %vec.epilog.resume.val576 = phi i64 [ %n.vec567, %vec.epilog.iter.check580 ], [ 0, %vector.main.loop.iter.check564 ]
  br label %vec.epilog.vector.body584

vec.epilog.vector.body584:                        ; preds = %vec.epilog.vector.body584, %vec.epilog.ph582
  %index585 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph582 ], [ %index.next589, %vec.epilog.vector.body584 ] ; 3 uses
  %i.jc = add i64 %index585, %i.ax                ; 3 uses
  %i.jd = getelementptr inbounds i8, ptr %i.dn, i64 %i.jc
  %wide.load586 = load <4 x i8>, ptr %i.jd, align 1, !tbaa !24
  %i.je = getelementptr inbounds i8, ptr %i.di, i64 %i.jc
  %wide.load587 = load <4 x i8>, ptr %i.je, align 1, !tbaa !24
  %i.jf = zext <4 x i8> %wide.load587 to <4 x i16>
  %i.jg = getelementptr inbounds i8, ptr %i.dd, i64 %index585
  %wide.load588 = load <4 x i8>, ptr %i.jg, align 1, !tbaa !24
  %i.jh = zext <4 x i8> %wide.load588 to <4 x i16>
  %i.ji = add nuw nsw <4 x i16> %i.jh, %i.jf
  %i.jj = lshr <4 x i16> %i.ji, splat (i16 1)
  %i.jk = trunc nuw <4 x i16> %i.jj to <4 x i8>
  %i.jl = add <4 x i8> %wide.load586, %i.jk
  %i.jm = getelementptr inbounds i8, ptr %i.dd, i64 %i.jc
  store <4 x i8> %i.jl, ptr %i.jm, align 1, !tbaa !24
  %index.next589 = add nuw i64 %index585, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next589, %n.vec583
  br i1 %i.jn, label %vec.epilog.middle.block590, label %vec.epilog.vector.body584, !llvm.loop !445

vec.epilog.middle.block590:                       ; preds = %vec.epilog.vector.body584
  br i1 %cmp.n591, label %.loopexit348, label %.lr.ph366.preheader

.lr.ph366.preheader:                              ; preds = %vector.memcheck559, %iter.check578, %vec.epilog.iter.check580, %vec.epilog.middle.block590
  %indvars.iv436.ph = phi i64 [ %i.ax, %iter.check578 ], [ %i.ax, %vector.memcheck559 ], [ %i.cb, %vec.epilog.iter.check580 ], [ %i.cc, %vec.epilog.middle.block590 ] ; 8 uses
  %i.jo = sub nsw i64 %i.bb, %indvars.iv436.ph
  %xtraiter752 = and i64 %i.jo, 1
  %lcmp.mod753.not = icmp eq i64 %xtraiter752, 0
  br i1 %lcmp.mod753.not, label %.lr.ph366.prol.loopexit, label %.lr.ph366.prol

.lr.ph366.prol:                                   ; preds = %.lr.ph366.preheader
  %i.jp = getelementptr inbounds i8, ptr %i.dn, i64 %indvars.iv436.ph
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !24
  %i.jr = getelementptr inbounds i8, ptr %i.di, i64 %indvars.iv436.ph
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !24
  %i.jt = zext i8 %i.js to i16
  %i.ju = sub nsw i64 %indvars.iv436.ph, %i.ax
  %i.jv = getelementptr inbounds i8, ptr %i.dd, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !24
  %i.jx = zext i8 %i.jw to i16
  %i.jy = add nuw nsw i16 %i.jx, %i.jt
  %i.jz = lshr i16 %i.jy, 1
  %.tr287.prol = trunc nuw i16 %i.jz to i8
  %.narrow288.prol = add i8 %i.jq, %.tr287.prol
  %i.ka = getelementptr inbounds i8, ptr %i.dd, i64 %indvars.iv436.ph
  store i8 %.narrow288.prol, ptr %i.ka, align 1, !tbaa !24
  %indvars.iv.next437.prol = add nsw i64 %indvars.iv436.ph, 1
  br label %.lr.ph366.prol.loopexit

.lr.ph366.prol.loopexit:                          ; preds = %.lr.ph366.prol, %.lr.ph366.preheader
  %indvars.iv436.unr = phi i64 [ %indvars.iv436.ph, %.lr.ph366.preheader ], [ %indvars.iv.next437.prol, %.lr.ph366.prol ]
  %i.kb = icmp eq i64 %indvars.iv436.ph, %i.cd
  br i1 %i.kb, label %.loopexit348, label %.lr.ph366

.lr.ph364:                                        ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364
  %indvars.iv431 = phi i64 [ %indvars.iv.next432.1, %.lr.ph364 ], [ %indvars.iv431.unr, %.lr.ph364.prol.loopexit ] ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv431
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv431
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !24
  %i.kg = lshr i8 %i.kf, 1
  %.narrow290 = add i8 %i.kg, %i.kd
  %i.kh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv431
  store i8 %.narrow290, ptr %i.kh, align 1, !tbaa !24
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.next432
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !24
  %i.kk = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next432
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !24
  %i.km = lshr i8 %i.kl, 1
  %.narrow290.1 = add i8 %i.km, %i.kj
  %i.kn = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.next432
  store i8 %.narrow290.1, ptr %i.kn, align 1, !tbaa !24
  %indvars.iv.next432.1 = add nuw nsw i64 %indvars.iv431, 2 ; 2 uses
  %exitcond435.not.1 = icmp eq i64 %indvars.iv.next432.1, %wide.trip.count434
  br i1 %exitcond435.not.1, label %.preheader351, label %.lr.ph364, !llvm.loop !446

.lr.ph366:                                        ; preds = %.lr.ph366.prol.loopexit, %.lr.ph366
  %indvars.iv436 = phi i64 [ %indvars.iv.next437.1, %.lr.ph366 ], [ %indvars.iv436.unr, %.lr.ph366.prol.loopexit ] ; 6 uses
  %i.ko = getelementptr inbounds i8, ptr %i.dn, i64 %indvars.iv436
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !24
  %i.kq = getelementptr inbounds i8, ptr %i.di, i64 %indvars.iv436
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !24
  %i.ks = zext i8 %i.kr to i16
  %i.kt = sub nsw i64 %indvars.iv436, %i.ax
  %i.ku = getelementptr inbounds i8, ptr %i.dd, i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !24
  %i.kw = zext i8 %i.kv to i16
  %i.kx = add nuw nsw i16 %i.kw, %i.ks
  %i.ky = lshr i16 %i.kx, 1
  %.tr287 = trunc nuw i16 %i.ky to i8
  %.narrow288 = add i8 %i.kp, %.tr287
  %i.kz = getelementptr inbounds i8, ptr %i.dd, i64 %indvars.iv436
  store i8 %.narrow288, ptr %i.kz, align 1, !tbaa !24
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1 ; 4 uses
  %i.la = getelementptr inbounds i8, ptr %i.dn, i64 %indvars.iv.next437
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !24
  %i.lc = getelementptr inbounds i8, ptr %i.di, i64 %indvars.iv.next437
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !24
  %i.le = zext i8 %i.ld to i16
  %i.lf = sub nsw i64 %indvars.iv.next437, %i.ax
  %i.lg = getelementptr inbounds i8, ptr %i.dd, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !24
  %i.li = zext i8 %i.lh to i16
  %i.lj = add nuw nsw i16 %i.li, %i.le
  %i.lk = lshr i16 %i.lj, 1
  %.tr287.1 = trunc nuw i16 %i.lk to i8
  %.narrow288.1 = add i8 %i.lb, %.tr287.1
  %i.ll = getelementptr inbounds i8, ptr %i.dd, i64 %indvars.iv.next437
  store i8 %.narrow288.1, ptr %i.ll, align 1, !tbaa !24
  %indvars.iv.next437.1 = add nsw i64 %indvars.iv436, 2 ; 2 uses
  %exitcond440.not.1 = icmp eq i64 %indvars.iv.next437.1, %i.bb
  br i1 %exitcond440.not.1, label %.loopexit348, label %.lr.ph366, !llvm.loop !447

.preheader354:                                    ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360, %middle.block679, %vec.epilog.middle.block693, %.preheader356
  br i1 %i.ay, label %iter.check648, label %.loopexit348

iter.check648:                                    ; preds = %.preheader354
  br i1 %min.iters.check632, label %.lr.ph362.preheader, label %vector.memcheck625

vector.memcheck625:                               ; preds = %iter.check648
  %i.lm = sub nsw i64 %i.dh, %i.dc
  %diff.check627 = icmp ugt i64 %i.lm, -16
  %conflict.rdx628 = or i1 %diff.check626, %diff.check627
  %i.ln = add nsw i64 %i.dc, %i.ax
  %i.lo = sub nsw i64 %i.dh, %i.ln
  %diff.check629 = icmp ugt i64 %i.lo, -16
  %conflict.rdx630 = or i1 %conflict.rdx628, %diff.check629
  br i1 %conflict.rdx630, label %.lr.ph362.preheader, label %vector.main.loop.iter.check633

vector.main.loop.iter.check633:                   ; preds = %vector.memcheck625
  br i1 %min.iters.check634, label %vec.epilog.ph652, label %vector.body637

vector.body637:                                   ; preds = %vector.main.loop.iter.check633, %vector.body637
  %index638 = phi i64 [ %index.next643, %vector.body637 ], [ 0, %vector.main.loop.iter.check633 ] ; 4 uses
  %i.lp = add i64 %index638, %i.ax                ; 3 uses
  %i.lq = getelementptr inbounds i8, ptr %i.dn, i64 %i.lp
  %wide.load639 = load <16 x i8>, ptr %i.lq, align 1, !tbaa !24
  %i.lr = getelementptr inbounds i8, ptr %i.dd, i64 %index638
  %wide.load640 = load <16 x i8>, ptr %i.lr, align 1, !tbaa !24
  %i.ls = zext <16 x i8> %wide.load640 to <16 x i32> ; 3 uses
  %i.lt = getelementptr inbounds i8, ptr %i.di, i64 %i.lp
  %wide.load641 = load <16 x i8>, ptr %i.lt, align 1, !tbaa !24
  %i.lu = zext <16 x i8> %wide.load641 to <16 x i32> ; 3 uses
  %i.lv = getelementptr inbounds i8, ptr %i.di, i64 %index638
  %wide.load642 = load <16 x i8>, ptr %i.lv, align 1, !tbaa !24
  %i.lw = zext <16 x i8> %wide.load642 to <16 x i32> ; 2 uses
  %i.lx = mul nuw nsw <16 x i32> %i.lw, splat (i32 3)
  %i.ly = add nuw nsw <16 x i32> %i.lu, %i.ls
  %i.lz = sub nsw <16 x i32> %i.lx, %i.ly         ; 2 uses
  %i.ma = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ls, <16 x i32> %i.lu) ; 2 uses
  %i.mb = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.ls, <16 x i32> %i.lu) ; 2 uses
  %i.mc = icmp sgt <16 x i32> %i.mb, %i.lz
  %i.md = select <16 x i1> %i.mc, <16 x i32> %i.lw, <16 x i32> %i.ma
  %i.me = icmp sgt <16 x i32> %i.lz, %i.ma
  %i.mf = select <16 x i1> %i.me, <16 x i32> %i.md, <16 x i32> %i.mb
  %i.mg = trunc nuw <16 x i32> %i.mf to <16 x i8>
  %i.mh = add <16 x i8> %wide.load639, %i.mg
  %i.mi = getelementptr inbounds i8, ptr %i.dd, i64 %i.lp
  store <16 x i8> %i.mh, ptr %i.mi, align 1, !tbaa !24
  %index.next643 = add nuw i64 %index638, 16      ; 2 uses
  %i.mj = icmp eq i64 %index.next643, %n.vec636
  br i1 %i.mj, label %middle.block644, label %vector.body637, !llvm.loop !448

middle.block644:                                  ; preds = %vector.body637
  br i1 %cmp.n645, label %.loopexit348, label %vec.epilog.iter.check650

vec.epilog.iter.check650:                         ; preds = %middle.block644
  br i1 %min.epilog.iters.check651, label %.lr.ph362.preheader, label %vec.epilog.ph652, !prof !148

vec.epilog.ph652:                                 ; preds = %vector.main.loop.iter.check633, %vec.epilog.iter.check650
  %vec.epilog.resume.val646 = phi i64 [ %n.vec636, %vec.epilog.iter.check650 ], [ 0, %vector.main.loop.iter.check633 ]
  br label %vec.epilog.vector.body654

vec.epilog.vector.body654:                        ; preds = %vec.epilog.vector.body654, %vec.epilog.ph652
  %index655 = phi i64 [ %vec.epilog.resume.val646, %vec.epilog.ph652 ], [ %index.next660, %vec.epilog.vector.body654 ] ; 4 uses
  %i.mk = add i64 %index655, %i.ax                ; 3 uses
  %i.ml = getelementptr inbounds i8, ptr %i.dn, i64 %i.mk
  %wide.load656 = load <4 x i8>, ptr %i.ml, align 1, !tbaa !24
  %i.mm = getelementptr inbounds i8, ptr %i.dd, i64 %index655
  %wide.load657 = load <4 x i8>, ptr %i.mm, align 1, !tbaa !24
  %i.mn = zext <4 x i8> %wide.load657 to <4 x i32> ; 3 uses
  %i.mo = getelementptr inbounds i8, ptr %i.di, i64 %i.mk
  %wide.load658 = load <4 x i8>, ptr %i.mo, align 1, !tbaa !24
  %i.mp = zext <4 x i8> %wide.load658 to <4 x i32> ; 3 uses
  %i.mq = getelementptr inbounds i8, ptr %i.di, i64 %index655
  %wide.load659 = load <4 x i8>, ptr %i.mq, align 1, !tbaa !24
  %i.mr = zext <4 x i8> %wide.load659 to <4 x i32> ; 2 uses
  %i.ms = mul nuw nsw <4 x i32> %i.mr, splat (i32 3)
  %i.mt = add nuw nsw <4 x i32> %i.mp, %i.mn
  %i.mu = sub nsw <4 x i32> %i.ms, %i.mt          ; 2 uses
  %i.mv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mn, <4 x i32> %i.mp) ; 2 uses
  %i.mw = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.mn, <4 x i32> %i.mp) ; 2 uses
  %i.mx = icmp sgt <4 x i32> %i.mw, %i.mu
  %i.my = select <4 x i1> %i.mx, <4 x i32> %i.mr, <4 x i32> %i.mv
  %i.mz = icmp sgt <4 x i32> %i.mu, %i.mv
  %i.na = select <4 x i1> %i.mz, <4 x i32> %i.my, <4 x i32> %i.mw
  %i.nb = trunc nuw <4 x i32> %i.na to <4 x i8>
  %i.nc = add <4 x i8> %wide.load656, %i.nb
  %i.nd = getelementptr inbounds i8, ptr %i.dd, i64 %i.mk
  store <4 x i8> %i.nc, ptr %i.nd, align 1, !tbaa !24
  %index.next660 = add nuw i64 %index655, 4       ; 2 uses
  %i.ne = icmp eq i64 %index.next660, %n.vec653
  br i1 %i.ne, label %vec.epilog.middle.block661, label %vec.epilog.vector.body654, !llvm.loop !449

vec.epilog.middle.block661:                       ; preds = %vec.epilog.vector.body654
  br i1 %cmp.n662, label %.loopexit348, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %vector.memcheck625, %iter.check648, %vec.epilog.iter.check650, %vec.epilog.middle.block661
  %indvars.iv426.ph = phi i64 [ %i.ax, %iter.check648 ], [ %i.ax, %vector.memcheck625 ], [ %i.bv, %vec.epilog.iter.check650 ], [ %i.bw, %vec.epilog.middle.block661 ]
  br label %.lr.ph362

.lr.ph360:                                        ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360
  %indvars.iv421 = phi i64 [ %indvars.iv.next422.3, %.lr.ph360 ], [ %indvars.iv421.unr, %.lr.ph360.prol.loopexit ] ; 7 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv421
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !24
  %i.nh = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv421
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !24
  %.narrow286 = add i8 %i.ni, %i.ng
  %i.nj = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv421
  store i8 %.narrow286, ptr %i.nj, align 1, !tbaa !24
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.next422
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !24
  %i.nm = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next422
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !24
  %.narrow286.1 = add i8 %i.nn, %i.nl
  %i.no = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.next422
  store i8 %.narrow286.1, ptr %i.no, align 1, !tbaa !24
  %indvars.iv.next422.1 = add nuw nsw i64 %indvars.iv421, 2 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.next422.1
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !24
  %i.nr = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next422.1
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !24
  %.narrow286.2 = add i8 %i.ns, %i.nq
  %i.nt = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.next422.1
  store i8 %.narrow286.2, ptr %i.nt, align 1, !tbaa !24
  %indvars.iv.next422.2 = add nuw nsw i64 %indvars.iv421, 3 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.next422.2
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !24
  %i.nw = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next422.2
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !24
  %.narrow286.3 = add i8 %i.nx, %i.nv
  %i.ny = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.next422.2
  store i8 %.narrow286.3, ptr %i.ny, align 1, !tbaa !24
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %exitcond425.not.3 = icmp eq i64 %indvars.iv.next422.3, %wide.trip.count424
  br i1 %exitcond425.not.3, label %.preheader354, label %.lr.ph360, !llvm.loop !450

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %.lr.ph362 ], [ %indvars.iv426.ph, %.lr.ph362.preheader ] ; 5 uses
  %i.nz = getelementptr inbounds i8, ptr %i.dn, i64 %indvars.iv426
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !24
  %i.ob = sub nsw i64 %indvars.iv426, %i.ax       ; 2 uses
  %i.oc = getelementptr inbounds i8, ptr %i.dd, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !24
  %i.oe = zext i8 %i.od to i32                    ; 3 uses
  %i.of = getelementptr inbounds i8, ptr %i.di, i64 %indvars.iv426
  %i.og = load i8, ptr %i.of, align 1, !tbaa !24
  %i.oh = zext i8 %i.og to i32                    ; 3 uses
  %i.oi = getelementptr inbounds i8, ptr %i.di, i64 %i.ob
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !24
  %i.ok = zext i8 %i.oj to i32                    ; 2 uses
  %i.ol = mul nuw nsw i32 %i.ok, 3
  %i.om = add nuw nsw i32 %i.oh, %i.oe
  %i.on = sub nsw i32 %i.ol, %i.om                ; 2 uses
  %i.oo = tail call i32 @llvm.umin.i32(i32 %i.oe, i32 %i.oh) ; 2 uses
  %i.op = tail call i32 @llvm.umax.i32(i32 %i.oe, i32 %i.oh) ; 2 uses
  %.not.i303 = icmp sgt i32 %i.op, %i.on
  %i.oq = select i1 %.not.i303, i32 %i.ok, i32 %i.oo
  %.not20.i = icmp sgt i32 %i.on, %i.oo
  %i.or = select i1 %.not20.i, i32 %i.oq, i32 %i.op
  %.tr = trunc nuw i32 %i.or to i8
  %.narrow284 = add i8 %i.oa, %.tr
  %i.os = getelementptr inbounds i8, ptr %i.dd, i64 %indvars.iv426
  store i8 %.narrow284, ptr %i.os, align 1, !tbaa !24
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %i.bb
  br i1 %exitcond430.not, label %.loopexit348, label %.lr.ph362, !llvm.loop !451

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %i.dn, i64 %i.ax, i1 false)
  br i1 %i.ay, label %iter.check715, label %.loopexit348

iter.check715:                                    ; preds = %bb.s
  br i1 %or.cond733, label %.lr.ph.preheader, label %vector.main.loop.iter.check700

vector.main.loop.iter.check700:                   ; preds = %iter.check715
  br i1 %min.iters.check701, label %vec.epilog.ph719, label %vector.body704

vector.body704:                                   ; preds = %vector.main.loop.iter.check700, %vector.body704
  %index705 = phi i64 [ %index.next710, %vector.body704 ], [ 0, %vector.main.loop.iter.check700 ] ; 3 uses
  %i.ot = add i64 %index705, %i.ax                ; 2 uses
  %i.ou = getelementptr inbounds i8, ptr %i.dn, i64 %i.ot ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %wide.load706 = load <16 x i8>, ptr %i.ou, align 1, !tbaa !24
  %wide.load707 = load <16 x i8>, ptr %i.ov, align 1, !tbaa !24
  %i.ow = getelementptr inbounds i8, ptr %i.dd, i64 %index705 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %wide.load708 = load <16 x i8>, ptr %i.ow, align 1, !tbaa !24
  %wide.load709 = load <16 x i8>, ptr %i.ox, align 1, !tbaa !24
  %i.oy = lshr <16 x i8> %wide.load708, splat (i8 1)
  %i.oz = lshr <16 x i8> %wide.load709, splat (i8 1)
  %i.pa = add <16 x i8> %i.oy, %wide.load706
  %i.pb = add <16 x i8> %i.oz, %wide.load707
  %i.pc = getelementptr inbounds i8, ptr %i.dd, i64 %i.ot ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  store <16 x i8> %i.pa, ptr %i.pc, align 1, !tbaa !24
  store <16 x i8> %i.pb, ptr %i.pd, align 1, !tbaa !24
  %index.next710 = add nuw i64 %index705, 32      ; 2 uses
  %i.pe = icmp eq i64 %index.next710, %n.vec703
  br i1 %i.pe, label %middle.block711, label %vector.body704, !llvm.loop !452

middle.block711:                                  ; preds = %vector.body704
  br i1 %cmp.n712, label %.loopexit348, label %vec.epilog.iter.check717

vec.epilog.iter.check717:                         ; preds = %middle.block711
  br i1 %min.epilog.iters.check718, label %.lr.ph.preheader, label %vec.epilog.ph719, !prof !141

vec.epilog.ph719:                                 ; preds = %vector.main.loop.iter.check700, %vec.epilog.iter.check717
  %vec.epilog.resume.val713 = phi i64 [ %n.vec703, %vec.epilog.iter.check717 ], [ 0, %vector.main.loop.iter.check700 ]
  br label %vec.epilog.vector.body721

vec.epilog.vector.body721:                        ; preds = %vec.epilog.vector.body721, %vec.epilog.ph719
  %index722 = phi i64 [ %vec.epilog.resume.val713, %vec.epilog.ph719 ], [ %index.next725, %vec.epilog.vector.body721 ] ; 3 uses
  %i.pf = add i64 %index722, %i.ax                ; 2 uses
  %i.pg = getelementptr inbounds i8, ptr %i.dn, i64 %i.pf
  %wide.load723 = load <8 x i8>, ptr %i.pg, align 1, !tbaa !24
  %i.ph = getelementptr inbounds i8, ptr %i.dd, i64 %index722
  %wide.load724 = load <8 x i8>, ptr %i.ph, align 1, !tbaa !24
  %i.pi = lshr <8 x i8> %wide.load724, splat (i8 1)
  %i.pj = add <8 x i8> %i.pi, %wide.load723
  %i.pk = getelementptr inbounds i8, ptr %i.dd, i64 %i.pf
  store <8 x i8> %i.pj, ptr %i.pk, align 1, !tbaa !24
  %index.next725 = add nuw i64 %index722, 8       ; 2 uses
  %i.pl = icmp eq i64 %index.next725, %n.vec720
  br i1 %i.pl, label %vec.epilog.middle.block726, label %vec.epilog.vector.body721, !llvm.loop !453

vec.epilog.middle.block726:                       ; preds = %vec.epilog.vector.body721
  br i1 %cmp.n727, label %.loopexit348, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check715, %vec.epilog.iter.check717, %vec.epilog.middle.block726
  %indvars.iv.ph = phi i64 [ %i.ax, %iter.check715 ], [ %i.bp, %vec.epilog.iter.check717 ], [ %i.bq, %vec.epilog.middle.block726 ] ; 7 uses
  %i.pm = sub nsw i64 %i.bb, %indvars.iv.ph
  %xtraiter = and i64 %i.pm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.pn = getelementptr inbounds i8, ptr %i.dn, i64 %indvars.iv.ph
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !24
  %i.pp = sub nsw i64 %indvars.iv.ph, %i.ax
  %i.pq = getelementptr inbounds i8, ptr %i.dd, i64 %i.pp
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !24
  %i.ps = lshr i8 %i.pr, 1
  %.narrow.prol = add i8 %i.ps, %i.po
  %i.pt = getelementptr inbounds i8, ptr %i.dd, i64 %indvars.iv.ph
  store i8 %.narrow.prol, ptr %i.pt, align 1, !tbaa !24
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.pu = icmp eq i64 %indvars.iv.ph, %i.br
  br i1 %i.pu, label %.loopexit348, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.pv = getelementptr inbounds i8, ptr %i.dn, i64 %indvars.iv
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !24
  %i.px = sub nsw i64 %indvars.iv, %i.ax
  %i.py = getelementptr inbounds i8, ptr %i.dd, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !24
  %i.qa = lshr i8 %i.pz, 1
  %.narrow = add i8 %i.qa, %i.pw
  %i.qb = getelementptr inbounds i8, ptr %i.dd, i64 %indvars.iv
  store i8 %.narrow, ptr %i.qb, align 1, !tbaa !24
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.qc = getelementptr inbounds i8, ptr %i.dn, i64 %indvars.iv.next
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !24
  %i.qe = sub nsw i64 %indvars.iv.next, %i.ax
  %i.qf = getelementptr inbounds i8, ptr %i.dd, i64 %i.qe
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !24
  %i.qh = lshr i8 %i.qg, 1
  %.narrow.1 = add i8 %i.qh, %i.qd
  %i.qi = getelementptr inbounds i8, ptr %i.dd, i64 %indvars.iv.next
  store i8 %.narrow.1, ptr %i.qi, align 1, !tbaa !24
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.bb
  br i1 %exitcond.not.1, label %.loopexit348, label %.lr.ph, !llvm.loop !454

.loopexit348:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph362, %.lr.ph366.prol.loopexit, %.lr.ph366, %.lr.ph368.prol.loopexit, %.lr.ph368, %.lr.ph370.prol.loopexit, %.lr.ph370, %middle.block711, %vec.epilog.middle.block726, %middle.block644, %vec.epilog.middle.block661, %middle.block574, %vec.epilog.middle.block590, %middle.block542, %vec.epilog.middle.block556, %middle.block517, %vec.epilog.middle.block, %bb.s, %.preheader354, %.preheader351, %.preheader349, %bb.r, %bb.q, %bb.p
  %i.qj = getelementptr inbounds i8, ptr %i.dn, i64 %i.bb
  br i1 %i.au, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %.loopexit348
  br i1 %i.bi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.qk = load i8, ptr %i.bj, align 1, !tbaa !24
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ql = phi i8 [ %i.qk, %bb.u ], [ 1, %bb.t ]   ; 9 uses
  switch i32 %6, label %.preheader [
    i32 4, label %.preheader336
    i32 2, label %.preheader338
  ]

.preheader338:                                    ; preds = %bb.v
  br i1 %.not404, label %.loopexit335, label %.lr.ph387.preheader

.lr.ph387.preheader:                              ; preds = %.preheader338
  br i1 %i.cs, label %.lr.ph387.epil.preheader, label %.lr.ph387

.preheader336:                                    ; preds = %bb.v
  br i1 %.not404, label %.loopexit335, label %.lr.ph392.preheader

.lr.ph392.preheader:                              ; preds = %.preheader336
  br i1 %i.ct, label %.lr.ph392.epil.preheader, label %.lr.ph392

.preheader:                                       ; preds = %bb.v
  br i1 %.not404, label %.loopexit335, label %.lr.ph397.preheader

.lr.ph397.preheader:                              ; preds = %.preheader
  br i1 %i.cu, label %.lr.ph397.epil.preheader, label %.lr.ph397

.lr.ph392:                                        ; preds = %.lr.ph392.preheader, %.lr.ph392
  %.0239390 = phi ptr [ %i.qt, %.lr.ph392 ], [ %i.dm, %.lr.ph392.preheader ] ; 3 uses
  %.0242389 = phi ptr [ %i.qm, %.lr.ph392 ], [ %i.dd, %.lr.ph392.preheader ] ; 2 uses
  %.0265388 = phi i32 [ %i.qu, %.lr.ph392 ], [ 0, %.lr.ph392.preheader ]
  %niter783 = phi i32 [ %niter783.next.1, %.lr.ph392 ], [ 0, %.lr.ph392.preheader ]
  %i.qm = getelementptr inbounds nuw i8, ptr %.0242389, i64 1 ; 2 uses
  %i.qn = load i8, ptr %.0242389, align 1, !tbaa !24 ; 2 uses
  %i.qo = lshr i8 %i.qn, 4
  %i.qp = mul i8 %i.qo, %i.ql
  %i.qq = getelementptr inbounds nuw i8, ptr %.0239390, i64 1
  store i8 %i.qp, ptr %.0239390, align 1, !tbaa !24
  %i.qr = and i8 %i.qn, 15
  %i.qs = mul i8 %i.qr, %i.ql
  %i.qt = getelementptr inbounds nuw i8, ptr %.0239390, i64 2 ; 2 uses
  store i8 %i.qs, ptr %i.qq, align 1, !tbaa !24
  %i.qu = add nuw i32 %.0265388, 2                ; 2 uses
  %niter783.next.1 = add i32 %niter783, 2         ; 2 uses
  %niter783.ncmp.1 = icmp eq i32 %niter783.next.1, %unroll_iter782
  br i1 %niter783.ncmp.1, label %.loopexit335.loopexit735.unr-lcssa, label %.lr.ph392, !llvm.loop !455

.lr.ph387:                                        ; preds = %.lr.ph387.preheader, %.lr.ph387.1
  %.2238386 = phi i8 [ %i.rg, %.lr.ph387.1 ], [ 0, %.lr.ph387.preheader ]
  %.1240385 = phi ptr [ %i.rf, %.lr.ph387.1 ], [ %i.dm, %.lr.ph387.preheader ] ; 3 uses
  %.2244384 = phi ptr [ %.3245, %.lr.ph387.1 ], [ %i.dd, %.lr.ph387.preheader ] ; 3 uses
  %.1266383 = phi i32 [ %i.rh, %.lr.ph387.1 ], [ 0, %.lr.ph387.preheader ] ; 2 uses
  %niter777 = phi i32 [ %niter777.next.1, %.lr.ph387.1 ], [ 0, %.lr.ph387.preheader ]
  %i.qv = and i32 %.1266383, 2
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %bb.w, label %.lr.ph387.1

bb.w:                                             ; preds = %.lr.ph387
  %i.qx = getelementptr inbounds nuw i8, ptr %.2244384, i64 1
  %i.qy = load i8, ptr %.2244384, align 1, !tbaa !24
  br label %.lr.ph387.1

.lr.ph387.1:                                      ; preds = %bb.w, %.lr.ph387
  %.3245 = phi ptr [ %i.qx, %bb.w ], [ %.2244384, %.lr.ph387 ] ; 2 uses
  %.3 = phi i8 [ %i.qy, %bb.w ], [ %.2238386, %.lr.ph387 ] ; 3 uses
  %i.qz = lshr i8 %.3, 6
  %i.ra = mul i8 %i.qz, %i.ql
  %i.rb = getelementptr inbounds nuw i8, ptr %.1240385, i64 1
  store i8 %i.ra, ptr %.1240385, align 1, !tbaa !24
  %i.rc = lshr i8 %.3, 4
  %i.rd = and i8 %i.rc, 3
  %i.re = mul i8 %i.rd, %i.ql
  %i.rf = getelementptr inbounds nuw i8, ptr %.1240385, i64 2 ; 2 uses
  store i8 %i.re, ptr %i.rb, align 1, !tbaa !24
  %i.rg = shl i8 %.3, 4                           ; 2 uses
  %i.rh = add nuw i32 %.1266383, 2                ; 2 uses
  %niter777.next.1 = add i32 %niter777, 2         ; 2 uses
  %niter777.ncmp.1 = icmp eq i32 %niter777.next.1, %unroll_iter776
  br i1 %niter777.ncmp.1, label %.loopexit335.loopexit736.unr-lcssa, label %.lr.ph387, !llvm.loop !456

.lr.ph397:                                        ; preds = %.lr.ph397.preheader, %.lr.ph397.1
  %.4396 = phi i8 [ %i.rq, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %.2241395 = phi ptr [ %i.rp, %.lr.ph397.1 ], [ %i.dm, %.lr.ph397.preheader ] ; 3 uses
  %.4246394 = phi ptr [ %.5247, %.lr.ph397.1 ], [ %i.dd, %.lr.ph397.preheader ] ; 3 uses
  %.2267393 = phi i32 [ %i.rr, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ] ; 2 uses
  %niter789 = phi i32 [ %niter789.next.1, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %i.ri = and i32 %.2267393, 6
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %bb.x, label %.lr.ph397.1

bb.x:                                             ; preds = %.lr.ph397
  %i.rk = getelementptr inbounds nuw i8, ptr %.4246394, i64 1
  %i.rl = load i8, ptr %.4246394, align 1, !tbaa !24
  br label %.lr.ph397.1

.lr.ph397.1:                                      ; preds = %bb.x, %.lr.ph397
  %.5247 = phi ptr [ %i.rk, %bb.x ], [ %.4246394, %.lr.ph397 ] ; 2 uses
  %.5 = phi i8 [ %i.rl, %bb.x ], [ %.4396, %.lr.ph397 ] ; 3 uses
  %isneg = icmp slt i8 %.5, 0
  %i.rm = select i1 %isneg, i8 %i.ql, i8 0
  %i.rn = getelementptr inbounds nuw i8, ptr %.2241395, i64 1
  store i8 %i.rm, ptr %.2241395, align 1, !tbaa !24
  %.mask = and i8 %.5, 64
  %isneg.1.not = icmp eq i8 %.mask, 0
  %i.ro = select i1 %isneg.1.not, i8 0, i8 %i.ql
  %i.rp = getelementptr inbounds nuw i8, ptr %.2241395, i64 2 ; 2 uses
  store i8 %i.ro, ptr %i.rn, align 1, !tbaa !24
  %i.rq = shl i8 %.5, 2                           ; 2 uses
  %i.rr = add nuw i32 %.2267393, 2                ; 2 uses
  %niter789.next.1 = add i32 %niter789, 2         ; 2 uses
  %niter789.ncmp.1 = icmp eq i32 %niter789.next.1, %unroll_iter788
  br i1 %niter789.ncmp.1, label %.loopexit335.loopexit.unr-lcssa, label %.lr.ph397, !llvm.loop !457

.loopexit335.loopexit.unr-lcssa:                  ; preds = %.lr.ph397.1
  br i1 %lcmp.mod786.not, label %.loopexit335, label %.lr.ph397.epil.preheader

.lr.ph397.epil.preheader:                         ; preds = %.loopexit335.loopexit.unr-lcssa, %.lr.ph397.preheader
  %.4396.epil.init = phi i8 [ 0, %.lr.ph397.preheader ], [ %i.rq, %.loopexit335.loopexit.unr-lcssa ]
  %.2241395.epil.init = phi ptr [ %i.dm, %.lr.ph397.preheader ], [ %i.rp, %.loopexit335.loopexit.unr-lcssa ]
  %.4246394.epil.init = phi ptr [ %i.dd, %.lr.ph397.preheader ], [ %.5247, %.loopexit335.loopexit.unr-lcssa ]
  %.2267393.epil.init = phi i32 [ 0, %.lr.ph397.preheader ], [ %i.rr, %.loopexit335.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod787)
  %i.rs = and i32 %.2267393.epil.init, 7
  %i.rt = icmp eq i32 %i.rs, 0
  br i1 %i.rt, label %bb.y, label %.loopexit335.loopexit.epilog-lcssa

bb.y:                                             ; preds = %.lr.ph397.epil.preheader
  %i.ru = load i8, ptr %.4246394.epil.init, align 1, !tbaa !24
  br label %.loopexit335.loopexit.epilog-lcssa

.loopexit335.loopexit.epilog-lcssa:               ; preds = %bb.y, %.lr.ph397.epil.preheader
  %.5.epil = phi i8 [ %i.ru, %bb.y ], [ %.4396.epil.init, %.lr.ph397.epil.preheader ]
  %isneg.epil = icmp slt i8 %.5.epil, 0
  %i.rv = select i1 %isneg.epil, i8 %i.ql, i8 0
  store i8 %i.rv, ptr %.2241395.epil.init, align 1, !tbaa !24
  br label %.loopexit335

.loopexit335.loopexit735.unr-lcssa:               ; preds = %.lr.ph392
  br i1 %lcmp.mod780.not, label %.loopexit335, label %.lr.ph392.epil.preheader

.lr.ph392.epil.preheader:                         ; preds = %.loopexit335.loopexit735.unr-lcssa, %.lr.ph392.preheader
  %.0239390.epil.init = phi ptr [ %i.dm, %.lr.ph392.preheader ], [ %i.qt, %.loopexit335.loopexit735.unr-lcssa ]
  %.0242389.epil.init = phi ptr [ %i.dd, %.lr.ph392.preheader ], [ %i.qm, %.loopexit335.loopexit735.unr-lcssa ]
  %.0265388.epil.init = phi i32 [ 0, %.lr.ph392.preheader ], [ %i.qu, %.loopexit335.loopexit735.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod781)
  %i.rw = and i32 %.0265388.epil.init, 1
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %bb.z, label %.loopexit335.loopexit735.epilog-lcssa

bb.z:                                             ; preds = %.lr.ph392.epil.preheader
  %i.ry = load i8, ptr %.0242389.epil.init, align 1, !tbaa !24
  %i.rz = lshr i8 %i.ry, 4
  %i.sa = mul i8 %i.rz, %i.ql
  br label %.loopexit335.loopexit735.epilog-lcssa

.loopexit335.loopexit735.epilog-lcssa:            ; preds = %bb.z, %.lr.ph392.epil.preheader
  %.1237.epil = phi i8 [ %i.sa, %bb.z ], [ 0, %.lr.ph392.epil.preheader ]
  store i8 %.1237.epil, ptr %.0239390.epil.init, align 1, !tbaa !24
  br label %.loopexit335

.loopexit335.loopexit736.unr-lcssa:               ; preds = %.lr.ph387.1
  br i1 %lcmp.mod774.not, label %.loopexit335, label %.lr.ph387.epil.preheader

.lr.ph387.epil.preheader:                         ; preds = %.loopexit335.loopexit736.unr-lcssa, %.lr.ph387.preheader
  %.2238386.epil.init = phi i8 [ 0, %.lr.ph387.preheader ], [ %i.rg, %.loopexit335.loopexit736.unr-lcssa ]
  %.1240385.epil.init = phi ptr [ %i.dm, %.lr.ph387.preheader ], [ %i.rf, %.loopexit335.loopexit736.unr-lcssa ]
  %.2244384.epil.init = phi ptr [ %i.dd, %.lr.ph387.preheader ], [ %.3245, %.loopexit335.loopexit736.unr-lcssa ]
  %.1266383.epil.init = phi i32 [ 0, %.lr.ph387.preheader ], [ %i.rh, %.loopexit335.loopexit736.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod775)
  %i.sb = and i32 %.1266383.epil.init, 3
  %i.sc = icmp eq i32 %i.sb, 0
  br i1 %i.sc, label %bb.aa, label %.loopexit335.loopexit736.epilog-lcssa

bb.aa:                                            ; preds = %.lr.ph387.epil.preheader
  %i.sd = load i8, ptr %.2244384.epil.init, align 1, !tbaa !24
  br label %.loopexit335.loopexit736.epilog-lcssa

.loopexit335.loopexit736.epilog-lcssa:            ; preds = %bb.aa, %.lr.ph387.epil.preheader
  %.3.epil = phi i8 [ %i.sd, %bb.aa ], [ %.2238386.epil.init, %.lr.ph387.epil.preheader ]
  %i.se = lshr i8 %.3.epil, 6
  %i.sf = mul i8 %i.se, %i.ql
  store i8 %i.sf, ptr %.1240385.epil.init, align 1, !tbaa !24
end_hunk_1
begin_hunk_2_@stbi__create_png_image_raw:bb.a
  %niter768 = phi i32 [ %niter768.next.3, %.lr.ph382 ], [ 0, %.lr.ph382.preheader ]
  %i.wh = load i8, ptr %.0249380, align 1, !tbaa !24
  %i.wi = zext i8 %i.wh to i16
  %i.wj = shl nuw i16 %i.wi, 8
  %i.wk = getelementptr inbounds nuw i8, ptr %.0249380, i64 1
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !24
  %i.wm = zext i8 %i.wl to i16
  %i.wn = or disjoint i16 %i.wj, %i.wm
  store i16 %i.wn, ptr %.0381, align 2, !tbaa !85
  %i.wo = getelementptr inbounds nuw i8, ptr %.0381, i64 2
  %i.wp = getelementptr inbounds nuw i8, ptr %.0249380, i64 2
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !24
  %i.wr = zext i8 %i.wq to i16
  %i.ws = shl nuw i16 %i.wr, 8
  %i.wt = getelementptr inbounds nuw i8, ptr %.0249380, i64 3
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !24
  %i.wv = zext i8 %i.wu to i16
  %i.ww = or disjoint i16 %i.ws, %i.wv
  store i16 %i.ww, ptr %i.wo, align 2, !tbaa !85
  %i.wx = getelementptr inbounds nuw i8, ptr %.0381, i64 4
  %i.wy = getelementptr inbounds nuw i8, ptr %.0249380, i64 4
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !24
  %i.xa = zext i8 %i.wz to i16
  %i.xb = shl nuw i16 %i.xa, 8
  %i.xc = getelementptr inbounds nuw i8, ptr %.0249380, i64 5
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !24
  %i.xe = zext i8 %i.xd to i16
  %i.xf = or disjoint i16 %i.xb, %i.xe
  store i16 %i.xf, ptr %i.wx, align 2, !tbaa !85
  %i.xg = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.xh = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !24
  %i.xj = zext i8 %i.xi to i16
  %i.xk = shl nuw i16 %i.xj, 8
  %i.xl = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !24
  %i.xn = zext i8 %i.xm to i16
  %i.xo = or disjoint i16 %i.xk, %i.xn
  store i16 %i.xo, ptr %i.xg, align 2, !tbaa !85
  %i.xp = getelementptr inbounds nuw i8, ptr %.0381, i64 8 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.0249380, i64 8 ; 2 uses
  %niter768.next.3 = add i32 %niter768, 4         ; 2 uses
  %niter768.ncmp.3 = icmp eq i32 %niter768.next.3, %unroll_iter767
  br i1 %niter768.ncmp.3, label %.loopexit.loopexit740.unr-lcssa, label %.lr.ph382, !llvm.loop !462

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.be, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.ck, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.yj, %.lr.ph378 ], [ %i.dm, %.lr.ph378.preheader ] ; 5 uses
  %.1250376 = phi ptr [ %i.yk, %.lr.ph378 ], [ %i.dd, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
  %i.xr = load i8, ptr %.1250376, align 1, !tbaa !24
  %i.xs = zext i8 %i.xr to i16
  %i.xt = shl nuw i16 %i.xs, 8
  %i.xu = getelementptr inbounds nuw i8, ptr %.1250376, i64 1
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !24
  %i.xw = zext i8 %i.xv to i16
  %i.xx = or disjoint i16 %i.xt, %i.xw
  store i16 %i.xx, ptr %.1377, align 2, !tbaa !85
  %i.xy = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.xy, align 2, !tbaa !85
  %i.xz = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.ya = getelementptr inbounds nuw i8, ptr %.1250376, i64 2
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !24
  %i.yc = zext i8 %i.yb to i16
  %i.yd = shl nuw i16 %i.yc, 8
  %i.ye = getelementptr inbounds nuw i8, ptr %.1250376, i64 3
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !24
  %i.yg = zext i8 %i.yf to i16
  %i.yh = or disjoint i16 %i.yd, %i.yg
  store i16 %i.yh, ptr %i.xz, align 2, !tbaa !85
  %i.yi = getelementptr inbounds nuw i8, ptr %.1377, i64 6
  store i16 -1, ptr %i.yi, align 2, !tbaa !85
  %i.yj = getelementptr inbounds nuw i8, ptr %.1377, i64 8 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.1250376, i64 4 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit741.unr-lcssa, label %.lr.ph378, !llvm.loop !463

.lr.ph374:                                        ; preds = %.preheader346, %.lr.ph374
  %.2373 = phi ptr [ %i.zm, %.lr.ph374 ], [ %i.dm, %.preheader346 ] ; 5 uses
  %.2251372 = phi ptr [ %i.zn, %.lr.ph374 ], [ %i.dd, %.preheader346 ] ; 7 uses
  %.5270371 = phi i32 [ %i.zl, %.lr.ph374 ], [ 0, %.preheader346 ]
  %i.yl = load i8, ptr %.2251372, align 1, !tbaa !24
  %i.ym = zext i8 %i.yl to i16
  %i.yn = shl nuw i16 %i.ym, 8
  %i.yo = getelementptr inbounds nuw i8, ptr %.2251372, i64 1
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !24
  %i.yq = zext i8 %i.yp to i16
  %i.yr = or disjoint i16 %i.yn, %i.yq
  store i16 %i.yr, ptr %.2373, align 2, !tbaa !85
  %i.ys = getelementptr inbounds nuw i8, ptr %.2251372, i64 2
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !24
  %i.yu = zext i8 %i.yt to i16
  %i.yv = shl nuw i16 %i.yu, 8
  %i.yw = getelementptr inbounds nuw i8, ptr %.2251372, i64 3
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !24
  %i.yy = zext i8 %i.yx to i16
  %i.yz = or disjoint i16 %i.yv, %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %.2373, i64 2
  store i16 %i.yz, ptr %i.za, align 2, !tbaa !85
  %i.zb = getelementptr inbounds nuw i8, ptr %.2251372, i64 4
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !24
  %i.zd = zext i8 %i.zc to i16
  %i.ze = shl nuw i16 %i.zd, 8
  %i.zf = getelementptr inbounds nuw i8, ptr %.2251372, i64 5
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !24
  %i.zh = zext i8 %i.zg to i16
  %i.zi = or disjoint i16 %i.ze, %i.zh
  %i.zj = getelementptr inbounds nuw i8, ptr %.2373, i64 4
  store i16 %i.zi, ptr %i.zj, align 2, !tbaa !85
  %i.zk = getelementptr inbounds nuw i8, ptr %.2373, i64 6
  store i16 -1, ptr %i.zk, align 2, !tbaa !85
  %i.zl = add nuw i32 %.5270371, 1                ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.2373, i64 8
  %i.zn = getelementptr inbounds nuw i8, ptr %.2251372, i64 6
  %exitcond451.not = icmp eq i32 %i.zl, %4
  br i1 %exitcond451.not, label %.loopexit, label %.lr.ph374, !llvm.loop !464

.loopexit.loopexit740.unr-lcssa:                  ; preds = %.lr.ph382
  br i1 %lcmp.mod765.not, label %.loopexit, label %.lr.ph382.epil.preheader

.lr.ph382.epil.preheader:                         ; preds = %.loopexit.loopexit740.unr-lcssa, %.lr.ph382.preheader
  %.0381.epil.init = phi ptr [ %i.dm, %.lr.ph382.preheader ], [ %i.xp, %.loopexit.loopexit740.unr-lcssa ]
  %.0249380.epil.init = phi ptr [ %i.dd, %.lr.ph382.preheader ], [ %i.xq, %.loopexit.loopexit740.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod766)
  br label %.lr.ph382.epil

.lr.ph382.epil:                                   ; preds = %.lr.ph382.epil, %.lr.ph382.epil.preheader
  %.0381.epil = phi ptr [ %i.zv, %.lr.ph382.epil ], [ %.0381.epil.init, %.lr.ph382.epil.preheader ] ; 2 uses
  %.0249380.epil = phi ptr [ %i.zw, %.lr.ph382.epil ], [ %.0249380.epil.init, %.lr.ph382.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph382.epil ], [ 0, %.lr.ph382.epil.preheader ]
  %i.zo = load i8, ptr %.0249380.epil, align 1, !tbaa !24
  %i.zp = zext i8 %i.zo to i16
  %i.zq = shl nuw i16 %i.zp, 8
  %i.zr = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 1
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !24
  %i.zt = zext i8 %i.zs to i16
  %i.zu = or disjoint i16 %i.zq, %i.zt
  store i16 %i.zu, ptr %.0381.epil, align 2, !tbaa !85
  %i.zv = getelementptr inbounds nuw i8, ptr %.0381.epil, i64 2
  %i.zw = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter764
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph382.epil, !llvm.loop !465

.loopexit.loopexit741.unr-lcssa:                  ; preds = %.lr.ph378
  br i1 %lcmp.mod762.not, label %.loopexit, label %.lr.ph378.epil.preheader

.lr.ph378.epil.preheader:                         ; preds = %.loopexit.loopexit741.unr-lcssa, %.lr.ph378.preheader
  %.1377.epil.init = phi ptr [ %i.dm, %.lr.ph378.preheader ], [ %i.yj, %.loopexit.loopexit741.unr-lcssa ] ; 2 uses
  %.1250376.epil.init = phi ptr [ %i.dd, %.lr.ph378.preheader ], [ %i.yk, %.loopexit.loopexit741.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod763)
  %i.zx = load i8, ptr %.1250376.epil.init, align 1, !tbaa !24
  %i.zy = zext i8 %i.zx to i16
  %i.zz = shl nuw i16 %i.zy, 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1250376.epil.init, i64 1
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !24
  %i.aac = zext i8 %i.aab to i16
  %i.aad = or disjoint i16 %i.zz, %i.aac
  store i16 %i.aad, ptr %.1377.epil.init, align 2, !tbaa !85
  %i.aae = getelementptr inbounds nuw i8, ptr %.1377.epil.init, i64 2
  store i16 -1, ptr %i.aae, align 2, !tbaa !85
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph374, %.lr.ph378.epil.preheader, %.loopexit.loopexit741.unr-lcssa, %.loopexit.loopexit740.unr-lcssa, %.lr.ph382.epil, %.lr.ph.i308.prol.loopexit, %.lr.ph.i308, %.lr.ph32.i314, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %middle.block, %.preheader346, %.preheader344, %.preheader342, %.loopexit335, %bb.ag, %bb.ae, %.preheader26.i, %.preheader.i, %.preheader26.i306, %.preheader.i312
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge, label %bb.m, !llvm.loop !466

._crit_edge:                                      ; preds = %.loopexit, %bb.l
  tail call void @free(ptr noundef %i.as) #37
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m
  %i.aaf = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.50, ptr %i.aaf, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.as) #37
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge, %bb.k, %bb.i, %stbi__mad2sizes_valid.exit.thread, %stbi__mad3sizes_valid.exit.thread, %bb.d
  %.0271 = phi i32 [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %stbi__mad3sizes_valid.exit.thread ], [ 0, %bb.k ], [ 0, %stbi__mad2sizes_valid.exit.thread ], [ 0, %bb.aj ], [ 1, %._crit_edge ]
  ret i32 %.0271
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__create_png_image(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i32 %4, 16
  %i.b = zext i1 %i.a to i32
  %i.c = shl i32 %3, %i.b                         ; 6 uses
  %.not = icmp eq i32 %6, 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !44   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !43   ; 5 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %4, i32 noundef %5)
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.i = or i32 %i.g, %i.e
  %or.cond.not.i.i.i = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not.i.i.i, label %bb.d, label %stbi__malloc_mad3.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.g, 0
  br i1 %i.j, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.d
  %i.k = udiv i32 2147483647, %i.g
  %.not24.i.i = icmp sgt i32 %i.e, %i.k
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.d
  %i.l = mul nsw i32 %i.g, %i.e                   ; 3 uses
  %i.m = or i32 %i.l, %i.c
  %or.cond.not.i10.i.i = icmp sgt i32 %i.m, -1
  br i1 %or.cond.not.i10.i.i, label %bb.e, label %stbi__malloc_mad3.exit.thread

bb.e:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.n = icmp eq i32 %i.c, 0
  br i1 %i.n, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.e
  %i.o = udiv i32 2147483647, %i.c
  %.not.i.i = icmp sgt i32 %i.l, %i.o
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %bb.e, %stbi__mul2sizes_valid.exit12.i.i
  %i.p = mul nsw i32 %i.l, %i.c
  %i.q = sext i32 %i.p to i64
  %i.r = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #38 ; 4 uses
  %.not92 = icmp eq ptr %i.r, null
  br i1 %.not92, label %stbi__malloc_mad3.exit.thread, label %.preheader100

.preheader100:                                    ; preds = %stbi__malloc_mad3.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = sext i32 %i.c to i64                     ; 9 uses
  br label %bb.f

stbi__malloc_mad3.exit.thread:                    ; preds = %bb.c, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__malloc_mad3.exit
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.u, align 8, !tbaa !26
  br label %.critedge

bb.f:                                             ; preds = %.preheader100, %bb.h
  %indvars.iv112 = phi i64 [ 0, %.preheader100 ], [ %indvars.iv.next113, %bb.h ] ; 5 uses
  %.076106 = phi ptr [ %1, %.preheader100 ], [ %.379, %bb.h ] ; 3 uses
  %.085104 = phi i32 [ %2, %.preheader100 ], [ %.388, %bb.h ] ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xorig, i64 %indvars.iv112
  %i.y = load i32, ptr %i.x, align 4, !tbaa !27   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xspc, i64 %indvars.iv112
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !27  ; 4 uses
  %i.ab = xor i32 %i.y, -1
  %i.ac = add i32 %i.w, %i.ab
  %i.ad = add i32 %i.ac, %i.aa                    ; 2 uses
  %i.ae = udiv i32 %i.ad, %i.aa                   ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !43
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yorig, i64 %indvars.iv112
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yspc, i64 %indvars.iv112
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27 ; 4 uses
  %i.al = xor i32 %i.ai, -1
  %i.am = add i32 %i.ag, %i.al
  %i.an = add i32 %i.am, %i.ak                    ; 2 uses
  %i.ao = udiv i32 %i.an, %i.ak                   ; 4 uses
  %i.ap = icmp ule i32 %i.aa, %i.ad
  %i.aq = icmp ule i32 %i.ak, %i.an
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !53
  %i.at = mul i32 %i.ae, %4
  %i.au = mul i32 %i.at, %i.as
  %i.av = add nsw i32 %i.au, 7
  %i.aw = ashr i32 %i.av, 3
  %i.ax = add nsw i32 %i.aw, 1
  %i.ay = mul nsw i32 %i.ax, %i.ao                ; 2 uses
  %i.az = tail call i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %.076106, i32 noundef %.085104, i32 noundef %3, i32 noundef %i.ae, i32 noundef %i.ao, i32 noundef %4, i32 noundef %5)
  %.not93.not = icmp eq i32 %i.az, 0
  br i1 %.not93.not, label %.thread, label %.preheader99

.preheader99:                                     ; preds = %bb.g
  %i.ba = icmp sgt i32 %i.ao, 0
  %i.bb = icmp sgt i32 %i.ae, 0
  %or.cond107 = and i1 %i.ba, %i.bb
  %.pre115 = load ptr, ptr %i.s, align 8, !tbaa !431 ; 4 uses
  br i1 %or.cond107, label %.preheader.lr.ph.split, label %._crit_edge103.split

.preheader.lr.ph.split:                           ; preds = %.preheader99
  %i.bc = load ptr, ptr %0, align 8, !tbaa !32
  %i.bd = sext i32 %i.aa to i64                   ; 3 uses
  %i.be = sext i32 %i.y to i64                    ; 3 uses
  %i.bf = zext nneg i32 %i.ae to i64              ; 3 uses
  %i.bg = zext nneg i32 %i.ao to i64
  %.pre.pre = load i32, ptr %i.bc, align 8, !tbaa !44
  %factor.op.mul = mul i32 %i.c, %.pre.pre
  %xtraiter = and i64 %i.bf, 1
  %i.bh = icmp ult i32 %i.ae, 2
  %unroll_iter = and i64 %i.bf, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod122 = trunc i32 %i.ae to i1
  br label %.preheader

.thread:                                          ; preds = %bb.g
  tail call void @free(ptr noundef %i.r) #37
  br label %.critedge

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv109 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next110, %._crit_edge ] ; 3 uses
  %i.bi = trunc i64 %indvars.iv109 to i32
  %i.bj = mul i32 %i.ak, %i.bi
  %i.bk = add i32 %i.bj, %i.ai
  %.reass = mul i32 %i.bk, %factor.op.mul
  %i.bl = mul nuw nsw i64 %indvars.iv109, %i.bf   ; 3 uses
  %i.bm = zext i32 %.reass to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bm ; 3 uses
  br i1 %i.bh, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bo = mul nsw i64 %indvars.iv, %i.bd
  %i.bp = add nsw i64 %i.bo, %i.be
  %i.bq = mul nsw i64 %i.bp, %i.t
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 %i.bq
  %i.bs = add nuw nsw i64 %indvars.iv, %i.bl
  %i.bt = mul nsw i64 %i.bs, %i.t
  %i.bu = getelementptr inbounds i8, ptr %.pre115, i64 %i.bt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %i.bu, i64 %i.t, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bv = mul nsw i64 %indvars.iv.next, %i.bd
  %i.bw = add nsw i64 %i.bv, %i.be
  %i.bx = mul nsw i64 %i.bw, %i.t
  %i.by = getelementptr inbounds i8, ptr %i.bn, i64 %i.bx
  %i.bz = add nuw nsw i64 %indvars.iv.next, %i.bl
  %i.ca = mul nsw i64 %i.bz, %i.t
  %i.cb = getelementptr inbounds i8, ptr %.pre115, i64 %i.ca
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.cb, i64 %i.t, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !467

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.cc = mul nsw i64 %indvars.iv.epil.init, %i.bd
  %i.cd = add nsw i64 %i.cc, %i.be
  %i.ce = mul nsw i64 %i.cd, %i.t
  %i.cf = getelementptr inbounds i8, ptr %i.bn, i64 %i.ce
  %i.cg = add nuw nsw i64 %indvars.iv.epil.init, %i.bl
  %i.ch = mul nsw i64 %i.cg, %i.t
  %i.ci = getelementptr inbounds i8, ptr %.pre115, i64 %i.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %i.ci, i64 %i.t, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.cj = icmp samesign ult i64 %indvars.iv.next110, %i.bg
  br i1 %i.cj, label %.preheader, label %._crit_edge103.split, !llvm.loop !468

._crit_edge103.split:                             ; preds = %._crit_edge, %.preheader99
  tail call void @free(ptr noundef %.pre115) #37
  %i.ck = zext i32 %i.ay to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.076106, i64 %i.ck
  %i.cm = sub i32 %.085104, %i.ay
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge103.split, %bb.f
  %.388 = phi i32 [ %.085104, %bb.f ], [ %i.cm, %._crit_edge103.split ]
  %.379 = phi ptr [ %.076106, %bb.f ], [ %i.cl, %._crit_edge103.split ]
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, 7
  br i1 %exitcond.not, label %bb.i, label %bb.f, !llvm.loop !469

bb.i:                                             ; preds = %bb.h
  store ptr %i.r, ptr %i.s, align 8, !tbaa !431
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.i, %stbi__malloc_mad3.exit.thread, %bb.b
  %.4 = phi i32 [ %i.h, %bb.b ], [ 1, %bb.i ], [ 0, %stbi__malloc_mad3.exit.thread ], [ 0, %.thread ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @stbi__compute_transparency(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %i.e = mul i32 %i.d, %i.b                       ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !431  ; 3 uses
  %i.h = icmp eq i32 %2, 2
  %.not31 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.preheader
  %xtraiter = and i32 %i.e, 3                     ; 3 uses
  %i.k = icmp ult i32 %i.e, 4
  br i1 %i.k, label %.lr.ph30.epil.preheader, label %.lr.ph30.preheader.new

.lr.ph30.preheader.new:                           ; preds = %.lr.ph30.preheader
  %unroll_iter = and i32 %i.e, -4
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30, %.lr.ph30.preheader.new
  %.029 = phi ptr [ %i.g, %.lr.ph30.preheader.new ], [ %i.ai, %.lr.ph30 ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph30.preheader.new ], [ %niter.next.3, %.lr.ph30 ]
  %i.l = load i8, ptr %.029, align 1, !tbaa !24
  %i.m = load i8, ptr %1, align 1, !tbaa !24
  %i.n = icmp ne i8 %i.l, %i.m
  %i.o = sext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.029, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %.029, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %i.s = load i8, ptr %1, align 1, !tbaa !24
  %i.t = icmp ne i8 %i.r, %i.s
  %i.u = sext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.029, i64 3
  store i8 %i.u, ptr %i.v, align 1, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = load i8, ptr %1, align 1, !tbaa !24
  %i.z = icmp ne i8 %i.x, %i.y
  %i.aa = sext i1 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.029, i64 5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %.029, i64 6
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !24
  %i.ae = load i8, ptr %1, align 1, !tbaa !24
  %i.af = icmp ne i8 %i.ad, %i.ae
  %i.ag = sext i1 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.029, i64 7
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %.029, i64 8 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph30, !llvm.loop !470

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.127 = phi ptr [ %i.g, %.lr.ph ], [ %i.av, %bb.f ] ; 5 uses
  %.12326 = phi i32 [ 0, %.lr.ph ], [ %i.aw, %bb.f ]
  %i.aj = load i8, ptr %.127, align 1, !tbaa !24
  %i.ak = load i8, ptr %1, align 1, !tbaa !24
  %i.al = icmp eq i8 %i.aj, %i.ak
  br i1 %i.al, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %.127, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = load i8, ptr %i.i, align 1, !tbaa !24
  %i.ap = icmp eq i8 %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.127, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24
  %i.as = load i8, ptr %i.j, align 1, !tbaa !24
  %i.at = icmp eq i8 %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.127, i64 3
  store i8 0, ptr %i.au, align 1, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %.127, i64 4
  %i.aw = add nuw i32 %.12326, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !471

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph30
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph30.epil.preheader

.lr.ph30.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph30.preheader
  %.029.epil.init = phi ptr [ %i.g, %.lr.ph30.preheader ], [ %i.ai, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph30.epil

.lr.ph30.epil:                                    ; preds = %.lr.ph30.epil, %.lr.ph30.epil.preheader
  %.029.epil = phi ptr [ %i.bc, %.lr.ph30.epil ], [ %.029.epil.init, %.lr.ph30.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph30.epil ], [ 0, %.lr.ph30.epil.preheader ]
  %i.ax = load i8, ptr %.029.epil, align 1, !tbaa !24
  %i.ay = load i8, ptr %1, align 1, !tbaa !24
  %i.az = icmp ne i8 %i.ax, %i.ay
  %i.ba = sext i1 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %.029.epil, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %.029.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph30.epil, !llvm.loop !472

.loopexit:                                        ; preds = %bb.f, %.loopexit.loopexit.unr-lcssa, %.lr.ph30.epil, %.preheader24, %.preheader
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @stbi__compute_transparency16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %i.e = mul i32 %i.d, %i.b                       ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !431  ; 10 uses
  %i.h = icmp eq i32 %2, 2
  %.not31 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.preheader
  %i.k = zext i32 %i.e to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 25
  br i1 %min.iters.check, label %.lr.ph30.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph30.preheader
  %i.l = add i32 %i.e, -1
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = getelementptr i8, ptr %i.g, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 4
  %scevgep37 = getelementptr i8, ptr %1, i64 2
  %bound0 = icmp ult ptr %i.g, %scevgep37
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_2
