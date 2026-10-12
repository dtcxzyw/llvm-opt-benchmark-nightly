Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@sfnt_init_face:bb.a
  %.not228.i.i = icmp eq i64 %i.hh, 0
  br i1 %.not228.i.i, label %._crit_edge301.i.i, label %bb.ak

._crit_edge301.i.i:                               ; preds = %bb.aj
  %.pre302.i.i = load i64, ptr %i.bj, align 8
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.hi = add i64 %.2200.i.i, 3
  %i.hj = and i64 %i.hi, 4294967292
  %.not229.i.i = icmp eq i64 %i.hh, %i.hj
  br i1 %.not229.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hk = load i64, ptr %i.bp, align 8, !tbaa !442
  %i.hl = add i64 %i.hk, %i.hh                    ; 2 uses
  %i.hm = load i64, ptr %i.bj, align 8, !tbaa !431 ; 2 uses
  %i.hn = icmp ugt i64 %i.hl, %i.hm
  br i1 %i.hn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  store i32 8, ptr %i.f, align 4, !tbaa !30
  br label %.thread262.i.i

bb.an:                                            ; preds = %bb.al, %._crit_edge301.i.i
  %i.ho = phi i64 [ %.pre302.i.i, %._crit_edge301.i.i ], [ %i.hm, %bb.al ]
  %.3201.i.i = phi i64 [ %.2200.i.i, %._crit_edge301.i.i ], [ %i.hl, %bb.al ]
  %i.hp = load i64, ptr %i.bl, align 8, !tbaa !432
  %.not230.i.i = icmp eq i64 %.0192.lcssa.i.i, %i.hp
  %.not231.i.i = icmp eq i64 %.3201.i.i, %i.ho
  %or.cond247.i.i = select i1 %.not230.i.i, i1 %.not231.i.i, i1 false
  br i1 %or.cond247.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 8, ptr %i.f, align 4, !tbaa !30
  br label %.thread262.i.i

bb.ap:                                            ; preds = %bb.an
  %i.hq = call ptr @ft_mem_qrealloc(ptr noundef %i.bu, i64 noundef 1, i64 noundef 12, i64 noundef %.0192.lcssa.i.i, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.f) #27 ; 10 uses
  %i.hr = load i32, ptr %i.f, align 4, !tbaa !30
  %.not232.i.i = icmp eq i32 %i.hr, 0
  br i1 %.not232.i.i, label %bb.aq, label %.thread262.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hs = load i16, ptr %i.bk, align 8, !tbaa !436
  %.not289.i.i = icmp eq i16 %i.hs, 0
  br i1 %.not289.i.i, label %._crit_edge286.i.i, label %.lr.ph285.i.i

