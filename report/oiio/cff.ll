inline.NumInlined: 81
inline.NumDeleted: 23
begin_hunk_0_@cff_font_load:bb.a
  store i32 2, ptr %i.a, align 4, !tbaa !3
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.p = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18
  %i.q = zext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.q, ptr %i.r, align 4, !tbaa !574
  %i.s = load i32, ptr %i.a, align 4, !tbaa !3
  %.not172 = icmp eq i32 %i.s, 0
  br i1 %.not172, label %._crit_edge223, label %.thread

._crit_edge223:                                   ; preds = %bb.f
  %.pre = load i8, ptr %i.m, align 2, !tbaa !573
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.t = call zeroext i8 @FT_Stream_ReadByte(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18
  %i.u = load i32, ptr %i.a, align 4, !tbaa !3
  %.not169 = icmp eq i32 %i.u, 0
  br i1 %.not169, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = load i8, ptr %i.v, align 8, !tbaa !429
  %.not170 = icmp eq i8 %i.w, 1
  br i1 %.not170, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 42
  %i.y = load i8, ptr %i.x, align 2, !tbaa !573   ; 2 uses
  %i.z = icmp ult i8 %i.y, 4
  %i.aa = icmp ugt i8 %i.t, 4
  %or.cond = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i
  store i32 2, ptr %i.a, align 4, !tbaa !3
  br label %.thread

bb.k:                                             ; preds = %._crit_edge223, %bb.i
  %i.ab = phi i8 [ %.pre, %._crit_edge223 ], [ %i.y, %bb.i ]
  %i.ac = zext i8 %i.ab to i64
  %i.ad = add i64 %i.e, %i.ac
  %i.ae = call i32 @FT_Stream_Seek(ptr noundef nonnull %1, i64 noundef %i.ad) #18 ; 2 uses
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !3
  %.not173 = icmp eq i32 %i.ae, 0
  br i1 %.not173, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not198.a = icmp eq i8 %5, 0
  br i1 %.not198.a, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 2, ptr %i.a, align 4, !tbaa !3
  br label %.thread

bb.n:                                             ; preds = %bb.k
  br i1 %.not168, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 1400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i8 0, i64 64, i1 false)
  %i.ag = call i64 @FT_Stream_Pos(ptr noundef nonnull %1) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 1432
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !575
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !574
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 1440
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !576
  %i.am = call i32 @FT_Stream_Skip(ptr noundef nonnull %1, i64 noundef %i.ak) #18 ; 2 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !3
  %.not181 = icmp eq i32 %i.am, 0
  br i1 %.not181, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.ao = call fastcc i32 @cff_index_init(ptr noundef nonnull %i.an, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 1) ; 2 uses
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !3
  %.not182 = icmp eq i32 %i.ao, 0
  br i1 %.not182, label %bb.ac, label %.thread

bb.q:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aq = call fastcc i32 @cff_index_init(ptr noundef nonnull %i.ap, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 0) ; 2 uses
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !3
  %.not174 = icmp eq i32 %i.aq, 0
  br i1 %.not174, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not180 = icmp eq i8 %5, 0
  br i1 %.not180, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 2, ptr %i.a, align 4, !tbaa !3
  br label %.thread

bb.t:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 76 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !577 ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  br i1 %i.at, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.av = load i64, ptr %i.au, align 8, !tbaa !578
  %i.aw = zext i32 %i.as to i64
  %i.ax = icmp ult i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.not179 = icmp eq i8 %5, 0
  %i.ay = select i1 %.not179, i32 3, i32 2
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !3
  br label %.thread

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 1400
  %i.ba = call fastcc i32 @cff_index_init(ptr noundef nonnull %i.az, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 0) ; 2 uses
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !3
  %.not175 = icmp eq i32 %i.ba, 0
  br i1 %.not175, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.bb = call fastcc i32 @cff_index_init(ptr noundef nonnull %7, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 0) ; 2 uses
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !3
  %.not176 = icmp eq i32 %i.bb, 0
  br i1 %.not176, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.bd = call fastcc i32 @cff_index_init(ptr noundef nonnull %i.bc, ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 0) ; 2 uses
  store i32 %i.bd, ptr %i.a, align 4, !tbaa !3
  %.not177 = icmp eq i32 %i.bd, 0
  br i1 %.not177, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 1616
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 1624
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 1632
  %i.bh = call fastcc i32 @cff_index_get_pointers(ptr noundef nonnull %7, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg) ; 2 uses
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !3
  %.not178 = icmp eq i32 %i.bh, 0
  br i1 %.not178, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.bi = load i32, ptr %i.ar, align 4, !tbaa !577
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 1420
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !579
  %i.bl = icmp ugt i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread

bb.ac:                                            ; preds = %bb.aa, %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !528
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 1608
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !158
  %.not183 = icmp eq i8 %5, 0
  br i1 %.not183, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = and i32 %2, 65535                       ; 2 uses
  %i.bq = icmp slt i32 %2, 1
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !577 ; 2 uses
  %.not184 = icmp ult i32 %i.bp, %i.bs
  %or.cond233 = select i1 %i.bq, i1 true, i1 %.not184
  br i1 %or.cond233, label %._crit_edge224, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 6, ptr %i.a, align 4, !tbaa !3
  br label %.thread

._crit_edge224:                                   ; preds = %bb.ad
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !120
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !577
  %i.bw = icmp ugt i32 %i.bv, 1
  br i1 %i.bw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread

bb.ah:                                            ; preds = %bb.af, %._crit_edge224
  %.0161 = phi i32 [ %i.bp, %._crit_edge224 ], [ 0, %bb.af ] ; 2 uses
  %i.bx = icmp slt i32 %2, 0
  br i1 %i.bx, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 1400
  %9 = icmp ne i8 %6, 0                           ; 3 uses
  %i.bz = select i1 %9, i32 12288, i32 4096
  %i.ca = call fastcc i32 @cff_subfont_load(ptr noundef nonnull %i.d, ptr noundef nonnull %i.by, i32 noundef %.0161, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.bz, ptr noundef nonnull %3, ptr noundef %4) ; 2 uses
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !3
  %.not185 = icmp eq i32 %i.ca, 0
  br i1 %.not185, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 1832 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !580
  %i.cd = add i64 %i.cc, %i.e
  %i.ce = call i32 @FT_Stream_Seek(ptr noundef nonnull %1, i64 noundef %i.cd) #18 ; 2 uses
  store i32 %i.ce, ptr %i.a, align 4, !tbaa !3
  %.not186 = icmp eq i32 %i.ce, 0
  br i1 %.not186, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 1336
  %i.cg = call fastcc i32 @cff_index_init(ptr noundef nonnull %i.cf, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext %6) ; 2 uses
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !3
  %.not187 = icmp eq i32 %i.cg, 0
  br i1 %.not187, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 1868 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !126
  %i.cj = icmp ne i32 %i.ci, 65535
  %or.cond5 = or i1 %9, %i.cj
  br i1 %or.cond5, label %bb.am, label %bb.av

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 5016
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 1952
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !581
  %i.cn = call fastcc i32 @cff_vstore_load(ptr noundef nonnull %i.ck, ptr noundef nonnull %1, i64 noundef %i.e, i64 noundef %i.cm) ; 2 uses
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !3
  %.not188 = icmp eq i32 %i.cn, 0
  br i1 %.not188, label %bb.an, label %.thread206

bb.an:                                            ; preds = %bb.am
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 1928
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !582
  %i.cq = add i64 %i.cp, %i.e
  %i.cr = call i32 @FT_Stream_Seek(ptr noundef nonnull %1, i64 noundef %i.cq) #18 ; 2 uses
  store i32 %i.cr, ptr %i.a, align 4, !tbaa !3
  %.not189 = icmp eq i32 %i.cr, 0
  br i1 %.not189, label %bb.ao, label %.thread206

