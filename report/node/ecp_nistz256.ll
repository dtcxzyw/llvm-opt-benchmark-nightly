inline.NumInlined: 34
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ecp_nistz256_points_mul:bb.a
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.am
  %narrow = sub nuw nsw i32 33, %.0139.lcssa245
  %i.an = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.an, i1 false), !tbaa !24
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.s ] ; 4 uses
  %i.ao = call ptr @bn_get_words(ptr noundef nonnull %.0123) #7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i64 %i.aq, ptr %i.ar, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.as = call i32 @bn_get_top(ptr noundef nonnull %.0123) #7
  %i.at = shl nsw i32 %i.as, 3
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %.lr.ph, label %.preheader, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph218.preheader, %.preheader
  %i.aw = load i8, ptr %i.a, align 16, !tbaa !24
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 1
  %i.az = and i32 %i.ay, 254                      ; 3 uses
  %i.ba = lshr i32 %i.az, 7                       ; 2 uses
  %i.bb = sub nsw i32 0, %i.ba                    ; 2 uses
  %i.bc = xor i32 %i.az, 255
  %i.bd = and i32 %i.bc, %i.bb
  %i.be = icmp eq i32 %i.ba, 0
  %i.bf = select i1 %i.be, i32 %i.az, i32 0
  %i.bg = or i32 %i.bf, %i.bd                     ; 2 uses
  %i.bh = lshr i32 %i.bg, 1
  %i.bi = sub nsw i32 %i.bg, %i.bh
  %i.bj = and i32 %i.bb, 1
  call void @ecp_nistz256_gather_w7(ptr noundef nonnull %8, ptr noundef nonnull %.3.ph, i32 noundef %i.bi) #7
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl) #7
  %i.bm = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = add nsw i64 %i.bm, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.bs = load <4 x i64>, ptr %i.bk, align 32, !tbaa !33
  %i.bt = insertelement <4 x i64> poison, i64 %i.bn, i64 0
  %i.bu = shufflevector <4 x i64> %i.bt, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.bv = and <4 x i64> %i.bs, %i.bu
  %i.bw = load <4 x i64>, ptr %i.bl, align 32, !tbaa !33
  %i.bx = insertelement <4 x i64> poison, i64 %i.bo, i64 0
  %i.by = shufflevector <4 x i64> %i.bx, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.bz = and <4 x i64> %i.by, %i.bw
  %i.ca = xor <4 x i64> %i.bz, %i.bv              ; 2 uses
  store <4 x i64> %i.ca, ptr %i.bl, align 32, !tbaa !33
  %i.cb = load <4 x i64>, ptr %8, align 32, !tbaa !24
  %i.cc = shufflevector <4 x i64> %i.ca, <4 x i64> %i.cb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cd = call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.cc)
  %i.ce = icmp ne i64 %i.cd, 0                    ; 4 uses
  %i.cf = sext i1 %i.ce to i64
  %i.cg = zext i1 %i.ce to i64
  store i64 %i.cg, ptr %i.bk, align 32, !tbaa !24
  %i.ch = select i1 %i.ce, i64 -4294967296, i64 0
  store i64 %i.ch, ptr %i.bp, align 8, !tbaa !24
  store i64 %i.cf, ptr %i.bq, align 16, !tbaa !24
  %i.ci = select i1 %i.ce, i64 4294967294, i64 0
  store i64 %i.ci, ptr %i.br, align 8, !tbaa !24
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.t
  %indvars.iv226 = phi i64 [ 1, %._crit_edge ], [ %indvars.iv.next227, %bb.t ] ; 2 uses
  %.0127220 = phi i32 [ 7, %._crit_edge ], [ %i.cw, %bb.t ] ; 2 uses
  %i.cn = add nsw i32 %.0127220, -1               ; 2 uses
  %i.co = lshr i32 %i.cn, 3
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 1
  %i.cs = zext i16 %i.cr to i32
  %i.ct = and i32 %i.cn, 7
  %i.cu = lshr i32 %i.cs, %i.ct
  %i.cv = and i32 %i.cu, 255                      ; 3 uses
  %i.cw = add nuw nsw i32 %.0127220, 7
  %i.cx = lshr i32 %i.cv, 7                       ; 2 uses
  %i.cy = sub nsw i32 0, %i.cx                    ; 2 uses
  %i.cz = xor i32 %i.cv, 255
  %i.da = and i32 %i.cz, %i.cy
  %i.db = icmp eq i32 %i.cx, 0
  %i.dc = select i1 %i.db, i32 %i.cv, i32 0
  %i.dd = or i32 %i.dc, %i.da                     ; 2 uses
  %i.de = lshr i32 %i.dd, 1
  %i.df = sub nsw i32 %i.dd, %i.de
  %i.dg = and i32 %i.cy, 1
  %i.dh = getelementptr inbounds nuw [4096 x i8], ptr %.3.ph, i64 %indvars.iv226
  call void @ecp_nistz256_gather_w7(ptr noundef nonnull %7, ptr noundef nonnull %i.dh, i32 noundef %i.df) #7
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ck) #7
  %i.di = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = add nsw i64 %i.di, -1
  %i.dl = load <2 x i64>, ptr %i.cj, align 32, !tbaa !33
  %i.dm = insertelement <2 x i64> poison, i64 %i.dj, i64 0
  %i.dn = shufflevector <2 x i64> %i.dm, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.do = and <2 x i64> %i.dl, %i.dn
  %i.dp = load <2 x i64>, ptr %i.ck, align 32, !tbaa !33
  %i.dq = insertelement <2 x i64> poison, i64 %i.dk, i64 0
  %i.dr = shufflevector <2 x i64> %i.dq, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ds = and <2 x i64> %i.dr, %i.dp
  %i.dt = xor <2 x i64> %i.ds, %i.do
  store <2 x i64> %i.dt, ptr %i.ck, align 32, !tbaa !33
  %i.du = load <2 x i64>, ptr %i.cl, align 16, !tbaa !33
  %i.dv = and <2 x i64> %i.du, %i.dn
  %i.dw = load <2 x i64>, ptr %i.cm, align 16, !tbaa !33
  %i.dx = and <2 x i64> %i.dw, %i.dr
  %i.dy = xor <2 x i64> %i.dx, %i.dv
  store <2 x i64> %i.dy, ptr %i.cm, align 16, !tbaa !33
  call void @ecp_nistz256_point_add_affine(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %7) #7
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next227, 37
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !35

