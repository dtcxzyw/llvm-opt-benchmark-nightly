inline.NumInlined: 109
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 23
begin_hunk_0_@loadaamtx:bb.a
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !4
  %i.em = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 89) #33 ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.k, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.eo, %i.ag
  %i.eq = trunc i64 %i.ep to i32
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !4
  %i.es = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 86) #33 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.k, label %.outer.preheader

.outer.preheader:                                 ; preds = %bb.ad
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.eu, %i.ag
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 76 ; 2 uses
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !4
  br label %.outer

bb.ae:                                            ; preds = %.outer, %bb.af
  %i.ey = tail call i32 @feof(ptr noundef nonnull %i.g) #32
  %.not143 = icmp eq i32 %i.ey, 0
  br i1 %.not143, label %bb.af, label %.loopexit175

bb.af:                                            ; preds = %bb.ae
  %i.ez = tail call ptr @fgets(ptr noundef %i.l, i32 noundef 999, ptr noundef nonnull %i.g) ; 0 uses
  %i.fa = load i8, ptr %i.l, align 1, !tbaa !19
  %i.fb = icmp eq i8 %i.fa, 35
  br i1 %i.fb, label %bb.ae, label %.preheader173, !llvm.loop !248

.preheader173:                                    ; preds = %bb.af
  %i.fc = tail call ptr @__ctype_b_loc() #31
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv201
  br label %.preheader172

bb.ag:                                            ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv199
  br i1 %exitcond.not, label %bb.aj, label %.preheader172, !llvm.loop !249

.preheader172:                                    ; preds = %.preheader173, %bb.ag
  %indvars.iv = phi i64 [ 0, %.preheader173 ], [ %indvars.iv.next, %bb.ag ] ; 3 uses
  %.2126181 = phi ptr [ %i.l, %.preheader173 ], [ %i.fq, %bb.ag ]
  %i.fe = load ptr, ptr %i.fc, align 8, !tbaa !55
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.preheader172
  %.3127 = phi ptr [ %i.fm, %bb.ah ], [ %.2126181, %.preheader172 ] ; 4 uses
  %i.ff = load i8, ptr %.3127, align 1, !tbaa !19 ; 2 uses
  %i.fg = sext i8 %i.ff to i64
  %i.fh = getelementptr inbounds [2 x i8], ptr %i.fe, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !57
  %.fr165 = freeze i16 %i.fi
  %i.fj = and i16 %.fr165, 2048
  %.not151 = icmp ne i16 %i.fj, 0
  %i.fk = add i8 %i.ff, -45
  %i.fl = icmp ult i8 %i.fk, 2
  %or.cond162 = or i1 %i.fl, %.not151
  %i.fm = getelementptr inbounds nuw i8, ptr %.3127, i64 1
  br i1 %or.cond162, label %.critedge, label %bb.ah, !llvm.loop !250

.critedge:                                        ; preds = %bb.ah
  %i.fn = tail call double @strtod(ptr noundef nonnull captures(none) %.3127, ptr noundef null) #32, !inline_history !52
  %i.fo = load ptr, ptr %i.fd, align 8, !tbaa !105
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv
  store double %i.fn, ptr %i.fp, align 8, !tbaa !107
  %i.fq = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.3127, i32 noundef 32) #33 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, null
  %i.fs = icmp samesign ult i64 %indvars.iv, %indvars.iv201
  %or.cond157 = select i1 %i.fr, i1 %i.fs, i1 false
  br i1 %or.cond157, label %bb.ai, label %bb.ag