bb.ao:                                            ; preds = %bb.an
  %i.cs = call fastcc i32 @cff_index_init(ptr noundef nonnull %8, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext %6) ; 2 uses
  store i32 %i.cs, ptr %i.a, align 4, !tbaa !3
  %.not190 = icmp eq i32 %i.cs, 0
  br i1 %.not190, label %bb.ap, label %.thread206

bb.ap:                                            ; preds = %bb.ao
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !528 ; 3 uses
  %i.cv = icmp ugt i32 %i.cu, 256
  br i1 %i.cv, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 2864
  store i32 %i.cu, ptr %i.cw, align 8, !tbaa !138
  %i.cx = zext nneg i32 %i.cu to i64
  %i.cy = call ptr @ft_mem_realloc(ptr noundef %i.c, i64 noundef 1224, i64 noundef 0, i64 noundef %i.cx, ptr noundef null, ptr noundef nonnull %i.a) #18 ; 3 uses
  %i.cz = load i32, ptr %i.a, align 4, !tbaa !3
  %.not191 = icmp eq i32 %i.cz, 0
  br i1 %.not191, label %.preheader211, label %.loopexit

.preheader211:                                    ; preds = %bb.aq
  %i.da = load i32, ptr %i.ct, align 4, !tbaa !528 ; 3 uses
  %.not216 = icmp eq i32 %i.da, 0
  br i1 %.not216, label %.preheader.thread, label %.lr.ph

.preheader.thread:                                ; preds = %.preheader211
  br i1 %.not168, label %bb.at, label %.loopexit

.lr.ph:                                           ; preds = %.preheader211
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 2872 ; 2 uses
  %wide.trip.count = zext i32 %i.da to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.da, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [1224 x i8], ptr %i.cy, <2 x i64> %vec.ind
  %wide.gep234 = getelementptr inbounds nuw [1224 x i8], ptr %i.cy, <2 x i64> %step.add
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x ptr> %wide.gep, ptr %i.dc, align 8, !tbaa !139
  store <2 x ptr> %wide.gep234, ptr %i.dd, align 8, !tbaa !139
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !583

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph215, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph215:                                        ; preds = %scalar.ph, %middle.block
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 2872
  %i.dg = select i1 %9, i32 16384, i32 4096
  br label %bb.as

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [1224 x i8], ptr %i.cy, i64 %indvars.iv
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph215, label %scalar.ph, !llvm.loop !584

bb.ar:                                            ; preds = %bb.as
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %i.dj = load i32, ptr %i.ct, align 4, !tbaa !528 ; 2 uses
  %i.dk = zext i32 %i.dj to i64
  %i.dl = icmp samesign ult i64 %indvars.iv.next221, %i.dk
  br i1 %i.dl, label %bb.as, label %._crit_edge, !llvm.loop !585

