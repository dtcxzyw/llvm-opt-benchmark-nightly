Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/takdec?download=true
inline.NumInlined: 72
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@decode_channel:bb.a
  store i32 %i.ib, ptr %i.k, align 8, !tbaa !42
  %i.ic = trunc i64 %i.hy to i32
  %i.id = and i32 %i.ic, 63                       ; 2 uses
  %i.ie = sub nsw i32 %i.id, %i.hg
  %i.if = mul nsw i32 %i.ie, %i.dz                ; 2 uses
  %i.ig = trunc i32 %i.if to i16
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 868
  store i16 %i.ig, ptr %i.ih, align 4, !tbaa !55
  %sext73.4 = shl i32 %i.if, 16
  %i.ii = ashr exact i32 %sext73.4, 16            ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, 0
  br i1 %i.ij, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bits_read_nz_le.exit85.4
  %i.ik = sub nsw i32 %i.hn, %i.ii                ; 2 uses
  %exitcond.not.4 = icmp eq i64 %wide.trip.count, 5
  br i1 %exitcond.not.4, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.il = icmp ult i32 %i.ib, 6
  br i1 %i.il, label %bb.y, label %bits_read_nz_le.exit85.5

bb.y:                                             ; preds = %bb.x
  %i.im = load ptr, ptr %i.eb, align 8, !tbaa !43
  %.not.i.i83.5 = icmp ult ptr %i.hx, %i.im
  br i1 %.not.i.i83.5, label %bits_priv_refill_32_le.exit.i84.5, label %bits_read_nz_le.exit85.5

bits_priv_refill_32_le.exit.i84.5:                ; preds = %bb.y
  %i.in = load i32, ptr %i.hx, align 1, !tbaa !46
  %i.io = zext i32 %i.in to i64
  %i.ip = zext nneg i32 %i.ib to i64
  %i.iq = shl nuw nsw i64 %i.io, %i.ip
  %i.ir = or i64 %i.iq, %i.ia
  %i.is = getelementptr inbounds nuw i8, ptr %i.hx, i64 4 ; 2 uses
  store ptr %i.is, ptr %i.dl, align 16, !tbaa !41
  %i.it = or disjoint i32 %i.ib, 32
  br label %bits_read_nz_le.exit85.5

bits_read_nz_le.exit85.5:                         ; preds = %bits_priv_refill_32_le.exit.i84.5, %bb.y, %bb.x
  %i.iu = phi ptr [ %i.is, %bits_priv_refill_32_le.exit.i84.5 ], [ %i.hx, %bb.x ], [ %i.hx, %bb.y ] ; 3 uses
  %i.iv = phi i64 [ %i.ir, %bits_priv_refill_32_le.exit.i84.5 ], [ %i.ia, %bb.x ], [ %i.ia, %bb.y ] ; 2 uses
  %i.iw = phi i32 [ %i.it, %bits_priv_refill_32_le.exit.i84.5 ], [ %i.ib, %bb.x ], [ 6, %bb.y ]
  %i.ix = lshr i64 %i.iv, 6                       ; 4 uses
  store i64 %i.ix, ptr %i.c, align 8, !tbaa !45
  %i.iy = add i32 %i.iw, -6                       ; 5 uses
  store i32 %i.iy, ptr %i.k, align 8, !tbaa !42
  %i.iz = trunc i64 %i.iv to i32
  %i.ja = and i32 %i.iz, 63                       ; 2 uses
  %i.jb = sub nsw i32 %i.ja, %i.id
  %i.jc = mul nsw i32 %i.jb, %i.dz                ; 2 uses
  %i.jd = trunc i32 %i.jc to i16
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 870
  store i16 %i.jd, ptr %i.je, align 2, !tbaa !55
  %sext73.5 = shl i32 %i.jc, 16
  %i.jf = ashr exact i32 %sext73.5, 16            ; 2 uses
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bits_read_nz_le.exit85.5
  %i.jh = sub nsw i32 %i.ik, %i.jf                ; 2 uses
  %exitcond.not.5 = icmp eq i64 %wide.trip.count, 6
  br i1 %exitcond.not.5, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ji = icmp ult i32 %i.iy, 6
  br i1 %i.ji, label %bb.ab, label %bits_read_nz_le.exit85.6

bb.ab:                                            ; preds = %bb.aa
  %i.jj = load ptr, ptr %i.eb, align 8, !tbaa !43
  %.not.i.i83.6 = icmp ult ptr %i.iu, %i.jj
  br i1 %.not.i.i83.6, label %bits_priv_refill_32_le.exit.i84.6, label %bits_read_nz_le.exit85.6

bits_priv_refill_32_le.exit.i84.6:                ; preds = %bb.ab
  %i.jk = load i32, ptr %i.iu, align 1, !tbaa !46
  %i.jl = zext i32 %i.jk to i64
  %i.jm = zext nneg i32 %i.iy to i64
  %i.jn = shl nuw nsw i64 %i.jl, %i.jm
  %i.jo = or i64 %i.jn, %i.ix
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  store ptr %i.jp, ptr %i.dl, align 16, !tbaa !41
  %i.jq = or disjoint i32 %i.iy, 32
  br label %bits_read_nz_le.exit85.6

bits_read_nz_le.exit85.6:                         ; preds = %bits_priv_refill_32_le.exit.i84.6, %bb.ab, %bb.aa
  %i.jr = phi i64 [ %i.jo, %bits_priv_refill_32_le.exit.i84.6 ], [ %i.ix, %bb.aa ], [ %i.ix, %bb.ab ] ; 2 uses
  %i.js = phi i32 [ %i.jq, %bits_priv_refill_32_le.exit.i84.6 ], [ %i.iy, %bb.aa ], [ 6, %bb.ab ]
  %i.jt = lshr i64 %i.jr, 6
  store i64 %i.jt, ptr %i.c, align 8, !tbaa !45
  %i.ju = add i32 %i.js, -6
  store i32 %i.ju, ptr %i.k, align 8, !tbaa !42
  %i.jv = trunc i64 %i.jr to i32
  %i.jw = and i32 %i.jv, 63
  %i.jx = sub nsw i32 %i.jw, %i.ja
  %i.jy = mul nsw i32 %i.jx, %i.dz                ; 2 uses
  %i.jz = trunc i32 %i.jy to i16
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i16 %i.jz, ptr %i.ka, align 8, !tbaa !55
  %sext73.6 = shl i32 %i.jy, 16
  %i.kb = ashr exact i32 %sext73.6, 16            ; 2 uses
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bits_read_nz_le.exit85.6
  %i.kd = sub nsw i32 %i.jh, %i.kb
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k
  %.lcssa282 = phi i32 [ %i.ew, %bb.k ], [ %i.ft, %bb.n ], [ %i.gq, %bb.q ], [ %i.hn, %bb.t ], [ %i.ik, %bb.w ], [ %i.jh, %bb.z ], [ %i.kd, %bb.ac ] ; 2 uses
  %i.ke = icmp slt i32 %.lcssa282, 1
  br i1 %i.ke, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad, %bits_read_nz_le.exit81
  %.264 = phi i32 [ %.lcssa282, %bb.ad ], [ %i.j, %bits_read_nz_le.exit81 ]
  %i.kf = trunc i32 %.264 to i16
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 860 ; 2 uses
  %i.kh = and i64 %.val.i.i78, 7
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.kg, i64 %i.kh
  store i16 %i.kf, ptr %i.ki, align 2, !tbaa !55
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 26 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 16 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 346
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 350
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 6 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 10 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.bp
  %indvars.iv133 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next134, %bb.bp ] ; 2 uses
  %.2118 = phi i32 [ 0, %.lr.ph ], [ %i.aef, %bb.bp ] ; 2 uses
  %.065115 = phi ptr [ %i.bu, %.lr.ph ], [ %i.aeh, %bb.bp ] ; 7 uses
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.kg, i64 %indvars.iv133 ; 2 uses
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !55 ; 2 uses
  %i.kw = sext i16 %i.kv to i32                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.kx = load i32, ptr %i.k, align 8, !tbaa !42  ; 3 uses
  %.not.i.i86 = icmp eq i32 %i.kx, 0
  br i1 %.not.i.i86, label %bb.af, label %bits_read_bit_le.exit.i87

bb.af:                                            ; preds = %bb.ae
  %i.ky = load ptr, ptr %i.kj, align 16, !tbaa !41 ; 3 uses
  %i.kz = load ptr, ptr %i.kk, align 8, !tbaa !43
  %.not.i.i.i92 = icmp ult ptr %i.ky, %i.kz
  br i1 %.not.i.i.i92, label %bits_read_bit_le.exit.thread492.i, label %decode_subframe.exit

bits_read_bit_le.exit.i87:                        ; preds = %bb.ae
  %.val.i.pre.i.i88 = load i64, ptr %i.c, align 8, !tbaa !45 ; 2 uses
  %i.la = add i32 %i.kx, -1                       ; 4 uses
  %i.lb = lshr i64 %.val.i.pre.i.i88, 1           ; 4 uses
  store i64 %i.lb, ptr %i.c, align 8, !tbaa !45
  store i32 %i.la, ptr %i.k, align 8, !tbaa !42
  %i.lc = and i64 %.val.i.pre.i.i88, 1
  %.not.i89 = icmp eq i64 %i.lc, 0
  br i1 %.not.i89, label %decode_subframe.exit, label %bb.ag

bits_read_bit_le.exit.thread492.i:                ; preds = %bb.af
  %i.ld = load i64, ptr %i.ky, align 1, !tbaa !46 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store ptr %i.le, ptr %i.kj, align 16, !tbaa !41
  %i.lf = lshr i64 %i.ld, 1                       ; 2 uses
  store i64 %i.lf, ptr %i.c, align 8, !tbaa !45
  store i32 63, ptr %i.k, align 8, !tbaa !42
  %i.lg = and i64 %i.ld, 1
  %.not494.i = icmp eq i64 %i.lg, 0
  br i1 %.not494.i, label %decode_subframe.exit, label %bits_read_nz_le.exit.i90

bb.ag:                                            ; preds = %bits_read_bit_le.exit.i87
  %i.lh = icmp ult i32 %i.kx, 5
  br i1 %i.lh, label %bb.ah, label %bits_read_nz_le.exit.i90

bb.ah:                                            ; preds = %bb.ag
  %i.li = load ptr, ptr %i.kj, align 16, !tbaa !41 ; 3 uses
  %i.lj = load ptr, ptr %i.kk, align 8, !tbaa !43
  %.not.i.i216.i = icmp ult ptr %i.li, %i.lj
  br i1 %.not.i.i216.i, label %bits_priv_refill_32_le.exit.i.i91, label %bits_read_nz_le.exit.i90

bits_priv_refill_32_le.exit.i.i91:                ; preds = %bb.ah
  %i.lk = load i32, ptr %i.li, align 1, !tbaa !46
  %i.ll = zext i32 %i.lk to i64
  %i.lm = zext nneg i32 %i.la to i64
  %i.ln = shl nuw nsw i64 %i.ll, %i.lm
  %i.lo = or i64 %i.ln, %i.lb
  %i.lp = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store ptr %i.lp, ptr %i.kj, align 16, !tbaa !41
  %i.lq = or disjoint i32 %i.la, 32
  br label %bits_read_nz_le.exit.i90

bits_read_nz_le.exit.i90:                         ; preds = %bits_priv_refill_32_le.exit.i.i91, %bb.ah, %bb.ag, %bits_read_bit_le.exit.thread492.i
  %.val.i.i215.i = phi i64 [ %i.lo, %bits_priv_refill_32_le.exit.i.i91 ], [ %i.lb, %bb.ag ], [ %i.lb, %bb.ah ], [ %i.lf, %bits_read_bit_le.exit.thread492.i ] ; 3 uses
  %i.lr = phi i32 [ %i.lq, %bits_priv_refill_32_le.exit.i.i91 ], [ %i.la, %bb.ag ], [ 4, %bb.ah ], [ 63, %bits_read_bit_le.exit.thread492.i ] ; 2 uses
  %i.ls = lshr i64 %.val.i.i215.i, 4              ; 4 uses
  store i64 %i.ls, ptr %i.c, align 8, !tbaa !45
  %i.lt = add i32 %i.lr, -4                       ; 3 uses
  store i32 %i.lt, ptr %i.k, align 8, !tbaa !42
  %i.lu = trunc i64 %.val.i.i215.i to i32
  %i.lv = and i32 %i.lu, 15
  %i.lw = and i64 %.val.i.i215.i, 15
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr @predictor_sizes, i64 %i.lw
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !55 ; 14 uses
  %i.lz = zext i16 %i.ly to i32                   ; 12 uses
  %i.ma = icmp sgt i32 %.2118, 0
  br i1 %i.ma, label %bb.ai, label %bits_read_bit_le.exit224.thread.i

bb.ai:                                            ; preds = %bits_read_nz_le.exit.i90
  %.not.i217.i = icmp eq i32 %i.lt, 0
  br i1 %.not.i217.i, label %bb.aj, label %._crit_edge.i218.i

._crit_edge.i218.i:                               ; preds = %bb.ai
  %i.mb = add i32 %i.lr, -5
  br label %bits_read_bit_le.exit224.i

bb.aj:                                            ; preds = %bb.ai
  %i.mc = load ptr, ptr %i.kj, align 16, !tbaa !41 ; 3 uses
  %i.md = load ptr, ptr %i.kk, align 8, !tbaa !43
  %.not.i.i222.i = icmp ult ptr %i.mc, %i.md
  br i1 %.not.i.i222.i, label %bits_priv_refill_64_le.exit.i223.i, label %bits_read_bit_le.exit224.thread.thread.i

bits_priv_refill_64_le.exit.i223.i:               ; preds = %bb.aj
  %i.me = load i64, ptr %i.mc, align 1, !tbaa !46
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store ptr %i.mf, ptr %i.kj, align 16, !tbaa !41
  br label %bits_read_bit_le.exit224.i

bits_read_bit_le.exit224.i:                       ; preds = %bits_priv_refill_64_le.exit.i223.i, %._crit_edge.i218.i
  %i.mg = phi i32 [ %i.mb, %._crit_edge.i218.i ], [ 63, %bits_priv_refill_64_le.exit.i223.i ] ; 2 uses
  %.val.i.i220.i = phi i64 [ %i.ls, %._crit_edge.i218.i ], [ %i.me, %bits_priv_refill_64_le.exit.i223.i ] ; 2 uses
  %i.mh = lshr i64 %.val.i.i220.i, 1              ; 2 uses
  store i64 %i.mh, ptr %i.c, align 8, !tbaa !45
  store i32 %i.mg, ptr %i.k, align 8, !tbaa !42
  %i.mi = and i64 %.val.i.i220.i, 1
  %.not209.i = icmp eq i64 %i.mi, 0
  br i1 %.not209.i, label %bits_read_bit_le.exit224.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bits_read_bit_le.exit224.i
  %i.mj = icmp samesign ult i32 %.2118, %i.lz
  br i1 %i.mj, label %decode_subframe.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mk = zext i16 %i.ly to i64
  %i.ml = sub nsw i64 0, %i.mk
  %i.mm = getelementptr inbounds [4 x i8], ptr %.065115, i64 %i.ml
  %i.mn = add nuw nsw i32 %i.lz, %i.kw
  %i.mo = icmp slt i16 %i.kv, 0
  br i1 %i.mo, label %decode_subframe.exit.thread, label %bb.aq

