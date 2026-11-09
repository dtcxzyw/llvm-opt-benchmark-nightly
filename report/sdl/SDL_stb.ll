Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 95
begin_hunk_0_@stbi__zhuffman_decode:bb.a
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i32
  %i.aw = add nsw i32 %i.ar, %i.av                ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 287
  br i1 %i.ax, label %stbi__zhuffman_decode_slowpath.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1156
  %i.az = sext i32 %i.aw to i64                   ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i64
  %.not.i21 = icmp eq i64 %indvars.iv.i, %i.bc
  br i1 %.not.i21, label %bb.p, label %stbi__zhuffman_decode_slowpath.exit

bb.p:                                             ; preds = %bb.o
  %i.bd = lshr i32 %i.u, %i.aj
  store i32 %i.bd, ptr %i.t, align 8
  %i.be = sub nsw i32 %i.s, %i.aj
  store i32 %i.be, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1444
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.az
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = zext i16 %i.bh to i32
  br label %stbi__zhuffman_decode_slowpath.exit

stbi__zhuffman_decode_slowpath.exit:              ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.c, %bb.j
  %.0 = phi i32 [ -1, %bb.c ], [ %i.ad, %bb.j ], [ %i.bi, %bb.p ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__create_png_image_raw(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #0 {
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

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

stbi__malloc_mad3.exit:                           ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #13 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.x, label %stbi__mul2sizes_valid.exit.thread15.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.f
  %i.y = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.y
  br i1 %.not23.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i

stbi__mul2sizes_valid.exit.thread15.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.f
  %i.z = mul i32 %i.g, %4                         ; 20 uses
  %i.aa = or i32 %i.z, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.aa, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %stbi__mad3sizes_valid.exit.thread

bb.g:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i
  %i.ab = icmp eq i32 %6, 0
  br i1 %i.ab, label %stbi__mad3sizes_valid.exit._crit_edge, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.g
  %i.ac = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.z, %i.ac
  %i.ad = mul i32 %i.z, %6                        ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2147483640
  %or.cond = or i1 %.not.i, %i.ae
  br i1 %or.cond, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit._crit_edge

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15.i, %bb.e, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i
  %i.af = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

stbi__mad3sizes_valid.exit._crit_edge:            ; preds = %bb.g, %stbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %stbi__mul2sizes_valid.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 8 uses
  br i1 %i.k, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i299

stbi__mul2sizes_valid.exit.i299:                  ; preds = %stbi__mad3sizes_valid.exit._crit_edge
  %i.ai = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %.not10.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %stbi__mad3sizes_valid.exit._crit_edge, %stbi__mul2sizes_valid.exit.i299
  %i.aj = mul nuw nsw i32 %i.ah, %5
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not330, label %stbi__mad2sizes_valid.exit.thread, label %bb.h

stbi__mad2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.i299, %stbi__mad2sizes_valid.exit
  %i.al = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

bb.h:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.ar) #13 ; 7 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.au = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.au, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.au, i32 %i.ah, i32 %4
  %i.av = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.aw = sext i32 %spec.select to i64            ; 40 uses
  %i.ax = icmp slt i32 %spec.select, %i.av        ; 4 uses
  %i.ay = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.az = icmp sgt i32 %i.av, 0
  %i.ba = sext i32 %i.av to i64                   ; 13 uses
  %i.bb = icmp eq i32 %6, 8
  %i.bc = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.bd = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.z, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 4 uses
  %i.be = icmp sgt i32 %4, 0                      ; 4 uses
  %i.bf = zext i32 %.030.i305 to i64              ; 19 uses
  %i.bg = zext i32 %i.z to i64
  %i.bh = icmp eq i32 %7, 0
  %i.bi = sext i32 %6 to i64
  %i.bj = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %i.bi
  %wide.trip.count460 = zext i32 %5 to i64
  %i.bk = zext nneg i32 %i.ah to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.av to i64     ; 8 uses
  %i.bl = shl nuw nsw i64 %i.bf, 1
  %i.bm = add i32 %i.z, -1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %8 = add nuw nsw i64 %i.bo, 2                   ; 2 uses
  %i.bp = sub nsw i64 %i.ba, %i.aw                ; 28 uses
  %i.bq = add i32 %i.z, -1                        ; 4 uses
  %i.br = add nuw nsw i64 %i.bf, 1
  %min.iters.check747 = icmp ult i64 %i.bp, 8
  %i.bs = add nsw i64 %i.aw, -1
  %diff.check749 = icmp ult i64 %i.bs, 31
  %or.cond782 = select i1 %min.iters.check747, i1 true, i1 %diff.check749
  %min.iters.check751 = icmp ult i64 %i.bp, 32
  %i.bt = and i64 %i.bp, 24
  %n.vec753 = and i64 %i.bp, -32                  ; 4 uses
  %i.bu = add nsw i64 %n.vec753, %i.aw
  %cmp.n762 = icmp eq i64 %i.bp, %n.vec753
  %min.epilog.iters.check766 = icmp eq i64 %i.bt, 0
  %n.vec769 = and i64 %i.bp, -8                   ; 3 uses
  %i.bv = add nsw i64 %n.vec769, %i.aw
  %cmp.n776 = icmp eq i64 %i.bp, %n.vec769
  %i.bw = add nsw i64 %i.ba, -1
  %min.iters.check713 = icmp ult i32 %spec.select, 4
  %min.iters.check717 = icmp ult i32 %spec.select, 32
  %i.bx = and i64 %wide.trip.count424, 28
  %n.vec719 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n728 = icmp eq i64 %n.vec719, %wide.trip.count424
  %min.epilog.iters.check732 = icmp eq i64 %i.bx, 0
  %n.vec735 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n742 = icmp eq i64 %n.vec735, %wide.trip.count424
  %xtraiter797 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod798.not = icmp eq i64 %xtraiter797, 0
  %min.iters.check673 = icmp ult i64 %i.bp, 4
  %i.by = add nsw i64 %i.aw, -1
  %diff.check675 = icmp ult i64 %i.by, 15
  %min.iters.check681 = icmp ult i64 %i.bp, 16
  %i.bz = and i64 %i.bp, 12
  %n.vec683 = and i64 %i.bp, -16                  ; 4 uses
  %i.ca = add nsw i64 %n.vec683, %i.aw
  %cmp.n692 = icmp eq i64 %i.bp, %n.vec683
  %min.epilog.iters.check696 = icmp eq i64 %i.bz, 0
  %n.vec699 = and i64 %i.bp, -4                   ; 3 uses
  %i.cb = add nsw i64 %n.vec699, %i.aw
  %cmp.n708 = icmp eq i64 %i.bp, %n.vec699
  %min.iters.check635 = icmp ult i32 %spec.select, 4
  %min.iters.check639 = icmp ult i32 %spec.select, 32
  %i.cc = and i64 %wide.trip.count424, 28
  %n.vec641 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n650 = icmp eq i64 %n.vec641, %wide.trip.count424
  %min.epilog.iters.check654 = icmp eq i64 %i.cc, 0
  %n.vec657 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n664 = icmp eq i64 %n.vec657, %wide.trip.count424
  %xtraiter799 = and i64 %wide.trip.count424, 1
  %lcmp.mod800.not = icmp eq i64 %xtraiter799, 0
  %i.cd = add nsw i64 %wide.trip.count424, -1
  %min.iters.check600 = icmp ult i64 %i.bp, 4
  %i.ce = add nsw i64 %i.aw, -1
  %diff.check603 = icmp ult i64 %i.ce, 15
  %min.iters.check605 = icmp ult i64 %i.bp, 16
  %i.cf = and i64 %i.bp, 12
  %n.vec607 = and i64 %i.bp, -16                  ; 4 uses
  %i.cg = add nsw i64 %n.vec607, %i.aw
  %cmp.n615 = icmp eq i64 %i.bp, %n.vec607
  %min.epilog.iters.check619 = icmp eq i64 %i.cf, 0
  %n.vec622 = and i64 %i.bp, -4                   ; 3 uses
  %i.ch = add nsw i64 %n.vec622, %i.aw
  %cmp.n630 = icmp eq i64 %i.bp, %n.vec622
  %i.ci = add nsw i64 %i.ba, -1
  %min.iters.check565 = icmp ult i32 %i.av, 4
  %min.iters.check569 = icmp ult i32 %i.av, 32
  %i.cj = and i64 %wide.trip.count444, 28
  %n.vec571 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n580 = icmp eq i64 %n.vec571, %wide.trip.count444
  %min.epilog.iters.check584 = icmp eq i64 %i.cj, 0
  %n.vec587 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n594 = icmp eq i64 %n.vec587, %wide.trip.count444
  %xtraiter805 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod806.not = icmp eq i64 %xtraiter805, 0
  %min.iters.check541 = icmp ult i64 %i.bp, 8
  %i.ck = add nsw i64 %i.aw, -1
  %diff.check = icmp ult i64 %i.ck, 31
  %or.cond781 = select i1 %min.iters.check541, i1 true, i1 %diff.check
  %min.iters.check543 = icmp ult i64 %i.bp, 32
  %i.cl = and i64 %i.bp, 24
  %n.vec545 = and i64 %i.bp, -32                  ; 4 uses
  %i.cm = add nsw i64 %n.vec545, %i.aw
  %cmp.n554 = icmp eq i64 %i.bp, %n.vec545
  %min.epilog.iters.check = icmp eq i64 %i.cl, 0
  %n.vec555 = and i64 %i.bp, -8                   ; 3 uses
  %i.cn = add nsw i64 %n.vec555, %i.aw
  %cmp.n560 = icmp eq i64 %i.bp, %n.vec555
  %i.co = add nsw i64 %i.ba, -1
  %xtraiter811 = and i32 %4, 1
  %i.cp = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod812.not = icmp eq i32 %xtraiter811, 0
  %lcmp.mod813 = trunc i32 %4 to i1
  %i.cq = zext i32 %i.z to i64                    ; 2 uses
  %min.iters.check516 = icmp ult i32 %i.z, 16
  %invariant.gep = getelementptr i8, ptr %i.as, i64 %8
  %n.vec522 = and i64 %i.cq, 4294967288           ; 4 uses
  %i.cr = shl nuw nsw i64 %n.vec522, 1            ; 2 uses
  %i.cs = trunc nuw i64 %n.vec522 to i32
  %cmp.n535 = icmp eq i64 %n.vec522, %i.cq
  %i.ct = and i64 %i.bf, 1
  %lcmp.mod818.not.not = icmp eq i64 %i.ct, 0
  %i.cu = shl nuw nsw i64 %i.bf, 2
  %i.cv = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bf, -1
  %i.cw = icmp eq i32 %.030.i305, 0
  %i.cx = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %9 = getelementptr i8, ptr %i.as, i64 %i.bf
  %invariant.gep856 = getelementptr i8, ptr %9, i64 1
  %n.vec = and i64 %i.cx, 2147483640              ; 3 uses
  %i.cy = sub nsw i64 %i.bf, %n.vec
  %cmp.n = icmp eq i64 %n.vec, %i.cx
  %xtraiter823 = and i32 %i.z, 1
  %i.cz = icmp eq i32 %i.bq, 0
  %unroll_iter826 = and i32 %i.z, -2
  %lcmp.mod824.not = icmp eq i32 %xtraiter823, 0
  %lcmp.mod825 = trunc i32 %i.z to i1
  %xtraiter828 = and i32 %i.z, 1
  %i.da = icmp eq i32 %i.bq, 0
  %unroll_iter831 = and i32 %i.z, -2
  %lcmp.mod829.not = icmp eq i32 %xtraiter828, 0
  %lcmp.mod830 = trunc i32 %i.z to i1
  %xtraiter833 = and i32 %i.z, 1
  %i.db = icmp eq i32 %i.bq, 0
  %unroll_iter836 = and i32 %i.z, -2
  %lcmp.mod834.not = icmp eq i32 %xtraiter833, 0
  %lcmp.mod835 = trunc i32 %i.z to i1
  %i.dc = and i64 %i.bf, 1
  %lcmp.mod839.not.not = icmp eq i64 %i.dc, 0
  %i.dd = shl nuw nsw i64 %i.bf, 2
  %i.de = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bf, -1
  %i.df = icmp eq i32 %.030.i305, 0
  %xtraiter841 = and i64 %i.br, 3                 ; 2 uses
  %lcmp.mod842.not = icmp eq i64 %xtraiter841, 0
  %i.dg = icmp ult i32 %4, 4
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qq, %.loopexit ] ; 2 uses
  %i.dh = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.di = trunc i64 %indvars.iv457 to i1
  %i.dj = select i1 %i.di, i64 %i.bk, i64 0       ; 9 uses
  %i.dk = getelementptr i8, ptr %i.as, i64 %i.dj  ; 90 uses
  %i.dl = and i32 %i.dh, 1
  %i.dm = xor i32 %i.dl, 1
  %i.dn = mul nuw nsw i32 %i.dm, %i.ah
  %i.do = zext nneg i32 %i.dn to i64              ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.do ; 30 uses
  %i.dq = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.dr = mul i32 %i.e, %i.dh
  %i.ds = zext i32 %i.dr to i64                   ; 3 uses
  %i.dt = getelementptr i8, ptr %i.dq, i64 %i.ds  ; 41 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dv = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.dw = icmp ugt i8 %i.dv, 4
  br i1 %i.dw, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dy = zext nneg i8 %i.dv to i64
  %i.dz = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.ea, %bb.o ], [ %i.dv, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.ay, label %iter.check729, label %.preheader354

iter.check729:                                    ; preds = %.preheader356
  %i.eb = sub nsw i64 %i.do, %i.dj
  %diff.check715 = icmp ugt i64 %i.eb, -32
  %or.cond778 = select i1 %min.iters.check713, i1 true, i1 %diff.check715
  br i1 %or.cond778, label %.lr.ph360.preheader, label %vector.main.loop.iter.check716

vector.main.loop.iter.check716:                   ; preds = %iter.check729
  br i1 %min.iters.check717, label %vec.epilog.ph733, label %vector.body720

vector.body720:                                   ; preds = %vector.main.loop.iter.check716, %vector.body720
  %index721 = phi i64 [ %index.next726, %vector.body720 ], [ 0, %vector.main.loop.iter.check716 ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 %index721 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load722 = load <16 x i8>, ptr %i.ec, align 1
  %wide.load723 = load <16 x i8>, ptr %i.ed, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 %index721 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load724 = load <16 x i8>, ptr %i.ee, align 1
  %wide.load725 = load <16 x i8>, ptr %i.ef, align 1
  %i.eg = add <16 x i8> %wide.load724, %wide.load722
  %i.eh = add <16 x i8> %wide.load725, %wide.load723
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index721 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <16 x i8> %i.eg, ptr %i.ei, align 1
  store <16 x i8> %i.eh, ptr %i.ej, align 1
  %index.next726 = add nuw i64 %index721, 32      ; 2 uses
  %i.ek = icmp eq i64 %index.next726, %n.vec719
  br i1 %i.ek, label %middle.block727, label %vector.body720, !llvm.loop !230

middle.block727:                                  ; preds = %vector.body720
  br i1 %cmp.n728, label %.preheader354, label %vec.epilog.iter.check730

vec.epilog.iter.check730:                         ; preds = %middle.block727
  br i1 %min.epilog.iters.check732, label %.lr.ph360.preheader, label %vec.epilog.ph733, !prof !17

vec.epilog.ph733:                                 ; preds = %vector.main.loop.iter.check716, %vec.epilog.iter.check730
  %vec.epilog.resume.val734 = phi i64 [ %n.vec719, %vec.epilog.iter.check730 ], [ 0, %vector.main.loop.iter.check716 ]
  br label %vec.epilog.vector.body736

vec.epilog.vector.body736:                        ; preds = %vec.epilog.vector.body736, %vec.epilog.ph733
  %index737 = phi i64 [ %vec.epilog.resume.val734, %vec.epilog.ph733 ], [ %index.next740, %vec.epilog.vector.body736 ] ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.du, i64 %index737
  %wide.load738 = load <4 x i8>, ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.dp, i64 %index737
  %wide.load739 = load <4 x i8>, ptr %i.em, align 1
  %i.en = add <4 x i8> %wide.load739, %wide.load738
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index737
  store <4 x i8> %i.en, ptr %i.eo, align 1
  %index.next740 = add nuw i64 %index737, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next740, %n.vec735
  br i1 %i.ep, label %vec.epilog.middle.block741, label %vec.epilog.vector.body736, !llvm.loop !231

vec.epilog.middle.block741:                       ; preds = %vec.epilog.vector.body736
  br i1 %cmp.n742, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check729, %vec.epilog.iter.check730, %vec.epilog.middle.block741
  %indvars.iv421.ph = phi i64 [ 0, %iter.check729 ], [ %n.vec719, %vec.epilog.iter.check730 ], [ %n.vec735, %vec.epilog.middle.block741 ] ; 3 uses
  br i1 %lcmp.mod798.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.du, i64 %indvars.iv421.prol
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv421.prol
  %i.et = load i8, ptr %i.es, align 1
  %.narrow286.prol = add i8 %i.et, %i.er
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.eu, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter797
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !232

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.ev = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.ew = icmp ugt i64 %i.ev, -4
  br i1 %i.ew, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.ay, label %iter.check651, label %.preheader351

iter.check651:                                    ; preds = %.preheader353
  %i.ex = sub nsw i64 %i.do, %i.dj
  %diff.check637 = icmp ugt i64 %i.ex, -32
  %or.cond779 = select i1 %min.iters.check635, i1 true, i1 %diff.check637
  br i1 %or.cond779, label %.lr.ph364.preheader, label %vector.main.loop.iter.check638

vector.main.loop.iter.check638:                   ; preds = %iter.check651
  br i1 %min.iters.check639, label %vec.epilog.ph655, label %vector.body642

vector.body642:                                   ; preds = %vector.main.loop.iter.check638, %vector.body642
  %index643 = phi i64 [ %index.next648, %vector.body642 ], [ 0, %vector.main.loop.iter.check638 ] ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.du, i64 %index643 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load644 = load <16 x i8>, ptr %i.ey, align 1
  %wide.load645 = load <16 x i8>, ptr %i.ez, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dp, i64 %index643 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load646 = load <16 x i8>, ptr %i.fa, align 1
  %wide.load647 = load <16 x i8>, ptr %i.fb, align 1
  %i.fc = lshr <16 x i8> %wide.load646, splat (i8 1)
  %i.fd = lshr <16 x i8> %wide.load647, splat (i8 1)
  %i.fe = add <16 x i8> %i.fc, %wide.load644
  %i.ff = add <16 x i8> %i.fd, %wide.load645
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index643 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <16 x i8> %i.fe, ptr %i.fg, align 1
  store <16 x i8> %i.ff, ptr %i.fh, align 1
  %index.next648 = add nuw i64 %index643, 32      ; 2 uses
  %i.fi = icmp eq i64 %index.next648, %n.vec641
  br i1 %i.fi, label %middle.block649, label %vector.body642, !llvm.loop !233

middle.block649:                                  ; preds = %vector.body642
  br i1 %cmp.n650, label %.preheader351, label %vec.epilog.iter.check652

vec.epilog.iter.check652:                         ; preds = %middle.block649
  br i1 %min.epilog.iters.check654, label %.lr.ph364.preheader, label %vec.epilog.ph655, !prof !17

vec.epilog.ph655:                                 ; preds = %vector.main.loop.iter.check638, %vec.epilog.iter.check652
  %vec.epilog.resume.val656 = phi i64 [ %n.vec641, %vec.epilog.iter.check652 ], [ 0, %vector.main.loop.iter.check638 ]
  br label %vec.epilog.vector.body658

vec.epilog.vector.body658:                        ; preds = %vec.epilog.vector.body658, %vec.epilog.ph655
  %index659 = phi i64 [ %vec.epilog.resume.val656, %vec.epilog.ph655 ], [ %index.next662, %vec.epilog.vector.body658 ] ; 4 uses
end_hunk_0
begin_hunk_1_@stbi__create_png_image_raw:bb.a
  %.2244384.epil.init = phi ptr [ %i.dk, %.lr.ph387.preheader ], [ %.3245, %.loopexit335.loopexit785.unr-lcssa ]
  %.1266383.epil.init = phi i32 [ 0, %.lr.ph387.preheader ], [ %i.ro, %.loopexit335.loopexit785.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod825)
  %i.si = and i32 %.1266383.epil.init, 3
  %i.sj = icmp eq i32 %i.si, 0
  br i1 %i.sj, label %bb.aa, label %.loopexit335.loopexit785.epilog-lcssa

bb.aa:                                            ; preds = %.lr.ph387.epil.preheader
  %i.sk = load i8, ptr %.2244384.epil.init, align 1
  br label %.loopexit335.loopexit785.epilog-lcssa

.loopexit335.loopexit785.epilog-lcssa:            ; preds = %bb.aa, %.lr.ph387.epil.preheader
  %.3.epil = phi i8 [ %i.sk, %bb.aa ], [ %.2238386.epil.init, %.lr.ph387.epil.preheader ]
  %i.sl = lshr i8 %.3.epil, 6
  %i.sm = mul i8 %i.sl, %i.qs
  store i8 %i.sm, ptr %.1240385.epil.init, align 1
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.loopexit785.epilog-lcssa, %.loopexit335.loopexit785.unr-lcssa, %.loopexit335.loopexit784.epilog-lcssa, %.loopexit335.loopexit784.unr-lcssa, %.loopexit335.loopexit.epilog-lcssa, %.loopexit335.loopexit.unr-lcssa, %.preheader338, %.preheader336, %.preheader
  br i1 %i.bc, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit335
  br i1 %i.bd, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.ab
  br i1 %i.be, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.preheader26.i
  br i1 %lcmp.mod839.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.sn = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dd ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 3
  store i8 -1, ptr %i.so, align 1
  %i.sp = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.de ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 2
  %i.sr = load i8, ptr %i.sq, align 1
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 2
  store i8 %i.sr, ptr %i.ss, align 1
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 1
  %i.su = load i8, ptr %i.st, align 1
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sn, i64 1
  store i8 %i.su, ptr %i.sv, align 1
  %i.sw = load i8, ptr %i.sp, align 1
  store i8 %i.sw, ptr %i.sn, align 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.bf, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  br i1 %i.df, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.ab
  br i1 %i.be, label %.lr.ph32.i.preheader, label %.loopexit

.lr.ph32.i.preheader:                             ; preds = %.preheader.i
  br i1 %lcmp.mod842.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ], [ %i.bf, %.lr.ph32.i.preheader ] ; 3 uses
  %prol.iter843 = phi i64 [ %prol.iter843.next, %.lr.ph32.i.prol ], [ 0, %.lr.ph32.i.preheader ]
  %i.sx = shl nuw nsw i64 %indvars.iv35.i.prol, 1
  %i.sy = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.sx ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 1
  store i8 -1, ptr %i.sz, align 1
  %i.ta = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv35.i.prol
  %i.tb = load i8, ptr %i.ta, align 1
  store i8 %i.tb, ptr %i.sy, align 1
  %indvars.iv.next36.i.prol = add nsw i64 %indvars.iv35.i.prol, -1 ; 2 uses
  %prol.iter843.next = add i64 %prol.iter843, 1   ; 2 uses
  %prol.iter843.cmp.not = icmp eq i64 %prol.iter843.next, %xtraiter841
  br i1 %prol.iter843.cmp.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol, !llvm.loop !256

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.i.preheader
  %indvars.iv35.i.unr = phi i64 [ %i.bf, %.lr.ph32.i.preheader ], [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ]
  br i1 %i.dg, label %.loopexit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.3, %.lr.ph32.i ], [ %indvars.iv35.i.unr, %.lr.ph32.i.prol.loopexit ] ; 6 uses
  %i.tc = shl nuw nsw i64 %indvars.iv35.i, 1
  %i.td = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.tc ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 1
  store i8 -1, ptr %i.te, align 1
  %i.tf = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv35.i
  %i.tg = load i8, ptr %i.tf, align 1
  store i8 %i.tg, ptr %i.td, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1 ; 2 uses
  %i.th = shl nuw nsw i64 %indvars.iv.next36.i, 1
  %i.ti = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.th ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 1
  store i8 -1, ptr %i.tj, align 1
  %i.tk = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv.next36.i
  %i.tl = load i8, ptr %i.tk, align 1
  store i8 %i.tl, ptr %i.ti, align 1
  %indvars.iv.next36.i.1 = add nsw i64 %indvars.iv35.i, -2 ; 2 uses
  %i.tm = shl nuw nsw i64 %indvars.iv.next36.i.1, 1
  %i.tn = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.tm ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 1
  store i8 -1, ptr %i.to, align 1
  %i.tp = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv.next36.i.1
  %i.tq = load i8, ptr %i.tp, align 1
  store i8 %i.tq, ptr %i.tn, align 1
  %indvars.iv.next36.i.2 = add nsw i64 %indvars.iv35.i, -3 ; 3 uses
  %i.tr = shl nuw nsw i64 %indvars.iv.next36.i.2, 1
  %i.ts = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.tr ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 1
  store i8 -1, ptr %i.tt, align 1
  %i.tu = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv.next36.i.2
  %i.tv = load i8, ptr %i.tu, align 1
  store i8 %i.tv, ptr %i.ts, align 1
  %indvars.iv.next36.i.3 = add nsw i64 %indvars.iv35.i, -4
  %.not39.i.3 = icmp eq i64 %indvars.iv.next36.i.2, 0
  br i1 %.not39.i.3, label %.loopexit, label %.lr.ph32.i, !llvm.loop !257

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.tw = shl nuw nsw i64 %indvars.iv.i, 2
  %i.tx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.tw ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 3
  store i8 -1, ptr %i.ty, align 1
  %i.tz = mul nuw nsw i64 %indvars.iv.i, 3
  %i.ua = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.tz ; 3 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 2
  %i.uc = load i8, ptr %i.ub, align 1
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tx, i64 2
  store i8 %i.uc, ptr %i.ud, align 1
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ua, i64 1
  %i.uf = load i8, ptr %i.ue, align 1
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tx, i64 1
  store i8 %i.uf, ptr %i.ug, align 1
  %i.uh = load i8, ptr %i.ua, align 1
  store i8 %i.uh, ptr %i.tx, align 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.ui = shl nuw nsw i64 %indvars.iv.next.i, 2
  %i.uj = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ui ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 3
  store i8 -1, ptr %i.uk, align 1
  %i.ul = mul nuw nsw i64 %indvars.iv.next.i, 3
  %i.um = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ul ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 2
  %i.uo = load i8, ptr %i.un, align 1
  %i.up = getelementptr inbounds nuw i8, ptr %i.uj, i64 2
  store i8 %i.uo, ptr %i.up, align 1
  %i.uq = getelementptr inbounds nuw i8, ptr %i.um, i64 1
  %i.ur = load i8, ptr %i.uq, align 1
  %i.us = getelementptr inbounds nuw i8, ptr %i.uj, i64 1
  store i8 %i.ur, ptr %i.us, align 1
  %i.ut = load i8, ptr %i.um, align 1
  store i8 %i.ut, ptr %i.uj, align 1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %.not.i304.1 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i304.1, label %.loopexit, label %.lr.ph.i, !llvm.loop !258

