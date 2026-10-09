Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hlsenc?download=true
inline.NumInlined: 50
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hls_write_header:bb.a
.lr.ph82:                                         ; preds = %.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 12664 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 12792 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph82, %bb.af
  %indvars.iv92 = phi i64 [ 0, %.lr.ph82 ], [ %indvars.iv.next93, %bb.af ] ; 2 uses
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.ci = getelementptr inbounds nuw [12856 x i8], ptr %i.ch, i64 %indvars.iv92 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 88
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !58
  %.not66 = icmp eq i32 %i.ck, 0
  br i1 %.not66, label %bb.w, label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 92
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !60
  %.not67 = icmp eq i32 %i.cm, 0
  br i1 %.not67, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12816
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !59 ; 2 uses
  %.not68 = icmp eq ptr %i.co, null
  br i1 %.not68, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %i.cd, align 8, !tbaa !59
  %i.cq = call i32 @av_strcasecmp(ptr noundef nonnull %i.co, ptr noundef %i.cp) #15
  %.not69 = icmp eq i32 %i.cq, 0
  br i1 %.not69, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 12656
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !37
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !39 ; 2 uses
  %i.cu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cf) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !47
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !50
  %i.cy = icmp eq i32 %i.cx, 3
  br i1 %i.cy, label %write_codec_attr.exit76, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = load i32, ptr %i.cg, align 8, !tbaa !150
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %write_codec_attr.exit76, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @av_bprint_init_for_buffer(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 32) #15
  %i.db = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !47
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  %i.de = call i32 @ff_make_codec_str(ptr noundef %i.db, ptr noundef %i.dc, ptr noundef nonnull %i.dd, ptr noundef nonnull %1) #15
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = call ptr @av_stristr(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.a) #15
  %.not.i73 = icmp eq ptr %i.dg, null
  br i1 %.not.i73, label %bb.ad, label %write_codec_attr.exit76

bb.ad:                                            ; preds = %bb.ac
  %sext.i74 = shl i64 %i.cu, 32
  %i.dh = ashr exact i64 %sext.i74, 32            ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.cf, i64 %i.dh
  %i.dj = sub nsw i64 128, %i.dh
  %i.dk = and i64 %i.cu, 4294967295
  %.not12.i75 = icmp eq i64 %i.dk, 0
  %i.dl = select i1 %.not12.i75, ptr @.str.131, ptr @.str.130
  %i.dm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.di, i64 noundef %i.dj, ptr noundef nonnull @.str.129, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.a) #15 ; 0 uses
  br label %write_codec_attr.exit76

bb.ae:                                            ; preds = %bb.ab
  store i8 0, ptr %i.cf, align 8, !tbaa !56
  store i32 1, ptr %i.cg, align 8, !tbaa !150
  br label %write_codec_attr.exit76

write_codec_attr.exit76:                          ; preds = %bb.z, %bb.aa, %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.af

bb.af:                                            ; preds = %write_codec_attr.exit76, %bb.y, %bb.x, %bb.w, %bb.v
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.dn = load i32, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = icmp samesign ult i64 %indvars.iv.next93, %i.do
  br i1 %i.dp, label %bb.v, label %.loopexit, !llvm.loop !145

.loopexit:                                        ; preds = %bb.af, %._crit_edge..loopexit_crit_edge, %.preheader, %bb.u
  %i.dq = phi i32 [ %.pre, %._crit_edge..loopexit_crit_edge ], [ %.pre98, %bb.u ], [ 0, %.preheader ], [ %i.dn, %bb.af ]
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = icmp samesign ult i64 %indvars.iv.next96, %i.dr
  br i1 %i.ds, label %bb.b, label %.thread, !llvm.loop !146

.thread:                                          ; preds = %.loopexit, %bb.b, %bb.a
  %.259 = phi i32 [ 0, %bb.a ], [ %i.m, %bb.b ], [ 0, %.loopexit ]
  ret i32 %.259
}