bits_read_bit_le.exit224.thread.i:                ; preds = %bits_read_bit_le.exit224.i, %bits_read_nz_le.exit.i90
  %i.mp = phi i64 [ %i.ls, %bits_read_nz_le.exit.i90 ], [ %i.mh, %bits_read_bit_le.exit224.i ] ; 3 uses
  %i.mq = phi i32 [ %i.lt, %bits_read_nz_le.exit.i90 ], [ %i.mg, %bits_read_bit_le.exit224.i ] ; 4 uses
  %i.mr = icmp slt i32 %i.kw, %i.lz
  br i1 %i.mr, label %decode_subframe.exit.thread, label %bb.am

bits_read_bit_le.exit224.thread.thread.i:         ; preds = %bb.aj
  %i.ms = icmp slt i32 %i.kw, %i.lz
  br i1 %i.ms, label %decode_subframe.exit.thread, label %bits_read_nz_le.exit228.i

bb.am:                                            ; preds = %bits_read_bit_le.exit224.thread.i
  %i.mt = icmp ult i32 %i.mq, 2
  br i1 %i.mt, label %.thread496.i, label %bits_read_nz_le.exit228.i

.thread496.i:                                     ; preds = %bb.am
  %.pre = load ptr, ptr %i.kj, align 16, !tbaa !41 ; 3 uses
  %.pre139 = load ptr, ptr %i.kk, align 8, !tbaa !43
  %i.mu = icmp ult ptr %.pre, %.pre139
  br i1 %i.mu, label %bits_priv_refill_32_le.exit.i227.i, label %bits_read_nz_le.exit228.i

bits_priv_refill_32_le.exit.i227.i:               ; preds = %.thread496.i
  %i.mv = load i32, ptr %.pre, align 1, !tbaa !46
  %i.mw = zext i32 %i.mv to i64
  %i.mx = zext nneg i32 %i.mq to i64
  %i.my = shl nuw nsw i64 %i.mw, %i.mx
  %i.mz = or i64 %i.my, %i.mp
  %i.na = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  store ptr %i.na, ptr %i.kj, align 16, !tbaa !41
  %i.nb = or disjoint i32 %i.mq, 32
  br label %bits_read_nz_le.exit228.i

bits_read_nz_le.exit228.i:                        ; preds = %bits_read_bit_le.exit224.thread.thread.i, %bits_priv_refill_32_le.exit.i227.i, %.thread496.i, %bb.am
  %.val.i.i225.i = phi i64 [ %i.mz, %bits_priv_refill_32_le.exit.i227.i ], [ %i.mp, %bb.am ], [ %i.mp, %.thread496.i ], [ %i.ls, %bits_read_bit_le.exit224.thread.thread.i ] ; 2 uses
  %i.nc = phi i32 [ %i.nb, %bits_priv_refill_32_le.exit.i227.i ], [ %i.mq, %bb.am ], [ 2, %.thread496.i ], [ 2, %bits_read_bit_le.exit224.thread.thread.i ]
  %i.nd = lshr i64 %.val.i.i225.i, 2
  store i64 %i.nd, ptr %i.c, align 8, !tbaa !45
  %i.ne = add i32 %i.nc, -2
  store i32 %i.ne, ptr %i.k, align 8, !tbaa !42
  %i.nf = trunc i64 %.val.i.i225.i to i32
  %i.ng = and i32 %i.nf, 3                        ; 3 uses
  %i.nh = icmp eq i32 %i.ng, 3
  br i1 %i.nh, label %decode_subframe.exit.thread, label %bb.an

bb.an:                                            ; preds = %bits_read_nz_le.exit228.i
  %i.ni = tail call fastcc i32 @decode_residues(ptr noundef nonnull %0, ptr noundef %.065115, i32 noundef %i.lz) ; 2 uses
  %i.nj = icmp slt i32 %i.ni, 0
  br i1 %i.nj, label %decode_subframe.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not210.i = icmp eq i32 %i.ng, 0
  br i1 %.not210.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @decode_lpc(ptr noundef %.065115, i32 noundef %i.ng, i32 noundef %i.lz)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.al
  %.0194.i = phi ptr [ %i.mm, %bb.al ], [ %.065115, %bb.ao ], [ %.065115, %bb.ap ] ; 5 uses
  %.0193.i = phi i32 [ %i.mn, %bb.al ], [ %i.kw, %bb.ao ], [ %i.kw, %bb.ap ]
  %i.nk = load i32, ptr %i.k, align 8, !tbaa !42  ; 3 uses
  %.not.i.i229.i = icmp eq i32 %i.nk, 0
  br i1 %.not.i.i229.i, label %bb.ar, label %bits_read_bit_le.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.nl = load ptr, ptr %i.kj, align 16, !tbaa !41 ; 3 uses
  %i.nm = load ptr, ptr %i.kk, align 8, !tbaa !43
  %.not.i.i.i.i = icmp ult ptr %i.nl, %i.nm
  br i1 %.not.i.i.i.i, label %bits_read_bit_le.exit.thread11.i.i, label %bits_read_bit_le.exit247.thread.i

bits_read_bit_le.exit.i.i:                        ; preds = %bb.aq
  %.val.i.pre.i.i.i = load i64, ptr %i.c, align 8, !tbaa !45 ; 2 uses
  %i.nn = add i32 %i.nk, -1                       ; 5 uses
  %i.no = lshr i64 %.val.i.pre.i.i.i, 1           ; 5 uses
  store i64 %i.no, ptr %i.c, align 8, !tbaa !45
  store i32 %i.nn, ptr %i.k, align 8, !tbaa !42
  %i.np = and i64 %.val.i.pre.i.i.i, 1
  %.not.i230.i = icmp eq i64 %i.np, 0
  br i1 %.not.i230.i, label %get_bits_esc4.exit.i, label %bb.as

bits_read_bit_le.exit.thread11.i.i:               ; preds = %bb.ar
  %i.nq = load i64, ptr %i.nl, align 1, !tbaa !46 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  store ptr %i.nr, ptr %i.kj, align 16, !tbaa !41
  %i.ns = lshr i64 %i.nq, 1                       ; 3 uses
  store i64 %i.ns, ptr %i.c, align 8, !tbaa !45
  store i32 63, ptr %i.k, align 8, !tbaa !42
  %i.nt = and i64 %i.nq, 1
  %.not13.i.i = icmp eq i64 %i.nt, 0
  br i1 %.not13.i.i, label %bits_read_bit_le.exit239.thread510.i, label %bits_read_nz_le.exit.i.i

bb.as:                                            ; preds = %bits_read_bit_le.exit.i.i
  %i.nu = icmp ult i32 %i.nk, 5
  br i1 %i.nu, label %bb.at, label %bits_read_nz_le.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.nv = load ptr, ptr %i.kj, align 16, !tbaa !41 ; 3 uses
  %i.nw = load ptr, ptr %i.kk, align 8, !tbaa !43
  %.not.i.i3.i.i = icmp ult ptr %i.nv, %i.nw
  br i1 %.not.i.i3.i.i, label %bits_priv_refill_32_le.exit.i.i.i, label %bits_read_nz_le.exit.i.i

bits_priv_refill_32_le.exit.i.i.i:                ; preds = %bb.at
  %i.nx = load i32, ptr %i.nv, align 1, !tbaa !46
  %i.ny = zext i32 %i.nx to i64
  %i.nz = zext nneg i32 %i.nn to i64
  %i.oa = shl nuw nsw i64 %i.ny, %i.nz
  %i.ob = or i64 %i.oa, %i.no
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  store ptr %i.oc, ptr %i.kj, align 16, !tbaa !41
  %i.od = or disjoint i32 %i.nn, 32
  br label %bits_read_nz_le.exit.i.i

bits_read_nz_le.exit.i.i:                         ; preds = %bits_priv_refill_32_le.exit.i.i.i, %bb.at, %bb.as, %bits_read_bit_le.exit.thread11.i.i
  %.val.i.i2.i.i = phi i64 [ %i.ob, %bits_priv_refill_32_le.exit.i.i.i ], [ %i.no, %bb.as ], [ %i.no, %bb.at ], [ %i.ns, %bits_read_bit_le.exit.thread11.i.i ] ; 2 uses
  %i.oe = phi i32 [ %i.od, %bits_priv_refill_32_le.exit.i.i.i ], [ %i.nn, %bb.as ], [ 4, %bb.at ], [ 63, %bits_read_bit_le.exit.thread11.i.i ]
  %i.of = lshr i64 %.val.i.i2.i.i, 4              ; 2 uses
  store i64 %i.of, ptr %i.c, align 8, !tbaa !45
  %i.og = add i32 %i.oe, -4                       ; 2 uses
  store i32 %i.og, ptr %i.k, align 8, !tbaa !42
  %i.oh = trunc i64 %.val.i.i2.i.i to i32
  %i.oi = and i32 %i.oh, 15
  %i.oj = add nuw nsw i32 %i.oi, 1
  br label %get_bits_esc4.exit.i

get_bits_esc4.exit.i:                             ; preds = %bits_read_nz_le.exit.i.i, %bits_read_bit_le.exit.i.i
  %.val.i.pre.i234.pre.i = phi i64 [ %i.of, %bits_read_nz_le.exit.i.i ], [ %i.no, %bits_read_bit_le.exit.i.i ] ; 2 uses
  %.pr310.i = phi i32 [ %i.og, %bits_read_nz_le.exit.i.i ], [ %i.nn, %bits_read_bit_le.exit.i.i ] ; 2 uses
  %.0.i231.i = phi i32 [ %i.oj, %bits_read_nz_le.exit.i.i ], [ 0, %bits_read_bit_le.exit.i.i ] ; 6 uses
  %.not.i232.i = icmp eq i32 %.pr310.i, 0
  br i1 %.not.i232.i, label %get_bits_esc4.exit.thread.i, label %bits_read_bit_le.exit239.i

get_bits_esc4.exit.thread.i:                      ; preds = %get_bits_esc4.exit.i
  %.pre141 = load ptr, ptr %i.kj, align 16, !tbaa !41 ; 3 uses
  %.pre142 = load ptr, ptr %i.kk, align 8, !tbaa !43
  %i.ok = icmp ult ptr %.pre141, %.pre142
  br i1 %i.ok, label %bits_priv_refill_64_le.exit.i238.i, label %bits_read_bit_le.exit247.thread.i

bits_priv_refill_64_le.exit.i238.i:               ; preds = %get_bits_esc4.exit.thread.i
  %i.ol = load i64, ptr %.pre141, align 1, !tbaa !46
  %i.om = getelementptr inbounds nuw i8, ptr %.pre141, i64 8
  store ptr %i.om, ptr %i.kj, align 16, !tbaa !41
  br label %bits_read_bit_le.exit239.thread510.i

bits_read_bit_le.exit239.thread510.i:             ; preds = %bits_priv_refill_64_le.exit.i238.i, %bits_read_bit_le.exit.thread11.i.i
  %.0.i231308.ph.i = phi i32 [ 0, %bits_read_bit_le.exit.thread11.i.i ], [ %.0.i231.i, %bits_priv_refill_64_le.exit.i238.i ]
  %.ph.i = phi i32 [ 62, %bits_read_bit_le.exit.thread11.i.i ], [ 63, %bits_priv_refill_64_le.exit.i238.i ]
  %.val.i.i235.ph.i = phi i64 [ %i.ns, %bits_read_bit_le.exit.thread11.i.i ], [ %i.ol, %bits_priv_refill_64_le.exit.i238.i ] ; 2 uses
  %i.on = lshr i64 %.val.i.i235.ph.i, 1
  %i.oo = trunc i64 %.val.i.i235.ph.i to i32
  %i.op = and i32 %i.oo, 1                        ; 2 uses
  %i.oq = or disjoint i32 %i.op, 6
  br label %bits_read_bit_le.exit247.i

bits_read_bit_le.exit239.i:                       ; preds = %get_bits_esc4.exit.i
  %i.or = add i32 %.pr310.i, -1                   ; 3 uses
  %i.os = lshr i64 %.val.i.pre.i234.pre.i, 1      ; 2 uses
end_hunk_0
begin_hunk_1_@decode_channel:bb.a
  %i.qa = phi i32 [ %i.pu, %bits_read_nz_le.exit251.i ], [ %i.pa, %bits_read_bit_le.exit247.i ], [ 0, %bits_read_bit_le.exit239.thread.i ], [ 63, %bits_read_bit_le.exit247.thread515.i ], [ 0, %get_bits_esc4.exit.thread.i ], [ 0, %bb.ar ] ; 5 uses
  %.0182.i = phi i32 [ %i.px, %bits_read_nz_le.exit251.i ], [ 10, %bits_read_bit_le.exit247.i ], [ 10, %bits_read_bit_le.exit239.thread.i ], [ 10, %bits_read_bit_le.exit247.thread515.i ], [ 10, %get_bits_esc4.exit.thread.i ], [ 10, %bb.ar ] ; 7 uses
  %i.qb = load ptr, ptr %i.kl, align 16, !tbaa !40
  %i.qc = load ptr, ptr %i.kj, align 16, !tbaa !41 ; 6 uses
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = ptrtoint ptr %i.qc to i64
  %i.qf = sub i64 %i.qd, %i.qe
  %i.qg = load i32, ptr %i.km, align 4, !tbaa !44
  %.tr.i.i = trunc i64 %i.qf to i32
  %i.qh = shl i32 %.tr.i.i, 3
  %i.qi = add i32 %i.qg, %i.qa
  %i.qj = add i32 %i.qi, %i.qh
  %i.qk = shl nuw nsw i32 %i.pz, 1
  %i.ql = add nuw nsw i32 %i.qk, 20
  %i.qm = icmp slt i32 %i.qj, %i.ql
  br i1 %i.qm, label %decode_subframe.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bits_read_bit_le.exit247.thread.i
  %i.qn = icmp ult i32 %i.qa, 10
  br i1 %i.qn, label %bb.ax, label %.bits_read_nz_le.exit_crit_edge.i.i