bb.ai:                                            ; preds = %.critedge
  %i.ft = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.fu = tail call i64 @fwrite(ptr nonnull @.str.112, i64 26, i64 1, ptr %i.ft) #34 ; 0 uses
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.fw = tail call i64 @fwrite(ptr nonnull @.str.113, i64 11, i64 1, ptr %i.fv) #34 ; 0 uses
  %i.fx = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.fy = tail call i64 @fwrite(ptr nonnull @.str.114, i64 10, i64 1, ptr %i.fx) #34 ; 0 uses
  %i.fz = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ga = tail call i64 @fwrite(ptr nonnull @.str.115, i64 62, i64 1, ptr %i.fz) #34 ; 0 uses
  %i.gb = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gc = tail call i64 @fwrite(ptr nonnull @.str.116, i64 62, i64 1, ptr %i.gb) #34 ; 0 uses
  %i.gd = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ge = tail call i64 @fwrite(ptr nonnull @.str.117, i64 62, i64 1, ptr %i.gd) #34 ; 0 uses
  %i.gf = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gg = tail call i64 @fwrite(ptr nonnull @.str.118, i64 4, i64 1, ptr %i.gf) #34 ; 0 uses
  %i.gh = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gi = tail call i64 @fwrite(ptr nonnull @.str.119, i64 62, i64 1, ptr %i.gh) #34 ; 0 uses
  %i.gj = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gk = tail call i64 @fwrite(ptr nonnull @.str.120, i64 39, i64 1, ptr %i.gj) #34 ; 0 uses
  %i.gl = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gm = tail call i64 @fwrite(ptr nonnull @.str.121, i64 14, i64 1, ptr %i.gl) #34 ; 0 uses
  %i.gn = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.go = tail call i64 @fwrite(ptr nonnull @.str.122, i64 30, i64 1, ptr %i.gn) #34 ; 0 uses
  %i.gp = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gq = tail call i64 @fwrite(ptr nonnull @.str.123, i64 39, i64 1, ptr %i.gp) #34 ; 0 uses
  tail call void @exit(i32 noundef 1) #30
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1
  %exitcond206 = icmp eq i64 %indvars.iv.next202, 20
  br i1 %exitcond206, label %.loopexit175, label %.outer, !llvm.loop !248

.outer:                                           ; preds = %.outer.preheader, %bb.aj
  %indvars.iv201 = phi i64 [ 0, %.outer.preheader ], [ %indvars.iv.next202, %bb.aj ] ; 3 uses
  %indvars.iv199 = phi i64 [ 1, %.outer.preheader ], [ %indvars.iv.next200, %bb.aj ] ; 2 uses
  br label %bb.ae

.loopexit175:                                     ; preds = %bb.aj, %bb.ae
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 3 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !105 ; 10 uses
  store <2 x double> splat (double -1.000000e+00), ptr %i.gs, align 8, !tbaa !107
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store <2 x double> splat (double -1.000000e+00), ptr %i.gt, align 8, !tbaa !107
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  store <2 x double> splat (double -1.000000e+00), ptr %i.gu, align 8, !tbaa !107
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  store <2 x double> splat (double -1.000000e+00), ptr %i.gv, align 8, !tbaa !107
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 64
  store <2 x double> splat (double -1.000000e+00), ptr %i.gw, align 8, !tbaa !107
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 80
  store <2 x double> splat (double -1.000000e+00), ptr %i.gx, align 8, !tbaa !107
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 96
  store <2 x double> splat (double -1.000000e+00), ptr %i.gy, align 8, !tbaa !107
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 112
  store <2 x double> splat (double -1.000000e+00), ptr %i.gz, align 8, !tbaa !107
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 128
  store <2 x double> splat (double -1.000000e+00), ptr %i.ha, align 8, !tbaa !107
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gs, i64 144
  store <2 x double> splat (double -1.000000e+00), ptr %i.hb, align 8, !tbaa !107
  br label %.preheader170

.preheader170:                                    ; preds = %.loopexit175, %bb.ak
  %i.hc = tail call i32 @feof(ptr noundef nonnull %i.g) #32
  %.not145 = icmp eq i32 %i.hc, 0
  br i1 %.not145, label %bb.ak, label %.preheader167.preheader

