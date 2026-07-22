inline.NumInlined: 81
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cff_glyph_load:bb.a
  %i.ih = call i64 @FT_MulDiv(i64 noundef %i.ig, i64 noundef %i.hv, i64 noundef %i.ib) #18
  store i64 %i.ih, ptr %i.al, align 8, !tbaa !266
  br label %bb.an

bb.am:                                            ; preds = %bb.aa
  %i.ii = getelementptr inbounds nuw i8, ptr %i.r, i64 1704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ii, i64 32, i1 false), !tbaa.struct !140
  %i.ij = getelementptr inbounds nuw i8, ptr %i.r, i64 1752
  %.sroa.0.0.copyload94.i = load i64, ptr %i.ij, align 8, !tbaa !134
  %.sroa.8.0..sroa_idx96.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1760
  %.sroa.8.0.copyload97.i = load i64, ptr %.sroa.8.0..sroa_idx96.i, align 8, !tbaa !134
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %cff_fd_select_get.exit.i
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload94.i, %bb.am ], [ %.sroa.0.0.copyload.i, %bb.al ], [ %.sroa.0.0.copyload.i, %cff_fd_select_get.exit.i ] ; 4 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.8.0.copyload97.i, %bb.am ], [ %.sroa.8.0.copyload.i, %bb.al ], [ %.sroa.8.0.copyload.i, %cff_fd_select_get.exit.i ] ; 4 uses
  %.1307.i = phi i8 [ 0, %bb.am ], [ 1, %bb.al ], [ 0, %cff_fd_select_get.exit.i ]
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 202 ; 2 uses
  store i16 0, ptr %i.il, align 2, !tbaa !270
  store i16 0, ptr %i.ik, align 8, !tbaa !271
  %i.im = and i32 %spec.select.i, 2
  %i.in = icmp eq i32 %i.im, 0                    ; 2 uses
  %i.io = zext i1 %i.in to i8                     ; 2 uses
  %i.ip = and i32 %spec.select.i, 1               ; 2 uses
  %i.iq = icmp eq i32 %i.ip, 0
  %i.ir = trunc nuw nsw i32 %i.ip to i8
  %i.is = xor i8 %i.ir, 1
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store i8 %i.io, ptr %i.it, align 8, !tbaa !314
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 305
  store i8 %i.is, ptr %i.iu, align 1, !tbaa !315
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i32 1869968492, ptr %i.iv, align 8, !tbaa !289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.iw = load ptr, ptr %i.v, align 8, !tbaa !316
  %i.ix = lshr i32 %spec.select.i, 16
  %i.iy = and i32 %i.ix, 15
  call void %i.iw(ptr noundef nonnull %6, ptr noundef %i.p, ptr noundef %1, ptr noundef nonnull %0, i8 noundef zeroext %i.io, i32 noundef %i.iy, ptr noundef nonnull @cff_get_glyph_data, ptr noundef nonnull @cff_free_glyph_data) #18, !inline_history !269
  %i.iz = and i32 %spec.select.i, 256
  %.not350.i = icmp eq i32 %i.iz, 0
  br i1 %.not350.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ja = getelementptr inbounds nuw i8, ptr %6, i64 1177
  store i8 1, ptr %i.ja, align 1, !tbaa !318
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.jb = and i32 %spec.select.i, 1024            ; 2 uses
  %.not351.i = icmp eq i32 %i.jb, 0
  %.lobit.i = lshr exact i32 %i.jb, 10
  %i.jc = trunc nuw nsw i32 %.lobit.i to i8
  %i.jd = getelementptr inbounds nuw i8, ptr %6, i64 130
  store i8 %i.jc, ptr %i.jd, align 2, !tbaa !326
  %i.je = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !327
  %i.jg = call i32 %i.jf(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %.0297.i) #18, !inline_history !269 ; 2 uses
  %.not352.i = icmp eq i32 %i.jg, 0
  br i1 %.not352.i, label %bb.aq, label %.thread407.i

