Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/ed25519_ref10?download=true
inline.NumInlined: 477
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 30
begin_hunk_0_@ge25519_sub:bb.a
  %i.bf = getelementptr i8, ptr %0, i64 72        ; 3 uses
  store i64 %i.bd, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %0, i64 80        ; 3 uses
  %i.bh = getelementptr i8, ptr %2, i64 40
  tail call fastcc void @fe25519_mul(ptr noundef %i.bg, ptr noundef nonnull %0, ptr noundef %i.bh)
  tail call fastcc void @fe25519_mul(ptr noundef nonnull %i.w, ptr noundef nonnull %i.w, ptr noundef %2)
  %i.bi = getelementptr i8, ptr %0, i64 120       ; 3 uses
  %i.bj = getelementptr i8, ptr %2, i64 120
  %i.bk = getelementptr i8, ptr %1, i64 120
  tail call fastcc void @fe25519_mul(ptr noundef %i.bi, ptr noundef %i.bj, ptr noundef %i.bk)
  %i.bl = getelementptr i8, ptr %1, i64 80
  %i.bm = getelementptr i8, ptr %2, i64 80
  tail call fastcc void @fe25519_mul(ptr noundef nonnull %0, ptr noundef %i.bl, ptr noundef %i.bm)
  %i.bn = load i64, ptr %0, align 8
  %i.bo = shl i64 %i.bn, 1                        ; 2 uses
  %i.bp = load i64, ptr %i.m, align 8
  %i.bq = shl i64 %i.bp, 1                        ; 2 uses
  %i.br = load i64, ptr %i.q, align 8
  %i.bs = shl i64 %i.br, 1                        ; 2 uses
  %i.bt = load i64, ptr %i.r, align 8
  %i.bu = shl i64 %i.bt, 1                        ; 2 uses
  %i.bv = load i64, ptr %i.v, align 8
  %i.bw = shl i64 %i.bv, 1                        ; 2 uses
  %i.bx = load i64, ptr %i.w, align 8             ; 3 uses
  %i.by = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.bz = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.ca = load i64, ptr %i.be, align 8            ; 2 uses
  %i.cb = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.cc = lshr i64 %i.bx, 51
  %i.cd = add i64 %i.by, %i.cc                    ; 2 uses
  %i.ce = and i64 %i.bx, 2251799813685247
  %i.cf = lshr i64 %i.cd, 51
  %i.cg = add i64 %i.cf, %i.bz                    ; 2 uses
  %i.ch = and i64 %i.cd, 2251799813685247
  %i.ci = lshr i64 %i.cg, 51
  %i.cj = add i64 %i.ci, %i.ca                    ; 2 uses
  %i.ck = and i64 %i.cg, 2251799813685247
  %i.cl = lshr i64 %i.cj, 51
  %i.cm = add i64 %i.cl, %i.cb                    ; 2 uses
  %i.cn = and i64 %i.cj, 2251799813685247
  %i.co = lshr i64 %i.cm, 51
  %i.cp = and i64 %i.cm, 2251799813685247
  %i.cq = load i64, ptr %i.bg, align 8            ; 2 uses
  %.neg39.i30 = mul nsw i64 %i.co, -19
  %reass.sub62 = sub i64 %i.cq, %i.ce
  %i.cr = add i64 %reass.sub62, 4503599627370458
  %i.cs = add i64 %i.cr, %.neg39.i30
  %i.ct = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8            ; 2 uses
  %reass.sub63 = sub i64 %i.cu, %i.ch
  %i.cv = add i64 %reass.sub63, 4503599627370494
  %i.cw = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8            ; 2 uses
  %reass.sub64 = sub i64 %i.cx, %i.ck
  %i.cy = add i64 %reass.sub64, 4503599627370494
  %i.cz = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8            ; 2 uses
  %reass.sub65 = sub i64 %i.da, %i.cn
  %i.db = add i64 %reass.sub65, 4503599627370494
  %i.dc = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.de = add i64 %i.dd, 4503599627370494
  %i.df = sub i64 %i.de, %i.cp
  store i64 %i.cs, ptr %0, align 8
  store i64 %i.cv, ptr %i.m, align 8
  store i64 %i.cy, ptr %i.q, align 8
  store i64 %i.db, ptr %i.r, align 8
  store i64 %i.df, ptr %i.v, align 8
  %i.dg = add i64 %i.cq, %i.bx
  %i.dh = add i64 %i.cu, %i.by
  %i.di = add i64 %i.cx, %i.bz
  %i.dj = add i64 %i.da, %i.ca
  %i.dk = add i64 %i.dd, %i.cb
  store i64 %i.dg, ptr %i.w, align 8
  store i64 %i.dh, ptr %i.aj, align 8
  store i64 %i.di, ptr %i.ak, align 8
  store i64 %i.dj, ptr %i.be, align 8
  store i64 %i.dk, ptr %i.bf, align 8
  %i.dl = load i64, ptr %i.bi, align 8            ; 3 uses
  %i.dm = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8            ; 2 uses
  %i.do = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8            ; 2 uses
  %i.dq = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8            ; 2 uses
  %i.ds = getelementptr i8, ptr %0, i64 152       ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %i.du = lshr i64 %i.dl, 51
  %i.dv = add i64 %i.dn, %i.du                    ; 2 uses
  %i.dw = and i64 %i.dl, 2251799813685247
  %i.dx = lshr i64 %i.dv, 51
  %i.dy = add i64 %i.dx, %i.dp                    ; 2 uses
  %i.dz = and i64 %i.dv, 2251799813685247
  %i.ea = lshr i64 %i.dy, 51
  %i.eb = add i64 %i.ea, %i.dr                    ; 2 uses
  %i.ec = and i64 %i.dy, 2251799813685247
  %i.ed = lshr i64 %i.eb, 51
  %i.ee = add i64 %i.ed, %i.dt                    ; 2 uses
  %i.ef = and i64 %i.eb, 2251799813685247
  %i.eg = lshr i64 %i.ee, 51
  %i.eh = and i64 %i.ee, 2251799813685247
  %.neg39.i35 = mul nsw i64 %i.eg, -19
  %reass.sub.i36 = add i64 %i.bo, 4503599627370458
  %i.ei = sub i64 %reass.sub.i36, %i.dw
  %i.ej = add i64 %i.ei, %.neg39.i35
  %reass.sub45.i37 = add i64 %i.bq, 4503599627370494
  %i.ek = sub i64 %reass.sub45.i37, %i.dz
  %reass.sub46.i38 = add i64 %i.bs, 4503599627370494
  %i.el = sub i64 %reass.sub46.i38, %i.ec
  %reass.sub47.i39 = add i64 %i.bu, 4503599627370494
  %i.em = sub i64 %reass.sub47.i39, %i.ef
  %i.en = add i64 %i.bw, 4503599627370494
  %i.eo = sub i64 %i.en, %i.eh
  store i64 %i.ej, ptr %i.bg, align 8
  store i64 %i.ek, ptr %i.ct, align 8
  store i64 %i.el, ptr %i.cw, align 8
  store i64 %i.em, ptr %i.cz, align 8
  store i64 %i.eo, ptr %i.dc, align 8
  %i.ep = add i64 %i.dl, %i.bo
  %i.eq = add i64 %i.dn, %i.bq
  %i.er = add i64 %i.dp, %i.bs
  %i.es = add i64 %i.dr, %i.bu
  %i.et = add i64 %i.dt, %i.bw
  store i64 %i.ep, ptr %i.bi, align 8
  store i64 %i.eq, ptr %i.dm, align 8
  store i64 %i.er, ptr %i.do, align 8
  store i64 %i.es, ptr %i.dq, align 8
  store i64 %i.et, ptr %i.ds, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define hidden void @ge25519_tobytes(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [5 x i64], align 16               ; 5 uses
  %i.c = alloca [5 x i64], align 16               ; 4 uses
  %i.d = alloca [5 x i64], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.e = getelementptr i8, ptr %1, i64 80
  call void @fe25519_invert(ptr noundef nonnull %i.b, ptr noundef %i.e)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef nonnull %i.b)
  %i.f = getelementptr i8, ptr %1, i64 40
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.d, ptr noundef %i.f, ptr noundef nonnull %i.b)
  call void @fe25519_tobytes(ptr noundef %0, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.c)
  %i.g = load i8, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.h = getelementptr i8, ptr %0, i64 31         ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = shl i8 %i.g, 7
  %i.k = xor i8 %i.i, %i.j
  store i8 %i.k, ptr %i.h, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define hidden void @ge25519_double_scalarmult_vartime(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
vector.ph:
  %4 = alloca %struct.ge25519_p2, align 8         ; 6 uses
  %i.a = alloca [256 x i8], align 16              ; 19 uses
  %i.b = alloca [256 x i8], align 16              ; 19 uses
  %5 = alloca [8 x %struct.ge25519_cached], align 16 ; 101 uses
  %6 = alloca %struct.ge25519_p1p1, align 8       ; 61 uses
  %7 = alloca %struct.ge25519_p3, align 8         ; 39 uses
  %8 = alloca %struct.ge25519_p3, align 8         ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.c = lshr exact i64 %index, 3
  %i.d = and i64 %i.c, 536870911
  %i.e = getelementptr i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.f, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.g = and <8 x i8> %vec.ind, splat (i8 7)
  %i.h = lshr <8 x i8> %broadcast.splat, %i.g
  %i.i = and <8 x i8> %i.h, splat (i8 1)
  %i.j = getelementptr i8, ptr %i.a, i64 %index
  store <8 x i8> %i.i, ptr %i.j, align 8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i8> %vec.ind, splat (i8 8)
  %i.k = icmp eq i64 %index.next, 256
  br i1 %i.k, label %.preheader57.i, label %vector.body, !llvm.loop !22

.preheader57.i:                                   ; preds = %vector.body, %.loopexit56.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next83.i, %.loopexit56.i ], [ 0, %vector.body ] ; 8 uses
  %indvars.iv81.i = phi i32 [ %indvars.iv.next82.i, %.loopexit56.i ], [ 254, %vector.body ] ; 3 uses
  %i.l = getelementptr i8, ptr %i.a, i64 %indvars.iv84.i ; 19 uses
  %i.m = load i8, ptr %i.l, align 1
  %.not.i = icmp ne i8 %i.m, 0
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 4 uses
  %i.n = icmp samesign ult i64 %indvars.iv84.i, 255
  %or.cond.i = select i1 %.not.i, i1 %i.n, i1 false
  br i1 %or.cond.i, label %.lr.ph61.preheader.i, label %.loopexit56.i