; Function Attrs: nounwind uwtable
define internal i32 @hls_write_packet(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 14 uses
  %i.e = alloca ptr, align 8                      ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 27 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !153  ; 3 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8496
  %i.p = load i32, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %.not413 = icmp eq i32 %i.p, 0
  br i1 %.not413, label %._crit_edge, label %.lr.ph412

.lr.ph412:                                        ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8488
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.trip.count423 = zext i32 %i.p to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph412, %.thread
  %indvars.iv420 = phi i64 [ 0, %.lr.ph412 ], [ %indvars.iv.next421, %.thread ] ; 2 uses
  %i.t = getelementptr inbounds nuw [12856 x i8], ptr %i.r, i64 %indvars.iv420 ; 49 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12796
  %i.v = load i32, ptr %i.u, align 4, !tbaa !36   ; 2 uses
  %.not414 = icmp eq i32 %i.v, 0
  br i1 %.not414, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 12656
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  %wide.trip.count = zext i32 %i.v to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.0289408 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.e ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !50
  %i.ad = icmp eq i32 %i.ac, 3
  %i.ae = zext i1 %i.ad to i32
  %spec.select = add nuw nsw i32 %.0289408, %i.ae ; 2 uses
  %i.af = icmp eq ptr %i.z, %i.n
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !50 ; 4 uses
  %i.ai = icmp eq i32 %i.ah, 3                    ; 2 uses
  %.1274.in.v = select i1 %i.ai, i64 80, i64 72
  %.1274.in = getelementptr inbounds nuw i8, ptr %i.t, i64 %.1274.in.v
  %.1274 = load ptr, ptr %.1274.in, align 8, !tbaa !154 ; 9 uses
  %.not = icmp eq ptr %.1274, null
  br i1 %.not, label %.thread, label %.thread373

bb.e:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.c, !llvm.loop !151

.thread:                                          ; preds = %bb.e, %bb.b, %bb.d
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 2 uses
  %exitcond424.not = icmp eq i64 %indvars.iv.next421, %wide.trip.count423
  br i1 %exitcond424.not, label %._crit_edge, label %bb.b, !llvm.loop !152

._crit_edge:                                      ; preds = %.thread, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.132) #15
  br label %.thread398

