Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpegxl_parser?download=true
inline.NumInlined: 192
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@read_distribution_bundle:bb.a
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !13
  %i.xf = add i32 %i.xe, -1                       ; 2 uses
  store i32 %i.xf, ptr %i.xd, align 4, !tbaa !13
  %i.xg = sext i32 %i.xf to i64                   ; 2 uses
  %i.xh = getelementptr inbounds i8, ptr %i.h, i64 %i.xg
  store i8 %i.xb, ptr %i.xh, align 1, !tbaa !15
  %i.xi = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.xg
  store i16 17, ptr %i.xi, align 2, !tbaa !47
  %i.xj = load i8, ptr %i.mw, align 16, !tbaa !15 ; 2 uses
  %i.xk = sext i8 %i.xj to i64
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.xk ; 2 uses
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !13
  %i.xn = add i32 %i.xm, -1                       ; 2 uses
  store i32 %i.xn, ptr %i.xl, align 4, !tbaa !13
  %i.xo = sext i32 %i.xn to i64                   ; 2 uses
  %i.xp = getelementptr inbounds i8, ptr %i.h, i64 %i.xo
  store i8 %i.xj, ptr %i.xp, align 1, !tbaa !15
  %i.xq = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.xo
  store i16 16, ptr %i.xq, align 2, !tbaa !47
  %i.xr = load i8, ptr %i.mx, align 1, !tbaa !15  ; 2 uses
  %i.xs = sext i8 %i.xr to i64
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.xs ; 2 uses
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !13
  %i.xv = add i32 %i.xu, -1                       ; 2 uses
  store i32 %i.xv, ptr %i.xt, align 4, !tbaa !13
  %i.xw = sext i32 %i.xv to i64                   ; 2 uses
  %i.xx = getelementptr inbounds i8, ptr %i.h, i64 %i.xw
  store i8 %i.xr, ptr %i.xx, align 1, !tbaa !15
  %i.xy = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.xw
  store i16 15, ptr %i.xy, align 2, !tbaa !47
  %i.xz = load i8, ptr %i.my, align 2, !tbaa !15  ; 2 uses
  %i.ya = sext i8 %i.xz to i64
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ya ; 2 uses
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !13
  %i.yd = add i32 %i.yc, -1                       ; 2 uses
  store i32 %i.yd, ptr %i.yb, align 4, !tbaa !13
  %i.ye = sext i32 %i.yd to i64                   ; 2 uses
  %i.yf = getelementptr inbounds i8, ptr %i.h, i64 %i.ye
  store i8 %i.xz, ptr %i.yf, align 1, !tbaa !15
  %i.yg = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.ye
  store i16 14, ptr %i.yg, align 2, !tbaa !47
  %i.yh = load i8, ptr %i.mz, align 1, !tbaa !15  ; 2 uses
  %i.yi = sext i8 %i.yh to i64
  %i.yj = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.yi ; 2 uses
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !13
  %i.yl = add i32 %i.yk, -1                       ; 2 uses
  store i32 %i.yl, ptr %i.yj, align 4, !tbaa !13
  %i.ym = sext i32 %i.yl to i64                   ; 2 uses
  %i.yn = getelementptr inbounds i8, ptr %i.h, i64 %i.ym
  store i8 %i.yh, ptr %i.yn, align 1, !tbaa !15
  %i.yo = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.ym
  store i16 13, ptr %i.yo, align 2, !tbaa !47
  %i.yp = load i8, ptr %i.na, align 4, !tbaa !15  ; 2 uses
  %i.yq = sext i8 %i.yp to i64
  %i.yr = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.yq ; 2 uses
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !13
  %i.yt = add i32 %i.ys, -1                       ; 2 uses
  store i32 %i.yt, ptr %i.yr, align 4, !tbaa !13
  %i.yu = sext i32 %i.yt to i64                   ; 2 uses
  %i.yv = getelementptr inbounds i8, ptr %i.h, i64 %i.yu
  store i8 %i.yp, ptr %i.yv, align 1, !tbaa !15
  %i.yw = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.yu
  store i16 12, ptr %i.yw, align 2, !tbaa !47
  %i.yx = load i8, ptr %i.nb, align 1, !tbaa !15  ; 2 uses
  %i.yy = sext i8 %i.yx to i64
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.yy ; 2 uses
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !13
  %i.zb = add i32 %i.za, -1                       ; 2 uses
  store i32 %i.zb, ptr %i.yz, align 4, !tbaa !13
  %i.zc = sext i32 %i.zb to i64                   ; 2 uses
  %i.zd = getelementptr inbounds i8, ptr %i.h, i64 %i.zc
  store i8 %i.yx, ptr %i.zd, align 1, !tbaa !15
  %i.ze = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.zc
  store i16 11, ptr %i.ze, align 2, !tbaa !47
  %i.zf = load i8, ptr %i.nc, align 2, !tbaa !15  ; 2 uses
  %i.zg = sext i8 %i.zf to i64
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.zg ; 2 uses
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !13
  %i.zj = add i32 %i.zi, -1                       ; 2 uses
  store i32 %i.zj, ptr %i.zh, align 4, !tbaa !13
  %i.zk = sext i32 %i.zj to i64                   ; 2 uses
  %i.zl = getelementptr inbounds i8, ptr %i.h, i64 %i.zk
  store i8 %i.zf, ptr %i.zl, align 1, !tbaa !15
  %i.zm = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.zk
  store i16 10, ptr %i.zm, align 2, !tbaa !47
  %i.zn = load i8, ptr %i.nd, align 1, !tbaa !15  ; 2 uses
  %i.zo = sext i8 %i.zn to i64
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.zo ; 2 uses
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !13
  %i.zr = add i32 %i.zq, -1                       ; 2 uses
  store i32 %i.zr, ptr %i.zp, align 4, !tbaa !13
  %i.zs = sext i32 %i.zr to i64                   ; 2 uses
  %i.zt = getelementptr inbounds i8, ptr %i.h, i64 %i.zs
  store i8 %i.zn, ptr %i.zt, align 1, !tbaa !15
  %i.zu = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.zs
  store i16 9, ptr %i.zu, align 2, !tbaa !47
  %i.zv = load i8, ptr %i.ne, align 8, !tbaa !15  ; 2 uses
  %i.zw = sext i8 %i.zv to i64
  %i.zx = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.zw ; 2 uses
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !13
  %i.zz = add i32 %i.zy, -1                       ; 2 uses
  store i32 %i.zz, ptr %i.zx, align 4, !tbaa !13
  %i.aaa = sext i32 %i.zz to i64                  ; 2 uses
  %i.aab = getelementptr inbounds i8, ptr %i.h, i64 %i.aaa
  store i8 %i.zv, ptr %i.aab, align 1, !tbaa !15
  %i.aac = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.aaa
  store i16 8, ptr %i.aac, align 2, !tbaa !47
  %i.aad = load i8, ptr %i.nf, align 1, !tbaa !15 ; 2 uses
  %i.aae = sext i8 %i.aad to i64
  %i.aaf = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.aae ; 2 uses
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !13
  %i.aah = add i32 %i.aag, -1                     ; 2 uses
  store i32 %i.aah, ptr %i.aaf, align 4, !tbaa !13
  %i.aai = sext i32 %i.aah to i64                 ; 2 uses
  %i.aaj = getelementptr inbounds i8, ptr %i.h, i64 %i.aai
  store i8 %i.aad, ptr %i.aaj, align 1, !tbaa !15
  %i.aak = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.aai
  store i16 7, ptr %i.aak, align 2, !tbaa !47
  %i.aal = load i8, ptr %i.ng, align 2, !tbaa !15 ; 2 uses
  %i.aam = sext i8 %i.aal to i64
  %i.aan = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.aam ; 2 uses
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !13
  %i.aap = add i32 %i.aao, -1                     ; 2 uses
  store i32 %i.aap, ptr %i.aan, align 4, !tbaa !13
  %i.aaq = sext i32 %i.aap to i64                 ; 2 uses
  %i.aar = getelementptr inbounds i8, ptr %i.h, i64 %i.aaq
  store i8 %i.aal, ptr %i.aar, align 1, !tbaa !15
  %i.aas = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.aaq
  store i16 6, ptr %i.aas, align 2, !tbaa !47
  %i.aat = load i8, ptr %i.nh, align 1, !tbaa !15 ; 2 uses
  %i.aau = sext i8 %i.aat to i64
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.aau ; 2 uses
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !13
  %i.aax = add i32 %i.aaw, -1                     ; 2 uses
  store i32 %i.aax, ptr %i.aav, align 4, !tbaa !13
  %i.aay = sext i32 %i.aax to i64                 ; 2 uses
  %i.aaz = getelementptr inbounds i8, ptr %i.h, i64 %i.aay
  store i8 %i.aat, ptr %i.aaz, align 1, !tbaa !15
  %i.aba = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.aay
  store i16 5, ptr %i.aba, align 2, !tbaa !47
  %i.abb = load i8, ptr %i.ni, align 4, !tbaa !15 ; 2 uses
  %i.abc = sext i8 %i.abb to i64
  %i.abd = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.abc ; 2 uses
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !13
  %i.abf = add i32 %i.abe, -1                     ; 2 uses
  store i32 %i.abf, ptr %i.abd, align 4, !tbaa !13
  %i.abg = sext i32 %i.abf to i64                 ; 2 uses
  %i.abh = getelementptr inbounds i8, ptr %i.h, i64 %i.abg
  store i8 %i.abb, ptr %i.abh, align 1, !tbaa !15
  %i.abi = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.abg
  store i16 4, ptr %i.abi, align 2, !tbaa !47
  %i.abj = load i8, ptr %i.nj, align 1, !tbaa !15 ; 2 uses
  %i.abk = sext i8 %i.abj to i64
  %i.abl = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.abk ; 2 uses
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !13
  %i.abn = add i32 %i.abm, -1                     ; 2 uses
  store i32 %i.abn, ptr %i.abl, align 4, !tbaa !13
  %i.abo = sext i32 %i.abn to i64                 ; 2 uses
  %i.abp = getelementptr inbounds i8, ptr %i.h, i64 %i.abo
  store i8 %i.abj, ptr %i.abp, align 1, !tbaa !15
  %i.abq = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.abo
  store i16 3, ptr %i.abq, align 2, !tbaa !47
  %i.abr = load i8, ptr %i.nk, align 2, !tbaa !15 ; 2 uses
  %i.abs = sext i8 %i.abr to i64
  %i.abt = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.abs ; 2 uses
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !13
  %i.abv = add i32 %i.abu, -1                     ; 2 uses
  store i32 %i.abv, ptr %i.abt, align 4, !tbaa !13
  %i.abw = sext i32 %i.abv to i64                 ; 2 uses
  %i.abx = getelementptr inbounds i8, ptr %i.h, i64 %i.abw
  store i8 %i.abr, ptr %i.abx, align 1, !tbaa !15
  %i.aby = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.abw
  store i16 2, ptr %i.aby, align 2, !tbaa !47
  %i.abz = load i8, ptr %i.nl, align 1, !tbaa !15 ; 2 uses
  %i.aca = sext i8 %i.abz to i64
  %i.acb = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.aca ; 2 uses
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !13
  %i.acd = add i32 %i.acc, -1                     ; 2 uses
  store i32 %i.acd, ptr %i.acb, align 4, !tbaa !13
  %i.ace = sext i32 %i.acd to i64                 ; 2 uses
  %i.acf = getelementptr inbounds i8, ptr %i.h, i64 %i.ace
  store i8 %i.abz, ptr %i.acf, align 1, !tbaa !15
  %i.acg = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.ace
  store i16 1, ptr %i.acg, align 2, !tbaa !47
  %i.ach = load i8, ptr %i.g, align 16, !tbaa !15 ; 2 uses
  %i.aci = sext i8 %i.ach to i64
  %i.acj = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.aci
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !13
  %i.acl = add i32 %i.ack, -1
  %i.acm = sext i32 %i.acl to i64                 ; 2 uses
  %i.acn = getelementptr inbounds i8, ptr %i.h, i64 %i.acm
  store i8 %i.ach, ptr %i.acn, align 1, !tbaa !15
  %i.aco = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.acm
  store i16 0, ptr %i.aco, align 2, !tbaa !47
  %i.acp = load ptr, ptr %i.nm, align 8, !tbaa !28
  %i.acq = call i32 @ff_vlc_init_from_lengths(ptr noundef nonnull %5, i32 noundef 5, i32 noundef 18, ptr noundef nonnull %i.h, i32 noundef 1, ptr noundef nonnull %i.i, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 12, ptr noundef %i.acp) #10 ; 2 uses
  %i.acr = icmp slt i32 %i.acq, 0
  br i1 %i.acr, label %.loopexit.i, label %bb.bk