bb.ac:                                            ; preds = %.loopexit348
  br i1 %i.bb, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.bc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dt, ptr nonnull align 1 %i.dk, i64 %i.bg, i1 false)
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  br i1 %i.bd, label %.preheader.i312, label %.preheader26.i306

.preheader26.i306:                                ; preds = %bb.af
  br i1 %i.be, label %.lr.ph.i308.preheader, label %.loopexit

.lr.ph.i308.preheader:                            ; preds = %.preheader26.i306
  br i1 %lcmp.mod818.not.not, label %.lr.ph.i308.prol, label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol:                                 ; preds = %.lr.ph.i308.preheader
  %i.uu = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.cu ; 4 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 3
  store i8 -1, ptr %i.uv, align 1
  %i.uw = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.cv ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 2
  %i.uy = load i8, ptr %i.ux, align 1
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uu, i64 2
  store i8 %i.uy, ptr %i.uz, align 1
  %i.va = getelementptr inbounds nuw i8, ptr %i.uw, i64 1
  %i.vb = load i8, ptr %i.va, align 1
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uu, i64 1
  store i8 %i.vb, ptr %i.vc, align 1
  %i.vd = load i8, ptr %i.uw, align 1
  store i8 %i.vd, ptr %i.uu, align 1
  br label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol.loopexit:                        ; preds = %.lr.ph.i308.prol, %.lr.ph.i308.preheader
  %indvars.iv.i309.unr = phi i64 [ %i.bf, %.lr.ph.i308.preheader ], [ %indvars.iv.next.i310.prol, %.lr.ph.i308.prol ]
  br i1 %i.cw, label %.loopexit, label %.lr.ph.i308