.lr.ph285.i.i:                                    ; preds = %bb.aq
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %i.hu = getelementptr inbounds nuw i8, ptr %.069132.i, i64 64 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge281.i.i, %.lr.ph285.i.i
  %indvars.iv295.i.i = phi i64 [ 0, %.lr.ph285.i.i ], [ %indvars.iv.next296.i.i, %._crit_edge281.i.i ] ; 2 uses
  %.0195282.i.i = phi ptr [ %i.ht, %.lr.ph285.i.i ], [ %i.kg, %._crit_edge281.i.i ] ; 17 uses
  %i.hv = getelementptr inbounds nuw [48 x i8], ptr %i.es, i64 %indvars.iv295.i.i ; 9 uses
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !437
  %i.hx = lshr i32 %i.hw, 24
  %i.hy = trunc nuw i32 %i.hx to i8
  %i.hz = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 1
  store i8 %i.hy, ptr %.0195282.i.i, align 1, !tbaa !29
  %i.ia = load i32, ptr %i.hv, align 8, !tbaa !437
  %i.ib = lshr i32 %i.ia, 16
  %i.ic = trunc i32 %i.ib to i8
  %i.id = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 2
  store i8 %i.ic, ptr %i.hz, align 1, !tbaa !29
  %i.ie = load i32, ptr %i.hv, align 8, !tbaa !437
  %i.if = lshr i32 %i.ie, 8
  %i.ig = trunc i32 %i.if to i8
  %i.ih = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 3
  store i8 %i.ig, ptr %i.id, align 1, !tbaa !29
  %i.ii = load i32, ptr %i.hv, align 8, !tbaa !437
  %i.ij = trunc i32 %i.ii to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 4
  store i8 %i.ij, ptr %i.ih, align 1, !tbaa !29
  %i.il = getelementptr inbounds nuw i8, ptr %i.hv, i64 32 ; 4 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !440
  %i.in = lshr i64 %i.im, 24
  %i.io = trunc i64 %i.in to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 5
  store i8 %i.io, ptr %i.ik, align 1, !tbaa !29
  %i.iq = load i64, ptr %i.il, align 8, !tbaa !440
  %i.ir = lshr i64 %i.iq, 16
  %i.is = trunc i64 %i.ir to i8
  %i.it = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 6
  store i8 %i.is, ptr %i.ip, align 1, !tbaa !29
  %i.iu = load i64, ptr %i.il, align 8, !tbaa !440
  %i.iv = lshr i64 %i.iu, 8
  %i.iw = trunc i64 %i.iv to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 7
  store i8 %i.iw, ptr %i.it, align 1, !tbaa !29
  %i.iy = load i64, ptr %i.il, align 8, !tbaa !440
  %i.iz = trunc i64 %i.iy to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 8
  store i8 %i.iz, ptr %i.ix, align 1, !tbaa !29
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hv, i64 40 ; 7 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !441
  %i.jd = lshr i64 %i.jc, 24
  %i.je = trunc i64 %i.jd to i8
  %i.jf = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 9
  store i8 %i.je, ptr %i.ja, align 1, !tbaa !29
  %i.jg = load i64, ptr %i.jb, align 8, !tbaa !441
  %i.jh = lshr i64 %i.jg, 16
  %i.ji = trunc i64 %i.jh to i8
  %i.jj = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 10
  store i8 %i.ji, ptr %i.jf, align 1, !tbaa !29
  %i.jk = load i64, ptr %i.jb, align 8, !tbaa !441
  %i.jl = lshr i64 %i.jk, 8
  %i.jm = trunc i64 %i.jl to i8
  %i.jn = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 11
  store i8 %i.jm, ptr %i.jj, align 1, !tbaa !29
  %i.jo = load i64, ptr %i.jb, align 8, !tbaa !441
  %i.jp = trunc i64 %i.jo to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 12
  store i8 %i.jp, ptr %i.jn, align 1, !tbaa !29
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hv, i64 24 ; 7 uses
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !439
  %i.jt = lshr i64 %i.js, 24
  %i.ju = trunc i64 %i.jt to i8
  %i.jv = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 13
  store i8 %i.ju, ptr %i.jq, align 1, !tbaa !29
  %i.jw = load i64, ptr %i.jr, align 8, !tbaa !439
  %i.jx = lshr i64 %i.jw, 16
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 14
  store i8 %i.jy, ptr %i.jv, align 1, !tbaa !29
  %i.ka = load i64, ptr %i.jr, align 8, !tbaa !439
  %i.kb = lshr i64 %i.ka, 8
  %i.kc = trunc i64 %i.kb to i8
  %i.kd = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 15
  store i8 %i.kc, ptr %i.jz, align 1, !tbaa !29
  %i.ke = load i64, ptr %i.jr, align 8, !tbaa !439
  %i.kf = trunc i64 %i.ke to i8
  %i.kg = getelementptr inbounds nuw i8, ptr %.0195282.i.i, i64 16
  store i8 %i.kf, ptr %i.kd, align 1, !tbaa !29
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !134
  %i.kj = call i32 @FT_Stream_Seek(ptr noundef nonnull %.069132.i, i64 noundef %i.ki) #27 ; 2 uses
  store i32 %i.kj, ptr %i.f, align 4, !tbaa !30
  %.not233.i.i = icmp eq i32 %i.kj, 0
  br i1 %.not233.i.i, label %bb.as, label %.thread262.i.i

bb.as:                                            ; preds = %bb.ar
  %i.kk = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !438
  %i.km = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %.069132.i, i64 noundef %i.kl) #27 ; 2 uses
  store i32 %i.km, ptr %i.f, align 4, !tbaa !30
  %.not234.i.i = icmp eq i32 %i.km, 0
  br i1 %.not234.i.i, label %bb.at, label %.thread262.i.i