bb.bk:                                            ; preds = %.preheader206.preheader.i
  %i.acs = call noalias ptr @av_mallocz(i64 noundef 262148) #10 ; 10 uses
  store ptr %i.acs, ptr %i.k, align 8, !tbaa !12
  %.not173.i = icmp eq ptr %i.acs, null
  br i1 %.not173.i, label %.loopexit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 32768 ; 4 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acs, i64 65536 ; 4 uses
  %i.acv = getelementptr i8, ptr %i.acs, i64 131072 ; 16 uses
  %i.acw = load i32, ptr %i.pz, align 8, !tbaa !147 ; 12 uses
  %i.acx = icmp sgt i32 %i.acw, 0
  br i1 %i.acx, label %.lr.ph230.i, label %.thread203.i

.lr.ph230.i:                                      ; preds = %bb.bl
  %i.acy = load ptr, ptr %i.nn, align 8, !tbaa !149
  %i.acz = load ptr, ptr %0, align 8, !tbaa !18   ; 3 uses
  %i.ada = load i32, ptr %i.z, align 8, !tbaa !20 ; 3 uses
  %.promoted231.i = load i32, ptr %i.s, align 8, !tbaa !21
  br label %bb.bm

bb.bm:                                            ; preds = %.thread186.i, %.lr.ph230.i
  %i.adb = phi i32 [ %.promoted231.i, %.lr.ph230.i ], [ %i.afx, %.thread186.i ] ; 3 uses
  %.0143228.i = phi i32 [ 0, %.lr.ph230.i ], [ %i.afy, %.thread186.i ] ; 8 uses
  %.3227.i = phi i32 [ 0, %.lr.ph230.i ], [ %.5195.i, %.thread186.i ] ; 3 uses
  %.0157226.i = phi i32 [ 8, %.lr.ph230.i ], [ %.2159194.i, %.thread186.i ] ; 6 uses
  %.0160225.i = phi i32 [ 0, %.lr.ph230.i ], [ %.1161193.i, %.thread186.i ] ; 3 uses
  %.0162224.i = phi i32 [ 0, %.lr.ph230.i ], [ %.1163192.i, %.thread186.i ] ; 3 uses
  %i.adc = lshr i32 %i.adb, 3
  %i.add = zext nneg i32 %i.adc to i64
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.add
  %i.adf = load i32, ptr %i.ade, align 1, !tbaa !15
  %i.adg = and i32 %i.adb, 7
  %i.adh = lshr i32 %i.adf, %i.adg
  %i.adi = and i32 %i.adh, 31
  %i.adj = zext nneg i32 %i.adi to i64
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %i.adj ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 2
  %i.adm = load i16, ptr %i.adl, align 2, !tbaa !15
  %i.adn = sext i16 %i.adm to i32
  %i.ado = load i16, ptr %i.adk, align 2, !tbaa !15 ; 5 uses
  %i.adp = sext i16 %i.ado to i32                 ; 3 uses
  %i.adq = add i32 %i.adb, %i.adn
  %i.adr = call i32 @llvm.umin.i32(i32 %i.ada, i32 %i.adq) ; 10 uses
  store i32 %i.adr, ptr %i.s, align 8, !tbaa !21
  %i.ads = icmp slt i16 %i.ado, 0
  br i1 %i.ads, label %.loopexit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.val179.i = load i32, ptr %i.kk, align 4, !tbaa !19
  %i.adt = icmp slt i32 %.val179.i, %i.adr
  br i1 %i.adt, label %.loopexit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  switch i16 %i.ado, label %bb.br [
    i16 16, label %bb.bp
    i16 17, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.adu = lshr i32 %i.adr, 3
  %i.adv = zext nneg i32 %i.adu to i64
  %i.adw = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.adv
  %i.adx = load i32, ptr %i.adw, align 1, !tbaa !15
  %i.ady = and i32 %i.adr, 7
  %i.adz = lshr i32 %i.adx, %i.ady
  %i.aea = and i32 %i.adz, 3
  %i.aeb = add i32 %i.adr, 2
  %i.aec = call i32 @llvm.umin.i32(i32 %i.ada, i32 %i.aeb) ; 2 uses
  store i32 %i.aec, ptr %i.s, align 8, !tbaa !21
  %.not175.i = icmp eq i32 %.0162224.i, 0
  %reass.sub240.i = mul i32 %.0162224.i, 3
  %i.aed = add i32 %reass.sub240.i, -5
  %i.aee = select i1 %.not175.i, i32 3, i32 %i.aed
  %.0142.i = add i32 %i.aea, %i.aee
  %i.aef = sub nsw i32 %i.acw, %.0143228.i
  %i.aeg = call i32 @llvm.smin.i32(i32 %.0142.i, i32 %i.aef) ; 6 uses
  %i.aeh = icmp sgt i32 %i.aeg, 0
  br i1 %i.aeh, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.bp
  %i.aei = trunc i32 %.0157226.i to i8
  %i.aej = sext i32 %.0143228.i to i64
  %scevgep.i = getelementptr i8, ptr %i.acs, i64 %i.aej
  %i.aek = zext nneg i32 %i.aeg to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 %i.aei, i64 %i.aek, i1 false), !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.bp
  %i.ael = lshr i32 32768, %.0157226.i
  %i.aem = mul nsw i32 %i.aeg, %i.ael
  %i.aen = add i32 %.0143228.i, -1
  %i.aeo = add i32 %i.aen, %i.aeg
  %i.aep = add nsw i32 %i.aeg, %.0162224.i
  %i.aeq = zext nneg i32 %.0157226.i to i64
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %i.aeq ; 2 uses
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !13
  %i.aet = add i32 %i.aes, %i.aeg
  store i32 %i.aet, ptr %i.aer, align 4, !tbaa !13
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.aeu = lshr i32 %i.adr, 3
  %i.aev = zext nneg i32 %i.aeu to i64
  %i.aew = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.aev
  %i.aex = load i32, ptr %i.aew, align 1, !tbaa !15
  %i.aey = and i32 %i.adr, 7
  %i.aez = lshr i32 %i.aex, %i.aey
  %i.afa = and i32 %i.aez, 7
  %i.afb = add i32 %i.adr, 3
  %i.afc = call i32 @llvm.umin.i32(i32 %i.ada, i32 %i.afb) ; 2 uses
  store i32 %i.afc, ptr %i.s, align 8, !tbaa !21
  %i.afd = icmp sgt i32 %.0160225.i, 0
  %reass.sub.i = mul i32 %.0160225.i, 7
  %i.afe = add i32 %reass.sub.i, -13
  %i.aff = select i1 %i.afd, i32 %i.afe, i32 3
  %.0140.i = add i32 %i.afa, %i.aff
  %i.afg = sub nsw i32 %i.acw, %.0143228.i
  %i.afh = call i32 @llvm.smin.i32(i32 %.0140.i, i32 %i.afg) ; 3 uses
  %i.afi = add i32 %.0143228.i, -1
  %i.afj = add i32 %i.afi, %i.afh
  %i.afk = add nsw i32 %i.afh, %.0160225.i
  %i.afl = load i32, ptr %i.acv, align 4, !tbaa !13
  %i.afm = add i32 %i.afh, %i.afl
  store i32 %i.afm, ptr %i.acv, align 4, !tbaa !13
  br label %.thread186.i

