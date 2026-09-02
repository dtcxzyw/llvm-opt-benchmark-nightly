Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/identify?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN6LibRaw8identifyEv:bb.a
  br i1 %i.wy, label %bb.dv, label %bb.fo

bb.dv:                                            ; preds = %bb.du
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 274 ; 2 uses
  %i.xa = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.wz, i32 noundef 115) #20
  %.not356 = icmp eq ptr %i.xa, null
  br i1 %.not356, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.xb = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.wz, i32 noundef 83) #20
  %.not357 = icmp eq ptr %i.xb, null
  br i1 %.not357, label %bb.fo, label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.xc = load i16, ptr %i.u, align 2, !tbaa !125
  %i.xd = add i16 %i.xc, -16
  store i16 %i.xd, ptr %i.u, align 2, !tbaa !125
  br label %bb.fo

bb.dy:                                            ; preds = %bb.cy
  %i.xe = load i32, ptr %i.ag, align 4, !tbaa !79
  %i.xf = icmp ne i32 %i.xe, 8
  %i.xg = icmp ne i64 %spec.select420632635, 0
  %or.cond17 = or i1 %i.xg, %i.xf
  br i1 %or.cond17, label %bb.eo, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.xh = load i32, ptr %i.co, align 4, !tbaa !127
  %.not319 = icmp eq i32 %i.xh, 15
  br i1 %.not319, label %bb.eo, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.unpack321 = load i64, ptr %i.cl, align 8, !tbaa !119
  %.not324 = icmp eq i64 %.unpack321, 0
  br i1 %.not324, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i64 ptrtoint (ptr @_ZN6LibRaw22lossless_jpeg_load_rawEv to i64), ptr %i.cl, align 8, !tbaa !119
  store i64 0, ptr %.repack235, align 8, !tbaa !119
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.xi = load i16, ptr %i.r, align 2, !tbaa !123 ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.xn = insertelement <2 x i16> poison, i16 %i.xi, i64 0
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eh
  %indvars.iv569 = phi i64 [ 0, %bb.ec ], [ %indvars.iv.next570, %bb.eh ] ; 3 uses
  %.0178508 = phi i1 [ false, %bb.ec ], [ %.1179, %bb.eh ] ; 2 uses
  %i.xo = getelementptr inbounds nuw [22 x i8], ptr @_ZZN6LibRaw8identifyEvE5canon, i64 %indvars.iv569 ; 9 uses
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !85
  %i.xq = icmp eq i16 %i.xi, %i.xp
  br i1 %i.xq, label %bb.ee, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  %i.xr = load i16, ptr %i.l, align 8, !tbaa !124 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 2
  %i.xt = load i16, ptr %i.xs, align 2, !tbaa !85
  %i.xu = icmp eq i16 %i.xr, %i.xt
  br i1 %i.xu, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xo, i64 4
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.xx = load <2 x i16>, ptr %i.xv, align 2, !tbaa !85 ; 2 uses
  %i.xy = shufflevector <2 x i16> %i.xx, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.xy, ptr %i.t, align 8, !tbaa !85
  %i.xz = load <2 x i16>, ptr %i.xw, align 2, !tbaa !85
  %i.ya = add <2 x i16> %i.xx, %i.xz
  %i.yb = insertelement <2 x i16> %i.xn, i16 %i.xr, i64 1
  %i.yc = sub <2 x i16> %i.yb, %i.ya
  %i.yd = shufflevector <2 x i16> %i.yc, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.yd, ptr %i.v, align 4, !tbaa !85
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xo, i64 12
  %i.yf = load i16, ptr %i.ye, align 2, !tbaa !85
  %i.yg = zext i16 %i.yf to i32
  store i32 %i.yg, ptr %i.xj, align 8, !tbaa !81
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xo, i64 14
  %i.yi = load i16, ptr %i.yh, align 2, !tbaa !85
  %i.yj = zext i16 %i.yi to i32
  %i.yk = sub nsw i32 0, %i.yj
  store i32 %i.yk, ptr %i.xk, align 8, !tbaa !81
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xo, i64 16
  %i.ym = load i16, ptr %i.yl, align 2, !tbaa !85
  %i.yn = zext i16 %i.ym to i32
  store i32 %i.yn, ptr %i.xl, align 8, !tbaa !81
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xo, i64 18
  %i.yp = load i16, ptr %i.yo, align 2, !tbaa !85
  %i.yq = zext i16 %i.yp to i32
  %i.yr = sub nsw i32 0, %i.yq
  store i32 %i.yr, ptr %i.xm, align 8, !tbaa !81
  %i.ys = shl nuw nsw i64 1, %indvars.iv569
  %i.yt = and i64 %i.ys, 144114638284914687
  %.not327.not = icmp eq i64 %i.yt, 0
  br i1 %.not327.not, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xo, i64 20
  %i.yv = load i16, ptr %i.yu, align 2, !tbaa !85
  %i.yw = zext i16 %i.yv to i32
  %i.yx = mul i32 %i.yw, 16843009
  store i32 %i.yx, ptr %i.k, align 8, !tbaa !82
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.eg, %bb.ed, %bb.ee
  %.1179 = phi i1 [ %.0178508, %bb.ed ], [ %.0178508, %bb.ee ], [ true, %bb.eg ], [ true, %bb.ef ] ; 2 uses
  %indvars.iv.next570 = add nuw nsw i64 %indvars.iv569, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next570, 57
  br i1 %exitcond571.not, label %bb.ei, label %bb.ed, !llvm.loop !157