.lr.ph61.preheader.i:                             ; preds = %.preheader57.i
  %umin.i = tail call i32 @llvm.umin.i32(i32 %indvars.iv81.i, i32 5)
  %i.o = add nuw nsw i32 %umin.i, 2               ; 4 uses
  %i.p = getelementptr i8, ptr %i.a, i64 %indvars.iv.next83.i ; 2 uses
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %.not54.i = icmp eq i8 %i.q, 0
  br i1 %.not54.i, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph61.preheader.i
  %i.r = sext i8 %i.q to i32
  %i.s = shl nsw i32 %i.r, 1                      ; 2 uses
  %i.t = load i8, ptr %i.l, align 1
  %i.u = sext i8 %i.t to i32                      ; 2 uses
  %i.v = add nsw i32 %i.s, %i.u                   ; 2 uses
  %i.w = icmp slt i32 %i.v, 16
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = trunc i32 %i.v to i8
  store i8 %i.x, ptr %i.l, align 1
  store i8 0, ptr %i.p, align 1
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.a
  %i.y = sub nsw i32 %i.u, %i.s                   ; 2 uses
  %i.z = icmp slt i32 %i.y, -15
  br i1 %i.z, label %.loopexit56.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.aa = trunc i32 %i.y to i8
  store i8 %i.aa, ptr %i.l, align 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next83.i, %.lr.ph.preheader.i ], [ %indvars.iv.next73.i.a, %bb.e ] ; 2 uses
  %i.ab = getelementptr i8, ptr %i.a, i64 %indvars.iv72.i ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1
  %.not55.i = icmp eq i8 %i.ac, 0
  br i1 %.not55.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i8 1, ptr %i.ab, align 1
  br label %.loopexit.i

bb.e:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %i.ab, align 1
  %indvars.iv.next73.i.a = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i.a, 256
  br i1 %exitcond75.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !23

.loopexit.i:                                      ; preds = %bb.e, %bb.d, %bb.b, %.lr.ph61.preheader.i
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv84.i, 2 ; 2 uses
  %exitcond83.not.i = icmp eq i32 %indvars.iv81.i, 0
  br i1 %exitcond83.not.i, label %.loopexit56.i, label %.lr.ph61.i.1

.lr.ph61.i.1:                                     ; preds = %.loopexit.i
  %i.ad = getelementptr i8, ptr %i.a, i64 %indvars.iv.next71.i ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %.not54.i.1 = icmp eq i8 %i.ae, 0
  br i1 %.not54.i.1, label %.loopexit.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph61.i.1
  %i.af = sext i8 %i.ae to i32
  %i.ag = shl nsw i32 %i.af, 2                    ; 2 uses
  %i.ah = load i8, ptr %i.l, align 1
  %i.ai = sext i8 %i.ah to i32                    ; 2 uses
  %i.aj = add nsw i32 %i.ag, %i.ai                ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 16
  br i1 %i.ak, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i32 %i.ai, %i.ag                ; 2 uses
  %i.am = icmp slt i32 %i.al, -15
  br i1 %i.am, label %.loopexit56.i, label %.lr.ph.preheader.i.1

.lr.ph.preheader.i.1:                             ; preds = %bb.g
  %i.an = trunc i32 %i.al to i8
  store i8 %i.an, ptr %i.l, align 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.h, %.lr.ph.preheader.i.1
  %indvars.iv72.i.1 = phi i64 [ %indvars.iv.next71.i, %.lr.ph.preheader.i.1 ], [ %indvars.iv.next73.i.1.a, %bb.h ] ; 2 uses
  %i.ao = getelementptr i8, ptr %i.a, i64 %indvars.iv72.i.1 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1
  %.not55.i.1 = icmp eq i8 %i.ap, 0
  br i1 %.not55.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.1
  store i8 0, ptr %i.ao, align 1
  %indvars.iv.next73.i.1.a = add nuw nsw i64 %indvars.iv72.i.1, 1 ; 2 uses
  %exitcond75.not.i.1 = icmp eq i64 %indvars.iv.next73.i.1.a, 256
  br i1 %exitcond75.not.i.1, label %.loopexit.i.1, label %.lr.ph.i.1, !llvm.loop !23

bb.i:                                             ; preds = %.lr.ph.i.1
  store i8 1, ptr %i.ao, align 1
  br label %.loopexit.i.1

