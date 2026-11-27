Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/makernotes?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6LibRaw15parse_makernoteExi:bb.a
  br i1 %.not200, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.iv = load ptr, ptr %i.y, align 8, !tbaa !75  ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !77
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = call noundef i32 %i.iy(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, i64 noundef -4, i32 noundef 1), !call_target !92 ; 0 uses
  br label %bb.ax

bb.ar:                                            ; preds = %bb.ap
  %i.ja = load i32, ptr %i.a, align 1
  %i.jb = icmp ne i32 %i.ja, 861162819
  %i.jc = zext i1 %i.jb to i32
  %.not202 = icmp eq i32 %i.jc, 0
  br i1 %.not202, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.je = call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.jd)
  store i16 %i.je, ptr %i.co, align 8, !tbaa !88
  %i.jf = load ptr, ptr %i.y, align 8, !tbaa !75  ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !77
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = call noundef i32 %i.ji(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, i64 noundef 2, i32 noundef 1), !call_target !92 ; 0 uses
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 384224
  %i.jl = load i16, ptr %i.jk, align 8, !tbaa !133
  %.not203 = icmp eq i16 %i.jl, 0
  br i1 %.not203, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jm = call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
  store i16 %i.jm, ptr %i.co, align 8, !tbaa !88
  %i.jn = load ptr, ptr %i.y, align 8, !tbaa !75  ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !77
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = call noundef i32 %i.jq(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, i64 noundef -2, i32 noundef 1), !call_target !92 ; 0 uses
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.js = load ptr, ptr %i.y, align 8, !tbaa !75  ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !77
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = call noundef i32 %i.jv(ptr noundef nonnull align 8 dereferenceable(8) %i.js, i64 noundef -10, i32 noundef 1), !call_target !92 ; 0 uses
  %i.jx = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(8) @.str.7, i64 noundef 7) #11
  %.not204 = icmp eq i32 %i.jx, 0
  br i1 %.not204, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jy = load ptr, ptr %i.y, align 8, !tbaa !75  ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !77
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = call noundef i64 %i.kb(ptr noundef nonnull align 8 dereferenceable(8) %i.jy), !call_target !85
  br label %bb.ax

bb.ax:                                            ; preds = %bb.an, %bb.as, %bb.av, %bb.aw, %bb.au, %bb.aq, %bb.aj, %bb.ab, %bb.ac
  %.1 = phi i64 [ %1, %bb.au ], [ %1, %bb.av ], [ %i.kc, %bb.aw ], [ %1, %bb.as ], [ %1, %bb.aq ], [ %1, %bb.an ], [ %.0128, %bb.aj ], [ %i.fs, %bb.ac ], [ %i.fs, %bb.ab ] ; 14 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 384236 ; 3 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !109
  %.not205 = icmp eq i32 %i.ke, 0
  br i1 %.not205, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.kf = call i32 @strncasecmp(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.42, i64 noundef 7) #11
  %.not206 = icmp eq i32 %i.kf, 0
  br i1 %.not206, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kg = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(8) @.str.22, i64 noundef 7) #11
  %.not207 = icmp eq i32 %i.kg, 0
  br i1 %.not207, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kh = call i32 @strncasecmp(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.23, i64 noundef 6) #11
  %.not208 = icmp eq i32 %i.kh, 0
  br i1 %.not208, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.kj = call i32 @strncasecmp(ptr noundef nonnull %i.ki, ptr noundef nonnull @.str.24, i64 noundef 7) #11
  %.not209 = icmp eq i32 %i.kj, 0
  br i1 %.not209, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.az, %bb.ay
  store i32 1, ptr %i.kd, align 4, !tbaa !109
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ax
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 384244 ; 4 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !108
  %.not210 = icmp eq i32 %i.kl, 0
  br i1 %.not210, label %bb.be, label %bb.bn

