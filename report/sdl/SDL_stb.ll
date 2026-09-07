Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 91
begin_hunk_0_@stbi__zhuffman_decode:bb.a

bb.m:                                             ; preds = %bb.l
  %i.aj = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  %i.ak = icmp samesign ugt i64 %indvars.iv.i, 15
  br i1 %i.ak, label %stbi__zhuffman_decode_slowpath.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = sub nuw nsw i32 16, %i.aj
  %i.am = lshr i32 %i.ae, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  %i.ar = sub nsw i32 %i.am, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1124
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
  %i.z = mul i32 %i.g, %4                         ; 18 uses
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
  %i.as = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.ar) #13 ; 6 uses
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
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.be = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bf = zext i32 %.030.i305 to i64              ; 20 uses
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
  %i.bm = getelementptr i8, ptr %i.as, i64 %i.bf
  %scevgep505 = getelementptr i8, ptr %i.bm, i64 1
  %i.bn = sub nsw i64 %i.ba, %i.aw                ; 28 uses
  %i.bo = add i32 %i.z, -1                        ; 3 uses
  %i.bp = add nuw nsw i64 %i.bf, 1
  %min.iters.check703 = icmp ult i64 %i.bn, 8
  %i.bq = add nsw i64 %i.aw, -1
  %diff.check701 = icmp ult i64 %i.bq, 31
  %or.cond737 = select i1 %min.iters.check703, i1 true, i1 %diff.check701
  %min.iters.check705 = icmp ult i64 %i.bn, 32
  %i.br = and i64 %i.bn, 24
  %n.vec707 = and i64 %i.bn, -32                  ; 4 uses
  %i.bs = add nsw i64 %n.vec707, %i.aw
  %cmp.n716 = icmp eq i64 %i.bn, %n.vec707
  %min.epilog.iters.check722 = icmp eq i64 %i.br, 0
  %n.vec724 = and i64 %i.bn, -8                   ; 3 uses
  %i.bt = add nsw i64 %n.vec724, %i.aw
  %cmp.n731 = icmp eq i64 %i.bn, %n.vec724
  %i.bu = add nsw i64 %i.ba, -1
  %min.iters.check671 = icmp ult i32 %spec.select, 4
  %min.iters.check673 = icmp ult i32 %spec.select, 32
  %i.bv = and i64 %wide.trip.count424, 28
  %n.vec675 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n684 = icmp eq i64 %n.vec675, %wide.trip.count424
  %min.epilog.iters.check689 = icmp eq i64 %i.bv, 0
  %n.vec691 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n698 = icmp eq i64 %n.vec691, %wide.trip.count424
  %xtraiter751 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod752.not = icmp eq i64 %xtraiter751, 0
  %min.iters.check636 = icmp ult i64 %i.bn, 4
  %i.bw = add nsw i64 %i.aw, -1
  %diff.check630 = icmp ult i64 %i.bw, 15
  %min.iters.check638 = icmp ult i64 %i.bn, 16
  %i.bx = and i64 %i.bn, 12
  %n.vec640 = and i64 %i.bn, -16                  ; 4 uses
  %i.by = add nsw i64 %n.vec640, %i.aw
  %cmp.n649 = icmp eq i64 %i.bn, %n.vec640
  %min.epilog.iters.check655 = icmp eq i64 %i.bx, 0
  %n.vec657 = and i64 %i.bn, -4                   ; 3 uses
  %i.bz = add nsw i64 %n.vec657, %i.aw
  %cmp.n666 = icmp eq i64 %i.bn, %n.vec657
  %min.iters.check600 = icmp ult i32 %spec.select, 4
  %min.iters.check602 = icmp ult i32 %spec.select, 32
  %i.ca = and i64 %wide.trip.count424, 28
  %n.vec604 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n613 = icmp eq i64 %n.vec604, %wide.trip.count424
  %min.epilog.iters.check618 = icmp eq i64 %i.ca, 0
  %n.vec620 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n627 = icmp eq i64 %n.vec620, %wide.trip.count424
  %xtraiter753 = and i64 %wide.trip.count424, 1
  %lcmp.mod754.not = icmp eq i64 %xtraiter753, 0
  %i.cb = add nsw i64 %wide.trip.count424, -1
  %min.iters.check567 = icmp ult i64 %i.bn, 4
  %i.cc = add nsw i64 %i.aw, -1
  %diff.check565 = icmp ult i64 %i.cc, 15
  %min.iters.check569 = icmp ult i64 %i.bn, 16
  %i.cd = and i64 %i.bn, 12
  %n.vec571 = and i64 %i.bn, -16                  ; 4 uses
  %i.ce = add nsw i64 %n.vec571, %i.aw
  %cmp.n579 = icmp eq i64 %i.bn, %n.vec571
  %min.epilog.iters.check585 = icmp eq i64 %i.cd, 0
  %n.vec587 = and i64 %i.bn, -4                   ; 3 uses
  %i.cf = add nsw i64 %n.vec587, %i.aw
  %cmp.n595 = icmp eq i64 %i.bn, %n.vec587
  %i.cg = add nsw i64 %i.ba, -1
  %min.iters.check534 = icmp ult i32 %i.av, 4
  %min.iters.check536 = icmp ult i32 %i.av, 32
  %i.ch = and i64 %wide.trip.count444, 28
  %n.vec538 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n547 = icmp eq i64 %n.vec538, %wide.trip.count444
  %min.epilog.iters.check552 = icmp eq i64 %i.ch, 0
  %n.vec554 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n561 = icmp eq i64 %n.vec554, %wide.trip.count444
  %xtraiter759 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod760.not = icmp eq i64 %xtraiter759, 0
  %min.iters.check510 = icmp ult i64 %i.bn, 8
  %i.ci = add nsw i64 %i.aw, -1
  %diff.check = icmp ult i64 %i.ci, 31
  %or.cond736 = select i1 %min.iters.check510, i1 true, i1 %diff.check
  %min.iters.check511 = icmp ult i64 %i.bn, 32
  %i.cj = and i64 %i.bn, 24
  %n.vec513 = and i64 %i.bn, -32                  ; 4 uses
  %i.ck = add nsw i64 %n.vec513, %i.aw
  %cmp.n522 = icmp eq i64 %i.bn, %n.vec513
  %min.epilog.iters.check = icmp eq i64 %i.cj, 0
  %n.vec524 = and i64 %i.bn, -8                   ; 3 uses
  %i.cl = add nsw i64 %n.vec524, %i.aw
  %cmp.n529 = icmp eq i64 %i.bn, %n.vec524
  %i.cm = add nsw i64 %i.ba, -1
  %xtraiter765 = and i32 %4, 1
  %i.cn = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod766.not = icmp eq i32 %xtraiter765, 0
  %lcmp.mod767 = trunc i32 %4 to i1
  %xtraiter768 = and i32 %i.z, 3                  ; 3 uses
  %i.co = icmp ult i32 %i.z, 4
  %unroll_iter771 = and i32 %i.z, -4
  %lcmp.mod769.not = icmp eq i32 %xtraiter768, 0
  %lcmp.mod770 = icmp ne i32 %xtraiter768, 0
  %i.cp = and i64 %i.bf, 1
  %lcmp.mod774.not.not = icmp eq i64 %i.cp, 0
  %i.cq = shl nuw nsw i64 %i.bf, 2
  %i.cr = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bf, -1
  %i.cs = icmp eq i32 %.030.i305, 0
  %8 = add nuw nsw i64 %i.bf, 1                   ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %8, 4294967288                 ; 3 uses
  %i.ct = sub nsw i64 %i.bf, %n.vec
  %cmp.n = icmp eq i64 %8, %n.vec
  %xtraiter779 = and i32 %i.z, 1
  %i.cu = icmp eq i32 %i.bo, 0
  %unroll_iter783 = and i32 %i.z, -2
  %lcmp.mod781.not = icmp eq i32 %xtraiter779, 0
  %lcmp.mod782 = trunc i32 %i.z to i1
  %xtraiter785 = and i32 %i.z, 1
  %i.cv = icmp eq i32 %i.bo, 0
  %unroll_iter789 = and i32 %i.z, -2
  %lcmp.mod787.not = icmp eq i32 %xtraiter785, 0
  %lcmp.mod788 = trunc i32 %i.z to i1
  %xtraiter791 = and i32 %i.z, 1
  %i.cw = icmp eq i32 %i.bo, 0
  %unroll_iter795 = and i32 %i.z, -2
  %lcmp.mod793.not = icmp eq i32 %xtraiter791, 0
  %lcmp.mod794 = trunc i32 %i.z to i1
  %i.cx = and i64 %i.bf, 1
  %lcmp.mod798.not.not = icmp eq i64 %i.cx, 0
  %i.cy = shl nuw nsw i64 %i.bf, 2
  %i.cz = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bf, -1
  %i.da = icmp eq i32 %.030.i305, 0
  %xtraiter800 = and i64 %i.bp, 3                 ; 2 uses
  %lcmp.mod801.not = icmp eq i64 %xtraiter800, 0
  %i.db = icmp ult i32 %.030.i305, 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.ql, %.loopexit ] ; 2 uses
  %i.dc = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.dd = trunc i64 %indvars.iv457 to i1
  %i.de = select i1 %i.dd, i64 %i.bk, i64 0       ; 8 uses
  %i.df = getelementptr i8, ptr %i.as, i64 %i.de  ; 80 uses
  %i.dg = and i32 %i.dc, 1
  %i.dh = xor i32 %i.dg, 1
  %i.di = mul nuw nsw i32 %i.dh, %i.ah
  %i.dj = zext nneg i32 %i.di to i64              ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dj ; 30 uses
  %i.dl = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.dm = mul i32 %i.e, %i.dc
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr i8, ptr %i.dl, i64 %i.dn  ; 38 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dq = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.dr = icmp ugt i8 %i.dq, 4
  br i1 %i.dr, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = icmp eq i64 %indvars.iv457, 0
  br i1 %i.ds, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dt = zext nneg i8 %i.dq to i64
  %i.du = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.dv, %bb.o ], [ %i.dq, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.ay, label %iter.check686, label %.preheader354

iter.check686:                                    ; preds = %.preheader356
  %i.dw = sub nsw i64 %i.dj, %i.de
  %diff.check669 = icmp ugt i64 %i.dw, -32
  %or.cond733 = select i1 %min.iters.check671, i1 true, i1 %diff.check669
  br i1 %or.cond733, label %.lr.ph360.preheader, label %vector.main.loop.iter.check672

vector.main.loop.iter.check672:                   ; preds = %iter.check686
  br i1 %min.iters.check673, label %vec.epilog.ph690, label %vector.body676

vector.body676:                                   ; preds = %vector.main.loop.iter.check672, %vector.body676
  %index677 = phi i64 [ %index.next682, %vector.body676 ], [ 0, %vector.main.loop.iter.check672 ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 %index677 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load678 = load <16 x i8>, ptr %i.dx, align 1
  %wide.load679 = load <16 x i8>, ptr %i.dy, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index677 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load680 = load <16 x i8>, ptr %i.dz, align 1
  %wide.load681 = load <16 x i8>, ptr %i.ea, align 1
  %i.eb = add <16 x i8> %wide.load680, %wide.load678
  %i.ec = add <16 x i8> %wide.load681, %wide.load679
  %i.ed = getelementptr inbounds nuw i8, ptr %i.df, i64 %index677 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <16 x i8> %i.eb, ptr %i.ed, align 1
  store <16 x i8> %i.ec, ptr %i.ee, align 1
  %index.next682 = add nuw i64 %index677, 32      ; 2 uses
  %i.ef = icmp eq i64 %index.next682, %n.vec675
  br i1 %i.ef, label %middle.block683, label %vector.body676, !llvm.loop !229

middle.block683:                                  ; preds = %vector.body676
  br i1 %cmp.n684, label %.preheader354, label %vec.epilog.iter.check688

vec.epilog.iter.check688:                         ; preds = %middle.block683
  br i1 %min.epilog.iters.check689, label %.lr.ph360.preheader, label %vec.epilog.ph690, !prof !17

vec.epilog.ph690:                                 ; preds = %vector.main.loop.iter.check672, %vec.epilog.iter.check688
  %vec.epilog.resume.val685 = phi i64 [ %n.vec675, %vec.epilog.iter.check688 ], [ 0, %vector.main.loop.iter.check672 ]
  br label %vec.epilog.vector.body692

vec.epilog.vector.body692:                        ; preds = %vec.epilog.vector.body692, %vec.epilog.ph690
  %index693 = phi i64 [ %vec.epilog.resume.val685, %vec.epilog.ph690 ], [ %index.next696, %vec.epilog.vector.body692 ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 %index693
  %wide.load694 = load <4 x i8>, ptr %i.eg, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index693
  %wide.load695 = load <4 x i8>, ptr %i.eh, align 1
  %i.ei = add <4 x i8> %wide.load695, %wide.load694
  %i.ej = getelementptr inbounds nuw i8, ptr %i.df, i64 %index693
  store <4 x i8> %i.ei, ptr %i.ej, align 1
  %index.next696 = add nuw i64 %index693, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next696, %n.vec691
  br i1 %i.ek, label %vec.epilog.middle.block697, label %vec.epilog.vector.body692, !llvm.loop !230

vec.epilog.middle.block697:                       ; preds = %vec.epilog.vector.body692
  br i1 %cmp.n698, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check686, %vec.epilog.iter.check688, %vec.epilog.middle.block697
  %indvars.iv421.ph = phi i64 [ 0, %iter.check686 ], [ %n.vec675, %vec.epilog.iter.check688 ], [ %n.vec691, %vec.epilog.middle.block697 ] ; 3 uses
  br i1 %lcmp.mod752.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv421.prol
  %i.em = load i8, ptr %i.el, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv421.prol
  %i.eo = load i8, ptr %i.en, align 1
  %.narrow286.prol = add i8 %i.eo, %i.em
  %i.ep = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.ep, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter751
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !231

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.eq = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.er = icmp ugt i64 %i.eq, -4
  br i1 %i.er, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.ay, label %iter.check615, label %.preheader351

iter.check615:                                    ; preds = %.preheader353
  %i.es = sub nsw i64 %i.dj, %i.de
  %diff.check598 = icmp ugt i64 %i.es, -32
  %or.cond734 = select i1 %min.iters.check600, i1 true, i1 %diff.check598
  br i1 %or.cond734, label %.lr.ph364.preheader, label %vector.main.loop.iter.check601

vector.main.loop.iter.check601:                   ; preds = %iter.check615
  br i1 %min.iters.check602, label %vec.epilog.ph619, label %vector.body605

vector.body605:                                   ; preds = %vector.main.loop.iter.check601, %vector.body605
  %index606 = phi i64 [ %index.next611, %vector.body605 ], [ 0, %vector.main.loop.iter.check601 ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dp, i64 %index606 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load607 = load <16 x i8>, ptr %i.et, align 1
  %wide.load608 = load <16 x i8>, ptr %i.eu, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index606 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %wide.load609 = load <16 x i8>, ptr %i.ev, align 1
  %wide.load610 = load <16 x i8>, ptr %i.ew, align 1
  %i.ex = lshr <16 x i8> %wide.load609, splat (i8 1)
  %i.ey = lshr <16 x i8> %wide.load610, splat (i8 1)
  %i.ez = add <16 x i8> %i.ex, %wide.load607
  %i.fa = add <16 x i8> %i.ey, %wide.load608
  %i.fb = getelementptr inbounds nuw i8, ptr %i.df, i64 %index606 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <16 x i8> %i.ez, ptr %i.fb, align 1
  store <16 x i8> %i.fa, ptr %i.fc, align 1
  %index.next611 = add nuw i64 %index606, 32      ; 2 uses
  %i.fd = icmp eq i64 %index.next611, %n.vec604
  br i1 %i.fd, label %middle.block612, label %vector.body605, !llvm.loop !232

middle.block612:                                  ; preds = %vector.body605
  br i1 %cmp.n613, label %.preheader351, label %vec.epilog.iter.check617

vec.epilog.iter.check617:                         ; preds = %middle.block612
  br i1 %min.epilog.iters.check618, label %.lr.ph364.preheader, label %vec.epilog.ph619, !prof !17

vec.epilog.ph619:                                 ; preds = %vector.main.loop.iter.check601, %vec.epilog.iter.check617
  %vec.epilog.resume.val614 = phi i64 [ %n.vec604, %vec.epilog.iter.check617 ], [ 0, %vector.main.loop.iter.check601 ]
  br label %vec.epilog.vector.body621

vec.epilog.vector.body621:                        ; preds = %vec.epilog.vector.body621, %vec.epilog.ph619
  %index622 = phi i64 [ %vec.epilog.resume.val614, %vec.epilog.ph619 ], [ %index.next625, %vec.epilog.vector.body621 ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dp, i64 %index622
  %wide.load623 = load <4 x i8>, ptr %i.fe, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index622
  %wide.load624 = load <4 x i8>, ptr %i.ff, align 1
  %i.fg = lshr <4 x i8> %wide.load624, splat (i8 1)
  %i.fh = add <4 x i8> %i.fg, %wide.load623
  %i.fi = getelementptr inbounds nuw i8, ptr %i.df, i64 %index622
  store <4 x i8> %i.fh, ptr %i.fi, align 1
  %index.next625 = add nuw i64 %index622, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next625, %n.vec620
  br i1 %i.fj, label %vec.epilog.middle.block626, label %vec.epilog.vector.body621, !llvm.loop !233

vec.epilog.middle.block626:                       ; preds = %vec.epilog.vector.body621
  br i1 %cmp.n627, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check615, %vec.epilog.iter.check617, %vec.epilog.middle.block626
  %indvars.iv431.ph = phi i64 [ 0, %iter.check615 ], [ %n.vec604, %vec.epilog.iter.check617 ], [ %n.vec620, %vec.epilog.middle.block626 ] ; 6 uses
  br i1 %lcmp.mod754.not, label %.lr.ph364.prol.loopexit, label %.lr.ph364.prol

.lr.ph364.prol:                                   ; preds = %.lr.ph364.preheader
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv431.ph
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv431.ph
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = lshr i8 %i.fn, 1
  %.narrow290.prol = add i8 %i.fo, %i.fl
  %i.fp = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv431.ph
end_hunk_0
begin_hunk_1_@tdefl_flush_block:bb.a
  %i.oa = phi i32 [ %i.ob, %.lr.ph371.split.us ], [ %.promoted373, %.lr.ph371 ]
  %i.ob = lshr i32 %i.oa, 8                       ; 2 uses
  %i.oc = add i32 %i.nz, -8                       ; 3 uses
  %i.od = icmp ugt i32 %i.oc, 7
  br i1 %i.od, label %.lr.ph371.split.us, label %.lr.ph371.1, !llvm.loop !294

.lr.ph371.split:                                  ; preds = %.lr.ph371, %bb.bc
  %i.oe = phi i32 [ %i.oo, %bb.bc ], [ %i.nv, %.lr.ph371 ]
  %i.of = phi i32 [ %i.on, %bb.bc ], [ %.promoted373, %.lr.ph371 ] ; 2 uses
  %i.og = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.oh = load ptr, ptr %i.ac, align 8
  %i.oi = icmp ult ptr %i.og, %i.oh
  br i1 %i.oi, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph371.split
  %i.oj = trunc i32 %i.of to i8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  store ptr %i.ok, ptr %i.aa, align 8
  store i8 %i.oj, ptr %i.og, align 1
  %.pre426 = load i32, ptr %i.cl, align 8
  %.pre427 = load i32, ptr %i.ci, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph371.split
  %i.ol = phi i32 [ %.pre427, %bb.bb ], [ %i.oe, %.lr.ph371.split ]
  %i.om = phi i32 [ %.pre426, %bb.bb ], [ %i.of, %.lr.ph371.split ]
  %i.on = lshr i32 %i.om, 8                       ; 3 uses
  store i32 %i.on, ptr %i.cl, align 8
  %i.oo = add i32 %i.ol, -8                       ; 4 uses
  store i32 %i.oo, ptr %i.ci, align 4
  %i.op = icmp ugt i32 %i.oo, 7
  br i1 %i.op, label %.lr.ph371.split, label %.lr.ph371.1, !llvm.loop !295

.lr.ph371.1:                                      ; preds = %.lr.ph371.split.us, %bb.bc
  %i.oq = phi i32 [ %i.on, %bb.bc ], [ %i.ob, %.lr.ph371.split.us ]
  %i.or = phi i32 [ %i.oo, %bb.bc ], [ %i.oc, %.lr.ph371.split.us ] ; 2 uses
  %i.os = shl nuw nsw i32 65535, %i.or
  %i.ot = or i32 %i.oq, %i.os                     ; 3 uses
  store i32 %i.ot, ptr %i.cl, align 8
  %i.ou = or disjoint i32 %i.or, 16               ; 3 uses
  store i32 %i.ou, ptr %i.ci, align 4
  %i.ov = load ptr, ptr %i.aa, align 8
  %i.ow = load ptr, ptr %i.ac, align 8
  %i.ox = icmp ult ptr %i.ov, %i.ow
  br i1 %i.ox, label %.lr.ph371.split.1, label %.lr.ph371.split.us.1.prol

.lr.ph371.split.us.1.prol:                        ; preds = %.lr.ph371.1, %.lr.ph371.split.us.1.prol
  %i.oy = phi i32 [ %i.pb, %.lr.ph371.split.us.1.prol ], [ %i.ou, %.lr.ph371.1 ]
  %i.oz = phi i32 [ %i.pa, %.lr.ph371.split.us.1.prol ], [ %i.ot, %.lr.ph371.1 ]
  %prol.iter626 = phi i32 [ %prol.iter626.next, %.lr.ph371.split.us.1.prol ], [ 0, %.lr.ph371.1 ]
  %i.pa = lshr i32 %i.oz, 8                       ; 2 uses
  %i.pb = add i32 %i.oy, -8                       ; 2 uses
  %prol.iter626.next = add i32 %prol.iter626, 1   ; 2 uses
  %prol.iter626.cmp.not = icmp eq i32 %prol.iter626.next, 2
  br i1 %prol.iter626.cmp.not, label %.loopexit.sink.split, label %.lr.ph371.split.us.1.prol, !llvm.loop !296

.lr.ph371.split.1:                                ; preds = %.lr.ph371.1, %bb.be
  %i.pc = phi i32 [ %i.pm, %bb.be ], [ %i.ou, %.lr.ph371.1 ]
  %i.pd = phi i32 [ %i.pl, %bb.be ], [ %i.ot, %.lr.ph371.1 ] ; 2 uses
  %i.pe = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.pf = load ptr, ptr %i.ac, align 8
  %i.pg = icmp ult ptr %i.pe, %i.pf
  br i1 %i.pg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph371.split.1
  %i.ph = trunc i32 %i.pd to i8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  store ptr %i.pi, ptr %i.aa, align 8
  store i8 %i.ph, ptr %i.pe, align 1
  %.pre428 = load i32, ptr %i.cl, align 8
  %.pre429 = load i32, ptr %i.ci, align 4
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph371.split.1
  %i.pj = phi i32 [ %.pre429, %bb.bd ], [ %i.pc, %.lr.ph371.split.1 ]
  %i.pk = phi i32 [ %.pre428, %bb.bd ], [ %i.pd, %.lr.ph371.split.1 ]
  %i.pl = lshr i32 %i.pk, 8                       ; 2 uses
  store i32 %i.pl, ptr %i.cl, align 8
  %i.pm = add i32 %i.pj, -8                       ; 3 uses
  store i32 %i.pm, ptr %i.ci, align 4
  %i.pn = icmp ugt i32 %i.pm, 7
  br i1 %i.pn, label %.lr.ph371.split.1, label %.loopexit, !llvm.loop !295

.loopexit.sink.split:                             ; preds = %.lr.ph371.split.us.1.prol, %._crit_edge381.split.us.3
  %.lcssa526.sink = phi i32 [ %i.mj, %._crit_edge381.split.us.3 ], [ %i.pa, %.lr.ph371.split.us.1.prol ]
  %.lcssa525.sink = phi i32 [ %i.mb, %._crit_edge381.split.us.3 ], [ %i.pb, %.lr.ph371.split.us.1.prol ]
  store i32 %.lcssa526.sink, ptr %i.cl, align 8
  store i32 %.lcssa525.sink, ptr %i.ci, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.be, %bb.au, %.loopexit.sink.split, %.loopexit339, %.loopexit334
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 33226
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 37546
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 37547
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.po, i8 0, i64 640, i1 false)
  store ptr %i.pq, ptr %i.ap, align 8
  store ptr %i.pp, ptr %i.af, align 8
  store i32 8, ptr %i.aj, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 8
  %i.pv = add i32 %i.pu, %i.ps
  store i32 %i.pv, ptr %i.pt, align 8
  store i32 0, ptr %i.pr, align 4
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.px = load i32, ptr %i.pw, align 4
  %i.py = add i32 %i.px, 1
  store i32 %i.py, ptr %i.pw, align 4
  %i.pz = load ptr, ptr %i.aa, align 8
  %i.qa = ptrtoint ptr %i.pz to i64
  %i.qb = ptrtoint ptr %i.z to i64
  %i.qc = sub i64 %i.qa, %i.qb                    ; 2 uses
  %i.qd = trunc i64 %i.qc to i32                  ; 4 uses
  %.not321 = icmp eq i32 %i.qd, 0
  br i1 %.not321, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %.loopexit
  %i.qe = load ptr, ptr %0, align 8
  %.not322 = icmp eq ptr %i.qe, null
  br i1 %.not322, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.qg = load ptr, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = ptrtoint ptr %i.qg to i64
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = sub i64 %i.qj, %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.qn = load ptr, ptr %i.qm, align 8
  store i64 %i.ql, ptr %i.qn, align 8
  %i.qo = load ptr, ptr %0, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 234154
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = tail call i32 %i.qo(ptr noundef nonnull %i.qp, i32 noundef %i.qd, ptr noundef %i.qr) #13
  %.not326 = icmp eq i32 %i.qs, 0
  br i1 %.not326, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 -1, ptr %i.qt, align 4
  br label %bb.bn

bb.bi:                                            ; preds = %bb.bf
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 234154 ; 2 uses
  %i.qv = icmp eq ptr %i.z, %i.qu
  %sext323 = shl i64 %i.qc, 32
  %i.qw = ashr exact i64 %sext323, 32             ; 2 uses
  br i1 %i.qv, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = load i64, ptr %i.qy, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.rb = load i64, ptr %i.ra, align 8            ; 2 uses
  %i.rc = sub i64 %i.qz, %i.rb
  %. = tail call i64 @llvm.umin.i64(i64 %i.qw, i64 %i.rc) ; 2 uses
  %i.rd = trunc i64 %. to i32                     ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.rf = load ptr, ptr %i.re, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rb
  %sext324 = shl i64 %., 32
  %i.rh = ashr exact i64 %sext324, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rg, ptr nonnull align 2 %i.qu, i64 %i.rh, i1 false)
  %i.ri = load i64, ptr %i.ra, align 8
  %i.rj = add i64 %i.rh, %i.ri
  store i64 %i.rj, ptr %i.ra, align 8
  %.not325 = icmp eq i32 %i.qd, %i.rd
  br i1 %.not325, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rk = sub nsw i32 %i.qd, %i.rd
  store i32 %i.rd, ptr %i.ad, align 8
  store i32 %i.rk, ptr %i.ae, align 4
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bi
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.rm = load i64, ptr %i.rl, align 8
  %i.rn = add i64 %i.rm, %i.qw
  store i64 %i.rn, ptr %i.rl, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bj, %bb.bk, %bb.bg, %bb.bl, %.loopexit
  %i.ro = load i32, ptr %i.ae, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bh
  %.0275 = phi i32 [ %i.ro, %bb.bm ], [ -1, %bb.bh ]
  ret i32 %.0275
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tdefl_compress_block(ptr nofree noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [320 x i8], align 16              ; 5 uses
  %i.b = alloca [320 x i8], align 16              ; 29 uses
  %i.c = alloca [33 x i32], align 16              ; 49 uses
  %i.d = alloca [33 x i32], align 16              ; 18 uses
  %i.e = alloca [33 x i32], align 16              ; 21 uses
  %i.f = alloca [33 x i32], align 16              ; 18 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 36682      ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.g, i8 8, i64 144, i1 false)
  %scevgep.i = getelementptr i8, ptr %0, i64 36826
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %scevgep.i, i8 9, i64 112, i1 false)
  %scevgep73.i = getelementptr i8, ptr %0, i64 36938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %scevgep73.i, i8 7, i64 24, i1 false)
  %scevgep74.i = getelementptr i8, ptr %0, i64 36962
  store i64 578721382704613384, ptr %scevgep74.i, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36970 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.h, i8 5, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.e, i8 0, i64 132, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.i.3, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 288
  br i1 %exitcond.not.i.i.3, label %.loopexit.loopexit.i.i, label %bb.c, !llvm.loop !5

.loopexit.loopexit.i.i:                           ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = shl i32 %i.al, 1                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = add nsw i32 %i.ap, %i.am
  %i.ar = shl i32 %i.aq, 1                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.au = load i32, ptr %i.at, align 4
  %i.av = add nsw i32 %i.au, %i.ar
  %i.aw = shl i32 %i.av, 1                        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.aw, ptr %i.ax, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.az = load i32, ptr %i.ay, align 16
  %i.ba = add nsw i32 %i.az, %i.aw
  %i.bb = shl i32 %i.ba, 1                        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add nsw i32 %i.be, %i.bb
  %i.bg = shl i32 %i.bf, 1                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.bg, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = add nsw i32 %i.bj, %i.bg
  %i.bl = shl i32 %i.bk, 1                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add nsw i32 %i.bo, %i.bl
  %i.bq = shl i32 %i.bp, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.bq, ptr %i.br, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bt = load i32, ptr %i.bs, align 16
  %i.bu = add nsw i32 %i.bt, %i.bq
  %i.bv = shl i32 %i.bu, 1                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 %i.bv, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = add nsw i32 %i.by, %i.bv
  %i.ca = shl i32 %i.bz, 1                        ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = add nsw i32 %i.cd, %i.ca
  %i.cf = shl i32 %i.ce, 1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 %i.cf, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = add nsw i32 %i.ci, %i.cf
  %i.ck = shl i32 %i.cj, 1                        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %i.ck, ptr %i.cl, align 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cn = load i32, ptr %i.cm, align 16
  %i.co = add nsw i32 %i.cn, %i.ck
  %i.cp = shl i32 %i.co, 1                        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 %i.cp, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = shl i32 %i.ct, 1                        ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = add nsw i32 %i.cx, %i.cu
  %i.cz = shl i32 %i.cy, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i32 %i.cz, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 34954
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.loopexit.loopexit.i.i
  %indvars.iv147.i.i = phi i64 [ 0, %.loopexit.loopexit.i.i ], [ %indvars.iv.next148.i.i, %bb.h ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv147.i.i
  %i.dd = load i8, ptr %i.dc, align 1             ; 4 uses
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = zext i8 %i.dd to i32                    ; 2 uses
  %i.dg = zext i8 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4            ; 3 uses
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4
  %xtraiter = and i32 %i.df, 3                    ; 3 uses
  %i.dk = icmp ult i8 %i.dd, 4
  br i1 %i.dk, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i32 %i.df, 252
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %.0115.i.i = phi i32 [ %i.di, %.new ], [ %i.dy, %bb.f ] ; 5 uses
  %.067114.i.i = phi i32 [ 0, %.new ], [ %i.dx, %bb.f ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.f ]
  %i.dl = shl i32 %.067114.i.i, 3
  %i.dm = shl i32 %.0115.i.i, 2
  %i.dn = and i32 %i.dm, 4
  %i.do = or disjoint i32 %i.dl, %i.dn
  %i.dp = and i32 %.0115.i.i, 2
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = lshr i32 %.0115.i.i, 2
  %i.ds = and i32 %i.dr, 1
  %i.dt = or disjoint i32 %i.dq, %i.ds
  %i.du = lshr i32 %.0115.i.i, 3
  %i.dv = shl i32 %i.dt, 1
  %i.dw = and i32 %i.du, 1
  %i.dx = or disjoint i32 %i.dv, %i.dw            ; 3 uses
  %i.dy = lshr i32 %.0115.i.i, 4                  ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.f, !llvm.loop !6

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.e
  %.0115.i.i.epil.init = phi i32 [ %i.di, %bb.e ], [ %i.dy, %.unr-lcssa ]
  %.067114.i.i.epil.init = phi i32 [ 0, %bb.e ], [ %i.dx, %.unr-lcssa ]
end_hunk_1
begin_hunk_2_@tdefl_compress_block:bb.a
  %.not.28.i = icmp eq i8 %i.sm, 0
  %spec.select.i = select i1 %.not.28.i, i32 257, i32 258
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.0282.lcssa.i = phi i32 [ 286, %bb.q ], [ 268, %bb.ai ], [ 285, %bb.r ], [ %spec.select.i, %bb.as ], [ 284, %bb.s ], [ 271, %bb.af ], [ 283, %bb.t ], [ 259, %bb.ar ], [ 282, %bb.u ], [ 265, %bb.al ], [ 281, %bb.v ], [ 260, %bb.aq ], [ 280, %bb.w ], [ 270, %bb.ag ], [ 279, %bb.x ], [ 261, %bb.ap ], [ 278, %bb.y ], [ 267, %bb.aj ], [ 277, %bb.z ], [ 262, %bb.ao ], [ 276, %bb.aa ], [ 269, %bb.ah ], [ 275, %bb.ab ], [ 263, %bb.an ], [ 274, %bb.ac ], [ 266, %bb.ak ], [ 273, %bb.ad ], [ 264, %bb.am ], [ 272, %bb.ae ] ; 3 uses
  %i.sn = getelementptr i8, ptr %0, i64 36999
  %i.so = load i8, ptr %i.sn, align 1
  %.not297.i = icmp eq i8 %i.so, 0
  br i1 %.not297.i, label %bb.au, label %.lr.ph.i

bb.au:                                            ; preds = %bb.at
  %i.sp = getelementptr i8, ptr %0, i64 36998
  %i.sq = load i8, ptr %i.sp, align 2
  %.not297.1.i = icmp eq i8 %i.sq, 0
  br i1 %.not297.1.i, label %bb.av, label %.lr.ph.i

bb.av:                                            ; preds = %bb.au
  %i.sr = getelementptr i8, ptr %0, i64 36997
  %i.ss = load i8, ptr %i.sr, align 1
  %.not297.2.i = icmp eq i8 %i.ss, 0
  br i1 %.not297.2.i, label %bb.aw, label %.lr.ph.i

bb.aw:                                            ; preds = %bb.av
  %i.st = getelementptr i8, ptr %0, i64 36996
  %i.su = load i8, ptr %i.st, align 2
  %.not297.3.i = icmp eq i8 %i.su, 0
  br i1 %.not297.3.i, label %bb.ax, label %.lr.ph.i

bb.ax:                                            ; preds = %bb.aw
  %i.sv = getelementptr i8, ptr %0, i64 36995
  %i.sw = load i8, ptr %i.sv, align 1
  %.not297.4.i = icmp eq i8 %i.sw, 0
  br i1 %.not297.4.i, label %bb.ay, label %.lr.ph.i

bb.ay:                                            ; preds = %bb.ax
  %i.sx = getelementptr i8, ptr %0, i64 36994
  %i.sy = load i8, ptr %i.sx, align 2
  %.not297.5.i = icmp eq i8 %i.sy, 0
  br i1 %.not297.5.i, label %bb.az, label %.lr.ph.i

bb.az:                                            ; preds = %bb.ay
  %i.sz = getelementptr i8, ptr %0, i64 36993
  %i.ta = load i8, ptr %i.sz, align 1
  %.not297.6.i = icmp eq i8 %i.ta, 0
  br i1 %.not297.6.i, label %bb.ba, label %.lr.ph.i

bb.ba:                                            ; preds = %bb.az
  %i.tb = getelementptr i8, ptr %0, i64 36992
  %i.tc = load i8, ptr %i.tb, align 2
  %.not297.7.i = icmp eq i8 %i.tc, 0
  br i1 %.not297.7.i, label %bb.bb, label %.lr.ph.i

bb.bb:                                            ; preds = %bb.ba
  %i.td = getelementptr i8, ptr %0, i64 36991
  %i.te = load i8, ptr %i.td, align 1
  %.not297.8.i = icmp eq i8 %i.te, 0
  br i1 %.not297.8.i, label %bb.bc, label %.lr.ph.i

bb.bc:                                            ; preds = %bb.bb
  %i.tf = getelementptr i8, ptr %0, i64 36990
  %i.tg = load i8, ptr %i.tf, align 2
  %.not297.9.i = icmp eq i8 %i.tg, 0
  br i1 %.not297.9.i, label %bb.bd, label %.lr.ph.i

bb.bd:                                            ; preds = %bb.bc
  %i.th = getelementptr i8, ptr %0, i64 36989
  %i.ti = load i8, ptr %i.th, align 1
  %.not297.10.i = icmp eq i8 %i.ti, 0
  br i1 %.not297.10.i, label %bb.be, label %.lr.ph.i

bb.be:                                            ; preds = %bb.bd
  %i.tj = getelementptr i8, ptr %0, i64 36988
  %i.tk = load i8, ptr %i.tj, align 2
  %.not297.11.i = icmp eq i8 %i.tk, 0
  br i1 %.not297.11.i, label %bb.bf, label %.lr.ph.i

bb.bf:                                            ; preds = %bb.be
  %i.tl = getelementptr i8, ptr %0, i64 36987
  %i.tm = load i8, ptr %i.tl, align 1
  %.not297.12.i = icmp eq i8 %i.tm, 0
  br i1 %.not297.12.i, label %bb.bg, label %.lr.ph.i

bb.bg:                                            ; preds = %bb.bf
  %i.tn = getelementptr i8, ptr %0, i64 36986
  %i.to = load i8, ptr %i.tn, align 2
  %.not297.13.i = icmp eq i8 %i.to, 0
  br i1 %.not297.13.i, label %bb.bh, label %.lr.ph.i

bb.bh:                                            ; preds = %bb.bg
  %i.tp = getelementptr i8, ptr %0, i64 36985
  %i.tq = load i8, ptr %i.tp, align 1
  %.not297.14.i = icmp eq i8 %i.tq, 0
  br i1 %.not297.14.i, label %bb.bi, label %.lr.ph.i

bb.bi:                                            ; preds = %bb.bh
  %i.tr = getelementptr i8, ptr %0, i64 36984
  %i.ts = load i8, ptr %i.tr, align 2
  %.not297.15.i = icmp eq i8 %i.ts, 0
  br i1 %.not297.15.i, label %bb.bj, label %.lr.ph.i

bb.bj:                                            ; preds = %bb.bi
  %i.tt = getelementptr i8, ptr %0, i64 36983
  %i.tu = load i8, ptr %i.tt, align 1
  %.not297.16.i = icmp eq i8 %i.tu, 0
  br i1 %.not297.16.i, label %bb.bk, label %.lr.ph.i

bb.bk:                                            ; preds = %bb.bj
  %i.tv = getelementptr i8, ptr %0, i64 36982
  %i.tw = load i8, ptr %i.tv, align 2
  %.not297.17.i = icmp eq i8 %i.tw, 0
  br i1 %.not297.17.i, label %bb.bl, label %.lr.ph.i

bb.bl:                                            ; preds = %bb.bk
  %i.tx = getelementptr i8, ptr %0, i64 36981
  %i.ty = load i8, ptr %i.tx, align 1
  %.not297.18.i = icmp eq i8 %i.ty, 0
  br i1 %.not297.18.i, label %bb.bm, label %.lr.ph.i

bb.bm:                                            ; preds = %bb.bl
  %i.tz = getelementptr i8, ptr %0, i64 36980
  %i.ua = load i8, ptr %i.tz, align 2
  %.not297.19.i = icmp eq i8 %i.ua, 0
  br i1 %.not297.19.i, label %bb.bn, label %.lr.ph.i

bb.bn:                                            ; preds = %bb.bm
  %i.ub = getelementptr i8, ptr %0, i64 36979
  %i.uc = load i8, ptr %i.ub, align 1
  %.not297.20.i = icmp eq i8 %i.uc, 0
  br i1 %.not297.20.i, label %bb.bo, label %.lr.ph.i

bb.bo:                                            ; preds = %bb.bn
  %i.ud = getelementptr i8, ptr %0, i64 36978
  %i.ue = load i8, ptr %i.ud, align 2
  %.not297.21.i = icmp eq i8 %i.ue, 0
  br i1 %.not297.21.i, label %bb.bp, label %.lr.ph.i

bb.bp:                                            ; preds = %bb.bo
  %i.uf = getelementptr i8, ptr %0, i64 36977
  %i.ug = load i8, ptr %i.uf, align 1
  %.not297.22.i = icmp eq i8 %i.ug, 0
  br i1 %.not297.22.i, label %bb.bq, label %.lr.ph.i

bb.bq:                                            ; preds = %bb.bp
  %i.uh = getelementptr i8, ptr %0, i64 36976
  %i.ui = load i8, ptr %i.uh, align 2
  %.not297.23.i = icmp eq i8 %i.ui, 0
  br i1 %.not297.23.i, label %bb.br, label %.lr.ph.i

bb.br:                                            ; preds = %bb.bq
  %i.uj = getelementptr i8, ptr %0, i64 36975
  %i.uk = load i8, ptr %i.uj, align 1
  %.not297.24.i = icmp eq i8 %i.uk, 0
  br i1 %.not297.24.i, label %bb.bs, label %.lr.ph.i

bb.bs:                                            ; preds = %bb.br
  %i.ul = getelementptr i8, ptr %0, i64 36974
  %i.um = load i8, ptr %i.ul, align 2
  %.not297.25.i = icmp eq i8 %i.um, 0
  br i1 %.not297.25.i, label %bb.bt, label %.lr.ph.i

bb.bt:                                            ; preds = %bb.bs
  %i.un = getelementptr i8, ptr %0, i64 36973
  %i.uo = load i8, ptr %i.un, align 1
  %.not297.26.i = icmp eq i8 %i.uo, 0
  br i1 %.not297.26.i, label %bb.bu, label %.lr.ph.i

bb.bu:                                            ; preds = %bb.bt
  %i.up = getelementptr i8, ptr %0, i64 36972
  %i.uq = load i8, ptr %i.up, align 2
  %.not297.27.i = icmp eq i8 %i.uq, 0
  br i1 %.not297.27.i, label %bb.bv, label %.lr.ph.i

bb.bv:                                            ; preds = %bb.bu
  %i.ur = getelementptr i8, ptr %0, i64 36971
  %i.us = load i8, ptr %i.ur, align 1
  %.not297.28.i = icmp eq i8 %i.us, 0
  %spec.select480.i = select i1 %.not297.28.i, i32 1, i32 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at
  %.0281.lcssa.i = phi i32 [ 30, %bb.at ], [ 12, %bb.bl ], [ 29, %bb.au ], [ %spec.select480.i, %bb.bv ], [ 28, %bb.av ], [ 15, %bb.bi ], [ 27, %bb.aw ], [ 3, %bb.bu ], [ 26, %bb.ax ], [ 9, %bb.bo ], [ 25, %bb.ay ], [ 4, %bb.bt ], [ 24, %bb.az ], [ 14, %bb.bj ], [ 23, %bb.ba ], [ 5, %bb.bs ], [ 22, %bb.bb ], [ 11, %bb.bm ], [ 21, %bb.bc ], [ 6, %bb.br ], [ 20, %bb.bd ], [ 13, %bb.bk ], [ 19, %bb.be ], [ 7, %bb.bq ], [ 18, %bb.bf ], [ 10, %bb.bn ], [ 17, %bb.bg ], [ 8, %bb.bp ], [ 16, %bb.bh ] ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.uu = zext nneg i32 %.0282.lcssa.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 2 dereferenceable(1) %i.ut, i64 %i.uu, i1 false)
  %i.uv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 36970
  %i.ux = zext nneg i32 %.0281.lcssa.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.uv, ptr noundef nonnull align 2 dereferenceable(1) %i.uw, i64 %i.ux, i1 false)
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 34378 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %i.uy, i8 0, i64 38, i1 false)
  %i.uz = add nuw nsw i32 %.0281.lcssa.i, %.0282.lcssa.i
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 34414 ; 6 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 34412 ; 4 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 34410 ; 8 uses
  %wide.trip.count.i = zext nneg i32 %i.uz to i64
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cn, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.cn ] ; 2 uses
  %.0337.i = phi i8 [ -1, %.lr.ph.i ], [ %i.ve, %bb.cn ] ; 7 uses
  %.0262336.i = phi i32 [ 0, %.lr.ph.i ], [ %.6.i, %bb.cn ] ; 11 uses
  %.0264335.i = phi i32 [ 0, %.lr.ph.i ], [ %.4268.i, %bb.cn ] ; 7 uses
  %.0270334.i = phi i32 [ 0, %.lr.ph.i ], [ %.14.i, %bb.cn ] ; 14 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.ve = load i8, ptr %i.vd, align 1             ; 8 uses
  %.not310.i = icmp eq i8 %i.ve, 0
  br i1 %.not310.i, label %bb.bx, label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  %.not311.i = icmp eq i32 %.0262336.i, 0
  br i1 %.not311.i, label %.loopexit322.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.vf = icmp ult i32 %.0262336.i, 3
  br i1 %i.vf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.vg = zext i8 %.0337.i to i64
  %i.vh = getelementptr inbounds nuw [2 x i8], ptr %i.uy, i64 %i.vg ; 2 uses
  %i.vi = load i16, ptr %i.vh, align 2
  %i.vj = trunc nuw nsw i32 %.0262336.i to i16
  %i.vk = add i16 %i.vi, %i.vj
  store i16 %i.vk, ptr %i.vh, align 2
  %2 = add i32 %.0270334.i, 1                     ; 2 uses
  %i.vl = zext i32 %.0270334.i to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vl
  store i8 %.0337.i, ptr %i.vm, align 1
  %.not312.i = icmp eq i32 %.0262336.i, 1
  br i1 %.not312.i, label %.loopexit322.i, label %3

