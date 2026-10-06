Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/lemon?download=true
inline.NumInlined: 160
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 27
begin_hunk_0_@Parse:bb.a
  store i32 14, ptr %i.g, align 8
  br label %parseonetoken.exit

bb.do:                                            ; preds = %.critedge13
  %i.xg = load i8, ptr %i.sv, align 1             ; 3 uses
  %i.xh = icmp eq i8 %i.xg, 46
  br i1 %i.xh, label %bb.dp, label %bb.dx

bb.dp:                                            ; preds = %bb.do
  %i.xi = load i32, ptr %i.oe, align 8            ; 3 uses
  %i.xj = sext i32 %i.xi to i64                   ; 2 uses
  %i.xk = shl nsw i64 %i.xj, 4
  %i.xl = add nsw i64 %i.xk, 136
  %i.xm = call noalias ptr @calloc(i64 noundef %i.xl, i64 noundef 1) #40 ; 20 uses
  %i.xn = icmp eq ptr %i.xm, null
  br i1 %i.xn, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.xo = load ptr, ptr %1, align 8
  %i.xp = load i32, ptr %i.nt, align 8
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.xo, i32 noundef %i.xp, ptr noundef nonnull @.str.291)
  %i.xq = load i32, ptr %i.f, align 4
  %i.xr = add i32 %i.xq, 1
  store i32 %i.xr, ptr %i.f, align 4
  br label %bb.dw

bb.dr:                                            ; preds = %bb.dp
  %i.xs = load i32, ptr %i.nt, align 8
  %i.xt = getelementptr i8, ptr %i.xm, i64 20
  store i32 %i.xs, ptr %i.xt, align 4
  %i.xu = getelementptr i8, ptr %i.xm, i64 136    ; 2 uses
  %i.xv = getelementptr i8, ptr %i.xm, i64 32     ; 3 uses
  store ptr %i.xu, ptr %i.xv, align 8
  %i.xw = getelementptr [8 x i8], ptr %i.xu, i64 %i.xj
  %i.xx = getelementptr i8, ptr %i.xm, i64 40     ; 3 uses
  store ptr %i.xw, ptr %i.xx, align 8
  %i.xy = icmp sgt i32 %i.xi, 0
  br i1 %i.xy, label %.lr.ph.i217, label %._crit_edge.i

.lr.ph.i217:                                      ; preds = %bb.dr, %bb.dt
  %indvars.iv.i218 = phi i64 [ %indvars.iv.next.i219, %bb.dt ], [ 0, %bb.dr ] ; 7 uses
  %i.xz = getelementptr [8 x i8], ptr %i.of, i64 %indvars.iv.i218
  %i.ya = load ptr, ptr %i.xz, align 8
  %i.yb = load ptr, ptr %i.xv, align 8
  %i.yc = getelementptr [8 x i8], ptr %i.yb, i64 %indvars.iv.i218
  store ptr %i.ya, ptr %i.yc, align 8
  %i.yd = getelementptr [8 x i8], ptr %i.od, i64 %indvars.iv.i218
  %i.ye = load ptr, ptr %i.yd, align 8
  %i.yf = load ptr, ptr %i.xx, align 8
  %i.yg = getelementptr [8 x i8], ptr %i.yf, i64 %indvars.iv.i218
  store ptr %i.ye, ptr %i.yg, align 8
  %i.yh = load ptr, ptr %i.xx, align 8
  %i.yi = getelementptr [8 x i8], ptr %i.yh, i64 %indvars.iv.i218
  %i.yj = load ptr, ptr %i.yi, align 8
  %.not581.i = icmp eq ptr %i.yj, null
  br i1 %.not581.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i217
  %i.yk = load ptr, ptr %i.xv, align 8
  %i.yl = getelementptr [8 x i8], ptr %i.yk, i64 %indvars.iv.i218
  %i.ym = load ptr, ptr %i.yl, align 8
  %i.yn = getelementptr i8, ptr %i.ym, i64 84
  store i32 1, ptr %i.yn, align 4
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %.lr.ph.i217
  %indvars.iv.next.i219 = add nuw nsw i64 %indvars.iv.i218, 1 ; 2 uses
  %i.yo = load i32, ptr %i.oe, align 8            ; 2 uses
  %i.yp = sext i32 %i.yo to i64
  %i.yq = icmp slt i64 %indvars.iv.next.i219, %i.yp
  br i1 %i.yq, label %.lr.ph.i217, label %._crit_edge.i, !llvm.loop !155

