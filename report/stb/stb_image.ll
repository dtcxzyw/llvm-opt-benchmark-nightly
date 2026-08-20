inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__create_png_alpha_expand8:bb.a

.lr.ph32.prol:                                    ; preds = %.lr.ph32.preheader43, %.lr.ph32.prol
  %indvars.iv35.prol = phi i64 [ %indvars.iv.next36.prol, %.lr.ph32.prol ], [ %indvars.iv35.ph, %.lr.ph32.preheader43 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph32.prol ], [ 0, %.lr.ph32.preheader43 ]
  %i.af = shl nuw nsw i64 %indvars.iv35.prol, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 -1, ptr %i.ah, align 1, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv35.prol
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !24
  %indvars.iv.next36.prol = add nsw i64 %indvars.iv35.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter45
  br i1 %prol.iter.cmp.not, label %.lr.ph32.prol.loopexit, label %.lr.ph32.prol, !llvm.loop !428

.lr.ph32.prol.loopexit:                           ; preds = %.lr.ph32.prol, %.lr.ph32.preheader43
  %indvars.iv35.unr = phi i64 [ %indvars.iv35.ph, %.lr.ph32.preheader43 ], [ %indvars.iv.next36.prol, %.lr.ph32.prol ]
  %i.ak = icmp ult i64 %indvars.iv35.ph, 3
  br i1 %i.ak, label %.loopexit, label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.prol.loopexit, %.lr.ph32
  %indvars.iv35 = phi i64 [ %indvars.iv.next36.3, %.lr.ph32 ], [ %indvars.iv35.unr, %.lr.ph32.prol.loopexit ] ; 6 uses
  %i.al = shl nuw nsw i64 %indvars.iv35, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 -1, ptr %i.an, align 1, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv35
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !24
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !24
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, -1 ; 2 uses
  %i.aq = shl nuw nsw i64 %indvars.iv.next36, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i8 -1, ptr %i.as, align 1, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next36
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  store i8 %i.au, ptr %i.ar, align 1, !tbaa !24
  %indvars.iv.next36.1 = add nsw i64 %indvars.iv35, -2 ; 2 uses
  %i.av = shl nuw nsw i64 %indvars.iv.next36.1, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 -1, ptr %i.ax, align 1, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next36.1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !24
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !24
  %indvars.iv.next36.2 = add nsw i64 %indvars.iv35, -3 ; 3 uses
  %i.ba = shl nuw nsw i64 %indvars.iv.next36.2, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 -1, ptr %i.bc, align 1, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next36.2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !24
  store i8 %i.be, ptr %i.bb, align 1, !tbaa !24
  %indvars.iv.next36.3 = add nsw i64 %indvars.iv35, -4
  %.not39.3 = icmp eq i64 %indvars.iv.next36.2, 0
  br i1 %.not39.3, label %.loopexit, label %.lr.ph32, !llvm.loop !429

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bf = shl nsw i64 %indvars.iv, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  store i8 -1, ptr %i.bh, align 1, !tbaa !24
  %i.bi = mul nuw nsw i64 %indvars.iv, 3
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
  %i.ah = lshr i32 %i.ag, 3                       ; 13 uses
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
  %i.bj = sext i32 %6 to i64
  %i.bk = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %i.bj
  %wide.trip.count460 = zext i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.aw to i64     ; 8 uses
  %i.bl = sub nsw i64 %i.bb, %i.ax                ; 28 uses
  %i.bm = add i32 %i.z, -1                        ; 3 uses
  %i.bn = add nuw nsw i64 %i.bg, 1
  %min.iters.check699 = icmp ult i64 %i.bl, 8
  %i.bo = add nsw i64 %i.ax, -1
  %diff.check697 = icmp ult i64 %i.bo, 31
  %or.cond736 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bl, 32
  %i.bp = and i64 %i.bl, 24
  %n.vec703 = and i64 %i.bl, -32                  ; 4 uses
  %i.bq = add nsw i64 %n.vec703, %i.ax
  %cmp.n712 = icmp eq i64 %i.bl, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bp, 0
  %n.vec720 = and i64 %i.bl, -8                   ; 3 uses
  %i.br = add nsw i64 %n.vec720, %i.ax
  %cmp.n727 = icmp eq i64 %i.bl, %n.vec720
  %i.bs = add nsw i64 %i.bb, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.bt = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bt, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter750 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  %min.iters.check632 = icmp ult i64 %i.bl, 4
  %i.bu = add nsw i64 %i.ax, -1
  %diff.check626 = icmp ult i64 %i.bu, 15
  %min.iters.check634 = icmp ult i64 %i.bl, 16
  %i.bv = and i64 %i.bl, 12
  %n.vec636 = and i64 %i.bl, -16                  ; 4 uses
  %i.bw = add nsw i64 %n.vec636, %i.ax
  %cmp.n645 = icmp eq i64 %i.bl, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bv, 0
  %n.vec653 = and i64 %i.bl, -4                   ; 3 uses
  %i.bx = add nsw i64 %n.vec653, %i.ax
  %cmp.n662 = icmp eq i64 %i.bl, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.by = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.by, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter752.a = and i64 %wide.trip.count424, 1
  %lcmp.mod753.not.a = icmp eq i64 %xtraiter752.a, 0
  %i.bz = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bl, 4
  %i.ca = add nsw i64 %i.ax, -1
  %diff.check561 = icmp ult i64 %i.ca, 15
  %min.iters.check565 = icmp ult i64 %i.bl, 16
  %i.cb = and i64 %i.bl, 12
  %n.vec567 = and i64 %i.bl, -16                  ; 4 uses
  %i.cc = add nsw i64 %n.vec567, %i.ax
  %cmp.n575 = icmp eq i64 %i.bl, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.cb, 0
  %n.vec583 = and i64 %i.bl, -4                   ; 3 uses
  %i.cd = add nsw i64 %n.vec583, %i.ax
  %cmp.n591 = icmp eq i64 %i.bl, %n.vec583
  %i.ce = add nsw i64 %i.bb, -1
  %min.iters.check530 = icmp ult i32 %i.aw, 4
  %min.iters.check532 = icmp ult i32 %i.aw, 32
  %i.cf = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.cf, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter758.a = and i64 %wide.trip.count444, 3 ; 2 uses
  %lcmp.mod759.not.a = icmp eq i64 %xtraiter758.a, 0
  %min.iters.check506 = icmp ult i64 %i.bl, 8
  %i.cg = add nsw i64 %i.ax, -1
  %diff.check = icmp ult i64 %i.cg, 31
  %or.cond735 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bl, 32
  %i.ch = and i64 %i.bl, 24
  %n.vec509 = and i64 %i.bl, -32                  ; 4 uses
  %i.ci = add nsw i64 %n.vec509, %i.ax
  %cmp.n518 = icmp eq i64 %i.bl, %n.vec509
  %min.epilog.iters.check = icmp eq i64 %i.ch, 0
  %n.vec520 = and i64 %i.bl, -8                   ; 3 uses
  %i.cj = add nsw i64 %n.vec520, %i.ax
  %cmp.n525 = icmp eq i64 %i.bl, %n.vec520
  %i.ck = add nsw i64 %i.bb, -1
  %xtraiter764.a = and i32 %4, 1
  %i.cl = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod765.not.a = icmp eq i32 %xtraiter764.a, 0
  %lcmp.mod766.a = trunc i32 %4 to i1
  %xtraiter767 = and i32 %i.z, 3                  ; 3 uses
  %i.cm = icmp ult i32 %i.z, 4
  %unroll_iter770 = and i32 %i.z, -4
  %lcmp.mod768.not = icmp eq i32 %xtraiter767, 0
  %lcmp.mod769 = icmp ne i32 %xtraiter767, 0
  %i.cn = and i64 %i.bg, 1
  %lcmp.mod773.not.not = icmp eq i64 %i.cn, 0
  %i.co = shl nuw nsw i64 %i.bg, 2
  %i.cp = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bg, -1
  %i.cq = icmp eq i32 %.030.i305, 0
  %i.cr = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %i.cr, 4294967288              ; 3 uses
  %i.cs = sub nsw i64 %i.bg, %n.vec
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  %xtraiter775 = and i32 %i.z, 1
  %i.ct = icmp eq i32 %i.bm, 0
  %unroll_iter779 = and i32 %i.z, -2
  %lcmp.mod777.not = icmp eq i32 %xtraiter775, 0
  %lcmp.mod778 = trunc i32 %i.z to i1
  %xtraiter781 = and i32 %i.z, 1
  %i.cu = icmp eq i32 %i.bm, 0
  %unroll_iter785 = and i32 %i.z, -2
  %lcmp.mod783.not = icmp eq i32 %xtraiter781, 0
  %lcmp.mod784 = trunc i32 %i.z to i1
  %xtraiter787 = and i32 %i.z, 1
  %i.cv = icmp eq i32 %i.bm, 0
  %unroll_iter791 = and i32 %i.z, -2
  %lcmp.mod789.not = icmp eq i32 %xtraiter787, 0
  %lcmp.mod790 = trunc i32 %i.z to i1
  %i.cw = and i64 %i.bg, 1
  %lcmp.mod794.not.not = icmp eq i64 %i.cw, 0
  %i.cx = shl nuw nsw i64 %i.bg, 2
  %i.cy = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bg, -1
  %i.cz = icmp eq i32 %.030.i305, 0
  %xtraiter796 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod797.not = icmp eq i64 %xtraiter796, 0
  %i.da = icmp ult i32 %.030.i305, 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 9 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qk, %.loopexit ] ; 2 uses
  %8 = trunc i64 %indvars.iv457 to i32
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  %11 = mul nuw nsw i32 %i.ah, %10
  %12 = trunc i64 %indvars.iv457 to i32
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = mul nuw nsw i32 %i.ah, %14
  %16 = zext nneg i32 %15 to i64                  ; 2 uses
  %17 = trunc i64 %indvars.iv457 to i32
  %18 = and i32 %17, 1
  %19 = xor i32 %18, 1
  %20 = mul nuw nsw i32 %i.ah, %19
  %21 = trunc i64 %indvars.iv457 to i32
  %22 = and i32 %21, 1
  %23 = xor i32 %22, 1
  %24 = mul nuw nsw i32 %i.ah, %23
  %25 = trunc i64 %indvars.iv457 to i32
  %26 = and i32 %25, 1
  %27 = xor i32 %26, 1
  %28 = mul nuw nsw i32 %i.ah, %27
  %i.db = trunc nuw i64 %indvars.iv457 to i32     ; 2 uses
  %i.dc = trunc i64 %indvars.iv457 to i1
  %i.dd = select i1 %i.dc, i64 %i.av, i64 0       ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dd ; 75 uses
  %i.df = and i32 %i.db, 1
  %i.dg = xor i32 %i.df, 1
  %i.dh = mul nuw nsw i32 %i.dg, %i.ah
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.di ; 30 uses
  %i.dk = load ptr, ptr %i.u, align 8, !tbaa !431
  %i.dl = mul i32 %i.e, %i.db
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dm ; 33 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dp = load i8, ptr %.0272398, align 1, !tbaa !24 ; 3 uses
  %i.dq = icmp ugt i8 %i.dp, 4
  br i1 %i.dq, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ds = zext nneg i8 %i.dp to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.du, %bb.o ], [ %i.dp, %bb.n ]
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
  %29 = zext nneg i32 %11 to i64
  %i.dv = sub nsw i64 %29, %i.dd
  %diff.check665 = icmp ugt i64 %i.dv, -32
  %or.cond730.a = select i1 %min.iters.check667, i1 true, i1 %diff.check665
  br i1 %or.cond730.a, label %.lr.ph360.preheader, label %vector.main.loop.iter.check668