.thread373:                                       ; preds = %bb.d
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = sub nsw i32 %i.aj, %spec.select
  %.1295.le = select i1 %i.ai, i32 0, i32 %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !64
  %i.ap = zext i32 %i.ao to i64
  %i.aq = mul nsw i64 %i.am, %i.ap                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !65
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.au = load i32, ptr %i.at, align 8, !tbaa !66
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = sub nsw i64 %i.as, %i.av                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  %i.az = icmp sgt i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.thread373
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !68 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = mul nsw i64 %i.bb, %i.av
  %i.be = sub i64 %i.aw, %i.ay
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !69 ; 2 uses
  %i.bh = mul nsw i64 %i.bg, %i.be
  store i64 %i.bg, ptr %i.al, align 8, !tbaa !63
  %i.bi = add nsw i64 %i.bh, %i.bd
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread373
  %.0276 = phi i64 [ %i.bi, %bb.g ], [ %i.aq, %bb.f ], [ %i.aq, %.thread373 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 4 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !70 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %i.bl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !155
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = tail call i64 @av_rescale_q(i64 noundef %i.bn, i64 %i.bp, i64 4294967296000001) #17 ; 2 uses
  store i64 %i.bq, ptr %i.bj, align 8, !tbaa !70
  %i.br = icmp eq i32 %i.ah, 1
  br i1 %i.br, label %.thread452, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bs = phi i64 [ %i.bq, %bb.i ], [ %i.bk, %bb.h ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 100 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !156
  %.not324 = icmp ne i32 %i.bu, 0
  %i.bv = icmp eq i32 %i.ah, 0
  %or.cond468 = and i1 %.not324, %i.bv
  br i1 %or.cond468, label %bb.k, label %.thread454

.thread452:                                       ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 100
  store i32 1, ptr %i.bw, align 4, !tbaa !156
  br label %.thread454

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !155
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = tail call i64 @av_rescale_q(i64 noundef %i.by, i64 %i.ca, i64 4294967296000001) #17 ; 2 uses
  %i.cc = icmp sgt i64 %i.bs, %i.cb
  br i1 %i.cc, label %bb.l, label %.thread454

bb.l:                                             ; preds = %bb.k
  store i64 %i.cb, ptr %i.bj, align 8, !tbaa !70
  store i32 0, ptr %i.bt, align 4, !tbaa !156
  br label %.thread454

.thread454:                                       ; preds = %.thread452, %bb.k, %bb.l, %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !58
  %.not325 = icmp eq i32 %i.ce, 0
  br i1 %.not325, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.thread454
  %i.cf = icmp eq i32 %i.ah, 0
  br i1 %i.cf, label %bb.n, label %.thread382

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !157
  %i.ci = and i32 %i.ch, 1
  %.not326 = icmp eq i32 %i.ci, 0
  br i1 %.not326, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !71
  %i.cl = and i32 %i.ck, 32
  %i.cm = icmp eq i32 %i.cl, 0
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.ph = phi i1 [ %i.cm, %bb.o ], [ false, %bb.n ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.t, i64 172
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !72
  %i.cp = icmp ne i32 %i.k, %i.co
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread454
  %.0284 = phi i1 [ false, %.thread454 ], [ %.ph, %bb.p ]
  %.0277 = phi i1 [ false, %.thread454 ], [ %i.cp, %bb.p ]
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !155 ; 8 uses
  %i.cs = icmp eq i64 %i.cr, -9223372036854775808 ; 2 uses
  %.not327 = select i1 %i.cs, i1 true, i1 %.0277
  br i1 %.not327, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 120 ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !73 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, -9223372036854775808
  br i1 %i.cv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 %i.cr, ptr %i.ct, align 8, !tbaa !73
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cw = phi i64 [ %i.cr, %bb.s ], [ %i.cu, %bb.r ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !74
  %.not328 = icmp eq i32 %i.cy, 0
  br i1 %.not328, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.cx, align 8, !tbaa !74
  %i.cz = sub nsw i64 %i.cr, %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !158
  %i.de = sitofp nsz i64 %i.cz to double
  %i.df = load <2 x i32>, ptr %i.da, align 8, !tbaa !61
  %i.dg = sitofp <2 x i32> %i.df to <2 x double>  ; 2 uses
  %i.dh = sitofp nsz i64 %i.dd to double
  %i.di = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.dh, i64 1
  %i.dl = fmul nnan nsz <2 x double> %i.di, %i.dk
  %i.dm = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dn = fdiv nsz <2 x double> %i.dl, %i.dm      ; 2 uses
  %i.do = extractelement <2 x double> %i.dn, i64 0
  store double %i.do, ptr %i.db, align 8, !tbaa !75
  %i.dp = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.dq = extractelement <2 x double> %i.dn, i64 1
  store double %i.dq, ptr %i.dp, align 8, !tbaa !76
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !158 ; 2 uses
  %.not329 = icmp eq i64 %i.ds, 0
  br i1 %.not329, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = sitofp nsz i64 %i.ds to double
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.dv = load <2 x i32>, ptr %i.du, align 8, !tbaa !61
  %i.dw = sitofp <2 x i32> %i.dv to <2 x double>  ; 2 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 0
  %i.dy = fmul nnan nsz double %i.dx, %i.dt
  %i.dz = extractelement <2 x double> %i.dw, i64 1
  %i.ea = fdiv nsz double %i.dy, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.t, i64 136 ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !75
  %i.ed = fadd nsz double %i.ec, %i.ea
  store double %i.ed, ptr %i.eb, align 8, !tbaa !75
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.133, i32 noundef %i.k, i64 noundef %i.cr) #15
  %i.ee = load i64, ptr %i.cq, align 8, !tbaa !155 ; 2 uses
  %i.ef = load i64, ptr %i.ct, align 8, !tbaa !73
  %i.eg = sub nsw i64 %i.ee, %i.ef
  %i.eh = sitofp nsz i64 %i.eg to double
  %i.ei = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ej = load <2 x i32>, ptr %i.ei, align 8, !tbaa !61
  %i.ek = sitofp <2 x i32> %i.ej to <2 x double>  ; 2 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0
  %i.em = fmul nnan nsz double %i.el, %i.eh
  %i.en = extractelement <2 x double> %i.ek, i64 1
  %i.eo = fdiv nsz double %i.em, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  store double %i.eo, ptr %i.ep, align 8, !tbaa !75
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x, %bb.w, %bb.q
  %i.eq = phi i64 [ %i.cr, %bb.u ], [ %i.ee, %bb.x ], [ %i.cr, %bb.w ], [ %i.cr, %bb.q ] ; 2 uses
  %.not330 = select i1 %i.cs, i1 true, i1 %.0284
  br i1 %.not330, label %.thread382, label %bb.z

.thread382:                                       ; preds = %bb.m, %bb.y
  %i.er = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  br label %bb.cr

bb.z:                                             ; preds = %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %i.t, i64 120 ; 3 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !73
  %i.eu = icmp sgt i64 %i.eq, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 5 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !77
  %i.ex = icmp ne i32 %i.ew, 0
  %or.cond = select i1 %i.ex, i1 %i.eu, i1 false
  br i1 %or.cond, label %bb.aa, label %bb.cr

bb.aa:                                            ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = tail call i64 @av_rescale_q(i64 noundef %i.eq, i64 %i.ez, i64 4294967296000001) #17
  %i.fb = load i64, ptr %i.bj, align 8, !tbaa !70
  %i.fc = sub nsw i64 %i.fa, %i.fb
  %.not331 = icmp slt i64 %i.fc, %.0276
  br i1 %.not331, label %bb.cr, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_0
