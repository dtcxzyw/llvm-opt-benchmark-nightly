Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wcmv?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@decode_frame:bb.a
  %i.gq = zext nneg i32 %.0.i217.3 to i64
  %i.gr = mul nsw i64 %i.gp, %i.gq
  %i.gs = add nsw i64 %i.gr, %i.gn
  %i.gt = icmp slt i64 %i.gs, 2147483648
  br i1 %i.gt, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bytestream2_get_le16.exit218.3
  %i.gu = mul nsw i32 %.0.i219.3, %i.e
  %i.gv = mul nsw i32 %i.gu, %.0.i217.3
  %i.gw = add nsw i32 %i.gv, %i.fy                ; 3 uses
  %exitcond.not.3 = icmp eq i32 %.0.i227, 4
  br i1 %exitcond.not.3, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gx = ptrtoint ptr %.sroa.0248.12.3 to i64
  %i.gy = sub i64 %i.o, %i.gx
  %..i233.4 = tail call i64 @llvm.smin.i64(i64 %i.gy, i64 4)
  %i.gz = getelementptr inbounds i8, ptr %.sroa.0248.12.3, i64 %..i233.4 ; 3 uses
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = sub i64 %i.o, %i.ha
  %i.hc = icmp slt i64 %i.hb, 2
  br i1 %i.hc, label %bytestream2_get_le16.exit220.4, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 2 ; 2 uses
  %i.he = load i16, ptr %i.gz, align 1, !tbaa !44
  %i.hf = zext i16 %i.he to i32
  %.pre378.4 = ptrtoint ptr %i.hd to i64
  br label %bytestream2_get_le16.exit220.4

bytestream2_get_le16.exit220.4:                   ; preds = %bb.av, %bb.au
  %.pre-phi379.4 = phi i64 [ %i.o, %bb.au ], [ %.pre378.4, %bb.av ]
  %.sroa.0248.13.4 = phi ptr [ %i.n, %bb.au ], [ %i.hd, %bb.av ] ; 2 uses
  %.0.i219.4 = phi i32 [ 0, %bb.au ], [ %i.hf, %bb.av ] ; 2 uses
  %i.hg = sub i64 %i.o, %.pre-phi379.4
  %i.hh = icmp slt i64 %i.hg, 2
  br i1 %i.hh, label %bytestream2_get_le16.exit218.4, label %bb.aw

bb.aw:                                            ; preds = %bytestream2_get_le16.exit220.4
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0248.13.4, i64 2
  %i.hj = load i16, ptr %.sroa.0248.13.4, align 1, !tbaa !44
  %i.hk = zext i16 %i.hj to i32
  br label %bytestream2_get_le16.exit218.4