.preheader.i312:                                  ; preds = %bb.af
  br i1 %i.be, label %.lr.ph32.i314.preheader, label %.loopexit

.lr.ph32.i314.preheader:                          ; preds = %.preheader.i312
  br i1 %min.iters.check, label %.lr.ph32.i314.preheader786, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph32.i314.preheader
  %i.ve = getelementptr i8, ptr %i.dq, i64 %i.bl
  %i.vf = getelementptr i8, ptr %i.ve, i64 2
  %i.vg = getelementptr i8, ptr %i.vf, i64 %i.ds
  %gep857 = getelementptr i8, ptr %invariant.gep856, i64 %i.dj
  %bound0 = icmp ult ptr %i.dt, %gep857
  %bound1 = icmp ult ptr %i.dk, %i.vg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph32.i314.preheader786, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.vh = sub i64 %i.bf, %index                   ; 2 uses
  %i.vi = shl nuw nsw i64 %i.vh, 1
  %i.vj = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.vi
  %i.vk = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.vh
  %i.vl = getelementptr inbounds i8, ptr %i.vk, i64 -7
  %wide.load = load <8 x i8>, ptr %i.vl, align 1, !alias.scope !275
  %i.vm = getelementptr inbounds i8, ptr %i.vj, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.vm, align 1, !alias.scope !276, !noalias !275
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vn = icmp eq i64 %index.next, %n.vec
  br i1 %i.vn, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.i314.preheader786