vector.main.loop.iter.check668:                   ; preds = %iter.check682
  br i1 %min.iters.check669, label %vec.epilog.ph686, label %vector.body672

vector.body672:                                   ; preds = %vector.main.loop.iter.check668, %vector.body672
  %index673 = phi i64 [ %index.next678, %vector.body672 ], [ 0, %vector.main.loop.iter.check668 ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 %index673 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load674 = load <16 x i8>, ptr %i.dw, align 1, !tbaa !24
  %wide.load675 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index673 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load676 = load <16 x i8>, ptr %i.dy, align 1, !tbaa !24
  %wide.load677 = load <16 x i8>, ptr %i.dz, align 1, !tbaa !24
  %i.ea = add <16 x i8> %wide.load676, %wide.load674
  %i.eb = add <16 x i8> %wide.load677, %wide.load675
  %i.ec = getelementptr inbounds nuw i8, ptr %i.de, i64 %index673 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <16 x i8> %i.ea, ptr %i.ec, align 1, !tbaa !24
  store <16 x i8> %i.eb, ptr %i.ed, align 1, !tbaa !24
  %index.next678 = add nuw i64 %index673, 32      ; 2 uses
  %i.ee = icmp eq i64 %index.next678, %n.vec671
  br i1 %i.ee, label %middle.block679, label %vector.body672, !llvm.loop !432

middle.block679:                                  ; preds = %vector.body672
  br i1 %cmp.n680, label %.preheader354, label %vec.epilog.iter.check684

vec.epilog.iter.check684:                         ; preds = %middle.block679
  br i1 %min.epilog.iters.check685, label %.lr.ph360.preheader, label %vec.epilog.ph686, !prof !77

vec.epilog.ph686:                                 ; preds = %vector.main.loop.iter.check668, %vec.epilog.iter.check684
  %vec.epilog.resume.val681 = phi i64 [ %n.vec671, %vec.epilog.iter.check684 ], [ 0, %vector.main.loop.iter.check668 ]
  br label %vec.epilog.vector.body688

vec.epilog.vector.body688:                        ; preds = %vec.epilog.vector.body688, %vec.epilog.ph686
  %index689 = phi i64 [ %vec.epilog.resume.val681, %vec.epilog.ph686 ], [ %index.next692, %vec.epilog.vector.body688 ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.do, i64 %index689
  %wide.load690 = load <4 x i8>, ptr %i.ef, align 1, !tbaa !24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index689
  %wide.load691 = load <4 x i8>, ptr %i.eg, align 1, !tbaa !24
  %i.eh = add <4 x i8> %wide.load691, %wide.load690
  %i.ei = getelementptr inbounds nuw i8, ptr %i.de, i64 %index689
  store <4 x i8> %i.eh, ptr %i.ei, align 1, !tbaa !24
  %index.next692 = add nuw i64 %index689, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.ej, label %vec.epilog.middle.block693, label %vec.epilog.vector.body688, !llvm.loop !433

vec.epilog.middle.block693:                       ; preds = %vec.epilog.vector.body688
  br i1 %cmp.n694, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check682, %vec.epilog.iter.check684, %vec.epilog.middle.block693
  %indvars.iv421.ph = phi i64 [ 0, %iter.check682 ], [ %n.vec671, %vec.epilog.iter.check684 ], [ %n.vec687, %vec.epilog.middle.block693 ] ; 3 uses
  br i1 %lcmp.mod751.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv421.prol
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !24
  %i.em = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv421.prol
  %i.en = load i8, ptr %i.em, align 1, !tbaa !24
  %.narrow286.prol = add i8 %i.en, %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.eo, align 1, !tbaa !24
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter750
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !434

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.ep = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.az, label %iter.check611, label %.preheader351

iter.check611:                                    ; preds = %.preheader353
  %30 = zext nneg i32 %20 to i64
  %i.er = sub nsw i64 %30, %i.dd
  %diff.check594 = icmp ugt i64 %i.er, -32
  %or.cond732 = select i1 %min.iters.check596, i1 true, i1 %diff.check594
  br i1 %or.cond732, label %.lr.ph364.preheader, label %vector.main.loop.iter.check597

vector.main.loop.iter.check597:                   ; preds = %iter.check611
  br i1 %min.iters.check598, label %vec.epilog.ph615, label %vector.body601

vector.body601:                                   ; preds = %vector.main.loop.iter.check597, %vector.body601
  %index602 = phi i64 [ %index.next607, %vector.body601 ], [ 0, %vector.main.loop.iter.check597 ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 %index602 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load603 = load <16 x i8>, ptr %i.es, align 1, !tbaa !24
  %wide.load604 = load <16 x i8>, ptr %i.et, align 1, !tbaa !24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index602 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load605 = load <16 x i8>, ptr %i.eu, align 1, !tbaa !24
  %wide.load606 = load <16 x i8>, ptr %i.ev, align 1, !tbaa !24
  %i.ew = lshr <16 x i8> %wide.load605, splat (i8 1)
  %i.ex = lshr <16 x i8> %wide.load606, splat (i8 1)
  %i.ey = add <16 x i8> %i.ew, %wide.load603
  %i.ez = add <16 x i8> %i.ex, %wide.load604
  %i.fa = getelementptr inbounds nuw i8, ptr %i.de, i64 %index602 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <16 x i8> %i.ey, ptr %i.fa, align 1, !tbaa !24
  store <16 x i8> %i.ez, ptr %i.fb, align 1, !tbaa !24
  %index.next607 = add nuw i64 %index602, 32      ; 2 uses
  %i.fc = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.fc, label %middle.block608, label %vector.body601, !llvm.loop !435

middle.block608:                                  ; preds = %vector.body601
  br i1 %cmp.n609, label %.preheader351, label %vec.epilog.iter.check613

vec.epilog.iter.check613:                         ; preds = %middle.block608
  br i1 %min.epilog.iters.check614, label %.lr.ph364.preheader, label %vec.epilog.ph615, !prof !77

vec.epilog.ph615:                                 ; preds = %vector.main.loop.iter.check597, %vec.epilog.iter.check613
  %vec.epilog.resume.val610 = phi i64 [ %n.vec600, %vec.epilog.iter.check613 ], [ 0, %vector.main.loop.iter.check597 ]
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph615
  %index618 = phi i64 [ %vec.epilog.resume.val610, %vec.epilog.ph615 ], [ %index.next621, %vec.epilog.vector.body617 ] ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.do, i64 %index618
  %wide.load619 = load <4 x i8>, ptr %i.fd, align 1, !tbaa !24
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index618
  %wide.load620 = load <4 x i8>, ptr %i.fe, align 1, !tbaa !24
  %i.ff = lshr <4 x i8> %wide.load620, splat (i8 1)
  %i.fg = add <4 x i8> %i.ff, %wide.load619
  %i.fh = getelementptr inbounds nuw i8, ptr %i.de, i64 %index618
  store <4 x i8> %i.fg, ptr %i.fh, align 1, !tbaa !24
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.fi, label %vec.epilog.middle.block622, label %vec.epilog.vector.body617, !llvm.loop !436

vec.epilog.middle.block622:                       ; preds = %vec.epilog.vector.body617
  br i1 %cmp.n623, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check611, %vec.epilog.iter.check613, %vec.epilog.middle.block622
  %indvars.iv431.ph = phi i64 [ 0, %iter.check611 ], [ %n.vec600, %vec.epilog.iter.check613 ], [ %n.vec616, %vec.epilog.middle.block622 ] ; 6 uses
  br i1 %lcmp.mod753.not.a, label %.lr.ph364.prol.loopexit, label %.lr.ph364.prol

.lr.ph364.prol:                                   ; preds = %.lr.ph364.preheader
  %i.fj = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv431.ph
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !24
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv431.ph
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !24
  %i.fn = lshr i8 %i.fm, 1
  %.narrow290.prol = add i8 %i.fn, %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv431.ph
  store i8 %.narrow290.prol, ptr %i.fo, align 1, !tbaa !24
  %indvars.iv.next432.prol = or disjoint i64 %indvars.iv431.ph, 1
  br label %.lr.ph364.prol.loopexit

.lr.ph364.prol.loopexit:                          ; preds = %.lr.ph364.prol, %.lr.ph364.preheader
  %indvars.iv431.unr = phi i64 [ %indvars.iv431.ph, %.lr.ph364.preheader ], [ %indvars.iv.next432.prol, %.lr.ph364.prol ]
  %i.fp = icmp eq i64 %indvars.iv431.ph, %i.bz
  br i1 %i.fp, label %.preheader351, label %.lr.ph364

.preheader349:                                    ; preds = %bb.p
  br i1 %i.ba, label %iter.check545, label %.loopexit348

iter.check545:                                    ; preds = %.preheader349
  %31 = zext nneg i32 %28 to i64
  %i.fq = sub nsw i64 %31, %i.dd
  %diff.check528 = icmp ugt i64 %i.fq, -32
  %or.cond734 = select i1 %min.iters.check530, i1 true, i1 %diff.check528
  br i1 %or.cond734, label %.lr.ph368.preheader, label %vector.main.loop.iter.check531

vector.main.loop.iter.check531:                   ; preds = %iter.check545
  br i1 %min.iters.check532, label %vec.epilog.ph549, label %vector.body535

vector.body535:                                   ; preds = %vector.main.loop.iter.check531, %vector.body535
  %index536 = phi i64 [ %index.next541, %vector.body535 ], [ 0, %vector.main.loop.iter.check531 ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.do, i64 %index536 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %wide.load537 = load <16 x i8>, ptr %i.fr, align 1, !tbaa !24
  %wide.load538 = load <16 x i8>, ptr %i.fs, align 1, !tbaa !24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index536 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load539 = load <16 x i8>, ptr %i.ft, align 1, !tbaa !24
  %wide.load540 = load <16 x i8>, ptr %i.fu, align 1, !tbaa !24
  %i.fv = add <16 x i8> %wide.load539, %wide.load537
  %i.fw = add <16 x i8> %wide.load540, %wide.load538
  %i.fx = getelementptr inbounds nuw i8, ptr %i.de, i64 %index536 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store <16 x i8> %i.fv, ptr %i.fx, align 1, !tbaa !24
  store <16 x i8> %i.fw, ptr %i.fy, align 1, !tbaa !24
  %index.next541 = add nuw i64 %index536, 32      ; 2 uses
  %i.fz = icmp eq i64 %index.next541, %n.vec534
  br i1 %i.fz, label %middle.block542, label %vector.body535, !llvm.loop !437

middle.block542:                                  ; preds = %vector.body535
  br i1 %cmp.n543, label %.loopexit348, label %vec.epilog.iter.check547

vec.epilog.iter.check547:                         ; preds = %middle.block542
  br i1 %min.epilog.iters.check548, label %.lr.ph368.preheader, label %vec.epilog.ph549, !prof !77

vec.epilog.ph549:                                 ; preds = %vector.main.loop.iter.check531, %vec.epilog.iter.check547
  %vec.epilog.resume.val544 = phi i64 [ %n.vec534, %vec.epilog.iter.check547 ], [ 0, %vector.main.loop.iter.check531 ]
  br label %vec.epilog.vector.body551

vec.epilog.vector.body551:                        ; preds = %vec.epilog.vector.body551, %vec.epilog.ph549
  %index552 = phi i64 [ %vec.epilog.resume.val544, %vec.epilog.ph549 ], [ %index.next555, %vec.epilog.vector.body551 ] ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.do, i64 %index552
  %wide.load553 = load <4 x i8>, ptr %i.ga, align 1, !tbaa !24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index552
  %wide.load554 = load <4 x i8>, ptr %i.gb, align 1, !tbaa !24
  %i.gc = add <4 x i8> %wide.load554, %wide.load553
  %i.gd = getelementptr inbounds nuw i8, ptr %i.de, i64 %index552
  store <4 x i8> %i.gc, ptr %i.gd, align 1, !tbaa !24
  %index.next555 = add nuw i64 %index552, 4       ; 2 uses
  %i.ge = icmp eq i64 %index.next555, %n.vec550
  br i1 %i.ge, label %vec.epilog.middle.block556, label %vec.epilog.vector.body551, !llvm.loop !438

vec.epilog.middle.block556:                       ; preds = %vec.epilog.vector.body551
  br i1 %cmp.n557, label %.loopexit348, label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %iter.check545, %vec.epilog.iter.check547, %vec.epilog.middle.block556
  %indvars.iv441.ph = phi i64 [ 0, %iter.check545 ], [ %n.vec534, %vec.epilog.iter.check547 ], [ %n.vec550, %vec.epilog.middle.block556 ] ; 3 uses
  br i1 %lcmp.mod759.not.a, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol

.lr.ph368.prol:                                   ; preds = %.lr.ph368.preheader, %.lr.ph368.prol
  %indvars.iv441.prol = phi i64 [ %indvars.iv.next442.prol, %.lr.ph368.prol ], [ %indvars.iv441.ph, %.lr.ph368.preheader ] ; 4 uses
  %prol.iter760 = phi i64 [ %prol.iter760.next, %.lr.ph368.prol ], [ 0, %.lr.ph368.preheader ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv441.prol
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !24
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv441.prol
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !24
  %.narrow292.prol = add i8 %i.gi, %i.gg
  %i.gj = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv441.prol
  store i8 %.narrow292.prol, ptr %i.gj, align 1, !tbaa !24
  %indvars.iv.next442.prol = add nuw nsw i64 %indvars.iv441.prol, 1 ; 2 uses
  %prol.iter760.next = add i64 %prol.iter760, 1   ; 2 uses
  %prol.iter760.cmp.not = icmp eq i64 %prol.iter760.next, %xtraiter758.a
  br i1 %prol.iter760.cmp.not, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol, !llvm.loop !439

.lr.ph368.prol.loopexit:                          ; preds = %.lr.ph368.prol, %.lr.ph368.preheader
  %indvars.iv441.unr = phi i64 [ %indvars.iv441.ph, %.lr.ph368.preheader ], [ %indvars.iv.next442.prol, %.lr.ph368.prol ]
  %i.gk = sub nsw i64 %indvars.iv441.ph, %wide.trip.count444
  %i.gl = icmp ugt i64 %i.gk, -4
  br i1 %i.gl, label %.loopexit348, label %.lr.ph368

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull align 1 %i.do, i64 %i.bb, i1 false)
  br label %.loopexit348

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull align 1 %i.do, i64 %i.ax, i1 false)
  br i1 %i.ay, label %iter.check, label %.loopexit348

iter.check:                                       ; preds = %bb.r
  br i1 %or.cond735, label %.lr.ph370.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check507, label %vec.epilog.ph, label %vector.body510

vector.body510:                                   ; preds = %vector.main.loop.iter.check, %vector.body510
  %index511 = phi i64 [ %index.next516, %vector.body510 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.gm = add i64 %index511, %i.ax                ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.do, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load512 = load <16 x i8>, ptr %i.gn, align 1, !tbaa !24
  %wide.load513 = load <16 x i8>, ptr %i.go, align 1, !tbaa !24
  %i.gp = getelementptr inbounds i8, ptr %i.de, i64 %index511 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load514 = load <16 x i8>, ptr %i.gp, align 1, !tbaa !24
  %wide.load515 = load <16 x i8>, ptr %i.gq, align 1, !tbaa !24
  %i.gr = add <16 x i8> %wide.load514, %wide.load512
  %i.gs = add <16 x i8> %wide.load515, %wide.load513
  %i.gt = getelementptr inbounds i8, ptr %i.de, i64 %i.gm ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store <16 x i8> %i.gr, ptr %i.gt, align 1, !tbaa !24
  store <16 x i8> %i.gs, ptr %i.gu, align 1, !tbaa !24
  %index.next516 = add nuw i64 %index511, 32      ; 2 uses
  %i.gv = icmp eq i64 %index.next516, %n.vec509
  br i1 %i.gv, label %middle.block517, label %vector.body510, !llvm.loop !440

middle.block517:                                  ; preds = %vector.body510
  br i1 %cmp.n518, label %.loopexit348, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block517
  br i1 %min.epilog.iters.check, label %.lr.ph370.preheader, label %vec.epilog.ph, !prof !141

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec509, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index521 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next524, %vec.epilog.vector.body ] ; 3 uses
  %i.gw = add i64 %index521, %i.ax                ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.do, i64 %i.gw
  %wide.load522 = load <8 x i8>, ptr %i.gx, align 1, !tbaa !24
  %i.gy = getelementptr inbounds i8, ptr %i.de, i64 %index521
  %wide.load523 = load <8 x i8>, ptr %i.gy, align 1, !tbaa !24
  %i.gz = add <8 x i8> %wide.load523, %wide.load522
  %i.ha = getelementptr inbounds i8, ptr %i.de, i64 %i.gw
  store <8 x i8> %i.gz, ptr %i.ha, align 1, !tbaa !24
  %index.next524 = add nuw i64 %index521, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next524, %n.vec520
  br i1 %i.hb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !441

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n525, label %.loopexit348, label %.lr.ph370.preheader

.lr.ph370.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv446.ph = phi i64 [ %i.ax, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ] ; 7 uses
  %i.hc = sub nsw i64 %i.bb, %indvars.iv446.ph
  %xtraiter761 = and i64 %i.hc, 1
  %lcmp.mod762.not = icmp eq i64 %xtraiter761, 0
  br i1 %lcmp.mod762.not, label %.lr.ph370.prol.loopexit, label %.lr.ph370.prol

.lr.ph370.prol:                                   ; preds = %.lr.ph370.preheader
  %i.hd = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv446.ph
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !24
  %i.hf = sub nsw i64 %indvars.iv446.ph, %i.ax
  %i.hg = getelementptr inbounds i8, ptr %i.de, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !24
  %.narrow294.prol = add i8 %i.hh, %i.he
  %i.hi = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv446.ph
  store i8 %.narrow294.prol, ptr %i.hi, align 1, !tbaa !24
  %indvars.iv.next447.prol = add nsw i64 %indvars.iv446.ph, 1
  br label %.lr.ph370.prol.loopexit

.lr.ph370.prol.loopexit:                          ; preds = %.lr.ph370.prol, %.lr.ph370.preheader
  %indvars.iv446.unr = phi i64 [ %indvars.iv446.ph, %.lr.ph370.preheader ], [ %indvars.iv.next447.prol, %.lr.ph370.prol ]
  %i.hj = icmp eq i64 %indvars.iv446.ph, %i.ck
  br i1 %i.hj, label %.loopexit348, label %.lr.ph370

.lr.ph370:                                        ; preds = %.lr.ph370.prol.loopexit, %.lr.ph370
  %indvars.iv446 = phi i64 [ %indvars.iv.next447.1, %.lr.ph370 ], [ %indvars.iv446.unr, %.lr.ph370.prol.loopexit ] ; 5 uses
  %i.hk = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv446
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !24
  %i.hm = sub nsw i64 %indvars.iv446, %i.ax
  %i.hn = getelementptr inbounds i8, ptr %i.de, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !24
  %.narrow294 = add i8 %i.ho, %i.hl
  %i.hp = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv446
  store i8 %.narrow294, ptr %i.hp, align 1, !tbaa !24
  %indvars.iv.next447 = add nsw i64 %indvars.iv446, 1 ; 3 uses
  %i.hq = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv.next447
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !24
  %i.hs = sub nsw i64 %indvars.iv.next447, %i.ax
  %i.ht = getelementptr inbounds i8, ptr %i.de, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !24
  %.narrow294.1 = add i8 %i.hu, %i.hr
  %i.hv = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv.next447
  store i8 %.narrow294.1, ptr %i.hv, align 1, !tbaa !24
  %indvars.iv.next447.1 = add nsw i64 %indvars.iv446, 2 ; 2 uses
  %exitcond450.not.1 = icmp eq i64 %indvars.iv.next447.1, %i.bb
  br i1 %exitcond450.not.1, label %.loopexit348, label %.lr.ph370, !llvm.loop !442

.lr.ph368:                                        ; preds = %.lr.ph368.prol.loopexit, %.lr.ph368
  %indvars.iv441 = phi i64 [ %indvars.iv.next442.3, %.lr.ph368 ], [ %indvars.iv441.unr, %.lr.ph368.prol.loopexit ] ; 7 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv441
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !24
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv441
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !24
  %.narrow292 = add i8 %i.hz, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv441
  store i8 %.narrow292, ptr %i.ia, align 1, !tbaa !24
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next442
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !24
  %i.id = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !24
  %.narrow292.1 = add i8 %i.ie, %i.ic
  %i.if = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442
  store i8 %.narrow292.1, ptr %i.if, align 1, !tbaa !24
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next442.1
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !24
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442.1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !24
  %.narrow292.2 = add i8 %i.ij, %i.ih
  %i.ik = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442.1
  store i8 %.narrow292.2, ptr %i.ik, align 1, !tbaa !24
  %indvars.iv.next442.2 = add nuw nsw i64 %indvars.iv441, 3 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next442.2
  %i.im = load i8, ptr %i.il, align 1, !tbaa !24
  %i.in = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442.2
  %i.io = load i8, ptr %i.in, align 1, !tbaa !24
  %.narrow292.3 = add i8 %i.io, %i.im
  %i.ip = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442.2
  store i8 %.narrow292.3, ptr %i.ip, align 1, !tbaa !24
  %indvars.iv.next442.3 = add nuw nsw i64 %indvars.iv441, 4 ; 2 uses
  %exitcond445.not.3 = icmp eq i64 %indvars.iv.next442.3, %wide.trip.count444
  br i1 %exitcond445.not.3, label %.loopexit348, label %.lr.ph368, !llvm.loop !443

.preheader351:                                    ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364, %middle.block608, %vec.epilog.middle.block622, %.preheader353
  br i1 %i.ay, label %iter.check578, label %.loopexit348

iter.check578:                                    ; preds = %.preheader351
  br i1 %min.iters.check563, label %.lr.ph366.preheader, label %vector.memcheck559

vector.memcheck559:                               ; preds = %iter.check578
  %32 = zext nneg i32 %24 to i64
  %i.iq = sub nsw i64 %32, %i.dd
  %diff.check560 = icmp ugt i64 %i.iq, -16
  %conflict.rdx = or i1 %diff.check560, %diff.check561
  br i1 %conflict.rdx, label %.lr.ph366.preheader, label %vector.main.loop.iter.check564

vector.main.loop.iter.check564:                   ; preds = %vector.memcheck559
  br i1 %min.iters.check565, label %vec.epilog.ph582, label %vector.body568

vector.body568:                                   ; preds = %vector.main.loop.iter.check564, %vector.body568
  %index569 = phi i64 [ %index.next573, %vector.body568 ], [ 0, %vector.main.loop.iter.check564 ] ; 3 uses
  %i.ir = add i64 %index569, %i.ax                ; 3 uses
  %i.is = getelementptr inbounds i8, ptr %i.do, i64 %i.ir
  %wide.load570 = load <16 x i8>, ptr %i.is, align 1, !tbaa !24
  %i.it = getelementptr inbounds i8, ptr %i.dj, i64 %i.ir
  %wide.load571 = load <16 x i8>, ptr %i.it, align 1, !tbaa !24
  %i.iu = zext <16 x i8> %wide.load571 to <16 x i16>
  %i.iv = getelementptr inbounds i8, ptr %i.de, i64 %index569
  %wide.load572 = load <16 x i8>, ptr %i.iv, align 1, !tbaa !24
  %i.iw = zext <16 x i8> %wide.load572 to <16 x i16>
  %i.ix = add nuw nsw <16 x i16> %i.iw, %i.iu
  %i.iy = lshr <16 x i16> %i.ix, splat (i16 1)
  %i.iz = trunc nuw <16 x i16> %i.iy to <16 x i8>
  %i.ja = add <16 x i8> %wide.load570, %i.iz
  %i.jb = getelementptr inbounds i8, ptr %i.de, i64 %i.ir
  store <16 x i8> %i.ja, ptr %i.jb, align 1, !tbaa !24
  %index.next573 = add nuw i64 %index569, 16      ; 2 uses
  %i.jc = icmp eq i64 %index.next573, %n.vec567
  br i1 %i.jc, label %middle.block574, label %vector.body568, !llvm.loop !444

middle.block574:                                  ; preds = %vector.body568
  br i1 %cmp.n575, label %.loopexit348, label %vec.epilog.iter.check580

vec.epilog.iter.check580:                         ; preds = %middle.block574
  br i1 %min.epilog.iters.check581, label %.lr.ph366.preheader, label %vec.epilog.ph582, !prof !148

vec.epilog.ph582:                                 ; preds = %vector.main.loop.iter.check564, %vec.epilog.iter.check580
  %vec.epilog.resume.val576 = phi i64 [ %n.vec567, %vec.epilog.iter.check580 ], [ 0, %vector.main.loop.iter.check564 ]
  br label %vec.epilog.vector.body584

vec.epilog.vector.body584:                        ; preds = %vec.epilog.vector.body584, %vec.epilog.ph582
  %index585 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph582 ], [ %index.next589, %vec.epilog.vector.body584 ] ; 3 uses
  %i.jd = add i64 %index585, %i.ax                ; 3 uses
  %i.je = getelementptr inbounds i8, ptr %i.do, i64 %i.jd
  %wide.load586 = load <4 x i8>, ptr %i.je, align 1, !tbaa !24
  %i.jf = getelementptr inbounds i8, ptr %i.dj, i64 %i.jd
  %wide.load587 = load <4 x i8>, ptr %i.jf, align 1, !tbaa !24
  %i.jg = zext <4 x i8> %wide.load587 to <4 x i16>
  %i.jh = getelementptr inbounds i8, ptr %i.de, i64 %index585
  %wide.load588 = load <4 x i8>, ptr %i.jh, align 1, !tbaa !24
  %i.ji = zext <4 x i8> %wide.load588 to <4 x i16>
  %i.jj = add nuw nsw <4 x i16> %i.ji, %i.jg
  %i.jk = lshr <4 x i16> %i.jj, splat (i16 1)
  %i.jl = trunc nuw <4 x i16> %i.jk to <4 x i8>
  %i.jm = add <4 x i8> %wide.load586, %i.jl
  %i.jn = getelementptr inbounds i8, ptr %i.de, i64 %i.jd
  store <4 x i8> %i.jm, ptr %i.jn, align 1, !tbaa !24
  %index.next589 = add nuw i64 %index585, 4       ; 2 uses
  %i.jo = icmp eq i64 %index.next589, %n.vec583
  br i1 %i.jo, label %vec.epilog.middle.block590, label %vec.epilog.vector.body584, !llvm.loop !445

vec.epilog.middle.block590:                       ; preds = %vec.epilog.vector.body584
  br i1 %cmp.n591, label %.loopexit348, label %.lr.ph366.preheader

.lr.ph366.preheader:                              ; preds = %vector.memcheck559, %iter.check578, %vec.epilog.iter.check580, %vec.epilog.middle.block590
  %indvars.iv436.ph = phi i64 [ %i.ax, %iter.check578 ], [ %i.ax, %vector.memcheck559 ], [ %i.cc, %vec.epilog.iter.check580 ], [ %i.cd, %vec.epilog.middle.block590 ] ; 8 uses
  %i.jp = sub nsw i64 %i.bb, %indvars.iv436.ph
  %xtraiter755 = and i64 %i.jp, 1
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  br i1 %lcmp.mod756.not, label %.lr.ph366.prol.loopexit, label %.lr.ph366.prol

.lr.ph366.prol:                                   ; preds = %.lr.ph366.preheader
  %i.jq = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv436.ph
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !24
  %i.js = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv436.ph
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !24
  %i.ju = zext i8 %i.jt to i16
  %i.jv = sub nsw i64 %indvars.iv436.ph, %i.ax
  %i.jw = getelementptr inbounds i8, ptr %i.de, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !24
  %i.jy = zext i8 %i.jx to i16
  %i.jz = add nuw nsw i16 %i.jy, %i.ju
  %i.ka = lshr i16 %i.jz, 1
  %.tr287.prol = trunc nuw i16 %i.ka to i8
  %.narrow288.prol = add i8 %i.jr, %.tr287.prol
  %i.kb = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv436.ph
  store i8 %.narrow288.prol, ptr %i.kb, align 1, !tbaa !24
  %indvars.iv.next437.prol = add nsw i64 %indvars.iv436.ph, 1
  br label %.lr.ph366.prol.loopexit

.lr.ph366.prol.loopexit:                          ; preds = %.lr.ph366.prol, %.lr.ph366.preheader
  %indvars.iv436.unr = phi i64 [ %indvars.iv436.ph, %.lr.ph366.preheader ], [ %indvars.iv.next437.prol, %.lr.ph366.prol ]
  %i.kc = icmp eq i64 %indvars.iv436.ph, %i.ce
  br i1 %i.kc, label %.loopexit348, label %.lr.ph366

.lr.ph364:                                        ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364
  %indvars.iv431 = phi i64 [ %indvars.iv.next432.1, %.lr.ph364 ], [ %indvars.iv431.unr, %.lr.ph364.prol.loopexit ] ; 5 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv431
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !24
  %i.kf = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv431
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !24
  %i.kh = lshr i8 %i.kg, 1
  %.narrow290 = add i8 %i.kh, %i.ke
  %i.ki = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv431
  store i8 %.narrow290, ptr %i.ki, align 1, !tbaa !24
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next432
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !24
  %i.kl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next432
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !24
  %i.kn = lshr i8 %i.km, 1
  %.narrow290.1 = add i8 %i.kn, %i.kk
  %i.ko = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next432
  store i8 %.narrow290.1, ptr %i.ko, align 1, !tbaa !24
  %indvars.iv.next432.1 = add nuw nsw i64 %indvars.iv431, 2 ; 2 uses
  %exitcond435.not.1 = icmp eq i64 %indvars.iv.next432.1, %wide.trip.count434
  br i1 %exitcond435.not.1, label %.preheader351, label %.lr.ph364, !llvm.loop !446

.lr.ph366:                                        ; preds = %.lr.ph366.prol.loopexit, %.lr.ph366
  %indvars.iv436 = phi i64 [ %indvars.iv.next437.1, %.lr.ph366 ], [ %indvars.iv436.unr, %.lr.ph366.prol.loopexit ] ; 6 uses
  %i.kp = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv436
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !24
  %i.kr = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv436
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !24
  %i.kt = zext i8 %i.ks to i16
  %i.ku = sub nsw i64 %indvars.iv436, %i.ax
  %i.kv = getelementptr inbounds i8, ptr %i.de, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !24
  %i.kx = zext i8 %i.kw to i16
  %i.ky = add nuw nsw i16 %i.kx, %i.kt
  %i.kz = lshr i16 %i.ky, 1
  %.tr287 = trunc nuw i16 %i.kz to i8
  %.narrow288 = add i8 %i.kq, %.tr287
  %i.la = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv436
  store i8 %.narrow288, ptr %i.la, align 1, !tbaa !24
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1 ; 4 uses
  %i.lb = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv.next437
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !24
  %i.ld = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv.next437
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !24
  %i.lf = zext i8 %i.le to i16
  %i.lg = sub nsw i64 %indvars.iv.next437, %i.ax
  %i.lh = getelementptr inbounds i8, ptr %i.de, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !24
  %i.lj = zext i8 %i.li to i16
  %i.lk = add nuw nsw i16 %i.lj, %i.lf
  %i.ll = lshr i16 %i.lk, 1
  %.tr287.1 = trunc nuw i16 %i.ll to i8
  %.narrow288.1 = add i8 %i.lc, %.tr287.1
  %i.lm = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv.next437
  store i8 %.narrow288.1, ptr %i.lm, align 1, !tbaa !24
  %indvars.iv.next437.1 = add nsw i64 %indvars.iv436, 2 ; 2 uses
  %exitcond440.not.1 = icmp eq i64 %indvars.iv.next437.1, %i.bb
  br i1 %exitcond440.not.1, label %.loopexit348, label %.lr.ph366, !llvm.loop !447

.preheader354:                                    ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360, %middle.block679, %vec.epilog.middle.block693, %.preheader356
  br i1 %i.ay, label %iter.check648, label %.loopexit348

iter.check648:                                    ; preds = %.preheader354
  br i1 %min.iters.check632, label %.lr.ph362.preheader, label %vector.memcheck625

vector.memcheck625:                               ; preds = %iter.check648
  %i.ln = sub nsw i64 %16, %i.dd
  %diff.check627 = icmp ugt i64 %i.ln, -16
  %conflict.rdx628 = or i1 %diff.check626, %diff.check627
  %i.lo = add nsw i64 %i.dd, %i.ax
  %i.lp = sub nsw i64 %16, %i.lo
  %diff.check629 = icmp ugt i64 %i.lp, -16
  %conflict.rdx630 = or i1 %conflict.rdx628, %diff.check629
  br i1 %conflict.rdx630, label %.lr.ph362.preheader, label %vector.main.loop.iter.check633

vector.main.loop.iter.check633:                   ; preds = %vector.memcheck625
  br i1 %min.iters.check634, label %vec.epilog.ph652, label %vector.body637

vector.body637:                                   ; preds = %vector.main.loop.iter.check633, %vector.body637
  %index638 = phi i64 [ %index.next643, %vector.body637 ], [ 0, %vector.main.loop.iter.check633 ] ; 4 uses
  %i.lq = add i64 %index638, %i.ax                ; 3 uses
  %i.lr = getelementptr inbounds i8, ptr %i.do, i64 %i.lq
  %wide.load639 = load <16 x i8>, ptr %i.lr, align 1, !tbaa !24
  %i.ls = getelementptr inbounds i8, ptr %i.de, i64 %index638
  %wide.load640 = load <16 x i8>, ptr %i.ls, align 1, !tbaa !24
  %i.lt = zext <16 x i8> %wide.load640 to <16 x i32> ; 3 uses
  %i.lu = getelementptr inbounds i8, ptr %i.dj, i64 %i.lq
  %wide.load641 = load <16 x i8>, ptr %i.lu, align 1, !tbaa !24
  %i.lv = zext <16 x i8> %wide.load641 to <16 x i32> ; 3 uses
  %i.lw = getelementptr inbounds i8, ptr %i.dj, i64 %index638
  %wide.load642 = load <16 x i8>, ptr %i.lw, align 1, !tbaa !24
  %i.lx = zext <16 x i8> %wide.load642 to <16 x i32> ; 2 uses
  %i.ly = mul nuw nsw <16 x i32> %i.lx, splat (i32 3)
  %i.lz = add nuw nsw <16 x i32> %i.lv, %i.lt
  %i.ma = sub nsw <16 x i32> %i.ly, %i.lz         ; 2 uses
  %i.mb = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.lt, <16 x i32> %i.lv) ; 2 uses
  %i.mc = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.lt, <16 x i32> %i.lv) ; 2 uses
  %i.md = icmp sgt <16 x i32> %i.mc, %i.ma
  %i.me = select <16 x i1> %i.md, <16 x i32> %i.lx, <16 x i32> %i.mb
  %i.mf = icmp sgt <16 x i32> %i.ma, %i.mb
  %i.mg = select <16 x i1> %i.mf, <16 x i32> %i.me, <16 x i32> %i.mc
  %i.mh = trunc nuw <16 x i32> %i.mg to <16 x i8>
  %i.mi = add <16 x i8> %wide.load639, %i.mh
  %i.mj = getelementptr inbounds i8, ptr %i.de, i64 %i.lq
  store <16 x i8> %i.mi, ptr %i.mj, align 1, !tbaa !24
  %index.next643 = add nuw i64 %index638, 16      ; 2 uses
  %i.mk = icmp eq i64 %index.next643, %n.vec636
  br i1 %i.mk, label %middle.block644, label %vector.body637, !llvm.loop !448