bb.br:                                            ; preds = %bb.bo
  %i.afn = trunc i16 %i.ado to i8
  %i.afo = sext i32 %.0143228.i to i64
  %i.afp = getelementptr inbounds i8, ptr %i.acs, i64 %i.afo
  store i8 %i.afn, ptr %i.afp, align 1, !tbaa !15
  %.not174.i = icmp eq i16 %i.ado, 0
  %i.afq = lshr i32 32768, %i.adp
  %i.afr = zext nneg i32 %i.adp to i64
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %i.afr ; 2 uses
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !13
  %i.afu = add i32 %i.aft, 1
  store i32 %i.afu, ptr %i.afs, align 4, !tbaa !13
  br i1 %.not174.i, label %.thread186.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %._crit_edge.i
  %i.afv = phi i32 [ %i.aec, %._crit_edge.i ], [ %i.adr, %bb.br ]
  %.1163.i = phi i32 [ %i.aep, %._crit_edge.i ], [ 0, %bb.br ]
  %.2159.i = phi i32 [ %.0157226.i, %._crit_edge.i ], [ %i.adp, %bb.br ]
  %.pn.i = phi i32 [ %i.aem, %._crit_edge.i ], [ %i.afq, %bb.br ]
  %.1.i159 = phi i32 [ %i.aeo, %._crit_edge.i ], [ %.0143228.i, %bb.br ] ; 2 uses
  %.5.i = add nsw i32 %.pn.i, %.3227.i            ; 3 uses
  %i.afw = icmp sgt i32 %.5.i, 32767
  br i1 %i.afw, label %bb.bt, label %.thread186.i