bb.ei:                                            ; preds = %bb.eh
  %i.yy = load i64, ptr %i.ae, align 8, !tbaa !87
  %i.yz = and i64 %i.yy, -131073
  %i.za = icmp eq i64 %i.yz, 40894464
  br i1 %i.za, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store i16 8, ptr %i.s, align 2, !tbaa !129
  store i16 16, ptr %i.t, align 8, !tbaa !128
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  br i1 %.1179, label %bb.eo, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.zc = load i32, ptr %i.zb, align 8, !tbaa !210
  %.not326 = icmp eq i32 %i.zc, 0
  br i1 %.not326, label %bb.eo, label %.preheader486

.preheader486:                                    ; preds = %bb.el
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.ze = load <4 x i32>, ptr %i.zd, align 8, !tbaa !81
  store <4 x i32> %i.ze, ptr %i.ce, align 8, !tbaa !81
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 136692
  store i32 0, ptr %i.zf, align 4, !tbaa !81
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 136688
  store i32 0, ptr %i.zg, align 8, !tbaa !81
  store i32 0, ptr %i.cv, align 8, !tbaa !95
  store i32 1, ptr %i.xk, align 8, !tbaa !81
  store i32 2, ptr %i.xj, align 8, !tbaa !81
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.zi = load i16, ptr %i.zh, align 8, !tbaa !211
  %i.zj = sext i16 %i.zi to i32
  %i.zk = zext i16 %i.xi to i32
  %i.zl = icmp eq i32 %i.zj, %i.zk
  br i1 %i.zl, label %bb.em, label %bb.eo

bb.em:                                            ; preds = %.preheader486
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 2018
  %i.zn = load i16, ptr %i.zm, align 2, !tbaa !212
  %i.zo = sext i16 %i.zn to i32
  %i.zp = load i16, ptr %i.l, align 8, !tbaa !124
  %i.zq = zext i16 %i.zp to i32
  %i.zr = icmp eq i32 %i.zo, %i.zq
  br i1 %i.zr, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 2060
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.zu = load <2 x i16>, ptr %i.zs, align 4, !tbaa !85
  %i.zv = add <2 x i16> %i.zu, splat (i16 1)
  %i.zw = and <2 x i16> %i.zv, splat (i16 -2)     ; 2 uses
  store <2 x i16> %i.zw, ptr %i.t, align 8, !tbaa !85
  %i.zx = load <2 x i16>, ptr %i.zt, align 8, !tbaa !85
  %i.zy = sub <2 x i16> %i.zx, %i.zw
  store <2 x i16> %i.zy, ptr %i.v, align 4, !tbaa !85
  br label %bb.eo