.bits_read_nz_le.exit_crit_edge.i.i:              ; preds = %bb.aw
  %.val.i.i.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !45
  br label %bits_read_signed_nz_le.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.qo = load ptr, ptr %i.kk, align 8, !tbaa !43
  %.not.i.i.i253.i = icmp ult ptr %i.qc, %i.qo
  %.val.i.i.pre2.i.i = load i64, ptr %i.c, align 8, !tbaa !45 ; 2 uses
  br i1 %.not.i.i.i253.i, label %bits_priv_refill_32_le.exit.i.i254.i, label %bits_read_signed_nz_le.exit.i

bits_priv_refill_32_le.exit.i.i254.i:             ; preds = %bb.ax
  %i.qp = load i32, ptr %i.qc, align 1, !tbaa !46
  %i.qq = zext i32 %i.qp to i64
  %i.qr = zext nneg i32 %i.qa to i64
  %i.qs = shl nuw nsw i64 %i.qq, %i.qr
  %i.qt = or i64 %i.qs, %.val.i.i.pre2.i.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qc, i64 4 ; 2 uses
  store ptr %i.qu, ptr %i.kj, align 16, !tbaa !41
  %i.qv = or disjoint i32 %i.qa, 32
  br label %bits_read_signed_nz_le.exit.i

bits_read_signed_nz_le.exit.i:                    ; preds = %bits_priv_refill_32_le.exit.i.i254.i, %bb.ax, %.bits_read_nz_le.exit_crit_edge.i.i
  %i.qw = phi ptr [ %i.qu, %bits_priv_refill_32_le.exit.i.i254.i ], [ %i.qc, %.bits_read_nz_le.exit_crit_edge.i.i ], [ %i.qc, %bb.ax ] ; 5 uses
  %.val.i.i.i.i = phi i64 [ %i.qt, %bits_priv_refill_32_le.exit.i.i254.i ], [ %.val.i.i.pre.i.i, %.bits_read_nz_le.exit_crit_edge.i.i ], [ %.val.i.i.pre2.i.i, %bb.ax ] ; 2 uses
  %i.qx = phi i32 [ %i.qv, %bits_priv_refill_32_le.exit.i.i254.i ], [ %i.qa, %.bits_read_nz_le.exit_crit_edge.i.i ], [ 10, %bb.ax ] ; 2 uses
  %i.qy = lshr i64 %.val.i.i.i.i, 10              ; 4 uses
  store i64 %i.qy, ptr %i.c, align 8, !tbaa !45
  %i.qz = add i32 %i.qx, -10                      ; 4 uses
  store i32 %i.qz, ptr %i.k, align 8, !tbaa !42
  %i.ra = trunc i64 %.val.i.i.i.i to i32
  %i.rb = shl i32 %i.ra, 22                       ; 2 uses
  %i.rc = ashr exact i32 %i.rb, 22
  %i.rd = trunc nsw i32 %i.rc to i16
  store i16 %i.rd, ptr %i.kn, align 8, !tbaa !55
  %i.re = icmp ult i32 %i.qz, 10
  br i1 %i.re, label %bb.ay, label %bits_read_signed_nz_le.exit262.i

bb.ay:                                            ; preds = %bits_read_signed_nz_le.exit.i
  %i.rf = load ptr, ptr %i.kk, align 8, !tbaa !43
  %.not.i.i.i259.i = icmp ult ptr %i.qw, %i.rf
  br i1 %.not.i.i.i259.i, label %bits_priv_refill_32_le.exit.i.i261.i, label %bits_read_signed_nz_le.exit262.i

bits_priv_refill_32_le.exit.i.i261.i:             ; preds = %bb.ay
  %i.rg = load i32, ptr %i.qw, align 1, !tbaa !46
  %i.rh = zext i32 %i.rg to i64
  %i.ri = zext nneg i32 %i.qz to i64
  %i.rj = shl nuw nsw i64 %i.rh, %i.ri
  %i.rk = or i64 %i.rj, %i.qy
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qw, i64 4 ; 2 uses
  store ptr %i.rl, ptr %i.kj, align 16, !tbaa !41
  %i.rm = add nuw nsw i32 %i.qx, 22
  br label %bits_read_signed_nz_le.exit262.i

bits_read_signed_nz_le.exit262.i:                 ; preds = %bits_priv_refill_32_le.exit.i.i261.i, %bb.ay, %bits_read_signed_nz_le.exit.i
  %i.rn = phi ptr [ %i.rl, %bits_priv_refill_32_le.exit.i.i261.i ], [ %i.qw, %bb.ay ], [ %i.qw, %bits_read_signed_nz_le.exit.i ] ; 5 uses
  %.val.i.i.i258.i = phi i64 [ %i.rk, %bits_priv_refill_32_le.exit.i.i261.i ], [ %i.qy, %bb.ay ], [ %i.qy, %bits_read_signed_nz_le.exit.i ] ; 2 uses
  %i.ro = phi i32 [ %i.rm, %bits_priv_refill_32_le.exit.i.i261.i ], [ 10, %bb.ay ], [ %i.qz, %bits_read_signed_nz_le.exit.i ] ; 2 uses
  %i.rp = lshr i64 %.val.i.i.i258.i, 10           ; 4 uses
  store i64 %i.rp, ptr %i.c, align 8, !tbaa !45
  %i.rq = add i32 %i.ro, -10                      ; 4 uses
  store i32 %i.rq, ptr %i.k, align 8, !tbaa !42
  %i.rr = trunc i64 %.val.i.i.i258.i to i32
  %i.rs = shl i32 %i.rr, 22
  %i.rt = ashr exact i32 %i.rs, 22
  %i.ru = trunc nsw i32 %i.rt to i16
  store i16 %i.ru, ptr %i.ko, align 2, !tbaa !55
  %i.rv = icmp ugt i32 %i.pz, %i.rq
  br i1 %i.rv, label %bb.az, label %bits_read_signed_nz_le.exit270.i

bb.az:                                            ; preds = %bits_read_signed_nz_le.exit262.i
  %i.rw = load ptr, ptr %i.kk, align 8, !tbaa !43
  %.not.i.i.i267.i = icmp ult ptr %i.rn, %i.rw
  br i1 %.not.i.i.i267.i, label %bits_priv_refill_32_le.exit.i.i269.i, label %bits_read_signed_nz_le.exit270.i

bits_priv_refill_32_le.exit.i.i269.i:             ; preds = %bb.az
  %i.rx = load i32, ptr %i.rn, align 1, !tbaa !46
  %i.ry = zext i32 %i.rx to i64
  %i.rz = zext nneg i32 %i.rq to i64
  %i.sa = shl nuw nsw i64 %i.ry, %i.rz
  %i.sb = or i64 %i.sa, %i.rp
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rn, i64 4 ; 2 uses
  store ptr %i.sc, ptr %i.kj, align 16, !tbaa !41
  %i.sd = add nuw nsw i32 %i.ro, 22
  br label %bits_read_signed_nz_le.exit270.i

bits_read_signed_nz_le.exit270.i:                 ; preds = %bits_priv_refill_32_le.exit.i.i269.i, %bb.az, %bits_read_signed_nz_le.exit262.i
  %i.se = phi ptr [ %i.sc, %bits_priv_refill_32_le.exit.i.i269.i ], [ %i.rn, %bb.az ], [ %i.rn, %bits_read_signed_nz_le.exit262.i ] ; 5 uses
  %.val.i.i.i266.i = phi i64 [ %i.sb, %bits_priv_refill_32_le.exit.i.i269.i ], [ %i.rp, %bb.az ], [ %i.rp, %bits_read_signed_nz_le.exit262.i ] ; 2 uses
  %i.sf = phi i32 [ %i.sd, %bits_priv_refill_32_le.exit.i.i269.i ], [ %i.pz, %bb.az ], [ %i.rq, %bits_read_signed_nz_le.exit262.i ]
  %i.sg = sub nuw nsw i32 58, %.0.i236507.i
  %i.sh = zext nneg i32 %i.sg to i64
  %i.si = lshr i64 -1, %i.sh                      ; 2 uses
  %i.sj = and i64 %.val.i.i.i266.i, %i.si
  %i.sk = zext nneg i32 %i.pz to i64              ; 2 uses
  %i.sl = lshr i64 %.val.i.i.i266.i, %i.sk        ; 4 uses
  store i64 %i.sl, ptr %i.c, align 8, !tbaa !45
  %i.sm = sub i32 %i.sf, %i.pz                    ; 5 uses
  store i32 %i.sm, ptr %i.k, align 8, !tbaa !42
  %i.sn = trunc nuw nsw i64 %i.sj to i32
  %i.so = sub nuw nsw i32 26, %.0.i236507.i       ; 4 uses
  %i.sp = shl i32 %i.sn, %i.so
  %i.sq = ashr exact i32 %i.sp, %i.so
  %i.sr = sub nuw nsw i32 4, %.0.i236507.i        ; 3 uses
  %i.ss = shl nsw i32 %i.sq, %i.sr
  %i.st = trunc nsw i32 %i.ss to i16
  store i16 %i.st, ptr %i.kp, align 4, !tbaa !55
  %i.su = icmp ugt i32 %i.pz, %i.sm
  br i1 %i.su, label %bb.ba, label %bits_read_signed_nz_le.exit278.i

bb.ba:                                            ; preds = %bits_read_signed_nz_le.exit270.i
  %i.sv = load ptr, ptr %i.kk, align 8, !tbaa !43
  %.not.i.i.i275.i = icmp ult ptr %i.se, %i.sv
  br i1 %.not.i.i.i275.i, label %bits_priv_refill_32_le.exit.i.i277.i, label %bits_read_signed_nz_le.exit278.i

bits_priv_refill_32_le.exit.i.i277.i:             ; preds = %bb.ba
  %i.sw = load i32, ptr %i.se, align 1, !tbaa !46
  %i.sx = zext i32 %i.sw to i64
  %i.sy = zext nneg i32 %i.sm to i64
  %i.sz = shl nuw nsw i64 %i.sx, %i.sy
  %i.ta = or i64 %i.sz, %i.sl
  %i.tb = getelementptr inbounds nuw i8, ptr %i.se, i64 4 ; 2 uses
  store ptr %i.tb, ptr %i.kj, align 16, !tbaa !41
  %i.tc = add nuw nsw i32 %i.sm, 32
  br label %bits_read_signed_nz_le.exit278.i

bits_read_signed_nz_le.exit278.i:                 ; preds = %bits_priv_refill_32_le.exit.i.i277.i, %bb.ba, %bits_read_signed_nz_le.exit270.i
  %i.td = phi ptr [ %i.tb, %bits_priv_refill_32_le.exit.i.i277.i ], [ %i.se, %bb.ba ], [ %i.se, %bits_read_signed_nz_le.exit270.i ] ; 5 uses
  %.val.i.i.i274.i = phi i64 [ %i.ta, %bits_priv_refill_32_le.exit.i.i277.i ], [ %i.sl, %bb.ba ], [ %i.sl, %bits_read_signed_nz_le.exit270.i ] ; 2 uses
  %i.te = phi i32 [ %i.tc, %bits_priv_refill_32_le.exit.i.i277.i ], [ %i.pz, %bb.ba ], [ %i.sm, %bits_read_signed_nz_le.exit270.i ] ; 2 uses
  %i.tf = and i64 %.val.i.i.i274.i, %i.si
  %i.tg = lshr i64 %.val.i.i.i274.i, %i.sk        ; 3 uses
  store i64 %i.tg, ptr %i.c, align 8, !tbaa !45
  %i.th = sub i32 %i.te, %i.pz                    ; 2 uses
  store i32 %i.th, ptr %i.k, align 8, !tbaa !42
  %i.ti = trunc nuw nsw i64 %i.tf to i32
  %i.tj = shl i32 %i.ti, %i.so
  %i.tk = ashr exact i32 %i.tj, %i.so
  %i.tl = shl nsw i32 %i.tk, %i.sr
  %i.tm = trunc nsw i32 %i.tl to i16
  store i16 %i.tm, ptr %i.kq, align 2, !tbaa !55
  %.off.i = add nsw i32 %i.lv, -1
  %switch.i = icmp ult i32 %.off.i, 14
  br i1 %switch.i, label %bb.bb, label %.loopexit.i

bb.bb:                                            ; preds = %bits_read_signed_nz_le.exit278.i
  %.not.i279.i = icmp eq i32 %i.te, %i.pz
  br i1 %.not.i279.i, label %bb.bc, label %._crit_edge.i280.i

._crit_edge.i280.i:                               ; preds = %bb.bb
  %i.tn = add i32 %i.th, -1
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.to = load ptr, ptr %i.kk, align 8, !tbaa !43
  %.not.i.i284.i = icmp ult ptr %i.td, %i.to
  br i1 %.not.i.i284.i, label %bits_priv_refill_64_le.exit.i285.i, label %bits_read_bit_le.exit286.i

bits_priv_refill_64_le.exit.i285.i:               ; preds = %bb.bc
  %i.tp = load i64, ptr %i.td, align 1, !tbaa !46
  %i.tq = getelementptr inbounds nuw i8, ptr %i.td, i64 8 ; 2 uses
  store ptr %i.tq, ptr %i.kj, align 16, !tbaa !41
  br label %bb.bd

bb.bd:                                            ; preds = %bits_priv_refill_64_le.exit.i285.i, %._crit_edge.i280.i
  %i.tr = phi ptr [ %i.td, %._crit_edge.i280.i ], [ %i.tq, %bits_priv_refill_64_le.exit.i285.i ]
  %i.ts = phi i32 [ %i.tn, %._crit_edge.i280.i ], [ 63, %bits_priv_refill_64_le.exit.i285.i ] ; 2 uses
  %.val.i.i282.i = phi i64 [ %i.tg, %._crit_edge.i280.i ], [ %i.tp, %bits_priv_refill_64_le.exit.i285.i ] ; 2 uses
  %i.tt = lshr i64 %.val.i.i282.i, 1              ; 2 uses
  store i64 %i.tt, ptr %i.c, align 8, !tbaa !45
  store i32 %i.ts, ptr %i.k, align 8, !tbaa !42
  %i.tu = trunc i64 %.val.i.i282.i to i32
  %i.tv = and i32 %i.tu, 1
  br label %bits_read_bit_le.exit286.i

bits_read_bit_le.exit286.i:                       ; preds = %bb.bd, %bb.bc
  %i.tw = phi ptr [ %i.tr, %bb.bd ], [ %i.td, %bb.bc ] ; 2 uses
  %.promoted316.i = phi i64 [ %i.tt, %bb.bd ], [ %i.tg, %bb.bc ]
  %.promoted.i = phi i32 [ %i.ts, %bb.bd ], [ 0, %bb.bc ]
  %.0.i283.i = phi i32 [ %i.tv, %bb.bd ], [ 0, %bb.bc ]
  %2 = icmp ugt i16 %i.ly, 4
  br i1 %2, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bits_read_bit_le.exit286.i
  %wide.trip.count.i = zext i16 %i.ly to i64
  br label %bb.be