.thread186.i:                                     ; preds = %bb.bs, %bb.br, %bb.bq
  %i.afx = phi i32 [ %i.afv, %bb.bs ], [ %i.afc, %bb.bq ], [ %i.adr, %bb.br ]
  %.1196.i = phi i32 [ %.1.i159, %bb.bs ], [ %i.afj, %bb.bq ], [ %.0143228.i, %bb.br ]
  %.5195.i = phi i32 [ %.5.i, %bb.bs ], [ %.3227.i, %bb.bq ], [ %.3227.i, %bb.br ]
  %.2159194.i = phi i32 [ %.2159.i, %bb.bs ], [ %.0157226.i, %bb.bq ], [ %.0157226.i, %bb.br ]
  %.1161193.i = phi i32 [ 0, %bb.bs ], [ %i.afk, %bb.bq ], [ 0, %bb.br ]
  %.1163192.i = phi i32 [ %.1163.i, %bb.bs ], [ 0, %bb.bq ], [ 0, %bb.br ]
  %i.afy = add nsw i32 %.1196.i, 1                ; 2 uses
  %i.afz = icmp slt i32 %i.afy, %i.acw
  br i1 %i.afz, label %bb.bm, label %.thread203.i, !llvm.loop !126

bb.bt:                                            ; preds = %bb.bs
  %i.aga = xor i32 %.1.i159, -1
  %i.agb = add i32 %i.acw, %i.aga
  %i.agc = load i32, ptr %i.acv, align 4, !tbaa !13
  %i.agd = add i32 %i.agb, %i.agc
  store i32 %i.agd, ptr %i.acv, align 4, !tbaa !13
  %i.age = icmp eq i32 %.5.i, 32768
  br i1 %i.age, label %bb.bu, label %.thread203.i

.thread203.i:                                     ; preds = %.thread186.i, %bb.bt, %bb.bl
  %i.agf = load i32, ptr %i.acv, align 4, !tbaa !13
  %i.agg = add nsw i32 %i.acw, -1
  %i.agh = icmp ult i32 %i.agf, %i.agg
  br i1 %i.agh, label %.loopexit.i, label %bb.bu

