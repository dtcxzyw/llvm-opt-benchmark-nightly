Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/xwma?download=true
begin_hunk_0_@xwma_read_header:bb.a
  %i.j = tail call i32 @avio_rl32(ptr noundef %i.c) #6
  %i.k = tail call ptr @avformat_new_stream(ptr noundef nonnull %0, ptr noundef null) #6 ; 7 uses
  %.not182 = icmp eq ptr %i.k, null
  br i1 %.not182, label %.loopexit202, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 13 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.n = tail call i32 @ff_get_wav_header(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef %i.m, i32 noundef %i.j, i32 noundef 0) #6 ; 4 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.loopexit202, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 808
  store i32 0, ptr %i.p, align 8, !tbaa !55
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !34   ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !56
  switch i32 %i.s, label %bb.p [
    i32 86024, label %bb.g
    i32 86053, label %bb.q
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 132
  %i.u = load i32, ptr %i.t, align 4, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.w = load i32, ptr %i.v, align 8, !tbaa !58   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !59   ; 6 uses
  %i.z = trunc i64 %i.y to i32                    ; 6 uses
  switch i32 %i.u, label %.thread196 [
    i32 1, label %bb.h
    i32 2, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  switch i32 %i.w, label %.thread196 [
    i32 22050, label %bb.i
    i32 32000, label %bb.j
    i32 44100, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  switch i32 %i.z, label %bb.k [
    i32 192000, label %.thread196
    i32 48000, label %.thread196
  ]

bb.j:                                             ; preds = %bb.h
  switch i32 %i.z, label %bb.k [
    i32 192000, label %.thread196
    i32 48000, label %.thread196
  ]

bb.k:                                             ; preds = %bb.i, %bb.j
  br label %.thread196

bb.l:                                             ; preds = %bb.h
  %i.aa = icmp eq i32 %i.z, 96000
  %i.ab = icmp eq i32 %i.z, 192000
  %or.cond5 = or i1 %i.aa, %i.ab
  %spec.store.select = select i1 %or.cond5, i64 48000, i64 %i.y
  br label %.thread196

bb.m:                                             ; preds = %bb.g
  %i.ac = icmp eq i32 %i.w, 22050
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  switch i32 %i.z, label %bb.o [
    i32 192000, label %.thread196
    i32 48000, label %.thread196
  ]

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = icmp eq i32 %i.w, 32000
  %i.ae = icmp eq i32 %i.z, 192000
  %or.cond9 = select i1 %i.ad, i1 %i.ae, i1 false
  %spec.store.select14 = select i1 %or.cond9, i64 48000, i64 %i.y
  br label %.thread196

bb.p:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !60
  %i.ai = call ptr @av_fourcc_make_string(ptr noundef nonnull %i.a, i32 noundef %i.ah) #6
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !56
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %i.ai, i32 noundef %i.al) #6
  br label %bb.v

bb.q:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !61 ; 2 uses
  %.not185 = icmp eq i32 %i.an, 0
  br i1 %.not185, label %bb.s, label %bb.r

.thread196:                                       ; preds = %bb.k, %bb.n, %bb.n, %bb.g, %bb.h, %bb.j, %bb.j, %bb.i, %bb.i, %bb.o, %bb.l
  %.0 = phi i64 [ %i.y, %bb.g ], [ 20000, %bb.i ], [ %spec.store.select, %bb.l ], [ %i.y, %bb.k ], [ %i.y, %bb.h ], [ %spec.store.select14, %bb.o ], [ 20000, %bb.i ], [ 20000, %bb.j ], [ 20000, %bb.j ], [ 32000, %bb.n ], [ 32000, %bb.n ]
  %sext = shl i64 %.0, 32
  %i.ao = ashr exact i64 %sext, 32
  store i64 %i.ao, ptr %i.x, align 8, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !61 ; 2 uses
  %.not185197 = icmp eq i32 %i.aq, 0
  br i1 %.not185197, label %.thread198, label %bb.r

bb.r:                                             ; preds = %.thread196, %bb.q
  %i.ar = phi i32 [ %i.aq, %.thread196 ], [ %i.an, %bb.q ]
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %i.ar) #6
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.as = tail call i32 @ff_alloc_extradata(ptr noundef nonnull %i.q, i32 noundef 18) #6 ; 3 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %.loopexit202, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !61
  %i.az = sext i32 %i.ay to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aw, i8 0, i64 %i.az, i1 false)
  %i.ba = load ptr, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !63
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !62
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !64
  %i.bg = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !62
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 14
  store i8 -32, ptr %i.bj, align 1, !tbaa !64
  br label %bb.v