bb.j:                                             ; preds = %bb.f
  %i.aq = trunc i32 %i.aj to i8
  store i8 %i.aq, ptr %i.l, align 1
  store i8 0, ptr %i.ad, align 1
  br label %.loopexit.i.1

.loopexit.i.1:                                    ; preds = %bb.h, %bb.j, %bb.i, %.lr.ph61.i.1
  %indvars.iv.next71.i.1 = add nuw nsw i64 %indvars.iv84.i, 3 ; 2 uses
  %exitcond83.not.i.1 = icmp eq i32 %i.o, 3
  br i1 %exitcond83.not.i.1, label %.loopexit56.i, label %.lr.ph61.i.2

.lr.ph61.i.2:                                     ; preds = %.loopexit.i.1
  %i.ar = getelementptr i8, ptr %i.a, i64 %indvars.iv.next71.i.1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %.not54.i.2 = icmp eq i8 %i.as, 0
  br i1 %.not54.i.2, label %.loopexit.i.2, label %bb.k

bb.k:                                             ; preds = %.lr.ph61.i.2
  %i.at = sext i8 %i.as to i32
  %i.au = shl nsw i32 %i.at, 3                    ; 2 uses
  %i.av = load i8, ptr %i.l, align 1
  %i.aw = sext i8 %i.av to i32                    ; 2 uses
  %i.ax = add nsw i32 %i.au, %i.aw                ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 16
  br i1 %i.ay, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = sub nsw i32 %i.aw, %i.au                ; 2 uses
  %i.ba = icmp slt i32 %i.az, -15
  br i1 %i.ba, label %.loopexit56.i, label %.lr.ph.preheader.i.2

.lr.ph.preheader.i.2:                             ; preds = %bb.l
  %i.bb = trunc i32 %i.az to i8
  store i8 %i.bb, ptr %i.l, align 1
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.m, %.lr.ph.preheader.i.2
  %indvars.iv72.i.2 = phi i64 [ %indvars.iv.next71.i.1, %.lr.ph.preheader.i.2 ], [ %indvars.iv.next73.i.2.a, %bb.m ] ; 2 uses
  %i.bc = getelementptr i8, ptr %i.a, i64 %indvars.iv72.i.2 ; 3 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %.not55.i.2 = icmp eq i8 %i.bd, 0
  br i1 %.not55.i.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.2
  store i8 0, ptr %i.bc, align 1
  %indvars.iv.next73.i.2.a = add nuw nsw i64 %indvars.iv72.i.2, 1 ; 2 uses
  %exitcond75.not.i.2 = icmp eq i64 %indvars.iv.next73.i.2.a, 256
  br i1 %exitcond75.not.i.2, label %.loopexit.i.2, label %.lr.ph.i.2, !llvm.loop !23

bb.n:                                             ; preds = %.lr.ph.i.2
  store i8 1, ptr %i.bc, align 1
  br label %.loopexit.i.2

bb.o:                                             ; preds = %bb.k
  %i.be = trunc i32 %i.ax to i8
  store i8 %i.be, ptr %i.l, align 1
  store i8 0, ptr %i.ar, align 1
  br label %.loopexit.i.2

.loopexit.i.2:                                    ; preds = %bb.m, %bb.o, %bb.n, %.lr.ph61.i.2
  %indvars.iv.next71.i.2 = add nuw nsw i64 %indvars.iv84.i, 4 ; 2 uses
  %exitcond83.not.i.2 = icmp eq i32 %i.o, 4
  br i1 %exitcond83.not.i.2, label %.loopexit56.i, label %.lr.ph61.i.3

.lr.ph61.i.3:                                     ; preds = %.loopexit.i.2
  %i.bf = getelementptr i8, ptr %i.a, i64 %indvars.iv.next71.i.2 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %.not54.i.3 = icmp eq i8 %i.bg, 0
  br i1 %.not54.i.3, label %.loopexit.i.3, label %bb.p

bb.p:                                             ; preds = %.lr.ph61.i.3
  %i.bh = sext i8 %i.bg to i32
  %i.bi = shl nsw i32 %i.bh, 4                    ; 2 uses
  %i.bj = load i8, ptr %i.l, align 1
  %i.bk = sext i8 %i.bj to i32                    ; 2 uses
  %i.bl = add nsw i32 %i.bi, %i.bk                ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 16
  br i1 %i.bm, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = sub nsw i32 %i.bk, %i.bi                ; 2 uses
  %i.bo = icmp slt i32 %i.bn, -15
  br i1 %i.bo, label %.loopexit56.i, label %.lr.ph.preheader.i.3

.lr.ph.preheader.i.3:                             ; preds = %bb.q
  %i.bp = trunc i32 %i.bn to i8
  store i8 %i.bp, ptr %i.l, align 1
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.r, %.lr.ph.preheader.i.3
  %indvars.iv72.i.3 = phi i64 [ %indvars.iv.next71.i.2, %.lr.ph.preheader.i.3 ], [ %indvars.iv.next73.i.3.a, %bb.r ] ; 2 uses
  %i.bq = getelementptr i8, ptr %i.a, i64 %indvars.iv72.i.3 ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1
  %.not55.i.3 = icmp eq i8 %i.br, 0
  br i1 %.not55.i.3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.3
  store i8 0, ptr %i.bq, align 1
  %indvars.iv.next73.i.3.a = add nuw nsw i64 %indvars.iv72.i.3, 1 ; 2 uses
  %exitcond75.not.i.3 = icmp eq i64 %indvars.iv.next73.i.3.a, 256
  br i1 %exitcond75.not.i.3, label %.loopexit.i.3, label %.lr.ph.i.3, !llvm.loop !23

bb.s:                                             ; preds = %.lr.ph.i.3
  store i8 1, ptr %i.bq, align 1
  br label %.loopexit.i.3

bb.t:                                             ; preds = %bb.p
  %i.bs = trunc i32 %i.bl to i8
  store i8 %i.bs, ptr %i.l, align 1
  store i8 0, ptr %i.bf, align 1
  br label %.loopexit.i.3

.loopexit.i.3:                                    ; preds = %bb.r, %bb.t, %bb.s, %.lr.ph61.i.3
  %indvars.iv.next71.i.3 = add nuw nsw i64 %indvars.iv84.i, 5 ; 2 uses
  %exitcond83.not.i.3 = icmp eq i32 %i.o, 5
  br i1 %exitcond83.not.i.3, label %.loopexit56.i, label %.lr.ph61.i.4

.lr.ph61.i.4:                                     ; preds = %.loopexit.i.3
  %i.bt = getelementptr i8, ptr %i.a, i64 %indvars.iv.next71.i.3 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1             ; 2 uses
  %.not54.i.4 = icmp eq i8 %i.bu, 0
  br i1 %.not54.i.4, label %.loopexit.i.4, label %bb.u

bb.u:                                             ; preds = %.lr.ph61.i.4
  %i.bv = sext i8 %i.bu to i32
  %i.bw = shl nsw i32 %i.bv, 5                    ; 2 uses
  %i.bx = load i8, ptr %i.l, align 1
  %i.by = sext i8 %i.bx to i32                    ; 2 uses
  %i.bz = add nsw i32 %i.bw, %i.by                ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 16
  br i1 %i.ca, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = sub nsw i32 %i.by, %i.bw                ; 2 uses
  %i.cc = icmp slt i32 %i.cb, -15
  br i1 %i.cc, label %.loopexit56.i, label %.lr.ph.preheader.i.4