bb.bu:                                            ; preds = %.thread203.i, %bb.bt
  %.not177232.i = icmp slt i32 %i.acw, 1
  br i1 %.not177232.i, label %._crit_edge238.i, label %.lr.ph235.preheader.i

.lr.ph235.preheader.i:                            ; preds = %bb.bu
  %load_initial = load i32, ptr %i.acv, align 4   ; 2 uses
  %i.agi = zext nneg i32 %i.acw to i64            ; 2 uses
  %xtraiter725 = and i64 %i.agi, 3                ; 3 uses
  %i.agj = icmp ult i32 %i.acw, 4
  br i1 %i.agj, label %.lr.ph235.i.epil.preheader, label %.lr.ph235.preheader.i.new

.lr.ph235.preheader.i.new:                        ; preds = %.lr.ph235.preheader.i
  %unroll_iter728 = and i64 %i.agi, 2147483644
  br label %.lr.ph235.i

.lr.ph237.preheader.i.unr-lcssa:                  ; preds = %.lr.ph235.i
  %lcmp.mod726.not = icmp eq i64 %xtraiter725, 0
  br i1 %lcmp.mod726.not, label %.lr.ph237.preheader.i, label %.lr.ph235.i.epil.preheader

.lr.ph235.i.epil.preheader:                       ; preds = %.lr.ph237.preheader.i.unr-lcssa, %.lr.ph235.preheader.i
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.lr.ph235.preheader.i ], [ %i.ahb, %.lr.ph237.preheader.i.unr-lcssa ]
  %indvars.iv260.i.epil.init = phi i64 [ 1, %.lr.ph235.preheader.i ], [ %indvars.iv.next261.i.3, %.lr.ph237.preheader.i.unr-lcssa ]
  %lcmp.mod727 = icmp ne i64 %xtraiter725, 0
  call void @llvm.assume(i1 %lcmp.mod727)
  br label %.lr.ph235.i.epil

.lr.ph235.i.epil:                                 ; preds = %.lr.ph235.i.epil, %.lr.ph235.i.epil.preheader
  %store_forwarded.epil = phi i32 [ %store_forwarded.epil.init, %.lr.ph235.i.epil.preheader ], [ %i.agm, %.lr.ph235.i.epil ]
  %indvars.iv260.i.epil = phi i64 [ %indvars.iv260.i.epil.init, %.lr.ph235.i.epil.preheader ], [ %indvars.iv.next261.i.epil, %.lr.ph235.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph235.i.epil.preheader ], [ %epil.iter.next, %.lr.ph235.i.epil ]
  %i.agk = getelementptr [4 x i8], ptr %i.acv, i64 %indvars.iv260.i.epil ; 2 uses
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !13
  %i.agm = add i32 %i.agl, %store_forwarded.epil  ; 2 uses
  store i32 %i.agm, ptr %i.agk, align 4, !tbaa !13
  %indvars.iv.next261.i.epil = add nuw nsw i64 %indvars.iv260.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter725
  br i1 %epil.iter.cmp.not, label %.lr.ph237.preheader.i, label %.lr.ph235.i.epil, !llvm.loop !127

.lr.ph237.preheader.i:                            ; preds = %.lr.ph235.i.epil, %.lr.ph237.preheader.i.unr-lcssa
  %7 = zext nneg i32 %i.acw to i64                ; 3 uses
  %xtraiter730 = and i64 %7, 1
  %lcmp.mod731.not = icmp eq i64 %xtraiter730, 0
  br i1 %lcmp.mod731.not, label %.lr.ph237.i.prol.loopexit, label %.lr.ph237.preheader.i.a

.lr.ph237.preheader.i.a:                          ; preds = %.lr.ph237.preheader.i
  %indvars.iv.next265.i.prol = add nsw i64 %7, -1 ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.acs, i64 %indvars.iv.next265.i.prol ; 2 uses
  %9 = load i8, ptr %8, align 1, !tbaa !15
  %10 = sext i8 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %10 ; 2 uses
  %12 = load i32, ptr %11, align 4, !tbaa !13
  %13 = add i32 %12, -1                           ; 2 uses
  store i32 %13, ptr %11, align 4, !tbaa !13
  %14 = load i8, ptr %8, align 1, !tbaa !15
  %15 = sext i32 %13 to i64                       ; 2 uses
  %16 = getelementptr inbounds i8, ptr %i.act, i64 %15
  store i8 %14, ptr %16, align 1, !tbaa !15
  %17 = trunc i64 %indvars.iv.next265.i.prol to i16
  %18 = getelementptr inbounds [2 x i8], ptr %i.acu, i64 %15
  store i16 %17, ptr %18, align 2, !tbaa !47
  br label %.lr.ph237.i.prol.loopexit

.lr.ph237.i.prol.loopexit:                        ; preds = %.lr.ph237.preheader.i.a, %.lr.ph237.preheader.i
  %indvars.iv264.i.unr = phi i64 [ %7, %.lr.ph237.preheader.i ], [ %indvars.iv.next265.i.prol, %.lr.ph237.preheader.i.a ]
  %19 = icmp eq i32 %i.acw, 1
  br i1 %19, label %._crit_edge238.i, label %.lr.ph237.i