.lr.ph32.i314.preheader786:                       ; preds = %vector.memcheck, %.lr.ph32.i314.preheader, %middle.block
  %indvars.iv35.i315.ph = phi i64 [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph32.i314.preheader ], [ %i.cy, %middle.block ] ; 4 uses
  %i.vo = add nsw i64 %indvars.iv35.i315.ph, 1
  %xtraiter820 = and i64 %i.vo, 3                 ; 2 uses
  %lcmp.mod821.not = icmp eq i64 %xtraiter820, 0
  br i1 %lcmp.mod821.not, label %.lr.ph32.i314.prol.loopexit, label %.lr.ph32.i314.prol

.lr.ph32.i314.prol:                               ; preds = %.lr.ph32.i314.preheader786, %.lr.ph32.i314.prol
  %indvars.iv35.i315.prol = phi i64 [ %indvars.iv.next36.i316.prol, %.lr.ph32.i314.prol ], [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader786 ] ; 3 uses
  %prol.iter822 = phi i64 [ %prol.iter822.next, %.lr.ph32.i314.prol ], [ 0, %.lr.ph32.i314.preheader786 ]
  %i.vp = shl nuw nsw i64 %indvars.iv35.i315.prol, 1
  %i.vq = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.vp ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 1
  store i8 -1, ptr %i.vr, align 1
  %i.vs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv35.i315.prol
  %i.vt = load i8, ptr %i.vs, align 1
  store i8 %i.vt, ptr %i.vq, align 1
  %indvars.iv.next36.i316.prol = add nsw i64 %indvars.iv35.i315.prol, -1 ; 2 uses
  %prol.iter822.next = add i64 %prol.iter822, 1   ; 2 uses
  %prol.iter822.cmp.not = icmp eq i64 %prol.iter822.next, %xtraiter820
  br i1 %prol.iter822.cmp.not, label %.lr.ph32.i314.prol.loopexit, label %.lr.ph32.i314.prol, !llvm.loop !263