.lr.ph.preheader.i.4:                             ; preds = %bb.v
  %i.cd = trunc i32 %i.cb to i8
  store i8 %i.cd, ptr %i.l, align 1
  br label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.w, %.lr.ph.preheader.i.4
  %indvars.iv72.i.4 = phi i64 [ %indvars.iv.next71.i.3, %.lr.ph.preheader.i.4 ], [ %indvars.iv.next73.i.4.a, %bb.w ] ; 2 uses
  %i.ce = getelementptr i8, ptr %i.a, i64 %indvars.iv72.i.4 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1
  %.not55.i.4 = icmp eq i8 %i.cf, 0
  br i1 %.not55.i.4, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.4
  store i8 0, ptr %i.ce, align 1
  %indvars.iv.next73.i.4.a = add nuw nsw i64 %indvars.iv72.i.4, 1 ; 2 uses
  %exitcond75.not.i.4 = icmp eq i64 %indvars.iv.next73.i.4.a, 256
  br i1 %exitcond75.not.i.4, label %.loopexit.i.4, label %.lr.ph.i.4, !llvm.loop !23

bb.x:                                             ; preds = %.lr.ph.i.4
  store i8 1, ptr %i.ce, align 1
  br label %.loopexit.i.4

bb.y:                                             ; preds = %bb.u
  %i.cg = trunc i32 %i.bz to i8
  store i8 %i.cg, ptr %i.l, align 1
  store i8 0, ptr %i.bt, align 1
  br label %.loopexit.i.4

.loopexit.i.4:                                    ; preds = %bb.w, %bb.y, %bb.x, %.lr.ph61.i.4
  %indvars.iv.next71.i.4 = add nuw nsw i64 %indvars.iv84.i, 6 ; 2 uses
  %exitcond83.not.i.4 = icmp eq i32 %i.o, 6
  br i1 %exitcond83.not.i.4, label %.loopexit56.i, label %.lr.ph61.i.5

.lr.ph61.i.5:                                     ; preds = %.loopexit.i.4
  %i.ch = getelementptr i8, ptr %i.a, i64 %indvars.iv.next71.i.4 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1             ; 2 uses
  %.not54.i.5 = icmp eq i8 %i.ci, 0
  br i1 %.not54.i.5, label %.loopexit56.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph61.i.5
  %i.cj = sext i8 %i.ci to i32
  %i.ck = shl nsw i32 %i.cj, 6                    ; 2 uses
  %i.cl = load i8, ptr %i.l, align 1
  %i.cm = sext i8 %i.cl to i32                    ; 2 uses
  %i.cn = add nsw i32 %i.ck, %i.cm                ; 2 uses
  %i.co = icmp slt i32 %i.cn, 16
  br i1 %i.co, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = sub nsw i32 %i.cm, %i.ck                ; 2 uses
  %i.cq = icmp slt i32 %i.cp, -15
  br i1 %i.cq, label %.loopexit56.i, label %.lr.ph.preheader.i.5

.lr.ph.preheader.i.5:                             ; preds = %bb.aa
  %i.cr = trunc i32 %i.cp to i8
  store i8 %i.cr, ptr %i.l, align 1
  br label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.ab, %.lr.ph.preheader.i.5
  %indvars.iv72.i.5 = phi i64 [ %indvars.iv.next71.i.4, %.lr.ph.preheader.i.5 ], [ %indvars.iv.next73.i.5, %bb.ab ] ; 2 uses
  %i.cs = getelementptr i8, ptr %i.a, i64 %indvars.iv72.i.5 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 1
  %.not55.i.5 = icmp eq i8 %i.ct, 0
  br i1 %.not55.i.5, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.5
  store i8 0, ptr %i.cs, align 1
  %indvars.iv.next73.i.5 = add nuw nsw i64 %indvars.iv72.i.5, 1 ; 2 uses
  %exitcond75.not.i.5 = icmp eq i64 %indvars.iv.next73.i.5, 256
  br i1 %exitcond75.not.i.5, label %.loopexit56.i, label %.lr.ph.i.5, !llvm.loop !23

bb.ac:                                            ; preds = %.lr.ph.i.5
  store i8 1, ptr %i.cs, align 1
  br label %.loopexit56.i

bb.ad:                                            ; preds = %bb.z
  %i.cu = trunc i32 %i.cn to i8
  store i8 %i.cu, ptr %i.l, align 1
  store i8 0, ptr %i.ch, align 1
  br label %.loopexit56.i

.loopexit56.i:                                    ; preds = %.loopexit.i, %bb.c, %bb.g, %.loopexit.i.1, %bb.l, %.loopexit.i.2, %bb.q, %.loopexit.i.3, %bb.v, %.loopexit.i.4, %bb.aa, %bb.ab, %bb.ad, %bb.ac, %.lr.ph61.i.5, %.preheader57.i
  %indvars.iv.next82.i = add nsw i32 %indvars.iv81.i, -1
  %exitcond87.not.i = icmp eq i64 %indvars.iv.next83.i, 256
  br i1 %exitcond87.not.i, label %vector.body182, label %.preheader57.i, !llvm.loop !24

vector.body182:                                   ; preds = %.loopexit56.i, %vector.body182
  %index183 = phi i64 [ %index.next187, %vector.body182 ], [ 0, %.loopexit56.i ] ; 3 uses
  %vec.ind184 = phi <8 x i8> [ %vec.ind.next188, %vector.body182 ], [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, %.loopexit56.i ] ; 2 uses
  %i.cv = lshr exact i64 %index183, 3
  %i.cw = and i64 %i.cv, 536870911
  %i.cx = getelementptr i8, ptr %3, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1
  %broadcast.splatinsert185 = insertelement <8 x i8> poison, i8 %i.cy, i64 0
  %broadcast.splat186 = shufflevector <8 x i8> %broadcast.splatinsert185, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cz = and <8 x i8> %vec.ind184, splat (i8 7)
  %i.da = lshr <8 x i8> %broadcast.splat186, %i.cz
  %i.db = and <8 x i8> %i.da, splat (i8 1)
  %i.dc = getelementptr i8, ptr %i.b, i64 %index183
  store <8 x i8> %i.db, ptr %i.dc, align 8
  %index.next187 = add nuw i64 %index183, 8       ; 2 uses
  %vec.ind.next188 = add <8 x i8> %vec.ind184, splat (i8 8)
  %i.dd = icmp eq i64 %index.next187, 256
  br i1 %i.dd, label %.preheader57.i26, label %vector.body182, !llvm.loop !25

.preheader57.i26:                                 ; preds = %vector.body182, %.loopexit56.i32
  %indvars.iv84.i27 = phi i64 [ %indvars.iv.next83.i30, %.loopexit56.i32 ], [ 0, %vector.body182 ] ; 8 uses
  %indvars.iv81.i28 = phi i32 [ %indvars.iv.next82.i35, %.loopexit56.i32 ], [ 254, %vector.body182 ] ; 3 uses
  %i.de = getelementptr i8, ptr %i.b, i64 %indvars.iv84.i27 ; 19 uses
  %i.df = load i8, ptr %i.de, align 1
  %.not.i30 = icmp ne i8 %i.df, 0
  %indvars.iv.next83.i30 = add nuw nsw i64 %indvars.iv84.i27, 1 ; 4 uses
  %i.dg = icmp samesign ult i64 %indvars.iv84.i27, 255
  %or.cond.i31 = select i1 %.not.i30, i1 %i.dg, i1 false
  br i1 %or.cond.i31, label %.lr.ph61.preheader.i37, label %.loopexit56.i32