bb.ak:                                            ; preds = %.preheader170
  %i.hd = tail call ptr @fgets(ptr noundef %i.l, i32 noundef 999, ptr noundef nonnull %i.g) ; 0 uses
  %i.he = load i8, ptr %i.l, align 1, !tbaa !19
  %i.hf = icmp eq i8 %i.he, 102
  br i1 %i.hf, label %.preheader169, label %.preheader170, !llvm.loop !251

.preheader169:                                    ; preds = %bb.ak
  %i.hg = tail call ptr @__ctype_b_loc() #31
  br label %.preheader168

bb.al:                                            ; preds = %.critedge2
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next212, 20
  br i1 %exitcond214.not, label %.preheader167.preheader, label %.preheader168, !llvm.loop !252

.preheader167.preheader:                          ; preds = %.preheader170, %bb.al
  br label %.preheader167

.preheader168:                                    ; preds = %.preheader169, %bb.al
  %indvars.iv211 = phi i64 [ 0, %.preheader169 ], [ %indvars.iv.next212, %bb.al ] ; 3 uses
  %.4128184 = phi ptr [ %i.l, %.preheader169 ], [ %i.ht, %bb.al ]
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !55
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.preheader168
  %.5 = phi ptr [ %i.hp, %bb.am ], [ %.4128184, %.preheader168 ] ; 4 uses
  %i.hi = load i8, ptr %.5, align 1, !tbaa !19    ; 2 uses
  %i.hj = sext i8 %i.hi to i64
  %i.hk = getelementptr inbounds [2 x i8], ptr %i.hh, i64 %i.hj
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !57
  %.fr166 = freeze i16 %i.hl
  %i.hm = and i16 %.fr166, 2048
  %.not148 = icmp ne i16 %i.hm, 0
  %i.hn = add i8 %i.hi, -45
  %i.ho = icmp ult i8 %i.hn, 2
  %or.cond164 = or i1 %i.ho, %.not148
  %i.hp = getelementptr inbounds nuw i8, ptr %.5, i64 1
  br i1 %or.cond164, label %.critedge2, label %bb.am, !llvm.loop !253

.critedge2:                                       ; preds = %bb.am
  %i.hq = tail call double @strtod(ptr noundef nonnull captures(none) %.5, ptr noundef null) #32, !inline_history !52
  %i.hr = load ptr, ptr %i.gr, align 8, !tbaa !105
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv211
  store double %i.hq, ptr %i.hs, align 8, !tbaa !107
  %i.ht = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.5, i32 noundef 32) #33 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  %i.hv = icmp ne i64 %indvars.iv211, 19
  %or.cond = and i1 %i.hv, %i.hu
  br i1 %or.cond, label %bb.an, label %bb.al

bb.an:                                            ; preds = %.critedge2
  tail call fastcc void @showaamtxexample()
  unreachable

.preheader167:                                    ; preds = %.preheader167.preheader, %bb.ar
  %indvars.iv227.a = phi i64 [ %indvars.iv.next228.a, %bb.ar ], [ 0, %.preheader167.preheader ] ; 3 uses
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %bb.ar ], [ 1, %.preheader167.preheader ] ; 3 uses
  %indvars.iv219 = phi i32 [ %indvars.iv.next220, %bb.ar ], [ 0, %.preheader167.preheader ] ; 2 uses
  %0 = sext i32 %indvars.iv219 to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv227.a
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !4  ; 4 uses
  br label %bb.ao