bb.be:                                            ; preds = %bits_read_signed_nz_le.exit298.i, %.lr.ph.i
  %i.tx = phi ptr [ %i.tw, %.lr.ph.i ], [ %i.vf, %bits_read_signed_nz_le.exit298.i ] ; 3 uses
  %i.ty = phi ptr [ %i.tw, %.lr.ph.i ], [ %i.vg, %bits_read_signed_nz_le.exit298.i ] ; 6 uses
  %indvars.iv.i = phi i64 [ 4, %.lr.ph.i ], [ %indvars.iv.next.i, %bits_read_signed_nz_le.exit298.i ] ; 3 uses
  %.val.i.i.pre2.i296318.i = phi i64 [ %.promoted316.i, %.lr.ph.i ], [ %i.vn, %bits_read_signed_nz_le.exit298.i ] ; 4 uses
  %i.tz = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.vo, %bits_read_signed_nz_le.exit298.i ] ; 5 uses
  %.0188314.i = phi i32 [ undef, %.lr.ph.i ], [ %.1189.i, %bits_read_signed_nz_le.exit298.i ]
  %i.ua = and i64 %indvars.iv.i, 3
  %.not213.i = icmp eq i64 %i.ua, 0
  br i1 %.not213.i, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.ub = icmp ult i32 %i.tz, 2
  br i1 %i.ub, label %bb.bg, label %bits_read_nz_le.exit290.i

bb.bg:                                            ; preds = %bb.bf
  %i.uc = load ptr, ptr %i.kk, align 8, !tbaa !43
  %.not.i.i288.i = icmp ult ptr %i.ty, %i.uc
  br i1 %.not.i.i288.i, label %bits_priv_refill_32_le.exit.i289.i, label %bits_read_nz_le.exit290.i

bits_priv_refill_32_le.exit.i289.i:               ; preds = %bb.bg
  %i.ud = load i32, ptr %i.ty, align 1, !tbaa !46
  %i.ue = zext i32 %i.ud to i64
  %i.uf = zext nneg i32 %i.tz to i64
  %i.ug = shl nuw nsw i64 %i.ue, %i.uf
  %i.uh = or i64 %i.ug, %.val.i.i.pre2.i296318.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ty, i64 4 ; 3 uses
  store ptr %i.ui, ptr %i.kj, align 16, !tbaa !41
  %i.uj = or disjoint i32 %i.tz, 32
  br label %bits_read_nz_le.exit290.i

bits_read_nz_le.exit290.i:                        ; preds = %bits_priv_refill_32_le.exit.i289.i, %bb.bg, %bb.bf
  %i.uk = phi ptr [ %i.ui, %bits_priv_refill_32_le.exit.i289.i ], [ %i.tx, %bb.bf ], [ %i.tx, %bb.bg ]
  %i.ul = phi ptr [ %i.ui, %bits_priv_refill_32_le.exit.i289.i ], [ %i.ty, %bb.bf ], [ %i.ty, %bb.bg ]
  %.val.i.i.pre2.i296319.i = phi i64 [ %i.uh, %bits_priv_refill_32_le.exit.i289.i ], [ %.val.i.i.pre2.i296318.i, %bb.bf ], [ %.val.i.i.pre2.i296318.i, %bb.bg ] ; 2 uses
  %i.um = phi i32 [ %i.uj, %bits_priv_refill_32_le.exit.i289.i ], [ %i.tz, %bb.bf ], [ 2, %bb.bg ]
  %i.un = lshr i64 %.val.i.i.pre2.i296319.i, 2    ; 2 uses
  store i64 %i.un, ptr %i.c, align 8, !tbaa !45
  %i.uo = add i32 %i.um, -2                       ; 2 uses
  store i32 %i.uo, ptr %i.k, align 8, !tbaa !42
  %i.up = trunc i64 %.val.i.i.pre2.i296319.i to i32
  %i.uq = and i32 %i.up, 3
  %i.ur = add nuw nsw i32 %.0.i283.i, %i.uq
  %i.us = sub nuw nsw i32 %i.pz, %i.ur
  br label %bb.bh

bb.bh:                                            ; preds = %bits_read_nz_le.exit290.i, %bb.be
  %i.ut = phi ptr [ %i.tx, %bb.be ], [ %i.uk, %bits_read_nz_le.exit290.i ] ; 6 uses
  %i.uu = phi ptr [ %i.ty, %bb.be ], [ %i.ul, %bits_read_nz_le.exit290.i ]
  %.val.i.i.pre2.i296317.i = phi i64 [ %.val.i.i.pre2.i296318.i, %bb.be ], [ %i.un, %bits_read_nz_le.exit290.i ] ; 3 uses
  %i.uv = phi i32 [ %i.tz, %bb.be ], [ %i.uo, %bits_read_nz_le.exit290.i ] ; 4 uses
  %.1189.i = phi i32 [ %.0188314.i, %bb.be ], [ %i.us, %bits_read_nz_le.exit290.i ] ; 7 uses
  %i.uw = icmp ugt i32 %.1189.i, %i.uv
  br i1 %i.uw, label %bb.bi, label %bits_read_signed_nz_le.exit298.i

bb.bi:                                            ; preds = %bb.bh
  %i.ux = load ptr, ptr %i.kk, align 8, !tbaa !43
  %.not.i.i.i295.i = icmp ult ptr %i.ut, %i.ux
  br i1 %.not.i.i.i295.i, label %bits_priv_refill_32_le.exit.i.i297.i, label %bits_read_signed_nz_le.exit298.i

bits_priv_refill_32_le.exit.i.i297.i:             ; preds = %bb.bi
  %i.uy = load i32, ptr %i.ut, align 1, !tbaa !46
  %i.uz = zext i32 %i.uy to i64
  %i.va = zext nneg i32 %i.uv to i64
  %i.vb = shl nuw nsw i64 %i.uz, %i.va
  %i.vc = or i64 %i.vb, %.val.i.i.pre2.i296317.i
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ut, i64 4 ; 3 uses
  store ptr %i.vd, ptr %i.kj, align 16, !tbaa !41
  %i.ve = add nuw nsw i32 %i.uv, 32
  br label %bits_read_signed_nz_le.exit298.i

bits_read_signed_nz_le.exit298.i:                 ; preds = %bits_priv_refill_32_le.exit.i.i297.i, %bb.bi, %bb.bh
  %i.vf = phi ptr [ %i.vd, %bits_priv_refill_32_le.exit.i.i297.i ], [ %i.ut, %bb.bi ], [ %i.ut, %bb.bh ]
  %i.vg = phi ptr [ %i.vd, %bits_priv_refill_32_le.exit.i.i297.i ], [ %i.ut, %bb.bi ], [ %i.uu, %bb.bh ]
  %.val.i.i.i294.i = phi i64 [ %i.vc, %bits_priv_refill_32_le.exit.i.i297.i ], [ %.val.i.i.pre2.i296317.i, %bb.bi ], [ %.val.i.i.pre2.i296317.i, %bb.bh ] ; 2 uses
  %i.vh = phi i32 [ %i.ve, %bits_priv_refill_32_le.exit.i.i297.i ], [ %.1189.i, %bb.bi ], [ %i.uv, %bb.bh ]
  %i.vi = sub i32 64, %.1189.i
  %i.vj = zext nneg i32 %i.vi to i64
  %i.vk = lshr i64 -1, %i.vj
  %i.vl = and i64 %.val.i.i.i294.i, %i.vk
  %i.vm = zext nneg i32 %.1189.i to i64
  %i.vn = lshr i64 %.val.i.i.i294.i, %i.vm        ; 2 uses
  store i64 %i.vn, ptr %i.c, align 8, !tbaa !45
  %i.vo = sub i32 %i.vh, %.1189.i                 ; 2 uses
  store i32 %i.vo, ptr %i.k, align 8, !tbaa !42
  %i.vp = trunc i64 %i.vl to i32
  %i.vq = sub i32 32, %.1189.i                    ; 2 uses
  %i.vr = shl i32 %i.vp, %i.vq
  %i.vs = ashr exact i32 %i.vr, %i.vq
  %i.vt = shl i32 %i.vs, %i.sr
  %i.vu = trunc i32 %i.vt to i16
  %i.vv = getelementptr inbounds nuw [2 x i8], ptr %i.kn, i64 %indvars.iv.i
  store i16 %i.vu, ptr %i.vv, align 2, !tbaa !55
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.be, !llvm.loop !107

.loopexit.i:                                      ; preds = %bits_read_signed_nz_le.exit298.i, %bits_read_bit_le.exit286.i, %bits_read_signed_nz_le.exit278.i
  %i.vw = ashr exact i32 %i.rb, 16
  store i32 %i.vw, ptr %i.a, align 16, !tbaa !52
  %3 = icmp ugt i16 %i.ly, 1
  br i1 %3, label %.lr.ph326.preheader.i, label %._crit_edge327.i

.lr.ph326.preheader.i:                            ; preds = %.loopexit.i
  %wide.trip.count380.i = zext i16 %i.ly to i64
  br label %.lr.ph323.i

.lr.ph323.i:                                      ; preds = %._crit_edge.i, %.lr.ph326.preheader.i
  %indvars.iv376.i = phi i64 [ 1, %.lr.ph326.preheader.i ], [ %indvars.iv.next377.i, %._crit_edge.i ] ; 3 uses
  %indvars.iv373.i = phi i32 [ 2, %.lr.ph326.preheader.i ], [ %indvars.iv.next374.i, %._crit_edge.i ] ; 4 uses
  %i.vx = lshr i32 %indvars.iv373.i, 1            ; 2 uses
  %i.vy = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv376.i ; 3 uses
  %i.vz = getelementptr inbounds nuw [2 x i8], ptr %i.kn, i64 %indvars.iv376.i
  %i.wa = load i16, ptr %i.vz, align 2, !tbaa !55
  %i.wb = sext i16 %i.wa to i32                   ; 7 uses
  %.mask = and i32 %indvars.iv373.i, 2147483646
  %i.wc = icmp eq i32 %.mask, 2
  br i1 %i.wc, label %.epil.preheader, label %.lr.ph323.i.new

.lr.ph323.i.new:                                  ; preds = %.lr.ph323.i
  %unroll_iter = and i32 %i.vx, 1073741822
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.lr.ph323.i.new
  %.pn322.i = phi ptr [ %i.vy, %.lr.ph323.i.new ], [ %.0179.i.1, %bb.bj ] ; 2 uses
  %.0180321.i = phi ptr [ %i.a, %.lr.ph323.i.new ], [ %i.wy, %bb.bj ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph323.i.new ], [ %niter.next.1, %bb.bj ]
  %.0179.i = getelementptr i8, ptr %.pn322.i, i64 -4 ; 2 uses
  %i.wd = load i32, ptr %.0180321.i, align 4, !tbaa !52 ; 2 uses
  %i.we = load i32, ptr %.0179.i, align 4, !tbaa !52 ; 2 uses
  %i.wf = mul i32 %i.we, %i.wb
  %i.wg = add i32 %i.wf, 256
  %i.wh = ashr i32 %i.wg, 9
  %i.wi = add i32 %i.wh, %i.wd
  %i.wj = mul i32 %i.wd, %i.wb
  %i.wk = add i32 %i.wj, 256
  %i.wl = ashr i32 %i.wk, 9
  %i.wm = add i32 %i.wl, %i.we
  store i32 %i.wm, ptr %.0179.i, align 4, !tbaa !52
  %i.wn = getelementptr inbounds nuw i8, ptr %.0180321.i, i64 4 ; 2 uses
  store i32 %i.wi, ptr %.0180321.i, align 4, !tbaa !52
  %.0179.i.1 = getelementptr i8, ptr %.pn322.i, i64 -8 ; 4 uses
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !52 ; 2 uses
  %i.wp = load i32, ptr %.0179.i.1, align 4, !tbaa !52 ; 2 uses
  %i.wq = mul i32 %i.wp, %i.wb
  %i.wr = add i32 %i.wq, 256
  %i.ws = ashr i32 %i.wr, 9
  %i.wt = add i32 %i.ws, %i.wo
  %i.wu = mul i32 %i.wo, %i.wb
  %i.wv = add i32 %i.wu, 256
  %i.ww = ashr i32 %i.wv, 9
  %i.wx = add i32 %i.ww, %i.wp
  store i32 %i.wx, ptr %.0179.i.1, align 4, !tbaa !52
  %i.wy = getelementptr inbounds nuw i8, ptr %.0180321.i, i64 8 ; 2 uses
  store i32 %i.wt, ptr %i.wn, align 4, !tbaa !52
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.bj, !llvm.loop !108