.lr.ph61.preheader.i37:                           ; preds = %.preheader57.i26
  %umin.i38 = tail call i32 @llvm.umin.i32(i32 %indvars.iv81.i28, i32 5)
  %i.dh = add nuw nsw i32 %umin.i38, 2            ; 4 uses
  %i.di = getelementptr i8, ptr %i.b, i64 %indvars.iv.next83.i30 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1             ; 2 uses
  %.not54.i43 = icmp eq i8 %i.dj, 0
  br i1 %.not54.i43, label %.loopexit.i50, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph61.preheader.i37
  %i.dk = sext i8 %i.dj to i32
  %i.dl = shl nsw i32 %i.dk, 1                    ; 2 uses
  %i.dm = load i8, ptr %i.de, align 1
  %i.dn = sext i8 %i.dm to i32                    ; 2 uses
  %i.do = add nsw i32 %i.dl, %i.dn                ; 2 uses
  %i.dp = icmp slt i32 %i.do, 16
  br i1 %i.dp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dq = trunc i32 %i.do to i8
  store i8 %i.dq, ptr %i.de, align 1
  store i8 0, ptr %i.di, align 1
  br label %.loopexit.i50

bb.ag:                                            ; preds = %bb.ae
  %i.dr = sub nsw i32 %i.dn, %i.dl                ; 2 uses
  %i.ds = icmp slt i32 %i.dr, -15
  br i1 %i.ds, label %.loopexit56.i32, label %.lr.ph.preheader.i44

.lr.ph.preheader.i44:                             ; preds = %bb.ag
  %i.dt = trunc i32 %i.dr to i8
  store i8 %i.dt, ptr %i.de, align 1
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %bb.ai, %.lr.ph.preheader.i44
  %indvars.iv72.i46 = phi i64 [ %indvars.iv.next83.i30, %.lr.ph.preheader.i44 ], [ %indvars.iv.next73.i48, %bb.ai ] ; 2 uses
  %i.du = getelementptr i8, ptr %i.b, i64 %indvars.iv72.i46 ; 3 uses
  %i.dv = load i8, ptr %i.du, align 1
  %.not55.i47 = icmp eq i8 %i.dv, 0
  br i1 %.not55.i47, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i45
  store i8 1, ptr %i.du, align 1
  br label %.loopexit.i50

bb.ai:                                            ; preds = %.lr.ph.i45
  store i8 0, ptr %i.du, align 1
  %indvars.iv.next73.i48 = add nuw nsw i64 %indvars.iv72.i46, 1 ; 2 uses
  %exitcond75.not.i49 = icmp eq i64 %indvars.iv.next73.i48, 256
  br i1 %exitcond75.not.i49, label %.loopexit.i50, label %.lr.ph.i45, !llvm.loop !23

.loopexit.i50:                                    ; preds = %bb.ai, %bb.ah, %bb.af, %.lr.ph61.preheader.i37
  %indvars.iv.next71.i52 = add nuw nsw i64 %indvars.iv84.i27, 2 ; 2 uses
  %exitcond83.not.i53 = icmp eq i32 %indvars.iv81.i28, 0
  br i1 %exitcond83.not.i53, label %.loopexit56.i32, label %.lr.ph61.i40.1

.lr.ph61.i40.1:                                   ; preds = %.loopexit.i50
  %i.dw = getelementptr i8, ptr %i.b, i64 %indvars.iv.next71.i52 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1             ; 2 uses
  %.not54.i43.1 = icmp eq i8 %i.dx, 0
  br i1 %.not54.i43.1, label %.loopexit.i50.1, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph61.i40.1
  %i.dy = sext i8 %i.dx to i32
  %i.dz = shl nsw i32 %i.dy, 2                    ; 2 uses
  %i.ea = load i8, ptr %i.de, align 1
  %i.eb = sext i8 %i.ea to i32                    ; 2 uses
  %i.ec = add nsw i32 %i.dz, %i.eb                ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 16
  br i1 %i.ed, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ee = sub nsw i32 %i.eb, %i.dz                ; 2 uses
  %i.ef = icmp slt i32 %i.ee, -15
  br i1 %i.ef, label %.loopexit56.i32, label %.lr.ph.preheader.i44.1

.lr.ph.preheader.i44.1:                           ; preds = %bb.ak
  %i.eg = trunc i32 %i.ee to i8
  store i8 %i.eg, ptr %i.de, align 1
  br label %.lr.ph.i45.1

.lr.ph.i45.1:                                     ; preds = %bb.al, %.lr.ph.preheader.i44.1
  %indvars.iv72.i46.1 = phi i64 [ %indvars.iv.next71.i52, %.lr.ph.preheader.i44.1 ], [ %indvars.iv.next73.i48.1, %bb.al ] ; 2 uses
  %i.eh = getelementptr i8, ptr %i.b, i64 %indvars.iv72.i46.1 ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1
  %.not55.i47.1 = icmp eq i8 %i.ei, 0
  br i1 %.not55.i47.1, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i45.1
  store i8 0, ptr %i.eh, align 1
  %indvars.iv.next73.i48.1 = add nuw nsw i64 %indvars.iv72.i46.1, 1 ; 2 uses
  %exitcond75.not.i49.1 = icmp eq i64 %indvars.iv.next73.i48.1, 256
  br i1 %exitcond75.not.i49.1, label %.loopexit.i50.1, label %.lr.ph.i45.1, !llvm.loop !23

bb.am:                                            ; preds = %.lr.ph.i45.1
  store i8 1, ptr %i.eh, align 1
  br label %.loopexit.i50.1

bb.an:                                            ; preds = %bb.aj
  %i.ej = trunc i32 %i.ec to i8
  store i8 %i.ej, ptr %i.de, align 1
  store i8 0, ptr %i.dw, align 1
  br label %.loopexit.i50.1

.loopexit.i50.1:                                  ; preds = %bb.al, %bb.an, %bb.am, %.lr.ph61.i40.1
  %indvars.iv.next71.i52.1 = add nuw nsw i64 %indvars.iv84.i27, 3 ; 2 uses
  %exitcond83.not.i53.1 = icmp eq i32 %i.dh, 3
  br i1 %exitcond83.not.i53.1, label %.loopexit56.i32, label %.lr.ph61.i40.2

.lr.ph61.i40.2:                                   ; preds = %.loopexit.i50.1
  %i.ek = getelementptr i8, ptr %i.b, i64 %indvars.iv.next71.i52.1 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1             ; 2 uses
  %.not54.i43.2 = icmp eq i8 %i.el, 0
  br i1 %.not54.i43.2, label %.loopexit.i50.2, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph61.i40.2
  %i.em = sext i8 %i.el to i32
  %i.en = shl nsw i32 %i.em, 3                    ; 2 uses
  %i.eo = load i8, ptr %i.de, align 1
  %i.ep = sext i8 %i.eo to i32                    ; 2 uses
  %i.eq = add nsw i32 %i.en, %i.ep                ; 2 uses
  %i.er = icmp slt i32 %i.eq, 16
  br i1 %i.er, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.es = sub nsw i32 %i.ep, %i.en                ; 2 uses
  %i.et = icmp slt i32 %i.es, -15
  br i1 %i.et, label %.loopexit56.i32, label %.lr.ph.preheader.i44.2

.lr.ph.preheader.i44.2:                           ; preds = %bb.ap
  %i.eu = trunc i32 %i.es to i8
  store i8 %i.eu, ptr %i.de, align 1
  br label %.lr.ph.i45.2

