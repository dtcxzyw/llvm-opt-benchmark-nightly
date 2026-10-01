Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/gdevmem?download=true
inline.NumInlined: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 18
begin_hunk_0_@mem_mono_fill_rectangle:bb.a
  %.0.1 = getelementptr inbounds i8, ptr %.pn146.1, i64 %i.dq ; 2 uses
  %i.ev = load i8, ptr %.0.1, align 1, !tbaa !29
  %i.ew = and i8 %i.ev, %i.el
  store i8 %i.ew, ptr %.0.1, align 1, !tbaa !29
  %i.ex = getelementptr inbounds nuw i8, ptr %.0107, i64 16
  %.pn146.2 = load ptr, ptr %i.ex, align 8, !tbaa !24
  %.0.2 = getelementptr inbounds i8, ptr %.pn146.2, i64 %i.dq ; 2 uses
  %i.ey = load i8, ptr %.0.2, align 1, !tbaa !29
  %i.ez = and i8 %i.ey, %i.el
  store i8 %i.ez, ptr %.0.2, align 1, !tbaa !29
  %i.fa = getelementptr inbounds nuw i8, ptr %.0107, i64 24
  %.pn146.3 = load ptr, ptr %i.fa, align 8, !tbaa !24
  %.0.3 = getelementptr inbounds i8, ptr %.pn146.3, i64 %i.dq ; 2 uses
  %i.fb = load i8, ptr %.0.3, align 1, !tbaa !29
  %i.fc = and i8 %i.fb, %i.el
  store i8 %i.fc, ptr %.0.3, align 1, !tbaa !29
  %i.fd = getelementptr inbounds nuw i8, ptr %.0107, i64 32
  %i.fe = add nsw i32 %.0108, -4                  ; 2 uses
  %.not147.3 = icmp eq i32 %i.fe, 0
  br i1 %.not147.3, label %mem_fill_recover.exit.thread, label %.new186, !llvm.loop !62

mem_fill_recover.exit.thread:                     ; preds = %.preheader166.prol.loopexit, %.preheader166, %.prol.loopexit185, %.new186, %bb.c, %bb.f, %bb.t, %bb.j, %bb.g, %bb.h, %bb.i, %mem_fill_recover.exit, %bb.m
  %.1126 = phi i32 [ 0, %bb.t ], [ 0, %mem_fill_recover.exit ], [ -1, %bb.m ], [ 0, %bb.j ], [ -1, %bb.g ], [ -1, %bb.i ], [ -1, %bb.h ], [ %i.x, %bb.f ], [ 0, %.prol.loopexit185 ], [ %i.h, %bb.c ], [ 0, %.new186 ], [ 0, %.preheader166 ], [ 0, %.preheader166.prol.loopexit ]
  ret i32 %.1126
}