._crit_edge.i.unr-lcssa:                          ; preds = %bb.bj
  %i.wz = and i32 %indvars.iv373.i, 2
  %lcmp.mod.not = icmp eq i32 %i.wz, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph323.i
  %.pn322.i.epil.init = phi ptr [ %i.vy, %.lr.ph323.i ], [ %.0179.i.1, %._crit_edge.i.unr-lcssa ]
  %.0180321.i.epil.init = phi ptr [ %i.a, %.lr.ph323.i ], [ %i.wy, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod283 = trunc i32 %i.vx to i1
  tail call void @llvm.assume(i1 %lcmp.mod283)
  %.0179.i.epil = getelementptr i8, ptr %.pn322.i.epil.init, i64 -4 ; 2 uses
  %i.xa = load i32, ptr %.0180321.i.epil.init, align 4, !tbaa !52 ; 2 uses
  %i.xb = load i32, ptr %.0179.i.epil, align 4, !tbaa !52 ; 2 uses
  %i.xc = mul i32 %i.xb, %i.wb
  %i.xd = add i32 %i.xc, 256
  %i.xe = ashr i32 %i.xd, 9
  %i.xf = add i32 %i.xe, %i.xa
  %i.xg = mul i32 %i.xa, %i.wb
  %i.xh = add i32 %i.xg, 256
  %i.xi = ashr i32 %i.xh, 9
  %i.xj = add i32 %i.xi, %i.xb
  store i32 %i.xj, ptr %.0179.i.epil, align 4, !tbaa !52
  store i32 %i.xf, ptr %.0180321.i.epil.init, align 4, !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next377.i = add nuw nsw i64 %indvars.iv376.i, 1 ; 2 uses
  %i.xk = shl nsw i32 %i.wb, 6
  store i32 %i.xk, ptr %i.vy, align 4, !tbaa !52
  %indvars.iv.next374.i = add nuw nsw i32 %indvars.iv373.i, 1
  %exitcond381.not.i = icmp eq i64 %indvars.iv.next377.i, %wide.trip.count380.i
  br i1 %exitcond381.not.i, label %._crit_edge327.i, label %.lr.ph323.i, !llvm.loop !109

._crit_edge327.i:                                 ; preds = %._crit_edge.i, %.loopexit.i
  %i.xl = xor i32 %.0182.i, 15                    ; 2 uses
  %i.xm = lshr exact i32 16384, %.0182.i          ; 2 uses
  %i.xn = lshr i32 %i.lz, 1                       ; 2 uses
  %.not361.i.a = icmp eq i32 %i.xn, 0
  %.pre431.i = zext i16 %i.ly to i64              ; 3 uses
  br i1 %.not361.i.a, label %._crit_edge332.i, label %.lr.ph331.i

.lr.ph331.i:                                      ; preds = %._crit_edge327.i
  %wide.trip.count389.i = zext nneg i32 %i.xn to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.lr.ph331.i
  %indvars.iv384.i = phi i64 [ 0, %.lr.ph331.i ], [ %indvars.iv.next385.i, %bb.bk ] ; 3 uses
  %indvars.iv382.i = phi i64 [ %.pre431.i, %.lr.ph331.i ], [ %indvars.iv.next383.i.a, %bb.bk ]
  %indvars.iv.next383.i.a = add nsw i64 %indvars.iv382.i, -1 ; 3 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv384.i
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !52
  %i.xq = add nsw i32 %i.xp, %i.xm
  %i.xr = ashr i32 %i.xq, %i.xl
  %i.xs = trunc i32 %i.xr to i16
  %i.xt = sub i16 0, %i.xs
  %i.xu = getelementptr inbounds [2 x i8], ptr %i.kr, i64 %indvars.iv.next383.i.a
  store i16 %i.xt, ptr %i.xu, align 2, !tbaa !55
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next383.i.a
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !52
  %i.xx = add nsw i32 %i.xw, %i.xm
  %i.xy = ashr i32 %i.xx, %i.xl
  %i.xz = trunc i32 %i.xy to i16
  %i.ya = sub i16 0, %i.xz
  %i.yb = getelementptr inbounds nuw [2 x i8], ptr %i.kr, i64 %indvars.iv384.i
  store i16 %i.ya, ptr %i.yb, align 2, !tbaa !55
  %indvars.iv.next385.i = add nuw nsw i64 %indvars.iv384.i, 1 ; 2 uses
  %exitcond390.not.i = icmp eq i64 %indvars.iv.next385.i, %wide.trip.count389.i
  br i1 %exitcond390.not.i, label %._crit_edge332.i, label %bb.bk, !llvm.loop !110

._crit_edge332.i:                                 ; preds = %bb.bk, %._crit_edge327.i
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %.0194.i, i64 %.pre431.i
  %i.yd = sub nsw i32 %.0193.i, %i.lz             ; 4 uses
  %i.ye = tail call fastcc i32 @decode_residues(ptr noundef nonnull %0, ptr noundef %i.yc, i32 noundef %i.yd) ; 2 uses
  %i.yf = icmp slt i32 %i.ye, 0
  br i1 %i.yf, label %decode_subframe.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge332.i
  %.not361.i = icmp eq i16 %i.ly, 0
  br i1 %.not361.i, label %._crit_edge336.i, label %.lr.ph335.i

.lr.ph335.i:                                      ; preds = %.preheader.i
  %wide.trip.count395.i = zext i16 %i.ly to i64   ; 3 uses
  %min.iters.check259 = icmp ult i16 %i.ly, 8
  br i1 %min.iters.check259, label %scalar.ph256.preheader, label %vector.ph258

vector.ph258:                                     ; preds = %.lr.ph335.i
  %n.vec259 = and i64 %wide.trip.count395.i, 65528 ; 4 uses
  %i.yg = shl nuw nsw i64 %n.vec259, 2
  %i.yh = getelementptr i8, ptr %.0194.i, i64 %i.yg ; 2 uses
  %broadcast.splatinsert260 = insertelement <4 x i32> poison, i32 %.0.i231307504.i, i64 0
  %broadcast.splat261 = shufflevector <4 x i32> %broadcast.splatinsert260, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph258
  %index263 = phi i64 [ 0, %vector.ph258 ], [ %index.next267, %vector.body262 ] ; 3 uses
  %i.yi = shl i64 %index263, 2
  %next.gep264 = getelementptr i8, ptr %.0194.i, i64 %i.yi ; 2 uses
  %i.yj = getelementptr i8, ptr %next.gep264, i64 16
  %wide.load265 = load <4 x i32>, ptr %next.gep264, align 4, !tbaa !52
  %wide.load266 = load <4 x i32>, ptr %i.yj, align 4, !tbaa !52
  %i.yk = ashr <4 x i32> %wide.load265, %broadcast.splat261
  %i.yl = ashr <4 x i32> %wide.load266, %broadcast.splat261
  %i.ym = trunc <4 x i32> %i.yk to <4 x i16>
  %i.yn = trunc <4 x i32> %i.yl to <4 x i16>
  %i.yo = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %index263 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  store <4 x i16> %i.ym, ptr %i.yo, align 2, !tbaa !55
  store <4 x i16> %i.yn, ptr %i.yp, align 2, !tbaa !55
  %index.next267 = add nuw i64 %index263, 8       ; 2 uses
  %i.yq = icmp eq i64 %index.next267, %n.vec259
  br i1 %i.yq, label %middle.block268, label %vector.body262, !llvm.loop !111

middle.block268:                                  ; preds = %vector.body262
  %cmp.n269 = icmp eq i64 %n.vec259, %wide.trip.count395.i
  br i1 %cmp.n269, label %._crit_edge336.i, label %scalar.ph256.preheader

scalar.ph256.preheader:                           ; preds = %.lr.ph335.i, %middle.block268
  %indvars.iv391.i.ph = phi i64 [ 0, %.lr.ph335.i ], [ %n.vec259, %middle.block268 ]
  %.1195333.i.ph = phi ptr [ %.0194.i, %.lr.ph335.i ], [ %i.yh, %middle.block268 ]
  br label %scalar.ph256

scalar.ph256:                                     ; preds = %scalar.ph256.preheader, %scalar.ph256
  %indvars.iv391.i = phi i64 [ %indvars.iv.next392.i, %scalar.ph256 ], [ %indvars.iv391.i.ph, %scalar.ph256.preheader ] ; 2 uses
  %.1195333.i = phi ptr [ %i.yr, %scalar.ph256 ], [ %.1195333.i.ph, %scalar.ph256.preheader ] ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.1195333.i, i64 4 ; 2 uses
  %i.ys = load i32, ptr %.1195333.i, align 4, !tbaa !52
  %i.yt = ashr i32 %i.ys, %.0.i231307504.i
  %i.yu = trunc i32 %i.yt to i16
  %i.yv = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %indvars.iv391.i
  store i16 %i.yu, ptr %i.yv, align 2, !tbaa !55
  %indvars.iv.next392.i = add nuw nsw i64 %indvars.iv391.i, 1 ; 2 uses
  %exitcond396.not.i = icmp eq i64 %indvars.iv.next392.i, %wide.trip.count395.i
  br i1 %exitcond396.not.i, label %._crit_edge336.i, label %scalar.ph256, !llvm.loop !112

._crit_edge336.i:                                 ; preds = %scalar.ph256, %middle.block268, %.preheader.i
  %.1195.lcssa.i = phi ptr [ %.0194.i, %.preheader.i ], [ %i.yh, %middle.block268 ], [ %i.yr, %scalar.ph256 ] ; 2 uses
  %i.yw = sub nsw i32 544, %i.lz                  ; 3 uses
  %i.yx = icmp sgt i32 %i.yd, 0
  br i1 %i.yx, label %.lr.ph358.i, label %decode_subframe.exit.thread95

.lr.ph358.i:                                      ; preds = %._crit_edge336.i
  %i.yy = add nsw i32 %.0182.i, -1
  %i.yz = shl nuw nsw i32 1, %i.yy                ; 4 uses
  %i.za = and i32 %i.lz, 65520                    ; 4 uses
  %.not212.i = icmp eq i32 %i.za, 0               ; 2 uses
  %i.zb = icmp ne i32 %i.za, %i.lz
  %.fr.i = freeze i1 %i.zb
  %i.zc = lshr i32 %i.yz, %.0182.i
  %i.zd = tail call i32 @llvm.umin.i32(i32 %i.zc, i32 8191)
  %i.ze = shl nuw nsw i32 %i.zd, %.0.i231307504.i ; 2 uses
  %i.zf = sext i32 %i.yw to i64
  %i.zg = getelementptr inbounds [2 x i8], ptr %i.ks, i64 %i.zf ; 2 uses
  %i.zh = shl nuw nsw i32 %i.lz, 1
  %i.zi = zext nneg i32 %i.zh to i64              ; 2 uses
  br i1 %.fr.i, label %.lr.ph358.split.us.preheader.i, label %.lr.ph358.split.preheader.i

.lr.ph358.split.preheader.i:                      ; preds = %.lr.ph358.i
  %i.zj = zext i16 %i.ly to i64
  %4 = icmp ult i16 %i.ly, 544
  %invariant.gep.i = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.zj ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ze, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <4 x i32> poison, i32 %.0.i231307504.i, i64 0
  %broadcast.splat253 = shufflevector <4 x i32> %broadcast.splatinsert252, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph346.i.a

.lr.ph358.split.us.preheader.i:                   ; preds = %.lr.ph358.i
  %i.zk = and i64 %.pre431.i, 65520               ; 2 uses
  %i.zl = zext i16 %i.ly to i64                   ; 3 uses
  %5 = icmp ult i16 %i.ly, 544
  %invariant.gep542.i = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.zl ; 2 uses
  br label %.lr.ph346.us.i.a

.lr.ph346.us.i.a:                                 ; preds = %bb.bn, %.lr.ph358.split.us.preheader.i
  %.2190356.us.i = phi i32 [ %i.act, %bb.bn ], [ %i.yd, %.lr.ph358.split.us.preheader.i ] ; 2 uses
  %.2196355.us.i = phi ptr [ %.3197.lcssa.us.i, %bb.bn ], [ %.1195.lcssa.i, %.lr.ph358.split.us.preheader.i ] ; 3 uses
  %i.zm = tail call i32 @llvm.smin.i32(i32 %i.yw, i32 %.2190356.us.i) ; 3 uses
  br i1 %5, label %.lr.ph346.us.i, label %._crit_edge347.split.us.us.i

.lr.ph346.us.i:                                   ; preds = %.lr.ph346.us.i.a
  br i1 %.not212.i, label %.lr.ph340.us.us.us.preheader.i, label %.lr.ph340.us.us.preheader.i

.lr.ph340.us.us.preheader.i:                      ; preds = %.lr.ph346.us.i
  %smax413.i = tail call i32 @llvm.smax.i32(i32 %i.zm, i32 1)
  %wide.trip.count414.i = zext nneg i32 %smax413.i to i64
  br label %.lr.ph340.us.us.i

.lr.ph340.us.us.us.preheader.i:                   ; preds = %.lr.ph346.us.i
  %wide.trip.count422.i = zext nneg i32 %i.zm to i64
  br label %.lr.ph340.us.us.us.i

.lr.ph340.us.us.us.i:                             ; preds = %._crit_edge341.us.us.us.i, %.lr.ph340.us.us.us.preheader.i
  %indvars.iv418.i = phi i64 [ 0, %.lr.ph340.us.us.us.preheader.i ], [ %indvars.iv.next419.i, %._crit_edge341.us.us.us.i ] ; 3 uses
  %.3197343.us.us.us.i = phi ptr [ %.2196355.us.i, %.lr.ph340.us.us.us.preheader.i ], [ %i.aay, %._crit_edge341.us.us.us.i ] ; 3 uses
  %invariant.gep544.i = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %indvars.iv418.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.lr.ph340.us.us.us.i
  %indvars.iv416.i = phi i64 [ %indvars.iv.next417.i, %bb.bl ], [ %i.zk, %.lr.ph340.us.us.us.i ] ; 3 uses
  %.1338.us.us.us.i = phi i32 [ %i.aar, %bb.bl ], [ %i.yz, %.lr.ph340.us.us.us.i ]
  %gep545.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep544.i, i64 %indvars.iv416.i ; 4 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %gep545.i, i64 6
  %i.zo = load i16, ptr %i.zn, align 2, !tbaa !55
  %i.zp = sext i16 %i.zo to i32
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %i.kr, i64 %indvars.iv416.i ; 4 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 6
  %i.zs = load i16, ptr %i.zr, align 2, !tbaa !55
  %i.zt = sext i16 %i.zs to i32
  %i.zu = mul nsw i32 %i.zt, %i.zp
  %i.zv = getelementptr inbounds nuw i8, ptr %gep545.i, i64 4
  %i.zw = load i16, ptr %i.zv, align 2, !tbaa !55
  %i.zx = sext i16 %i.zw to i32
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zq, i64 4
  %i.zz = load i16, ptr %i.zy, align 2, !tbaa !55
  %i.aaa = sext i16 %i.zz to i32
  %i.aab = mul nsw i32 %i.aaa, %i.zx
  %i.aac = getelementptr inbounds nuw i8, ptr %gep545.i, i64 2
  %i.aad = load i16, ptr %i.aac, align 2, !tbaa !55
  %i.aae = sext i16 %i.aad to i32
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zq, i64 2
  %i.aag = load i16, ptr %i.aaf, align 2, !tbaa !55
  %i.aah = sext i16 %i.aag to i32
  %i.aai = mul nsw i32 %i.aah, %i.aae
  %i.aaj = load i16, ptr %gep545.i, align 2, !tbaa !55
  %i.aak = sext i16 %i.aaj to i32
  %i.aal = load i16, ptr %i.zq, align 2, !tbaa !55
  %i.aam = sext i16 %i.aal to i32
  %i.aan = mul nsw i32 %i.aam, %i.aak
  %i.aao = add i32 %i.zu, %.1338.us.us.us.i
  %i.aap = add i32 %i.aao, %i.aab
  %i.aaq = add i32 %i.aap, %i.aai
  %i.aar = add i32 %i.aaq, %i.aan                 ; 2 uses
  %indvars.iv.next417.i = add nuw nsw i64 %indvars.iv416.i, 4 ; 2 uses
  %i.aas = icmp samesign ult i64 %indvars.iv.next417.i, %i.zl
  br i1 %i.aas, label %bb.bl, label %._crit_edge341.us.us.us.i, !llvm.loop !113

._crit_edge341.us.us.us.i:                        ; preds = %bb.bl
  %i.aat = ashr i32 %i.aar, %.0182.i
  %i.aau = tail call i32 @llvm.smax.i32(i32 %i.aat, i32 -8192)
  %.0.i.us.us.us.i = tail call i32 @llvm.smin.i32(i32 %i.aau, i32 8191)
  %i.aav = shl nsw i32 %.0.i.us.us.us.i, %.0.i231307504.i
  %i.aaw = load i32, ptr %.3197343.us.us.us.i, align 4, !tbaa !52
  %i.aax = sub i32 %i.aav, %i.aaw                 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.3197343.us.us.us.i, i64 4 ; 2 uses
  store i32 %i.aax, ptr %.3197343.us.us.us.i, align 4, !tbaa !52
  %i.aaz = ashr i32 %i.aax, %.0.i231307504.i
  %i.aba = trunc i32 %i.aaz to i16
  %gep547.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep542.i, i64 %indvars.iv418.i
  store i16 %i.aba, ptr %gep547.i, align 2, !tbaa !55
  %indvars.iv.next419.i = add nuw nsw i64 %indvars.iv418.i, 1 ; 2 uses
  %exitcond423.not.i = icmp eq i64 %indvars.iv.next419.i, %wide.trip.count422.i
  br i1 %exitcond423.not.i, label %._crit_edge347.split.us.us.i, label %.lr.ph340.us.us.us.i, !llvm.loop !114

.lr.ph340.us.us.i:                                ; preds = %._crit_edge341.us.us.i, %.lr.ph340.us.us.preheader.i
  %indvars.iv410.i = phi i64 [ 0, %.lr.ph340.us.us.preheader.i ], [ %indvars.iv.next411.i, %._crit_edge341.us.us.i ] ; 3 uses
  %.3197343.us.us.i = phi ptr [ %.2196355.us.i, %.lr.ph340.us.us.preheader.i ], [ %i.acq, %._crit_edge341.us.us.i ] ; 3 uses
  %i.abb = load ptr, ptr %i.kt, align 8, !tbaa !59
  %i.abc = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %indvars.iv410.i ; 2 uses
  %i.abd = tail call i32 %i.abb(ptr noundef nonnull %i.abc, ptr noundef nonnull %i.kr, i32 noundef %i.za) #12, !inline_history !115
  %i.abe = add i32 %i.abd, %i.yz
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph340.us.us.i
  %indvars.iv408.i = phi i64 [ %indvars.iv.next409.i, %bb.bm ], [ %i.zk, %.lr.ph340.us.us.i ] ; 3 uses
  %.1338.us.us.i = phi i32 [ %i.acj, %bb.bm ], [ %i.abe, %.lr.ph340.us.us.i ]
  %gep541.i = getelementptr inbounds nuw [2 x i8], ptr %i.abc, i64 %indvars.iv408.i ; 4 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %gep541.i, i64 6
  %i.abg = load i16, ptr %i.abf, align 2, !tbaa !55
  %i.abh = sext i16 %i.abg to i32
  %i.abi = getelementptr inbounds nuw [2 x i8], ptr %i.kr, i64 %indvars.iv408.i ; 4 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 6
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !55
  %i.abl = sext i16 %i.abk to i32
  %i.abm = mul nsw i32 %i.abl, %i.abh
  %i.abn = getelementptr inbounds nuw i8, ptr %gep541.i, i64 4
  %i.abo = load i16, ptr %i.abn, align 2, !tbaa !55
  %i.abp = sext i16 %i.abo to i32
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abi, i64 4
  %i.abr = load i16, ptr %i.abq, align 2, !tbaa !55
  %i.abs = sext i16 %i.abr to i32
  %i.abt = mul nsw i32 %i.abs, %i.abp
  %i.abu = getelementptr inbounds nuw i8, ptr %gep541.i, i64 2
  %i.abv = load i16, ptr %i.abu, align 2, !tbaa !55
  %i.abw = sext i16 %i.abv to i32
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abi, i64 2
  %i.aby = load i16, ptr %i.abx, align 2, !tbaa !55
  %i.abz = sext i16 %i.aby to i32
  %i.aca = mul nsw i32 %i.abz, %i.abw
  %i.acb = load i16, ptr %gep541.i, align 2, !tbaa !55
  %i.acc = sext i16 %i.acb to i32
  %i.acd = load i16, ptr %i.abi, align 2, !tbaa !55
  %i.ace = sext i16 %i.acd to i32
  %i.acf = mul nsw i32 %i.ace, %i.acc
  %i.acg = add i32 %i.abm, %.1338.us.us.i
  %i.ach = add i32 %i.acg, %i.abt
  %i.aci = add i32 %i.ach, %i.aca
  %i.acj = add i32 %i.aci, %i.acf                 ; 2 uses
  %indvars.iv.next409.i = add nuw nsw i64 %indvars.iv408.i, 4 ; 2 uses
  %i.ack = icmp samesign ult i64 %indvars.iv.next409.i, %i.zl
  br i1 %i.ack, label %bb.bm, label %._crit_edge341.us.us.i, !llvm.loop !113

._crit_edge341.us.us.i:                           ; preds = %bb.bm
  %i.acl = ashr i32 %i.acj, %.0182.i
  %i.acm = tail call i32 @llvm.smax.i32(i32 %i.acl, i32 -8192)
  %.0.i.us.us.i = tail call i32 @llvm.smin.i32(i32 %i.acm, i32 8191)
  %i.acn = shl nsw i32 %.0.i.us.us.i, %.0.i231307504.i
  %i.aco = load i32, ptr %.3197343.us.us.i, align 4, !tbaa !52
  %i.acp = sub i32 %i.acn, %i.aco                 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %.3197343.us.us.i, i64 4 ; 2 uses
  store i32 %i.acp, ptr %.3197343.us.us.i, align 4, !tbaa !52
  %i.acr = ashr i32 %i.acp, %.0.i231307504.i
  %i.acs = trunc i32 %i.acr to i16
  %gep543.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep542.i, i64 %indvars.iv410.i
  store i16 %i.acs, ptr %gep543.i, align 2, !tbaa !55
  %indvars.iv.next411.i = add nuw nsw i64 %indvars.iv410.i, 1 ; 2 uses
  %exitcond415.not.i = icmp eq i64 %indvars.iv.next411.i, %wide.trip.count414.i
  br i1 %exitcond415.not.i, label %._crit_edge347.split.us.us.i, label %.lr.ph340.us.us.i, !llvm.loop !114

._crit_edge347.split.us.us.i:                     ; preds = %._crit_edge341.us.us.i, %._crit_edge341.us.us.us.i, %.lr.ph346.us.i.a
  %.3197.lcssa.us.i = phi ptr [ %.2196355.us.i, %.lr.ph346.us.i.a ], [ %i.aay, %._crit_edge341.us.us.us.i ], [ %i.acq, %._crit_edge341.us.us.i ]
  %i.act = sub nsw i32 %.2190356.us.i, %i.zm      ; 2 uses
  %i.acu = icmp sgt i32 %i.act, 0
  br i1 %i.acu, label %bb.bn, label %decode_subframe.exit.thread95

bb.bn:                                            ; preds = %._crit_edge347.split.us.us.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ks, ptr nonnull align 2 %i.zg, i64 %i.zi, i1 false)
  br label %.lr.ph346.us.i.a, !llvm.loop !116