bb.at:                                            ; preds = %bb.as
  %i.kn = load i64, ptr %i.kk, align 8, !tbaa !438 ; 3 uses
  %i.ko = load i64, ptr %i.jr, align 8, !tbaa !439 ; 2 uses
  %i.kp = icmp eq i64 %i.kn, %i.ko
  br i1 %i.kp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.kq = load i64, ptr %i.jb, align 8, !tbaa !441
  %i.kr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.kq
  %i.ks = load ptr, ptr %i.hu, align 8, !tbaa !137
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr align 1 %i.ks, i64 %i.kn, i1 false)
  br label %bb.az

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i64 %i.ko, ptr %i.g, align 8, !tbaa !121
  %i.kt = load i64, ptr %i.jb, align 8, !tbaa !441
  %i.ku = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.kt
  %i.kv = load ptr, ptr %i.hu, align 8, !tbaa !137
  %i.kw = call i32 @FT_Gzip_Uncompress(ptr noundef %i.bu, ptr noundef %i.ku, ptr noundef nonnull %i.g, ptr noundef %i.kv, i64 noundef %i.kn) #27 ; 2 uses
  store i32 %i.kw, ptr %i.f, align 4, !tbaa !30
  %.not235.i.i = icmp eq i32 %i.kw, 0
  br i1 %.not235.i.i, label %bb.aw, label %.loopexit.i.i

bb.aw:                                            ; preds = %bb.av
  %i.kx = load i64, ptr %i.g, align 8, !tbaa !121
  %i.ky = load i64, ptr %i.jr, align 8, !tbaa !439
  %.not236.i.i = icmp eq i64 %i.kx, %i.ky
  br i1 %.not236.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 8, ptr %i.f, align 4, !tbaa !30
  br label %.loopexit.i.i

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.au
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %.069132.i) #27
  %i.kz = load i64, ptr %i.jb, align 8, !tbaa !441 ; 2 uses
  %i.la = load i64, ptr %i.jr, align 8, !tbaa !439 ; 2 uses
  %i.lb = add i64 %i.la, %i.kz                    ; 2 uses
  %i.lc = and i64 %i.lb, 3
  %.not237277.i.i = icmp eq i64 %i.lc, 0
  br i1 %.not237277.i.i, label %._crit_edge281.i.i, label %.lr.ph280.preheader.i.i

.lr.ph280.preheader.i.i:                          ; preds = %bb.az
  %scevgep.i.i = getelementptr i8, ptr %i.hq, i64 %i.lb
  %.neg.i.i = xor i64 %i.kz, -1
  %.neg316.i.i = sub i64 %.neg.i.i, %i.la
  %i.ld = and i64 %.neg316.i.i, 3
  %i.le = add nuw nsw i64 %i.ld, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.le, i1 false), !tbaa !29
  br label %._crit_edge281.i.i

._crit_edge281.i.i:                               ; preds = %.lr.ph280.preheader.i.i, %bb.az
  %indvars.iv.next296.i.i = add nuw nsw i64 %indvars.iv295.i.i, 1 ; 2 uses
  %i.lf = load i16, ptr %i.bk, align 8, !tbaa !436
  %i.lg = zext i16 %i.lf to i64
  %i.lh = icmp samesign ult i64 %indvars.iv.next296.i.i, %i.lg
  br i1 %i.lh, label %bb.ar, label %._crit_edge286.i.i, !llvm.loop !406

._crit_edge286.i.i:                               ; preds = %._crit_edge281.i.i, %bb.aq
  %i.li = load i64, ptr %i.bl, align 8, !tbaa !432
  call void @FT_Stream_OpenMemory(ptr noundef %i.da, ptr noundef %i.hq, i64 noundef %i.li) #27
  %i.lj = load ptr, ptr %i.bt, align 8, !tbaa !131
  %i.lk = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !131
  %i.ll = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  store ptr @sfnt_stream_close, ptr %i.ll, align 8, !tbaa !138
  %i.lm = load ptr, ptr %i.bf, align 8, !tbaa !139
  %i.ln = load i64, ptr %i.bg, align 8, !tbaa !140
  %i.lo = trunc i64 %i.ln to i32
  %i.lp = lshr i32 %i.lo, 10
  %i.lq = and i32 %i.lp, 1
  call void @FT_Stream_Free(ptr noundef %i.lm, i32 noundef %i.lq) #27
  store ptr %i.da, ptr %i.bf, align 8, !tbaa !139
  %i.lr = load i64, ptr %i.bg, align 8, !tbaa !140
  %i.ls = and i64 %i.lr, -1025
  store i64 %i.ls, ptr %i.bg, align 8, !tbaa !140
  br label %.thread262.i.i