._crit_edge.i:                                    ; preds = %bb.dt, %bb.dr
  %.lcssa.i = phi i32 [ %i.xi, %bb.dr ], [ %i.yo, %bb.dt ]
  %i.yr = load <2 x ptr>, ptr %i.og, align 8
  store <2 x ptr> %i.yr, ptr %i.xm, align 8
  %i.ys = getelementptr i8, ptr %i.xm, i64 24
  store i32 %.lcssa.i, ptr %i.ys, align 8
  %i.yt = getelementptr i8, ptr %i.xm, i64 56
  store ptr null, ptr %i.yt, align 8
  %i.yu = getelementptr i8, ptr %i.xm, i64 96
  store i32 1, ptr %i.yu, align 8
  %i.yv = getelementptr i8, ptr %i.xm, i64 80
  store ptr null, ptr %i.yv, align 8
  %i.yw = load ptr, ptr %i.c, align 8
  %i.yx = getelementptr i8, ptr %i.yw, i64 32     ; 2 uses
  %i.yy = load i32, ptr %i.yx, align 8            ; 2 uses
  %i.yz = add i32 %i.yy, 1
  store i32 %i.yz, ptr %i.yx, align 8
  %i.za = getelementptr i8, ptr %i.xm, i64 88
  store i32 %i.yy, ptr %i.za, align 8
  %i.zb = load ptr, ptr %i.xm, align 8
  %i.zc = getelementptr i8, ptr %i.zb, i64 16     ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 8
  %i.ze = getelementptr i8, ptr %i.xm, i64 120
  store ptr %i.zd, ptr %i.ze, align 8
  store ptr %i.xm, ptr %i.zc, align 8
  %i.zf = getelementptr i8, ptr %i.xm, i64 128
  store ptr null, ptr %i.zf, align 8
  %i.zg = load ptr, ptr %i.oh, align 8
  %i.zh = icmp eq ptr %i.zg, null
  br i1 %i.zh, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %._crit_edge.i
  store ptr %i.xm, ptr %i.oi, align 8
  store ptr %i.xm, ptr %i.oh, align 8
  br label %bb.dw

bb.dv:                                            ; preds = %._crit_edge.i
  %i.zi = load ptr, ptr %i.oi, align 8
  %i.zj = getelementptr i8, ptr %i.zi, i64 128
  store ptr %i.xm, ptr %i.zj, align 8
  store ptr %i.xm, ptr %i.oi, align 8
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dq
  store ptr %i.xm, ptr %i.oj, align 8
  store i32 1, ptr %i.g, align 8
  br label %parseonetoken.exit

bb.dx:                                            ; preds = %bb.do
  %i.zk = load ptr, ptr %i.on, align 8            ; 2 uses
  %i.zl = zext i8 %i.xg to i64
  %i.zm = getelementptr [2 x i8], ptr %i.zk, i64 %i.zl
  %i.zn = load i16, ptr %i.zm, align 2
  %i.zo = and i16 %i.zn, 1024
  %.not576.i = icmp eq i16 %i.zo, 0
  br i1 %.not576.i, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.zp = load i32, ptr %i.oe, align 8
  %i.zq = icmp sgt i32 %i.zp, 999
  br i1 %i.zq, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.zr = load ptr, ptr %1, align 8
  %i.zs = load i32, ptr %i.nt, align 8
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.zr, i32 noundef %i.zs, ptr noundef nonnull @.str.292, ptr noundef %i.sv)
  %i.zt = load i32, ptr %i.f, align 4
  %i.zu = add i32 %i.zt, 1
  store i32 %i.zu, ptr %i.f, align 4
  store i32 14, ptr %i.g, align 8
  br label %parseonetoken.exit

bb.ea:                                            ; preds = %bb.dy
  %i.zv = call ptr @Symbol_new(ptr noundef %i.sv)
  %i.zw = load i32, ptr %i.oe, align 8
  %i.zx = sext i32 %i.zw to i64
  %i.zy = getelementptr [8 x i8], ptr %i.of, i64 %i.zx
  store ptr %i.zv, ptr %i.zy, align 8
  %i.zz = load i32, ptr %i.oe, align 8
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = getelementptr [8 x i8], ptr %i.od, i64 %i.aaa
  store ptr null, ptr %i.aab, align 8
  %i.aac = load i32, ptr %i.oe, align 8
  %i.aad = add i32 %i.aac, 1
  store i32 %i.aad, ptr %i.oe, align 8
  br label %parseonetoken.exit