.lr.ph.i45.2:                                     ; preds = %bb.aq, %.lr.ph.preheader.i44.2
  %indvars.iv72.i46.2 = phi i64 [ %indvars.iv.next71.i52.1, %.lr.ph.preheader.i44.2 ], [ %indvars.iv.next73.i48.2, %bb.aq ] ; 2 uses
  %i.ev = getelementptr i8, ptr %i.b, i64 %indvars.iv72.i46.2 ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 1
  %.not55.i47.2 = icmp eq i8 %i.ew, 0
  br i1 %.not55.i47.2, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i45.2
  store i8 0, ptr %i.ev, align 1
  %indvars.iv.next73.i48.2 = add nuw nsw i64 %indvars.iv72.i46.2, 1 ; 2 uses
  %exitcond75.not.i49.2 = icmp eq i64 %indvars.iv.next73.i48.2, 256
  br i1 %exitcond75.not.i49.2, label %.loopexit.i50.2, label %.lr.ph.i45.2, !llvm.loop !23

bb.ar:                                            ; preds = %.lr.ph.i45.2
  store i8 1, ptr %i.ev, align 1
  br label %.loopexit.i50.2

bb.as:                                            ; preds = %bb.ao
  %i.ex = trunc i32 %i.eq to i8
  store i8 %i.ex, ptr %i.de, align 1
  store i8 0, ptr %i.ek, align 1
  br label %.loopexit.i50.2

.loopexit.i50.2:                                  ; preds = %bb.aq, %bb.as, %bb.ar, %.lr.ph61.i40.2
  %indvars.iv.next71.i52.2 = add nuw nsw i64 %indvars.iv84.i27, 4 ; 2 uses
  %exitcond83.not.i53.2 = icmp eq i32 %i.dh, 4
  br i1 %exitcond83.not.i53.2, label %.loopexit56.i32, label %.lr.ph61.i40.3

.lr.ph61.i40.3:                                   ; preds = %.loopexit.i50.2
  %i.ey = getelementptr i8, ptr %i.b, i64 %indvars.iv.next71.i52.2 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1             ; 2 uses
  %.not54.i43.3 = icmp eq i8 %i.ez, 0
  br i1 %.not54.i43.3, label %.loopexit.i50.3, label %bb.at

bb.at:                                            ; preds = %.lr.ph61.i40.3
  %i.fa = sext i8 %i.ez to i32
  %i.fb = shl nsw i32 %i.fa, 4                    ; 2 uses
  %i.fc = load i8, ptr %i.de, align 1
  %i.fd = sext i8 %i.fc to i32                    ; 2 uses
  %i.fe = add nsw i32 %i.fb, %i.fd                ; 2 uses
  %i.ff = icmp slt i32 %i.fe, 16
  br i1 %i.ff, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fg = sub nsw i32 %i.fd, %i.fb                ; 2 uses
  %i.fh = icmp slt i32 %i.fg, -15
  br i1 %i.fh, label %.loopexit56.i32, label %.lr.ph.preheader.i44.3

.lr.ph.preheader.i44.3:                           ; preds = %bb.au
  %i.fi = trunc i32 %i.fg to i8
  store i8 %i.fi, ptr %i.de, align 1
  br label %.lr.ph.i45.3

.lr.ph.i45.3:                                     ; preds = %bb.av, %.lr.ph.preheader.i44.3
  %indvars.iv72.i46.3 = phi i64 [ %indvars.iv.next71.i52.2, %.lr.ph.preheader.i44.3 ], [ %indvars.iv.next73.i48.3, %bb.av ] ; 2 uses
  %i.fj = getelementptr i8, ptr %i.b, i64 %indvars.iv72.i46.3 ; 3 uses
  %i.fk = load i8, ptr %i.fj, align 1
  %.not55.i47.3 = icmp eq i8 %i.fk, 0
  br i1 %.not55.i47.3, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i45.3
  store i8 0, ptr %i.fj, align 1
  %indvars.iv.next73.i48.3 = add nuw nsw i64 %indvars.iv72.i46.3, 1 ; 2 uses
  %exitcond75.not.i49.3 = icmp eq i64 %indvars.iv.next73.i48.3, 256
  br i1 %exitcond75.not.i49.3, label %.loopexit.i50.3, label %.lr.ph.i45.3, !llvm.loop !23

bb.aw:                                            ; preds = %.lr.ph.i45.3
  store i8 1, ptr %i.fj, align 1
  br label %.loopexit.i50.3

bb.ax:                                            ; preds = %bb.at
  %i.fl = trunc i32 %i.fe to i8
  store i8 %i.fl, ptr %i.de, align 1
  store i8 0, ptr %i.ey, align 1
  br label %.loopexit.i50.3

.loopexit.i50.3:                                  ; preds = %bb.av, %bb.ax, %bb.aw, %.lr.ph61.i40.3
  %indvars.iv.next71.i52.3 = add nuw nsw i64 %indvars.iv84.i27, 5 ; 2 uses
  %exitcond83.not.i53.3 = icmp eq i32 %i.dh, 5
  br i1 %exitcond83.not.i53.3, label %.loopexit56.i32, label %.lr.ph61.i40.4

.lr.ph61.i40.4:                                   ; preds = %.loopexit.i50.3
  %i.fm = getelementptr i8, ptr %i.b, i64 %indvars.iv.next71.i52.3 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1             ; 2 uses
  %.not54.i43.4 = icmp eq i8 %i.fn, 0
  br i1 %.not54.i43.4, label %.loopexit.i50.4, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph61.i40.4
  %i.fo = sext i8 %i.fn to i32
  %i.fp = shl nsw i32 %i.fo, 5                    ; 2 uses
  %i.fq = load i8, ptr %i.de, align 1
  %i.fr = sext i8 %i.fq to i32                    ; 2 uses
  %i.fs = add nsw i32 %i.fp, %i.fr                ; 2 uses
  %i.ft = icmp slt i32 %i.fs, 16
  br i1 %i.ft, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fu = sub nsw i32 %i.fr, %i.fp                ; 2 uses
  %i.fv = icmp slt i32 %i.fu, -15
  br i1 %i.fv, label %.loopexit56.i32, label %.lr.ph.preheader.i44.4

.lr.ph.preheader.i44.4:                           ; preds = %bb.az
  %i.fw = trunc i32 %i.fu to i8
  store i8 %i.fw, ptr %i.de, align 1
  br label %.lr.ph.i45.4

.lr.ph.i45.4:                                     ; preds = %bb.ba, %.lr.ph.preheader.i44.4
  %indvars.iv72.i46.4 = phi i64 [ %indvars.iv.next71.i52.3, %.lr.ph.preheader.i44.4 ], [ %indvars.iv.next73.i48.4, %bb.ba ] ; 2 uses
  %i.fx = getelementptr i8, ptr %i.b, i64 %indvars.iv72.i46.4 ; 3 uses
  %i.fy = load i8, ptr %i.fx, align 1
  %.not55.i47.4 = icmp eq i8 %i.fy, 0
  br i1 %.not55.i47.4, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i45.4
  store i8 0, ptr %i.fx, align 1
  %indvars.iv.next73.i48.4 = add nuw nsw i64 %indvars.iv72.i46.4, 1 ; 2 uses
  %exitcond75.not.i49.4 = icmp eq i64 %indvars.iv.next73.i48.4, 256
  br i1 %exitcond75.not.i49.4, label %.loopexit.i50.4, label %.lr.ph.i45.4, !llvm.loop !23

bb.bb:                                            ; preds = %.lr.ph.i45.4
  store i8 1, ptr %i.fx, align 1
  br label %.loopexit.i50.4