.thread198:                                       ; preds = %.thread196
  %i.bk = tail call i32 @ff_alloc_extradata(ptr noundef nonnull %i.q, i32 noundef 6) #6 ; 3 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %.loopexit202, label %bb.u

bb.u:                                             ; preds = %.thread198
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !61
  %i.br = sext i32 %i.bq to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bo, i8 0, i64 %i.br, i1 false)
  %i.bs = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i8 31, ptr %i.bv, align 1, !tbaa !64
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.t, %bb.p
  %.0157 = phi i32 [ %i.n, %bb.p ], [ %i.n, %bb.r ], [ %i.as, %bb.t ], [ %i.bk, %bb.u ] ; 3 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  %i.by = call i32 @av_channel_layout_check(ptr noundef nonnull %i.bx) #6
  %.not186 = icmp eq i32 %i.by, 0
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !34  ; 3 uses
  br i1 %.not186, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 132
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !57
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.6, i32 noundef %i.cb) #6
  br label %.loopexit202

bb.x:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !63 ; 3 uses
  %.not187 = icmp eq i32 %i.cd, 0
  %i.ce = icmp sgt i32 %i.cd, 64
  %or.cond = or i1 %.not187, %i.ce
  br i1 %or.cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.7, i32 noundef %i.cd) #6
  br label %.loopexit202

bb.z:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 152
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !58
  call void @avpriv_set_pts_info(ptr noundef nonnull %i.k, i32 noundef 64, i32 noundef 1, i32 noundef %i.cg) #6
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !66
  %.not188227 = icmp eq i32 %i.ci, 0
  br i1 %.not188227, label %.lr.ph230, label %.loopexit

.lr.ph230:                                        ; preds = %bb.z, %.loopexit199
  %.0153229 = phi ptr [ %.1154, %.loopexit199 ], [ null, %bb.z ] ; 10 uses
  %.0155228 = phi i32 [ %.1156, %.loopexit199 ], [ 0, %bb.z ] ; 3 uses
  %i.cj = call i32 @avio_rl32(ptr noundef nonnull %i.c) #6
  %i.ck = call i32 @avio_rl32(ptr noundef nonnull %i.c) #6 ; 4 uses
  %i.cl = zext i32 %i.ck to i64                   ; 7 uses
  switch i32 %i.cj, label %.loopexit199 [
    i32 1635017060, label %bb.ai
    i32 1935962212, label %bb.aa
  ]

bb.aa:                                            ; preds = %.lr.ph230
  %.not189 = icmp eq ptr %.0153229, null
  br i1 %.not189, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8) #6
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %i.cm = and i64 %i.cl, 3
  %.not190 = icmp eq i64 %i.cm, 0
  br i1 %.not190, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.9, i64 noundef %i.cl) #6
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cn = lshr i32 %i.ck, 2                       ; 3 uses
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = icmp ugt i32 %i.ck, 2147483643
  %or.cond11 = or i1 %i.cp, %i.co
  br i1 %or.cond11, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.10, i64 noundef %i.cl) #6
  br label %.loopexit202

bb.ag:                                            ; preds = %bb.ae
  %i.cq = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cr = call ptr @av_malloc_array(i64 noundef %i.cq, i64 noundef 4) #6 ; 4 uses
  %.not191 = icmp eq ptr %i.cr, null
  br i1 %.not191, label %.loopexit202, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag, %bb.ah
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %.0160225 = phi i64 [ %i.cv, %bb.ah ], [ %i.cl, %bb.ag ]
  %i.cs = call i32 @avio_feof(ptr noundef nonnull %i.c) #6
  %.not192 = icmp eq i32 %i.cs, 0
  br i1 %.not192, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %.lr.ph
  %i.ct = call i32 @avio_rl32(ptr noundef nonnull %i.c) #6
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !67
  %i.cv = add nsw i64 %.0160225, -4               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.cq
  br i1 %exitcond.not, label %.loopexit199, label %.lr.ph, !llvm.loop !41