bb.eb:                                            ; preds = %bb.dx
  switch i8 %i.xg, label %.thread604.i [
    i8 124, label %bb.ec
    i8 47, label %bb.ec
    i8 40, label %bb.ej
  ]

bb.ec:                                            ; preds = %bb.eb, %bb.eb
  %i.aae = load i32, ptr %i.oe, align 8           ; 2 uses
  %i.aaf = icmp sgt i32 %i.aae, 0
  br i1 %i.aaf, label %bb.ed, label %.thread604.i

bb.ed:                                            ; preds = %bb.ec
  %i.aag = getelementptr i8, ptr %i.sv, i64 1     ; 3 uses
  %i.aah = load i8, ptr %i.aag, align 1
  %i.aai = zext i8 %i.aah to i64
  %i.aaj = getelementptr [2 x i8], ptr %i.zk, i64 %i.aai
  %i.aak = load i16, ptr %i.aaj, align 2
  %i.aal = and i16 %i.aak, 256
  %.not577.i = icmp eq i16 %i.aal, 0
  br i1 %.not577.i, label %.thread604.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aam = zext nneg i32 %i.aae to i64
  %i.aan = getelementptr [8 x i8], ptr %i.of, i64 %i.aam
  %i.aao = getelementptr i8, ptr %i.aan, i64 -8   ; 2 uses
  %i.aap = load ptr, ptr %i.aao, align 8          ; 6 uses
  %i.aaq = getelementptr i8, ptr %i.aap, i64 12
  %i.aar = load i32, ptr %i.aaq, align 4
  %.not578.i = icmp eq i32 %i.aar, 2
  br i1 %.not578.i, label %._crit_edge626.i, label %bb.ef

._crit_edge626.i:                                 ; preds = %bb.ee
  %.phi.trans.insert.i = getelementptr i8, ptr %i.aap, i64 88
  %.pre627.i = load i32, ptr %.phi.trans.insert.i, align 8
  %.phi.trans.insert628.i = getelementptr i8, ptr %i.aap, i64 96
  %.pre629.i = load ptr, ptr %.phi.trans.insert628.i, align 8
  %i.aas = add i32 %.pre627.i, 1
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.aat = call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #40 ; 6 uses
  %2 = getelementptr i8, ptr %i.aat, i64 12
  store i32 2, ptr %2, align 4
  %i.aau = getelementptr i8, ptr %i.aat, i64 88
  store i32 1, ptr %i.aau, align 8
  %i.aav = call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #40 ; 3 uses
  %i.aaw = getelementptr i8, ptr %i.aat, i64 96
  store ptr %i.aav, ptr %i.aaw, align 8
  store ptr %i.aap, ptr %i.aav, align 8
  %i.aax = load ptr, ptr %i.aap, align 8
  store ptr %i.aax, ptr %i.aat, align 8
  store ptr %i.aat, ptr %i.aao, align 8
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %._crit_edge626.i
  %i.aay = phi ptr [ %i.aav, %bb.ef ], [ %.pre629.i, %._crit_edge626.i ]
  %i.aaz = phi i32 [ 2, %bb.ef ], [ %i.aas, %._crit_edge626.i ] ; 2 uses
  %.0531.i = phi ptr [ %i.aat, %bb.ef ], [ %i.aap, %._crit_edge626.i ] ; 2 uses
  %i.aba = getelementptr i8, ptr %.0531.i, i64 88 ; 2 uses
  store i32 %i.aaz, ptr %i.aba, align 8
  %i.abb = getelementptr i8, ptr %.0531.i, i64 96 ; 3 uses
  %i.abc = sext i32 %i.aaz to i64
  %i.abd = shl nsw i64 %i.abc, 3
  %i.abe = call ptr @realloc(ptr noundef %i.aay, i64 noundef %i.abd) #43
  store ptr %i.abe, ptr %i.abb, align 8
  %i.abf = call ptr @Symbol_new(ptr noundef %i.aag)
  %i.abg = load ptr, ptr %i.abb, align 8
  %i.abh = load i32, ptr %i.aba, align 8
  %i.abi = add i32 %i.abh, -1
  %i.abj = sext i32 %i.abi to i64
  %i.abk = getelementptr [8 x i8], ptr %i.abg, i64 %i.abj
  store ptr %i.abf, ptr %i.abk, align 8
  %i.abl = load ptr, ptr %i.on, align 8           ; 2 uses
  %i.abm = load i8, ptr %i.aag, align 1
  %i.abn = zext i8 %i.abm to i64
  %i.abo = getelementptr [2 x i8], ptr %i.abl, i64 %i.abn
  %i.abp = load i16, ptr %i.abo, align 2
  %i.abq = and i16 %i.abp, 512
  %.not579.i = icmp eq i16 %i.abq, 0
  br i1 %.not579.i, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.abr = load ptr, ptr %i.abb, align 8
  %i.abs = load ptr, ptr %i.abr, align 8
  %i.abt = load ptr, ptr %i.abs, align 8
  %i.abu = load i8, ptr %i.abt, align 1
  %i.abv = zext i8 %i.abu to i64
  %i.abw = getelementptr [2 x i8], ptr %i.abl, i64 %i.abv
  %i.abx = load i16, ptr %i.abw, align 2
  %i.aby = and i16 %i.abx, 512
  %.not580.i = icmp eq i16 %i.aby, 0
  br i1 %.not580.i, label %parseonetoken.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.abz = load ptr, ptr %1, align 8
  %i.aca = load i32, ptr %i.nt, align 8
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.abz, i32 noundef %i.aca, ptr noundef nonnull @.str.293)
  %i.acb = load i32, ptr %i.f, align 4
  %i.acc = add i32 %i.acb, 1
  store i32 %i.acc, ptr %i.f, align 4
  br label %parseonetoken.exit