3:                                                ; preds = %bb.bz
  %4 = add i32 %.0270334.i, 2
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 %5
  store i8 %.0337.i, ptr %6, align 1
  br label %.loopexit322.i

bb.ca:                                            ; preds = %bb.by
  %i.vn = load i16, ptr %i.vc, align 2
  %i.vo = add i16 %i.vn, 1
  store i16 %i.vo, ptr %i.vc, align 2
  %i.vp = add i32 %.0270334.i, 1
  %i.vq = zext i32 %.0270334.i to i64
  %i.vr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vq
  store i8 16, ptr %i.vr, align 1
  %i.vs = trunc i32 %.0262336.i to i8
  %i.vt = add i8 %i.vs, -3
  %i.vu = add i32 %.0270334.i, 2
  %i.vv = zext i32 %i.vp to i64
  %i.vw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vv
  store i8 %i.vt, ptr %i.vw, align 1
  br label %.loopexit322.i

.loopexit322.i:                                   ; preds = %bb.bz, %3, %bb.ca, %bb.bx
  %.3273.i = phi i32 [ %.0270334.i, %bb.bx ], [ %i.vu, %bb.ca ], [ %2, %bb.bz ], [ %4, %3 ] ; 4 uses
  %i.vx = add i32 %.0264335.i, 1                  ; 2 uses
  %i.vy = icmp eq i32 %i.vx, 138
  br i1 %i.vy, label %bb.cb, label %bb.cn

