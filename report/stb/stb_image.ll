Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__grow_buffer_unsafe:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !26
  %.not.i18 = icmp eq i32 %i.bd, 0
  br i1 %.not.i18, label %stbi__get8.exit23.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 56 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 52
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !35
  %i.bl = tail call i32 %i.bf(ptr noundef %i.bh, ptr noundef nonnull %i.bi, i32 noundef %i.bk) #37, !inline_history !65 ; 2 uses
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !28
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 184 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !27
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !27
  %i.bw = icmp eq i32 %i.bl, 0
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bc, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 57
  store i8 0, ptr %i.bi, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i20

bb.n:                                             ; preds = %bb.l
  %i.by = sext i32 %i.bl to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bi, i64 %i.by
  %.pre.i19 = load i8, ptr %i.bi, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i20

stbi__refill_buffer.exit.i20:                     ; preds = %bb.n, %bb.m
  %i.ca = phi i8 [ 0, %bb.m ], [ %.pre.i19, %bb.n ]
  %.sink.i.i21 = phi ptr [ %i.bx, %bb.m ], [ %i.bz, %bb.n ]
  store ptr %.sink.i.i21, ptr %i.ax, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %i.au, i64 57
  store ptr %i.cb, ptr %i.av, align 8, !tbaa !29
  br label %stbi__get8.exit23.preheader

stbi__get8.exit23.preheader:                      ; preds = %bb.j, %bb.k, %stbi__refill_buffer.exit.i20
  %.016.in.ph = phi i8 [ %i.ca, %stbi__refill_buffer.exit.i20 ], [ %i.bb, %bb.j ], [ 0, %bb.k ]
  br label %stbi__get8.exit23

stbi__get8.exit23:                                ; preds = %stbi__get8.exit23.backedge, %stbi__get8.exit23.preheader
  %.016.in = phi i8 [ %.016.in.ph, %stbi__get8.exit23.preheader ], [ %.016.in.be, %stbi__get8.exit23.backedge ] ; 2 uses
  switch i8 %.016.in, label %bb.u [
    i8 -1, label %bb.o
    i8 0, label %.thread
  ]

bb.o:                                             ; preds = %stbi__get8.exit23
  %i.cc = load ptr, ptr %0, align 8, !tbaa !78    ; 11 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 192 ; 4 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !29 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 200 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !31
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store ptr %i.ci, ptr %i.cd, align 8, !tbaa !29
  %i.cj = load i8, ptr %i.ce, align 1, !tbaa !37
  br label %stbi__get8.exit23.backedge

stbi__get8.exit23.backedge:                       ; preds = %bb.p, %bb.q, %stbi__refill_buffer.exit.i26
  %.016.in.be = phi i8 [ %i.cj, %bb.p ], [ %i.di, %stbi__refill_buffer.exit.i26 ], [ 0, %bb.q ]
  br label %stbi__get8.exit23, !llvm.loop !302

bb.q:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !26
  %.not.i24 = icmp eq i32 %i.cl, 0
  br i1 %.not.i24, label %stbi__get8.exit23.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !34
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 56 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 52
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !35
  %i.ct = tail call i32 %i.cn(ptr noundef %i.cp, ptr noundef nonnull %i.cq, i32 noundef %i.cs) #37, !inline_history !65 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !29
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !28
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = trunc i64 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cc, i64 184 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !27
  %i.dd = add nsw i32 %i.dc, %i.da
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !27
  %i.de = icmp eq i32 %i.ct, 0
  br i1 %i.de, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ck, align 8, !tbaa !26
  %i.df = getelementptr inbounds nuw i8, ptr %i.cc, i64 57
  store i8 0, ptr %i.cq, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i26

bb.t:                                             ; preds = %bb.r
  %i.dg = sext i32 %i.ct to i64
  %i.dh = getelementptr inbounds i8, ptr %i.cq, i64 %i.dg
  %.pre.i25 = load i8, ptr %i.cq, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i26

stbi__refill_buffer.exit.i26:                     ; preds = %bb.t, %bb.s
  %i.di = phi i8 [ 0, %bb.s ], [ %.pre.i25, %bb.t ]
  %.sink.i.i27 = phi ptr [ %i.df, %bb.s ], [ %i.dh, %bb.t ]
  store ptr %.sink.i.i27, ptr %i.cf, align 8, !tbaa !31
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cc, i64 57
  store ptr %i.dj, ptr %i.cd, align 8, !tbaa !29
  br label %stbi__get8.exit23.backedge

bb.u:                                             ; preds = %stbi__get8.exit23
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 18472
  store i8 %.016.in, ptr %i.dk, align 8, !tbaa !83
  store i32 1, ptr %i.a, align 4, !tbaa !94
  br label %.loopexit

.thread:                                          ; preds = %stbi__get8.exit23, %bb.d, %.split, %bb.h
  %.shrunk = phi i8 [ 0, %.split ], [ 0, %bb.d ], [ %.0.i, %bb.h ], [ -1, %stbi__get8.exit23 ]
  %i.dl = zext i8 %.shrunk to i32
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !95  ; 3 uses
  %i.dn = sub nsw i32 24, %i.dm
  %i.do = shl i32 %i.dl, %i.dn
  %i.dp = load i32, ptr %i.c, align 8, !tbaa !96
  %i.dq = or i32 %i.do, %i.dp
  store i32 %i.dq, ptr %i.c, align 8, !tbaa !96
  %i.dr = add nsw i32 %i.dm, 8
  store i32 %i.dr, ptr %i.b, align 4, !tbaa !95
  %i.ds = icmp slt i32 %i.dm, 17
  br i1 %i.ds, label %.splitthread-pre-split, label %.loopexit, !llvm.loop !303