bytestream2_get_le16.exit218.4:                   ; preds = %bb.aw, %bytestream2_get_le16.exit220.4
  %.sroa.0248.12.4 = phi ptr [ %i.hi, %bb.aw ], [ %i.n, %bytestream2_get_le16.exit220.4 ]
  %.0.i217.4 = phi i32 [ %i.hk, %bb.aw ], [ 0, %bytestream2_get_le16.exit220.4 ] ; 2 uses
  %i.hl = sext i32 %i.gw to i64
  %i.hm = zext nneg i32 %.0.i219.4 to i64
  %i.hn = mul nsw i64 %i.hm, %i.dk
  %i.ho = zext nneg i32 %.0.i217.4 to i64
  %i.hp = mul nsw i64 %i.hn, %i.ho
  %i.hq = add nsw i64 %i.hp, %i.hl
  %i.hr = icmp slt i64 %i.hq, 2147483648
  br i1 %i.hr, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %bytestream2_get_le16.exit218.4
  %i.hs = mul nsw i32 %.0.i219.4, %i.e
  %i.ht = mul nsw i32 %i.hs, %.0.i217.4
  %i.hu = add nsw i32 %i.ht, %i.gw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.at, %bb.ap, %bb.al, %bb.ah
  %.lcssa419 = phi i32 [ %i.ec, %bb.ah ], [ %i.fa, %bb.al ], [ %i.fy, %bb.ap ], [ %i.gw, %bb.at ], [ %i.hu, %bb.ax ] ; 2 uses
  %.sroa.0248.12.lcssa418 = phi ptr [ %.sroa.0248.12, %bb.ah ], [ %.sroa.0248.12.1, %bb.al ], [ %.sroa.0248.12.2, %bb.ap ], [ %.sroa.0248.12.3, %bb.at ], [ %.sroa.0248.12.4, %bb.ax ] ; 3 uses
  %i.hv = icmp sgt i32 %.lcssa419, 65534
  br i1 %i.hv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hw = ptrtoint ptr %.sroa.0248.12.lcssa418 to i64
  %i.hx = sub i64 %i.o, %i.hw
  %..i232 = tail call i64 @llvm.smin.i64(i64 %i.hx, i64 3)
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ay
  %i.hy = icmp sgt i32 %.lcssa419, 254
  %i.hz = ptrtoint ptr %.sroa.0248.12.lcssa418 to i64
  %i.ia = sub i64 %i.o, %i.hz                     ; 2 uses
  br i1 %i.hy, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %..i231 = tail call i64 @llvm.smin.i64(i64 %i.ia, i64 2)
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ia, i64 1)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.az
  %..i231.sink = phi i64 [ %..i231, %bb.bb ], [ %..i, %bb.bc ], [ %..i232, %bb.az ]
  %i.ib = getelementptr inbounds i8, ptr %.sroa.0248.12.lcssa418, i64 %..i231.sink
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = sub i64 %i.ic, %i.p                     ; 2 uses
  %i.ie = trunc i64 %i.id to i32
  %i.if = load ptr, ptr %i.g, align 8, !tbaa !42
  %sext = shl i64 %i.id, 32
  %i.ig = ashr exact i64 %sext, 32
  %i.ih = getelementptr inbounds i8, ptr %i.if, i64 %i.ig
  store ptr %i.ih, ptr %i.d, align 8, !tbaa !45
  %i.ii = load i32, ptr %i.i, align 8, !tbaa !43
  %i.ij = sub nsw i32 %i.ii, %i.ie
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.ij, ptr %i.ik, align 8, !tbaa !46
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ac, %bb.ad
  %.pre-phi371 = phi i64 [ %i.o, %bb.bd ], [ %i.br, %bb.ac ], [ %i.o, %bb.ad ] ; 8 uses
  %.sroa.76.1 = phi ptr [ %i.n, %bb.bd ], [ %i.bq, %bb.ac ], [ %i.n, %bb.ad ] ; 4 uses
  %.sroa.0248.6 = phi ptr [ %i.dj, %bb.bd ], [ %i.bh, %bb.ac ], [ %.sroa.0248.15, %bb.ad ] ; 2 uses
  %i.il = ptrtoint ptr %.sroa.0248.6 to i64
  %i.im = sub i64 %.pre-phi371, %i.il
  %i.in = trunc i64 %i.im to i32
  %i.io = shl nuw nsw i32 %.0.i227, 3
  %i.ip = icmp sgt i32 %i.io, %i.in
  br i1 %i.ip, label %.critedge, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !50
  %.not205 = icmp eq i64 %i.ir, 0
  br i1 %.not205, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.is = load ptr, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 64
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !51
  %i.iv = sext i32 %i.iu to i64
  store i64 %i.iv, ptr %i.a, align 16, !tbaa !52
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !29
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !53
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !54
  %i.jc = call i32 @av_image_fill_black(ptr noundef %i.is, ptr noundef nonnull %i.a, i32 noundef %i.ix, i32 noundef 0, i32 noundef %i.iz, i32 noundef %i.jb) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %.not200, label %.thread329.thread, label %.lr.ph358

.lr.ph358:                                        ; preds = %bb.bh
  %i.jd = icmp eq i32 %.0.i227, 1
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph358, %._crit_edge
  %.0161356 = phi i32 [ 0, %.lr.ph358 ], [ %i.li, %._crit_edge ]
  %.0174355 = phi i32 [ 0, %.lr.ph358 ], [ %.1175, %._crit_edge ] ; 2 uses
  %.sroa.0248.7354 = phi ptr [ %.sroa.0248.6, %.lr.ph358 ], [ %.sroa.0248.8, %._crit_edge ] ; 3 uses
  %i.ji = ptrtoint ptr %.sroa.0248.7354 to i64
  %i.jj = sub i64 %.pre-phi371, %i.ji
  %i.jk = icmp slt i64 %i.jj, 2
  br i1 %i.jk, label %bytestream2_get_le16.exit216, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0248.7354, i64 2 ; 2 uses
  %i.jm = load i16, ptr %.sroa.0248.7354, align 1, !tbaa !44
  %i.jn = zext i16 %i.jm to i32
  %.pre372 = ptrtoint ptr %i.jl to i64
  br label %bytestream2_get_le16.exit216