.lr.ph235.i:                                      ; preds = %.lr.ph235.i, %.lr.ph235.preheader.i.new
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph235.preheader.i.new ], [ %i.ahb, %.lr.ph235.i ]
  %indvars.iv260.i = phi i64 [ 1, %.lr.ph235.preheader.i.new ], [ %indvars.iv.next261.i.3, %.lr.ph235.i ] ; 5 uses
  %niter729 = phi i64 [ 0, %.lr.ph235.preheader.i.new ], [ %niter729.next.3, %.lr.ph235.i ]
  %i.agn = getelementptr [4 x i8], ptr %i.acv, i64 %indvars.iv260.i ; 2 uses
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !13
  %i.agp = add i32 %i.ago, %store_forwarded       ; 2 uses
  store i32 %i.agp, ptr %i.agn, align 4, !tbaa !13
  %i.agq = getelementptr [4 x i8], ptr %i.acv, i64 %indvars.iv260.i
  %i.agr = getelementptr i8, ptr %i.agq, i64 4    ; 2 uses
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !13
  %i.agt = add i32 %i.ags, %i.agp                 ; 2 uses
  store i32 %i.agt, ptr %i.agr, align 4, !tbaa !13
  %i.agu = getelementptr [4 x i8], ptr %i.acv, i64 %indvars.iv260.i
  %i.agv = getelementptr i8, ptr %i.agu, i64 8    ; 2 uses
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !13
  %i.agx = add i32 %i.agw, %i.agt                 ; 2 uses
  store i32 %i.agx, ptr %i.agv, align 4, !tbaa !13
  %i.agy = getelementptr [4 x i8], ptr %i.acv, i64 %indvars.iv260.i
  %i.agz = getelementptr i8, ptr %i.agy, i64 12   ; 2 uses
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !13
  %i.ahb = add i32 %i.aha, %i.agx                 ; 3 uses
  store i32 %i.ahb, ptr %i.agz, align 4, !tbaa !13
  %indvars.iv.next261.i.3 = add nuw nsw i64 %indvars.iv260.i, 4 ; 2 uses
  %niter729.next.3 = add nuw i64 %niter729, 4     ; 2 uses
  %niter729.ncmp.3 = icmp eq i64 %niter729.next.3, %unroll_iter728
  br i1 %niter729.ncmp.3, label %.lr.ph237.preheader.i.unr-lcssa, label %.lr.ph235.i, !llvm.loop !128

._crit_edge238.i:                                 ; preds = %.lr.ph237.i.prol.loopexit, %.lr.ph237.i, %bb.bu
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  %i.ahd = load ptr, ptr %i.nm, align 8, !tbaa !28
  %i.ahe = call i32 @ff_vlc_init_from_lengths(ptr noundef nonnull %i.ahc, i32 noundef 15, i32 noundef %i.acw, ptr noundef nonnull %i.act, i32 noundef 1, ptr noundef nonnull %i.acu, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 12, ptr noundef %i.ahd) #10
  br label %.loopexit.i

.lr.ph237.i:                                      ; preds = %.lr.ph237.i.prol.loopexit, %.lr.ph237.i
  %indvars.iv264.i = phi i64 [ %indvars.iv.next265.i.a, %.lr.ph237.i ], [ %indvars.iv264.i.unr, %.lr.ph237.i.prol.loopexit ] ; 3 uses
  %indvars.iv.next265.i = add nsw i64 %indvars.iv264.i, -1 ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.acs, i64 %indvars.iv.next265.i ; 2 uses
  %21 = load i8, ptr %20, align 1, !tbaa !15
  %22 = sext i8 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %22 ; 2 uses
  %24 = load i32, ptr %23, align 4, !tbaa !13
  %25 = add i32 %24, -1                           ; 2 uses
  store i32 %25, ptr %23, align 4, !tbaa !13
  %26 = load i8, ptr %20, align 1, !tbaa !15
  %27 = sext i32 %25 to i64                       ; 2 uses
  %28 = getelementptr inbounds i8, ptr %i.act, i64 %27
  store i8 %26, ptr %28, align 1, !tbaa !15
  %29 = trunc i64 %indvars.iv.next265.i to i16
  %30 = getelementptr inbounds [2 x i8], ptr %i.acu, i64 %27
  store i16 %29, ptr %30, align 2, !tbaa !47
  %indvars.iv.next265.i.a = add nsw i64 %indvars.iv264.i, -2 ; 3 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.acs, i64 %indvars.iv.next265.i.a ; 2 uses
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !15
  %i.ahh = sext i8 %i.ahg to i64
  %i.ahi = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %i.ahh ; 2 uses
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !13
  %i.ahk = add i32 %i.ahj, -1                     ; 2 uses
  store i32 %i.ahk, ptr %i.ahi, align 4, !tbaa !13
  %i.ahl = load i8, ptr %i.ahf, align 1, !tbaa !15
  %i.ahm = sext i32 %i.ahk to i64                 ; 2 uses
  %i.ahn = getelementptr inbounds i8, ptr %i.act, i64 %i.ahm
  store i8 %i.ahl, ptr %i.ahn, align 1, !tbaa !15
  %i.aho = trunc i64 %indvars.iv.next265.i.a to i16
  %i.ahp = getelementptr inbounds [2 x i8], ptr %i.acu, i64 %i.ahm
  store i16 %i.aho, ptr %i.ahp, align 2, !tbaa !47
  %31 = icmp sgt i64 %indvars.iv264.i, 2
  br i1 %31, label %.lr.ph237.i, label %._crit_edge238.i, !llvm.loop !129

.loopexit.i:                                      ; preds = %bb.bg, %bb.bn, %bb.bm, %._crit_edge238.i, %.thread203.i, %bb.bk, %.preheader206.preheader.i, %.loopexit207.i
  %.2.i = phi i32 [ -1094995529, %.thread203.i ], [ %i.acq, %.preheader206.preheader.i ], [ -12, %bb.bk ], [ %i.ahe, %._crit_edge238.i ], [ -1397118274, %bb.bn ], [ -1094995529, %.loopexit207.i ], [ -1094995529, %bb.bm ], [ -1094995529, %bb.bg ]
  call void @av_freep(ptr noundef nonnull %i.k) #10
  call void @ff_vlc_free(ptr noundef nonnull %5) #10
  br label %read_vlc_prefix.exit

