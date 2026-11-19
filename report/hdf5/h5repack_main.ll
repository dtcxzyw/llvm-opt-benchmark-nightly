Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5repack_main?download=true
inline.NumInlined: 21
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
    i32 105, label %bb.h
    i32 111, label %bb.i
    i32 104, label %bb.j
    i32 86, label %bb.k
    i32 118, label %bb.l
    i32 102, label %bb.p
    i32 108, label %bb.r
    i32 109, label %bb.t
    i32 101, label %bb.v
    i32 110, label %bb.aq
    i32 76, label %bb.ar
    i32 106, label %bb.as
    i32 107, label %bb.av
    i32 88, label %bb.ay
    i32 87, label %bb.az
    i32 99, label %bb.ba
    i32 100, label %bb.bc
    i32 115, label %bb.be
    i32 117, label %bb.bq
    i32 98, label %bb.br
    i32 77, label %bb.bs
    i32 116, label %bb.bt
    i32 97, label %bb.bu
    i32 83, label %bb.bw
    i32 80, label %bb.cb
    i32 84, label %bb.cc
    i32 71, label %bb.cd
    i32 75, label %bb.ce
    i32 113, label %bb.cf
    i32 122, label %bb.ci
    i32 69, label %bb.cl
    i32 49, label %bb.co
    i32 50, label %bb.cp
    i32 51, label %bb.cq
    i32 52, label %bb.cr
    i32 53, label %bb.cs
    i32 54, label %bb.ct
    i32 55, label %bb.cu
    i32 56, label %bb.cv
    i32 57, label %bb.cw
    i32 48, label %bb.cx
    i32 89, label %bb.cy
    i32 90, label %bb.cz
  ]

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr @H5_optarg, align 8, !tbaa !23
  store ptr %i.az, ptr @infile, align 8, !tbaa !23
  %i.ba = load i32, ptr @has_i, align 4, !tbaa !22
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr @has_i, align 4, !tbaa !22
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr @H5_optarg, align 8, !tbaa !23
  store ptr %i.bc, ptr @outfile, align 8, !tbaa !23
  %i.bd = load i32, ptr @has_o, align 4, !tbaa !22
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr @has_o, align 4, !tbaa !22
  br label %.loopexit.i

bb.j:                                             ; preds = %bb.g
  %i.bf = call ptr @h5tools_getprogname() #15
  call fastcc void @usage(ptr noundef %i.bf, ptr noundef nonnull %i.f)
  br label %.thread

bb.k:                                             ; preds = %bb.g
  %i.bg = call ptr @h5tools_getprogname() #15
  call void @print_version(ptr noundef %i.bg) #15
  br label %.thread

bb.l:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr @H5_optarg, align 8, !tbaa !23 ; 2 uses
  %.not150.i = icmp eq ptr %i.bh, null
  br i1 %.not150.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bh, ptr noundef null, i32 noundef 10) #15, !inline_history !18
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = icmp eq i64 %i.bj, 2
  br i1 %i.bk, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  store i32 2, ptr %i.au, align 4, !tbaa !24
  br label %.loopexit.i

bb.o:                                             ; preds = %bb.l
  store i32 1, ptr %i.au, align 4, !tbaa !24
  br label %.loopexit.i

bb.p:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr @H5_optarg, align 8, !tbaa !23
  %i.bm = call i32 @h5repack_addfilter(ptr noundef %i.bl, ptr noundef nonnull %i.f) #15
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.5) #15
  call void @h5tools_setstatus(i32 noundef 1) #15
  br label %parse_command_line.exit.thread

bb.r:                                             ; preds = %bb.g
  %i.bo = load ptr, ptr @H5_optarg, align 8, !tbaa !23
  %i.bp = call i32 @h5repack_addlayout(ptr noundef %i.bo, ptr noundef nonnull %i.f) #15
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.s, label %.loopexit.i

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.6) #15
  call void @h5tools_setstatus(i32 noundef 1) #15
  br label %parse_command_line.exit.thread