.loopexit199:                                     ; preds = %bb.ah, %.lr.ph230
  %.1161 = phi i64 [ %i.cl, %.lr.ph230 ], [ %i.cv, %bb.ah ]
  %.1156 = phi i32 [ %.0155228, %.lr.ph230 ], [ %i.cn, %bb.ah ]
  %.1154 = phi ptr [ %.0153229, %.lr.ph230 ], [ %i.cr, %bb.ah ] ; 2 uses
  %i.cw = call i64 @avio_skip(ptr noundef nonnull %i.c, i64 noundef %.1161) #6 ; 0 uses
  %i.cx = load i32, ptr %i.ch, align 8, !tbaa !66
  %.not188 = icmp eq i32 %i.cx, 0
  br i1 %.not188, label %.lr.ph230, label %.loopexit

bb.ai:                                            ; preds = %.lr.ph230
  %.not193 = icmp eq i32 %i.ck, 0
  br i1 %.not193, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cy = call i64 @avio_seek(ptr noundef nonnull %i.c, i64 noundef 0, i32 noundef 1) #6
  %i.cz = add nsw i64 %i.cy, %i.cl
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %storemerge = phi i64 [ %i.cz, %bb.aj ], [ 9223372036854775807, %bb.ai ]
  store i64 %storemerge, ptr %i.e, align 8, !tbaa !38
  %i.da = icmp ne ptr %.0153229, null
  %i.db = icmp ne i32 %.0155228, 0
  %or.cond13 = select i1 %i.da, i1 %i.db, i1 false
  %i.dc = load ptr, ptr %i.l, align 8, !tbaa !34  ; 4 uses
  br i1 %or.cond13, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 132
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !57 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !63 ; 2 uses
  %i.dh = mul nsw i32 %i.dg, %i.de
  %i.di = ashr i32 %i.dh, 3                       ; 3 uses
  %.not195 = icmp eq i32 %i.di, 0
  br i1 %.not195, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %i.dg, i32 noundef %i.de) #6
  br label %.loopexit

bb.an:                                            ; preds = %bb.al
  %i.dj = zext nneg i32 %.0155228 to i64          ; 2 uses
  %i.dk = getelementptr [4 x i8], ptr %.0153229, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !67
  %i.dn = udiv i32 %i.dm, %i.di
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !69
  %i.dq = call i64 @avio_seek(ptr noundef nonnull %i.c, i64 noundef 0, i32 noundef 1) #6
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ao
  %indvars.iv261 = phi i64 [ 0, %bb.an ], [ %i.dr, %bb.ao ] ; 2 uses
  %i.dr = add nuw nsw i64 %indvars.iv261, 1       ; 3 uses
  %i.ds = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 156
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !39 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = mul nsw i64 %i.dr, %i.dv
  %i.dx = add nsw i64 %i.dw, %i.dq
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.0153229, i64 %indvars.iv261
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !67
  %i.ea = udiv i32 %i.dz, %i.di
  %i.eb = zext i32 %i.ea to i64
  %i.ec = call i32 @av_add_index_entry(ptr noundef nonnull %i.k, i64 noundef %i.dx, i64 noundef %i.eb, i32 noundef %i.du, i32 noundef 0, i32 noundef 1) #6 ; 0 uses
  %exitcond271.not = icmp eq i64 %i.dr, %i.dj
  br i1 %exitcond271.not, label %.loopexit, label %bb.ao, !llvm.loop !42