bb.bc:                                            ; preds = %bb.ay
  %i.fz = trunc i32 %i.fs to i8
  store i8 %i.fz, ptr %i.de, align 1
  store i8 0, ptr %i.fm, align 1
  br label %.loopexit.i50.4

.loopexit.i50.4:                                  ; preds = %bb.ba, %bb.bc, %bb.bb, %.lr.ph61.i40.4
  %indvars.iv.next71.i52.4 = add nuw nsw i64 %indvars.iv84.i27, 6 ; 2 uses
  %exitcond83.not.i53.4 = icmp eq i32 %i.dh, 6
  br i1 %exitcond83.not.i53.4, label %.loopexit56.i32, label %.lr.ph61.i40.5

.lr.ph61.i40.5:                                   ; preds = %.loopexit.i50.4
  %i.ga = getelementptr i8, ptr %i.b, i64 %indvars.iv.next71.i52.4 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1             ; 2 uses
  %.not54.i43.5 = icmp eq i8 %i.gb, 0
  br i1 %.not54.i43.5, label %.loopexit56.i32, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph61.i40.5
  %i.gc = sext i8 %i.gb to i32
  %i.gd = shl nsw i32 %i.gc, 6                    ; 2 uses
  %i.ge = load i8, ptr %i.de, align 1
  %i.gf = sext i8 %i.ge to i32                    ; 2 uses
  %i.gg = add nsw i32 %i.gd, %i.gf                ; 2 uses
  %i.gh = icmp slt i32 %i.gg, 16
  br i1 %i.gh, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gi = sub nsw i32 %i.gf, %i.gd                ; 2 uses
  %i.gj = icmp slt i32 %i.gi, -15
  br i1 %i.gj, label %.loopexit56.i32, label %.lr.ph.preheader.i44.5

.lr.ph.preheader.i44.5:                           ; preds = %bb.be
  %i.gk = trunc i32 %i.gi to i8
  store i8 %i.gk, ptr %i.de, align 1
  br label %.lr.ph.i45.5

.lr.ph.i45.5:                                     ; preds = %bb.bf, %.lr.ph.preheader.i44.5
  %indvars.iv72.i46.5 = phi i64 [ %indvars.iv.next71.i52.4, %.lr.ph.preheader.i44.5 ], [ %indvars.iv.next73.i48.5, %bb.bf ] ; 2 uses
  %i.gl = getelementptr i8, ptr %i.b, i64 %indvars.iv72.i46.5 ; 3 uses
  %i.gm = load i8, ptr %i.gl, align 1
  %.not55.i47.5 = icmp eq i8 %i.gm, 0
  br i1 %.not55.i47.5, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i45.5
  store i8 0, ptr %i.gl, align 1
  %indvars.iv.next73.i48.5 = add nuw nsw i64 %indvars.iv72.i46.5, 1 ; 2 uses
  %exitcond75.not.i49.5 = icmp eq i64 %indvars.iv.next73.i48.5, 256
  br i1 %exitcond75.not.i49.5, label %.loopexit56.i32, label %.lr.ph.i45.5, !llvm.loop !23

bb.bg:                                            ; preds = %.lr.ph.i45.5
  store i8 1, ptr %i.gl, align 1
  br label %.loopexit56.i32

bb.bh:                                            ; preds = %bb.bd
  %i.gn = trunc i32 %i.gg to i8
  store i8 %i.gn, ptr %i.de, align 1
  store i8 0, ptr %i.ga, align 1
  br label %.loopexit56.i32

.loopexit56.i32:                                  ; preds = %.loopexit.i50, %bb.ag, %bb.ak, %.loopexit.i50.1, %bb.ap, %.loopexit.i50.2, %bb.au, %.loopexit.i50.3, %bb.az, %.loopexit.i50.4, %bb.be, %bb.bf, %bb.bh, %bb.bg, %.lr.ph61.i40.5, %.preheader57.i26
  %indvars.iv.next82.i35 = add nsw i32 %indvars.iv81.i28, -1
  %exitcond87.not.i36 = icmp eq i64 %indvars.iv.next83.i30, 256
  br i1 %exitcond87.not.i36, label %slide_vartime.exit54, label %.preheader57.i26, !llvm.loop !24