.loopexit:                                        ; preds = %.thread, %.split.us, %bb.u
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 256) i32 @stbi__jpeg_huff_decode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !95
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !96   ; 5 uses
  %i.f = lshr i32 %i.e, 23
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37    ; 2 uses
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %i.k = zext i8 %i.i to i64                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !37
  %i.n = zext i8 %i.m to i32                      ; 3 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !95   ; 2 uses
  %i.p = icmp slt i32 %i.o, %i.n
  br i1 %i.p, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = shl i32 %i.e, %i.n
  store i32 %i.q, ptr %i.d, align 8, !tbaa !96
  %i.r = sub nuw nsw i32 %i.o, %i.n
  store i32 %i.r, ptr %i.a, align 4, !tbaa !95
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = load i8, ptr %i.t, align 1, !tbaa !37
  %i.v = zext i8 %i.u to i32
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.w = lshr i32 %i.e, 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1540
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 10, %bb.f ] ; 5 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !40
  %i.aa = icmp ult i32 %i.w, %i.z
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.aa, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32    ; 5 uses
  %i.ac = icmp eq i64 %indvars.iv, 17
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !95  ; 3 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = add nsw i32 %i.ad, -16
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !95
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.af = icmp slt i32 %i.ad, %i.ab
  br i1 %i.af, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = sub nsw i32 32, %i.ab
  %i.ah = lshr i32 %i.e, %i.ag
  %notmask = shl nsw i32 -1, %i.ab
  %2 = xor i32 %notmask, -1
  %i.ai = and i32 %i.ah, %2
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1612
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !40
  %i.am = add i32 %i.al, %i.ai                    ; 2 uses
  %or.cond = icmp ugt i32 %i.am, 255
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = sub nuw nsw i32 %i.ad, %i.ab
  store i32 %i.an, ptr %i.a, align 4, !tbaa !95
  %i.ao = shl i32 %i.e, %i.ab
  store i32 %i.ao, ptr %i.d, align 8, !tbaa !96
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.aq = zext nneg i32 %i.am to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !37
  %i.at = zext i8 %i.as to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.e, %bb.d, %bb.l, %bb.i
  %.1 = phi i32 [ %i.at, %bb.l ], [ -1, %bb.i ], [ -1, %bb.d ], [ -1, %bb.j ], [ %i.v, %bb.e ], [ -1, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @stbi__extend_receive(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !95   ; 2 uses
  %i.c = icmp slt i32 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = icmp slt i32 %i.d, %1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !96   ; 3 uses
  %i.h = tail call i32 @llvm.fshl.i32(i32 %i.g, i32 %i.g, i32 %1) ; 2 uses
  %i.i = sext i32 %1 to i64
  %notmask = shl nsw i32 -1, %1                   ; 2 uses
  %i.j = xor i32 %notmask, -1
  %i.k = and i32 %i.h, %notmask
  store i32 %i.k, ptr %i.f, align 8, !tbaa !96
  %i.l = and i32 %i.h, %i.j
  %i.m = sub nsw i32 %i.d, %1
  store i32 %i.m, ptr %i.a, align 4, !tbaa !95
  %i.n = getelementptr inbounds [4 x i8], ptr @stbi__jbias, i64 %i.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40
  %.inv = icmp slt i32 %i.g, 0
  %i.p = select i1 %.inv, i32 0, i32 %i.o
  %i.q = add i32 %i.p, %i.l
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, -2147483648) i32 @stbi__jpeg_get_bits(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !95   ; 2 uses
  %i.c = icmp slt i32 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = icmp slt i32 %i.d, %1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !96   ; 2 uses
  %i.h = tail call i32 @llvm.fshl.i32(i32 %i.g, i32 %i.g, i32 %1) ; 2 uses
  %notmask = shl nsw i32 -1, %1                   ; 2 uses
  %i.i = xor i32 %notmask, -1
  %i.j = and i32 %i.h, %notmask
  store i32 %i.j, ptr %i.f, align 8, !tbaa !96
  %i.k = and i32 %i.h, %i.i
  %i.l = sub nsw i32 %i.d, %1
  store i32 %i.l, ptr %i.a, align 4, !tbaa !95
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.k, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, -2147483647) i32 @stbi__jpeg_get_bit(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !95   ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr = load i32, ptr %i.a, align 4, !tbaa !95   ; 2 uses
  %i.d = icmp slt i32 %.pr, 1
  br i1 %i.d, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %.pr, %bb.b ], [ %i.b, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !96   ; 2 uses
  %i.h = shl i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !96
  %i.i = add nsw i32 %i.e, -1
  store i32 %i.i, ptr %i.a, align 4, !tbaa !95
  %i.j = and i32 %i.g, -2147483648
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.0 = phi i32 [ %i.j, %.thread ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__jpeg_decode_block(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 20 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !95
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr = load i32, ptr %i.a, align 4, !tbaa !95
  %i.d = icmp slt i32 %.pr, 16
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 12 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !96   ; 5 uses
  %i.g = lshr i32 %i.f, 23
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !37    ; 2 uses
  %.not.i = icmp eq i8 %i.j, -1
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.l = zext i8 %i.j to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !37
  %i.o = zext i8 %i.n to i32                      ; 3 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !95   ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.o
  br i1 %i.q, label %.thread118.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = shl i32 %i.f, %i.o
  store i32 %i.r, ptr %i.e, align 8, !tbaa !96
  %i.s = sub nuw nsw i32 %i.p, %i.o
  store i32 %i.s, ptr %i.a, align 4, !tbaa !95
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  br label %stbi__jpeg_huff_decode.exit

bb.f:                                             ; preds = %.thread
  %i.v = lshr i32 %i.f, 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 10, %bb.f ] ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !40
  %i.z = icmp ult i32 %i.v, %i.y
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.z, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32  ; 5 uses
  %i.ab = icmp eq i64 %indvars.iv.i, 17
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !95  ; 3 uses
  br i1 %i.ab, label %.thread118.sink.split.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp slt i32 %i.ac, %i.aa
  br i1 %i.ad, label %.thread118.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = sub nsw i32 32, %i.aa
  %i.af = lshr i32 %i.f, %i.ae
  %notmask.i = shl nsw i32 -1, %i.aa
  %7 = xor i32 %notmask.i, -1
  %i.ag = and i32 %i.af, %7
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = add i32 %i.aj, %i.ag                    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.ak, 255
  br i1 %or.cond.i, label %.thread118.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = sub nuw nsw i32 %i.ac, %i.aa
  store i32 %i.al, ptr %i.a, align 4, !tbaa !95
  %i.am = shl i32 %i.f, %i.aa
  store i32 %i.am, ptr %i.e, align 8, !tbaa !96
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ao = zext nneg i32 %i.ak to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  br label %stbi__jpeg_huff_decode.exit

stbi__jpeg_huff_decode.exit:                      ; preds = %bb.e, %bb.k
  %.1.i.in.in = phi ptr [ %i.ap, %bb.k ], [ %i.u, %bb.e ]
  %.1.i.in = load i8, ptr %.1.i.in.in, align 1, !tbaa !37 ; 4 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 5 uses
  %or.cond = icmp ugt i8 %.1.i.in, 15
  br i1 %or.cond, label %.thread118.sink.split, label %bb.l

bb.l:                                             ; preds = %stbi__jpeg_huff_decode.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %.not = icmp eq i8 %.1.i.in, 0
  br i1 %.not, label %stbi__extend_receive.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !95  ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %.1.i
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !95
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.as = phi i32 [ %.pre.i, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.at = icmp slt i32 %i.as, %.1.i
  br i1 %i.at, label %stbi__extend_receive.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load i32, ptr %i.e, align 8, !tbaa !96  ; 3 uses
  %i.av = tail call i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 %.1.i) ; 2 uses
  %i.aw = zext nneg i8 %.1.i.in to i64
  %notmask.i82 = shl nsw i32 -1, %.1.i            ; 2 uses
  %i.ax = xor i32 %notmask.i82, -1
  %i.ay = and i32 %i.av, %notmask.i82
  store i32 %i.ay, ptr %i.e, align 8, !tbaa !96
  %i.az = and i32 %i.av, %i.ax
  %i.ba = sub nuw nsw i32 %i.as, %.1.i
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !95
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @stbi__jbias, i64 %i.aw
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !40
  %.inv.i = icmp slt i32 %i.au, 0
  %i.bd = select i1 %.inv.i, i32 0, i32 %i.bc
  %i.be = add i32 %i.bd, %i.az
  br label %stbi__extend_receive.exit

stbi__extend_receive.exit:                        ; preds = %bb.p, %bb.o, %bb.l
  %i.bf = phi i32 [ 0, %bb.l ], [ %i.be, %bb.p ], [ 0, %bb.o ] ; 5 uses
  %i.bg = sext i32 %5 to i64
  %i.bh = getelementptr [96 x i8], ptr %0, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 18104  ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !99 ; 5 uses
  %i.bk = xor i32 %i.bj, %i.bf
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %stbi__addints_valid.exit, label %stbi__addints_valid.exit.thread

stbi__addints_valid.exit:                         ; preds = %stbi__extend_receive.exit
  %i.bm = and i32 %i.bj, %i.bf
  %i.bn = sub nsw i32 2147483647, %i.bf
  %i.bo = icmp sgt i32 %i.bj, %i.bn
  %i.bp = sub nsw i32 -2147483648, %i.bf
  %i.bq = icmp slt i32 %i.bj, %i.bp
  %or.cond.not.i123 = icmp slt i32 %i.bm, 0
  %.0.shrunk.i = select i1 %or.cond.not.i123, i1 %i.bq, i1 %i.bo
  br i1 %.0.shrunk.i, label %.thread118.sink.split, label %stbi__addints_valid.exit.thread

stbi__addints_valid.exit.thread:                  ; preds = %stbi__extend_receive.exit, %stbi__addints_valid.exit
  %i.br = add nsw i32 %i.bj, %i.bf                ; 5 uses
  store i32 %i.br, ptr %i.bi, align 8, !tbaa !99
  %i.bs = load i16, ptr %6, align 2, !tbaa !74    ; 4 uses
  %or.cond.i83 = icmp eq i16 %i.bs, 0
  br i1 %or.cond.i83, label %stbi__mul2shorts_valid.exit.thread, label %bb.q

bb.q:                                             ; preds = %stbi__addints_valid.exit.thread
  %i.bt = icmp sgt i32 %i.br, -1
  br i1 %i.bt, label %stbi__mul2shorts_valid.exit, label %.split

.split:                                           ; preds = %bb.q
  %i.bu = udiv i16 -32768, %i.bs
  %.zext122 = zext i16 %i.bu to i32
  %.neg.i = sub nsw i32 0, %.zext122
  %.not150 = icmp slt i32 %i.br, %.neg.i
  br i1 %.not150, label %.thread118.sink.split, label %stbi__mul2shorts_valid.exit.thread

stbi__mul2shorts_valid.exit:                      ; preds = %bb.q
  %i.bv = udiv i16 32767, %i.bs
  %.zext = zext nneg i16 %i.bv to i32
  %.not151 = icmp samesign ugt i32 %i.br, %.zext
  br i1 %.not151, label %.thread118.sink.split, label %stbi__mul2shorts_valid.exit.thread

stbi__mul2shorts_valid.exit.thread:               ; preds = %.split, %stbi__addints_valid.exit.thread, %stbi__mul2shorts_valid.exit
  %i.bw = trunc i32 %i.br to i16
  %i.bx = mul i16 %i.bs, %i.bw
  store i16 %i.bx, ptr %1, align 2, !tbaa !74
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 1280
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 1024
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 1540
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 1612
  %.pre = load i32, ptr %i.a, align 4, !tbaa !95
  br label %bb.r

bb.r:                                             ; preds = %bb.an, %stbi__mul2shorts_valid.exit.thread
  %i.cc = phi i32 [ %.pre, %stbi__mul2shorts_valid.exit.thread ], [ %i.fl, %bb.an ]
  %.066 = phi i32 [ 1, %stbi__mul2shorts_valid.exit.thread ], [ %.4.ph, %bb.an ] ; 3 uses
  %i.cd = icmp slt i32 %i.cc, 16
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ce = load i32, ptr %i.e, align 8, !tbaa !96  ; 3 uses
  %i.cf = lshr i32 %i.ce, 23
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !74 ; 3 uses
  %.not80 = icmp eq i16 %i.ci, 0
  br i1 %.not80, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %i.ck = and i32 %i.cj, 15                       ; 3 uses
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !95  ; 2 uses
  %i.cm = icmp sgt i32 %i.ck, %i.cl
  br i1 %i.cm, label %.thread118.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = lshr i32 %i.cj, 4
  %i.co = and i32 %i.cn, 15
  %i.cp = add nsw i32 %i.co, %.066                ; 2 uses
  %i.cq = shl i32 %i.ce, %i.ck
  store i32 %i.cq, ptr %i.e, align 8, !tbaa !96
  %i.cr = sub nuw nsw i32 %i.cl, %i.ck            ; 2 uses
  store i32 %i.cr, ptr %i.a, align 4, !tbaa !95
  %i.cs = add nsw i32 %i.cp, 1
  %i.ct = sext i32 %i.cp to i64
  %i.cu = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !37
  %i.cw = ashr i16 %i.ci, 8
  %i.cx = zext i8 %i.cv to i64                    ; 2 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !74
  %i.da = mul i16 %i.cz, %i.cw
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cx
  store i16 %i.da, ptr %i.db, align 2, !tbaa !74
  br label %bb.an

bb.w:                                             ; preds = %bb.t
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !95
  %i.dd = icmp slt i32 %i.dc, 16
  br i1 %i.dd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre124 = load i32, ptr %i.e, align 8, !tbaa !96 ; 2 uses
  %.pre125 = lshr i32 %.pre124, 23
  %.pre126 = zext nneg i32 %.pre125 to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pre-phi127 = phi i64 [ %.pre126, %bb.x ], [ %i.cg, %bb.w ]
  %i.de = phi i32 [ %.pre124, %bb.x ], [ %i.ce, %bb.w ] ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 %.pre-phi127
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !37  ; 2 uses
  %.not.i86 = icmp eq i8 %i.dg, -1
  br i1 %.not.i86, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = zext i8 %i.dg to i64                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !37
  %i.dk = zext i8 %i.dj to i32                    ; 3 uses
  %i.dl = load i32, ptr %i.a, align 4, !tbaa !95  ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.dk
  br i1 %i.dm, label %.thread118.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = shl i32 %i.de, %i.dk
  store i32 %i.dn, ptr %i.e, align 8, !tbaa !96
  %i.do = sub nuw nsw i32 %i.dl, %i.dk            ; 2 uses
  store i32 %i.do, ptr %i.a, align 4, !tbaa !95
  br label %stbi__jpeg_huff_decode.exit91

bb.ab:                                            ; preds = %bb.y
  %i.dp = lshr i32 %i.de, 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i89, %bb.ac ], [ 10, %bb.ab ] ; 5 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i88
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !40
  %i.ds = icmp ult i32 %i.dp, %i.dr
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i88, 1
  br i1 %i.ds, label %bb.ad, label %bb.ac

bb.ad:                                            ; preds = %bb.ac
  %i.dt = trunc nuw nsw i64 %indvars.iv.i88 to i32 ; 5 uses
  %i.du = icmp eq i64 %indvars.iv.i88, 17
  %i.dv = load i32, ptr %i.a, align 4, !tbaa !95  ; 3 uses
  br i1 %i.du, label %.thread118.sink.split.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = icmp slt i32 %i.dv, %i.dt
  br i1 %i.dw, label %.thread118.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dx = sub nsw i32 32, %i.dt
  %i.dy = lshr i32 %i.de, %i.dx
  %notmask.i91 = shl nsw i32 -1, %i.dt
  %8 = xor i32 %notmask.i91, -1
  %i.dz = and i32 %i.dy, %8
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i88
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !40
  %i.ec = add i32 %i.eb, %i.dz                    ; 2 uses
  %or.cond.i90 = icmp ugt i32 %i.ec, 255
  br i1 %or.cond.i90, label %.thread118.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ed = sub nuw nsw i32 %i.dv, %i.dt            ; 2 uses
  store i32 %i.ed, ptr %i.a, align 4, !tbaa !95
  %i.ee = shl i32 %i.de, %i.dt
  store i32 %i.ee, ptr %i.e, align 8, !tbaa !96
  %i.ef = zext nneg i32 %i.ec to i64
  br label %stbi__jpeg_huff_decode.exit91

stbi__jpeg_huff_decode.exit91:                    ; preds = %bb.ag, %bb.aa
  %i.eg = phi i32 [ %i.ed, %bb.ag ], [ %i.do, %bb.aa ] ; 3 uses
  %.pn = phi i64 [ %i.ef, %bb.ag ], [ %i.dh, %bb.aa ]
  %.1.i87.in.in = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.pn
  %.1.i87.in = load i8, ptr %.1.i87.in.in, align 1, !tbaa !37 ; 2 uses
  %.1.i87 = zext i8 %.1.i87.in to i32             ; 2 uses
  %i.eh = and i32 %.1.i87, 15                     ; 7 uses
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %stbi__jpeg_huff_decode.exit91
  %.not81 = icmp eq i8 %.1.i87.in, -16
  br i1 %.not81, label %bb.ai, label %.thread118

bb.ai:                                            ; preds = %bb.ah
  %i.ej = add nsw i32 %.066, 16
  br label %bb.an

bb.aj:                                            ; preds = %stbi__jpeg_huff_decode.exit91
  %i.ek = lshr i32 %.1.i87, 4
  %i.el = add nsw i32 %i.ek, %.066                ; 2 uses
  %i.em = add nsw i32 %i.el, 1
  %i.en = sext i32 %i.el to i64
  %i.eo = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !37
  %i.eq = icmp slt i32 %i.eg, %i.eh
  br i1 %i.eq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i94 = load i32, ptr %i.a, align 4, !tbaa !95
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.er = phi i32 [ %.pre.i94, %bb.ak ], [ %i.eg, %bb.aj ] ; 3 uses
  %i.es = icmp slt i32 %i.er, %i.eh
  br i1 %i.es, label %stbi__extend_receive.exit95, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.et = load i32, ptr %i.e, align 8, !tbaa !96  ; 3 uses
  %i.eu = tail call i32 @llvm.fshl.i32(i32 %i.et, i32 %i.et, i32 %i.eh) ; 2 uses
  %i.ev = zext nneg i32 %i.eh to i64
  %notmask.i94 = shl nsw i32 -1, %i.eh            ; 2 uses
  %i.ew = xor i32 %notmask.i94, -1
  %i.ex = and i32 %i.eu, %notmask.i94
  store i32 %i.ex, ptr %i.e, align 8, !tbaa !96
  %i.ey = and i32 %i.eu, %i.ew
  %i.ez = sub nuw nsw i32 %i.er, %i.eh            ; 2 uses
  store i32 %i.ez, ptr %i.a, align 4, !tbaa !95
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr @stbi__jbias, i64 %i.ev
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !40
  %.inv.i92 = icmp slt i32 %i.et, 0
  %i.fc = select i1 %.inv.i92, i32 0, i32 %i.fb
  %i.fd = add i32 %i.fc, %i.ey
  %i.fe = trunc i32 %i.fd to i16
  br label %stbi__extend_receive.exit95

stbi__extend_receive.exit95:                      ; preds = %bb.al, %bb.am
  %i.ff = phi i32 [ %i.ez, %bb.am ], [ %i.er, %bb.al ]
  %.0.i93 = phi i16 [ %i.fe, %bb.am ], [ 0, %bb.al ]
  %i.fg = zext i8 %i.ep to i64                    ; 2 uses
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !74
  %i.fj = mul i16 %i.fi, %.0.i93
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fg
  store i16 %i.fj, ptr %i.fk, align 2, !tbaa !74
  br label %bb.an

bb.an:                                            ; preds = %bb.v, %stbi__extend_receive.exit95, %bb.ai
  %i.fl = phi i32 [ %i.eg, %bb.ai ], [ %i.ff, %stbi__extend_receive.exit95 ], [ %i.cr, %bb.v ]
  %.4.ph = phi i32 [ %i.ej, %bb.ai ], [ %i.em, %stbi__extend_receive.exit95 ], [ %i.cs, %bb.v ] ; 2 uses
  %i.fm = icmp slt i32 %.4.ph, 64
  br i1 %i.fm, label %bb.r, label %.thread118, !llvm.loop !304

.thread118.sink.split.sink.split:                 ; preds = %bb.ad, %bb.h
  %.lcssa.sink = phi i32 [ %i.ac, %bb.h ], [ %i.dv, %bb.ad ]
  %i.fn = add nsw i32 %.lcssa.sink, -16
  store i32 %i.fn, ptr %i.a, align 4, !tbaa !95
  br label %.thread118.sink.split

.thread118.sink.split:                            ; preds = %bb.af, %bb.ae, %bb.z, %bb.u, %.thread118.sink.split.sink.split, %stbi__mul2shorts_valid.exit, %.split, %stbi__addints_valid.exit, %stbi__jpeg_huff_decode.exit, %bb.d, %bb.i, %bb.j
  %.str.7.sink = phi ptr [ @.str.9, %.split ], [ @.str.9, %stbi__mul2shorts_valid.exit ], [ @.str.8, %stbi__addints_valid.exit ], [ @.str.7, %stbi__jpeg_huff_decode.exit ], [ @.str.7, %bb.j ], [ @.str.7, %bb.i ], [ @.str.7, %bb.d ], [ @.str.7, %.thread118.sink.split.sink.split ], [ @.str.7, %bb.u ], [ @.str.7, %bb.z ], [ @.str.7, %bb.ae ], [ @.str.7, %bb.af ]
  %i.fo = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr %.str.7.sink, ptr %i.fo, align 8, !tbaa !39
  br label %.thread118

.thread118:                                       ; preds = %bb.an, %bb.ah, %.thread118.sink.split
  %.472 = phi i32 [ 0, %.thread118.sink.split ], [ 1, %bb.ah ], [ 1, %bb.an ]
  ret i32 %.472
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__jpeg_decode_block_prog_dc(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.9, ptr %i.c, align 8, !tbaa !39
  br label %stbi__jpeg_get_bit.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 12 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !95
  %i.f = icmp slt i32 %i.e, 16
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18492
  %i.h = load i32, ptr %i.g, align 4, !tbaa !101
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %i.j = load i32, ptr %i.d, align 4, !tbaa !95
  %i.k = icmp slt i32 %i.j, 16
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !96   ; 5 uses
  %i.n = lshr i32 %i.m, 23
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !37    ; 2 uses
  %.not.i = icmp eq i8 %i.q, -1
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.s = zext i8 %i.q to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !37
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !95   ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.v
  br i1 %i.x, label %stbi__jpeg_huff_decode.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = shl i32 %i.m, %i.v
  store i32 %i.y, ptr %i.l, align 8, !tbaa !96
  %i.z = sub nuw nsw i32 %i.w, %i.v               ; 2 uses
  store i32 %i.z, ptr %i.d, align 4, !tbaa !95
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  br label %stbi__jpeg_huff_decode.exit

bb.k:                                             ; preds = %bb.h
  %i.ac = lshr i32 %i.m, 16
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 10, %bb.k ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !40
  %i.ag = icmp ult i32 %i.ac, %i.af
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ag, label %bb.m, label %bb.l

bb.m:                                             ; preds = %bb.l
  %i.ah = trunc nuw nsw i64 %indvars.iv.i to i32  ; 5 uses
  %i.ai = icmp eq i64 %indvars.iv.i, 17
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !95  ; 3 uses
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = add nsw i32 %i.aj, -16
  store i32 %i.ak, ptr %i.d, align 4, !tbaa !95
  br label %stbi__jpeg_huff_decode.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.al = icmp slt i32 %i.aj, %i.ah
  br i1 %i.al, label %stbi__jpeg_huff_decode.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = sub nsw i32 32, %i.ah
  %i.an = lshr i32 %i.m, %i.am
  %notmask.i = shl nsw i32 -1, %i.ah
  %4 = xor i32 %notmask.i, -1
  %i.ao = and i32 %i.an, %4
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !40
  %i.as = add i32 %i.ar, %i.ao                    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.as, 255
  br i1 %or.cond.i, label %stbi__jpeg_huff_decode.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = sub nuw nsw i32 %i.aj, %i.ah            ; 2 uses
  store i32 %i.at, ptr %i.d, align 4, !tbaa !95
  %i.au = shl i32 %i.m, %i.ah
  store i32 %i.au, ptr %i.l, align 8, !tbaa !96
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.aw = zext nneg i32 %i.as to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  br label %stbi__jpeg_huff_decode.exit

stbi__jpeg_huff_decode.exit:                      ; preds = %bb.j, %bb.q
  %i.ay = phi i32 [ %i.at, %bb.q ], [ %i.z, %bb.j ] ; 2 uses
  %.1.i.in.in = phi ptr [ %i.ax, %bb.q ], [ %i.ab, %bb.j ]
  %.1.i.in = load i8, ptr %.1.i.in.in, align 1, !tbaa !37 ; 4 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 5 uses
  %or.cond = icmp ugt i8 %.1.i.in, 15
  br i1 %or.cond, label %stbi__jpeg_huff_decode.exit.thread, label %bb.r

stbi__jpeg_huff_decode.exit.thread:               ; preds = %bb.p, %bb.o, %bb.i, %bb.n, %stbi__jpeg_huff_decode.exit
  %i.az = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.9, ptr %i.az, align 8, !tbaa !39
  br label %stbi__jpeg_get_bit.exit.thread

bb.r:                                             ; preds = %stbi__jpeg_huff_decode.exit
  %.not32 = icmp eq i8 %.1.i.in, 0
  br i1 %.not32, label %stbi__extend_receive.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = icmp slt i32 %i.ay, %.1.i
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !95
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = phi i32 [ %.pre.i, %bb.t ], [ %i.ay, %bb.s ] ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %.1.i
  br i1 %i.bc, label %stbi__extend_receive.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = load i32, ptr %i.l, align 8, !tbaa !96  ; 3 uses
  %i.be = tail call i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.bd, i32 %.1.i) ; 2 uses
  %i.bf = zext nneg i8 %.1.i.in to i64
  %notmask.i35 = shl nsw i32 -1, %.1.i            ; 2 uses
  %i.bg = xor i32 %notmask.i35, -1
  %i.bh = and i32 %i.be, %notmask.i35
  store i32 %i.bh, ptr %i.l, align 8, !tbaa !96
  %i.bi = and i32 %i.be, %i.bg
  %i.bj = sub nuw nsw i32 %i.bb, %.1.i
  store i32 %i.bj, ptr %i.d, align 4, !tbaa !95
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @stbi__jbias, i64 %i.bf
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !40
  %.inv.i = icmp slt i32 %i.bd, 0
  %i.bm = select i1 %.inv.i, i32 0, i32 %i.bl
  %i.bn = add i32 %i.bm, %i.bi
  br label %stbi__extend_receive.exit

stbi__extend_receive.exit:                        ; preds = %bb.v, %bb.u, %bb.r
  %i.bo = phi i32 [ 0, %bb.r ], [ %i.bn, %bb.v ], [ 0, %bb.u ] ; 5 uses
  %i.bp = sext i32 %3 to i64
  %i.bq = getelementptr [96 x i8], ptr %0, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 18104  ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !99 ; 5 uses
  %i.bt = xor i32 %i.bs, %i.bo
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %stbi__addints_valid.exit, label %stbi__addints_valid.exit.thread

stbi__addints_valid.exit:                         ; preds = %stbi__extend_receive.exit
  %i.bv = and i32 %i.bs, %i.bo
  %i.bw = sub nsw i32 2147483647, %i.bo
  %i.bx = icmp sgt i32 %i.bs, %i.bw
  %i.by = sub nsw i32 -2147483648, %i.bo
  %i.bz = icmp slt i32 %i.bs, %i.by
  %or.cond.not.i50 = icmp slt i32 %i.bv, 0
  %.0.shrunk.i = select i1 %or.cond.not.i50, i1 %i.bz, i1 %i.bx
  br i1 %.0.shrunk.i, label %bb.w, label %stbi__addints_valid.exit.thread

bb.w:                                             ; preds = %stbi__addints_valid.exit
  %i.ca = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.ca, align 8, !tbaa !39
  br label %stbi__jpeg_get_bit.exit.thread

stbi__addints_valid.exit.thread:                  ; preds = %stbi__extend_receive.exit, %stbi__addints_valid.exit
  %i.cb = add nsw i32 %i.bs, %i.bo                ; 6 uses
  store i32 %i.cb, ptr %i.br, align 8, !tbaa !99
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !102 ; 5 uses
  %i.ce = shl nuw i32 1, %i.cd
  %i.cf = xor i32 %i.ce, %i.cb
  %i.cg = icmp sgt i32 %i.cf, -1
  br i1 %i.cg, label %stbi__mul2shorts_valid.exit, label %bb.x

bb.x:                                             ; preds = %stbi__addints_valid.exit.thread
  %i.ch = icmp eq i32 %i.cd, 31
  br i1 %i.ch, label %.split61, label %.split

.split61:                                         ; preds = %bb.x
  %i.ci = icmp slt i32 %i.cb, 1
  br i1 %i.ci, label %stbi__mul2shorts_valid.exit.thread, label %bb.y

.split:                                           ; preds = %bb.x
  %i.cj = lshr i32 32768, %i.cd
  %.neg.i = sub nsw i32 0, %i.cj
  %.not62 = icmp slt i32 %i.cb, %.neg.i
  br i1 %.not62, label %bb.y, label %stbi__mul2shorts_valid.exit.thread

stbi__mul2shorts_valid.exit:                      ; preds = %stbi__addints_valid.exit.thread
  %i.ck = lshr i32 32767, %i.cd
  %.not63 = icmp sgt i32 %i.cb, %i.ck
  br i1 %.not63, label %bb.y, label %stbi__mul2shorts_valid.exit.thread

bb.y:                                             ; preds = %.split61, %.split, %stbi__mul2shorts_valid.exit
  %i.cl = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.9, ptr %i.cl, align 8, !tbaa !39
  br label %stbi__jpeg_get_bit.exit.thread

stbi__mul2shorts_valid.exit.thread:               ; preds = %.split61, %.split, %stbi__mul2shorts_valid.exit
  %i.cm = shl i32 %i.cb, %i.cd
  %i.cn = trunc i32 %i.cm to i16
  store i16 %i.cn, ptr %1, align 2, !tbaa !74
  br label %stbi__jpeg_get_bit.exit.thread

bb.z:                                             ; preds = %bb.e
  %i.co = load i32, ptr %i.d, align 4, !tbaa !95  ; 2 uses
  %i.cp = icmp slt i32 %i.co, 1
  br i1 %i.cp, label %bb.aa, label %stbi__jpeg_get_bit.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr.i = load i32, ptr %i.d, align 4, !tbaa !95 ; 2 uses
  %i.cq = icmp slt i32 %.pr.i, 1
  br i1 %i.cq, label %stbi__jpeg_get_bit.exit.thread, label %stbi__jpeg_get_bit.exit

stbi__jpeg_get_bit.exit:                          ; preds = %bb.z, %bb.aa
  %i.cr = phi i32 [ %.pr.i, %bb.aa ], [ %i.co, %bb.z ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !96 ; 2 uses
  %i.cu = shl i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !96
  %i.cv = add nsw i32 %i.cr, -1
  store i32 %i.cv, ptr %i.d, align 4, !tbaa !95
  %.not31 = icmp sgt i32 %i.ct, -1
  br i1 %.not31, label %stbi__jpeg_get_bit.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %stbi__jpeg_get_bit.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !102
  %i.cy = shl nuw i32 1, %i.cx
  %i.cz = load i16, ptr %1, align 2, !tbaa !74
  %i.da = trunc i32 %i.cy to i16
  %i.db = add i16 %i.cz, %i.da
  store i16 %i.db, ptr %1, align 2, !tbaa !74
  br label %stbi__jpeg_get_bit.exit.thread

stbi__jpeg_get_bit.exit.thread:                   ; preds = %bb.aa, %stbi__mul2shorts_valid.exit.thread, %bb.ab, %stbi__jpeg_get_bit.exit, %bb.y, %bb.w, %stbi__jpeg_huff_decode.exit.thread, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %stbi__jpeg_huff_decode.exit.thread ], [ 0, %bb.w ], [ 0, %bb.y ], [ 1, %stbi__jpeg_get_bit.exit ], [ 1, %bb.ab ], [ 1, %stbi__mul2shorts_valid.exit.thread ], [ 1, %bb.aa ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__jpeg_decode_block_prog_ac(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18484
  %i.b = load i32, ptr %i.a, align 4, !tbaa !103  ; 5 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.9, ptr %i.d, align 8, !tbaa !39
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18492
  %i.f = load i32, ptr %i.e, align 4, !tbaa !101
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.i = load i32, ptr %i.h, align 8, !tbaa !102  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18500 ; 9 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !104  ; 3 uses
  %.not166 = icmp eq i32 %i.k, 0                  ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.ak

bb.d:                                             ; preds = %bb.c
  br i1 %.not166, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 1540
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %.pre267 = load i32, ptr %i.l, align 4, !tbaa !95
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.k, -1
  store i32 %i.s, ptr %i.j, align 4, !tbaa !104
  br label %.critedge

bb.f:                                             ; preds = %.preheader, %bb.aj
  %i.t = phi i32 [ %i.dr, %bb.aj ], [ %.pre267, %.preheader ]
  %.0120 = phi i32 [ %.4124.ph, %bb.aj ], [ %i.b, %.preheader ] ; 3 uses
  %i.u = icmp slt i32 %i.t, 16
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = load i32, ptr %i.m, align 8, !tbaa !96   ; 3 uses
  %i.w = lshr i32 %i.v, 23
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !74   ; 2 uses
  %i.aa = sext i16 %i.z to i32                    ; 3 uses
  %.not167 = icmp eq i16 %i.z, 0
  br i1 %.not167, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = and i32 %i.aa, 15                       ; 3 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !95  ; 2 uses
  %i.ad = icmp sgt i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.ae, align 8, !tbaa !39
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.af = lshr i32 %i.aa, 4
  %i.ag = and i32 %i.af, 15
  %i.ah = add nsw i32 %i.ag, %.0120               ; 2 uses
  %i.ai = shl i32 %i.v, %i.ab
  store i32 %i.ai, ptr %i.m, align 8, !tbaa !96
  %i.aj = sub nuw nsw i32 %i.ac, %i.ab            ; 2 uses
  store i32 %i.aj, ptr %i.l, align 4, !tbaa !95
  %i.ak = add nsw i32 %i.ah, 1
  %i.al = sext i32 %i.ah to i64
  %i.am = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !37
  %i.ao = lshr i32 %i.aa, 8
  %i.ap = shl i32 %i.ao, %i.i
  %i.aq = trunc i32 %i.ap to i16
  %i.ar = zext i8 %i.an to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ar
  store i16 %i.aq, ptr %i.as, align 2, !tbaa !74
  br label %bb.aj

bb.l:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.l, align 4, !tbaa !95
  %i.au = icmp slt i32 %i.at, 16
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre268 = load i32, ptr %i.m, align 8, !tbaa !96 ; 2 uses
  %.pre269 = lshr i32 %.pre268, 23
  %.pre270.a = zext nneg i32 %.pre269 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi271 = phi i64 [ %.pre270.a, %bb.m ], [ %i.x, %bb.l ]
  %i.av = phi i32 [ %.pre268, %bb.m ], [ %i.v, %bb.l ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %.pre-phi271
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !37  ; 2 uses
  %.not.i = icmp eq i8 %i.ax, -1
  br i1 %.not.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = zext i8 %i.ax to i64                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !37
  %i.bb = zext i8 %i.ba to i32                    ; 3 uses
  %i.bc = load i32, ptr %i.l, align 4, !tbaa !95  ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.bb
  br i1 %i.bd, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = shl i32 %i.av, %i.bb
  store i32 %i.be, ptr %i.m, align 8, !tbaa !96
  %i.bf = sub nuw nsw i32 %i.bc, %i.bb            ; 2 uses
  store i32 %i.bf, ptr %i.l, align 4, !tbaa !95
  br label %stbi__jpeg_huff_decode.exit

bb.q:                                             ; preds = %bb.n
  %i.bg = lshr i32 %i.av, 16
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.r ], [ 10, %bb.q ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !40
  %i.bj = icmp ult i32 %i.bg, %i.bi
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.bj, label %bb.s, label %bb.r

bb.s:                                             ; preds = %bb.r
  %i.bk = trunc nuw nsw i64 %indvars.iv.i to i32  ; 5 uses
  %i.bl = icmp eq i64 %indvars.iv.i, 17
  %i.bm = load i32, ptr %i.l, align 4, !tbaa !95  ; 3 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = add nsw i32 %i.bm, -16
  store i32 %i.bn, ptr %i.l, align 4, !tbaa !95
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %i.bo = icmp slt i32 %i.bm, %i.bk
  br i1 %i.bo, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = sub nsw i32 32, %i.bk
  %i.bq = lshr i32 %i.av, %i.bp
  %notmask.i = shl nsw i32 -1, %i.bk
  %4 = xor i32 %notmask.i, -1
  %i.br = and i32 %i.bq, %4
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !40
  %i.bu = add i32 %i.bt, %i.br                    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.bu, 255
  br i1 %or.cond.i, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = sub nuw nsw i32 %i.bm, %i.bk            ; 2 uses
  store i32 %i.bv, ptr %i.l, align 4, !tbaa !95
  %i.bw = shl i32 %i.av, %i.bk
  store i32 %i.bw, ptr %i.m, align 8, !tbaa !96
  %i.bx = zext nneg i32 %i.bu to i64
  br label %stbi__jpeg_huff_decode.exit

.loopexit:                                        ; preds = %bb.o, %bb.u, %bb.v, %bb.t
  %i.by = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.by, align 8, !tbaa !39
  br label %.critedge

stbi__jpeg_huff_decode.exit:                      ; preds = %bb.w, %bb.p
  %i.bz = phi i32 [ %i.bv, %bb.w ], [ %i.bf, %bb.p ] ; 5 uses
  %.pn308 = phi i64 [ %i.bx, %bb.w ], [ %i.ay, %bb.p ]
  %.1.i.in.in = getelementptr inbounds nuw i8, ptr %i.o, i64 %.pn308
  %.1.i.in = load i8, ptr %.1.i.in.in, align 1, !tbaa !37 ; 2 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 2 uses
  %i.ca = and i32 %.1.i, 15                       ; 7 uses
  %i.cb = lshr i32 %.1.i, 4                       ; 8 uses
  %i.cc = icmp eq i32 %i.ca, 0
  br i1 %i.cc, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %stbi__jpeg_huff_decode.exit
  %i.cd = icmp ult i8 %.1.i.in, -16
  br i1 %i.cd, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.ce = shl nuw nsw i32 1, %i.cb
  store i32 %i.ce, ptr %i.j, align 4, !tbaa !104
  %.not168 = icmp eq i32 %i.cb, 0
  br i1 %.not168, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = icmp slt i32 %i.bz, %i.cb
  br i1 %i.cf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.l, align 4, !tbaa !95
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cg = phi i32 [ %.pre.i, %bb.aa ], [ %i.bz, %bb.z ] ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %i.cb
  br i1 %i.ch, label %stbi__jpeg_get_bits.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = load i32, ptr %i.m, align 8, !tbaa !96  ; 2 uses
  %i.cj = tail call i32 @llvm.fshl.i32(i32 %i.ci, i32 %i.ci, i32 %i.cb) ; 2 uses
  %notmask.i171 = shl nsw i32 -1, %i.cb           ; 2 uses
  %i.ck = xor i32 %notmask.i171, -1
  %i.cl = and i32 %i.cj, %notmask.i171
  store i32 %i.cl, ptr %i.m, align 8, !tbaa !96
  %i.cm = and i32 %i.cj, %i.ck
  %i.cn = sub nuw nsw i32 %i.cg, %i.cb
  store i32 %i.cn, ptr %i.l, align 4, !tbaa !95
  br label %stbi__jpeg_get_bits.exit

stbi__jpeg_get_bits.exit:                         ; preds = %bb.ab, %bb.ac
  %.0.i = phi i32 [ %i.cm, %bb.ac ], [ 0, %bb.ab ]
  %i.co = load i32, ptr %i.j, align 4, !tbaa !104
  %i.cp = add nsw i32 %i.co, %.0.i
  %i.cq = add nsw i32 %i.cp, -1
  br label %bb.ai

bb.ad:                                            ; preds = %bb.x
  %i.cr = add nsw i32 %.0120, 16
  br label %bb.aj

bb.ae:                                            ; preds = %stbi__jpeg_huff_decode.exit
  %i.cs = add nsw i32 %i.cb, %.0120               ; 2 uses
  %i.ct = add nsw i32 %i.cs, 1
  %i.cu = sext i32 %i.cs to i64
  %i.cv = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !37
  %i.cx = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i172 = load i32, ptr %i.l, align 4, !tbaa !95
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cy = phi i32 [ %.pre.i172, %bb.af ], [ %i.bz, %bb.ae ] ; 3 uses
  %i.cz = icmp slt i32 %i.cy, %i.ca
  br i1 %i.cz, label %stbi__extend_receive.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.da = load i32, ptr %i.m, align 8, !tbaa !96  ; 3 uses
  %i.db = tail call i32 @llvm.fshl.i32(i32 %i.da, i32 %i.da, i32 %i.ca) ; 2 uses
  %i.dc = zext nneg i32 %i.ca to i64
  %notmask.i172 = shl nsw i32 -1, %i.ca           ; 2 uses
  %i.dd = xor i32 %notmask.i172, -1
  %i.de = and i32 %i.db, %notmask.i172
  store i32 %i.de, ptr %i.m, align 8, !tbaa !96
  %i.df = and i32 %i.db, %i.dd
  %i.dg = sub nuw nsw i32 %i.cy, %i.ca            ; 2 uses
  store i32 %i.dg, ptr %i.l, align 4, !tbaa !95
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @stbi__jbias, i64 %i.dc
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !40
  %.inv.i = icmp slt i32 %i.da, 0
  %i.dj = select i1 %.inv.i, i32 0, i32 %i.di
  %i.dk = add i32 %i.dj, %i.df
  br label %stbi__extend_receive.exit

stbi__extend_receive.exit:                        ; preds = %bb.ag, %bb.ah
  %i.dl = phi i32 [ %i.dg, %bb.ah ], [ %i.cy, %bb.ag ]
  %.0.i171 = phi i32 [ %i.dk, %bb.ah ], [ 0, %bb.ag ]
  %i.dm = shl i32 %.0.i171, %i.i
  %i.dn = trunc i32 %i.dm to i16
  %i.do = zext i8 %i.cw to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.do
  store i16 %i.dn, ptr %i.dp, align 2, !tbaa !74
  br label %bb.aj

bb.ai:                                            ; preds = %bb.y, %stbi__jpeg_get_bits.exit
  %i.dq = phi i32 [ 0, %bb.y ], [ %i.cq, %stbi__jpeg_get_bits.exit ]
  store i32 %i.dq, ptr %i.j, align 4, !tbaa !104
  br label %.critedge

bb.aj:                                            ; preds = %bb.k, %stbi__extend_receive.exit, %bb.ad
  %i.dr = phi i32 [ %i.bz, %bb.ad ], [ %i.dl, %stbi__extend_receive.exit ], [ %i.aj, %bb.k ]
  %.4124.ph = phi i32 [ %i.cr, %bb.ad ], [ %i.ct, %stbi__extend_receive.exit ], [ %i.ak, %bb.k ] ; 2 uses
  %i.ds = load i32, ptr %i.r, align 8, !tbaa !100
  %.not169 = icmp sgt i32 %.4124.ph, %i.ds
  br i1 %.not169, label %.critedge, label %bb.f, !llvm.loop !305

bb.ak:                                            ; preds = %bb.c
  br i1 %.not166, label %.preheader223, label %bb.al

.preheader223:                                    ; preds = %bb.ak
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 12 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 1540
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %sext155 = shl i32 65536, %i.i
  %i.dz = ashr exact i32 %sext155, 16             ; 4 uses
  %i.ea = sub nsw i32 0, %i.dz                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 18488 ; 2 uses
  %i.ec = trunc nsw i32 %i.dz to i16              ; 2 uses
  %.pre = load i32, ptr %i.dt, align 4, !tbaa !95
  br label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.ed = add nsw i32 %i.k, -1
  store i32 %i.ed, ptr %i.j, align 4, !tbaa !104
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 18488 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !100
  %.not162248 = icmp sgt i32 %i.b, %i.ef
  br i1 %.not162248, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.al
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %sext165 = shl i32 65536, %i.i
  %i.ei = ashr exact i32 %sext165, 16             ; 2 uses
  %i.ej = trunc nsw i32 %i.ei to i16              ; 2 uses
  %i.ek = sext i32 %i.b to i64
  %i.el = sub i16 0, %i.ej
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph, %stbi__jpeg_get_bit.exit.thread
  %indvars.iv = phi i64 [ %i.ek, %.lr.ph ], [ %indvars.iv.next, %stbi__jpeg_get_bit.exit.thread ] ; 3 uses
  %i.em = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %indvars.iv
  %i.en = load i8, ptr %i.em, align 1, !tbaa !37
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.eo ; 3 uses
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !74
  %.not163 = icmp eq i16 %i.eq, 0
  br i1 %.not163, label %stbi__jpeg_get_bit.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.er = load i32, ptr %i.eg, align 4, !tbaa !95 ; 2 uses
  %i.es = icmp slt i32 %i.er, 1
  br i1 %i.es, label %bb.ao, label %stbi__jpeg_get_bit.exit

bb.ao:                                            ; preds = %bb.an
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr.i = load i32, ptr %i.eg, align 4, !tbaa !95 ; 2 uses
  %i.et = icmp slt i32 %.pr.i, 1
  br i1 %i.et, label %stbi__jpeg_get_bit.exit.thread, label %stbi__jpeg_get_bit.exit

stbi__jpeg_get_bit.exit:                          ; preds = %bb.an, %bb.ao
  %i.eu = phi i32 [ %.pr.i, %bb.ao ], [ %i.er, %bb.an ]
  %i.ev = load i32, ptr %i.eh, align 8, !tbaa !96 ; 2 uses
  %i.ew = shl i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eh, align 8, !tbaa !96
  %i.ex = add nsw i32 %i.eu, -1
  store i32 %i.ex, ptr %i.eg, align 4, !tbaa !95
  %.not164 = icmp sgt i32 %i.ev, -1
  br i1 %.not164, label %stbi__jpeg_get_bit.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %stbi__jpeg_get_bit.exit
  %i.ey = load i16, ptr %i.ep, align 2, !tbaa !74 ; 3 uses
  %i.ez = sext i16 %i.ey to i32
  %i.fa = and i32 %i.ei, %i.ez
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %stbi__jpeg_get_bit.exit.thread.sink.split, label %stbi__jpeg_get_bit.exit.thread

stbi__jpeg_get_bit.exit.thread.sink.split:        ; preds = %bb.ap
  %i.fc = icmp sgt i16 %i.ey, 0
  %.sink.p = select i1 %i.fc, i16 %i.ej, i16 %i.el
  %.sink = add i16 %i.ey, %.sink.p
  store i16 %.sink, ptr %i.ep, align 2, !tbaa !74
  br label %stbi__jpeg_get_bit.exit.thread

stbi__jpeg_get_bit.exit.thread:                   ; preds = %stbi__jpeg_get_bit.exit.thread.sink.split, %bb.ao, %stbi__jpeg_get_bit.exit, %bb.ap, %bb.am
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.fd = load i32, ptr %i.ee, align 8, !tbaa !100
  %i.fe = sext i32 %i.fd to i64
  %.not162.not = icmp slt i64 %indvars.iv, %i.fe
  br i1 %.not162.not, label %bb.am, label %.critedge, !llvm.loop !306

bb.aq:                                            ; preds = %.preheader223, %.loopexit222
  %i.ff = phi i32 [ %i.ir, %.loopexit222 ], [ %.pre, %.preheader223 ]
  %.6 = phi i32 [ %.9, %.loopexit222 ], [ %i.b, %.preheader223 ] ; 3 uses
  %i.fg = icmp slt i32 %i.ff, 16
  br i1 %i.fg, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fh = load i32, ptr %i.du, align 8, !tbaa !96 ; 5 uses
  %i.fi = lshr i32 %i.fh, 23
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !37  ; 2 uses
  %.not.i174 = icmp eq i8 %i.fl, -1
  br i1 %.not.i174, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fm = zext i8 %i.fl to i64                    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !37
  %i.fp = zext i8 %i.fo to i32                    ; 3 uses
  %i.fq = load i32, ptr %i.dt, align 4, !tbaa !95 ; 2 uses
  %i.fr = icmp slt i32 %i.fq, %i.fp
  br i1 %i.fr, label %.loopexit224, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fs = shl i32 %i.fh, %i.fp                    ; 2 uses
  store i32 %i.fs, ptr %i.du, align 8, !tbaa !96
  %i.ft = sub nuw nsw i32 %i.fq, %i.fp            ; 2 uses
  store i32 %i.ft, ptr %i.dt, align 4, !tbaa !95
  br label %stbi__jpeg_huff_decode.exit179

bb.av:                                            ; preds = %bb.as
  %i.fu = lshr i32 %i.fh, 16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %indvars.iv.i176 = phi i64 [ %indvars.iv.next.i177, %bb.aw ], [ 10, %bb.av ] ; 5 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i176
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !40
  %i.fx = icmp ult i32 %i.fu, %i.fw
  %indvars.iv.next.i177 = add nuw nsw i64 %indvars.iv.i176, 1
  br i1 %i.fx, label %bb.ax, label %bb.aw

bb.ax:                                            ; preds = %bb.aw
  %i.fy = trunc nuw nsw i64 %indvars.iv.i176 to i32 ; 5 uses
  %i.fz = icmp eq i64 %indvars.iv.i176, 17
  %i.ga = load i32, ptr %i.dt, align 4, !tbaa !95 ; 3 uses
  br i1 %i.fz, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gb = add nsw i32 %i.ga, -16
  store i32 %i.gb, ptr %i.dt, align 4, !tbaa !95
  br label %.loopexit224

bb.az:                                            ; preds = %bb.ax
  %i.gc = icmp slt i32 %i.ga, %i.fy
  br i1 %i.gc, label %.loopexit224, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gd = sub nsw i32 32, %i.fy
  %i.ge = lshr i32 %i.fh, %i.gd
  %notmask.i180 = shl nsw i32 -1, %i.fy
  %5 = xor i32 %notmask.i180, -1
  %i.gf = and i32 %i.ge, %5
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.i176
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !40
  %i.gi = add i32 %i.gh, %i.gf                    ; 2 uses
  %or.cond.i178 = icmp ugt i32 %i.gi, 255
  br i1 %or.cond.i178, label %.loopexit224, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gj = sub nuw nsw i32 %i.ga, %i.fy            ; 2 uses
  store i32 %i.gj, ptr %i.dt, align 4, !tbaa !95
  %i.gk = shl i32 %i.fh, %i.fy                    ; 2 uses
  store i32 %i.gk, ptr %i.du, align 8, !tbaa !96
  %i.gl = zext nneg i32 %i.gi to i64
  br label %stbi__jpeg_huff_decode.exit179

.loopexit224:                                     ; preds = %bb.at, %bb.az, %bb.ba, %bb.ay
  %i.gm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.gm, align 8, !tbaa !39
  br label %.critedge

stbi__jpeg_huff_decode.exit179:                   ; preds = %bb.bb, %bb.au
  %i.gn = phi i32 [ %i.gk, %bb.bb ], [ %i.fs, %bb.au ]
  %i.go = phi i32 [ %i.gj, %bb.bb ], [ %i.ft, %bb.au ] ; 6 uses
  %.pn = phi i64 [ %i.gl, %bb.bb ], [ %i.fm, %bb.au ]
  %.1.i175.in.in = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.pn
  %.1.i175.in = load i8, ptr %.1.i175.in.in, align 1, !tbaa !37 ; 2 uses
  %.1.i175 = zext i8 %.1.i175.in to i32           ; 2 uses
  %i.gp = and i32 %.1.i175, 15
  %i.gq = lshr i32 %.1.i175, 4                    ; 9 uses
  switch i32 %i.gp, label %bb.bi [
    i32 0, label %bb.bc
    i32 1, label %bb.bj
  ]

bb.bc:                                            ; preds = %stbi__jpeg_huff_decode.exit179
  %i.gr = icmp ult i8 %.1.i175.in, -16
  br i1 %i.gr, label %bb.bd, label %stbi__jpeg_get_bit.exit186.thread

bb.bd:                                            ; preds = %bb.bc
  %notmask = shl nsw i32 -1, %i.gq                ; 2 uses
  %i.gs = xor i32 %notmask, -1                    ; 2 uses
  store i32 %i.gs, ptr %i.j, align 4, !tbaa !104
  %.not156 = icmp eq i32 %i.gq, 0
  br i1 %.not156, label %stbi__jpeg_get_bit.exit186.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gt = icmp slt i32 %i.go, %i.gq
  br i1 %i.gt, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i181 = load i32, ptr %i.dt, align 4, !tbaa !95
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.gu = phi i32 [ %.pre.i181, %bb.bf ], [ %i.go, %bb.be ] ; 3 uses
  %i.gv = icmp slt i32 %i.gu, %i.gq
  br i1 %i.gv, label %stbi__jpeg_get_bits.exit182, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gw = load i32, ptr %i.du, align 8, !tbaa !96 ; 2 uses
  %i.gx = tail call i32 @llvm.fshl.i32(i32 %i.gw, i32 %i.gw, i32 %i.gq) ; 2 uses
  %i.gy = and i32 %i.gx, %notmask
  store i32 %i.gy, ptr %i.du, align 8, !tbaa !96
  %i.gz = and i32 %i.gx, %i.gs
  %i.ha = sub nuw nsw i32 %i.gu, %i.gq            ; 2 uses
  store i32 %i.ha, ptr %i.dt, align 4, !tbaa !95
  br label %stbi__jpeg_get_bits.exit182

stbi__jpeg_get_bits.exit182:                      ; preds = %bb.bg, %bb.bh
  %i.hb = phi i32 [ %i.ha, %bb.bh ], [ %i.gu, %bb.bg ]
  %.0.i180 = phi i32 [ %i.gz, %bb.bh ], [ 0, %bb.bg ]
  %i.hc = load i32, ptr %i.j, align 4, !tbaa !104
  %i.hd = add nsw i32 %i.hc, %.0.i180
  store i32 %i.hd, ptr %i.j, align 4, !tbaa !104
  br label %stbi__jpeg_get_bit.exit186.thread

bb.bi:                                            ; preds = %stbi__jpeg_huff_decode.exit179
  %i.he = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.he, align 8, !tbaa !39
  br label %.critedge

bb.bj:                                            ; preds = %stbi__jpeg_huff_decode.exit179
  %i.hf = icmp slt i32 %i.go, 1
  br i1 %i.hf, label %bb.bk, label %stbi__jpeg_get_bit.exit186

bb.bk:                                            ; preds = %bb.bj
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr.i185 = load i32, ptr %i.dt, align 4, !tbaa !95 ; 3 uses
  %i.hg = icmp slt i32 %.pr.i185, 1
  br i1 %i.hg, label %stbi__jpeg_get_bit.exit186.thread, label %.stbi__jpeg_get_bit.exit186_crit_edge

.stbi__jpeg_get_bit.exit186_crit_edge:            ; preds = %bb.bk
  %.pre266 = load i32, ptr %i.du, align 8, !tbaa !96
  br label %stbi__jpeg_get_bit.exit186

stbi__jpeg_get_bit.exit186:                       ; preds = %.stbi__jpeg_get_bit.exit186_crit_edge, %bb.bj
  %i.hh = phi i32 [ %.pre266, %.stbi__jpeg_get_bit.exit186_crit_edge ], [ %i.gn, %bb.bj ] ; 2 uses
  %i.hi = phi i32 [ %.pr.i185, %.stbi__jpeg_get_bit.exit186_crit_edge ], [ %i.go, %bb.bj ]
  %i.hj = shl i32 %i.hh, 1
  store i32 %i.hj, ptr %i.du, align 8, !tbaa !96
  %i.hk = add nsw i32 %i.hi, -1                   ; 2 uses
  store i32 %i.hk, ptr %i.dt, align 4, !tbaa !95
  %.not154323 = icmp slt i32 %i.hh, 0
  %spec.select = select i1 %.not154323, i32 %i.dz, i32 %i.ea
  br label %stbi__jpeg_get_bit.exit186.thread

stbi__jpeg_get_bit.exit186.thread:                ; preds = %stbi__jpeg_get_bit.exit186, %bb.bk, %bb.bd, %stbi__jpeg_get_bits.exit182, %bb.bc
  %i.hl = phi i32 [ %i.hk, %stbi__jpeg_get_bit.exit186 ], [ %i.go, %bb.bc ], [ %i.go, %bb.bd ], [ %i.hb, %stbi__jpeg_get_bits.exit182 ], [ %.pr.i185, %bb.bk ] ; 2 uses
  %.0115 = phi i32 [ %i.gq, %stbi__jpeg_get_bit.exit186 ], [ %i.gq, %bb.bc ], [ 64, %bb.bd ], [ 64, %stbi__jpeg_get_bits.exit182 ], [ %i.gq, %bb.bk ]
  %.0 = phi i32 [ %spec.select, %stbi__jpeg_get_bit.exit186 ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ 0, %stbi__jpeg_get_bits.exit182 ], [ %i.ea, %bb.bk ]
  %i.hm = load i32, ptr %i.eb, align 8, !tbaa !100 ; 3 uses
  %.not157250 = icmp sgt i32 %.6, %i.hm
  br i1 %.not157250, label %.loopexit222, label %.lr.ph253.preheader

.lr.ph253.preheader:                              ; preds = %stbi__jpeg_get_bit.exit186.thread
  %i.hn = sext i32 %.6 to i64
  br label %.lr.ph253

.lr.ph253:                                        ; preds = %.lr.ph253.preheader, %stbi__jpeg_get_bit.exit190.thread
  %i.ho = phi i32 [ %i.hm, %.lr.ph253.preheader ], [ %i.in, %stbi__jpeg_get_bit.exit190.thread ]
  %i.hp = phi i32 [ %i.hl, %.lr.ph253.preheader ], [ %i.im, %stbi__jpeg_get_bit.exit190.thread ] ; 4 uses
  %indvars.iv263 = phi i64 [ %i.hn, %.lr.ph253.preheader ], [ %indvars.iv.next264, %stbi__jpeg_get_bit.exit190.thread ] ; 3 uses
  %.1252 = phi i32 [ %.0115, %.lr.ph253.preheader ], [ %.3, %stbi__jpeg_get_bit.exit190.thread ] ; 7 uses
  %indvars.iv.next264 = add nsw i64 %indvars.iv263, 1 ; 3 uses
  %i.hq = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %indvars.iv263
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !37
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.hs ; 5 uses
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !74
  %.not158 = icmp eq i16 %i.hu, 0
  br i1 %.not158, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph253
  %i.hv = icmp slt i32 %i.hp, 1
  br i1 %i.hv, label %bb.bm, label %stbi__jpeg_get_bit.exit190

bb.bm:                                            ; preds = %bb.bl
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr.i189 = load i32, ptr %i.dt, align 4, !tbaa !95 ; 3 uses
  %i.hw = icmp slt i32 %.pr.i189, 1
  br i1 %i.hw, label %stbi__jpeg_get_bit.exit190.thread, label %stbi__jpeg_get_bit.exit190

stbi__jpeg_get_bit.exit190:                       ; preds = %bb.bl, %bb.bm
  %i.hx = phi i32 [ %.pr.i189, %bb.bm ], [ %i.hp, %bb.bl ]
  %i.hy = load i32, ptr %i.du, align 8, !tbaa !96 ; 2 uses
  %i.hz = shl i32 %i.hy, 1
  store i32 %i.hz, ptr %i.du, align 8, !tbaa !96
  %i.ia = add nsw i32 %i.hx, -1                   ; 5 uses
  store i32 %i.ia, ptr %i.dt, align 4, !tbaa !95
  %.not159 = icmp sgt i32 %i.hy, -1
  br i1 %.not159, label %stbi__jpeg_get_bit.exit190.thread, label %bb.bn

bb.bn:                                            ; preds = %stbi__jpeg_get_bit.exit190
  %i.ib = load i16, ptr %i.ht, align 2, !tbaa !74 ; 4 uses
  %i.ic = sext i16 %i.ib to i32
  %i.id = and i32 %i.dz, %i.ic
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.bo, label %stbi__jpeg_get_bit.exit190.thread

bb.bo:                                            ; preds = %bb.bn
  %i.if = icmp sgt i16 %i.ib, 0
  br i1 %i.if, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ig = add i16 %i.ib, %i.ec
  store i16 %i.ig, ptr %i.ht, align 2, !tbaa !74
  br label %stbi__jpeg_get_bit.exit190.thread

bb.bq:                                            ; preds = %bb.bo
  %i.ih = sub i16 %i.ib, %i.ec
  store i16 %i.ih, ptr %i.ht, align 2, !tbaa !74
  br label %stbi__jpeg_get_bit.exit190.thread

bb.br:                                            ; preds = %.lr.ph253
  %i.ii = icmp eq i32 %.1252, 0
  br i1 %i.ii, label %.thread219, label %bb.bs

.thread219:                                       ; preds = %bb.br
  %i.ij = trunc nsw i64 %indvars.iv.next264 to i32
  %i.ik = trunc i32 %.0 to i16
  store i16 %i.ik, ptr %i.ht, align 2, !tbaa !74
  br label %.loopexit222

bb.bs:                                            ; preds = %bb.br
  %i.il = add nsw i32 %.1252, -1
  br label %stbi__jpeg_get_bit.exit190.thread

stbi__jpeg_get_bit.exit190.thread:                ; preds = %bb.bm, %bb.bs, %bb.bn, %bb.bq, %bb.bp, %stbi__jpeg_get_bit.exit190
  %i.im = phi i32 [ %i.hp, %bb.bs ], [ %i.ia, %bb.bp ], [ %i.ia, %bb.bq ], [ %i.ia, %bb.bn ], [ %i.ia, %stbi__jpeg_get_bit.exit190 ], [ %.pr.i189, %bb.bm ] ; 2 uses
  %.3 = phi i32 [ %i.il, %bb.bs ], [ %.1252, %bb.bp ], [ %.1252, %bb.bq ], [ %.1252, %bb.bn ], [ %.1252, %stbi__jpeg_get_bit.exit190 ], [ %.1252, %bb.bm ]
  %i.in = load i32, ptr %i.eb, align 8, !tbaa !100 ; 3 uses
  %i.io = sext i32 %i.in to i64
  %.not157.not = icmp slt i64 %indvars.iv263, %i.io
  br i1 %.not157.not, label %.lr.ph253, label %.loopexit222.loopexit

.loopexit222.loopexit:                            ; preds = %stbi__jpeg_get_bit.exit190.thread
  %i.ip = trunc nsw i64 %indvars.iv.next264 to i32
  br label %.loopexit222

.loopexit222:                                     ; preds = %.loopexit222.loopexit, %stbi__jpeg_get_bit.exit186.thread, %.thread219
  %i.iq = phi i32 [ %i.ho, %.thread219 ], [ %i.hm, %stbi__jpeg_get_bit.exit186.thread ], [ %i.in, %.loopexit222.loopexit ]
  %i.ir = phi i32 [ %i.hp, %.thread219 ], [ %i.hl, %stbi__jpeg_get_bit.exit186.thread ], [ %i.im, %.loopexit222.loopexit ]
  %.9 = phi i32 [ %i.ij, %.thread219 ], [ %.6, %stbi__jpeg_get_bit.exit186.thread ], [ %i.ip, %.loopexit222.loopexit ] ; 2 uses
  %.not161 = icmp sgt i32 %.9, %i.iq
  br i1 %.not161, label %.critedge, label %bb.aq, !llvm.loop !307

.critedge:                                        ; preds = %stbi__jpeg_get_bit.exit.thread, %.loopexit222, %bb.aj, %bb.al, %bb.ai, %.loopexit, %bb.j, %bb.e, %bb.bi, %.loopexit224, %bb.b
  %.9135 = phi i32 [ 0, %bb.b ], [ 1, %.loopexit222 ], [ 0, %bb.bi ], [ 0, %.loopexit224 ], [ 1, %bb.e ], [ 0, %.loopexit ], [ 1, %bb.al ], [ 0, %bb.j ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %stbi__jpeg_get_bit.exit.thread ]
  ret i32 %.9135
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @stbi__clamp(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 255
  %i.b = trunc nuw i32 %0 to i8
  %i.c = icmp sgt i32 %0, -1
  %spec.select = sext i1 %i.c to i8
  %.0 = select i1 %i.a, i8 %spec.select, i8 %i.b
  ret i8 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__idct_block(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #18 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  br label %bb.b

.preheader:                                       ; preds = %bb.i
  %i.b = sext i32 %1 to i64
  br label %bb.j

bb.b:                                             ; preds = %bb.a, %bb.i
  %.0219 = phi i32 [ 0, %bb.a ], [ %i.do, %bb.i ]
  %.0199218 = phi ptr [ %i.a, %bb.a ], [ %i.dq, %bb.i ] ; 17 uses
  %.0202217 = phi ptr [ %2, %bb.a ], [ %i.dp, %bb.i ] ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0202217, i64 16
  %i.d = load i16, ptr %i.c, align 2, !tbaa !74   ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.0202217, i64 32
  %i.g = load i16, ptr %i.f, align 2, !tbaa !74   ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0202217, i64 48
  %i.j = load i16, ptr %i.i, align 2, !tbaa !74
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0202217, i64 64
  %i.m = load i16, ptr %i.l, align 2, !tbaa !74
  %i.n = icmp eq i16 %i.m, 0
  br i1 %i.n, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.0202217, i64 80
  %i.p = load i16, ptr %i.o, align 2, !tbaa !74
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.f, label %._crit_edge

end_hunk_0