bytestream2_get_le16.exit216:                     ; preds = %bb.bi, %bb.bj
  %.pre-phi373 = phi i64 [ %.pre-phi371, %bb.bi ], [ %.pre372, %bb.bj ]
  %.sroa.0248.11 = phi ptr [ %.sroa.76.1, %bb.bi ], [ %i.jl, %bb.bj ] ; 2 uses
  %.0.i215 = phi i32 [ 0, %bb.bi ], [ %i.jn, %bb.bj ] ; 3 uses
  %i.jo = sub i64 %.pre-phi371, %.pre-phi373
  %i.jp = icmp slt i64 %i.jo, 2
  br i1 %i.jp, label %bytestream2_get_le16.exit214, label %bb.bk

bb.bk:                                            ; preds = %bytestream2_get_le16.exit216
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0248.11, i64 2 ; 2 uses
  %i.jr = load i16, ptr %.sroa.0248.11, align 1, !tbaa !44
  %i.js = zext i16 %i.jr to i32
  %.pre374 = ptrtoint ptr %i.jq to i64
  br label %bytestream2_get_le16.exit214

bytestream2_get_le16.exit214:                     ; preds = %bytestream2_get_le16.exit216, %bb.bk
  %.pre-phi375 = phi i64 [ %.pre-phi371, %bytestream2_get_le16.exit216 ], [ %.pre374, %bb.bk ]
  %.sroa.0248.10 = phi ptr [ %.sroa.76.1, %bytestream2_get_le16.exit216 ], [ %i.jq, %bb.bk ] ; 2 uses
  %.0.i213 = phi i32 [ 0, %bytestream2_get_le16.exit216 ], [ %i.js, %bb.bk ] ; 3 uses
  %i.jt = sub i64 %.pre-phi371, %.pre-phi375
  %i.ju = icmp slt i64 %i.jt, 2
  br i1 %i.ju, label %bytestream2_get_le16.exit212, label %bb.bl

bb.bl:                                            ; preds = %bytestream2_get_le16.exit214
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0248.10, i64 2 ; 2 uses
  %i.jw = load i16, ptr %.sroa.0248.10, align 1, !tbaa !44
  %i.jx = zext i16 %i.jw to i32
  %.pre376 = ptrtoint ptr %i.jv to i64
  br label %bytestream2_get_le16.exit212

bytestream2_get_le16.exit212:                     ; preds = %bytestream2_get_le16.exit214, %bb.bl
  %.pre-phi377 = phi i64 [ %.pre-phi371, %bytestream2_get_le16.exit214 ], [ %.pre376, %bb.bl ]
  %.sroa.0248.9 = phi ptr [ %.sroa.76.1, %bytestream2_get_le16.exit214 ], [ %i.jv, %bb.bl ] ; 2 uses
  %.0.i211 = phi i32 [ 0, %bytestream2_get_le16.exit214 ], [ %i.jx, %bb.bl ] ; 4 uses
  %i.jy = sub i64 %.pre-phi371, %.pre-phi377
  %i.jz = icmp slt i64 %i.jy, 2
  br i1 %i.jz, label %bytestream2_get_le16.exit, label %bb.bm