bb.ap:                                            ; preds = %bb.ak
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !59 ; 2 uses
  %.not194 = icmp eq i64 %i.ee, 0
  br i1 %.not194, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ef = shl nuw nsw i64 %i.cl, 3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dc, i64 152
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !58
  %i.ei = sext i32 %i.eh to i64
  %i.ej = call i64 @av_rescale(i64 noundef %i.ef, i64 noundef %i.ei, i64 noundef %i.ee) #7
  %i.ek = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !69
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit199, %.lr.ph, %bb.ao, %bb.z, %bb.am, %bb.aq, %bb.ap, %bb.ab
  %.2159 = phi i32 [ -1094995529, %bb.ab ], [ -541478725, %bb.z ], [ -1094995529, %.lr.ph ], [ %.0157, %bb.ap ], [ %.0157, %bb.aq ], [ -1094995529, %bb.am ], [ %.0157, %bb.ao ], [ -541478725, %.loopexit199 ]
  %.2 = phi ptr [ %.0153229, %bb.ab ], [ null, %bb.z ], [ %i.cr, %.lr.ph ], [ %.0153229, %bb.ap ], [ %.0153229, %bb.aq ], [ %.0153229, %bb.am ], [ %.0153229, %bb.ao ], [ %.1154, %.loopexit199 ]
  call void @av_free(ptr noundef %.2) #6
  br label %.loopexit202

.loopexit202:                                     ; preds = %bb.ag, %.thread198, %bb.s, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %.loopexit, %bb.af, %bb.y, %bb.w
  %.0162 = phi i32 [ -1094995529, %bb.c ], [ -1094995529, %bb.a ], [ -1094995529, %bb.b ], [ -12, %bb.d ], [ -1094995529, %bb.y ], [ %.2159, %.loopexit ], [ %i.as, %bb.s ], [ -1094995529, %bb.af ], [ %i.bk, %.thread198 ], [ -1094995529, %bb.w ], [ %i.n, %bb.e ], [ -12, %bb.ag ]
  ret i32 %.0162
}

; Function Attrs: nounwind uwtable
define internal i32 @xwma_read_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.f = load i64, ptr %i.b, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = tail call i64 @avio_seek(ptr noundef %i.h, i64 noundef 0, i32 noundef 1) #6
  %i.j = sub nsw i64 %i.f, %i.i                   ; 2 uses
  %i.k = icmp slt i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 156
  %i.o = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 1
  %narrow = select i1 %i.p, i32 %i.o, i32 2230
  %spec.select = zext i32 %narrow to i64
  %i.q = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %i.j)
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.t = tail call i32 @av_get_packet(ptr noundef %i.s, ptr noundef %1, i32 noundef %i.r) #6 ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 0, ptr %i.v, align 4, !tbaa !73
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.t, %bb.c ], [ -541478725, %bb.a ], [ %i.t, %bb.b ]
  ret i32 %.0
}