bb.be:                                            ; preds = %bb.bd
  %i.km = call i32 @strncasecmp(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.8, i64 noundef 4) #11
  %.not211 = icmp eq i32 %i.km, 0
  br i1 %.not211, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kn = call i32 @strncasecmp(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.15, i64 noundef 6) #11
  %.not212 = icmp eq i32 %i.kn, 0
  br i1 %.not212, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ko = call i32 @strncasecmp(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.16, i64 noundef 7) #11
  %.not213 = icmp eq i32 %i.ko, 0
  br i1 %.not213, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kp = call i32 @strncasecmp(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.17, i64 noundef 10) #11
  %.not214 = icmp eq i32 %i.kp, 0
  br i1 %.not214, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 4 uses
  %i.kr = call i32 @strncasecmp(ptr noundef nonnull %i.kq, ptr noundef nonnull @.str.18, i64 noundef 7) #11
  %.not215 = icmp eq i32 %i.kr, 0
  br i1 %.not215, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ks = call i32 @strncasecmp(ptr noundef nonnull %i.kq, ptr noundef nonnull @.str.19, i64 noundef 5) #11
  %.not216 = icmp eq i32 %i.ks, 0
  br i1 %.not216, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kt = call i32 @strncasecmp(ptr noundef nonnull %i.kq, ptr noundef nonnull @.str.20, i64 noundef 5) #11
  %.not217 = icmp eq i32 %i.kt, 0
  br i1 %.not217, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ku = call i32 @strncasecmp(ptr noundef nonnull %i.kq, ptr noundef nonnull @.str.21, i64 noundef 2) #11
  %.not218 = icmp eq i32 %i.ku, 0
  br i1 %.not218, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bg, %bb.bf, %bb.be
  store i32 1, ptr %i.kk, align 4, !tbaa !108
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bh, %bb.bd
  %i.kv = call noundef ptr @_ZN6LibRaw10strcasestrEPcPKc(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.43)
  %.not219 = icmp eq ptr %i.kv, null
  br i1 %.not219, label %bb.bu, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kw = call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
  %i.kx = icmp ugt i16 %i.kw, 1
  br i1 %i.kx, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.ky = call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
  %i.kz = icmp ult i16 %i.ky, 128
  br i1 %i.kz, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.lb = call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.la)
  %.not220 = icmp eq i16 %i.lb, 0
  br i1 %.not220, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lc = call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.la)
  %i.ld = icmp ult i16 %i.lc, 13
  br i1 %i.ld, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.le = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.lf = call noundef i32 @_ZN6LibRaw5sget4EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.le)
  %i.lg = icmp ult i32 %i.lf, 256
  br i1 %i.lg, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 4018
  store i16 1, ptr %i.lh, align 2, !tbaa !134
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %i.li = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.lj = icmp ugt i16 %i.li, 1000
  br i1 %i.lj, label %bb.fd, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lk = load i16, ptr %i.co, align 8, !tbaa !88
  %.not221262 = icmp eq i16 %i.li, 0
  br i1 %.not221262, label %.loopexit253, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bv
  %i.ll = zext nneg i16 %i.li to i32
  %i.lm = shl i32 %2, 16
  %i.ln = shl nsw i64 %i.cv, 1
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 768288 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 768304
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 4018
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 153100
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 153112
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 153104
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 3794
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 3792
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 5 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 269 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 270
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 381696 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 2552
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 2676
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 381632 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 193496 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 381768
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 153252 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 192712
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 153260
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 2720
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 2744
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 2752
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 2760
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 153256
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 153260
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph, %.thread322
  %.in = phi i32 [ %i.ll, %.lr.ph ], [ %i.nc, %.thread322 ]
  %.0129265 = phi i32 [ 0, %.lr.ph ], [ %.3, %.thread322 ] ; 24 uses
  %.0131264 = phi i32 [ 0, %.lr.ph ], [ %.3134, %.thread322 ] ; 22 uses
  %.0135263 = phi ptr [ null, %.lr.ph ], [ %.4, %.thread322 ] ; 24 uses
  %i.nc = add nsw i32 %.in, -1                    ; 2 uses
  store i16 %i.lk, ptr %i.co, align 8, !tbaa !88
  call void @_ZN6LibRaw8tiff_getExPjS0_S0_Px(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %.1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  %i.nd = load i32, ptr %i.c, align 4, !tbaa !87
  %i.ne = or i32 %i.nd, %i.lm
  store i32 %i.ne, ptr %i.c, align 4, !tbaa !87
  %i.nf = load ptr, ptr %i.y, align 8, !tbaa !75  ; 2 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !77
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 40
  %i.ni = load ptr, ptr %i.nh, align 8
  %i.nj = call noundef i64 %i.ni(ptr noundef nonnull align 8 dereferenceable(8) %i.nf), !call_target !85 ; 2 uses
  %i.nk = load i32, ptr %i.e, align 4, !tbaa !87  ; 3 uses
  %i.nl = icmp ugt i32 %i.nk, 104857600
  br i1 %i.nl, label %.thread322, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nm = icmp samesign ugt i32 %i.nk, 8
  %i.nn = zext nneg i32 %i.nk to i64
  %i.no = add nsw i64 %i.nj, %i.nn
  %i.np = icmp sgt i64 %i.no, %i.ln
  %or.cond273 = select i1 %i.nm, i1 %i.np, i1 false
  br i1 %or.cond273, label %.thread322, label %bb.by, !llvm.loop !126

bb.by:                                            ; preds = %bb.bx
  %i.nq = load ptr, ptr %i.lo, align 8, !tbaa !74
  %.not222 = icmp eq ptr %i.nq, null
  br i1 %.not222, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nr = load ptr, ptr %i.y, align 8, !tbaa !75  ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !77
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 40
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = call noundef i64 %i.nu(ptr noundef nonnull align 8 dereferenceable(8) %i.nr), !call_target !85
  %i.nw = load ptr, ptr %i.lo, align 8, !tbaa !74
  %i.nx = load ptr, ptr %i.lp, align 8, !tbaa !86
  %i.ny = load i32, ptr %i.c, align 4, !tbaa !87
  %i.nz = load i32, ptr %i.d, align 4, !tbaa !87
  %i.oa = load i32, ptr %i.e, align 4, !tbaa !87
  %i.ob = load i16, ptr %i.co, align 8, !tbaa !88
  %i.oc = sext i16 %i.ob to i32
  %i.od = load ptr, ptr %i.y, align 8, !tbaa !75
  call void %i.nw(ptr noundef %i.nx, i32 noundef %i.ny, i32 noundef %i.nz, i32 noundef %i.oa, i32 noundef %i.oc, ptr noundef %i.od, i64 noundef %.1)
  %i.oe = load ptr, ptr %i.y, align 8, !tbaa !75  ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !77
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.oh = load ptr, ptr %i.og, align 8
  %i.oi = call noundef i32 %i.oh(ptr noundef nonnull align 8 dereferenceable(8) %i.oe, i64 noundef %i.nv, i32 noundef 0), !call_target !92 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.oj = load i16, ptr %i.lq, align 2, !tbaa !134
  %.not223 = icmp eq i16 %i.oj, 0
  br i1 %.not223, label %bb.ch, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ok = load i32, ptr %i.c, align 4, !tbaa !87  ; 2 uses
  %i.ol = icmp eq i32 %i.ok, 65280
  %i.om = load i32, ptr %i.d, align 4
  %i.on = icmp eq i32 %i.om, 4
  %or.cond16 = select i1 %i.ol, i1 %i.on, i1 false
  %i.oo = load i32, ptr %i.e, align 4
  %i.op = icmp eq i32 %i.oo, 1
  %or.cond18 = select i1 %or.cond16, i1 %i.op, i1 false
  br i1 %or.cond18, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.oq = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.or = zext i32 %i.oq to i64                   ; 2 uses
  %i.os = icmp sgt i64 %i.cv, %i.or
  %i.ot = icmp ne i32 %i.oq, 0
  %or.cond20 = and i1 %i.ot, %i.os
  br i1 %or.cond20, label %bb.cd, label %bb.do

bb.cd:                                            ; preds = %bb.cc
  %i.ou = load ptr, ptr %i.y, align 8, !tbaa !75  ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !77
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %i.ox = load ptr, ptr %i.ow, align 8
  %i.oy = call noundef i32 %i.ox(ptr noundef nonnull align 8 dereferenceable(8) %i.ou, i64 noundef %i.or, i32 noundef 0), !call_target !92 ; 0 uses
  %i.oz = load i32, ptr %i.c, align 4, !tbaa !87
  call void @_ZN6LibRaw15parse_makernoteExi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %.1, i32 noundef %i.oz)
  br label %bb.do