bb.ej:                                            ; preds = %bb.eb
  %i.acd = load i32, ptr %i.oe, align 8
  %i.ace = icmp sgt i32 %i.acd, 0
  br i1 %i.ace, label %bb.ek, label %.thread604.i

bb.ek:                                            ; preds = %bb.ej
  store i32 10, ptr %i.g, align 8
  br label %parseonetoken.exit

.thread604.i:                                     ; preds = %bb.ej, %bb.ed, %bb.ec, %bb.eb
  %i.acf = load ptr, ptr %1, align 8
  %i.acg = load i32, ptr %i.nt, align 8
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.acf, i32 noundef %i.acg, ptr noundef nonnull @.str.294, ptr noundef %i.sv)
  %i.ach = load i32, ptr %i.f, align 4
  %i.aci = add i32 %i.ach, 1
  store i32 %i.aci, ptr %i.f, align 4
  store i32 14, ptr %i.g, align 8
  br label %parseonetoken.exit

bb.el:                                            ; preds = %.critedge13
  %i.acj = load ptr, ptr %i.on, align 8
  %i.ack = load i8, ptr %i.sv, align 1
  %i.acl = zext i8 %i.ack to i64
  %i.acm = getelementptr [2 x i8], ptr %i.acj, i64 %i.acl
  %i.acn = load i16, ptr %i.acm, align 2
  %i.aco = and i16 %i.acn, 1024
  %.not575.i = icmp eq i16 %i.aco, 0
  br i1 %.not575.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.acp = load i32, ptr %i.oe, align 8
  %i.acq = add i32 %i.acp, -1
  %i.acr = sext i32 %i.acq to i64
  %i.acs = getelementptr [8 x i8], ptr %i.od, i64 %i.acr
  store ptr %i.sv, ptr %i.acs, align 8
  store i32 11, ptr %i.g, align 8
  br label %parseonetoken.exit

bb.en:                                            ; preds = %bb.el
  %i.act = load ptr, ptr %1, align 8
  %i.acu = load i32, ptr %i.nt, align 8
  %i.acv = load i32, ptr %i.oe, align 8
  %i.acw = add i32 %i.acv, -1
  %i.acx = sext i32 %i.acw to i64
  %i.acy = getelementptr [8 x i8], ptr %i.of, i64 %i.acx
  %i.acz = load ptr, ptr %i.acy, align 8
  %i.ada = load ptr, ptr %i.acz, align 8
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.act, i32 noundef %i.acu, ptr noundef nonnull @.str.295, ptr noundef %i.sv, ptr noundef %i.ada)
  %i.adb = load i32, ptr %i.f, align 4
  %i.adc = add i32 %i.adb, 1
  store i32 %i.adc, ptr %i.f, align 4
  store i32 14, ptr %i.g, align 8
  br label %parseonetoken.exit