declare i32 @avio_rl32(ptr noundef) local_unnamed_addr #2

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_get_wav_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @av_fourcc_make_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @ff_alloc_extradata(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_channel_layout_check(ptr noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @avio_feof(ptr noundef) local_unnamed_addr #2

declare i64 @avio_skip(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @av_add_index_entry(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @av_free(ptr noundef) local_unnamed_addr #2

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_get_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

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
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"AVProbeData", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 24}
!12 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!13 = !{!"p1 _ZTS13AVInputFormat", !9, i64 0}
!14 = !{!"p1 _ZTS14AVOutputFormat", !9, i64 0}
!15 = !{!"p1 _ZTS11AVIOContext", !9, i64 0}
!16 = !{!"any p2 pointer", !9, i64 0}
!17 = !{!"p2 _ZTS8AVStream", !16, i64 0}
!18 = !{!"p2 _ZTS13AVStreamGroup", !16, i64 0}
!19 = !{!"p2 _ZTS9AVChapter", !16, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"p2 _ZTS9AVProgram", !16, i64 0}
!22 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!23 = !{!"AVIOInterruptCB", !9, i64 0, !9, i64 8}
!24 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!25 = !{!"AVFormatContext", !12, i64 0, !13, i64 8, !14, i64 16, !9, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !17, i64 48, !6, i64 56, !18, i64 64, !6, i64 72, !19, i64 80, !10, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !20, i64 136, !20, i64 144, !10, i64 152, !6, i64 160, !6, i64 164, !21, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !22, i64 192, !20, i64 200, !6, i64 208, !6, i64 212, !23, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !20, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !20, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !6, i64 368, !24, i64 376, !24, i64 384, !24, i64 392, !24, i64 400, !6, i64 408, !9, i64 416, !9, i64 424, !20, i64 432, !10, i64 440, !9, i64 448, !9, i64 456, !20, i64 464, !10, i64 472}
!26 = !{!25, !15, i64 32}
!27 = !{!25, !9, i64 24}
!28 = !{!"p1 _ZTS17AVCodecParameters", !9, i64 0}
!29 = !{!"AVRational", !6, i64 0, !6, i64 4}
!30 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!31 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!32 = !{!"AVPacket", !30, i64 0, !20, i64 8, !20, i64 16, !10, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !31, i64 48, !6, i64 56, !20, i64 64, !20, i64 72, !9, i64 80, !30, i64 88, !29, i64 96}
!33 = !{!"AVStream", !12, i64 0, !6, i64 8, !6, i64 12, !28, i64 16, !9, i64 24, !29, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !6, i64 64, !6, i64 68, !29, i64 72, !22, i64 80, !29, i64 88, !32, i64 96, !6, i64 200, !29, i64 204, !6, i64 212}
!34 = !{!33, !28, i64 16}
!35 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!36 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !10, i64 16, !6, i64 24, !31, i64 32, !6, i64 40, !6, i64 44, !20, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !29, i64 80, !29, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !35, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!37 = !{!"XWMAContext", !20, i64 0}
!38 = !{!37, !20, i64 0}
!39 = !{!36, !6, i64 156}
!40 = !{!11, !10, i64 8}
!41 = distinct !{!41, !68}
!42 = distinct !{!42, !68}
!43 = !{!"p1 _ZTS15AVFormatContext", !9, i64 0}
!44 = !{!"p1 _ZTS12AVBSFContext", !9, i64 0}
!45 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!46 = !{!"", !44, i64 0, !6, i64 8}
!47 = !{!"FFFrac", !20, i64 0, !20, i64 8, !20, i64 16}
!48 = !{!"p1 _ZTS12FFStreamInfo", !9, i64 0}
!49 = !{!"p1 _ZTS12AVIndexEntry", !9, i64 0}
!50 = !{!"p1 _ZTS15PacketListEntry", !9, i64 0}
!51 = !{!"p1 _ZTS20AVCodecParserContext", !9, i64 0}
!52 = !{!"p1 _ZTS8AVPacket", !9, i64 0}
!53 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!54 = !{!"FFStream", !33, i64 0, !43, i64 216, !6, i64 224, !44, i64 232, !6, i64 240, !45, i64 248, !6, i64 256, !46, i64 264, !6, i64 280, !6, i64 284, !47, i64 288, !48, i64 312, !49, i64 320, !6, i64 328, !6, i64 332, !20, i64 336, !20, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !20, i64 368, !20, i64 376, !20, i64 384, !6, i64 392, !20, i64 400, !20, i64 408, !20, i64 416, !6, i64 424, !6, i64 428, !5, i64 432, !5, i64 568, !5, i64 592, !20, i64 728, !5, i64 736, !5, i64 737, !29, i64 740, !11, i64 752, !50, i64 784, !20, i64 792, !6, i64 800, !6, i64 804, !6, i64 808, !51, i64 816, !52, i64 824, !6, i64 832, !6, i64 836, !20, i64 840, !20, i64 848, !53, i64 856}
!55 = !{!54, !6, i64 808}
!56 = !{!36, !6, i64 4}
!57 = !{!36, !6, i64 132}
!58 = !{!36, !6, i64 152}
!59 = !{!36, !20, i64 48}
!60 = !{!36, !6, i64 8}
!61 = !{!36, !6, i64 24}
!62 = !{!36, !10, i64 16}
!63 = !{!36, !6, i64 56}
!64 = !{!5, !5, i64 0}
!65 = !{!"AVIOContext", !12, i64 0, !10, i64 8, !6, i64 16, !10, i64 24, !10, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !20, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !20, i64 104, !10, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !6, i64 144, !6, i64 148, !10, i64 152, !10, i64 160, !9, i64 168, !6, i64 176, !10, i64 184, !20, i64 192, !20, i64 200}
!66 = !{!65, !6, i64 80}
!67 = !{!6, !6, i64 0}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!33, !20, i64 48}
!70 = !{!25, !17, i64 48}
!71 = !{!"p1 _ZTS8AVStream", !9, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!32, !6, i64 36}
end_hunk_0