bb.aq:                                            ; preds = %bb.ap
  %i.jh = getelementptr inbounds nuw i8, ptr %i.p, i64 240 ; 4 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !328
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 104
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !329 ; 3 uses
  %.not.i378.i = icmp eq ptr %i.jk, null
  br i1 %.not.i378.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !333
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !337
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !339
  %i.jp = call i32 %i.jm(ptr noundef %i.jo, i32 noundef %.0297.i, ptr noundef nonnull %5) #18, !inline_history !340
  %i.jq = load ptr, ptr %5, align 8, !tbaa !341
  store ptr %i.jq, ptr %i.f, align 8, !tbaa !160
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !343
  %i.jt = zext i32 %i.js to i64
  store i64 %i.jt, ptr %i.g, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %cff_get_glyph_data.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.ju = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 1336
  %i.jw = call fastcc i32 @cff_index_access_element(ptr noundef nonnull %i.jv, i32 noundef %.0297.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %cff_get_glyph_data.exit.i

cff_get_glyph_data.exit.i:                        ; preds = %bb.as, %bb.ar
  %.0.i379.i = phi i32 [ %i.jp, %bb.ar ], [ %i.jw, %bb.as ] ; 2 uses
  %.not353.i = icmp eq i32 %.0.i379.i, 0
  br i1 %.not353.i, label %bb.at, label %.thread407.i

bb.at:                                            ; preds = %cff_get_glyph_data.exit.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !344
  call void %i.jy(ptr noundef nonnull %7, ptr noundef nonnull %6, i8 noundef zeroext 0) #18, !inline_history !269
  %i.jz = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !345
  %i.kb = load ptr, ptr %i.f, align 8, !tbaa !160
  %i.kc = load i64, ptr %i.g, align 8, !tbaa !134 ; 4 uses
  %i.kd = call i32 %i.ka(ptr noundef nonnull %7, ptr noundef %i.kb, i64 noundef %i.kc) #18, !inline_history !269 ; 2 uses
  %i.ke = and i32 %i.kd, 255
  %i.kf = icmp eq i32 %i.ke, 164
  br i1 %i.kf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i8 0, ptr %i.it, align 8, !tbaa !314
  %i.kg = load ptr, ptr %i.jz, align 8, !tbaa !345
  %i.kh = load ptr, ptr %i.f, align 8, !tbaa !160
  %i.ki = call i32 %i.kg(ptr noundef nonnull %7, ptr noundef %i.kh, i64 noundef %i.kc) #18, !inline_history !269
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.2308.i = phi i8 [ 1, %bb.au ], [ %.1307.i, %bb.at ]
  %.0304.i = phi i1 [ false, %bb.au ], [ %i.in, %bb.at ]
  %.0301.i = phi i32 [ %i.ki, %bb.au ], [ %i.kd, %bb.at ] ; 2 uses
  %i.kj = load ptr, ptr %i.jh, align 8, !tbaa !328
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 104
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !329 ; 3 uses
  %.not.i380.i = icmp eq ptr %i.kl, null
  br i1 %.not.i380.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.km = load ptr, ptr %i.f, align 8, !tbaa !160
  store ptr %i.km, ptr %4, align 8, !tbaa !341
  %i.kn = trunc i64 %i.kc to i32
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.kn, ptr %i.ko, align 8, !tbaa !343
  %i.kp = load ptr, ptr %i.kl, align 8, !tbaa !333
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !346
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !339
  call void %i.kr(ptr noundef %i.kt, ptr noundef nonnull %4) #18, !inline_history !347
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %cff_free_glyph_data.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.ku = load ptr, ptr %i.q, align 8, !tbaa !14  ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 1392
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !190
  %i.kx = icmp eq ptr %i.kw, null
  br i1 %i.kx, label %bb.ay, label %cff_free_glyph_data.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 1336
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !187
  call void @FT_Stream_ReleaseFrame(ptr noundef %i.kz, ptr noundef nonnull %i.f) #18
  br label %cff_free_glyph_data.exit.i

cff_free_glyph_data.exit.i:                       ; preds = %bb.ay, %bb.ax, %bb.aw
  %.not354.i = icmp eq i32 %.0301.i, 0
  br i1 %.not354.i, label %bb.az, label %.thread407.i

bb.az:                                            ; preds = %cff_free_glyph_data.exit.i
  %i.la = load ptr, ptr %i.jh, align 8, !tbaa !328
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 104
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !329
  %.not355.i = icmp eq ptr %i.lc, null
  br i1 %.not355.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, i8 0, i64 16, i1 false)
  br label %bb.bd

bb.bb:                                            ; preds = %bb.az
  %i.le = getelementptr inbounds nuw i8, ptr %i.r, i64 1384
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !191 ; 2 uses
  %.not356.i = icmp eq ptr %i.lf, null
  br i1 %.not356.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lg = getelementptr inbounds nuw i8, ptr %i.r, i64 1392
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !190
  %i.li = zext i32 %.0297.i to i64
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.li
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !134
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lk
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 -1
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.lm, ptr %i.ln, align 8, !tbaa !348
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.kc, ptr %i.lo, align 8, !tbaa !349
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.lp = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !350
  call void %i.lq(ptr noundef nonnull %6) #18, !inline_history !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  %i.lr = load ptr, ptr %i.jh, align 8, !tbaa !328
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 104
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !329 ; 4 uses
  %.not358.i = icmp eq ptr %i.lt, null
  br i1 %.not358.i, label %.thread399.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !333
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !351
  %.not359.i = icmp eq ptr %i.lw, null
  br i1 %.not359.i, label %.thread399.i, label %bb.bf