.thread262.i.i:                                   ; preds = %bb.as, %bb.ar, %.loopexit.i.i, %._crit_edge286.i.i, %bb.ap, %bb.ao, %bb.am, %bb.ai, %bb.ae, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.0202.i.i = phi ptr [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.w ], [ %i.ew, %bb.x ], [ %i.ew, %bb.y ], [ %i.ew, %bb.z ], [ %i.ew, %bb.ae ], [ %i.ew, %bb.ai ], [ %i.ew, %bb.am ], [ %i.ew, %bb.ao ], [ %i.ew, %bb.ap ], [ %i.ew, %._crit_edge286.i.i ], [ %i.ew, %.loopexit.i.i ], [ %i.ew, %bb.ar ], [ %i.ew, %bb.as ]
  %.0197.i.i = phi ptr [ %i.cy, %bb.u ], [ %i.cy, %bb.v ], [ %i.cy, %bb.w ], [ %i.cy, %bb.x ], [ %i.cy, %bb.y ], [ %i.cy, %bb.z ], [ %i.cy, %bb.ae ], [ %i.cy, %bb.ai ], [ %i.cy, %bb.am ], [ %i.cy, %bb.ao ], [ %i.hq, %bb.ap ], [ %i.hq, %._crit_edge286.i.i ], [ %i.hq, %.loopexit.i.i ], [ %i.hq, %bb.ar ], [ %i.hq, %bb.as ]
  %.0196.i.i = phi ptr [ null, %bb.u ], [ %i.da, %bb.v ], [ %i.da, %bb.w ], [ %i.da, %bb.x ], [ %i.da, %bb.y ], [ %i.da, %bb.z ], [ %i.da, %bb.ae ], [ %i.da, %bb.ai ], [ %i.da, %bb.am ], [ %i.da, %bb.ao ], [ %i.da, %bb.ap ], [ %i.da, %._crit_edge286.i.i ], [ %i.da, %.loopexit.i.i ], [ %i.da, %bb.ar ], [ %i.da, %bb.as ] ; 2 uses
  %.0185.i.i = phi ptr [ null, %bb.u ], [ null, %bb.v ], [ %i.es, %bb.w ], [ %i.es, %bb.x ], [ %i.es, %bb.y ], [ %i.es, %bb.z ], [ %i.es, %bb.ae ], [ %i.es, %bb.ai ], [ %i.es, %bb.am ], [ %i.es, %bb.ao ], [ %i.es, %bb.ap ], [ %i.es, %._crit_edge286.i.i ], [ %i.es, %.loopexit.i.i ], [ %i.es, %bb.ar ], [ %i.es, %bb.as ]
  call void @ft_mem_free(ptr noundef %i.bu, ptr noundef %.0185.i.i) #27
  call void @ft_mem_free(ptr noundef %i.bu, ptr noundef %.0202.i.i) #27
  %i.lt = load i32, ptr %i.f, align 4, !tbaa !30
  %.not240.i.i = icmp eq i32 %i.lt, 0
  br i1 %.not240.i.i, label %woff_open_font.exit.thread108.i, label %woff_open_font.exit.i

woff_open_font.exit.thread108.i:                  ; preds = %.thread262.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %.backedge.sink.split.i

.loopexit.i.i:                                    ; preds = %bb.av, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %.069132.i) #27
  br label %.thread262.i.i