bb.ce:                                            ; preds = %bb.cb
  switch i32 %i.ok, label %bb.do [
    i32 -16713461, label %bb.cf
    i32 -16713460, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.pa = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.pa, ptr %i.lt, align 8, !tbaa !135
  br label %bb.do

bb.cg:                                            ; preds = %bb.ce
  %i.pb = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %5 = zext i16 %i.pb to i32                      ; 2 uses
  store i32 %5, ptr %3, align 8, !tbaa !87
  %6 = zext i16 %i.pb to i64                      ; 2 uses
  %7 = shl nuw nsw i64 %6, 32
  %8 = or disjoint i64 %7, %6
  store i64 %8, ptr %4, align 8
  store i32 %5, ptr %i.lr, align 4, !tbaa !87
  store i16 %i.pb, ptr %i.ls, align 2, !tbaa !136
  br label %bb.do

bb.ch:                                            ; preds = %bb.ca
  %i.pc = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(6) @.str.30, i64 noundef 5) #11
  %.not224 = icmp eq i32 %i.pc, 0
  br i1 %.not224, label %bb.ci, label %bb.cs

bb.ci:                                            ; preds = %bb.ch
  %i.pd = load i32, ptr %i.c, align 4, !tbaa !87  ; 3 uses
  %i.pe = icmp eq i32 %i.pd, 13
  %i.pf = load i32, ptr %i.e, align 4             ; 4 uses
  %i.pg = icmp ult i32 %i.pf, 256000
  %or.cond22 = select i1 %i.pe, i1 %i.pg, i1 false
  br i1 %or.cond22, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  %i.ph = load i32, ptr %i.d, align 4, !tbaa !87
  %i.pi = icmp eq i32 %i.ph, 4
  br i1 %i.pi, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pj = call i32 @llvm.umax.i32(i32 %i.pf, i32 16)
  %i.pk = add nuw nsw i32 %i.pj, 1
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.pl = shl nuw nsw i32 %i.pf, 2
  %i.pm = call i32 @llvm.umax.i32(i32 %i.pl, i32 16)
  %i.pn = or disjoint i32 %i.pm, 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.sink333 = phi i32 [ %i.pn, %bb.cl ], [ %i.pk, %bb.ck ]
  %.sink327 = phi i64 [ 4, %bb.cl ], [ 1, %bb.ck ]
  %i.po = zext nneg i32 %.sink333 to i64
  %i.pp = call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.po, i64 noundef 1) ; 2 uses
  %i.pq = load ptr, ptr %i.y, align 8, !tbaa !75  ; 2 uses
  %i.pr = load i32, ptr %i.e, align 4, !tbaa !87
  %i.ps = zext i32 %i.pr to i64
  %i.pt = load ptr, ptr %i.pq, align 8, !tbaa !77
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.pv = load ptr, ptr %i.pu, align 8
  %i.pw = call noundef i32 %i.pv(ptr noundef nonnull align 8 dereferenceable(8) %i.pq, ptr noundef %i.pp, i64 noundef %i.ps, i64 noundef %.sink327) ; 0 uses
  %i.px = load i32, ptr %i.e, align 4, !tbaa !87
  %i.py = load i32, ptr %i.d, align 4, !tbaa !87
  br label %bb.do