declare i32 @gx_default_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @mem_mono_copy_mono(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8, i64 noundef %9) #5 {
bb.a:
  %i.a = trunc i64 %9 to i32                      ; 3 uses
  %i.b = trunc i64 %8 to i32                      ; 3 uses
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @mem_mono_fill_rectangle(ptr noundef %0, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8)
  br label %mem_copy_mono_recover.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.f, @mem_no_fault_proc
  br i1 %.not, label %mem_copy_mono_recover.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = ashr i32 %4, 3                           ; 2 uses
  %i.h = add i32 %4, 7
  %i.i = add i32 %i.h, %6
  %i.j = ashr i32 %i.i, 3
  %i.k = sub nsw i32 %i.j, %i.g
  %i.l = tail call i32 %i.f(ptr noundef nonnull %0, i32 noundef %i.g, i32 noundef %5, i32 noundef %i.k, i32 noundef %7, i32 noundef 1) #15 ; 3 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %mem_copy_mono_recover.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %i.l, label %mem_copy_mono_recover.exit.thread [
    i32 -1, label %bb.f
    i32 -2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = ashr i32 %6, 1                           ; 3 uses
  %i.o = add nsw i32 %i.n, %4
  %i.p = sub nsw i32 %6, %i.n
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = ashr i32 %7, 1                           ; 3 uses
  %i.r = add nsw i32 %i.q, %5
  %i.s = sub nsw i32 %7, %i.q
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.041.i = phi i32 [ %7, %bb.f ], [ %i.s, %bb.g ]
  %.040.i = phi i32 [ %i.p, %bb.f ], [ %6, %bb.g ]
  %.038.i = phi i32 [ %i.o, %bb.f ], [ %4, %bb.g ]
  %.037.i = phi i32 [ %i.n, %bb.f ], [ %6, %bb.g ]
  %.036.i = phi i32 [ %5, %bb.f ], [ %i.r, %bb.g ]
  %.0.i = phi i32 [ %7, %bb.f ], [ %i.q, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.x = tail call i32 %i.w(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %.040.i, i32 noundef %.041.i, i64 noundef %8, i64 noundef %9) #15, !inline_history !38 ; 0 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %.038.i, i32 noundef %.036.i, i32 noundef %.037.i, i32 noundef %.0.i, i64 noundef %8, i64 noundef %9) #15, !inline_history !38
  br label %mem_copy_mono_recover.exit.thread

mem_copy_mono_recover.exit:                       ; preds = %bb.d, %bb.c
  %i.ac = icmp slt i32 %6, 1
  %i.ad = icmp slt i32 %7, 1
  %or.cond = or i1 %i.ac, %i.ad
  br i1 %or.cond, label %mem_copy_mono_recover.exit.thread, label %bb.i

bb.i:                                             ; preds = %mem_copy_mono_recover.exit
  %i.ae = icmp slt i32 %4, 0
  br i1 %i.ae, label %mem_copy_mono_recover.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !19
  %i.ah = sub nsw i32 %i.ag, %6
  %i.ai = icmp sgt i32 %4, %i.ah
  %i.aj = icmp slt i32 %5, 0
  %or.cond3 = or i1 %i.aj, %i.ai
  br i1 %or.cond3, label %mem_copy_mono_recover.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !22
  %i.am = sub nsw i32 %i.al, %7
  %i.an = icmp sgt i32 %5, %i.am
  br i1 %i.an, label %mem_copy_mono_recover.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = lshr i32 %4, 3
  %i.ap = zext nneg i32 %i.ao to i64              ; 17 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !23
  %i.as = zext nneg i32 %5 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as ; 13 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ap ; 16 uses
  %i.aw = ashr i32 %2, 3
  %i.ax = sext i32 %i.aw to i64                   ; 5 uses
  %i.ay = getelementptr inbounds i8, ptr %1, i64 %i.ax ; 16 uses
  %i.az = and i32 %2, 7                           ; 3 uses
  %i.ba = sub nuw nsw i32 8, %i.az                ; 2 uses
  %i.bb = and i32 %4, 7                           ; 9 uses
  %i.bc = sub nuw nsw i32 8, %i.bb                ; 5 uses
  %i.bd = lshr i32 255, %i.bb                     ; 3 uses
  %i.be = icmp samesign ult i32 %6, %i.bc
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = lshr i32 %i.bd, %6
  %i.bg = sub nsw i32 %i.bd, %i.bf
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bh = sub nuw nsw i32 %6, %i.bc
  %i.bi = and i32 %i.bh, 7
  %i.bj = lshr i32 255, %i.bi
  %i.bk = xor i32 %i.bj, 255
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0199 = phi i32 [ %i.bg, %bb.m ], [ %i.bd, %bb.n ] ; 12 uses
  %.0198 = phi i32 [ undef, %bb.m ], [ %i.bk, %bb.n ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !37
  %.not225 = icmp eq i32 %i.bm, 0
  br i1 %.not225, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not226 = icmp ne i32 %i.b, -1
  %i.bn = zext i1 %.not226 to i64
  %spec.select = xor i64 %8, %i.bn
  %.not227 = icmp ne i32 %i.a, -1
  %i.bo = zext i1 %.not227 to i64
  %spec.select229 = xor i64 %9, %i.bo
  %.pre = trunc i64 %spec.select to i32
  %.pre305 = trunc i64 %spec.select229 to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi306 = phi i32 [ %.pre305, %bb.p ], [ %i.a, %bb.o ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre, %bb.p ], [ %i.b, %bb.o ] ; 2 uses
  %i.bp = icmp eq i32 %.pre-phi, 1                ; 2 uses
  %i.bq = icmp eq i32 %.pre-phi306, 0             ; 2 uses
  %i.br = or i1 %i.bp, %i.bq
  %i.bs = sext i1 %i.br to i32                    ; 31 uses
  %i.bt = icmp eq i32 %.pre-phi, 0
  %i.bu = or i1 %i.bt, %i.bq                      ; 7 uses
  %not. = xor i1 %i.bu, true
  %i.bv = sext i1 %not. to i32                    ; 10 uses
  %i.bw = icmp eq i32 %.pre-phi306, 1
  %i.bx = or i1 %i.bp, %i.bw
  %.fr = freeze i1 %i.bx                          ; 11 uses
  %i.by = icmp eq i32 %i.bb, %i.az
  br i1 %i.by, label %.lr.ph286, label %.lr.ph244

.lr.ph286:                                        ; preds = %bb.q
  %i.bz = sub nsw i32 %6, %i.bc                   ; 12 uses
  %i.ca = xor i32 %.0199, -1
  %i.cb = or i32 %i.bv, %i.ca
  %i.cc = icmp sgt i32 %i.bz, 7
  %i.cd = xor i32 %.0198, -1
  %i.ce = or i32 %i.bv, %i.cd
  %i.cf = sext i32 %3 to i64                      ; 3 uses
  %i.cg = add nuw i32 %6, %i.bb
  %i.ch = add i32 %i.cg, -16
  %i.ci = lshr i32 %i.ch, 3
  %i.cj = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.ck = getelementptr i8, ptr %1, i64 %i.ax
  %scevgep455 = getelementptr i8, ptr %i.ck, i64 1
  %i.cl = add nsw i32 %7, -1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = mul nsw i64 %i.cf, %i.cm
  %i.co = getelementptr i8, ptr %1, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cj
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.ax
  %scevgep456 = getelementptr i8, ptr %i.cq, i64 2
  %i.cr = add nuw i32 %6, %i.bb                   ; 2 uses
  %i.cs = add i32 %i.cr, -16                      ; 3 uses
  %i.ct = lshr i32 %i.cs, 3
  %narrow554.a = add nuw nsw i32 %i.ct, 1
  %i.cu = zext nneg i32 %narrow554.a to i64       ; 5 uses
  %smin501 = tail call i32 @llvm.smin.i32(i32 %i.bz, i32 15)
  %i.cv = xor i32 %smin501, -1
  %i.cw = add i32 %i.cr, %i.cv
  %i.cx = lshr i32 %i.cw, 3
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = getelementptr i8, ptr %1, i64 %i.ax
  %scevgep503 = getelementptr i8, ptr %i.cz, i64 1
  %i.da = add nsw i32 %7, -1
  %i.db = zext i32 %i.da to i64
  %i.dc = mul nsw i64 %i.cf, %i.db
  %i.dd = getelementptr i8, ptr %1, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.cy
  %i.df = getelementptr i8, ptr %i.de, i64 %i.ax
  %scevgep505 = getelementptr i8, ptr %i.df, i64 2
  %i.dg = add nuw i32 %6, %i.bb
  %smin510 = tail call i32 @llvm.smin.i32(i32 %i.bz, i32 15)
  %i.dh = xor i32 %smin510, -1
  %i.di = add i32 %i.dg, %i.dh                    ; 3 uses
  %i.dj = lshr i32 %i.di, 3
  %narrow555 = add nuw nsw i32 %i.dj, 1
  %i.dk = zext nneg i32 %narrow555 to i64         ; 5 uses
  %min.iters.check511 = icmp ult i32 %i.di, 24
  %stride.check509 = icmp slt i32 %3, 0
  %min.iters.check513 = icmp ult i32 %i.di, 120
  %i.dl = and i64 %i.dk, 12
  %n.vec515 = and i64 %i.dk, 1073741808           ; 6 uses
  %i.dm = trunc nuw nsw i64 %n.vec515 to i32
  %i.dn = shl i32 %i.dm, 3
  %i.do = sub i32 %i.bz, %i.dn                    ; 2 uses
  %broadcast.splatinsert516 = insertelement <16 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat517 = shufflevector <16 x i32> %broadcast.splatinsert516, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert518 = insertelement <16 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat519 = shufflevector <16 x i32> %broadcast.splatinsert518, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n528 = icmp eq i64 %n.vec515, %i.dk
  %min.epilog.iters.check535 = icmp eq i64 %i.dl, 0
  %n.vec537 = and i64 %i.dk, 1073741820           ; 5 uses
  %i.dp = trunc nuw nsw i64 %n.vec537 to i32
  %i.dq = shl i32 %i.dp, 3
  %i.dr = sub i32 %i.bz, %i.dq                    ; 2 uses
  %broadcast.splatinsert538 = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat539 = shufflevector <4 x i32> %broadcast.splatinsert538, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert540 = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat541 = shufflevector <4 x i32> %broadcast.splatinsert540, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n550 = icmp eq i64 %n.vec537, %i.dk
  %min.iters.check460 = icmp ult i32 %i.cs, 24
  %stride.check = icmp slt i32 %3, 0
  %min.iters.check462 = icmp ult i32 %i.cs, 120
  %i.ds = and i64 %i.cu, 12
  %n.vec464 = and i64 %i.cu, 1073741808           ; 6 uses
  %i.dt = trunc nuw nsw i64 %n.vec464 to i32
  %i.du = shl i32 %i.dt, 3
  %i.dv = sub i32 %i.bz, %i.du                    ; 2 uses
  %broadcast.splatinsert465 = insertelement <16 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat466 = shufflevector <16 x i32> %broadcast.splatinsert465, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n475 = icmp eq i64 %n.vec464, %i.cu
  %min.epilog.iters.check482 = icmp eq i64 %i.ds, 0
  %n.vec484 = and i64 %i.cu, 1073741820           ; 5 uses
  %i.dw = trunc nuw nsw i64 %n.vec484 to i32
  %i.dx = shl i32 %i.dw, 3
  %i.dy = sub i32 %i.bz, %i.dx                    ; 2 uses
  %broadcast.splatinsert485 = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat486 = shufflevector <4 x i32> %broadcast.splatinsert485, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n495 = icmp eq i64 %n.vec484, %i.cu
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph286, %bb.t
  %.in = phi i32 [ %7, %.lr.ph286 ], [ %i.dz, %bb.t ] ; 2 uses
  %.0194284 = phi ptr [ %i.av, %.lr.ph286 ], [ %i.hs, %bb.t ] ; 19 uses
  %.0196283 = phi ptr [ %i.at, %.lr.ph286 ], [ %i.hq, %bb.t ]
  %.0200281 = phi ptr [ %i.ay, %.lr.ph286 ], [ %i.ht, %bb.t ] ; 15 uses
  %i.dz = add nsw i32 %.in, -1
  %i.ea = load i8, ptr %.0200281, align 1, !tbaa !29
  %i.eb = zext i8 %i.ea to i32
  %i.ec = xor i32 %i.eb, %i.bs                    ; 2 uses
  %i.ed = or i32 %i.cb, %i.ec
  %i.ee = load i8, ptr %.0194284, align 1, !tbaa !29
  %i.ef = zext i8 %i.ee to i32
  %i.eg = and i32 %i.ed, %i.ef
  %i.eh = and i32 %i.ec, %.0199
  %i.ei = select i1 %.fr, i32 %i.eh, i32 0
  %i.ej = or i32 %i.eg, %i.ei
  %i.ek = trunc i32 %i.ej to i8
  store i8 %i.ek, ptr %.0194284, align 1, !tbaa !29
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.r
  br i1 %.fr, label %iter.check479, label %iter.check532

iter.check532:                                    ; preds = %.lr.ph
  br i1 %min.iters.check511, label %.lr.ph.split.preheader, label %vector.memcheck499

vector.memcheck499:                               ; preds = %iter.check532
  %scevgep500 = getelementptr i8, ptr %.0194284, i64 1
  %i.el = getelementptr i8, ptr %.0194284, i64 %i.cy
  %scevgep502 = getelementptr i8, ptr %i.el, i64 2
  %bound0506 = icmp ult ptr %scevgep500, %scevgep505
  %bound1507 = icmp ult ptr %scevgep503, %scevgep502
  %found.conflict508 = and i1 %bound0506, %bound1507
  %i.em = or i1 %found.conflict508, %stride.check509
  br i1 %i.em, label %.lr.ph.split.preheader, label %vector.main.loop.iter.check512

vector.main.loop.iter.check512:                   ; preds = %vector.memcheck499
  br i1 %min.iters.check513, label %vec.epilog.ph536, label %vector.ph514

vector.ph514:                                     ; preds = %vector.main.loop.iter.check512
  %i.en = getelementptr i8, ptr %.0194284, i64 %n.vec515 ; 2 uses
  %i.eo = getelementptr i8, ptr %.0200281, i64 %n.vec515 ; 2 uses
  br label %vector.body520

vector.body520:                                   ; preds = %vector.ph514, %vector.body520
  %index521 = phi i64 [ 0, %vector.ph514 ], [ %index.next526, %vector.body520 ] ; 3 uses
  %next.gep522.a = getelementptr i8, ptr %.0194284, i64 %index521
  %next.gep523 = getelementptr i8, ptr %.0200281, i64 %index521
  %i.ep = getelementptr inbounds nuw i8, ptr %next.gep523, i64 1
  %wide.load524.a = load <16 x i8>, ptr %i.ep, align 1, !tbaa !29, !alias.scope !89
  %i.eq = zext <16 x i8> %wide.load524.a to <16 x i32>
  %i.er = xor <16 x i32> %broadcast.splat517, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %next.gep522.a, i64 1 ; 2 uses
  %i.et = or <16 x i32> %i.er, %broadcast.splat519
  %wide.load525 = load <16 x i8>, ptr %i.es, align 1, !tbaa !29, !alias.scope !90, !noalias !89
  %i.eu = trunc <16 x i32> %i.et to <16 x i8>
  %i.ev = and <16 x i8> %wide.load525, %i.eu
  store <16 x i8> %i.ev, ptr %i.es, align 1, !tbaa !29, !alias.scope !90, !noalias !89
  %index.next526 = add nuw i64 %index521, 16      ; 2 uses
  %i.ew = icmp eq i64 %index.next526, %n.vec515
  br i1 %i.ew, label %middle.block527, label %vector.body520, !llvm.loop !66

middle.block527:                                  ; preds = %vector.body520
  br i1 %cmp.n528, label %._crit_edge, label %vec.epilog.iter.check534

vec.epilog.iter.check534:                         ; preds = %middle.block527
  br i1 %min.epilog.iters.check535, label %.lr.ph.split.preheader, label %vec.epilog.ph536, !prof !91

vec.epilog.ph536:                                 ; preds = %vector.main.loop.iter.check512, %vec.epilog.iter.check534
  %vec.epilog.resume.val529 = phi i64 [ %n.vec515, %vec.epilog.iter.check534 ], [ 0, %vector.main.loop.iter.check512 ]
  %i.ex = getelementptr i8, ptr %.0194284, i64 %n.vec537 ; 2 uses
  %i.ey = getelementptr i8, ptr %.0200281, i64 %n.vec537 ; 2 uses
  br label %vec.epilog.vector.body542

vec.epilog.vector.body542:                        ; preds = %vec.epilog.vector.body542, %vec.epilog.ph536
  %index543 = phi i64 [ %vec.epilog.resume.val529, %vec.epilog.ph536 ], [ %index.next548, %vec.epilog.vector.body542 ] ; 3 uses
  %next.gep544.a = getelementptr i8, ptr %.0194284, i64 %index543
  %next.gep545 = getelementptr i8, ptr %.0200281, i64 %index543
  %i.ez = getelementptr inbounds nuw i8, ptr %next.gep545, i64 1
  %wide.load546.a = load <4 x i8>, ptr %i.ez, align 1, !tbaa !29, !alias.scope !89
  %i.fa = zext <4 x i8> %wide.load546.a to <4 x i32>
  %i.fb = xor <4 x i32> %broadcast.splat539, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %next.gep544.a, i64 1 ; 2 uses
  %i.fd = or <4 x i32> %i.fb, %broadcast.splat541
  %wide.load547 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !29, !alias.scope !90, !noalias !89
  %i.fe = trunc <4 x i32> %i.fd to <4 x i8>
  %i.ff = and <4 x i8> %wide.load547, %i.fe
  store <4 x i8> %i.ff, ptr %i.fc, align 1, !tbaa !29, !alias.scope !90, !noalias !89
  %index.next548 = add nuw i64 %index543, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next548, %n.vec537
  br i1 %i.fg, label %vec.epilog.middle.block549, label %vec.epilog.vector.body542, !llvm.loop !67

vec.epilog.middle.block549:                       ; preds = %vec.epilog.vector.body542
  br i1 %cmp.n550, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %iter.check532, %vector.memcheck499, %vec.epilog.iter.check534, %vec.epilog.middle.block549
  %.0190275.ph = phi ptr [ %.0194284, %iter.check532 ], [ %.0194284, %vector.memcheck499 ], [ %i.en, %vec.epilog.iter.check534 ], [ %i.ex, %vec.epilog.middle.block549 ]
  %.0191274.ph = phi i32 [ %i.bz, %iter.check532 ], [ %i.bz, %vector.memcheck499 ], [ %i.do, %vec.epilog.iter.check534 ], [ %i.dr, %vec.epilog.middle.block549 ]
  %.0192273.ph = phi ptr [ %.0200281, %iter.check532 ], [ %.0200281, %vector.memcheck499 ], [ %i.eo, %vec.epilog.iter.check534 ], [ %i.ey, %vec.epilog.middle.block549 ]
  br label %.lr.ph.split

iter.check479:                                    ; preds = %.lr.ph
  br i1 %min.iters.check460, label %.lr.ph.split.us.preheader, label %vector.memcheck452

vector.memcheck452:                               ; preds = %iter.check479
  %scevgep453 = getelementptr i8, ptr %.0194284, i64 1
  %i.fh = getelementptr i8, ptr %.0194284, i64 %i.cj
  %scevgep454 = getelementptr i8, ptr %i.fh, i64 2
  %bound0457 = icmp ult ptr %scevgep453, %scevgep456
  %bound1458 = icmp ult ptr %scevgep455, %scevgep454
  %found.conflict459 = and i1 %bound0457, %bound1458
  %i.fi = or i1 %found.conflict459, %stride.check
  br i1 %i.fi, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check461

vector.main.loop.iter.check461:                   ; preds = %vector.memcheck452
  br i1 %min.iters.check462, label %vec.epilog.ph483, label %vector.ph463

vector.ph463:                                     ; preds = %vector.main.loop.iter.check461
  %i.fj = getelementptr i8, ptr %.0194284, i64 %n.vec464 ; 2 uses
  %i.fk = getelementptr i8, ptr %.0200281, i64 %n.vec464 ; 2 uses
  br label %vector.body467

vector.body467:                                   ; preds = %vector.ph463, %vector.body467
  %index468 = phi i64 [ 0, %vector.ph463 ], [ %index.next473, %vector.body467 ] ; 3 uses
  %next.gep469 = getelementptr i8, ptr %.0194284, i64 %index468
  %next.gep470 = getelementptr i8, ptr %.0200281, i64 %index468
  %i.fl = getelementptr inbounds nuw i8, ptr %next.gep470, i64 1
  %wide.load471 = load <16 x i8>, ptr %i.fl, align 1, !tbaa !29, !alias.scope !92
  %i.fm = zext <16 x i8> %wide.load471 to <16 x i32>
  %i.fn = xor <16 x i32> %broadcast.splat466, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %next.gep469, i64 1 ; 2 uses
  %wide.load472 = load <16 x i8>, ptr %i.fo, align 1, !tbaa !29, !alias.scope !93, !noalias !92
  %i.fp = zext <16 x i8> %wide.load472 to <16 x i32>
  %i.fq = select i1 %i.bu, <16 x i32> zeroinitializer, <16 x i32> %i.fp
  %i.fr = or <16 x i32> %i.fq, %i.fn
  %i.fs = trunc <16 x i32> %i.fr to <16 x i8>
  store <16 x i8> %i.fs, ptr %i.fo, align 1, !tbaa !29, !alias.scope !93, !noalias !92
  %index.next473 = add nuw i64 %index468, 16      ; 2 uses
  %i.ft = icmp eq i64 %index.next473, %n.vec464
  br i1 %i.ft, label %middle.block474, label %vector.body467, !llvm.loop !71

middle.block474:                                  ; preds = %vector.body467
  br i1 %cmp.n475, label %._crit_edge, label %vec.epilog.iter.check481
end_hunk_0