slide_vartime.exit54:                             ; preds = %.loopexit56.i32
  %i.go = getelementptr i8, ptr %2, i64 40        ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8            ; 2 uses
  %i.gq = load i64, ptr %2, align 8               ; 3 uses
  %i.gr = add i64 %i.gq, %i.gp
  %i.gs = getelementptr i8, ptr %2, i64 48
  %i.gt = load i64, ptr %i.gs, align 8            ; 2 uses
  %i.gu = getelementptr i8, ptr %2, i64 8
  %i.gv = load i64, ptr %i.gu, align 8            ; 2 uses
  %i.gw = add i64 %i.gv, %i.gt
  %i.gx = getelementptr i8, ptr %2, i64 56
  %i.gy = load i64, ptr %i.gx, align 8            ; 2 uses
  %i.gz = getelementptr i8, ptr %2, i64 16
  %i.ha = load i64, ptr %i.gz, align 8            ; 2 uses
  %i.hb = add i64 %i.ha, %i.gy
  %i.hc = getelementptr i8, ptr %2, i64 64
  %i.hd = load i64, ptr %i.hc, align 8            ; 2 uses
  %i.he = getelementptr i8, ptr %2, i64 24
  %i.hf = load i64, ptr %i.he, align 8            ; 2 uses
  %i.hg = add i64 %i.hf, %i.hd
  %i.hh = getelementptr i8, ptr %2, i64 72
  %i.hi = load i64, ptr %i.hh, align 8            ; 2 uses
  %i.hj = getelementptr i8, ptr %2, i64 32
  %i.hk = load i64, ptr %i.hj, align 8            ; 2 uses
  %i.hl = add i64 %i.hk, %i.hi
  store i64 %i.gr, ptr %5, align 16
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.gw, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.hb, ptr %i.hn, align 16
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.hg, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.hl, ptr %i.hp, align 16
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.hr = lshr i64 %i.gq, 51
  %i.hs = add i64 %i.gv, %i.hr                    ; 2 uses
  %i.ht = and i64 %i.gq, 2251799813685247
  %i.hu = lshr i64 %i.hs, 51
  %i.hv = add i64 %i.hu, %i.ha                    ; 2 uses
  %i.hw = and i64 %i.hs, 2251799813685247
  %i.hx = lshr i64 %i.hv, 51
  %i.hy = add i64 %i.hx, %i.hf                    ; 2 uses
  %i.hz = and i64 %i.hv, 2251799813685247
  %i.ia = lshr i64 %i.hy, 51
  %i.ib = add i64 %i.ia, %i.hk                    ; 2 uses
  %i.ic = and i64 %i.hy, 2251799813685247
  %i.id = lshr i64 %i.ib, 51
  %i.ie = and i64 %i.ib, 2251799813685247
  %.neg39.i.i = mul nsw i64 %i.id, -19
  %reass.sub.i = add i64 %i.gp, 4503599627370458
  %i.if = sub i64 %reass.sub.i, %i.ht
  %i.ig = add i64 %i.if, %.neg39.i.i
  %reass.sub14.i = add i64 %i.gt, 4503599627370494
  %i.ih = sub i64 %reass.sub14.i, %i.hw
  %reass.sub15.i = add i64 %i.gy, 4503599627370494
  %i.ii = sub i64 %reass.sub15.i, %i.hz
  %reass.sub16.i = add i64 %i.hd, 4503599627370494
  %i.ij = sub i64 %reass.sub16.i, %i.ic
  %i.ik = add i64 %i.hi, 4503599627370494
  %i.il = sub i64 %i.ik, %i.ie
  store i64 %i.ig, ptr %i.hq, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.ih, ptr %i.im, align 16
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.ii, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.ij, ptr %i.io, align 16
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %i.il, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ir = getelementptr i8, ptr %2, i64 80        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.iq, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ir, i64 noundef 40, i1 noundef false) #12
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.it = getelementptr i8, ptr %2, i64 120
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.is, ptr noundef readonly %i.it, ptr noundef nonnull @d2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull readonly align 8 dereferenceable(40) %2, i64 noundef 40, i1 noundef false) #12
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.iu, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.go, i64 noundef 40, i1 noundef false) #12
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.iv, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ir, i64 noundef 40, i1 noundef false) #12
  call fastcc void @ge25519_p2_dbl(ptr noundef nonnull %6, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.iw = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 29 uses
  call fastcc void @fe25519_mul(ptr noundef nonnull %8, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.iw)
  %i.ix = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.iy = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 30 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 29 uses
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.ix, ptr noundef nonnull readonly %i.iy, ptr noundef nonnull readonly %i.iz)
  %i.ja = getelementptr inbounds nuw i8, ptr %8, i64 80
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.ja, ptr noundef nonnull readonly %i.iz, ptr noundef nonnull readonly %i.iw)
  %i.jb = getelementptr inbounds nuw i8, ptr %8, i64 120
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.jb, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.iy)
  call void @ge25519_add(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %5)
  call fastcc void @fe25519_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.iw)
  %i.jc = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 19 uses
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.jc, ptr noundef nonnull readonly %i.iy, ptr noundef nonnull readonly %i.iz)
  %i.jd = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 19 uses
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.jd, ptr noundef nonnull readonly %i.iz, ptr noundef nonnull readonly %i.iw)
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 19 uses
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.je, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.iy)
  %i.jf = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  %i.jg = load i64, ptr %i.jc, align 8            ; 2 uses
  %i.jh = load i64, ptr %7, align 8               ; 3 uses
  %i.ji = add i64 %i.jh, %i.jg
  %i.jj = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 8 uses
  %i.jk = load i64, ptr %i.jj, align 8            ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  %i.jm = load i64, ptr %i.jl, align 8            ; 2 uses
  %i.jn = add i64 %i.jm, %i.jk
  %i.jo = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 8 uses
  %i.jp = load i64, ptr %i.jo, align 8            ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.jr = load i64, ptr %i.jq, align 8            ; 2 uses
  %i.js = add i64 %i.jr, %i.jp
  %i.jt = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 8 uses
  %i.ju = load i64, ptr %i.jt, align 8            ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 8 uses
  %i.jw = load i64, ptr %i.jv, align 8            ; 2 uses
  %i.jx = add i64 %i.jw, %i.ju
  %i.jy = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 8 uses
  %i.jz = load i64, ptr %i.jy, align 8            ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 8 uses
  %i.kb = load i64, ptr %i.ka, align 8            ; 2 uses
  %i.kc = add i64 %i.kb, %i.jz
  store i64 %i.ji, ptr %i.jf, align 16
  %i.kd = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 %i.jn, ptr %i.kd, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i64 %i.js, ptr %i.ke, align 16
  %i.kf = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i64 %i.jx, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 %i.kc, ptr %i.kg, align 16
  %i.kh = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.ki = lshr i64 %i.jh, 51
  %i.kj = add i64 %i.jm, %i.ki                    ; 2 uses
  %i.kk = and i64 %i.jh, 2251799813685247
  %i.kl = lshr i64 %i.kj, 51
  %i.km = add i64 %i.kl, %i.jr                    ; 2 uses
  %i.kn = and i64 %i.kj, 2251799813685247
  %i.ko = lshr i64 %i.km, 51
  %i.kp = add i64 %i.ko, %i.jw                    ; 2 uses
  %i.kq = and i64 %i.km, 2251799813685247
  %i.kr = lshr i64 %i.kp, 51
  %i.ks = add i64 %i.kr, %i.kb                    ; 2 uses
  %i.kt = and i64 %i.kp, 2251799813685247
  %i.ku = lshr i64 %i.ks, 51
  %i.kv = and i64 %i.ks, 2251799813685247
  %.neg39.i.i55 = mul nsw i64 %i.ku, -19
  %reass.sub.i56 = add i64 %i.jg, 4503599627370458
  %i.kw = sub i64 %reass.sub.i56, %i.kk
  %i.kx = add i64 %i.kw, %.neg39.i.i55
  %reass.sub14.i57 = add i64 %i.jk, 4503599627370494
  %i.ky = sub i64 %reass.sub14.i57, %i.kn
  %reass.sub15.i58 = add i64 %i.jp, 4503599627370494
  %i.kz = sub i64 %reass.sub15.i58, %i.kq
  %reass.sub16.i59 = add i64 %i.ju, 4503599627370494
  %i.la = sub i64 %reass.sub16.i59, %i.kt
  %i.lb = add i64 %i.jz, 4503599627370494
  %i.lc = sub i64 %i.lb, %i.kv
  store i64 %i.kx, ptr %i.kh, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i64 %i.ky, ptr %i.ld, align 16
  %i.le = getelementptr inbounds nuw i8, ptr %5, i64 216
  store i64 %i.kz, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %5, i64 224
  store i64 %i.la, ptr %i.lf, align 16
  %i.lg = getelementptr inbounds nuw i8, ptr %5, i64 232
  store i64 %i.lc, ptr %i.lg, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %5, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.lh, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.jd, i64 noundef 40, i1 noundef false) #12
  %i.li = getelementptr inbounds nuw i8, ptr %5, i64 280
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.li, ptr noundef nonnull readonly %i.je, ptr noundef nonnull @d2)
  call void @ge25519_add(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %i.jf)
  call fastcc void @fe25519_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.iw)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.jc, ptr noundef nonnull readonly %i.iy, ptr noundef nonnull readonly %i.iz)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.jd, ptr noundef nonnull readonly %i.iz, ptr noundef nonnull readonly %i.iw)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.je, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.iy)
  %i.lj = getelementptr inbounds nuw i8, ptr %5, i64 320 ; 2 uses
  %i.lk = load i64, ptr %i.jc, align 8            ; 2 uses
  %i.ll = load i64, ptr %7, align 8               ; 3 uses
  %i.lm = add i64 %i.ll, %i.lk
  %i.ln = load i64, ptr %i.jj, align 8            ; 2 uses
  %i.lo = load i64, ptr %i.jl, align 8            ; 2 uses
  %i.lp = add i64 %i.lo, %i.ln
  %i.lq = load i64, ptr %i.jo, align 8            ; 2 uses
  %i.lr = load i64, ptr %i.jq, align 8            ; 2 uses
  %i.ls = add i64 %i.lr, %i.lq
  %i.lt = load i64, ptr %i.jt, align 8            ; 2 uses
  %i.lu = load i64, ptr %i.jv, align 8            ; 2 uses
  %i.lv = add i64 %i.lu, %i.lt
  %i.lw = load i64, ptr %i.jy, align 8            ; 2 uses
  %i.lx = load i64, ptr %i.ka, align 8            ; 2 uses
  %i.ly = add i64 %i.lx, %i.lw
  store i64 %i.lm, ptr %i.lj, align 16
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 328
end_hunk_0