bb.cb:                                            ; preds = %.loopexit322.i
  %i.vz = load i16, ptr %i.va, align 2
  %i.wa = add i16 %i.vz, 1
  store i16 %i.wa, ptr %i.va, align 2
  %i.wb = add i32 %.3273.i, 1
  %i.wc = zext i32 %.3273.i to i64
  %i.wd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wc
  store i8 18, ptr %i.wd, align 1
  %i.we = add i32 %.3273.i, 2
  %i.wf = zext i32 %i.wb to i64
  %i.wg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wf
  store i8 127, ptr %i.wg, align 1
  br label %bb.cn

bb.cc:                                            ; preds = %bb.bw
  %.not313.i = icmp eq i32 %.0264335.i, 0
  br i1 %.not313.i, label %.loopexit324.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wh = icmp ult i32 %.0264335.i, 3
  br i1 %i.wh, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.wi = load i16, ptr %i.uy, align 2
  %i.wj = trunc nuw nsw i32 %.0264335.i to i16
  %i.wk = add i16 %i.wi, %i.wj
  store i16 %i.wk, ptr %i.uy, align 2
  %7 = add i32 %.0270334.i, 1                     ; 2 uses
  %i.wl = zext i32 %.0270334.i to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wl
  store i8 0, ptr %i.wm, align 1
  %.not314.i = icmp eq i32 %.0264335.i, 1
  br i1 %.not314.i, label %.loopexit324.i, label %8