middle.block644:                                  ; preds = %vector.body637
  br i1 %cmp.n645, label %.loopexit348, label %vec.epilog.iter.check650

vec.epilog.iter.check650:                         ; preds = %middle.block644
  br i1 %min.epilog.iters.check651, label %.lr.ph362.preheader, label %vec.epilog.ph652, !prof !148

vec.epilog.ph652:                                 ; preds = %vector.main.loop.iter.check633, %vec.epilog.iter.check650
  %vec.epilog.resume.val646 = phi i64 [ %n.vec636, %vec.epilog.iter.check650 ], [ 0, %vector.main.loop.iter.check633 ]
  br label %vec.epilog.vector.body654

vec.epilog.vector.body654:                        ; preds = %vec.epilog.vector.body654, %vec.epilog.ph652
  %index655 = phi i64 [ %vec.epilog.resume.val646, %vec.epilog.ph652 ], [ %index.next660, %vec.epilog.vector.body654 ] ; 4 uses
  %i.ml = add i64 %index655, %i.ax                ; 3 uses
  %i.mm = getelementptr inbounds i8, ptr %i.do, i64 %i.ml
  %wide.load656 = load <4 x i8>, ptr %i.mm, align 1, !tbaa !24
  %i.mn = getelementptr inbounds i8, ptr %i.de, i64 %index655
  %wide.load657 = load <4 x i8>, ptr %i.mn, align 1, !tbaa !24
  %i.mo = zext <4 x i8> %wide.load657 to <4 x i32> ; 3 uses
  %i.mp = getelementptr inbounds i8, ptr %i.dj, i64 %i.ml
  %wide.load658 = load <4 x i8>, ptr %i.mp, align 1, !tbaa !24
  %i.mq = zext <4 x i8> %wide.load658 to <4 x i32> ; 3 uses
  %i.mr = getelementptr inbounds i8, ptr %i.dj, i64 %index655
  %wide.load659 = load <4 x i8>, ptr %i.mr, align 1, !tbaa !24
  %i.ms = zext <4 x i8> %wide.load659 to <4 x i32> ; 2 uses
  %i.mt = mul nuw nsw <4 x i32> %i.ms, splat (i32 3)
  %i.mu = add nuw nsw <4 x i32> %i.mq, %i.mo
  %i.mv = sub nsw <4 x i32> %i.mt, %i.mu          ; 2 uses
  %i.mw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mo, <4 x i32> %i.mq) ; 2 uses
  %i.mx = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.mo, <4 x i32> %i.mq) ; 2 uses
  %i.my = icmp sgt <4 x i32> %i.mx, %i.mv
  %i.mz = select <4 x i1> %i.my, <4 x i32> %i.ms, <4 x i32> %i.mw
  %i.na = icmp sgt <4 x i32> %i.mv, %i.mw
  %i.nb = select <4 x i1> %i.na, <4 x i32> %i.mz, <4 x i32> %i.mx
  %i.nc = trunc nuw <4 x i32> %i.nb to <4 x i8>
  %i.nd = add <4 x i8> %wide.load656, %i.nc
  %i.ne = getelementptr inbounds i8, ptr %i.de, i64 %i.ml
  store <4 x i8> %i.nd, ptr %i.ne, align 1, !tbaa !24
  %index.next660 = add nuw i64 %index655, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next660, %n.vec653
  br i1 %i.nf, label %vec.epilog.middle.block661, label %vec.epilog.vector.body654, !llvm.loop !449