bb.eo:                                            ; preds = %.critedge13
  %i.add = load i8, ptr %i.sv, align 1
  %i.ade = icmp eq i8 %i.add, 41
  br i1 %i.ade, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  store i32 6, ptr %i.g, align 8
  br label %parseonetoken.exit

bb.eq:                                            ; preds = %bb.eo
  %i.adf = load ptr, ptr %1, align 8
  %i.adg = load i32, ptr %i.nt, align 8
  %i.adh = load ptr, ptr %i.oc, align 8
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %i.adf, i32 noundef %i.adg, ptr noundef nonnull @.str.289, ptr noundef %i.adh)
  %i.adi = load i32, ptr %i.f, align 4
  %i.adj = add i32 %i.adi, 1
  store i32 %i.adj, ptr %i.f, align 4
  store i32 14, ptr %i.g, align 8
  br label %parseonetoken.exit

bb.er:                                            ; preds = %.critedge13
  %i.adk = load ptr, ptr %i.on, align 8
  %i.adl = load i8, ptr %i.sv, align 1
  %i.adm = zext i8 %i.adl to i64
  %i.adn = getelementptr [2 x i8], ptr %i.adk, i64 %i.adm
  %i.ado = load i16, ptr %i.adn, align 2
  %i.adp = and i16 %i.ado, 1024
  %.not574.i = icmp eq i16 %i.adp, 0
  br i1 %.not574.i, label %bb.gr, label %bb.es

bb.es:                                            ; preds = %bb.er
  store ptr %i.sv, ptr %i.nz, align 8
  store ptr null, ptr %i.nw, align 8
  store ptr null, ptr %i.ny, align 8
  store i32 1, ptr %i.nx, align 8
  store i32 3, ptr %i.g, align 8
  %i.adq = call i32 @strcmp(ptr noundef %i.sv, ptr noundef nonnull dereferenceable(5) @.str.296) #44
  %i.adr = icmp eq i32 %i.adq, 0
  br i1 %i.adr, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.ads = load ptr, ptr %i.c, align 8
  %i.adt = getelementptr i8, ptr %i.ads, i64 104
  store ptr %i.adt, ptr %i.nw, align 8
  store i32 0, ptr %i.nx, align 8
  br label %parseonetoken.exit

bb.eu:                                            ; preds = %bb.es
  %i.adu = call i32 @strcmp(ptr noundef %i.sv, ptr noundef nonnull dereferenceable(8) @.str.297) #44
  %i.adv = icmp eq i32 %i.adu, 0
  br i1 %i.adv, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.adw = load ptr, ptr %i.c, align 8
  %i.adx = getelementptr i8, ptr %i.adw, i64 160
  store ptr %i.adx, ptr %i.nw, align 8
  br label %parseonetoken.exit

bb.ew:                                            ; preds = %bb.eu
  %i.ady = call i32 @strcmp(ptr noundef %i.sv, ptr noundef nonnull dereferenceable(5) @.str.298) #44
  %i.adz = icmp eq i32 %i.ady, 0
  br i1 %i.adz, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.aea = load ptr, ptr %i.c, align 8
  %i.aeb = getelementptr i8, ptr %i.aea, i64 200
  store ptr %i.aeb, ptr %i.nw, align 8
  br label %parseonetoken.exit

bb.ey:                                            ; preds = %bb.ew
  %i.aec = call i32 @strcmp(ptr noundef %i.sv, ptr noundef nonnull dereferenceable(17) @.str.299) #44
  %i.aed = icmp eq i32 %i.aec, 0
  br i1 %i.aed, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.aee = load ptr, ptr %i.c, align 8
  %i.aef = getelementptr i8, ptr %i.aee, i64 208
  store ptr %i.aef, ptr %i.nw, align 8
  br label %parseonetoken.exit

bb.fa:                                            ; preds = %bb.ey
  %i.aeg = call i32 @strcmp(ptr noundef %i.sv, ptr noundef nonnull dereferenceable(19) @.str.300) #44
  %i.aeh = icmp eq i32 %i.aeg, 0
  br i1 %i.aeh, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.aei = load ptr, ptr %i.c, align 8
  %i.aej = getelementptr i8, ptr %i.aei, i64 216
  store ptr %i.aej, ptr %i.nw, align 8
end_hunk_0