bb.t:                                             ; preds = %bb.g
  %i.br = load ptr, ptr @H5_optarg, align 8, !tbaa !23
  %i.bs = call i64 @__isoc23_strtoull(ptr noundef %i.br, ptr noundef null, i32 noundef 0) #15 ; 2 uses
  store i64 %i.bs, ptr %i.at, align 8, !tbaa !25
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = icmp slt i32 %i.bt, 1
  br i1 %i.bu, label %bb.u, label %.loopexit.i

bb.u:                                             ; preds = %bb.t
  %i.bv = load ptr, ptr @H5_optarg, align 8, !tbaa !23
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.7, ptr noundef %i.bv) #15
  call void @h5tools_setstatus(i32 noundef 1) #15
  br label %parse_command_line.exit.thread

bb.v:                                             ; preds = %bb.g
  %i.bw = load ptr, ptr @H5_optarg, align 8, !tbaa !23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.bx = call noalias ptr @fopen64(ptr noundef %i.bw, ptr noundef nonnull @.str.250) ; 10 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ap, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.v
  %i.bz = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.bx, ptr noundef nonnull @.str.252, ptr noundef nonnull %i.a) #15
  %i.ca = icmp eq i32 %i.bz, -1
  br i1 %i.ca, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.ao
  %i.cb = load i16, ptr %i.a, align 1
  %i.cc = xor i16 %i.cb, 27693
  %i.cd = getelementptr i8, ptr %i.a, i64 2
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i16
  %i.cg = or i16 %i.cc, %i.cf
  %i.ch = icmp ne i16 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %.not.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.cj = load i16, ptr %i.a, align 1
  %i.ck = xor i16 %i.cj, 26157
  %i.cl = getelementptr i8, ptr %i.a, i64 2
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i16
  %i.co = or i16 %i.ck, %i.cn
  %i.cp = icmp ne i16 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %.not25.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not25.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.255, ptr noundef %i.bw) #15
  br label %.loopexit.sink.split.i.i

bb.y:                                             ; preds = %bb.w, %.lr.ph.i.i
  store i8 48, ptr %i.c, align 1, !tbaa !26
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %bb.y
  %i.cr = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.bx, ptr noundef nonnull @.str.256, ptr noundef nonnull %i.c) #15
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ct = call i32 @ferror(ptr noundef nonnull %i.bx) #15
  %.not26.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not26.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.257) #15
  br label %.loopexit.sink.split.i.i

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.cu = call i32 @feof(ptr noundef nonnull %i.bx) #15
  %i.cv = icmp eq i32 %i.cu, 0
  %i.cw = load i8, ptr %i.c, align 1
  %i.cx = icmp ne i8 %i.cw, 32
  %or.cond.i.i = select i1 %i.cv, i1 %i.cx, i1 false
  br i1 %or.cond.i.i, label %bb.z, label %bb.ad, !llvm.loop !19

bb.ad:                                            ; preds = %bb.ac
  store i8 48, ptr %i.c, align 1, !tbaa !26
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ai, %bb.ad
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ai ], [ 0, %bb.ad ] ; 3 uses
  %i.cy = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.bx, ptr noundef nonnull @.str.256, ptr noundef nonnull %i.c) #15
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.da = call i32 @ferror(ptr noundef nonnull %i.bx) #15
  %.not27.i.i = icmp eq i32 %i.da, 0
  br i1 %.not27.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.257) #15
  br label %.loopexit.sink.split.i.i

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.db = load i8, ptr %i.c, align 1, !tbaa !26
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !26
  %i.dd = call i32 @feof(ptr noundef nonnull %i.bx) #15
  %.not28.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not28.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.de = load i8, ptr %i.c, align 1, !tbaa !26
  switch i8 %i.de, label %bb.ae [
    i8 32, label %bb.aj
    i8 10, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai, %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i
  store i8 0, ptr %i.df, align 1, !tbaa !26
  %i.dg = load i16, ptr %i.a, align 1
  %i.dh = xor i16 %i.dg, 27693
  %i.di = getelementptr i8, ptr %i.a, i64 2
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i16
  %i.dl = or i16 %i.dh, %i.dk
  %i.dm = icmp ne i16 %i.dl, 0
  %i.dn = zext i1 %i.dm to i32
  %.not30.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not30.i.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.do = call i32 @h5repack_addlayout(ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #15
  %i.dp = icmp eq i32 %i.do, -1
  br i1 %i.dp, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.258) #15
  br label %.loopexit.sink.split.i.i

bb.am:                                            ; preds = %bb.aj
  %i.dq = call i32 @h5repack_addfilter(ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #15
  %i.dr = icmp eq i32 %i.dq, -1
  br i1 %i.dr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.259) #15
  br label %.loopexit.sink.split.i.i

bb.ao:                                            ; preds = %bb.am, %bb.ak
  %i.ds = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.bx, ptr noundef nonnull @.str.252, ptr noundef nonnull %i.a) #15
  %i.dt = icmp eq i32 %i.ds, -1
  br i1 %i.dt, label %.loopexit.i.i, label %.lr.ph.i.i