.lr.ph346.i.a:                                    ; preds = %bb.bo, %.lr.ph358.split.preheader.i
  %.2190356.i = phi i32 [ %i.aea, %bb.bo ], [ %i.yd, %.lr.ph358.split.preheader.i ] ; 2 uses
  %.2196355.i = phi ptr [ %.3197.lcssa.i, %bb.bo ], [ %.1195.lcssa.i, %.lr.ph358.split.preheader.i ] ; 5 uses
  %i.acv = tail call i32 @llvm.smin.i32(i32 %i.yw, i32 %.2190356.i) ; 4 uses
  br i1 %4, label %.lr.ph346.i, label %._crit_edge347.split.i

.lr.ph346.i:                                      ; preds = %.lr.ph346.i.a
  br i1 %.not212.i, label %.lr.ph346.split.split.us.preheader.i, label %.lr.ph346.split.split.preheader.i

.lr.ph346.split.split.preheader.i:                ; preds = %.lr.ph346.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.acv, i32 1)
  %wide.trip.count400.i = zext nneg i32 %smax.i to i64
  br label %.lr.ph346.split.split.i

.lr.ph346.split.split.us.preheader.i:             ; preds = %.lr.ph346.i
  %wide.trip.count406.i = zext nneg i32 %i.acv to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.acv, 8
  br i1 %min.iters.check, label %.lr.ph346.split.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph346.split.split.us.preheader.i
  %n.vec = and i64 %wide.trip.count406.i, 1016    ; 4 uses
  %i.acw = shl nuw nsw i64 %n.vec, 2
  %i.acx = getelementptr i8, ptr %.2196355.i, i64 %i.acw ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.acy = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.2196355.i, i64 %i.acy ; 3 uses
  %i.acz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !52
  %wide.load254 = load <4 x i32>, ptr %i.acz, align 4, !tbaa !52
  %i.ada = sub <4 x i32> %broadcast.splat, %wide.load ; 2 uses
  %i.adb = sub <4 x i32> %broadcast.splat, %wide.load254 ; 2 uses
  store <4 x i32> %i.ada, ptr %next.gep, align 4, !tbaa !52
  store <4 x i32> %i.adb, ptr %i.acz, align 4, !tbaa !52
  %i.adc = ashr <4 x i32> %i.ada, %broadcast.splat253
  %i.add = ashr <4 x i32> %i.adb, %broadcast.splat253
  %i.ade = trunc <4 x i32> %i.adc to <4 x i16>
  %i.adf = trunc <4 x i32> %i.add to <4 x i16>
  %i.adg = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  store <4 x i16> %i.ade, ptr %i.adg, align 2, !tbaa !55
  store <4 x i16> %i.adf, ptr %i.adh, align 2, !tbaa !55
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.adi = icmp eq i64 %index.next, %n.vec
  br i1 %i.adi, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count406.i
  br i1 %cmp.n, label %._crit_edge347.split.i, label %.lr.ph346.split.split.us.i.preheader

.lr.ph346.split.split.us.i.preheader:             ; preds = %.lr.ph346.split.split.us.preheader.i, %middle.block
  %indvars.iv402.i.ph = phi i64 [ 0, %.lr.ph346.split.split.us.preheader.i ], [ %n.vec, %middle.block ]
  %.3197343.us350.i.ph = phi ptr [ %.2196355.i, %.lr.ph346.split.split.us.preheader.i ], [ %i.acx, %middle.block ]
  br label %.lr.ph346.split.split.us.i

.lr.ph346.split.split.us.i:                       ; preds = %.lr.ph346.split.split.us.i.preheader, %.lr.ph346.split.split.us.i
  %indvars.iv402.i = phi i64 [ %indvars.iv.next403.i, %.lr.ph346.split.split.us.i ], [ %indvars.iv402.i.ph, %.lr.ph346.split.split.us.i.preheader ] ; 2 uses
  %.3197343.us350.i = phi ptr [ %i.adl, %.lr.ph346.split.split.us.i ], [ %.3197343.us350.i.ph, %.lr.ph346.split.split.us.i.preheader ] ; 3 uses
  %i.adj = load i32, ptr %.3197343.us350.i, align 4, !tbaa !52
  %i.adk = sub i32 %i.ze, %i.adj                  ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.3197343.us350.i, i64 4 ; 2 uses
  store i32 %i.adk, ptr %.3197343.us350.i, align 4, !tbaa !52
  %i.adm = ashr i32 %i.adk, %.0.i231307504.i
  %i.adn = trunc i32 %i.adm to i16
  %gep539.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv402.i
  store i16 %i.adn, ptr %gep539.i, align 2, !tbaa !55
  %indvars.iv.next403.i = add nuw nsw i64 %indvars.iv402.i, 1 ; 2 uses
  %exitcond407.not.i = icmp eq i64 %indvars.iv.next403.i, %wide.trip.count406.i
  br i1 %exitcond407.not.i, label %._crit_edge347.split.i, label %.lr.ph346.split.split.us.i, !llvm.loop !118

.lr.ph346.split.split.i:                          ; preds = %.lr.ph346.split.split.i, %.lr.ph346.split.split.preheader.i
  %indvars.iv397.i = phi i64 [ 0, %.lr.ph346.split.split.preheader.i ], [ %indvars.iv.next398.i, %.lr.ph346.split.split.i ] ; 3 uses
  %.3197343.i = phi ptr [ %.2196355.i, %.lr.ph346.split.split.preheader.i ], [ %i.adx, %.lr.ph346.split.split.i ] ; 3 uses
  %i.ado = load ptr, ptr %i.kt, align 8, !tbaa !59
  %i.adp = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %indvars.iv397.i
  %i.adq = tail call i32 %i.ado(ptr noundef nonnull %i.adp, ptr noundef nonnull %i.kr, i32 noundef %i.za) #12, !inline_history !115
  %i.adr = add i32 %i.adq, %i.yz
  %i.ads = ashr i32 %i.adr, %.0182.i
  %i.adt = tail call i32 @llvm.smax.i32(i32 %i.ads, i32 -8192)
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.adt, i32 8191)
  %i.adu = shl nsw i32 %.0.i.i, %.0.i231307504.i
  %i.adv = load i32, ptr %.3197343.i, align 4, !tbaa !52
  %i.adw = sub i32 %i.adu, %i.adv                 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.3197343.i, i64 4 ; 2 uses
  store i32 %i.adw, ptr %.3197343.i, align 4, !tbaa !52
  %i.ady = ashr i32 %i.adw, %.0.i231307504.i
  %i.adz = trunc i32 %i.ady to i16
  %gep.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv397.i
  store i16 %i.adz, ptr %gep.i, align 2, !tbaa !55
  %indvars.iv.next398.i = add nuw nsw i64 %indvars.iv397.i, 1 ; 2 uses
  %exitcond401.not.i = icmp eq i64 %indvars.iv.next398.i, %wide.trip.count400.i
  br i1 %exitcond401.not.i, label %._crit_edge347.split.i, label %.lr.ph346.split.split.i, !llvm.loop !114

._crit_edge347.split.i:                           ; preds = %.lr.ph346.split.split.i, %.lr.ph346.split.split.us.i, %middle.block, %.lr.ph346.i.a
  %.3197.lcssa.i = phi ptr [ %.2196355.i, %.lr.ph346.i.a ], [ %i.adl, %.lr.ph346.split.split.us.i ], [ %i.acx, %middle.block ], [ %i.adx, %.lr.ph346.split.split.i ]
  %i.aea = sub nsw i32 %.2190356.i, %i.acv        ; 2 uses
  %i.aeb = icmp sgt i32 %i.aea, 0
  br i1 %i.aeb, label %bb.bo, label %decode_subframe.exit.thread95

bb.bo:                                            ; preds = %._crit_edge347.split.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ks, ptr nonnull align 2 %i.zg, i64 %i.zi, i1 false)
  br label %.lr.ph346.i.a, !llvm.loop !116