bb.cn:                                            ; preds = %bb.ci
  %i.pz = icmp eq i32 %i.pd, 16
  br i1 %i.pz, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.qa = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.qb = zext i32 %i.qa to i64                   ; 2 uses
  store i64 %i.qb, ptr %i.ma, align 8, !tbaa !110
  call void @_ZN6LibRaw20setCanonBodyFeaturesEy(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.qb)
  %.not225 = icmp eq i32 %.0131264, 0
  br i1 %.not225, label %bb.do, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qc = load i64, ptr %i.ma, align 8, !tbaa !110
  call void @_ZN6LibRaw22processCanonCameraInfoEyPhjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.qc, ptr noundef %.0135263, i32 noundef %.0131264, i32 noundef %.0129265, i32 noundef 0)
  %.not226 = icmp eq ptr %.0135263, null
  br i1 %.not226, label %bb.do, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %.0135263)
  br label %bb.do

bb.cr:                                            ; preds = %bb.cn
  %i.qd = load i32, ptr %i.d, align 4, !tbaa !87
  call void @_ZN6LibRaw20parseCanonMakernotesEjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.pd, i32 noundef %i.qd, i32 noundef %i.pf, i32 noundef 0)
  br label %bb.do

bb.cs:                                            ; preds = %bb.ch
  %i.qe = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(5) @.str.31, i64 noundef 4) #11
  %.not227 = icmp eq i32 %i.qe, 0
  br i1 %.not227, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.qf = load i32, ptr %i.c, align 4, !tbaa !87
  %i.qg = load i32, ptr %i.d, align 4, !tbaa !87
  %i.qh = load i32, ptr %i.e, align 4, !tbaa !87
  call void @_ZN6LibRaw19parseFujiMakernotesEjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.qf, i32 noundef %i.qg, i32 noundef %i.qh, i32 noundef 0)
  br label %bb.do