read_vlc_prefix.exit:                             ; preds = %read_simple_vlc_prefix.exit.i, %.loopexit.i
  %.0.i158 = phi i32 [ %.2.i, %.loopexit.i ], [ %.0.i.i, %read_simple_vlc_prefix.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  %i.ahq = icmp slt i32 %.0.i158, 0
  br i1 %i.ahq, label %read_dist_clustering.exit.thread, label %read_vlc_prefix.exit._crit_edge

read_vlc_prefix.exit._crit_edge:                  ; preds = %read_vlc_prefix.exit
  %.val141.pre = load i32, ptr %i.s, align 8, !tbaa !21
  br label %bb.bv

bb.bv:                                            ; preds = %read_vlc_prefix.exit._crit_edge, %read_vlc_prefix.exit.thread
  %.val141 = phi i32 [ %.val141.pre, %read_vlc_prefix.exit._crit_edge ], [ %.val141365, %read_vlc_prefix.exit.thread ] ; 2 uses
  %.val142 = load i32, ptr %i.kk, align 4, !tbaa !19
  %i.ahr = icmp slt i32 %.val142, %.val141
  br i1 %i.ahr, label %read_dist_clustering.exit.thread, label %bb.ar

bb.bw:                                            ; preds = %select.unfold227
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 2 uses
  %i.ahs = load i32, ptr %i.km, align 8, !tbaa !32 ; 3 uses
  %i.aht = sext i32 %i.ahs to i64
  %.not130 = icmp slt i64 %indvars.iv.next353, %i.aht
  br i1 %.not130, label %.lr.ph291, label %.preheader, !llvm.loop !130

.lr.ph291:                                        ; preds = %.lr.ph291.preheader, %bb.bw
  %i.ahu = phi i32 [ %.promoted280, %.lr.ph291.preheader ], [ %.val, %bb.bw ] ; 4 uses
  %indvars.iv352 = phi i64 [ 0, %.lr.ph291.preheader ], [ %indvars.iv.next353, %bb.bw ] ; 2 uses
  %i.ahv = getelementptr inbounds nuw [2640 x i8], ptr %.pre367, i64 %indvars.iv352 ; 9 uses
  %i.ahw = load i32, ptr %i.lp, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(258) %i.c, i8 0, i64 258, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(258) %i.d, i8 0, i64 258, i1 false)
  %i.ahx = shl nuw i32 1, %i.ahw                  ; 3 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahv, i64 2632 ; 3 uses
  store i32 -1, ptr %i.ahy, align 8, !tbaa !151
  %i.ahz = lshr i32 %i.ahu, 3
  %i.aia = zext nneg i32 %i.ahz to i64
  %i.aib = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.aia
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !15
  %i.aid = load i32, ptr %i.z, align 8, !tbaa !20 ; 24 uses
  %i.aie = icmp slt i32 %i.ahu, %i.aid
  %i.aif = zext i1 %i.aie to i32
  %spec.select.i.i161 = add i32 %i.ahu, %i.aif    ; 5 uses
  %i.aig = zext i8 %i.aic to i32
  %i.aih = and i32 %i.ahu, 7
  store i32 %spec.select.i.i161, ptr %i.s, align 8, !tbaa !21
  %i.aii = shl nuw nsw i32 1, %i.aih
  %i.aij = and i32 %i.aii, %i.aig
  %.not.i162 = icmp eq i32 %i.aij, 0
  %i.aik = lshr i32 %spec.select.i.i161, 3
  %i.ail = zext nneg i32 %i.aik to i64
  %i.aim = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.ail
  %i.ain = load i8, ptr %i.aim, align 1, !tbaa !15
  %i.aio = icmp slt i32 %spec.select.i.i161, %i.aid
  %i.aip = zext i1 %i.aio to i32
  %spec.select.i200.i = add i32 %spec.select.i.i161, %i.aip ; 5 uses
  %i.aiq = zext i8 %i.ain to i32
  %i.air = and i32 %spec.select.i.i161, 7
  store i32 %spec.select.i200.i, ptr %i.s, align 8, !tbaa !21
  %i.ais = shl nuw nsw i32 1, %i.air
  %i.ait = and i32 %i.ais, %i.aiq
  %.not154.i = icmp eq i32 %i.ait, 0              ; 2 uses
  %i.aiu = lshr i32 %spec.select.i200.i, 3
  %i.aiv = zext nneg i32 %i.aiu to i64
  %i.aiw = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.aiv
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !15
  %i.aiy = icmp slt i32 %spec.select.i200.i, %i.aid
  %i.aiz = zext i1 %i.aiy to i32
  %spec.select.i202.i = add i32 %spec.select.i200.i, %i.aiz ; 16 uses
  %i.aja = zext i8 %i.aix to i32
  %i.ajb = and i32 %spec.select.i200.i, 7
  store i32 %spec.select.i202.i, ptr %i.s, align 8, !tbaa !21
  %i.ajc = shl nuw nsw i32 1, %i.ajb
  %i.ajd = and i32 %i.ajc, %i.aja
  %.not155.i = icmp eq i32 %i.ajd, 0              ; 4 uses
  br i1 %.not.i162, label %bb.ck, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph291
  br i1 %.not154.i, label %bb.cg, label %bb.by

bb.by:                                            ; preds = %bb.bx
  br i1 %.not155.i, label %jxl_u8.exit195.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.aje = lshr i32 %spec.select.i202.i, 3
  %i.ajf = zext nneg i32 %i.aje to i64
  %i.ajg = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.ajf
  %i.ajh = load i32, ptr %i.ajg, align 1, !tbaa !15
  %i.aji = and i32 %spec.select.i202.i, 7
  %i.ajj = lshr i32 %i.ajh, %i.aji
  %i.ajk = and i32 %i.ajj, 7                      ; 4 uses
  %i.ajl = add i32 %spec.select.i202.i, 3
  %i.ajm = call i32 @llvm.umin.i32(i32 %i.aid, i32 %i.ajl) ; 5 uses
  store i32 %i.ajm, ptr %i.s, align 8, !tbaa !21
  %.not.i.i192.i = icmp eq i32 %i.ajk, 0
  br i1 %.not.i.i192.i, label %get_bitsz.exit.i193.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ajn = lshr i32 %i.ajm, 3
  %i.ajo = zext nneg i32 %i.ajn to i64
  %i.ajp = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.ajo
  %i.ajq = load i32, ptr %i.ajp, align 1, !tbaa !15
  %i.ajr = and i32 %i.ajm, 7
  %i.ajs = lshr i32 %i.ajq, %i.ajr
  %i.ajt = sub nuw nsw i32 32, %i.ajk
  %i.aju = lshr i32 -1, %i.ajt
  %i.ajv = and i32 %i.ajs, %i.aju
  %i.ajw = add i32 %i.ajk, %i.ajm
  %i.ajx = call i32 @llvm.umin.i32(i32 %i.aid, i32 %i.ajw) ; 2 uses
  store i32 %i.ajx, ptr %i.s, align 8, !tbaa !21
  br label %get_bitsz.exit.i193.i