bb.bm:                                            ; preds = %bytestream2_get_le16.exit212
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0248.9, i64 2
  %i.kb = load i16, ptr %.sroa.0248.9, align 1, !tbaa !44
  %i.kc = zext i16 %i.kb to i32
  br label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %bytestream2_get_le16.exit212, %bb.bm
  %.sroa.0248.8 = phi ptr [ %i.ka, %bb.bm ], [ %.sroa.76.1, %bytestream2_get_le16.exit212 ]
  %.0.i = phi i32 [ %i.kc, %bb.bm ], [ 0, %bytestream2_get_le16.exit212 ] ; 5 uses
  %i.kd = icmp eq i32 %.0.i215, 0
  %or.cond = select i1 %i.jd, i1 %i.kd, i1 false
  %i.ke = icmp eq i32 %.0.i213, 0
  %or.cond11 = select i1 %or.cond, i1 %i.ke, i1 false
  %.pre = load i32, ptr %i.je, align 8, !tbaa !53 ; 3 uses
  %i.kf = icmp eq i32 %.0.i211, %.pre
  %or.cond403 = select i1 %or.cond11, i1 %i.kf, i1 false
  br i1 %or.cond403, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bytestream2_get_le16.exit
  %i.kg = load i32, ptr %i.jf, align 4, !tbaa !54
  %i.kh = icmp eq i32 %.0.i, %i.kg
  %spec.select209 = select i1 %i.kh, i32 1, i32 %.0174355
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bytestream2_get_le16.exit
  %.1175 = phi i32 [ %.0174355, %bytestream2_get_le16.exit ], [ %spec.select209, %bb.bn ] ; 2 uses
  %i.ki = add nuw nsw i32 %.0.i211, %.0.i215
  %i.kj = icmp sgt i32 %i.ki, %.pre
  br i1 %i.kj, label %.critedge, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kk = add nuw nsw i32 %.0.i, %.0.i213
  %i.kl = load i32, ptr %i.jf, align 4, !tbaa !54 ; 3 uses
  %i.km = icmp sgt i32 %i.kk, %i.kl
  br i1 %i.km, label %.critedge, label %4

4:                                                ; preds = %bb.bp
  %5 = icmp samesign ugt i32 %.0.i211, %.pre
  %6 = icmp samesign ugt i32 %.0.i, %i.kl
  %or.cond210 = select i1 %5, i1 true, i1 %6
  br i1 %or.cond210, label %.critedge, label %bb.bq

bb.bq:                                            ; preds = %4
  %.not206.not350.not = icmp eq i32 %.0.i, 0
  br i1 %.not206.not350.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bq
  %i.kn = load ptr, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !55
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 64
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !51
  %i.kr = xor i32 %.0.i213, -1
  %i.ks = add nsw i32 %i.kl, %i.kr
  %i.kt = mul nsw i32 %i.kq, %i.ks
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds i8, ptr %i.ko, i64 %i.ku
  %i.kw = mul nsw i32 %.0.i215, %i.e
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds i8, ptr %i.kv, i64 %i.kx
  %i.kz = mul nsw i32 %.0.i211, %i.e
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph, %bb.bs
  %.0352 = phi i32 [ 0, %.lr.ph ], [ %i.lh, %bb.bs ]
  %.0172351 = phi ptr [ %i.ky, %.lr.ph ], [ %i.lg, %bb.bs ] ; 2 uses
  store ptr %.0172351, ptr %i.jg, align 8, !tbaa !47
  store i32 %i.kz, ptr %i.jh, align 8, !tbaa !48
  %i.la = call i32 @inflate(ptr noundef nonnull %i.d, i32 noundef 2) #7 ; 2 uses
  %or.cond13 = icmp ugt i32 %i.la, 1
  br i1 %or.cond13, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lb = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 64
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !51
  %i.le = sext i32 %i.ld to i64
  %i.lf = sub nsw i64 0, %i.le
  %i.lg = getelementptr inbounds i8, ptr %.0172351, i64 %i.lf
  %i.lh = add nuw nsw i32 %.0352, 1               ; 2 uses
  %exitcond368.not = icmp eq i32 %i.lh, %.0.i
  br i1 %exitcond368.not, label %._crit_edge, label %bb.br, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.bs, %bb.bq
  %i.li = add nuw nsw i32 %.0161356, 1            ; 2 uses
  %exitcond369.not = icmp eq i32 %i.li, %.0.i227
  br i1 %exitcond369.not, label %.thread329, label %bb.bi, !llvm.loop !40

bb.bt:                                            ; preds = %bb.br
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.la) #7
  br label %.critedge

.thread329:                                       ; preds = %._crit_edge
  %i.lj = icmp eq i32 %.1175, 0
  br i1 %i.lj, label %.thread329.thread, label %bb.bu

bb.bu:                                            ; preds = %.thread329
  %i.lk = load ptr, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 276 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !60
  %i.ln = or i32 %i.lm, 2
  store i32 %i.ln, ptr %i.ll, align 4, !tbaa !60
  br label %bb.bv

.thread329.thread:                                ; preds = %bb.bh, %.thread329
  %i.lo = load ptr, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 276 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !60
  %i.lr = and i32 %i.lq, -3
  store i32 %i.lr, ptr %i.lp, align 4, !tbaa !60
  br label %bb.bv