bb.as:                                            ; preds = %.lr.ph215, %bb.ar
  %indvars.iv220 = phi i64 [ 0, %.lr.ph215 ], [ %indvars.iv.next221, %bb.ar ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv220
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !139
  %i.do = trunc nuw i64 %indvars.iv220 to i32
  %i.dp = call fastcc i32 @cff_subfont_load(ptr noundef %i.dn, ptr noundef nonnull %8, i32 noundef %i.do, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.dg, ptr noundef nonnull %3, ptr noundef %4) ; 2 uses
  store i32 %i.dp, ptr %i.a, align 4, !tbaa !3
  %.not192 = icmp eq i32 %i.dp, 0
  br i1 %.not192, label %bb.ar, label %.loopexit

._crit_edge:                                      ; preds = %bb.ar
  %i.dq = icmp ugt i32 %i.dj, 1
  %i.dr = or i1 %.not168, %i.dq
  br i1 %i.dr, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %.preheader.thread, %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 4920
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 1356
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !144
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 1936
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !586
  %i.dx = add i64 %i.dw, %i.e
  %i.dy = call fastcc i32 @CFF_Load_FD_Select(ptr noundef nonnull %i.ds, i32 noundef %i.du, ptr noundef nonnull %1, i64 noundef %i.dx)
  store i32 %i.dy, ptr %i.a, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.as, %.preheader.thread, %bb.at, %._crit_edge, %bb.aq, %bb.ap
  call fastcc void @cff_index_done(ptr noundef %8)
  %i.dz = load i32, ptr %i.a, align 4, !tbaa !3
  %.not193 = icmp eq i32 %i.dz, 0
  br i1 %.not193, label %bb.au, label %.thread206

.thread206:                                       ; preds = %bb.ao, %bb.am, %bb.an, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.thread

bb.au:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.aw

bb.av:                                            ; preds = %bb.al
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 2864
  store i32 0, ptr %i.ea, align 8, !tbaa !138
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.eb = load i64, ptr %i.cb, align 8, !tbaa !580
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread

bb.ay:                                            ; preds = %bb.aw
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 1356
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !144
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 3 uses
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !89
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 1600
  %i.ei = call fastcc i32 @cff_index_get_pointers(ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eh, ptr noundef null, ptr noundef null) ; 2 uses
  store i32 %i.ei, ptr %i.a, align 4, !tbaa !3
  %.not194 = icmp eq i32 %i.ei, 0
  br i1 %.not194, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  br i1 %.not168, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.ej = load i32, ptr %i.ef, align 4, !tbaa !89 ; 2 uses
  %.not195 = icmp eq i32 %i.ej, 0
  br i1 %.not195, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ek = load i32, ptr %i.ch, align 4, !tbaa !126
  %10 = icmp ne i32 %i.ek, 65535
  %11 = icmp ne i8 %5, 0
  %12 = and i1 %11, %10
  %13 = zext i1 %12 to i8
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 1296 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.en = load i64, ptr %i.em, align 8, !tbaa !587
  %i.eo = call fastcc i32 @cff_charset_load(ptr noundef nonnull %i.el, i32 noundef %i.ej, ptr noundef nonnull %1, i64 noundef %i.e, i64 noundef %i.en, i8 noundef zeroext %13) ; 2 uses
  store i32 %i.eo, ptr %i.a, align 4, !tbaa !3
  %.not196.a = icmp eq i32 %i.eo, 0
  br i1 %.not196.a, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %bb.bb
  %i.ep = load i32, ptr %i.ch, align 4, !tbaa !126
  %i.eq = icmp eq i32 %i.ep, 65535
  br i1 %i.eq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.es = load i32, ptr %i.ef, align 4, !tbaa !89
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 1824
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !588
  %i.ev = call fastcc i32 @cff_encoding_load(ptr noundef nonnull %i.er, ptr noundef nonnull %i.el, i32 noundef %i.es, ptr noundef nonnull %1, i64 noundef %i.e, i64 noundef %i.eu) ; 2 uses
  store i32 %i.ev, ptr %i.a, align 4, !tbaa !3
  %.not197 = icmp eq i32 %i.ev, 0
  br i1 %.not197, label %bb.be, label %.thread

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ba, %bb.az
  %i.ew = call fastcc ptr @cff_index_get_name(ptr noundef nonnull %3, i32 noundef %.0161)
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 1592
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !203
  br label %.thread

.thread:                                          ; preds = %bb.bd, %bb.bb, %bb.j, %bb.g, %.thread206, %bb.ay, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.w, %bb.x, %bb.y, %bb.z, %bb.r, %bb.s, %bb.p, %bb.o, %bb.l, %bb.m, %bb.f, %bb.a, %bb.be, %bb.ax, %bb.ag, %bb.ae, %bb.ab, %bb.v, %bb.e
  %i.ey = load ptr, ptr %7, align 8, !tbaa !187   ; 3 uses
  %.not.i = icmp eq ptr %i.ey, null
  br i1 %.not.i, label %cff_index_done.exit, label %bb.bf

bb.bf:                                            ; preds = %.thread
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !188
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !190
  %.not10.i = icmp eq ptr %i.fc, null
  br i1 %.not10.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @FT_Stream_ReleaseFrame(ptr noundef nonnull %i.ey, ptr noundef nonnull %i.fb) #18
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !191
  call void @ft_mem_free(ptr noundef %i.fa, ptr noundef %i.fe) #18
  br label %cff_index_done.exit

cff_index_done.exit:                              ; preds = %.thread, %bb.bh
  %i.ff = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.ff
}