.preheader:                                       ; preds = %bb.ar
  %i.hy = load ptr, ptr %i.gr, align 8, !tbaa !105 ; 20 uses
  %i.hz = load i32, ptr %i.c, align 4, !tbaa !4
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !107
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 3200
  store double %i.ic, ptr %i.id, align 8, !tbaa !107
  %i.ie = load i32, ptr %i.at, align 4, !tbaa !4
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.if
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !107
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 3208
  store double %i.ih, ptr %i.ii, align 8, !tbaa !107
  %i.ij = load i32, ptr %i.az, align 4, !tbaa !4
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.ik
  %i.im = load double, ptr %i.il, align 8, !tbaa !107
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 3216
  store double %i.im, ptr %i.in, align 8, !tbaa !107
  %i.io = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.ip
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !107
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 3224
  store double %i.ir, ptr %i.is, align 8, !tbaa !107
  %i.it = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.iu
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !107
  %i.ix = getelementptr inbounds nuw i8, ptr %i.b, i64 3232
  store double %i.iw, ptr %i.ix, align 8, !tbaa !107
  %i.iy = load i32, ptr %i.br, align 4, !tbaa !4
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.iz
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !107
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 3240
  store double %i.jb, ptr %i.jc, align 8, !tbaa !107
  %i.jd = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.je
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !107
  %i.jh = getelementptr inbounds nuw i8, ptr %i.b, i64 3248
  store double %i.jg, ptr %i.jh, align 8, !tbaa !107
  %i.ji = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.jj
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !107
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 3256
  store double %i.jl, ptr %i.jm, align 8, !tbaa !107
  %i.jn = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.jo
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !107
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 3264
  store double %i.jq, ptr %i.jr, align 8, !tbaa !107
  %i.js = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.jt
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !107
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 3272
  store double %i.jv, ptr %i.jw, align 8, !tbaa !107
  %i.jx = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.jy
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !107
  %i.kb = getelementptr inbounds nuw i8, ptr %i.b, i64 3280
  store double %i.ka, ptr %i.kb, align 8, !tbaa !107
  %i.kc = load i32, ptr %i.db, align 4, !tbaa !4
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.kd
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !107
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 3288
  store double %i.kf, ptr %i.kg, align 8, !tbaa !107
  %i.kh = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.ki
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !107
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 3296
  store double %i.kk, ptr %i.kl, align 8, !tbaa !107
  %i.km = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.kn
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !107
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 3304
  store double %i.kp, ptr %i.kq, align 8, !tbaa !107
  %i.kr = load i32, ptr %i.dt, align 4, !tbaa !4
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.ks
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !107
  %i.kv = getelementptr inbounds nuw i8, ptr %i.b, i64 3312
  store double %i.ku, ptr %i.kv, align 8, !tbaa !107
  %i.kw = load i32, ptr %i.dz, align 4, !tbaa !4
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.kx
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !107
  %i.la = getelementptr inbounds nuw i8, ptr %i.b, i64 3320
  store double %i.kz, ptr %i.la, align 8, !tbaa !107
  %i.lb = load i32, ptr %i.ef, align 4, !tbaa !4
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !107
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 3328
  store double %i.le, ptr %i.lf, align 8, !tbaa !107
  %i.lg = load i32, ptr %i.el, align 4, !tbaa !4
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.lh
  %i.lj = load double, ptr %i.li, align 8, !tbaa !107
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 3336
  store double %i.lj, ptr %i.lk, align 8, !tbaa !107
  %i.ll = load i32, ptr %i.er, align 4, !tbaa !4
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.lm
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !107
  %i.lp = getelementptr inbounds nuw i8, ptr %i.b, i64 3344
  store double %i.lo, ptr %i.lp, align 8, !tbaa !107
  %i.lq = load i32, ptr %i.ex, align 4, !tbaa !4
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.lr
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !107
  %i.lu = getelementptr inbounds nuw i8, ptr %i.b, i64 3352
  store double %i.lt, ptr %i.lu, align 8, !tbaa !107
  %i.lv = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.lw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lv, ptr noundef nonnull @.str.91, ptr noundef nonnull %i.k) #28 ; 0 uses
  %i.lx = tail call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  tail call void @free(ptr noundef %i.k) #32
  tail call void @free(ptr noundef %i.l) #32
  tail call void @FreeDoubleMtx(ptr noundef nonnull %i.a) #32
  tail call void @free(ptr noundef nonnull %i.c) #32
  ret ptr %i.b