8:                                                ; preds = %bb.ce
  %9 = add i32 %.0270334.i, 2
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds nuw i8, ptr %i.b, i64 %10
  store i8 0, ptr %11, align 1
  br label %.loopexit324.i

bb.cf:                                            ; preds = %bb.cd
  %i.wn = icmp ult i32 %.0264335.i, 11
  %i.wo = add i32 %.0270334.i, 1
  %i.wp = zext i32 %.0270334.i to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wp
  %i.wr = trunc i32 %.0264335.i to i8
  %i.ws = add i32 %.0270334.i, 2
  %i.wt = zext i32 %i.wo to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wt
  br i1 %i.wn, label %12, label %bb.cg

12:                                               ; preds = %bb.cf
  %13 = load i16, ptr %i.vb, align 2
  %14 = add i16 %13, 1
  store i16 %14, ptr %i.vb, align 2
  br label %.loopexit324.sink.split.i

bb.cg:                                            ; preds = %bb.cf
  %i.wv = load i16, ptr %i.va, align 2
  %i.ww = add i16 %i.wv, 1
  store i16 %i.ww, ptr %i.va, align 2
  br label %.loopexit324.sink.split.i

.loopexit324.sink.split.i:                        ; preds = %bb.cg, %12
  %.sink.i = phi i8 [ 18, %bb.cg ], [ 17, %12 ]
  %.sink481.i = phi i8 [ -11, %bb.cg ], [ -3, %12 ]
  store i8 %.sink.i, ptr %i.wq, align 1
  %i.wx = add i8 %.sink481.i, %i.wr
  store i8 %i.wx, ptr %i.wu, align 1
  br label %.loopexit324.i