bb.eo:                                            ; preds = %bb.ek, %bb.el, %bb.en, %bb.em, %.preheader486, %bb.dz, %bb.dy
  call void @_ZN6LibRaw29identify_finetune_by_filesizeEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %spec.select420632635)
  %i.zz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(9) @.str.47) #20
  %.not328 = icmp eq i32 %i.zz, 0
  br i1 %.not328, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.aaa = call reassoc nsz arcp contract afn noundef float @_ZN6LibRaw10find_greenEiiii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 16, i32 noundef 16, i32 noundef 3840, i32 noundef 5120)
  %i.aab = fcmp reassoc nsz arcp contract afn olt float %i.aaa, 2.500000e+01
  br i1 %i.aab, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store i16 480, ptr %i.v, align 4, !tbaa !126
  store i32 0, ptr %i.k, align 8, !tbaa !82
  store i16 0, ptr %i.t, align 8, !tbaa !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.y, ptr noundef nonnull align 1 dereferenceable(5) @.str.48, i64 5, i1 false) #19
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep, %bb.eo
  call void @_ZN6LibRaw18GetNormalizedModelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  call void @_ZN6LibRaw21identify_finetune_dcrEPcxx(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a, i64 noundef %spec.select420632635, i64 noundef %i.fw)
  %.unpack330 = load i64, ptr %i.cl, align 8, !tbaa !119 ; 3 uses
  %.unpack332 = load i64, ptr %.repack235, align 8, !tbaa !119
  %.not333 = icmp eq i64 %.unpack330, 0
  br i1 %.not333, label %bb.fa, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aac = load i16, ptr %i.v, align 4, !tbaa !126 ; 2 uses
  %i.aad = icmp ult i16 %i.aac, 22
  br i1 %i.aad, label %bb.fa, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aae = load i16, ptr %i.u, align 2, !tbaa !125 ; 2 uses
  %i.aaf = icmp ult i16 %i.aae, 22
  br i1 %i.aaf, label %bb.fa, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aag = load i32, ptr %i.co, align 4, !tbaa !127
  %i.aah = icmp ugt i32 %i.aag, 16
  br i1 %i.aah, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.aai = icmp ne i64 %.unpack330, ptrtoint (ptr @_ZN6LibRaw20deflate_dng_load_rawEv to i64)
  %i.aaj = icmp ne i64 %.unpack332, 0
  %i.aak = icmp ne i64 %.unpack330, ptrtoint (ptr @_ZN6LibRaw28uncompressed_fp_dng_load_rawEv to i64)
  %i.aal = and i1 %i.aai, %i.aak
  %or.cond428 = or i1 %i.aal, %i.aaj
  br i1 %or.cond428, label %bb.fa, label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.aam = load i32, ptr %i.cw, align 8, !tbaa !132
  %i.aan = icmp ugt i32 %i.aam, 4
  br i1 %i.aan, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aao = load i32, ptr %i.dk, align 4, !tbaa !99
  %i.aap = add i32 %i.aao, -5
  %or.cond429 = icmp ult i32 %i.aap, -4
  br i1 %or.cond429, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aaq = zext i16 %i.aae to i32                 ; 2 uses
  %i.aar = load i16, ptr %i.s, align 2, !tbaa !129
  %3 = zext i16 %i.aar to i32
  %4 = add nuw nsw i32 %3, %i.aaq
  %i.aas = icmp samesign ugt i32 %4, 65535
  br i1 %i.aas, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aat = zext i16 %i.aac to i32                 ; 2 uses
  %i.aau = load i16, ptr %i.t, align 8, !tbaa !128
  %5 = zext i16 %i.aau to i32
  %6 = add nuw nsw i32 %5, %i.aat
  %i.aav = icmp samesign ugt i32 %6, 65535
  br i1 %i.aav, label %bb.fa, label %bb.fd

bb.fa:                                            ; preds = %bb.ev, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.et, %bb.es, %bb.er
  store i32 0, ptr %i.dd, align 8, !tbaa !121
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !213 ; 2 uses
  %.not340.a = icmp eq ptr %i.aax, null
  br i1 %.not340.a, label %bb.ir, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !214
  %i.aba = call noundef i32 %i.aax(ptr noundef %i.aaz, i32 noundef 2, i32 noundef 1, i32 noundef 2)
  %.not341 = icmp eq i32 %i.aba, 0
  br i1 %.not341, label %bb.ir, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.abb = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.abb, align 16, !tbaa !188
  call void @__cxa_throw(ptr nonnull %i.abb, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #21
  unreachable

bb.fd:                                            ; preds = %bb.ez
  %i.abc = load i8, ptr %i.y, align 4, !tbaa !80
  %.not334 = icmp eq i8 %i.abc, 0
  br i1 %.not334, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.abd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.aaq, i32 noundef %i.aat) #19 ; 0 uses
  %i.abe = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) %i.y) #19 ; 0 uses
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !134
  %i.abh = and i32 %i.abg, 256
  %.not335 = icmp eq i32 %i.abh, 0
  %i.abi = load i32, ptr %i.k, align 8, !tbaa !82
  %i.abj = icmp eq i32 %i.abi, -1                 ; 2 uses
  br i1 %.not335, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.abj, label %.thread461.sink.split, label %.thread461