.lr.ph32.i314.prol.loopexit:                      ; preds = %.lr.ph32.i314.prol, %.lr.ph32.i314.preheader786
  %indvars.iv35.i315.unr = phi i64 [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader786 ], [ %indvars.iv.next36.i316.prol, %.lr.ph32.i314.prol ]
  %i.vu = icmp ult i64 %indvars.iv35.i315.ph, 3
  br i1 %i.vu, label %.loopexit, label %.lr.ph32.i314

.lr.ph32.i314:                                    ; preds = %.lr.ph32.i314.prol.loopexit, %.lr.ph32.i314
  %indvars.iv35.i315 = phi i64 [ %indvars.iv.next36.i316.3, %.lr.ph32.i314 ], [ %indvars.iv35.i315.unr, %.lr.ph32.i314.prol.loopexit ] ; 6 uses
  %i.vv = shl nuw nsw i64 %indvars.iv35.i315, 1
  %i.vw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.vv ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 1
  store i8 -1, ptr %i.vx, align 1
  %i.vy = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv35.i315
  %i.vz = load i8, ptr %i.vy, align 1
  store i8 %i.vz, ptr %i.vw, align 1
  %indvars.iv.next36.i316 = add nsw i64 %indvars.iv35.i315, -1 ; 2 uses
  %i.wa = shl nuw nsw i64 %indvars.iv.next36.i316, 1
  %i.wb = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.wa ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 1
  store i8 -1, ptr %i.wc, align 1
  %i.wd = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.next36.i316
  %i.we = load i8, ptr %i.wd, align 1
  store i8 %i.we, ptr %i.wb, align 1
  %indvars.iv.next36.i316.1 = add nsw i64 %indvars.iv35.i315, -2 ; 2 uses
  %i.wf = shl nuw nsw i64 %indvars.iv.next36.i316.1, 1
  %i.wg = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.wf ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 1
  store i8 -1, ptr %i.wh, align 1
  %i.wi = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.next36.i316.1
  %i.wj = load i8, ptr %i.wi, align 1
  store i8 %i.wj, ptr %i.wg, align 1
  %indvars.iv.next36.i316.2 = add nsw i64 %indvars.iv35.i315, -3 ; 3 uses
  %i.wk = shl nuw nsw i64 %indvars.iv.next36.i316.2, 1
  %i.wl = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.wk ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 1
  store i8 -1, ptr %i.wm, align 1
  %i.wn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.next36.i316.2
  %i.wo = load i8, ptr %i.wn, align 1
  store i8 %i.wo, ptr %i.wl, align 1
  %indvars.iv.next36.i316.3 = add nsw i64 %indvars.iv35.i315, -4
  %.not39.i317.3 = icmp eq i64 %indvars.iv.next36.i316.2, 0
  br i1 %.not39.i317.3, label %.loopexit, label %.lr.ph32.i314, !llvm.loop !264