.loopexit324.i:                                   ; preds = %bb.ce, %8, %.loopexit324.sink.split.i, %bb.cc
  %.8.i = phi i32 [ %.0270334.i, %bb.cc ], [ %i.ws, %.loopexit324.sink.split.i ], [ %7, %bb.ce ], [ %9, %8 ] ; 11 uses
  %.not315.i = icmp eq i8 %i.ve, %.0337.i
  br i1 %.not315.i, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %.loopexit324.i
  %.not316.i = icmp eq i32 %.0262336.i, 0
  br i1 %.not316.i, label %.loopexit323.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.wy = icmp ult i32 %.0262336.i, 3
  br i1 %i.wy, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.wz = zext i8 %.0337.i to i64
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.uy, i64 %i.wz ; 2 uses
  %i.xb = load i16, ptr %i.xa, align 2
  %i.xc = trunc nuw nsw i32 %.0262336.i to i16
  %i.xd = add i16 %i.xb, %i.xc
  store i16 %i.xd, ptr %i.xa, align 2
  %15 = add i32 %.8.i, 1                          ; 2 uses
  %i.xe = zext i32 %.8.i to i64
  %i.xf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xe
  store i8 %.0337.i, ptr %i.xf, align 1
  %.not317.i = icmp eq i32 %.0262336.i, 1
  br i1 %.not317.i, label %.loopexit323.i, label %16

16:                                               ; preds = %bb.cj
  %17 = add i32 %.8.i, 2
  %18 = zext i32 %15 to i64
  %19 = getelementptr inbounds nuw i8, ptr %i.b, i64 %18
  store i8 %.0337.i, ptr %19, align 1
  br label %.loopexit323.i

bb.ck:                                            ; preds = %bb.ci
  %i.xg = load i16, ptr %i.vc, align 2
  %i.xh = add i16 %i.xg, 1
  store i16 %i.xh, ptr %i.vc, align 2
  %i.xi = add i32 %.8.i, 1
  %i.xj = zext i32 %.8.i to i64
  %i.xk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xj
  store i8 16, ptr %i.xk, align 1
  %i.xl = trunc i32 %.0262336.i to i8
  %i.xm = add i8 %i.xl, -3
  %i.xn = add i32 %.8.i, 2
  %i.xo = zext i32 %i.xi to i64
  %i.xp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xo
  store i8 %i.xm, ptr %i.xp, align 1
  br label %.loopexit323.i

.loopexit323.i:                                   ; preds = %bb.cj, %16, %bb.ck, %bb.ch
  %.11.i = phi i32 [ %.8.i, %bb.ch ], [ %i.xn, %bb.ck ], [ %15, %bb.cj ], [ %17, %16 ] ; 2 uses
  %i.xq = zext i8 %i.ve to i64
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %i.uy, i64 %i.xq ; 2 uses
  %i.xs = load i16, ptr %i.xr, align 2
  %i.xt = add i16 %i.xs, 1
  store i16 %i.xt, ptr %i.xr, align 2
  %i.xu = add i32 %.11.i, 1
  %i.xv = zext i32 %.11.i to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xv
  store i8 %i.ve, ptr %i.xw, align 1
  br label %bb.cn

bb.cl:                                            ; preds = %.loopexit324.i
  %i.xx = add i32 %.0262336.i, 1                  ; 2 uses
  %i.xy = icmp eq i32 %i.xx, 6
  br i1 %i.xy, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.xz = load i16, ptr %i.vc, align 2
  %i.ya = add i16 %i.xz, 1
  store i16 %i.ya, ptr %i.vc, align 2
  %i.yb = add i32 %.8.i, 1
  %i.yc = zext i32 %.8.i to i64
  %i.yd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yc
  store i8 16, ptr %i.yd, align 1
  %i.ye = zext i32 %i.yb to i64
  %i.yf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ye
  store i8 3, ptr %i.yf, align 1
  %i.yg = add i32 %.8.i, 2
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %.loopexit323.i, %bb.cb, %.loopexit322.i
  %.14.i = phi i32 [ %i.xu, %.loopexit323.i ], [ %i.yg, %bb.cm ], [ %.8.i, %bb.cl ], [ %i.we, %bb.cb ], [ %.3273.i, %.loopexit322.i ] ; 14 uses
  %.4268.i = phi i32 [ 0, %.loopexit323.i ], [ 0, %bb.cm ], [ 0, %bb.cl ], [ 0, %bb.cb ], [ %i.vx, %.loopexit322.i ] ; 7 uses
  %.6.i = phi i32 [ 0, %.loopexit323.i ], [ 0, %bb.cm ], [ %i.xx, %bb.cl ], [ 0, %bb.cb ], [ 0, %.loopexit322.i ] ; 6 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.bw, !llvm.loop !300

._crit_edge.i:                                    ; preds = %bb.cn
  %.not298.i = icmp eq i32 %.6.i, 0
  br i1 %.not298.i, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %._crit_edge.i
  %i.yh = icmp ult i32 %.6.i, 3
  br i1 %i.yh, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.yi = zext i8 %i.ve to i64
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.uy, i64 %i.yi ; 2 uses
  %i.yk = load i16, ptr %i.yj, align 2
  %i.yl = trunc nuw nsw i32 %.6.i to i16
  %i.ym = add i16 %i.yk, %i.yl
  store i16 %i.ym, ptr %i.yj, align 2
  %20 = add i32 %.14.i, 1                         ; 2 uses
  %i.yn = zext i32 %.14.i to i64
  %i.yo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yn
  store i8 %i.ve, ptr %i.yo, align 1
  %.not301.i = icmp eq i32 %.6.i, 1
  br i1 %.not301.i, label %.loopexit320.i, label %21

21:                                               ; preds = %bb.cp
  %22 = add i32 %.14.i, 2
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds nuw i8, ptr %i.b, i64 %23
  store i8 %i.ve, ptr %24, align 1
  br label %.loopexit320.i

bb.cq:                                            ; preds = %bb.co
  %i.yp = load i16, ptr %i.vc, align 2
  %i.yq = add i16 %i.yp, 1
  store i16 %i.yq, ptr %i.vc, align 2
  %i.yr = add i32 %.14.i, 1
  %i.ys = zext i32 %.14.i to i64
  %i.yt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ys
  store i8 16, ptr %i.yt, align 1
  %i.yu = trunc i32 %.6.i to i8
  %i.yv = add i8 %i.yu, -3
  %i.yw = add i32 %.14.i, 2
  %i.yx = zext i32 %i.yr to i64
  %i.yy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yx
  store i8 %i.yv, ptr %i.yy, align 1
  br label %.loopexit320.i

bb.cr:                                            ; preds = %._crit_edge.i
  %.not299.i = icmp eq i32 %.4268.i, 0
  br i1 %.not299.i, label %.loopexit320.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yz = icmp ult i32 %.4268.i, 3
  br i1 %i.yz, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.za = load i16, ptr %i.uy, align 2
  %i.zb = trunc nuw nsw i32 %.4268.i to i16
  %i.zc = add i16 %i.za, %i.zb
  store i16 %i.zc, ptr %i.uy, align 2
  %25 = add i32 %.14.i, 1                         ; 2 uses
  %i.zd = zext i32 %.14.i to i64
  %i.ze = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zd
  store i8 0, ptr %i.ze, align 1
  %.not300.i = icmp eq i32 %.4268.i, 1
  br i1 %.not300.i, label %.loopexit320.i, label %26

26:                                               ; preds = %bb.ct
  %27 = add i32 %.14.i, 2
  %28 = zext i32 %25 to i64
  %29 = getelementptr inbounds nuw i8, ptr %i.b, i64 %28
  store i8 0, ptr %29, align 1
  br label %.loopexit320.i

bb.cu:                                            ; preds = %bb.cs
  %i.zf = icmp ult i32 %.4268.i, 11
  %i.zg = add i32 %.14.i, 1
  %i.zh = zext i32 %.14.i to i64
  %i.zi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zh ; 2 uses
  %i.zj = trunc i32 %.4268.i to i8                ; 2 uses
  %i.zk = add i32 %.14.i, 2                       ; 2 uses
  %i.zl = zext i32 %i.zg to i64
  %i.zm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zl ; 2 uses
  br i1 %i.zf, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.zn = load i16, ptr %i.vb, align 2
  %i.zo = add i16 %i.zn, 1
  store i16 %i.zo, ptr %i.vb, align 2
  store i8 17, ptr %i.zi, align 1
  %i.zp = add nsw i8 %i.zj, -3
  store i8 %i.zp, ptr %i.zm, align 1
  br label %.loopexit320.i

bb.cw:                                            ; preds = %bb.cu
  %i.zq = load i16, ptr %i.va, align 2
  %i.zr = add i16 %i.zq, 1
  store i16 %i.zr, ptr %i.va, align 2
  store i8 18, ptr %i.zi, align 1
  %i.zs = add i8 %i.zj, -11
  store i8 %i.zs, ptr %i.zm, align 1
  br label %.loopexit320.i

.loopexit320.i:                                   ; preds = %bb.cp, %21, %bb.ct, %26, %bb.cw, %bb.cv, %bb.cr, %bb.cq
  %.19.i = phi i32 [ %i.yw, %bb.cq ], [ %.14.i, %bb.cr ], [ %27, %26 ], [ %i.zk, %bb.cw ], [ %i.zk, %bb.cv ], [ %25, %bb.ct ], [ %20, %bb.cp ], [ %22, %21 ] ; 2 uses
  tail call fastcc void @tdefl_optimize_huffman_table(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 19, i32 noundef 7, i32 noundef 0)
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 25 uses
  %i.zu = load i32, ptr %i.zt, align 4            ; 2 uses
  %i.zv = shl i32 2, %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 25 uses
  %i.zx = load i32, ptr %i.zw, align 8
  %i.zy = or i32 %i.zx, %i.zv                     ; 3 uses
  store i32 %i.zy, ptr %i.zw, align 8
  %i.zz = add i32 %i.zu, 2                        ; 4 uses
  store i32 %i.zz, ptr %i.zt, align 4
  %i.aaa = icmp ugt i32 %i.zz, 7
  br i1 %i.aaa, label %.lr.ph346.i, label %._crit_edge347.i

.lr.ph346.i:                                      ; preds = %.loopexit320.i
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cz, %.lr.ph346.i
  %i.aad = phi i32 [ %i.zz, %.lr.ph346.i ], [ %i.aan, %bb.cz ]
  %i.aae = phi i32 [ %i.zy, %.lr.ph346.i ], [ %i.aam, %bb.cz ] ; 2 uses
  %i.aaf = load ptr, ptr %i.aab, align 8          ; 3 uses
  %i.aag = load ptr, ptr %i.aac, align 8
  %i.aah = icmp ult ptr %i.aaf, %i.aag
  br i1 %i.aah, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.aai = trunc i32 %i.aae to i8
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaf, i64 1
  store ptr %i.aaj, ptr %i.aab, align 8
  store i8 %i.aai, ptr %i.aaf, align 1
  %.pre.i3 = load i32, ptr %i.zw, align 8
  %.pre405.i = load i32, ptr %i.zt, align 4
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.aak = phi i32 [ %.pre405.i, %bb.cy ], [ %i.aad, %bb.cx ]
  %i.aal = phi i32 [ %.pre.i3, %bb.cy ], [ %i.aae, %bb.cx ]
  %i.aam = lshr i32 %i.aal, 8                     ; 3 uses
  store i32 %i.aam, ptr %i.zw, align 8
  %i.aan = add i32 %i.aak, -8                     ; 4 uses
  store i32 %i.aan, ptr %i.zt, align 4
  %i.aao = icmp ugt i32 %i.aan, 7
  br i1 %i.aao, label %bb.cx, label %._crit_edge347.i, !llvm.loop !301