vec.epilog.middle.block661:                       ; preds = %vec.epilog.vector.body654
  br i1 %cmp.n662, label %.loopexit348, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %vector.memcheck625, %iter.check648, %vec.epilog.iter.check650, %vec.epilog.middle.block661
  %indvars.iv426.ph = phi i64 [ %i.ax, %iter.check648 ], [ %i.ax, %vector.memcheck625 ], [ %i.bw, %vec.epilog.iter.check650 ], [ %i.bx, %vec.epilog.middle.block661 ]
  br label %.lr.ph362

.lr.ph360:                                        ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360
  %indvars.iv421 = phi i64 [ %indvars.iv.next422.3, %.lr.ph360 ], [ %indvars.iv421.unr, %.lr.ph360.prol.loopexit ] ; 7 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv421
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !24
  %i.ni = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv421
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !24
  %.narrow286 = add i8 %i.nj, %i.nh
  %i.nk = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv421
  store i8 %.narrow286, ptr %i.nk, align 1, !tbaa !24
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next422
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !24
  %i.nn = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !24
  %.narrow286.1 = add i8 %i.no, %i.nm
  %i.np = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422
  store i8 %.narrow286.1, ptr %i.np, align 1, !tbaa !24
  %indvars.iv.next422.1 = add nuw nsw i64 %indvars.iv421, 2 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next422.1
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !24
  %i.ns = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422.1
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !24
  %.narrow286.2 = add i8 %i.nt, %i.nr
  %i.nu = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422.1
  store i8 %.narrow286.2, ptr %i.nu, align 1, !tbaa !24
  %indvars.iv.next422.2 = add nuw nsw i64 %indvars.iv421, 3 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next422.2
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !24
  %i.nx = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422.2
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !24
  %.narrow286.3 = add i8 %i.ny, %i.nw
  %i.nz = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422.2
  store i8 %.narrow286.3, ptr %i.nz, align 1, !tbaa !24
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %exitcond425.not.3 = icmp eq i64 %indvars.iv.next422.3, %wide.trip.count424
  br i1 %exitcond425.not.3, label %.preheader354, label %.lr.ph360, !llvm.loop !450

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %.lr.ph362 ], [ %indvars.iv426.ph, %.lr.ph362.preheader ] ; 5 uses
  %i.oa = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv426
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !24
  %i.oc = sub nsw i64 %indvars.iv426, %i.ax       ; 2 uses
  %i.od = getelementptr inbounds i8, ptr %i.de, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !24
  %i.of = zext i8 %i.oe to i32                    ; 3 uses
  %i.og = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv426
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !24
  %i.oi = zext i8 %i.oh to i32                    ; 3 uses
  %i.oj = getelementptr inbounds i8, ptr %i.dj, i64 %i.oc
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !24
  %i.ol = zext i8 %i.ok to i32                    ; 2 uses
  %i.om = mul nuw nsw i32 %i.ol, 3
  %i.on = add nuw nsw i32 %i.oi, %i.of
  %i.oo = sub nsw i32 %i.om, %i.on                ; 2 uses
  %i.op = tail call i32 @llvm.umin.i32(i32 %i.of, i32 %i.oi) ; 2 uses
  %i.oq = tail call i32 @llvm.umax.i32(i32 %i.of, i32 %i.oi) ; 2 uses
  %.not.i303 = icmp sgt i32 %i.oq, %i.oo
  %i.or = select i1 %.not.i303, i32 %i.ol, i32 %i.op
  %.not20.i = icmp sgt i32 %i.oo, %i.op
  %i.os = select i1 %.not20.i, i32 %i.or, i32 %i.oq
  %.tr = trunc nuw i32 %i.os to i8
  %.narrow284 = add i8 %i.ob, %.tr
  %i.ot = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv426
  store i8 %.narrow284, ptr %i.ot, align 1, !tbaa !24
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %i.bb
  br i1 %exitcond430.not, label %.loopexit348, label %.lr.ph362, !llvm.loop !451

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull align 1 %i.do, i64 %i.ax, i1 false)
  br i1 %i.ay, label %iter.check715, label %.loopexit348