bb.bv:                                            ; preds = %.thread329.thread, %bb.bu
  %i.ls = phi ptr [ %i.lo, %.thread329.thread ], [ %i.lk, %bb.bu ] ; 2 uses
  %i.lt = phi i32 [ 2, %.thread329.thread ], [ 1, %bb.bu ]
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 120
  store i32 %i.lt, ptr %i.lu, align 8, !tbaa !61
  %i.lv = call i32 @av_frame_ref(ptr noundef %1, ptr noundef nonnull %i.ls) #7 ; 2 uses
  %i.lw = icmp slt i32 %i.lv, 0
  br i1 %i.lw, label %.critedge, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i32 1, ptr %2, align 4, !tbaa !51
  %i.lx = load i32, ptr %i.i, align 8, !tbaa !43
  br label %.critedge

.critedge:                                        ; preds = %bytestream2_get_le16.exit218, %bytestream2_get_le16.exit218.1, %bytestream2_get_le16.exit218.2, %bytestream2_get_le16.exit218.3, %bytestream2_get_le16.exit218.4, %bytestream2_get_le16.exit222, %bb.bp, %bb.bo, %4, %bb.bt, %bytestream2_get_le24.exit, %bb.r, %bb.p, %bb.bv, %bb.be, %bytestream2_get_le16.exit228, %bb.bw, %bb.b
  %.12 = phi i32 [ -542398533, %bb.b ], [ -1094995529, %bytestream2_get_le16.exit222 ], [ %i.lv, %bb.bv ], [ -1094995529, %bb.be ], [ %i.lx, %bb.bw ], [ -1094995529, %bb.bt ], [ -1094995529, %bb.bp ], [ %i.w, %bytestream2_get_le16.exit228 ], [ -1094995529, %bytestream2_get_le24.exit ], [ -542398533, %bb.r ], [ -1094995529, %bb.p ], [ -1094995529, %4 ], [ -1094995529, %bb.bo ], [ -1094995529, %bytestream2_get_le16.exit218.4 ], [ -1094995529, %bytestream2_get_le16.exit218.3 ], [ -1094995529, %bytestream2_get_le16.exit218.2 ], [ -1094995529, %bytestream2_get_le16.exit218.1 ], [ -1094995529, %bytestream2_get_le16.exit218 ]
  ret i32 %.12
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @ff_inflate_end(ptr noundef nonnull %i.d) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @av_frame_alloc() local_unnamed_addr #3

declare i32 @ff_inflate_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #3

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @av_image_fill_black(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare void @ff_inflate_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!29 = !{!27, !6, i64 136}
!30 = !{!"p1 _ZTS14internal_state", !9, i64 0}
!31 = !{!"z_stream_s", !14, i64 0, !6, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !13, i64 40, !14, i64 48, !30, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !6, i64 88, !13, i64 96, !13, i64 104}
!32 = !{!"FFZStream", !31, i64 0, !6, i64 112}
!33 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!34 = !{!"WCMVContext", !6, i64 0, !32, i64 8, !33, i64 128, !5, i64 136}
!35 = !{!34, !6, i64 0}
!36 = !{!34, !33, i64 128}
!37 = !{!27, !6, i64 648}
!38 = distinct !{!38, !49}
!39 = distinct !{!39, !49}
!40 = distinct !{!40, !49}
!41 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!42 = !{!41, !14, i64 24}
!43 = !{!41, !6, i64 32}
!44 = !{!5, !5, i64 0}
!45 = !{!31, !14, i64 0}
!46 = !{!31, !6, i64 8}
!47 = !{!31, !14, i64 24}
!48 = !{!31, !6, i64 32}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!27, !13, i64 824}
!51 = !{!6, !6, i64 0}
!52 = !{!13, !13, i64 0}
!53 = !{!27, !6, i64 112}
!54 = !{!27, !6, i64 116}
!55 = !{!14, !14, i64 0}
!56 = !{!"p2 omnipotent char", !25, i64 0}
!57 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!58 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!59 = !{!"AVFrame", !5, i64 0, !5, i64 64, !56, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !57, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !58, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!60 = !{!59, !6, i64 276}
!61 = !{!59, !6, i64 120}
end_hunk_0