.lr.ph.i308:                                      ; preds = %.lr.ph.i308.prol.loopexit, %.lr.ph.i308
  %indvars.iv.i309 = phi i64 [ %indvars.iv.next.i310.1, %.lr.ph.i308 ], [ %indvars.iv.i309.unr, %.lr.ph.i308.prol.loopexit ] ; 4 uses
  %i.wp = shl nuw nsw i64 %indvars.iv.i309, 2
  %i.wq = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.wp ; 4 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 3
  store i8 -1, ptr %i.wr, align 1
  %i.ws = mul nuw nsw i64 %indvars.iv.i309, 3
  %i.wt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ws ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 2
  %i.wv = load i8, ptr %i.wu, align 1
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wq, i64 2
  store i8 %i.wv, ptr %i.ww, align 1
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wt, i64 1
  %i.wy = load i8, ptr %i.wx, align 1
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wq, i64 1
  store i8 %i.wy, ptr %i.wz, align 1
  %i.xa = load i8, ptr %i.wt, align 1
  store i8 %i.xa, ptr %i.wq, align 1
  %indvars.iv.next.i310 = add nsw i64 %indvars.iv.i309, -1 ; 3 uses
  %i.xb = shl nuw nsw i64 %indvars.iv.next.i310, 2
  %i.xc = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.xb ; 4 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 3
  store i8 -1, ptr %i.xd, align 1
  %i.xe = mul nuw nsw i64 %indvars.iv.next.i310, 3
  %i.xf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.xe ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 2
  %i.xh = load i8, ptr %i.xg, align 1
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xc, i64 2
  store i8 %i.xh, ptr %i.xi, align 1
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xf, i64 1
  %i.xk = load i8, ptr %i.xj, align 1
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xc, i64 1
  store i8 %i.xk, ptr %i.xl, align 1
  %i.xm = load i8, ptr %i.xf, align 1
  store i8 %i.xm, ptr %i.xc, align 1
  %indvars.iv.next.i310.1 = add nsw i64 %indvars.iv.i309, -2
  %.not.i311.1 = icmp eq i64 %indvars.iv.next.i310, 0
  br i1 %.not.i311.1, label %.loopexit, label %.lr.ph.i308, !llvm.loop !258

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.a, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bc, label %.preheader342, label %bb.ai

.preheader342:                                    ; preds = %bb.ah
  br i1 %.not404, label %.loopexit, label %.lr.ph382.preheader

.lr.ph382.preheader:                              ; preds = %.preheader342
  br i1 %min.iters.check516, label %.lr.ph382.preheader789, label %vector.memcheck517

vector.memcheck517:                               ; preds = %.lr.ph382.preheader
  %i.xn = getelementptr i8, ptr %i.dq, i64 %8
  %i.xo = getelementptr i8, ptr %i.xn, i64 %i.ds
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dj
  %bound0518 = icmp ult ptr %i.dt, %gep
  %bound1519 = icmp ult ptr %i.dk, %i.xo
  %found.conflict520 = and i1 %bound0518, %bound1519
  br i1 %found.conflict520, label %.lr.ph382.preheader789, label %vector.ph521