._crit_edge347.i:                                 ; preds = %bb.cz, %.loopexit320.i
  %i.aap = phi i32 [ %i.zy, %.loopexit320.i ], [ %i.aam, %bb.cz ]
  %storemerge.lcssa.i = phi i32 [ %i.zz, %.loopexit320.i ], [ %i.aan, %bb.cz ] ; 3 uses
  %i.aaq = add nsw i32 %.0282.lcssa.i, -257
  %i.aar = shl nuw nsw i32 %i.aaq, %storemerge.lcssa.i
  %i.aas = or i32 %i.aar, %i.aap                  ; 3 uses
  store i32 %i.aas, ptr %i.zw, align 8
  %i.aat = add nuw nsw i32 %storemerge.lcssa.i, 5 ; 3 uses
  store i32 %i.aat, ptr %i.zt, align 4
  %i.aau = icmp samesign ugt i32 %storemerge.lcssa.i, 2
  br i1 %i.aau, label %.lr.ph350.i, label %._crit_edge351.i

.lr.ph350.i:                                      ; preds = %._crit_edge347.i
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.da

bb.da:                                            ; preds = %bb.dc, %.lr.ph350.i
  %i.aax = phi i32 [ %i.aat, %.lr.ph350.i ], [ %i.abh, %bb.dc ]
  %i.aay = phi i32 [ %i.aas, %.lr.ph350.i ], [ %i.abg, %bb.dc ] ; 2 uses
  %i.aaz = load ptr, ptr %i.aav, align 8          ; 3 uses
  %i.aba = load ptr, ptr %i.aaw, align 8
  %i.abb = icmp ult ptr %i.aaz, %i.aba
  br i1 %i.abb, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.abc = trunc i32 %i.aay to i8
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 1
  store ptr %i.abd, ptr %i.aav, align 8
  store i8 %i.abc, ptr %i.aaz, align 1
  %.pre406.i = load i32, ptr %i.zw, align 8
  %.pre407.i = load i32, ptr %i.zt, align 4
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.abe = phi i32 [ %.pre407.i, %bb.db ], [ %i.aax, %bb.da ]
  %i.abf = phi i32 [ %.pre406.i, %bb.db ], [ %i.aay, %bb.da ]
  %i.abg = lshr i32 %i.abf, 8                     ; 3 uses
  store i32 %i.abg, ptr %i.zw, align 8
  %i.abh = add i32 %i.abe, -8                     ; 4 uses
  store i32 %i.abh, ptr %i.zt, align 4
  %i.abi = icmp ugt i32 %i.abh, 7
  br i1 %i.abi, label %bb.da, label %._crit_edge351.i, !llvm.loop !302

._crit_edge351.i:                                 ; preds = %bb.dc, %._crit_edge347.i
  %i.abj = phi i32 [ %i.aas, %._crit_edge347.i ], [ %i.abg, %bb.dc ]
  %storemerge302.lcssa.i = phi i32 [ %i.aat, %._crit_edge347.i ], [ %i.abh, %bb.dc ] ; 3 uses
  %i.abk = add nsw i32 %.0281.lcssa.i, -1
  %i.abl = shl nuw nsw i32 %i.abk, %storemerge302.lcssa.i
  %i.abm = or i32 %i.abl, %i.abj                  ; 3 uses
  store i32 %i.abm, ptr %i.zw, align 8
  %i.abn = add nuw nsw i32 %storemerge302.lcssa.i, 5 ; 3 uses
  store i32 %i.abn, ptr %i.zt, align 4
  %i.abo = icmp samesign ugt i32 %storemerge302.lcssa.i, 2
  br i1 %i.abo, label %.lr.ph354.i, label %.preheader319.i

.lr.ph354.i:                                      ; preds = %._crit_edge351.i
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.dd

.preheader319.i:                                  ; preds = %bb.df, %._crit_edge351.i
  %i.abr = phi i32 [ %i.abm, %._crit_edge351.i ], [ %i.ace, %bb.df ]
  %storemerge303.lcssa.i = phi i32 [ %i.abn, %._crit_edge351.i ], [ %i.acf, %bb.df ] ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 37258 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 37273
  %i.abu = load i8, ptr %i.abt, align 1
  %.not304.i = icmp eq i8 %i.abu, 0
  br i1 %.not304.i, label %bb.dg, label %bb.du

bb.dd:                                            ; preds = %bb.df, %.lr.ph354.i
  %i.abv = phi i32 [ %i.abn, %.lr.ph354.i ], [ %i.acf, %bb.df ]
  %i.abw = phi i32 [ %i.abm, %.lr.ph354.i ], [ %i.ace, %bb.df ] ; 2 uses
  %i.abx = load ptr, ptr %i.abp, align 8          ; 3 uses
  %i.aby = load ptr, ptr %i.abq, align 8
  %i.abz = icmp ult ptr %i.abx, %i.aby
  br i1 %i.abz, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aca = trunc i32 %i.abw to i8
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abx, i64 1
  store ptr %i.acb, ptr %i.abp, align 8
  store i8 %i.aca, ptr %i.abx, align 1
  %.pre408.i = load i32, ptr %i.zw, align 8
  %.pre409.i = load i32, ptr %i.zt, align 4
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.acc = phi i32 [ %.pre409.i, %bb.de ], [ %i.abv, %bb.dd ]
  %i.acd = phi i32 [ %.pre408.i, %bb.de ], [ %i.abw, %bb.dd ]
  %i.ace = lshr i32 %i.acd, 8                     ; 3 uses
  store i32 %i.ace, ptr %i.zw, align 8
  %i.acf = add i32 %i.acc, -8                     ; 4 uses
  store i32 %i.acf, ptr %i.zt, align 4
  %i.acg = icmp ugt i32 %i.acf, 7
  br i1 %i.acg, label %bb.dd, label %.preheader319.i, !llvm.loop !303

bb.dg:                                            ; preds = %.preheader319.i
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 37259
  %i.aci = load i8, ptr %i.ach, align 1
  %.not304.1.i = icmp eq i8 %i.aci, 0
  br i1 %.not304.1.i, label %bb.dh, label %bb.du

bb.dh:                                            ; preds = %bb.dg
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 37272
  %i.ack = load i8, ptr %i.acj, align 8
  %.not304.2.i = icmp eq i8 %i.ack, 0
  br i1 %.not304.2.i, label %bb.di, label %bb.du

bb.di:                                            ; preds = %bb.dh
  %i.acl = getelementptr inbounds nuw i8, ptr %0, i64 37260
  %i.acm = load i8, ptr %i.acl, align 4
  %.not304.3.i = icmp eq i8 %i.acm, 0
  br i1 %.not304.3.i, label %bb.dj, label %bb.du

bb.dj:                                            ; preds = %bb.di
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 37271
  %i.aco = load i8, ptr %i.acn, align 1
  %.not304.4.i = icmp eq i8 %i.aco, 0
  br i1 %.not304.4.i, label %bb.dk, label %bb.du

bb.dk:                                            ; preds = %bb.dj
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 37261
  %i.acq = load i8, ptr %i.acp, align 1
  %.not304.5.i = icmp eq i8 %i.acq, 0
  br i1 %.not304.5.i, label %bb.dl, label %bb.du

bb.dl:                                            ; preds = %bb.dk
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 37270
  %i.acs = load i8, ptr %i.acr, align 2
  %.not304.6.i = icmp eq i8 %i.acs, 0
  br i1 %.not304.6.i, label %bb.dm, label %bb.du

bb.dm:                                            ; preds = %bb.dl
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 37262
  %i.acu = load i8, ptr %i.act, align 2
  %.not304.7.i = icmp eq i8 %i.acu, 0
  br i1 %.not304.7.i, label %bb.dn, label %bb.du

bb.dn:                                            ; preds = %bb.dm
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 37269
  %i.acw = load i8, ptr %i.acv, align 1
  %.not304.8.i = icmp eq i8 %i.acw, 0
  br i1 %.not304.8.i, label %bb.do, label %bb.du

bb.do:                                            ; preds = %bb.dn
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 37263
  %i.acy = load i8, ptr %i.acx, align 1
  %.not304.9.i = icmp eq i8 %i.acy, 0
  br i1 %.not304.9.i, label %bb.dp, label %bb.du

bb.dp:                                            ; preds = %bb.do
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 37268
  %i.ada = load i8, ptr %i.acz, align 4
  %.not304.10.i = icmp eq i8 %i.ada, 0
end_hunk_2
begin_hunk_3_@tdefl_compress_block:bb.a
bb.dw:                                            ; preds = %bb.dv
  %i.aea = trunc i32 %i.adw to i8
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adx, i64 1
  store ptr %i.aeb, ptr %i.ado, align 8
  store i8 %i.aea, ptr %i.adx, align 1
  %.pre410.i = load i32, ptr %i.zw, align 8
  %.pre411.i = load i32, ptr %i.zt, align 4
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.aec = phi i32 [ %.pre411.i, %bb.dw ], [ %i.adv, %bb.dv ]
  %i.aed = phi i32 [ %.pre410.i, %bb.dw ], [ %i.adw, %bb.dv ]
  %i.aee = lshr i32 %i.aed, 8                     ; 3 uses
  store i32 %i.aee, ptr %i.zw, align 8
  %i.aef = add i32 %i.aec, -8                     ; 4 uses
  store i32 %i.aef, ptr %i.zt, align 4
  %i.aeg = icmp ugt i32 %i.aef, 7
  br i1 %i.aeg, label %bb.dv, label %.preheader318.i, !llvm.loop !304

.preheader.i:                                     ; preds = %._crit_edge361.i
  %.not383.i = icmp eq i32 %.19.i, 0
  br i1 %.not383.i, label %tdefl_start_dynamic_block.exit, label %.lr.ph380.i

.lr.ph380.i:                                      ; preds = %.preheader.i
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 36106
  br label %bb.eb

bb.dy:                                            ; preds = %._crit_edge361.i, %.preheader318.i
  %i.aei = phi i32 [ %i.adq, %.preheader318.i ], [ %i.afo, %._crit_edge361.i ]
  %i.aej = phi i32 [ %i.adr, %.preheader318.i ], [ %i.afp, %._crit_edge361.i ] ; 3 uses
  %indvars.iv400.i = phi i64 [ 0, %.preheader318.i ], [ %indvars.iv.next401.i, %._crit_edge361.i ] ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr @s_tdefl_packed_code_size_syms_swizzle, i64 %indvars.iv400.i
  %i.ael = load i8, ptr %i.aek, align 1
  %i.aem = zext i8 %i.ael to i64
  %i.aen = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.aem
  %i.aeo = load i8, ptr %i.aen, align 1
  %i.aep = zext i8 %i.aeo to i32
  %i.aeq = shl nuw nsw i32 %i.aep, %i.aej
  %i.aer = or i32 %i.aeq, %i.aei                  ; 4 uses
  store i32 %i.aer, ptr %i.zw, align 8
  %i.aes = add nuw nsw i32 %i.aej, 3              ; 4 uses
  store i32 %i.aes, ptr %i.zt, align 4
  %i.aet = icmp samesign ugt i32 %i.aej, 4
  br i1 %i.aet, label %.lr.ph360.i, label %._crit_edge361.i

.lr.ph360.i:                                      ; preds = %bb.dy
  %i.aeu = load ptr, ptr %i.ads, align 8
  %i.aev = load ptr, ptr %i.adt, align 8
  %i.aew = icmp ult ptr %i.aeu, %i.aev
  br i1 %i.aew, label %.lr.ph360.split.i, label %.lr.ph360.split.us.i

.lr.ph360.split.us.i:                             ; preds = %.lr.ph360.i, %.lr.ph360.split.us.i
  %i.aex = phi i32 [ %i.afa, %.lr.ph360.split.us.i ], [ %i.aes, %.lr.ph360.i ]
  %i.aey = phi i32 [ %i.aez, %.lr.ph360.split.us.i ], [ %i.aer, %.lr.ph360.i ]
  %i.aez = lshr i32 %i.aey, 8                     ; 3 uses
  %i.afa = add i32 %i.aex, -8                     ; 4 uses
  %i.afb = icmp ugt i32 %i.afa, 7
  br i1 %i.afb, label %.lr.ph360.split.us.i, label %._crit_edge361.split.us.i, !llvm.loop !305