bb.fh:                                            ; preds = %bb.ff
  br i1 %i.abj, label %bb.fi, label %.thread461

bb.fi:                                            ; preds = %bb.fh
  %i.abk = load i32, ptr %i.af, align 8, !tbaa !88
  %.not336 = icmp eq i32 %i.abk, 0
  br i1 %.not336, label %.thread461.sink.split, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.abl = load i32, ptr %i.cw, align 8, !tbaa !132
  %i.abm = icmp eq i32 %i.abl, 1
  br i1 %i.abm, label %bb.fk, label %.thread461.sink.split

bb.fk:                                            ; preds = %bb.fj
  store i32 1, ptr %i.dk, align 4, !tbaa !99
  br label %.thread461.sink.split

.thread461.sink.split:                            ; preds = %bb.fi, %bb.fj, %bb.fg, %bb.fk
  %.sink641 = phi i32 [ -1802201964, %bb.fg ], [ 0, %bb.fk ], [ -1802201964, %bb.fj ], [ -1802201964, %bb.fi ]
  store i32 %.sink641, ptr %i.k, align 8, !tbaa !82
  br label %.thread461

.thread461:                                       ; preds = %.thread461.sink.split, %bb.fg, %bb.fh
  %i.abn = load i64, ptr %i.ck, align 8, !tbaa !93 ; 2 uses
  %.not337 = icmp eq i64 %i.abn, 0
  br i1 %.not337, label %bb.fo, label %bb.fl

bb.fl:                                            ; preds = %.thread461
  %i.abo = load i16, ptr %i.ch, align 2, !tbaa !135
  %.not338 = icmp eq i16 %i.abo, 0
  br i1 %.not338, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  %i.abp = load ptr, ptr %i.ev, align 8, !tbaa !103 ; 2 uses
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !105
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 32
  %i.abs = load ptr, ptr %i.abr, align 8
  %i.abt = call noundef i32 %i.abs(ptr noundef nonnull align 8 dereferenceable(8) %i.abp, i64 noundef %i.abn, i32 noundef 0), !call_target !114 ; 0 uses
  %i.abu = call noundef i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %2, i32 noundef 1)
  %.not339 = icmp eq i32 %i.abu, 0
  br i1 %.not339, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.abv = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !216
  %i.abx = trunc i32 %i.abw to i16
  store i16 %i.abx, ptr %i.ci, align 4, !tbaa !136
  %i.aby = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abz = load i32, ptr %i.aby, align 8, !tbaa !217
  %i.aca = trunc i32 %i.abz to i16
  store i16 %i.aca, ptr %i.ch, align 2, !tbaa !135
  br label %bb.fo