bb.u:                                             ; preds = %.thread177
  %i.dz = shl nuw nsw i64 %i.b, 3                 ; 2 uses
  %i.ea = call noalias ptr @CRYPTO_malloc(i64 noundef %i.dz, ptr noundef nonnull @.str, i32 noundef 1101) #7 ; 6 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ec = call noalias ptr @CRYPTO_malloc(i64 noundef %i.dz, ptr noundef nonnull @.str, i32 noundef 1105) #7 ; 5 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %.thread, label %.thread246

.thread246:                                       ; preds = %bb.v
  %i.ee = shl nuw nsw i64 %3, 3                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr align 8 %5, i64 %i.ee, i1 false)
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %3
  store ptr %2, ptr %i.ef, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %4, i64 %i.ee, i1 false)
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %3
  store ptr %i.c, ptr %i.eg, align 8, !tbaa !37
  br label %bb.x

.loopexit:                                        ; preds = %bb.t, %bb.c
  %.not163 = icmp eq i64 %3, 0
  br i1 %.not163, label %bb.aq, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %spec.select260 = select i1 %.not, ptr %7, ptr %8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread246
  %.not164196205258 = phi i1 [ false, %.thread246 ], [ %.not, %bb.w ]
  %.0144206257 = phi ptr [ %i.ec, %.thread246 ], [ %4, %bb.w ]
  %.0143207256 = phi ptr [ %i.ea, %.thread246 ], [ %5, %bb.w ]
  %.0142208255 = phi i64 [ %i.b, %.thread246 ], [ %3, %bb.w ] ; 9 uses
  %.0130209254 = phi ptr [ %i.ea, %.thread246 ], [ null, %bb.w ] ; 3 uses
  %.0128211253 = phi ptr [ %i.ec, %.thread246 ], [ null, %bb.w ] ; 3 uses
  %i.eh = phi ptr [ %8, %.thread246 ], [ %spec.select260, %bb.w ] ; 16 uses
  %i.ei = icmp ugt i64 %.0142208255, 1398100
  br i1 %i.ei, label %ecp_nistz256_windowed_mul.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = mul nuw nsw i64 %.0142208255, 1536
  %i.ek = add nuw nsw i64 %i.ej, 544
  %i.el = call noalias ptr @CRYPTO_malloc(i64 noundef %i.ek, ptr noundef nonnull @.str, i32 noundef 625) #7 ; 8 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %ecp_nistz256_windowed_mul.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = mul nuw nsw i64 %.0142208255, 33
  %i.eo = call noalias ptr @CRYPTO_malloc(i64 noundef %i.en, ptr noundef nonnull @.str, i32 noundef 626) #7 ; 10 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %ecp_nistz256_windowed_mul.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eq = shl nuw nsw i64 %.0142208255, 3
  %i.er = call noalias ptr @CRYPTO_malloc(i64 noundef %i.eq, ptr noundef nonnull @.str, i32 noundef 627) #7 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %ecp_nistz256_windowed_mul.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.eu = ptrtoint ptr %i.el to i64
  %i.ev = and i64 %i.eu, 63
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 %i.ew ; 5 uses
  %i.ey = getelementptr inbounds nuw [1536 x i8], ptr %i.ex, i64 %.0142208255 ; 25 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 32 ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 96 ; 14 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 192 ; 14 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 288 ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 384 ; 8 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.al, %bb.ab
  %.0225257.i = phi i64 [ 0, %bb.ab ], [ %i.gy, %bb.al ] ; 7 uses
  %9 = mul i64 %.0225257.i, 33
  %scevgep.i = getelementptr i8, ptr %i.eo, i64 %9
  %i.fg = getelementptr inbounds nuw [1536 x i8], ptr %i.ex, i64 %.0225257.i ; 16 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.0143207256, i64 %.0225257.i ; 4 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !36
  %i.fj = call i32 @BN_num_bits(ptr noundef %i.fi) #7
  %i.fk = icmp sgt i32 %i.fj, 256
  br i1 %i.fk, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !36
  %i.fm = call i32 @BN_is_negative(ptr noundef %i.fl) #7
  %.not.i171 = icmp eq i32 %i.fm, 0
  br i1 %.not.i171, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fn = call ptr @BN_CTX_get(ptr noundef %6) #7 ; 3 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %ecp_nistz256_windowed_mul.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fp = load ptr, ptr %i.fh, align 8, !tbaa !36
  %i.fq = load ptr, ptr %i.ez, align 8, !tbaa !27
  %i.fr = call i32 @BN_nnmod(ptr noundef nonnull %i.fn, ptr noundef %i.fp, ptr noundef %i.fq, ptr noundef %6) #7
  %.not243.i = icmp eq i32 %i.fr, 0
  br i1 %.not243.i, label %.thread250.sink.split.i, label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.fs = load ptr, ptr %i.fh, align 8, !tbaa !36
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i = phi ptr [ %i.fs, %bb.ag ], [ %i.fn, %bb.af ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.0225257.i ; 2 uses
  store ptr %.sink.i, ptr %i.ft, align 8, !tbaa !36
  %i.fu = call i32 @bn_get_top(ptr noundef %.sink.i) #7
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph.i, label %.lr.ph256.i

.lr.ph.i:                                         ; preds = %bb.ah
  %i.fw = getelementptr inbounds nuw [33 x i8], ptr %i.eo, i64 %.0225257.i
  br label %bb.ai

.preheader252.i:                                  ; preds = %bb.ai
  %i.fx = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.fy = icmp samesign ult i64 %indvars.iv.i, 25
  br i1 %i.fy, label %.lr.ph256.i, label %._crit_edge.i

.lr.ph256.i:                                      ; preds = %.preheader252.i, %bb.ah
  %.0233.lcssa280.i = phi i32 [ %i.fx, %.preheader252.i ], [ 0, %bb.ah ] ; 2 uses
  %i.fz = zext nneg i32 %.0233.lcssa280.i to i64
  %scevgep266.i = getelementptr i8, ptr %scevgep.i, i64 %i.fz
  %narrow.i = sub nuw nsw i32 33, %.0233.lcssa280.i
  %i.ga = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep266.i, i8 0, i64 %i.ga, i1 false), !tbaa !24
  br label %._crit_edge.i

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i
  %i.gb = phi ptr [ %.sink.i, %.lr.ph.i ], [ %i.gg, %bb.ai ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ai ] ; 4 uses
  %i.gc = call ptr @bn_get_words(ptr noundef %i.gb) #7
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !33
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 %indvars.iv.i
  store i64 %i.ge, ptr %i.gf, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.gg = load ptr, ptr %i.ft, align 8, !tbaa !36 ; 2 uses
  %i.gh = call i32 @bn_get_top(ptr noundef %i.gg) #7
  %i.gi = shl nsw i32 %i.gh, 3
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next.i, %i.gj
  br i1 %i.gk, label %bb.ai, label %.preheader252.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %.lr.ph256.i, %.preheader252.i
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.0144206257, i64 %.0225257.i ; 3 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !37
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !16
  %i.gp = call i32 @bn_copy_words(ptr noundef nonnull %i.ey, ptr noundef %i.go, i32 noundef 4) #7
  %.not244.i = icmp eq i32 %i.gp, 0
  br i1 %.not244.i, label %.thread250.sink.split.i, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i
  %i.gq = load ptr, ptr %i.gl, align 8, !tbaa !37
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !20
  %i.gt = call i32 @bn_copy_words(ptr noundef nonnull %i.fa, ptr noundef %i.gs, i32 noundef 4) #7
  %.not245.i = icmp eq i32 %i.gt, 0
  br i1 %.not245.i, label %.thread250.sink.split.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gu = load ptr, ptr %i.gl, align 8, !tbaa !37
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !21
  %i.gx = call i32 @bn_copy_words(ptr noundef nonnull %i.fb, ptr noundef %i.gw, i32 noundef 4) #7
  %.not246.i = icmp eq i32 %i.gx, 0
  br i1 %.not246.i, label %.thread250.sink.split.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ey, i32 noundef 1) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.fc, ptr noundef nonnull %i.ey) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fc, i32 noundef 2) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.fc, ptr noundef nonnull %i.ey) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fd, i32 noundef 3) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.fc, ptr noundef nonnull %i.fc) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fc, i32 noundef 4) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.fd) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fd, i32 noundef 6) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.fe, ptr noundef nonnull %i.fc, ptr noundef nonnull %i.ey) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fe, i32 noundef 5) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.ff, ptr noundef nonnull %i.fd, ptr noundef nonnull %i.ey) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ff, i32 noundef 7) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.fc, ptr noundef nonnull %i.fc) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fc, i32 noundef 8) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.fd) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fd, i32 noundef 12) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.fe, ptr noundef nonnull %i.fe) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fe, i32 noundef 10) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ff, ptr noundef nonnull %i.ff) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ff, i32 noundef 14) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.fd, ptr noundef nonnull %i.ey) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fd, i32 noundef 13) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.fe, ptr noundef nonnull %i.fe, ptr noundef nonnull %i.ey) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fe, i32 noundef 11) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.ff, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.ey) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.ff, i32 noundef 15) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.fc, ptr noundef nonnull %i.ey) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fd, i32 noundef 9) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.fc, ptr noundef nonnull %i.fc) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fc, i32 noundef 16) #7
  %i.gy = add nuw i64 %.0225257.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gy, %.0142208255
  br i1 %exitcond.not.i, label %bb.am, label %bb.ac, !llvm.loop !39