bb.ao:                                            ; preds = %.preheader167, %bb.aq
  %indvars.iv217 = phi i64 [ %0, %.preheader167 ], [ %indvars.iv.next218, %bb.aq ] ; 2 uses
  %indvars.iv215 = phi i64 [ 0, %.preheader167 ], [ %indvars.iv.next216, %bb.aq ] ; 3 uses
  %.not147 = icmp eq i64 %indvars.iv227.a, %indvars.iv215
  br i1 %.not147, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv215
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !4  ; 2 uses
  %. = tail call i32 @llvm.smax.i32(i32 %i.hx, i32 %i.lz)
  %i.ma = tail call i32 @llvm.smin.i32(i32 %i.hx, i32 %i.lz)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.0129 = phi i32 [ %i.ma, %bb.ap ], [ %i.hx, %bb.ao ]
  %.0122 = phi i32 [ %., %bb.ap ], [ %i.hx, %bb.ao ]
  %i.mb = sext i32 %.0122 to i64
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.mb
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !105
  %i.me = sext i32 %.0129 to i64
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.me
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !107
  %indvars.iv.next218 = add nsw i64 %indvars.iv217, 1
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv217
  store double %i.mg, ptr %i.mh, align 8, !tbaa !107
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %indvars.iv.next216, %indvars.iv225
  br i1 %exitcond224.not, label %bb.ar, label %bb.ao, !llvm.loop !254

bb.ar:                                            ; preds = %bb.aq
  %indvars.iv.next228.a = add nuw nsw i64 %indvars.iv227.a, 1 ; 2 uses
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1
  %1 = trunc nuw nsw i64 %indvars.iv225 to i32
  %indvars.iv.next220 = add i32 %indvars.iv219, %1
  %exitcond232.not = icmp eq i64 %indvars.iv.next228.a, 20
  br i1 %exitcond232.not, label %.preheader, label %.preheader167, !llvm.loop !255
}

declare ptr @AllocateDoubleMtx(i32 noundef, i32 noundef) local_unnamed_addr #18

declare ptr @AllocateDoubleVec(i32 noundef) local_unnamed_addr #18

declare void @FreeDoubleMtx(ptr noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind uwtable
define dso_local void @miyataout_reorder_pointer(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 1) #32 ; 0 uses
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 1) #32 ; 0 uses
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.92, i32 noundef 1, i32 noundef %2) #32 ; 0 uses
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 0) #32 ; 0 uses
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %1) #32 ; 0 uses
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph28.preheader, label %._crit_edge29

.lr.ph28.preheader:                               ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %._crit_edge
  %indvars.iv31 = phi i64 [ 0, %.lr.ph28.preheader ], [ %indvars.iv.next32, %._crit_edge ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %5, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #33
  %i.m = trunc i64 %i.l to i32                    ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %3, i64 %i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.p, i32 noundef %i.m) #32 ; 0 uses
  %i.r = icmp sgt i32 %i.m, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph28, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph28 ] ; 2 uses
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 60, ptr noundef %i.t) #32 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 60 ; 2 uses
  %i.v = trunc nuw i64 %indvars.iv.next to i32
  %i.w = icmp slt i32 %i.v, %i.m
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !256

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph28
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge29, label %.lr.ph28, !llvm.loop !257

._crit_edge29:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readmccaskill(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #14 {
._crit_edge:
  %i.a = alloca [1000 x i8], align 16             ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca float, align 4                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.e = sext i32 %2 to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 4) #29 ; 5 uses
  %i.g = tail call i32 @getc(ptr noundef %0)
  %.not = icmp eq i32 %i.g, 62
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.i = tail call i64 @fwrite(ptr nonnull @.str.94, i64 21, i64 1, ptr %i.h) #34 ; 0 uses
  tail call void @exit(i32 noundef 1) #30
  unreachable