bb.ap:                                            ; preds = %bb.v
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.251, ptr noundef %i.bw) #15
  call void @h5tools_setstatus(i32 noundef 1) #15
  br label %read_info.exit.i

.loopexit.sink.split.i.i:                         ; preds = %bb.an, %bb.al, %bb.ag, %bb.ab, %bb.x
  call void @h5tools_setstatus(i32 noundef 1) #15
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ao, %.loopexit.sink.split.i.i, %.preheader.i.i
  %.0.ph.i.i = phi i32 [ 1, %.loopexit.sink.split.i.i ], [ 0, %.preheader.i.i ], [ 0, %bb.ao ]
  %i.du = call i32 @fclose(ptr noundef nonnull %i.bx) ; 0 uses
  br label %read_info.exit.i

read_info.exit.i:                                 ; preds = %.loopexit.i.i, %bb.ap
  %.034.i.i = phi i32 [ %.0.ph.i.i, %.loopexit.i.i ], [ 1, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit.i

bb.aq:                                            ; preds = %bb.g
  store i32 1, ptr %i.as, align 8, !tbaa !28
  br label %.loopexit.i

bb.ar:                                            ; preds = %bb.g
  store i8 1, ptr %i.ag, align 4, !tbaa !29
  br label %.loopexit.i

bb.as:                                            ; preds = %bb.g
  %i.dv = load ptr, ptr @H5_optarg, align 8, !tbaa !23
  %i.dw = call i64 @__isoc23_strtol(ptr noundef nonnull %i.dv, ptr noundef null, i32 noundef 10) #15, !inline_history !18
  %i.dx = trunc i64 %i.dw to i32                  ; 2 uses
  %or.cond.i = icmp ugt i32 %i.dx, 5
  br i1 %or.cond.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.9) #15
  call void @h5tools_setstatus(i32 noundef 1) #15
  br label %parse_command_line.exit.thread

bb.au:                                            ; preds = %bb.as
  store i32 %i.dx, ptr %i.ar, align 8, !tbaa !16
  br label %.loopexit.i

bb.av:                                            ; preds = %bb.g
  %i.dy = load ptr, ptr @H5_optarg, align 8, !tbaa !23
  %i.dz = call i64 @__isoc23_strtol(ptr noundef nonnull %i.dy, ptr noundef null, i32 noundef 10) #15, !inline_history !18
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  %or.cond3.i = icmp ugt i32 %i.ea, 5
  br i1 %or.cond3.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.10) #15
  call void @h5tools_setstatus(i32 noundef 1) #15
  br label %parse_command_line.exit.thread

bb.ax:                                            ; preds = %bb.av
  store i32 %i.ea, ptr %i.aq, align 4, !tbaa !17
  br label %.loopexit.i

bb.ay:                                            ; preds = %bb.g
  store i8 1, ptr %i.ap, align 8, !tbaa !30
  br label %.loopexit.i

bb.az:                                            ; preds = %bb.g
  store i8 1, ptr %i.ao, align 1, !tbaa !31
  br label %.loopexit.i

bb.ba:                                            ; preds = %bb.g
  %i.eb = load ptr, ptr @H5_optarg, align 8, !tbaa !23
  %i.ec = call i64 @__isoc23_strtol(ptr noundef nonnull %i.eb, ptr noundef null, i32 noundef 10) #15, !inline_history !18
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  store i32 %i.ed, ptr %i.an, align 8, !tbaa !32
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %bb.bb, label %.loopexit.i