vector.ph521:                                     ; preds = %vector.memcheck517
  %i.xp = getelementptr i8, ptr %i.dt, i64 %i.cr
  %i.xq = getelementptr i8, ptr %i.dk, i64 %i.cr
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph521
  %index524 = phi i64 [ 0, %vector.ph521 ], [ %index.next533, %vector.body523 ] ; 2 uses
  %i.xr = shl i64 %index524, 1                    ; 9 uses
  %next.gep = getelementptr i8, ptr %i.dt, i64 %i.xr
  %next.gep525 = getelementptr i8, ptr %i.dk, i64 %i.xr ; 2 uses
  %i.xs = getelementptr i8, ptr %i.dk, i64 %i.xr  ; 2 uses
  %next.gep526 = getelementptr i8, ptr %i.xs, i64 2
  %i.xt = getelementptr i8, ptr %i.dk, i64 %i.xr  ; 2 uses
  %next.gep527 = getelementptr i8, ptr %i.xt, i64 4
  %i.xu = getelementptr i8, ptr %i.dk, i64 %i.xr  ; 2 uses
  %next.gep528 = getelementptr i8, ptr %i.xu, i64 6
  %i.xv = getelementptr i8, ptr %i.dk, i64 %i.xr  ; 2 uses
  %next.gep529 = getelementptr i8, ptr %i.xv, i64 8
  %i.xw = getelementptr i8, ptr %i.dk, i64 %i.xr  ; 2 uses
  %next.gep530 = getelementptr i8, ptr %i.xw, i64 10
  %i.xx = getelementptr i8, ptr %i.dk, i64 %i.xr  ; 2 uses
  %next.gep531 = getelementptr i8, ptr %i.xx, i64 12
  %i.xy = getelementptr i8, ptr %i.dk, i64 %i.xr  ; 2 uses
  %next.gep532 = getelementptr i8, ptr %i.xy, i64 14
  %i.xz = load i8, ptr %next.gep525, align 1, !alias.scope !277
  %i.ya = load i8, ptr %next.gep526, align 1, !alias.scope !277
  %i.yb = load i8, ptr %next.gep527, align 1, !alias.scope !277
  %i.yc = load i8, ptr %next.gep528, align 1, !alias.scope !277
  %i.yd = load i8, ptr %next.gep529, align 1, !alias.scope !277
  %i.ye = load i8, ptr %next.gep530, align 1, !alias.scope !277
  %i.yf = load i8, ptr %next.gep531, align 1, !alias.scope !277
  %i.yg = load i8, ptr %next.gep532, align 1, !alias.scope !277
  %i.yh = insertelement <8 x i8> poison, i8 %i.xz, i64 0
  %i.yi = insertelement <8 x i8> %i.yh, i8 %i.ya, i64 1
  %i.yj = insertelement <8 x i8> %i.yi, i8 %i.yb, i64 2
  %i.yk = insertelement <8 x i8> %i.yj, i8 %i.yc, i64 3
  %i.yl = insertelement <8 x i8> %i.yk, i8 %i.yd, i64 4
  %i.ym = insertelement <8 x i8> %i.yl, i8 %i.ye, i64 5
  %i.yn = insertelement <8 x i8> %i.ym, i8 %i.yf, i64 6
  %i.yo = insertelement <8 x i8> %i.yn, i8 %i.yg, i64 7
  %i.yp = zext <8 x i8> %i.yo to <8 x i16>
  %i.yq = shl nuw <8 x i16> %i.yp, splat (i16 8)
  %i.yr = getelementptr inbounds nuw i8, ptr %next.gep525, i64 1
  %i.ys = getelementptr i8, ptr %i.xs, i64 3
  %i.yt = getelementptr i8, ptr %i.xt, i64 5
  %i.yu = getelementptr i8, ptr %i.xu, i64 7
  %i.yv = getelementptr i8, ptr %i.xv, i64 9
  %i.yw = getelementptr i8, ptr %i.xw, i64 11
  %i.yx = getelementptr i8, ptr %i.xx, i64 13
  %i.yy = getelementptr i8, ptr %i.xy, i64 15
  %i.yz = load i8, ptr %i.yr, align 1, !alias.scope !277
  %i.za = load i8, ptr %i.ys, align 1, !alias.scope !277
  %i.zb = load i8, ptr %i.yt, align 1, !alias.scope !277
  %i.zc = load i8, ptr %i.yu, align 1, !alias.scope !277
  %i.zd = load i8, ptr %i.yv, align 1, !alias.scope !277
  %i.ze = load i8, ptr %i.yw, align 1, !alias.scope !277
  %i.zf = load i8, ptr %i.yx, align 1, !alias.scope !277
  %i.zg = load i8, ptr %i.yy, align 1, !alias.scope !277
  %i.zh = insertelement <8 x i8> poison, i8 %i.yz, i64 0
  %i.zi = insertelement <8 x i8> %i.zh, i8 %i.za, i64 1
  %i.zj = insertelement <8 x i8> %i.zi, i8 %i.zb, i64 2
  %i.zk = insertelement <8 x i8> %i.zj, i8 %i.zc, i64 3
  %i.zl = insertelement <8 x i8> %i.zk, i8 %i.zd, i64 4
  %i.zm = insertelement <8 x i8> %i.zl, i8 %i.ze, i64 5
  %i.zn = insertelement <8 x i8> %i.zm, i8 %i.zf, i64 6
  %i.zo = insertelement <8 x i8> %i.zn, i8 %i.zg, i64 7
  %i.zp = zext <8 x i8> %i.zo to <8 x i16>
  %i.zq = or disjoint <8 x i16> %i.yq, %i.zp
  store <8 x i16> %i.zq, ptr %next.gep, align 2, !alias.scope !278, !noalias !277
  %index.next533 = add nuw i64 %index524, 8       ; 2 uses
  %i.zr = icmp eq i64 %index.next533, %n.vec522
  br i1 %i.zr, label %middle.block534, label %vector.body523, !llvm.loop !268

middle.block534:                                  ; preds = %vector.body523
  br i1 %cmp.n535, label %.loopexit, label %.lr.ph382.preheader789

.lr.ph382.preheader789:                           ; preds = %vector.memcheck517, %.lr.ph382.preheader, %middle.block534
  %.0381.ph = phi ptr [ %i.dt, %vector.memcheck517 ], [ %i.dt, %.lr.ph382.preheader ], [ %i.xp, %middle.block534 ] ; 2 uses
  %.0249380.ph = phi ptr [ %i.dk, %vector.memcheck517 ], [ %i.dk, %.lr.ph382.preheader ], [ %i.xq, %middle.block534 ] ; 2 uses
  %.3268379.ph = phi i32 [ 0, %vector.memcheck517 ], [ 0, %.lr.ph382.preheader ], [ %i.cs, %middle.block534 ] ; 4 uses
  %i.zs = sub i32 %i.z, %.3268379.ph
  %i.zt = sub i32 %i.bq, %.3268379.ph
  %xtraiter814 = and i32 %i.zs, 3                 ; 2 uses
  %lcmp.mod815.not = icmp eq i32 %xtraiter814, 0
  br i1 %lcmp.mod815.not, label %.lr.ph382.prol.loopexit, label %.lr.ph382.prol