bb.b:                                             ; preds = %._crit_edge
  %i.j = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 999, ptr noundef %0) ; 0 uses
  %i.k = call i32 @feof(ptr noundef %0) #32
  %.not4550 = icmp eq i32 %i.k, 0
  br i1 %.not4550, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %bb.b, %.backedge
  %i.l = call i32 @getc(ptr noundef %0)           ; 2 uses
  %i.m = call i32 @ungetc(i32 noundef %i.l, ptr noundef %0) ; 0 uses
  %i.n = icmp eq i32 %i.l, 62
  br i1 %i.n, label %._crit_edge53, label %bb.c

bb.c:                                             ; preds = %.lr.ph52
  %i.o = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 999, ptr noundef %0) ; 0 uses
  %i.p = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.95, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #32 ; 0 uses
  %i.q = load i32, ptr %i.b, align 4, !tbaa !4    ; 3 uses
  %.not46 = icmp slt i32 %i.q, %2
  br i1 %.not46, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %.not47 = icmp slt i32 %i.r, %2
  br i1 %.not47, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.t = call i64 @fwrite(ptr nonnull @.str.94, i64 21, i64 1, ptr %i.s) #34 ; 0 uses
  call void @exit(i32 noundef 1) #30
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = load float, ptr %i.d, align 4, !tbaa !60 ; 2 uses
  %i.v = fpext float %i.u to double
  %i.w = fcmp olt double %i.v, 1.000000e-02
  br i1 %i.w, label %.backedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not48 = icmp ne i32 %i.q, %i.r
  %i.x = fcmp ogt float %i.u, 0.000000e+00
  %or.cond = and i1 %.not48, %i.x
  br i1 %or.cond, label %bb.h, label %.backedge

bb.h:                                             ; preds = %bb.g
  %i.y = sext i32 %i.q to i64                     ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %1, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !258
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.y
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = add nsw i32 %i.ac, 2
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.ae, 24
  %i.ag = call ptr @realloc(ptr noundef %i.aa, i64 noundef %i.af) #36 ; 3 uses
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !4
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !258
  %i.ak = load float, ptr %i.d, align 4, !tbaa !60
  %i.al = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ai ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4  ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [24 x i8], ptr %i.ag, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store float %i.ak, ptr %i.ap, align 4, !tbaa !260
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !262
  %i.as = add nsw i32 %i.am, 1                    ; 2 uses
  store i32 %i.as, ptr %i.al, align 4, !tbaa !4
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [24 x i8], ptr %i.ag, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  store float -1.000000e+00, ptr %i.av, align 4, !tbaa !260
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i32 -1, ptr %i.aw, align 4, !tbaa !262
  %i.ax = sext i32 %i.aq to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !258
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ax
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = add nsw i32 %i.bb, 2
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i64 %i.bd, 24
  %i.bf = call ptr @realloc(ptr noundef %i.az, i64 noundef %i.be) #36 ; 3 uses
  %i.bg = load i32, ptr %i.c, align 4, !tbaa !4
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !258
  %i.bj = load float, ptr %i.d, align 4, !tbaa !60
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bh ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4  ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [24 x i8], ptr %i.bf, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store float %i.bj, ptr %i.bo, align 4, !tbaa !260
  %i.bp = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !262
  %i.br = add nsw i32 %i.bl, 1                    ; 2 uses
  store i32 %i.br, ptr %i.bk, align 4, !tbaa !4
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [24 x i8], ptr %i.bf, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  store float -1.000000e+00, ptr %i.bu, align 4, !tbaa !260
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i32 -1, ptr %i.bv, align 4, !tbaa !262
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.h, %bb.f
  %i.bw = call i32 @feof(ptr noundef %0) #32
  %.not45 = icmp eq i32 %i.bw, 0
  br i1 %.not45, label %.lr.ph52, label %._crit_edge53

._crit_edge53:                                    ; preds = %.backedge, %.lr.ph52, %bb.b
  call void @free(ptr noundef %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
end_hunk_0