iter.check715:                                    ; preds = %bb.s
  br i1 %or.cond736, label %.lr.ph.preheader, label %vector.main.loop.iter.check700

vector.main.loop.iter.check700:                   ; preds = %iter.check715
  br i1 %min.iters.check701, label %vec.epilog.ph719, label %vector.body704

vector.body704:                                   ; preds = %vector.main.loop.iter.check700, %vector.body704
  %index705 = phi i64 [ %index.next710, %vector.body704 ], [ 0, %vector.main.loop.iter.check700 ] ; 3 uses
  %i.ou = add i64 %index705, %i.ax                ; 2 uses
  %i.ov = getelementptr inbounds i8, ptr %i.do, i64 %i.ou ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %wide.load706 = load <16 x i8>, ptr %i.ov, align 1, !tbaa !24
  %wide.load707 = load <16 x i8>, ptr %i.ow, align 1, !tbaa !24
  %i.ox = getelementptr inbounds i8, ptr %i.de, i64 %index705 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %wide.load708 = load <16 x i8>, ptr %i.ox, align 1, !tbaa !24
  %wide.load709 = load <16 x i8>, ptr %i.oy, align 1, !tbaa !24
  %i.oz = lshr <16 x i8> %wide.load708, splat (i8 1)
  %i.pa = lshr <16 x i8> %wide.load709, splat (i8 1)
  %i.pb = add <16 x i8> %i.oz, %wide.load706
  %i.pc = add <16 x i8> %i.pa, %wide.load707
  %i.pd = getelementptr inbounds i8, ptr %i.de, i64 %i.ou ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store <16 x i8> %i.pb, ptr %i.pd, align 1, !tbaa !24
  store <16 x i8> %i.pc, ptr %i.pe, align 1, !tbaa !24
  %index.next710 = add nuw i64 %index705, 32      ; 2 uses
  %i.pf = icmp eq i64 %index.next710, %n.vec703
  br i1 %i.pf, label %middle.block711, label %vector.body704, !llvm.loop !452

middle.block711:                                  ; preds = %vector.body704
  br i1 %cmp.n712, label %.loopexit348, label %vec.epilog.iter.check717

vec.epilog.iter.check717:                         ; preds = %middle.block711
  br i1 %min.epilog.iters.check718, label %.lr.ph.preheader, label %vec.epilog.ph719, !prof !141

vec.epilog.ph719:                                 ; preds = %vector.main.loop.iter.check700, %vec.epilog.iter.check717
  %vec.epilog.resume.val713 = phi i64 [ %n.vec703, %vec.epilog.iter.check717 ], [ 0, %vector.main.loop.iter.check700 ]
  br label %vec.epilog.vector.body721

vec.epilog.vector.body721:                        ; preds = %vec.epilog.vector.body721, %vec.epilog.ph719
  %index722 = phi i64 [ %vec.epilog.resume.val713, %vec.epilog.ph719 ], [ %index.next725, %vec.epilog.vector.body721 ] ; 3 uses
  %i.pg = add i64 %index722, %i.ax                ; 2 uses
end_hunk_0