bb.fo:                                            ; preds = %.thread458, %.thread461, %bb.fl, %bb.fn, %bb.fm, %bb.dt, %bb.ds, %bb.dx, %bb.dw, %bb.du
  %i.acb = load i32, ptr %i.cs, align 4, !tbaa !131
  %.not360 = icmp eq i32 %i.acb, 0
  br i1 %.not360, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @_ZN6LibRaw27identify_process_dng_fieldsEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.unpack362 = load i64, ptr %i.cl, align 8, !tbaa !119 ; 5 uses
  %.unpack364 = load i64, ptr %.repack235, align 8, !tbaa !119 ; 2 uses
  %.not365 = icmp eq i64 %.unpack362, 0
  br i1 %.not365, label %bb.fz, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.acc = load i16, ptr %i.v, align 4, !tbaa !126
  %i.acd = icmp ult i16 %i.acc, 22
  br i1 %i.acd, label %bb.fz, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ace = load i16, ptr %i.u, align 2, !tbaa !125
  %i.acf = icmp ult i16 %i.ace, 22
  br i1 %i.acf, label %bb.fz, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.acg = load i32, ptr %i.co, align 4, !tbaa !127 ; 3 uses
  %i.ach = icmp ugt i32 %i.acg, 16
  br i1 %i.ach, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.aci = icmp ne i64 %.unpack362, ptrtoint (ptr @_ZN6LibRaw20deflate_dng_load_rawEv to i64)
  %i.acj = icmp ne i64 %.unpack364, 0
  %i.ack = icmp ne i64 %.unpack362, ptrtoint (ptr @_ZN6LibRaw28uncompressed_fp_dng_load_rawEv to i64)
  %i.acl = and i1 %i.aci, %i.ack
  %or.cond431 = or i1 %i.acl, %i.acj
  br i1 %or.cond431, label %bb.fz, label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.acm = icmp eq i64 %.unpack362, ptrtoint (ptr @_ZN6LibRaw20deflate_dng_load_rawEv to i64)
  %i.acn = icmp eq i64 %.unpack364, 0
  %i.aco = icmp eq i64 %.unpack362, ptrtoint (ptr @_ZN6LibRaw28uncompressed_fp_dng_load_rawEv to i64)
  %i.acp = or i1 %i.acm, %i.aco
  %or.cond433 = and i1 %i.acp, %i.acn
  br i1 %or.cond433, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.acq = add i32 %i.acg, -16
  %or.cond434 = icmp ult i32 %i.acq, 17
  %i.acr = and i32 %i.acg, 7
  %.not370 = icmp eq i32 %i.acr, 0
  %or.cond435 = and i1 %or.cond434, %.not370
  br i1 %or.cond435, label %bb.fx, label %bb.fz

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.acs = load i32, ptr %i.cw, align 8, !tbaa !132
  %i.act = icmp ugt i32 %i.acs, 4
  br i1 %i.act, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.acu = load i32, ptr %i.dk, align 4, !tbaa !99 ; 8 uses
  %i.acv = add i32 %i.acu, -5
  %or.cond436 = icmp ult i32 %i.acv, -4
  br i1 %or.cond436, label %bb.fz, label %.lr.ph512

.lr.ph512:                                        ; preds = %bb.fy
  %wide.trip.count579 = zext nneg i32 %i.acu to i64 ; 4 uses
  %trip.count.minus.1 = add nsw i64 %wide.trip.count579, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.acw = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.masked.load = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.dg, <4 x i1> %i.acw, <4 x float> poison), !tbaa !90
  %i.acx = fcmp reassoc nsz arcp contract afn ole <4 x float> %wide.masked.load, splat (float 1.000000e-03)
  %i.acy = select <4 x i1> %i.acw, <4 x i1> %i.acx, <4 x i1> zeroinitializer
  %.fr = freeze <4 x i1> %i.acy
  %i.acz = bitcast <4 x i1> %.fr to i4
  %.not685.not = icmp eq i4 %i.acz, 0
  %.pre597.a = load float, ptr %i.dg, align 4, !tbaa !90 ; 3 uses
  br i1 %.not685.not, label %.lr.ph519.preheader, label %.critedge439

bb.fz:                                            ; preds = %bb.fu, %bb.fy, %bb.fx, %bb.fw, %bb.fs, %bb.fr, %bb.fq
  store i32 0, ptr %i.dd, align 8, !tbaa !121
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !213 ; 2 uses
  %.not417.a = icmp eq ptr %i.adb, null
  br i1 %.not417.a, label %bb.ir, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !214
  %i.ade = call noundef i32 %i.adb(ptr noundef %i.add, i32 noundef 2, i32 noundef 1, i32 noundef 2)
  %.not418 = icmp eq i32 %i.ade, 0
  br i1 %.not418, label %bb.ir, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.adf = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.adf, align 16, !tbaa !188
  call void @__cxa_throw(ptr nonnull %i.adf, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #21
  unreachable

.lr.ph519.preheader:                              ; preds = %.lr.ph512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.adg = load float, ptr %i.dg, align 4, !tbaa !90 ; 2 uses
end_hunk_0