.lr.ph382.prol:                                   ; preds = %.lr.ph382.preheader789, %.lr.ph382.prol
  %.0381.prol = phi ptr [ %i.aac, %.lr.ph382.prol ], [ %.0381.ph, %.lr.ph382.preheader789 ] ; 2 uses
  %.0249380.prol = phi ptr [ %i.aad, %.lr.ph382.prol ], [ %.0249380.ph, %.lr.ph382.preheader789 ] ; 3 uses
  %.3268379.prol = phi i32 [ %i.aab, %.lr.ph382.prol ], [ %.3268379.ph, %.lr.ph382.preheader789 ]
  %prol.iter816 = phi i32 [ %prol.iter816.next, %.lr.ph382.prol ], [ 0, %.lr.ph382.preheader789 ]
  %i.zu = load i8, ptr %.0249380.prol, align 1
  %i.zv = zext i8 %i.zu to i16
  %i.zw = shl nuw i16 %i.zv, 8
  %i.zx = getelementptr inbounds nuw i8, ptr %.0249380.prol, i64 1
  %i.zy = load i8, ptr %i.zx, align 1
  %i.zz = zext i8 %i.zy to i16
  %i.aaa = or disjoint i16 %i.zw, %i.zz
  store i16 %i.aaa, ptr %.0381.prol, align 2
  %i.aab = add nuw i32 %.3268379.prol, 1          ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.0381.prol, i64 2 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.0249380.prol, i64 2 ; 2 uses
  %prol.iter816.next = add i32 %prol.iter816, 1   ; 2 uses
  %prol.iter816.cmp.not = icmp eq i32 %prol.iter816.next, %xtraiter814
  br i1 %prol.iter816.cmp.not, label %.lr.ph382.prol.loopexit, label %.lr.ph382.prol, !llvm.loop !269

.lr.ph382.prol.loopexit:                          ; preds = %.lr.ph382.prol, %.lr.ph382.preheader789
  %.0381.unr = phi ptr [ %.0381.ph, %.lr.ph382.preheader789 ], [ %i.aac, %.lr.ph382.prol ]
  %.0249380.unr = phi ptr [ %.0249380.ph, %.lr.ph382.preheader789 ], [ %i.aad, %.lr.ph382.prol ]
  %.3268379.unr = phi i32 [ %.3268379.ph, %.lr.ph382.preheader789 ], [ %i.aab, %.lr.ph382.prol ]
  %i.aae = icmp ult i32 %i.zt, 3
  br i1 %i.aae, label %.loopexit, label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph382.prol.loopexit, %.lr.ph382
  %.0381 = phi ptr [ %i.abo, %.lr.ph382 ], [ %.0381.unr, %.lr.ph382.prol.loopexit ] ; 5 uses
  %.0249380 = phi ptr [ %i.abp, %.lr.ph382 ], [ %.0249380.unr, %.lr.ph382.prol.loopexit ] ; 9 uses
  %.3268379 = phi i32 [ %i.abn, %.lr.ph382 ], [ %.3268379.unr, %.lr.ph382.prol.loopexit ]
  %i.aaf = load i8, ptr %.0249380, align 1
  %i.aag = zext i8 %i.aaf to i16
  %i.aah = shl nuw i16 %i.aag, 8
  %i.aai = getelementptr inbounds nuw i8, ptr %.0249380, i64 1
  %i.aaj = load i8, ptr %i.aai, align 1
  %i.aak = zext i8 %i.aaj to i16
  %i.aal = or disjoint i16 %i.aah, %i.aak
  store i16 %i.aal, ptr %.0381, align 2
  %i.aam = getelementptr inbounds nuw i8, ptr %.0381, i64 2
  %i.aan = getelementptr inbounds nuw i8, ptr %.0249380, i64 2
  %i.aao = load i8, ptr %i.aan, align 1
  %i.aap = zext i8 %i.aao to i16
  %i.aaq = shl nuw i16 %i.aap, 8
  %i.aar = getelementptr inbounds nuw i8, ptr %.0249380, i64 3
  %i.aas = load i8, ptr %i.aar, align 1
  %i.aat = zext i8 %i.aas to i16
  %i.aau = or disjoint i16 %i.aaq, %i.aat
  store i16 %i.aau, ptr %i.aam, align 2
  %i.aav = getelementptr inbounds nuw i8, ptr %.0381, i64 4
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0249380, i64 4
  %i.aax = load i8, ptr %i.aaw, align 1
  %i.aay = zext i8 %i.aax to i16
  %i.aaz = shl nuw i16 %i.aay, 8
  %i.aba = getelementptr inbounds nuw i8, ptr %.0249380, i64 5
  %i.abb = load i8, ptr %i.aba, align 1
  %i.abc = zext i8 %i.abb to i16
  %i.abd = or disjoint i16 %i.aaz, %i.abc
  store i16 %i.abd, ptr %i.aav, align 2
  %i.abe = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.abf = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.abg = load i8, ptr %i.abf, align 1
  %i.abh = zext i8 %i.abg to i16
  %i.abi = shl nuw i16 %i.abh, 8
  %i.abj = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.abk = load i8, ptr %i.abj, align 1
  %i.abl = zext i8 %i.abk to i16
  %i.abm = or disjoint i16 %i.abi, %i.abl
  store i16 %i.abm, ptr %i.abe, align 2
  %i.abn = add nuw i32 %.3268379, 4               ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %.0381, i64 8
  %i.abp = getelementptr inbounds nuw i8, ptr %.0249380, i64 8
  %exitcond453.not.3 = icmp eq i32 %i.abn, %i.z
  br i1 %exitcond453.not.3, label %.loopexit, label %.lr.ph382, !llvm.loop !270

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.bd, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.cp, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.aci, %.lr.ph378 ], [ %i.dt, %.lr.ph378.preheader ] ; 5 uses
  %.1250376 = phi ptr [ %i.acj, %.lr.ph378 ], [ %i.dk, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
  %i.abq = load i8, ptr %.1250376, align 1
  %i.abr = zext i8 %i.abq to i16
  %i.abs = shl nuw i16 %i.abr, 8
  %i.abt = getelementptr inbounds nuw i8, ptr %.1250376, i64 1
  %i.abu = load i8, ptr %i.abt, align 1
  %i.abv = zext i8 %i.abu to i16
  %i.abw = or disjoint i16 %i.abs, %i.abv
  store i16 %i.abw, ptr %.1377, align 2
  %i.abx = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.abx, align 2
  %i.aby = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.abz = getelementptr inbounds nuw i8, ptr %.1250376, i64 2
  %i.aca = load i8, ptr %i.abz, align 1
  %i.acb = zext i8 %i.aca to i16
  %i.acc = shl nuw i16 %i.acb, 8
  %i.acd = getelementptr inbounds nuw i8, ptr %.1250376, i64 3
  %i.ace = load i8, ptr %i.acd, align 1
  %i.acf = zext i8 %i.ace to i16
  %i.acg = or disjoint i16 %i.acc, %i.acf
end_hunk_1