get_bitsz.exit.i193.i:                            ; preds = %bb.ca, %bb.bz
  %i.ajy = phi i32 [ %i.ajx, %bb.ca ], [ %i.ajm, %bb.bz ]
  %i.ajz = phi i32 [ %i.ajv, %bb.ca ], [ 0, %bb.bz ]
  %i.aka = shl nuw nsw i32 1, %i.ajk
  %i.akb = or i32 %i.ajz, %i.aka
  %i.akc = trunc nuw i32 %i.akb to i8
  br label %jxl_u8.exit195.i

jxl_u8.exit195.i:                                 ; preds = %get_bitsz.exit.i193.i, %bb.by
  %i.akd = phi i32 [ %i.ajy, %get_bitsz.exit.i193.i ], [ %spec.select.i202.i, %bb.by ] ; 4 uses
  %.0.i194.i = phi i8 [ %i.akc, %get_bitsz.exit.i193.i ], [ 0, %bb.by ] ; 3 uses
  %i.ake = lshr i32 %i.akd, 3
  %i.akf = zext nneg i32 %i.ake to i64
  %i.akg = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.akf
  %i.akh = load i8, ptr %i.akg, align 1, !tbaa !15
  %i.aki = icmp slt i32 %i.akd, %i.aid
  %i.akj = zext i1 %i.aki to i32
  %spec.select.i198.i = add i32 %i.akd, %i.akj    ; 5 uses
  %i.akk = zext i8 %i.akh to i32
  %i.akl = and i32 %i.akd, 7
  store i32 %spec.select.i198.i, ptr %i.s, align 8, !tbaa !21
  %i.akm = shl nuw nsw i32 1, %i.akl
  %i.akn = and i32 %i.akm, %i.akk
  %.not.i186.i = icmp eq i32 %i.akn, 0
  br i1 %.not.i186.i, label %jxl_u8.exit190.i, label %bb.cb

bb.cb:                                            ; preds = %jxl_u8.exit195.i
  %i.ako = lshr i32 %spec.select.i198.i, 3
  %i.akp = zext nneg i32 %i.ako to i64
  %i.akq = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.akp
  %i.akr = load i32, ptr %i.akq, align 1, !tbaa !15
  %i.aks = and i32 %spec.select.i198.i, 7
  %i.akt = lshr i32 %i.akr, %i.aks
  %i.aku = and i32 %i.akt, 7                      ; 4 uses
  %i.akv = add i32 %spec.select.i198.i, 3
  %i.akw = call i32 @llvm.umin.i32(i32 %i.aid, i32 %i.akv) ; 5 uses
  store i32 %i.akw, ptr %i.s, align 8, !tbaa !21
  %.not.i.i187.i = icmp eq i32 %i.aku, 0
  br i1 %.not.i.i187.i, label %get_bitsz.exit.i188.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.akx = lshr i32 %i.akw, 3
  %i.aky = zext nneg i32 %i.akx to i64
  %i.akz = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.aky
  %i.ala = load i32, ptr %i.akz, align 1, !tbaa !15
  %i.alb = and i32 %i.akw, 7
  %i.alc = lshr i32 %i.ala, %i.alb
  %i.ald = sub nuw nsw i32 32, %i.aku
  %i.ale = lshr i32 -1, %i.ald
  %i.alf = and i32 %i.alc, %i.ale
  %i.alg = add i32 %i.aku, %i.akw
  %i.alh = call i32 @llvm.umin.i32(i32 %i.aid, i32 %i.alg) ; 2 uses
  store i32 %i.alh, ptr %i.s, align 8, !tbaa !21
  br label %get_bitsz.exit.i188.i

get_bitsz.exit.i188.i:                            ; preds = %bb.cc, %bb.cb
  %i.ali = phi i32 [ %i.alh, %bb.cc ], [ %i.akw, %bb.cb ]
  %i.alj = phi i32 [ %i.alf, %bb.cc ], [ 0, %bb.cb ]
  %i.alk = shl nuw nsw i32 1, %i.aku
  %i.all = or i32 %i.alj, %i.alk
  %i.alm = trunc nuw i32 %i.all to i8
  br label %jxl_u8.exit190.i

jxl_u8.exit190.i:                                 ; preds = %get_bitsz.exit.i188.i, %jxl_u8.exit195.i
  %i.aln = phi i32 [ %i.ali, %get_bitsz.exit.i188.i ], [ %spec.select.i198.i, %jxl_u8.exit195.i ] ; 3 uses
  %.0.i189.i = phi i8 [ %i.alm, %get_bitsz.exit.i188.i ], [ 0, %jxl_u8.exit195.i ] ; 4 uses
  %i.alo = zext i8 %.0.i189.i to i32
  %.not164.i = icmp eq i8 %.0.i194.i, %.0.i189.i
  br i1 %.not164.i, label %populate_distribution.exit.thread, label %bb.cd

bb.cd:                                            ; preds = %jxl_u8.exit190.i
  %i.alp = lshr i32 %i.aln, 3
  %i.alq = zext nneg i32 %i.alp to i64
  %i.alr = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.alq
  %i.als = load i32, ptr %i.alr, align 1, !tbaa !15
  %i.alt = and i32 %i.aln, 7
end_hunk_0