bb.am:                                            ; preds = %bb.al
  %i.gz = getelementptr inbounds nuw i8, ptr %i.eo, i64 31
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !24
  %i.hb = lshr i8 %i.ha, 6
  %i.hc = zext nneg i8 %i.hb to i32               ; 2 uses
  %i.hd = lshr i32 %i.hc, 1
  %i.he = sub nsw i32 %i.hc, %i.hd
  call void @ecp_nistz256_gather_w5(ptr noundef nonnull %i.ey, ptr noundef nonnull %i.ex, i32 noundef %i.he) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(96) %i.eh, ptr noundef nonnull align 8 dereferenceable(96) %i.ey, i64 96, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ey, i64 128 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ey, i64 144 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ey, i64 48 ; 4 uses
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge261.i, %bb.am
  %.0231262.i = phi i32 [ 255, %bb.am ], [ %i.iw, %._crit_edge261.i ] ; 4 uses
  %i.hi = icmp eq i32 %.0231262.i, 255
  %i.hj = zext i1 %i.hi to i64                    ; 2 uses
  %i.hk = icmp ugt i64 %.0142208255, %i.hj
  br i1 %i.hk, label %.lr.ph260.i, label %._crit_edge261.i

.lr.ph260.i:                                      ; preds = %bb.an
  %i.hl = add nsw i32 %.0231262.i, -1             ; 2 uses
  %i.hm = lshr i32 %i.hl, 3
  %i.hn = zext nneg i32 %i.hm to i64
  %invariant.gep.i = getelementptr i8, ptr %i.eo, i64 %i.hn
  %i.ho = and i32 %i.hl, 7
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph260.i
  %.1258.i = phi i64 [ %i.hj, %.lr.ph260.i ], [ %i.iv, %bb.ao ] ; 3 uses
  %gep.i = getelementptr [33 x i8], ptr %invariant.gep.i, i64 %.1258.i
  %i.hp = load i16, ptr %gep.i, align 1
  %i.hq = zext i16 %i.hp to i32
  %i.hr = lshr i32 %i.hq, %i.ho
  %i.hs = and i32 %i.hr, 63                       ; 3 uses
  %i.ht = lshr i32 %i.hs, 5                       ; 2 uses
  %i.hu = sub nsw i32 0, %i.ht                    ; 2 uses
  %i.hv = xor i32 %i.hs, 63
  %i.hw = and i32 %i.hv, %i.hu
  %i.hx = icmp eq i32 %i.ht, 0
  %i.hy = select i1 %i.hx, i32 %i.hs, i32 0
  %i.hz = or i32 %i.hy, %i.hw                     ; 2 uses
  %i.ia = lshr i32 %i.hz, 1
  %i.ib = sub nsw i32 %i.hz, %i.ia
  %i.ic = and i32 %i.hu, 1
  %i.id = getelementptr inbounds nuw [1536 x i8], ptr %i.ex, i64 %.1258.i
  call void @ecp_nistz256_gather_w5(ptr noundef nonnull %i.ey, ptr noundef nonnull %i.id, i32 noundef %i.ib) #7
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.hf, ptr noundef nonnull %i.fa) #7
  %i.ie = zext nneg i32 %i.ic to i64              ; 2 uses
  %i.if = sub nsw i64 0, %i.ie
  %i.ig = add nsw i64 %i.ie, -1
  %i.ih = load <2 x i64>, ptr %i.hf, align 8, !tbaa !33
  %i.ii = insertelement <2 x i64> poison, i64 %i.if, i64 0
  %i.ij = shufflevector <2 x i64> %i.ii, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ik = and <2 x i64> %i.ih, %i.ij
  %i.il = load <2 x i64>, ptr %i.fa, align 8, !tbaa !33
  %i.im = insertelement <2 x i64> poison, i64 %i.ig, i64 0
  %i.in = shufflevector <2 x i64> %i.im, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.io = and <2 x i64> %i.in, %i.il
  %i.ip = xor <2 x i64> %i.io, %i.ik
  store <2 x i64> %i.ip, ptr %i.fa, align 8, !tbaa !33
  %i.iq = load <2 x i64>, ptr %i.hg, align 8, !tbaa !33
  %i.ir = and <2 x i64> %i.iq, %i.ij
  %i.is = load <2 x i64>, ptr %i.hh, align 8, !tbaa !33
  %i.it = and <2 x i64> %i.is, %i.in
  %i.iu = xor <2 x i64> %i.it, %i.ir
  store <2 x i64> %i.iu, ptr %i.hh, align 8, !tbaa !33
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.eh, ptr noundef nonnull %i.ey) #7
  %i.iv = add i64 %.1258.i, 1                     ; 2 uses
  %exitcond270.not.i.a = icmp eq i64 %i.iv, %.0142208255
  br i1 %exitcond270.not.i.a, label %._crit_edge261.i, label %bb.ao, !llvm.loop !40