declare i32 @FT_Set_Named_Instance(ptr noundef, i32 noundef) local_unnamed_addr #9

declare hidden void @FT_Matrix_Multiply_Scaled(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare hidden void @FT_Vector_Transform_Scaled(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc ptr @cff_index_get_name(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 65536) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !187  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %cff_index_forget_element.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.h = call fastcc i32 @cff_index_access_element(ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  store i32 %i.h, ptr %i.c, align 4, !tbaa !3
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %bb.c, label %cff_index_forget_element.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !tbaa !134  ; 3 uses
  %i.j = add i64 %i.i, 1
  %i.k = call ptr @ft_mem_qalloc(ptr noundef %i.g, i64 noundef %i.j, ptr noundef nonnull %i.c) #18 ; 4 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !3
  %.not11 = icmp eq i32 %i.l, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.m, i64 %i.i, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.n, align 1, !tbaa !165
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !190
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %cff_index_forget_element.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !187
  call void @FT_Stream_ReleaseFrame(ptr noundef %i.r, ptr noundef nonnull %i.a) #18
  br label %cff_index_forget_element.exit

cff_index_forget_element.exit:                    ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.k, %bb.e ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @remove_subset_prefix(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  %scevgep = getelementptr i8, ptr %0, i64 7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = icmp sgt i32 %i.b, 5
  br i1 %i.f, label %.lr.ph, label %._crit_edge45

.lr.ph:                                           ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.b, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %.0182843 = phi i32 [ %i.g, %.lr.ph ], [ %.119, %._crit_edge ] ; 2 uses
  %i.h = load i8, ptr %i.c, align 1, !tbaa !165
  %i.i = icmp eq i8 %i.h, 43
  br i1 %i.i, label %.preheader24.preheader, label %._crit_edge45

.preheader24.preheader:                           ; preds = %bb.b
  %i.j = load i8, ptr %0, align 1, !tbaa !165
  %i.k = add i8 %i.j, -91
  %or.cond = icmp ult i8 %i.k, -26
  %i.l = load i8, ptr %i.d, align 1, !tbaa !165
  %.fr49 = freeze i8 %i.l
  %i.m = add i8 %.fr49, -91
  %or.cond.1 = icmp ult i8 %i.m, -26
  %i.n = load <4 x i8>, ptr %i.e, align 1, !tbaa !165
  %.fr48 = freeze <4 x i8> %i.n
  %i.o = add <4 x i8> %.fr48, splat (i8 -91)
  %i.p = icmp ult <4 x i8> %i.o, splat (i8 -26)
  %i.q = bitcast <4 x i1> %i.p to i4
  %i.r = icmp ne i4 %i.q, 0
  %op.rdx = or i1 %i.r, %or.cond.1
  %op.rdx47 = select i1 %op.rdx, i1 true, i1 %or.cond
  br i1 %op.rdx47, label %._crit_edge45, label %.preheader

.preheader:                                       ; preds = %.preheader24.preheader
  %.not29 = icmp eq i32 %.0182843, 7
  br i1 %.not29, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.s = add nsw i32 %.0182843, -7                ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr align 1 %scevgep, i64 %i.t, i1 false), !tbaa !165
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %.119 = phi i32 [ 0, %.preheader ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %i.u = icmp sgt i32 %.119, 6
  br i1 %i.u, label %bb.b, label %._crit_edge45, !llvm.loop !589

._crit_edge45:                                    ; preds = %bb.b, %.preheader24.preheader, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @remove_style(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 3 uses
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %.preheader, label %.critedge35

.preheader:                                       ; preds = %bb.a
  %.not37 = icmp slt i32 %i.d, 1
  br i1 %.not37, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %sext = shl i64 %i.a, 32
  %i.f = ashr exact i64 %sext, 32
  %i.g = and i64 %i.c, 2147483647
  %i.h = add nuw nsw i64 %i.c, 1
  %wide.trip.count = and i64 %i.h, 4294967295
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