decode_subframe.exit.thread:                      ; preds = %bb.ak, %bb.al, %bits_read_nz_le.exit251.i, %bits_read_bit_le.exit247.thread.i, %._crit_edge332.i, %bb.an, %bits_read_nz_le.exit228.i, %bits_read_bit_le.exit224.thread.i, %bits_read_bit_le.exit224.thread.thread.i
  %.1192.i.ph = phi i32 [ -1094995529, %bits_read_bit_le.exit224.thread.thread.i ], [ -1094995529, %bits_read_bit_le.exit224.thread.i ], [ -1094995529, %bits_read_nz_le.exit228.i ], [ %i.ni, %bb.an ], [ %i.ye, %._crit_edge332.i ], [ -1094995529, %bits_read_bit_le.exit247.thread.i ], [ -1094995529, %bits_read_nz_le.exit251.i ], [ -1094995529, %bb.al ], [ -1094995529, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

decode_subframe.exit.thread95:                    ; preds = %._crit_edge347.split.i, %._crit_edge347.split.us.us.i, %._crit_edge336.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.bp

decode_subframe.exit:                             ; preds = %bb.af, %bits_read_bit_le.exit.i87, %bits_read_bit_le.exit.thread492.i
  %i.aec = tail call fastcc i32 @decode_residues(ptr noundef nonnull %0, ptr noundef %.065115, i32 noundef range(i32 -32768, 32768) %i.kw) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.aed = icmp slt i32 %i.aec, 0
  br i1 %i.aed, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %decode_subframe.exit.thread95, %decode_subframe.exit
  %i.aee = load i16, ptr %i.ku, align 2, !tbaa !55 ; 2 uses
  %i.aef = sext i16 %i.aee to i32
  %i.aeg = sext i16 %i.aee to i64
  %i.aeh = getelementptr inbounds [4 x i8], ptr %.065115, i64 %i.aeg
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %i.aei = load i32, ptr %i.di, align 8, !tbaa !53
  %i.aej = sext i32 %i.aei to i64
  %i.aek = icmp slt i64 %indvars.iv.next134, %i.aej
  br i1 %i.aek, label %bb.ae, label %.loopexit, !llvm.loop !119

.loopexit:                                        ; preds = %bits_read_nz_le.exit85, %bits_read_nz_le.exit85.1, %bits_read_nz_le.exit85.2, %bits_read_nz_le.exit85.3, %bits_read_nz_le.exit85.4, %bits_read_nz_le.exit85.5, %bits_read_nz_le.exit85.6, %decode_subframe.exit, %bb.bp, %decode_subframe.exit.thread, %bb.ad, %bb.i, %get_bits_esc4.exit
  %.268 = phi i32 [ %.1192.i.ph, %decode_subframe.exit.thread ], [ -1094995529, %get_bits_esc4.exit ], [ 0, %bb.bp ], [ -1094995529, %bb.i ], [ -1094995529, %bb.ad ], [ %i.aec, %decode_subframe.exit ], [ -1094995529, %bits_read_nz_le.exit85.6 ], [ -1094995529, %bits_read_nz_le.exit85.5 ], [ -1094995529, %bits_read_nz_le.exit85.4 ], [ -1094995529, %bits_read_nz_le.exit85.3 ], [ -1094995529, %bits_read_nz_le.exit85.2 ], [ -1094995529, %bits_read_nz_le.exit85.1 ], [ -1094995529, %bits_read_nz_le.exit85 ]
  ret i32 %.268
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @bits_read_nz_le(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42   ; 4 uses
  %i.c = icmp ugt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43
  %.not.i = icmp ult ptr %i.e, %i.g
  br i1 %.not.i, label %bits_priv_refill_32_le.exit, label %bb.c

bits_priv_refill_32_le.exit:                      ; preds = %bb.b
  %i.h = load i32, ptr %i.e, align 1, !tbaa !46
  %i.i = zext i32 %i.h to i64
  %i.j = zext nneg i32 %i.b to i64
  %i.k = shl i64 %i.i, %i.j
  %i.l = load i64, ptr %0, align 8, !tbaa !45
  %i.m = or i64 %i.k, %i.l
  store i64 %i.m, ptr %0, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store ptr %i.n, ptr %i.d, align 8, !tbaa !41
  %i.o = add i32 %i.b, 32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bits_priv_refill_32_le.exit, %bb.a
  %i.p = phi i32 [ %i.o, %bits_priv_refill_32_le.exit ], [ %i.b, %bb.a ], [ %1, %bb.b ]
  %.val.i = load i64, ptr %0, align 8, !tbaa !45  ; 2 uses
  %i.q = sub i32 64, %1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = lshr i64 -1, %i.r
  %i.t = and i64 %.val.i, %i.s
  %i.u = zext nneg i32 %1 to i64
  %i.v = lshr i64 %.val.i, %i.u
  store i64 %i.v, ptr %0, align 8, !tbaa !45
  %i.w = sub i32 %i.p, %1
  store i32 %i.w, ptr %i.a, align 8, !tbaa !42
  %i.x = trunc i64 %i.t to i32
  ret i32 %i.x
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decorrelate(ptr noundef %0, i32 noundef range(i32 -128, 128) %1, i32 noundef range(i32 -128, 128) %2, i32 noundef range(i32 -2147483648, 2147483647) %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.g = load i8, ptr %i.f, align 16, !tbaa !56   ; 3 uses
  %i.h = icmp sgt i8 %i.g, 5
  %i.i = zext i1 %i.h to i64                      ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.i ; 12 uses
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.i ; 12 uses
  %i.o = load i32, ptr %i.j, align 4, !tbaa !52   ; 7 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !52   ; 7 uses
  %i.q = icmp slt i8 %i.g, 6
  %i.r = zext i1 %i.q to i32                      ; 2 uses
  %i.s = add nsw i32 %3, %i.r                     ; 8 uses
  switch i8 %i.g, label %.loopexit [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.j
    i8 7, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !141
  tail call void %i.u(ptr noundef nonnull %i.j, ptr noundef nonnull %i.n, i32 noundef %i.s) #12
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !142
  tail call void %i.w(ptr noundef nonnull %i.j, ptr noundef nonnull %i.n, i32 noundef %i.s) #12
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !143
  tail call void %i.y(ptr noundef nonnull %i.j, ptr noundef nonnull %i.n, i32 noundef %i.s) #12
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.0177 = phi i32 [ %i.o, %bb.e ], [ %i.p, %bb.a ]
  %.0175 = phi i32 [ %i.p, %bb.e ], [ %i.o, %bb.a ]
  %.0169 = phi ptr [ %i.j, %bb.e ], [ %i.n, %bb.a ] ; 2 uses
  %.0163 = phi ptr [ %i.n, %bb.e ], [ %i.j, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !42  ; 3 uses
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %bb.g, label %bits_read_bit_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !41 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43
  %.not.i.i.i = icmp ult ptr %i.ac, %i.ae
  br i1 %.not.i.i.i, label %bits_read_bit_le.exit.thread11.i, label %get_bits_esc4.exit.thread

bits_read_bit_le.exit.i:                          ; preds = %bb.f
  %.val.i.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !45 ; 2 uses
  %i.af = add i32 %i.aa, -1                       ; 5 uses
  %i.ag = lshr i64 %.val.i.pre.i.i, 1             ; 4 uses
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !45
  store i32 %i.af, ptr %i.z, align 8, !tbaa !42
  %i.ah = and i64 %.val.i.pre.i.i, 1
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %get_bits_esc4.exit, label %bb.h

bits_read_bit_le.exit.thread11.i:                 ; preds = %bb.g
  %i.ai = load i64, ptr %i.ac, align 1, !tbaa !46 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.aj, ptr %i.ab, align 16, !tbaa !41
  %i.ak = lshr i64 %i.ai, 1                       ; 2 uses
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !45
  %i.al = and i64 %i.ai, 1
  %.not13.i = icmp eq i64 %i.al, 0
  br i1 %.not13.i, label %.bits_read_nz_le.exit_crit_edge.i, label %bits_read_nz_le.exit.i

bb.h:                                             ; preds = %bits_read_bit_le.exit.i
  %i.am = icmp ult i32 %i.aa, 5
  br i1 %i.am, label %bb.i, label %bits_read_nz_le.exit.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !41 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !43
  %.not.i.i3.i = icmp ult ptr %i.ao, %i.aq
  br i1 %.not.i.i3.i, label %bits_priv_refill_32_le.exit.i.i, label %bits_read_nz_le.exit.i

bits_priv_refill_32_le.exit.i.i:                  ; preds = %bb.i
  %i.ar = load i32, ptr %i.ao, align 1, !tbaa !46
  %i.as = zext i32 %i.ar to i64
  %i.at = zext nneg i32 %i.af to i64
  %i.au = shl nuw nsw i64 %i.as, %i.at
  %i.av = or i64 %i.au, %i.ag
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store ptr %i.aw, ptr %i.an, align 16, !tbaa !41
  %i.ax = or disjoint i32 %i.af, 32
  br label %bits_read_nz_le.exit.i

bits_read_nz_le.exit.i:                           ; preds = %bits_priv_refill_32_le.exit.i.i, %bb.i, %bb.h, %bits_read_bit_le.exit.thread11.i
  %.val.i.i2.i = phi i64 [ %i.av, %bits_priv_refill_32_le.exit.i.i ], [ %i.ag, %bb.h ], [ %i.ag, %bb.i ], [ %i.ak, %bits_read_bit_le.exit.thread11.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@decode_segment:bb.a
  %.val.i.i.i67.7 = phi i64 [ %i.cr, %._crit_edge.i.i.7 ], [ %i.cw, %bits_priv_refill_64_le.exit.i.i.7 ] ; 2 uses
  %i.cz = lshr i64 %.val.i.i.i67.7, 1             ; 3 uses
  store i64 %i.cz, ptr %i.a, align 8, !tbaa !45
  store i32 %i.cy, ptr %i.i, align 8, !tbaa !42
  %i.da = and i64 %.val.i.i.i67.7, 1
  %.not.not.i.7 = icmp eq i64 %i.da, 0
  br i1 %.not.not.i.7, label %bits_read_bit_le.exit.thread.i.7, label %get_unary.exit

bits_read_bit_le.exit.thread.i.7:                 ; preds = %bits_read_bit_le.exit.i.7
  %.not.i.i66.8 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i66.8, label %bits_read_bit_le.exit.thread.i.7.thread, label %._crit_edge.i.i.8

._crit_edge.i.i.8:                                ; preds = %bits_read_bit_le.exit.thread.i.7
  %i.db = add i32 %i.cy, -1
  br label %bits_read_bit_le.exit.i.8

bits_read_bit_le.exit.thread.i.7.thread:          ; preds = %bits_read_bit_le.exit.thread.i.6.thread, %bits_read_bit_le.exit.thread.i.7
  %.val.i.pre.i.i.8164 = phi i64 [ %i.cz, %bits_read_bit_le.exit.thread.i.7 ], [ %.val.i.pre.i.i.7161, %bits_read_bit_le.exit.thread.i.6.thread ]
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !41  ; 3 uses
  %i.dd = load ptr, ptr %i.k, align 8, !tbaa !43
  %.not.i.i.i68.8 = icmp ult ptr %i.dc, %i.dd
  br i1 %.not.i.i.i68.8, label %bits_priv_refill_64_le.exit.i.i.8, label %bits_read_bit_le.exit.thread.i.8.thread

bits_priv_refill_64_le.exit.i.i.8:                ; preds = %bits_read_bit_le.exit.thread.i.7.thread
  %i.de = load i64, ptr %i.dc, align 1, !tbaa !46
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.df, ptr %i.j, align 8, !tbaa !41
  br label %bits_read_bit_le.exit.i.8

bits_read_bit_le.exit.i.8:                        ; preds = %bits_priv_refill_64_le.exit.i.i.8, %._crit_edge.i.i.8
  %i.dg = phi i32 [ %i.db, %._crit_edge.i.i.8 ], [ 63, %bits_priv_refill_64_le.exit.i.i.8 ] ; 4 uses
  %.val.i.i.i67.8 = phi i64 [ %i.cz, %._crit_edge.i.i.8 ], [ %i.de, %bits_priv_refill_64_le.exit.i.i.8 ] ; 2 uses
  %i.dh = lshr i64 %.val.i.i.i67.8, 1             ; 3 uses
  store i64 %i.dh, ptr %i.a, align 8, !tbaa !45
  store i32 %i.dg, ptr %i.i, align 8, !tbaa !42
  %i.di = and i64 %.val.i.i.i67.8, 1
  %.not.not.i.8 = icmp eq i64 %i.di, 0
  br i1 %.not.not.i.8, label %bits_read_bit_le.exit.thread.i.8, label %get_unary.exit

bits_read_bit_le.exit.thread.i.8:                 ; preds = %bits_read_bit_le.exit.i.8
  %i.dj = icmp ult i32 %i.dg, 3
  br i1 %i.dj, label %bits_read_bit_le.exit.thread.i.8.thread, label %bits_read_nz_le.exit

get_unary.exit:                                   ; preds = %bits_read_bit_le.exit.i.8, %bits_read_bit_le.exit.i.7, %bits_read_bit_le.exit.i.6, %bits_read_bit_le.exit.i.5, %bits_read_bit_le.exit.i.4, %bits_read_bit_le.exit.i.3, %bits_read_bit_le.exit.i.2, %bits_read_bit_le.exit.i.1, %bits_read_bit_le.exit.i
  %.07.i.lcssa = phi i32 [ 0, %bits_read_bit_le.exit.i ], [ 1, %bits_read_bit_le.exit.i.1 ], [ 2, %bits_read_bit_le.exit.i.2 ], [ 3, %bits_read_bit_le.exit.i.3 ], [ 4, %bits_read_bit_le.exit.i.4 ], [ 5, %bits_read_bit_le.exit.i.5 ], [ 6, %bits_read_bit_le.exit.i.6 ], [ 7, %bits_read_bit_le.exit.i.7 ], [ 8, %bits_read_bit_le.exit.i.8 ]
  %i.dk = mul i32 %.07.i.lcssa, %.sroa.8.0.copyload
  %i.dl = sub i32 %i.ao, %.sroa.5.0.copyload
  %i.dm = add i32 %i.dl, %i.dk
  br label %.critedge

bits_read_bit_le.exit.thread.i.8.thread:          ; preds = %bits_read_bit_le.exit.thread.i.7.thread, %bits_read_bit_le.exit.thread.i.8
  %i.dn = phi i32 [ %i.dg, %bits_read_bit_le.exit.thread.i.8 ], [ 0, %bits_read_bit_le.exit.thread.i.7.thread ] ; 2 uses
  %i.do = phi i64 [ %i.dh, %bits_read_bit_le.exit.thread.i.8 ], [ %.val.i.pre.i.i.8164, %bits_read_bit_le.exit.thread.i.7.thread ] ; 2 uses
  %i.dp = load ptr, ptr %i.j, align 8, !tbaa !41  ; 3 uses
  %i.dq = load ptr, ptr %i.k, align 8, !tbaa !43
  %.not.i.i70 = icmp ult ptr %i.dp, %i.dq
  br i1 %.not.i.i70, label %bits_priv_refill_32_le.exit.i, label %bits_read_nz_le.exit

bits_priv_refill_32_le.exit.i:                    ; preds = %bits_read_bit_le.exit.thread.i.8.thread
  %i.dr = load i32, ptr %i.dp, align 1, !tbaa !46
  %i.ds = zext i32 %i.dr to i64
  %i.dt = zext nneg i32 %i.dn to i64
  %i.du = shl nuw nsw i64 %i.ds, %i.dt
  %i.dv = or i64 %i.du, %i.do
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store ptr %i.dw, ptr %i.j, align 8, !tbaa !41
  %i.dx = or disjoint i32 %i.dn, 32
  br label %bits_read_nz_le.exit

bits_read_nz_le.exit:                             ; preds = %bits_read_bit_le.exit.thread.i.8, %bits_read_bit_le.exit.thread.i.8.thread, %bits_priv_refill_32_le.exit.i
  %.val.i.i69 = phi i64 [ %i.dv, %bits_priv_refill_32_le.exit.i ], [ %i.dh, %bits_read_bit_le.exit.thread.i.8 ], [ %i.do, %bits_read_bit_le.exit.thread.i.8.thread ] ; 2 uses
  %i.dy = phi i32 [ %i.dx, %bits_priv_refill_32_le.exit.i ], [ %i.dg, %bits_read_bit_le.exit.thread.i.8 ], [ 3, %bits_read_bit_le.exit.thread.i.8.thread ] ; 2 uses
  %i.dz = lshr i64 %.val.i.i69, 3                 ; 5 uses
  store i64 %i.dz, ptr %i.a, align 8, !tbaa !45
  %i.ea = add i32 %i.dy, -3                       ; 5 uses
  store i32 %i.ea, ptr %i.i, align 8, !tbaa !42
  %i.eb = trunc i64 %.val.i.i69 to i32
  %i.ec = and i32 %i.eb, 7                        ; 2 uses
  switch i32 %i.ec, label %bb.o [
    i32 0, label %bb.q
    i32 7, label %bb.m
  ]

bb.m:                                             ; preds = %bits_read_nz_le.exit
  %i.ed = icmp ult i32 %i.ea, 5
  br i1 %i.ed, label %bb.n, label %bits_read_nz_le.exit74

bb.n:                                             ; preds = %bb.m
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !41  ; 3 uses
  %i.ef = load ptr, ptr %i.k, align 8, !tbaa !43
  %.not.i.i72 = icmp ult ptr %i.ee, %i.ef
  br i1 %.not.i.i72, label %bits_priv_refill_32_le.exit.i73, label %bits_read_nz_le.exit74

bits_priv_refill_32_le.exit.i73:                  ; preds = %bb.n
  %i.eg = load i32, ptr %i.ee, align 1, !tbaa !46
  %i.eh = zext i32 %i.eg to i64
  %i.ei = zext nneg i32 %i.ea to i64
  %i.ej = shl nuw nsw i64 %i.eh, %i.ei
  %i.ek = or i64 %i.ej, %i.dz
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store ptr %i.el, ptr %i.j, align 8, !tbaa !41
  %i.em = add nuw nsw i32 %i.dy, 29
  br label %bits_read_nz_le.exit74

bits_read_nz_le.exit74:                           ; preds = %bb.m, %bb.n, %bits_priv_refill_32_le.exit.i73
  %.val.i.i71 = phi i64 [ %i.ek, %bits_priv_refill_32_le.exit.i73 ], [ %i.dz, %bb.m ], [ %i.dz, %bb.n ] ; 2 uses
  %i.en = phi i32 [ %i.em, %bits_priv_refill_32_le.exit.i73 ], [ %i.ea, %bb.m ], [ 5, %bb.n ]
  %i.eo = lshr i64 %.val.i.i71, 5                 ; 2 uses
  store i64 %i.eo, ptr %i.a, align 8, !tbaa !45
  %i.ep = add i32 %i.en, -5                       ; 2 uses
  store i32 %i.ep, ptr %i.i, align 8, !tbaa !42
  %i.eq = trunc i64 %.val.i.i71 to i32
  %i.er = and i32 %i.eq, 31                       ; 2 uses
  %i.es = add nuw nsw i32 %i.er, 7
  %i.et = icmp samesign ugt i32 %i.er, 22
  br i1 %i.et, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bits_read_nz_le.exit, %bits_read_nz_le.exit74
  %.val.i.i.pre4.i82 = phi i64 [ %i.eo, %bits_read_nz_le.exit74 ], [ %i.dz, %bits_read_nz_le.exit ] ; 3 uses
  %i.eu = phi i32 [ %i.ep, %bits_read_nz_le.exit74 ], [ %i.ea, %bits_read_nz_le.exit ] ; 4 uses
  %.0 = phi i32 [ %i.es, %bits_read_nz_le.exit74 ], [ %i.ec, %bits_read_nz_le.exit ] ; 5 uses
  %i.ev = icmp ugt i32 %.0, %i.eu
  br i1 %i.ev, label %bb.p, label %bits_read_le.exit84

bb.p:                                             ; preds = %bb.o
  %i.ew = load ptr, ptr %i.j, align 8, !tbaa !41  ; 3 uses
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !43
  %.not.i.i.i81 = icmp ult ptr %i.ew, %i.ex
  br i1 %.not.i.i.i81, label %bits_priv_refill_32_le.exit.i.i83, label %bits_read_le.exit84

bits_priv_refill_32_le.exit.i.i83:                ; preds = %bb.p
  %i.ey = load i32, ptr %i.ew, align 1, !tbaa !46
  %i.ez = zext i32 %i.ey to i64
  %i.fa = zext nneg i32 %i.eu to i64
  %i.fb = shl nuw nsw i64 %i.ez, %i.fa
  %i.fc = or i64 %i.fb, %.val.i.i.pre4.i82
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store ptr %i.fd, ptr %i.j, align 8, !tbaa !41
  %i.fe = add nuw nsw i32 %i.eu, 32
  br label %bits_read_le.exit84

bits_read_le.exit84:                              ; preds = %bb.o, %bb.p, %bits_priv_refill_32_le.exit.i.i83
  %.val.i.i.i79 = phi i64 [ %i.fc, %bits_priv_refill_32_le.exit.i.i83 ], [ %.val.i.i.pre4.i82, %bb.p ], [ %.val.i.i.pre4.i82, %bb.o ] ; 2 uses
  %i.ff = phi i32 [ %i.fe, %bits_priv_refill_32_le.exit.i.i83 ], [ %.0, %bb.p ], [ %i.eu, %bb.o ]
  %i.fg = sub nuw nsw i32 64, %.0
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = lshr i64 -1, %i.fh
  %i.fj = and i64 %.val.i.i.i79, %i.fi
  %i.fk = zext nneg i32 %.0 to i64
  %i.fl = lshr i64 %.val.i.i.i79, %i.fk
  store i64 %i.fl, ptr %i.a, align 8, !tbaa !45
  %i.fm = sub i32 %i.ff, %.0
  store i32 %i.fm, ptr %i.i, align 8, !tbaa !42
  %i.fn = trunc nuw nsw i64 %i.fj to i32
  %i.fo = add nuw nsw i32 %i.fn, 1
  %i.fp = mul i32 %i.fo, %.sroa.8.0.copyload
  %i.fq = add i32 %i.fp, %i.ao
  br label %bb.q

bb.q:                                             ; preds = %bits_read_nz_le.exit, %bits_read_le.exit84
  %.043 = phi i32 [ %i.fq, %bits_read_le.exit84 ], [ %i.ao, %bits_read_nz_le.exit ]
  %i.fr = add i32 %.043, %.sroa.11.0.copyload
  br label %.critedge

bb.r:                                             ; preds = %bb.j
  %i.fs = sub i32 %i.ao, %.sroa.5.0.copyload
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %get_unary.exit, %bb.i, %bb.r, %bits_read_bit_le.exit, %bits_read_le.exit
  %.4 = phi i32 [ %.0.i, %bb.i ], [ %i.fs, %bb.r ], [ %.0.i, %bits_read_bit_le.exit ], [ %.0.i, %bits_read_le.exit ], [ %i.fr, %bb.q ], [ %i.dm, %get_unary.exit ] ; 2 uses
  %i.ft = lshr i32 %.4, 1
  %i.fu = and i32 %.4, 1
  %i.fv = sub nsw i32 0, %i.fu
  %i.fw = xor i32 %i.ft, %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !156

.loopexit:                                        ; preds = %.critedge, %bits_read_nz_le.exit74, %bb.d, %bb.c, %bb.b
  %.6 = phi i32 [ 0, %bb.b ], [ -1094995529, %bb.c ], [ 0, %bb.d ], [ 0, %.critedge ], [ -1094995529, %bits_read_nz_le.exit74 ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare void @av_freep(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!30 = !{!"AudioDSPContext", !9, i64 0, !9, i64 8, !9, i64 16}
!31 = !{!"TAKDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!32 = !{!"TAKStreamInfo", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !13, i64 40, !13, i64 48}
!33 = !{!"BitstreamContextLE", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !6, i64 32, !6, i64 36}
!34 = !{!"TAKDecContext", !29, i64 0, !30, i64 8, !31, i64 32, !32, i64 64, !33, i64 120, !6, i64 160, !6, i64 164, !14, i64 168, !6, i64 176, !5, i64 184, !5, i64 312, !5, i64 328, !5, i64 344, !6, i64 856, !5, i64 860, !6, i64 876, !5, i64 880, !5, i64 881, !5, i64 945, !5, i64 1088, !5, i64 1600}
!35 = !{!34, !29, i64 0}
!36 = !{!27, !6, i64 652}
!37 = !{!27, !6, i64 344}
!38 = !{!34, !6, i64 160}
!39 = !{!34, !6, i64 876}
!40 = !{!33, !14, i64 8}
!41 = !{!33, !14, i64 24}
!42 = !{!33, !6, i64 32}
!43 = !{!33, !14, i64 16}
!44 = !{!33, !6, i64 36}
!45 = !{!33, !13, i64 0}
!46 = !{!5, !5, i64 0}
!47 = !{!34, !6, i64 164}
!48 = !{!24, !24, i64 0}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!6, !6, i64 0}
!53 = !{!34, !6, i64 856}
!54 = !{!"short", !5, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!34, !5, i64 880}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!27, !6, i64 348}
!59 = !{!34, !9, i64 8}
!60 = !{!27, !6, i64 648}
!61 = distinct !{!61, !49, !50, !51}
!62 = distinct !{!62, !49, !51, !50}
!63 = distinct !{!63, !49}
!64 = distinct !{!64, !49, !101}
!65 = distinct !{!65, !49}
!66 = distinct !{!66, !49}
!67 = distinct !{!67, !49}
!68 = distinct !{!68, !57}
!69 = distinct !{!69, !49}
!70 = distinct !{!70, !49}
!71 = distinct !{!71, !49}
!72 = distinct !{!72, !49}
!73 = distinct !{!73, !49}
!74 = distinct !{!74, !49, !50, !51}
!75 = distinct !{!75, !49, !51, !50}
!76 = distinct !{!76, !49}
!77 = distinct !{!77, !49}
!78 = distinct !{!78, !49, !101}
!79 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!80 = !{!79, !6, i64 32}
!81 = !{!79, !14, i64 24}
!82 = !{!27, !6, i64 528}
!83 = !{!34, !6, i64 68}
!84 = !{!34, !6, i64 72}
!85 = !{!34, !6, i64 80}
!86 = !{!34, !6, i64 92}
!87 = !{!34, !6, i64 84}
!88 = !{!34, !6, i64 76}
!89 = !{!34, !13, i64 104}
!90 = !{!27, !6, i64 352}
!91 = !{!27, !6, i64 356}
!92 = !{!34, !6, i64 96}
!93 = !{!"p2 omnipotent char", !25, i64 0}
!94 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!95 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!96 = !{!"AVFrame", !5, i64 0, !5, i64 64, !93, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !94, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !95, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!97 = !{!96, !6, i64 112}
!98 = !{!96, !93, i64 96}
!99 = !{!14, !14, i64 0}
!100 = !{!34, !14, i64 168}
!101 = !{!"llvm.loop.unswitch.partial.disable"}
!102 = !{!"MCDParam", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!103 = !{!102, !5, i64 0}
!104 = !{!102, !5, i64 1}
!105 = !{!102, !5, i64 3}
!106 = !{!102, !5, i64 2}
!107 = distinct !{!107, !49}
!108 = distinct !{!108, !49}
!109 = distinct !{!109, !49}
!110 = distinct !{!110, !49}
!111 = distinct !{!111, !49, !50, !51}
!112 = distinct !{!112, !49, !51, !50}
!113 = distinct !{!113, !49}
!114 = distinct !{!114, !49}
!115 = distinct !{null}
!116 = distinct !{!116, !49}
!117 = distinct !{!117, !49, !50, !51}
!118 = distinct !{!118, !49, !51, !50}
!119 = distinct !{!119, !49}
!120 = distinct !{!120, !49}
!121 = distinct !{!121, i1 false, !"LVerDomain"}
!122 = distinct !{!122, !121}
!123 = distinct !{!123, !121}
!124 = distinct !{!124, !49, !50, !51}
!125 = distinct !{!125, !57}
!126 = distinct !{!126, !49, !50}
!127 = distinct !{!127, i1 false, !"LVerDomain"}
!128 = distinct !{!128, !127}
!129 = distinct !{!129, !127}
!130 = distinct !{!130, !49, !50, !51}
!131 = distinct !{!131, !57}
!132 = distinct !{!132, !49, !50}
!133 = distinct !{!133, !49, !50, !51}
!134 = distinct !{!134, !49, !51, !50}
!135 = distinct !{!135, !49, !50, !51}
!136 = distinct !{!136, !49, !50, !51}
!137 = distinct !{!137, !49, !51, !50}
!138 = distinct !{!138, !49, !51, !50}
!139 = distinct !{!139, !49}
!140 = distinct !{!140, !49}
!141 = !{!34, !9, i64 32}
!142 = !{!34, !9, i64 40}
!143 = !{!34, !9, i64 48}
!144 = !{!34, !9, i64 56}
!145 = !{!122}
!146 = !{!123}
!147 = !{!128}
!148 = !{!129}
!149 = distinct !{!149, !49}
!150 = distinct !{!150, !49}
!151 = distinct !{!151, !49}
!152 = distinct !{!152, !57}
!153 = distinct !{!153, !49}
!154 = distinct !{!154, !49}
!155 = distinct !{!155, !49}
!156 = distinct !{!156, !49}
end_hunk_2