woff_open_font.exit.thread.i:                     ; preds = %.thread.i.i, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.n, %bb.n, %bb.m
  %.0.i.ph.i = phi i32 [ 8, %bb.p ], [ 8, %bb.o ], [ 8, %bb.n ], [ 8, %bb.t ], [ 8, %.thread.i.i ], [ 8, %bb.q ], [ 8, %bb.n ], [ %i.bv, %bb.m ], [ 8, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %sfnt_open_font.exit.thread

woff_open_font.exit.i:                            ; preds = %.thread262.i.i
  call void @ft_mem_free(ptr noundef %i.bu, ptr noundef %.0197.i.i) #27
  call void @FT_Stream_Close(ptr noundef %.0196.i.i) #27
  call void @ft_mem_free(ptr noundef %i.bu, ptr noundef %.0196.i.i) #27
  %.pre303.i.i = load i32, ptr %i.f, align 4, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  store i32 %.pre303.i.i, ptr %i.h, align 4, !tbaa !30
  %.not89.i = icmp eq i32 %.pre303.i.i, 0
  br i1 %.not89.i, label %.backedge.i, label %sfnt_open_font.exit.thread

.backedge.sink.split.i:                           ; preds = %woff2_open_font.exit.thread113.i, %woff_open_font.exit.thread108.i
  %.3210 = phi i32 [ %.0207, %woff_open_font.exit.thread108.i ], [ %.1208, %woff2_open_font.exit.thread113.i ]
  %.3205 = phi i64 [ %.0203, %woff_open_font.exit.thread108.i ], [ %.1204, %woff2_open_font.exit.thread113.i ]
  store i32 0, ptr %i.h, align 4, !tbaa !30
  br label %.backedge.i

.backedge.i:                                      ; preds = %woff2_open_font.exit.i, %.backedge.sink.split.i, %woff_open_font.exit.i
  %.2209 = phi i32 [ %.3210, %.backedge.sink.split.i ], [ %.0207, %woff_open_font.exit.i ], [ %.1208, %woff2_open_font.exit.i ]
  %.2 = phi i64 [ %.3205, %.backedge.sink.split.i ], [ %.0203, %woff_open_font.exit.i ], [ %.1204, %woff2_open_font.exit.i ]
  %.069.be.i = load ptr, ptr %i.bf, align 8, !tbaa !139 ; 3 uses
  %i.lu = call i64 @FT_Stream_Pos(ptr noundef %.069.be.i) #27
  %i.lv = call i32 @FT_Stream_ReadULong(ptr noundef %.069.be.i, ptr noundef nonnull %i.h) #27
  %i.lw = load i32, ptr %i.h, align 4, !tbaa !30  ; 2 uses
  %.not.i = icmp eq i32 %i.lw, 0
  br i1 %.not.i, label %bb.k, label %sfnt_open_font.exit.thread

bb.ba:                                            ; preds = %bb.k
  %i.lx = call i32 @FT_Stream_Seek(ptr noundef %.069132.i, i64 noundef %i.br) #27 ; 3 uses
  store i32 %i.lx, ptr %i.h, align 4, !tbaa !30
  %.not86.i = icmp eq i32 %i.lx, 0
  br i1 %.not86.i, label %bb.bb, label %sfnt_open_font.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.ly = getelementptr inbounds nuw i8, ptr %.069132.i, i64 56 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !131 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store ptr null, ptr %i.c, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.ma = call i32 @llvm.abs.i32(i32 %.0207, i1 true)
  %i.mb = and i32 %i.ma, 65535                    ; 2 uses
  %i.mc = call i32 @FT_Stream_ReadFields(ptr noundef %.069132.i, ptr noundef nonnull @woff2_open_font.woff2_header_fields, ptr noundef nonnull %5) #27 ; 3 uses
  store i32 %i.mc, ptr %i.b, align 4, !tbaa !30
  %.not.i90.i = icmp eq i32 %i.mc, 0
  br i1 %.not.i90.i, label %bb.bc, label %woff2_open_font.exit.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.md = load i64, ptr %i.aq, align 8, !tbaa !443
  %i.me = icmp eq i64 %i.md, 2001684018
  br i1 %i.me, label %woff2_open_font.exit.thread.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mf = load i64, ptr %i.ar, align 8, !tbaa !444 ; 6 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.069132.i, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !132
  %i.mi = icmp ne i64 %i.mf, %i.mh
  %i.mj = load i16, ptr %i.as, align 8            ; 2 uses
  %i.mk = add i16 %i.mj, -4096
  %i.ml = icmp ult i16 %i.mk, -4095
  %or.cond7.i.i = select i1 %i.mi, i1 true, i1 %i.ml
  br i1 %or.cond7.i.i, label %woff2_open_font.exit.thread.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mm = zext nneg i16 %i.mj to i64              ; 2 uses
  %i.mn = mul nuw nsw i64 %i.mm, 20
  %i.mo = add nuw nsw i64 %i.mn, 48
  %.not269.i.i = icmp ult i64 %i.mo, %i.mf
  br i1 %.not269.i.i, label %bb.bf, label %woff2_open_font.exit.thread.i

bb.bf:                                            ; preds = %bb.be
  %i.mp = load i64, ptr %i.at, align 8, !tbaa !445 ; 3 uses
  %i.mq = icmp eq i64 %i.mp, 0
  %i.mr = load i64, ptr %i.au, align 8, !tbaa !446 ; 3 uses
  br i1 %i.mq, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ms = icmp ne i64 %i.mr, 0
  %i.mt = load i64, ptr %.phi.trans.insert416.i.i, align 8
  %i.mu = icmp ne i64 %i.mt, 0
  %or.cond10.i105.i = select i1 %i.ms, i1 true, i1 %i.mu
  br i1 %or.cond10.i105.i, label %woff2_open_font.exit.thread.i, label %.thread446.i.i

bb.bh:                                            ; preds = %bb.bf
  %.pre417.i.i = load i64, ptr %.phi.trans.insert416.i.i, align 8
  %i.mv = icmp eq i64 %.pre417.i.i, 0
  %i.mw = icmp ne i64 %i.mr, 0
  %or.cond13.i91.i = select i1 %i.mw, i1 %i.mv, i1 false
  br i1 %or.cond13.i91.i, label %woff2_open_font.exit.thread.i, label %.thread446.i.i

.thread446.i.i:                                   ; preds = %bb.bh, %bb.bg
  %i.mx = phi i64 [ %i.mr, %bb.bh ], [ 0, %bb.bg ]
  %.not270.i.i = icmp uge i64 %i.mp, %i.mf
  %i.my = sub nuw i64 %i.mf, %i.mp
  %i.mz = icmp ult i64 %i.my, %i.mx
  %or.cond.i92.i = select i1 %.not270.i.i, i1 true, i1 %i.mz
  br i1 %or.cond.i92.i, label %woff2_open_font.exit.thread.i, label %bb.bi

bb.bi:                                            ; preds = %.thread446.i.i
  %i.na = load i64, ptr %i.av, align 8, !tbaa !447 ; 3 uses
  %i.nb = icmp eq i64 %i.na, 0
  %i.nc = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.nd = icmp ne i64 %i.nc, 0
  %or.cond16.not345.not349.i.i = select i1 %i.nb, i1 %i.nd, i1 false
  %.not271.i.i = icmp uge i64 %i.na, %i.mf
  %or.cond313.not346.i.i = or i1 %.not271.i.i, %or.cond16.not345.not349.i.i
  %i.ne = sub nuw i64 %i.mf, %i.na
  %i.nf = icmp ult i64 %i.ne, %i.nc
  %or.cond315.i.i = select i1 %or.cond313.not346.i.i, i1 true, i1 %i.nf
  br i1 %or.cond315.i.i, label %woff2_open_font.exit.thread.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store ptr null, ptr %i.ax, align 8, !tbaa !448
  %i.ng = call ptr @ft_mem_qrealloc(ptr noundef %i.lz, i64 noundef 56, i64 noundef 0, i64 noundef %i.mm, ptr noundef null, ptr noundef nonnull %i.b) #27 ; 2 uses
  %i.nh = load i32, ptr %i.b, align 4, !tbaa !30
  %.not272.i.i = icmp eq i32 %i.nh, 0
  br i1 %.not272.i.i, label %bb.bk, label %.thread.i93.i

bb.bk:                                            ; preds = %bb.bj
  %i.ni = load i16, ptr %i.as, align 8, !tbaa !144
  %i.nj = zext i16 %i.ni to i64
  %i.nk = call ptr @ft_mem_qrealloc(ptr noundef %i.lz, i64 noundef 8, i64 noundef 0, i64 noundef %i.nj, ptr noundef null, ptr noundef nonnull %i.b) #27 ; 35 uses
  %i.nl = load i32, ptr %i.b, align 4, !tbaa !30
  %.not273.i.i = icmp eq i32 %i.nl, 0
  br i1 %.not273.i.i, label %.preheader354.i.i, label %.thread.i93.i

.preheader354.i.i:                                ; preds = %bb.bk
  %i.nm = load i16, ptr %i.as, align 8, !tbaa !144
  %.not390.i.i = icmp eq i16 %i.nm, 0
  br i1 %.not390.i.i, label %._crit_edge.i98.i, label %.lr.ph.i95.i

.lr.ph.i95.i:                                     ; preds = %.preheader354.i.i, %.thread448.i.i
  %indvars.iv.i96.i = phi i64 [ %indvars.iv.next.i97.i, %.thread448.i.i ], [ 0, %.preheader354.i.i ] ; 3 uses
  %.0235366.i.i = phi i64 [ %i.ou, %.thread448.i.i ], [ 0, %.preheader354.i.i ] ; 3 uses
  %i.nn = getelementptr inbounds nuw [56 x i8], ptr %i.ng, i64 %indvars.iv.i96.i ; 12 uses
  %i.no = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %.069132.i, ptr noundef nonnull %i.b) #27 ; 3 uses
  store i8 %i.no, ptr %i.nn, align 8, !tbaa !449
  %i.np = load i32, ptr %i.b, align 4, !tbaa !30
end_hunk_0