._crit_edge261.i:                                 ; preds = %bb.ao, %bb.an
  %i.iw = add nsw i32 %.0231262.i, -5
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.eh) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.eh) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.eh) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.eh) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.eh) #7
  %i.ix = icmp samesign ugt i32 %.0231262.i, 9
  br i1 %i.ix, label %bb.an, label %.preheader.i, !llvm.loop !41

.preheader.i:                                     ; preds = %._crit_edge261.i, %.preheader.i
  %.2263.i = phi i64 [ %i.kf, %.preheader.i ], [ 0, %._crit_edge261.i ] ; 3 uses
  %i.iy = getelementptr inbounds nuw [33 x i8], ptr %i.eo, i64 %.2263.i
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !24
  %i.ja = zext i8 %i.iz to i32
  %i.jb = shl nuw nsw i32 %i.ja, 1
  %i.jc = and i32 %i.jb, 62                       ; 3 uses
  %i.jd = lshr i32 %i.jc, 5                       ; 2 uses
  %i.je = sub nsw i32 0, %i.jd                    ; 2 uses
  %i.jf = xor i32 %i.jc, 63
  %i.jg = and i32 %i.jf, %i.je
  %i.jh = icmp eq i32 %i.jd, 0
  %i.ji = select i1 %i.jh, i32 %i.jc, i32 0
  %i.jj = or i32 %i.ji, %i.jg                     ; 2 uses
  %i.jk = lshr i32 %i.jj, 1
  %i.jl = sub nsw i32 %i.jj, %i.jk
  %i.jm = and i32 %i.je, 1
  %i.jn = getelementptr inbounds nuw [1536 x i8], ptr %i.ex, i64 %.2263.i
  call void @ecp_nistz256_gather_w5(ptr noundef nonnull %i.ey, ptr noundef nonnull %i.jn, i32 noundef %i.jl) #7
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.hf, ptr noundef nonnull %i.fa) #7
  %i.jo = zext nneg i32 %i.jm to i64              ; 2 uses
  %i.jp = sub nsw i64 0, %i.jo
  %i.jq = add nsw i64 %i.jo, -1
  %i.jr = load <2 x i64>, ptr %i.hf, align 8, !tbaa !33
  %i.js = insertelement <2 x i64> poison, i64 %i.jp, i64 0
  %i.jt = shufflevector <2 x i64> %i.js, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ju = and <2 x i64> %i.jr, %i.jt
  %i.jv = load <2 x i64>, ptr %i.fa, align 8, !tbaa !33
  %i.jw = insertelement <2 x i64> poison, i64 %i.jq, i64 0
  %i.jx = shufflevector <2 x i64> %i.jw, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jy = and <2 x i64> %i.jx, %i.jv
  %i.jz = xor <2 x i64> %i.jy, %i.ju
  store <2 x i64> %i.jz, ptr %i.fa, align 8, !tbaa !33
  %i.ka = load <2 x i64>, ptr %i.hg, align 8, !tbaa !33
  %i.kb = and <2 x i64> %i.ka, %i.jt
end_hunk_0