bb.cu:                                            ; preds = %bb.cs
  %i.qi = call i32 @strncasecmp(ptr noundef nonnull %i.lu, ptr noundef nonnull @.str.44, i64 noundef 14) #11
  %.not228 = icmp eq i32 %i.qi, 0
  br i1 %.not228, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qj = call i32 @strncasecmp(ptr noundef nonnull %i.lu, ptr noundef nonnull @.str.45, i64 noundef 14) #11
  %.not229 = icmp eq i32 %i.qj, 0
  br i1 %.not229, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qk = call i32 @strncasecmp(ptr noundef nonnull %i.lu, ptr noundef nonnull @.str.46, i64 noundef 14) #11
  %.not230 = icmp eq i32 %i.qk, 0
  br i1 %.not230, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.ql = load i32, ptr %i.c, align 4, !tbaa !87
  switch i32 %i.ql, label %bb.do [
    i32 69, label %bb.cy
    i32 70, label %bb.cz
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.qm = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.qm, ptr %i.lz, align 8, !tbaa !137
  br label %bb.do

bb.cz:                                            ; preds = %bb.cx
  %i.qn = load i32, ptr %i.d, align 4, !tbaa !87
  %i.qo = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.qn)
  store double %i.qo, ptr %i.ly, align 8, !tbaa !138
  br label %bb.do

bb.da:                                            ; preds = %bb.cw
  %i.qp = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #11
  %.not231 = icmp eq i32 %i.qp, 0
  br i1 %.not231, label %sub_0, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qq = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(6) @.str.47, i64 noundef 5) #11
  %.not232 = icmp eq i32 %i.qq, 0
  br i1 %.not232, label %sub_0, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qr = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.lu, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #11
  %.not233 = icmp eq i32 %i.qr, 0
  br i1 %.not233, label %sub_0, label %bb.df