._crit_edge361.split.us.i:                        ; preds = %.lr.ph360.split.us.i
  store i32 %i.aez, ptr %i.zw, align 8
  store i32 %i.afa, ptr %i.zt, align 4
  br label %._crit_edge361.i

.lr.ph360.split.i:                                ; preds = %.lr.ph360.i, %bb.ea
  %i.afc = phi i32 [ %i.afm, %bb.ea ], [ %i.aes, %.lr.ph360.i ]
  %i.afd = phi i32 [ %i.afl, %bb.ea ], [ %i.aer, %.lr.ph360.i ] ; 2 uses
  %i.afe = load ptr, ptr %i.ads, align 8          ; 3 uses
  %i.aff = load ptr, ptr %i.adt, align 8
  %i.afg = icmp ult ptr %i.afe, %i.aff
  br i1 %i.afg, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.lr.ph360.split.i
  %i.afh = trunc i32 %i.afd to i8
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afe, i64 1
  store ptr %i.afi, ptr %i.ads, align 8
  store i8 %i.afh, ptr %i.afe, align 1
  %.pre412.i = load i32, ptr %i.zw, align 8
  %.pre413.i = load i32, ptr %i.zt, align 4
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %.lr.ph360.split.i
  %i.afj = phi i32 [ %.pre413.i, %bb.dz ], [ %i.afc, %.lr.ph360.split.i ]
  %i.afk = phi i32 [ %.pre412.i, %bb.dz ], [ %i.afd, %.lr.ph360.split.i ]
  %i.afl = lshr i32 %i.afk, 8                     ; 3 uses
  store i32 %i.afl, ptr %i.zw, align 8
  %i.afm = add i32 %i.afj, -8                     ; 4 uses
  store i32 %i.afm, ptr %i.zt, align 4
  %i.afn = icmp ugt i32 %i.afm, 7
  br i1 %i.afn, label %.lr.ph360.split.i, label %._crit_edge361.i, !llvm.loop !306

._crit_edge361.i:                                 ; preds = %bb.ea, %._crit_edge361.split.us.i, %bb.dy
  %i.afo = phi i32 [ %i.aer, %bb.dy ], [ %i.aez, %._crit_edge361.split.us.i ], [ %i.afl, %bb.ea ] ; 3 uses
  %i.afp = phi i32 [ %i.aes, %bb.dy ], [ %i.afa, %._crit_edge361.split.us.i ], [ %i.afm, %bb.ea ] ; 3 uses
  %indvars.iv.next401.i = add nuw nsw i64 %indvars.iv400.i, 1 ; 2 uses
  %exitcond404.not.i = icmp eq i64 %indvars.iv.next401.i, %wide.trip.count403.i
  br i1 %exitcond404.not.i, label %.preheader.i, label %bb.dy, !llvm.loop !307

bb.eb:                                            ; preds = %.loopexit.i, %.lr.ph380.i
  %i.afq = phi i32 [ %i.afo, %.lr.ph380.i ], [ %i.aiz, %.loopexit.i ]
  %i.afr = phi i32 [ %i.afp, %.lr.ph380.i ], [ %i.aja, %.loopexit.i ] ; 3 uses
  %.0261379.i = phi i32 [ 0, %.lr.ph380.i ], [ %.1.i, %.loopexit.i ] ; 3 uses
  %i.afs = add nuw i32 %.0261379.i, 1             ; 2 uses
  %i.aft = zext i32 %.0261379.i to i64
  %i.afu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aft
  %i.afv = load i8, ptr %i.afu, align 1           ; 2 uses
  %i.afw = zext i8 %i.afv to i64                  ; 3 uses
  %i.afx = getelementptr inbounds nuw [2 x i8], ptr %i.aeh, i64 %i.afw
  %i.afy = load i16, ptr %i.afx, align 2
  %i.afz = zext i16 %i.afy to i32
  %i.aga = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.afw
  %i.agb = load i8, ptr %i.aga, align 1
  %i.agc = zext i8 %i.agb to i32                  ; 2 uses
  %i.agd = shl nuw nsw i32 %i.afz, %i.afr
  %i.age = or i32 %i.agd, %i.afq                  ; 4 uses
  store i32 %i.age, ptr %i.zw, align 8
  %i.agf = add nuw nsw i32 %i.afr, %i.agc         ; 6 uses
  store i32 %i.agf, ptr %i.zt, align 4
  %i.agg = icmp samesign ugt i32 %i.agf, 7
  br i1 %i.agg, label %.lr.ph366.i, label %._crit_edge367.i

.lr.ph366.i:                                      ; preds = %bb.eb
  %i.agh = load ptr, ptr %i.ads, align 8
  %i.agi = load ptr, ptr %i.adt, align 8
  %i.agj = icmp ult ptr %i.agh, %i.agi
  br i1 %i.agj, label %.lr.ph366.split.i, label %.lr.ph366.split.us.i.preheader

.lr.ph366.split.us.i.preheader:                   ; preds = %.lr.ph366.i
  %i.agk = add i32 %i.afr, -8
  %i.agl = add i32 %i.agk, %i.agc                 ; 2 uses
  %i.agm = lshr i32 %i.agl, 3
  %i.agn = add nuw nsw i32 %i.agm, 1
  %xtraiter332 = and i32 %i.agn, 7                ; 2 uses
  %lcmp.mod333.not = icmp eq i32 %xtraiter332, 0
  br i1 %lcmp.mod333.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol

.lr.ph366.split.us.i.prol:                        ; preds = %.lr.ph366.split.us.i.preheader, %.lr.ph366.split.us.i.prol
  %i.ago = phi i32 [ %i.agr, %.lr.ph366.split.us.i.prol ], [ %i.agf, %.lr.ph366.split.us.i.preheader ]
  %i.agp = phi i32 [ %i.agq, %.lr.ph366.split.us.i.prol ], [ %i.age, %.lr.ph366.split.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph366.split.us.i.prol ], [ 0, %.lr.ph366.split.us.i.preheader ]
  %i.agq = lshr i32 %i.agp, 8                     ; 2 uses
  %i.agr = add i32 %i.ago, -8                     ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter332
  br i1 %prol.iter.cmp.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol, !llvm.loop !308

.lr.ph366.split.us.i.prol.loopexit:               ; preds = %.lr.ph366.split.us.i.prol, %.lr.ph366.split.us.i.preheader
  %.unr = phi i32 [ %i.agf, %.lr.ph366.split.us.i.preheader ], [ %i.agr, %.lr.ph366.split.us.i.prol ]
  %.lcssa285.unr = phi i32 [ poison, %.lr.ph366.split.us.i.preheader ], [ %i.agq, %.lr.ph366.split.us.i.prol ]
  %.lcssa284.unr = phi i32 [ poison, %.lr.ph366.split.us.i.preheader ], [ %i.agr, %.lr.ph366.split.us.i.prol ]
  %i.ags = icmp ult i32 %i.agl, 56
  br i1 %i.ags, label %._crit_edge367.split.us.i, label %.lr.ph366.split.us.i

.lr.ph366.split.us.i:                             ; preds = %.lr.ph366.split.us.i.prol.loopexit, %.lr.ph366.split.us.i
  %i.agt = phi i32 [ %i.agu, %.lr.ph366.split.us.i ], [ %.unr, %.lr.ph366.split.us.i.prol.loopexit ]
  %i.agu = add i32 %i.agt, -64                    ; 3 uses
  %i.agv = icmp ugt i32 %i.agu, 7
  br i1 %i.agv, label %.lr.ph366.split.us.i, label %._crit_edge367.split.us.i, !llvm.loop !309

._crit_edge367.split.us.i:                        ; preds = %.lr.ph366.split.us.i, %.lr.ph366.split.us.i.prol.loopexit
  %.lcssa285 = phi i32 [ %.lcssa285.unr, %.lr.ph366.split.us.i.prol.loopexit ], [ 0, %.lr.ph366.split.us.i ] ; 2 uses
  %.lcssa284 = phi i32 [ %.lcssa284.unr, %.lr.ph366.split.us.i.prol.loopexit ], [ %i.agu, %.lr.ph366.split.us.i ] ; 2 uses
  store i32 %.lcssa285, ptr %i.zw, align 8
  store i32 %.lcssa284, ptr %i.zt, align 4
  br label %._crit_edge367.i

.lr.ph366.split.i:                                ; preds = %.lr.ph366.i, %bb.ed
  %i.agw = phi i32 [ %i.ahg, %bb.ed ], [ %i.agf, %.lr.ph366.i ]
  %i.agx = phi i32 [ %i.ahf, %bb.ed ], [ %i.age, %.lr.ph366.i ] ; 2 uses
  %i.agy = load ptr, ptr %i.ads, align 8          ; 3 uses
  %i.agz = load ptr, ptr %i.adt, align 8
  %i.aha = icmp ult ptr %i.agy, %i.agz
  br i1 %i.aha, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %.lr.ph366.split.i
  %i.ahb = trunc i32 %i.agx to i8
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agy, i64 1
  store ptr %i.ahc, ptr %i.ads, align 8
  store i8 %i.ahb, ptr %i.agy, align 1
  %.pre414.i = load i32, ptr %i.zw, align 8
  %.pre415.i = load i32, ptr %i.zt, align 4
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.lr.ph366.split.i
  %i.ahd = phi i32 [ %.pre415.i, %bb.ec ], [ %i.agw, %.lr.ph366.split.i ]
  %i.ahe = phi i32 [ %.pre414.i, %bb.ec ], [ %i.agx, %.lr.ph366.split.i ]
  %i.ahf = lshr i32 %i.ahe, 8                     ; 3 uses
  store i32 %i.ahf, ptr %i.zw, align 8
  %i.ahg = add i32 %i.ahd, -8                     ; 4 uses
  store i32 %i.ahg, ptr %i.zt, align 4
  %i.ahh = icmp ugt i32 %i.ahg, 7
  br i1 %i.ahh, label %.lr.ph366.split.i, label %._crit_edge367.i, !llvm.loop !310

._crit_edge367.i:                                 ; preds = %bb.ed, %._crit_edge367.split.us.i, %bb.eb
  %i.ahi = phi i32 [ %i.age, %bb.eb ], [ %.lcssa285, %._crit_edge367.split.us.i ], [ %i.ahf, %bb.ed ] ; 2 uses
  %i.ahj = phi i32 [ %i.agf, %bb.eb ], [ %.lcssa284, %._crit_edge367.split.us.i ], [ %i.ahg, %bb.ed ] ; 4 uses
  %i.ahk = icmp ugt i8 %i.afv, 15
  br i1 %i.ahk, label %bb.ee, label %.loopexit.i

bb.ee:                                            ; preds = %._crit_edge367.i
  %i.ahl = add i32 %.0261379.i, 2                 ; 3 uses
  %i.ahm = zext i32 %i.afs to i64
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ahm
  %i.aho = load i8, ptr %i.ahn, align 1
  %i.ahp = zext i8 %i.aho to i32
  %i.ahq = getelementptr i8, ptr @.str.38, i64 %i.afw
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 -16
  %i.ahs = load i8, ptr %i.ahr, align 1
  %i.aht = sext i8 %i.ahs to i32                  ; 2 uses
  %i.ahu = shl nuw nsw i32 %i.ahp, %i.ahj
  %i.ahv = or i32 %i.ahu, %i.ahi                  ; 4 uses
  store i32 %i.ahv, ptr %i.zw, align 8
  %i.ahw = add nsw i32 %i.ahj, %i.aht             ; 6 uses
  store i32 %i.ahw, ptr %i.zt, align 4
  %i.ahx = icmp ugt i32 %i.ahw, 7
  br i1 %i.ahx, label %.lr.ph374.i, label %.loopexit.i

.lr.ph374.i:                                      ; preds = %bb.ee
  %i.ahy = load ptr, ptr %i.ads, align 8
  %i.ahz = load ptr, ptr %i.adt, align 8
  %i.aia = icmp ult ptr %i.ahy, %i.ahz
  br i1 %i.aia, label %.lr.ph374.split.i, label %.lr.ph374.split.us.i.preheader

.lr.ph374.split.us.i.preheader:                   ; preds = %.lr.ph374.i
  %i.aib = add i32 %i.ahj, -8
  %i.aic = add i32 %i.aib, %i.aht                 ; 2 uses
  %i.aid = lshr i32 %i.aic, 3
  %i.aie = add nuw nsw i32 %i.aid, 1
  %xtraiter335 = and i32 %i.aie, 7                ; 2 uses
  %lcmp.mod336.not = icmp eq i32 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol

.lr.ph374.split.us.i.prol:                        ; preds = %.lr.ph374.split.us.i.preheader, %.lr.ph374.split.us.i.prol
  %i.aif = phi i32 [ %i.aii, %.lr.ph374.split.us.i.prol ], [ %i.ahw, %.lr.ph374.split.us.i.preheader ]
  %i.aig = phi i32 [ %i.aih, %.lr.ph374.split.us.i.prol ], [ %i.ahv, %.lr.ph374.split.us.i.preheader ]
  %prol.iter337 = phi i32 [ %prol.iter337.next, %.lr.ph374.split.us.i.prol ], [ 0, %.lr.ph374.split.us.i.preheader ]
  %i.aih = lshr i32 %i.aig, 8                     ; 2 uses
  %i.aii = add i32 %i.aif, -8                     ; 3 uses
  %prol.iter337.next = add i32 %prol.iter337, 1   ; 2 uses
  %prol.iter337.cmp.not = icmp eq i32 %prol.iter337.next, %xtraiter335
  br i1 %prol.iter337.cmp.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol, !llvm.loop !311

.lr.ph374.split.us.i.prol.loopexit:               ; preds = %.lr.ph374.split.us.i.prol, %.lr.ph374.split.us.i.preheader
  %.unr338 = phi i32 [ %i.ahw, %.lr.ph374.split.us.i.preheader ], [ %i.aii, %.lr.ph374.split.us.i.prol ]
  %.lcssa289.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.aih, %.lr.ph374.split.us.i.prol ]
  %.lcssa288.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.aii, %.lr.ph374.split.us.i.prol ]
  %i.aij = icmp ult i32 %i.aic, 56
  br i1 %i.aij, label %..loopexit_crit_edge.split.us.i, label %.lr.ph374.split.us.i

.lr.ph374.split.us.i:                             ; preds = %.lr.ph374.split.us.i.prol.loopexit, %.lr.ph374.split.us.i
  %i.aik = phi i32 [ %i.ail, %.lr.ph374.split.us.i ], [ %.unr338, %.lr.ph374.split.us.i.prol.loopexit ]
  %i.ail = add i32 %i.aik, -64                    ; 3 uses
  %i.aim = icmp ugt i32 %i.ail, 7
  br i1 %i.aim, label %.lr.ph374.split.us.i, label %..loopexit_crit_edge.split.us.i, !llvm.loop !312

..loopexit_crit_edge.split.us.i:                  ; preds = %.lr.ph374.split.us.i, %.lr.ph374.split.us.i.prol.loopexit
  %.lcssa289 = phi i32 [ %.lcssa289.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ 0, %.lr.ph374.split.us.i ] ; 2 uses
  %.lcssa288 = phi i32 [ %.lcssa288.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ %i.ail, %.lr.ph374.split.us.i ] ; 2 uses
  store i32 %.lcssa289, ptr %i.zw, align 8
  store i32 %.lcssa288, ptr %i.zt, align 4
  br label %.loopexit.i

.lr.ph374.split.i:                                ; preds = %.lr.ph374.i, %bb.eg
  %i.ain = phi i32 [ %i.aix, %bb.eg ], [ %i.ahw, %.lr.ph374.i ]
  %i.aio = phi i32 [ %i.aiw, %bb.eg ], [ %i.ahv, %.lr.ph374.i ] ; 2 uses
  %i.aip = load ptr, ptr %i.ads, align 8          ; 3 uses
  %i.aiq = load ptr, ptr %i.adt, align 8
  %i.air = icmp ult ptr %i.aip, %i.aiq
  br i1 %i.air, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.lr.ph374.split.i
  %i.ais = trunc i32 %i.aio to i8
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 1
  store ptr %i.ait, ptr %i.ads, align 8
  store i8 %i.ais, ptr %i.aip, align 1
  %.pre416.i = load i32, ptr %i.zw, align 8
  %.pre417.i = load i32, ptr %i.zt, align 4
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.lr.ph374.split.i
  %i.aiu = phi i32 [ %.pre417.i, %bb.ef ], [ %i.ain, %.lr.ph374.split.i ]
  %i.aiv = phi i32 [ %.pre416.i, %bb.ef ], [ %i.aio, %.lr.ph374.split.i ]
  %i.aiw = lshr i32 %i.aiv, 8                     ; 3 uses
  store i32 %i.aiw, ptr %i.zw, align 8
  %i.aix = add i32 %i.aiu, -8                     ; 4 uses
  store i32 %i.aix, ptr %i.zt, align 4
  %i.aiy = icmp ugt i32 %i.aix, 7
  br i1 %i.aiy, label %.lr.ph374.split.i, label %.loopexit.i, !llvm.loop !313

.loopexit.i:                                      ; preds = %bb.eg, %..loopexit_crit_edge.split.us.i, %bb.ee, %._crit_edge367.i
  %i.aiz = phi i32 [ %i.ahi, %._crit_edge367.i ], [ %.lcssa289, %..loopexit_crit_edge.split.us.i ], [ %i.ahv, %bb.ee ], [ %i.aiw, %bb.eg ] ; 2 uses
  %i.aja = phi i32 [ %i.ahj, %._crit_edge367.i ], [ %.lcssa288, %..loopexit_crit_edge.split.us.i ], [ %i.ahw, %bb.ee ], [ %i.aix, %bb.eg ] ; 2 uses
  %.1.i = phi i32 [ %i.afs, %._crit_edge367.i ], [ %i.ahl, %..loopexit_crit_edge.split.us.i ], [ %i.ahl, %bb.ee ], [ %i.ahl, %bb.eg ] ; 2 uses
  %i.ajb = icmp ult i32 %.1.i, %.19.i
  br i1 %i.ajb, label %bb.eb, label %tdefl_start_dynamic_block.exit, !llvm.loop !314

tdefl_start_dynamic_block.exit:                   ; preds = %.loopexit.i, %.preheader.i
  %.pre168.i103 = phi i32 [ %i.afo, %.preheader.i ], [ %i.aiz, %.loopexit.i ]
  %.pre166.i101 = phi i32 [ %i.afp, %.preheader.i ], [ %i.aja, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %tdefl_start_static_block.exit

tdefl_start_static_block.exit:                    ; preds = %bb.p, %tdefl_optimize_huffman_table.exit47.i, %tdefl_start_dynamic_block.exit
  %.pre168.i = phi i32 [ %.pre168.i103, %tdefl_start_dynamic_block.exit ], [ %i.pp, %tdefl_optimize_huffman_table.exit47.i ], [ %i.qd, %bb.p ] ; 2 uses
  %.pre166.i = phi i32 [ %.pre166.i101, %tdefl_start_dynamic_block.exit ], [ %i.pq, %tdefl_optimize_huffman_table.exit47.i ], [ %i.qe, %bb.p ] ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %0, i64 37546 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aje = load ptr, ptr %i.ajd, align 8
  %i.ajf = icmp ult ptr %i.ajc, %i.aje
  br i1 %i.ajf, label %.lr.ph145.i, label %._crit_edge146.i

.lr.ph145.i:                                      ; preds = %tdefl_start_static_block.exit
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 34954 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 36682 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 15 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 15 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %0, i64 35530
  %i.ajn = getelementptr inbounds nuw i8, ptr %0, i64 36970
  br label %bb.eh

bb.eh:                                            ; preds = %.loopexit.i7, %.lr.ph145.i
  %i.ajo = phi i32 [ %.pre168.i, %.lr.ph145.i ], [ %i.apa, %.loopexit.i7 ] ; 2 uses
  %i.ajp = phi i32 [ %.pre166.i, %.lr.ph145.i ], [ %i.apb, %.loopexit.i7 ] ; 4 uses
  %.0111143.i = phi ptr [ %i.ajc, %.lr.ph145.i ], [ %.2.i, %.loopexit.i7 ] ; 3 uses
  %.0112142.i = phi i32 [ 1, %.lr.ph145.i ], [ %i.apc, %.loopexit.i7 ] ; 2 uses
  %i.ajq = icmp eq i32 %.0112142.i, 1
  br i1 %i.ajq, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0111143.i, i64 1
  %i.ajs = load i8, ptr %.0111143.i, align 1
  %i.ajt = zext i8 %i.ajs to i32
  %i.aju = or disjoint i32 %i.ajt, 256
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.1113.i = phi i32 [ %i.aju, %bb.ei ], [ %.0112142.i, %bb.eh ] ; 2 uses
  %.1.i4 = phi ptr [ %i.ajr, %bb.ei ], [ %.0111143.i, %bb.eh ] ; 5 uses
  %i.ajv = and i32 %.1113.i, 1
  %.not.i5 = icmp eq i32 %i.ajv, 0
  br i1 %.not.i5, label %bb.et, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ajw = load i8, ptr %.1.i4, align 1           ; 2 uses
  %i.ajx = zext i8 %i.ajw to i32
  %i.ajy = getelementptr inbounds nuw i8, ptr %.1.i4, i64 1
  %i.ajz = load i16, ptr %i.ajy, align 1          ; 4 uses
  %i.aka = zext i16 %i.ajz to i32
  %i.akb = lshr i16 %i.ajz, 8
  %i.akc = zext nneg i16 %i.akb to i64            ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.1.i4, i64 3 ; 2 uses
  %i.ake = zext i8 %i.ajw to i64                  ; 2 uses
  %i.akf = getelementptr inbounds nuw [2 x i8], ptr @s_tdefl_len_sym, i64 %i.ake
  %i.akg = load i16, ptr %i.akf, align 2
  %i.akh = zext i16 %i.akg to i64                 ; 2 uses
  %i.aki = getelementptr inbounds nuw [2 x i8], ptr %i.ajg, i64 %i.akh
  %i.akj = load i16, ptr %i.aki, align 2
  %i.akk = zext i16 %i.akj to i32
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ajh, i64 %i.akh
  %i.akm = load i8, ptr %i.akl, align 1
  %i.akn = zext i8 %i.akm to i32
  %i.ako = shl nuw nsw i32 %i.akk, %i.ajp
  %i.akp = or i32 %i.ajo, %i.ako                  ; 3 uses
  store i32 %i.akp, ptr %i.ajj, align 8
  %i.akq = add nuw nsw i32 %i.ajp, %i.akn         ; 4 uses
  store i32 %i.akq, ptr %i.aji, align 4
  %i.akr = icmp samesign ugt i32 %i.akq, 7
  br i1 %i.akr, label %.lr.ph.i8, label %._crit_edge.i6

.lr.ph.i8:                                        ; preds = %bb.ek, %bb.em
  %i.aks = phi i32 [ %i.alc, %bb.em ], [ %i.akq, %bb.ek ]
  %i.akt = phi i32 [ %i.alb, %bb.em ], [ %i.akp, %bb.ek ] ; 2 uses
  %i.aku = load ptr, ptr %i.ajk, align 8          ; 3 uses
  %i.akv = load ptr, ptr %i.ajl, align 8
  %i.akw = icmp ult ptr %i.aku, %i.akv
  br i1 %i.akw, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.lr.ph.i8
  %i.akx = trunc i32 %i.akt to i8
  %i.aky = getelementptr inbounds nuw i8, ptr %i.aku, i64 1
  store ptr %i.aky, ptr %i.ajk, align 8
  store i8 %i.akx, ptr %i.aku, align 1
  %.pre.i9 = load i32, ptr %i.ajj, align 8
  %.pre157.i = load i32, ptr %i.aji, align 4
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %.lr.ph.i8
  %i.akz = phi i32 [ %.pre157.i, %bb.el ], [ %i.aks, %.lr.ph.i8 ]
  %i.ala = phi i32 [ %.pre.i9, %bb.el ], [ %i.akt, %.lr.ph.i8 ]
  %i.alb = lshr i32 %i.ala, 8                     ; 3 uses
  store i32 %i.alb, ptr %i.ajj, align 8
  %i.alc = add i32 %i.akz, -8                     ; 4 uses
  store i32 %i.alc, ptr %i.aji, align 4
  %i.ald = icmp ugt i32 %i.alc, 7
  br i1 %i.ald, label %.lr.ph.i8, label %._crit_edge.i6, !llvm.loop !315

._crit_edge.i6:                                   ; preds = %bb.em, %bb.ek
  %i.ale = phi i32 [ %i.akp, %bb.ek ], [ %i.alb, %bb.em ]
end_hunk_3