bb.bb:                                            ; preds = %bb.ba
  store i8 1, ptr %i.ag, align 4, !tbaa !29
  br label %.loopexit.i

bb.bc:                                            ; preds = %bb.g
  %i.ef = load ptr, ptr @H5_optarg, align 8, !tbaa !23
  %i.eg = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ef, ptr noundef null, i32 noundef 10) #15, !inline_history !18
  %i.eh = trunc i64 %i.eg to i32                  ; 2 uses
  store i32 %i.eh, ptr %i.am, align 4, !tbaa !33
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %bb.bd, label %.loopexit.i

bb.bd:                                            ; preds = %bb.bc
  store i8 1, ptr %i.ag, align 4, !tbaa !29
  br label %.loopexit.i

bb.be:                                            ; preds = %bb.g
  %i.ej = load ptr, ptr @H5_optarg, align 8, !tbaa !23 ; 2 uses
  %i.ek = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ej, i32 noundef 58) #16 ; 3 uses
  store i8 1, ptr %i.ag, align 4, !tbaa !29
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %.loopexit.loopexit.i, label %bb.bf

.loopexit.loopexit.i:                             ; preds = %bb.be
  %i.em = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ej, ptr noundef null, i32 noundef 10) #15, !inline_history !18
  %i.en = trunc i64 %i.em to i32                  ; 2 uses
  %i.eo = insertelement <4 x i32> poison, i32 %i.en, i64 0
  %i.ep = shufflevector <4 x i32> %i.eo, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ep, ptr %i.al, align 4, !tbaa !22
  store i32 %i.en, ptr %i.ah, align 4, !tbaa !22
  br label %.loopexit.i

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.er = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 10, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.eq) #15 ; 0 uses
  store i8 0, ptr %i.ek, align 1, !tbaa !26
  %i.es = load ptr, ptr @H5_optarg, align 8, !tbaa !23
  %i.et = call i64 @__isoc23_strtol(ptr noundef nonnull %i.es, ptr noundef null, i32 noundef 10) #15, !inline_history !18
  %i.eu = trunc i64 %i.et to i32                  ; 5 uses
  %i.ev = load i32, ptr %i.d, align 1
  %i.ew = xor i32 %i.ev, 1634759524
  %i.ex = getelementptr i8, ptr %i.d, i64 4
  %i.ey = load i16, ptr %i.ex, align 1
  %i.ez = zext i16 %i.ey to i32
  %i.fa = xor i32 %i.ez, 25955
  %i.fb = or i32 %i.ew, %i.fa
  %i.fc = icmp ne i32 %i.fb, 0
  %i.fd = zext i1 %i.fc to i32
  %.not141.i = icmp eq i32 %i.fd, 0
  br i1 %.not141.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 %i.eu, ptr %i.al, align 8, !tbaa !22
  br label %bb.bp

bb.bh:                                            ; preds = %bb.bf
  %i.fe = load i32, ptr %i.d, align 1
  %i.ff = xor i32 %i.fe, 1887007844
  %i.fg = getelementptr i8, ptr %i.d, i64 4
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i32
  %i.fj = xor i32 %i.fi, 101
  %i.fk = or i32 %i.ff, %i.fj
  %i.fl = icmp ne i32 %i.fk, 0
  %i.fm = zext i1 %i.fl to i32
  %.not143.i = icmp eq i32 %i.fm, 0
  br i1 %.not143.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 %i.eu, ptr %i.ak, align 4, !tbaa !22
  br label %bb.bp

bb.bj:                                            ; preds = %bb.bh
  %i.fn = load i32, ptr %i.d, align 1
  %i.fo = icmp ne i32 %i.fn, 1819044198
  %i.fp = zext i1 %i.fo to i32
  %.not145.i = icmp eq i32 %i.fp, 0
  br i1 %.not145.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 %i.eu, ptr %i.aj, align 8, !tbaa !22
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bj
  %i.fq = load i32, ptr %i.d, align 1
  %i.fr = xor i32 %i.fq, 1852402800
  %i.fs = getelementptr i8, ptr %i.d, i64 4
end_hunk_0