sub_0:                                            ; preds = %bb.da, %bb.db, %bb.dc
  %i.qs = load i8, ptr %i.lu, align 4
  %.not274 = icmp eq i8 %i.qs, 71
  br i1 %.not274, label %.tail, label %.tail249.thread

.tail:                                            ; preds = %sub_0
  %i.qt = load i8, ptr %i.lw, align 1
  %i.qu = icmp eq i8 %i.qt, 82
  br i1 %i.qu, label %.tail._crit_edge, label %sub_1251

.tail._crit_edge:                                 ; preds = %.tail
  %.pre = load i32, ptr %i.e, align 4, !tbaa !87
  br label %bb.dd

sub_1251:                                         ; preds = %.tail
  %i.qv = load i8, ptr %i.lw, align 1
  %.not276 = icmp eq i8 %i.qv, 88
  br i1 %.not276, label %.tail249, label %.tail249.thread

.tail249.thread:                                  ; preds = %sub_1251, %sub_0
  %.pre285310 = load i32, ptr %i.e, align 4, !tbaa !87
  br label %bb.de

.tail249:                                         ; preds = %sub_1251
  %i.qw = load i8, ptr %i.lx, align 2
  %i.qx = icmp eq i8 %i.qw, 82
  %.pre285 = load i32, ptr %i.e, align 4, !tbaa !87 ; 2 uses
  br i1 %i.qx, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.tail._crit_edge, %.tail249
  %i.qy = phi i32 [ %.pre, %.tail._crit_edge ], [ %.pre285, %.tail249 ]
  %i.qz = load i32, ptr %i.c, align 4, !tbaa !87
  %i.ra = load i32, ptr %i.d, align 4, !tbaa !87
  call void @_ZN6LibRaw20parseRicohMakernotesExjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %.1, i32 noundef %i.qz, i32 noundef %i.ra, i32 noundef %i.qy, i32 noundef 1)
  br label %bb.do

bb.de:                                            ; preds = %.tail249.thread, %.tail249
  %.pre285311 = phi i32 [ %.pre285310, %.tail249.thread ], [ %.pre285, %.tail249 ]
  %i.rb = load i32, ptr %i.c, align 4, !tbaa !87
  %i.rc = load i32, ptr %i.d, align 4, !tbaa !87
  call void @_ZN6LibRaw21parsePentaxMakernotesExjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %.1, i32 noundef %i.rb, i32 noundef %i.rc, i32 noundef %.pre285311, i32 noundef 0)
  br label %bb.do

bb.df:                                            ; preds = %bb.dc
  %i.rd = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(8) @.str.7, i64 noundef 7) #11
  %.not236 = icmp eq i32 %i.rd, 0
  br i1 %.not236, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.re = load i32, ptr %i.lv, align 4, !tbaa !139
  %.not237 = icmp eq i32 %i.re, 0
  %i.rf = load i32, ptr %i.c, align 4, !tbaa !87  ; 2 uses
  %i.rg = load i32, ptr %i.d, align 4, !tbaa !87  ; 2 uses
  %i.rh = load i32, ptr %i.e, align 4, !tbaa !87  ; 2 uses
  br i1 %.not237, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN6LibRaw22parseSamsungMakernotesExjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %.1, i32 noundef %i.rf, i32 noundef %i.rg, i32 noundef %i.rh, i32 noundef 0)
  br label %bb.do

bb.di:                                            ; preds = %bb.dg
  call void @_ZN6LibRaw21parsePentaxMakernotesExjjjj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %.1, i32 noundef %i.rf, i32 noundef %i.rg, i32 noundef %i.rh, i32 noundef 1)
  br label %bb.do

bb.dj:                                            ; preds = %bb.df
end_hunk_0