.thread407.i:                                     ; preds = %cff_free_glyph_data.exit.i, %cff_get_glyph_data.exit.i, %bb.ap
  %.1302.i = phi i32 [ %i.jg, %bb.ap ], [ %.0.i379.i, %cff_get_glyph_data.exit.i ], [ %.0301.i, %cff_free_glyph_data.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %cff_slot_load.exit

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.lx = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !352
  store i64 %i.ly, ptr %10, align 8, !tbaa !353
  %i.lz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.lz, align 8, !tbaa !355
  %i.ma = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.mc = load <2 x i64>, ptr %i.ma, align 8, !tbaa !134
  store <2 x i64> %i.mc, ptr %i.mb, align 8, !tbaa !134
  %12 = load ptr, ptr %i.lt, align 8, !tbaa !333
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !351
  %i.md = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !339
  %i.mf = call i32 %14(ptr noundef %i.me, i32 noundef %.0297.i, i8 noundef zeroext 0, ptr noundef nonnull %10) #18, !inline_history !269 ; 2 uses
  %i.mg = load i64, ptr %10, align 8, !tbaa !353
  store i64 %i.mg, ptr %i.lx, align 8, !tbaa !352
  %i.mh = load <2 x i64>, ptr %i.mb, align 8, !tbaa !134
  store <2 x i64> %i.mh, ptr %i.ma, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.not360.i = icmp eq i32 %i.mf, 0
  br i1 %.not360.i, label %.thread399.i, label %cff_slot_load.exit

.thread399.i:                                     ; preds = %bb.bf, %bb.be, %bb.bd
  br i1 %.not351.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.thread399.i
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !356 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !352
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ml, ptr %i.mm, align 8, !tbaa !278
  %i.mn = getelementptr inbounds nuw i8, ptr %6, i64 1160
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !357
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.mo, ptr %i.mp, align 8, !tbaa !282
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mq, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !140
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mj, i64 48
  store i64 %.sroa.0.0.i, ptr %i.mr, align 8, !tbaa !134
  %.sroa.8.0..sroa_idx98.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 56
  store i64 %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx98.i, align 8, !tbaa !134
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mj, i64 12
  store i8 1, ptr %i.ms, align 4, !tbaa !358
  br label %cff_slot_load.exit

bb.bh:                                            ; preds = %.thread399.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.p, i64 438
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !359
  %.not361.i = icmp eq i16 %i.mv, 0
  br i1 %.not361.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store i16 0, ptr %i.h, align 2, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  store i16 0, ptr %i.i, align 2, !tbaa !60
  %i.mw = getelementptr inbounds nuw i8, ptr %i.p, i64 880
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !184
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 320
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !292
  call void %i.mz(ptr noundef nonnull %i.p, i8 noundef zeroext 0, i32 noundef %.0297.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #18, !inline_history !269
  %i.na = load i16, ptr %i.i, align 2, !tbaa !60
  %i.nb = zext i16 %i.na to i64
  %i.nc = load i16, ptr %i.h, align 2, !tbaa !60
  %i.nd = sext i16 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.nd, ptr %i.ne, align 8, !tbaa !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.nf = getelementptr inbounds nuw i8, ptr %6, i64 1160
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !357
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.sink448.i = phi i64 [ %i.ng, %bb.bj ], [ %i.nb, %bb.bi ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  store i64 %.sink448.i, ptr %i.nh, align 8, !tbaa !361
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sink448.i, ptr %i.ni, align 8, !tbaa !293
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !356
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 12
  store i8 0, ptr %i.nl, align 4, !tbaa !358
  %i.nm = getelementptr inbounds nuw i8, ptr %i.p, i64 496
  %i.nn = load i8, ptr %i.nm, align 8, !tbaa !294
  %.not362.i = icmp eq i8 %i.nn, 0
  br i1 %.not362.i, label %.thread412.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.no = getelementptr inbounds nuw i8, ptr %i.p, i64 542
  %i.np = load i16, ptr %i.no, align 2, !tbaa !295
  %.not364.i = icmp eq i16 %i.np, 0
  br i1 %.not364.i, label %.thread412.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  store i16 0, ptr %i.j, align 2, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  store i16 0, ptr %i.k, align 2, !tbaa !60
  %i.nq = getelementptr inbounds nuw i8, ptr %i.p, i64 880
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !184
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 320
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !292
  call void %i.nt(ptr noundef nonnull %i.p, i8 noundef zeroext 1, i32 noundef %.0297.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #18, !inline_history !269
  %i.nu = load i16, ptr %i.j, align 2, !tbaa !60
  %i.nv = sext i16 %i.nu to i64
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.nv, ptr %i.nw, align 8, !tbaa !362
  %i.nx = load i16, ptr %i.k, align 2, !tbaa !60
  %i.ny = zext i16 %i.nx to i64                   ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ny, ptr %i.nz, align 8, !tbaa !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  br label %bb.bp

.thread412.i:                                     ; preds = %bb.bl, %bb.bk
  %i.oa = getelementptr inbounds nuw i8, ptr %i.p, i64 616
  %i.ob = load i16, ptr %i.oa, align 8, !tbaa !297
  %.not365.i = icmp eq i16 %i.ob, -1
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br i1 %.not365.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.thread412.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.p, i64 706
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !298
  %i.of = sext i16 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.p, i64 708
  %i.oh = load i16, ptr %i.og, align 4, !tbaa !299
  %i.oi = sext i16 %i.oh to i64
  %i.oj = sub nsw i64 %i.of, %i.oi                ; 2 uses
  store i64 %i.oj, ptr %i.oc, align 8, !tbaa !363
  br label %bb.bp

bb.bo:                                            ; preds = %.thread412.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.p, i64 408
  %i.ol = load i16, ptr %i.ok, align 8, !tbaa !300
  %i.om = sext i16 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr %i.p, i64 410
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !301
  %i.op = sext i16 %i.oo to i64
  %i.oq = sub nsw i64 %i.om, %i.op                ; 2 uses
  store i64 %i.oq, ptr %i.oc, align 8, !tbaa !363
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.or = phi i64 [ %i.oj, %bb.bn ], [ %i.oq, %bb.bo ], [ %i.ny, %bb.bm ] ; 2 uses
  %.not363414.i = phi i1 [ true, %bb.bn ], [ true, %bb.bo ], [ false, %bb.bm ]
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.or, ptr %i.ot, align 8, !tbaa !296
  store i32 1869968492, ptr %i.iv, align 8, !tbaa !289
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 232
  br i1 %.not17, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !304
  %i.ox = icmp ult i16 %i.ow, 24
  %spec.select472.i = select i1 %i.ox, i32 260, i32 4
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.oy = phi i32 [ 4, %bb.bp ], [ %spec.select472.i, %bb.bq ]
  store i32 %i.oy, ptr %i.ou, align 8, !tbaa !364
  %i.oz = load i64, ptr %8, align 8, !tbaa !135
  %i.pa = icmp ne i64 %i.oz, 65536
  %i.pb = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.pc = load i64, ptr %i.pb, align 8
  %i.pd = icmp ne i64 %i.pc, 65536
  %or.cond.i = select i1 %i.pa, i1 true, i1 %i.pd
  %i.pe = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.pf = load i64, ptr %i.pe, align 8
  %i.pg = icmp ne i64 %i.pf, 0
  %or.cond7.i = select i1 %or.cond.i, i1 true, i1 %i.pg
  %i.ph = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.pi = load i64, ptr %i.ph, align 8
  %i.pj = icmp ne i64 %i.pi, 0
  %or.cond10.i = select i1 %or.cond7.i, i1 true, i1 %i.pj
  br i1 %or.cond10.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @FT_Outline_Transform(ptr noundef nonnull %i.ik, ptr noundef nonnull %8) #18
  %i.pk = load i64, ptr %i.nh, align 8, !tbaa !361
  %i.pl = load i64, ptr %8, align 8, !tbaa !135
  %sext419.i = shl i64 %i.pk, 32
  %i.pm = ashr exact i64 %sext419.i, 32
  %sext420.i = shl i64 %i.pl, 32
  %i.pn = ashr exact i64 %sext420.i, 32
  %i.po = mul nsw i64 %i.pn, %i.pm                ; 2 uses
  %i.pp = ashr i64 %i.po, 63
  %i.pq = add nsw i64 %i.po, 32768
  %i.pr = add nsw i64 %i.pq, %i.pp
  %i.ps = shl i64 %i.pr, 16
  %i.pt = ashr i64 %i.ps, 32
  store i64 %i.pt, ptr %i.nh, align 8, !tbaa !361
  %i.pu = load i64, ptr %i.os, align 8, !tbaa !363
  %i.pv = load i64, ptr %i.pb, align 8, !tbaa !131
  %sext422.i = shl i64 %i.pu, 32
  %i.pw = ashr exact i64 %sext422.i, 32
  %sext423.i = shl i64 %i.pv, 32
  %i.px = ashr exact i64 %sext423.i, 32
  %i.py = mul nsw i64 %i.px, %i.pw                ; 2 uses
  %i.pz = ashr i64 %i.py, 63
  %i.qa = add nsw i64 %i.py, 32768
  %i.qb = add nsw i64 %i.qa, %i.pz
  %i.qc = shl i64 %i.qb, 16
  %i.qd = ashr i64 %i.qc, 32                      ; 2 uses
end_hunk_0
