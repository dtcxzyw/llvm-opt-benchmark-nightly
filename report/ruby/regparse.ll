inline.NumInlined: 253
inline.NumDeleted: 55
begin_hunk_0_@fetch_token:bb.a
  %.0768 = phi i32 [ 0, %bb.jp ], [ 1, %bb.jd ]
  %i.wi = call fastcc i32 @fetch_name(i32 noundef 40, ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef %i.f, ptr noundef nonnull %3, ptr noundef %i.e, i32 noundef %.0768) ; 2 uses
  %i.wj = icmp sgt i32 %i.wi, -1
  br i1 %i.wj, label %..critedge975_crit_edge, label %.critedge975.thread

..critedge975_crit_edge:                          ; preds = %bb.jq
  %.pre1224 = load ptr, ptr %i.f, align 8, !tbaa !69
  %.pre1225 = load i32, ptr %i.e, align 4, !tbaa !7
  br label %.critedge975

.critedge975.thread:                              ; preds = %bb.jq, %bb.ji, %bb.jh
  %.5.ph = phi i32 [ -215, %bb.jh ], [ -215, %bb.ji ], [ %i.wi, %bb.jq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %.loopexit

.critedge975:                                     ; preds = %..critedge975_crit_edge, %bb.jl
  %i.wk = phi i32 [ 0, %bb.jl ], [ %.pre1225, %..critedge975_crit_edge ]
  %i.wl = phi ptr [ %i.vz, %bb.jl ], [ %.pre1224, %..critedge975_crit_edge ]
  %.0769 = phi ptr [ %i.vz, %bb.jl ], [ %i.wh, %..critedge975_crit_edge ]
  store i32 8, ptr %0, align 8, !tbaa !99
  store ptr %.0769, ptr %i.x, align 8, !tbaa !13
  %i.wm = getelementptr i8, ptr %0, i64 32
  store ptr %i.wl, ptr %i.wm, align 8, !tbaa !13
  %i.wn = getelementptr i8, ptr %0, i64 40
  store i32 %i.wk, ptr %i.wn, align 8, !tbaa !13
  %i.wo = getelementptr i8, ptr %0, i64 44
  store i32 0, ptr %i.wo, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %.thread985

bb.jr:                                            ; preds = %bb.jc, %.thread997
  %i.wp = phi i1 [ %i.vc, %bb.jc ], [ %i.ta, %.thread997 ]
  %i.wq = phi i32 [ %i.vd, %bb.jc ], [ %i.uz, %.thread997 ] ; 2 uses
  %i.wr = icmp eq i32 %i.wq, 45
  switch i32 %i.wq, label %bb.kd [
    i32 45, label %bb.js
    i32 43, label %bb.js
  ]

bb.js:                                            ; preds = %bb.jr, %bb.jr
  %i.ws = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.wt = getelementptr i8, ptr %i.ws, i64 4
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !104
  %i.wv = and i32 %i.wu, 134217728
  %.not927 = icmp eq i32 %i.wv, 0
  br i1 %.not927, label %bb.kd, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.ww = load i32, ptr %i.s, align 8, !tbaa !70  ; 2 uses
  %i.wx = load i32, ptr %i.u, align 4, !tbaa !47
  %i.wy = icmp eq i32 %i.ww, %i.wx
  br i1 %i.wy, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %spec.select978 = select i1 %i.wp, i32 %i.ww, i32 0
  br label %bb.jw

bb.jv:                                            ; preds = %bb.jt
  %i.wz = tail call i32 @onigenc_mbclen(ptr noundef %i.sz, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.jw

bb.jw:                                            ; preds = %bb.ju, %bb.jv
  %i.xa = phi i32 [ %i.wz, %bb.jv ], [ %spec.select978, %bb.ju ]
  %i.xb = sext i32 %i.xa to i64
  %i.xc = getelementptr i8, ptr %i.sz, i64 %i.xb  ; 5 uses
  store ptr %i.xc, ptr %i.a, align 8, !tbaa !69
  %i.xd = icmp ult ptr %i.xc, %2
  br i1 %i.xd, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  %i.xe = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.xf = tail call i32 %i.xe(ptr noundef %i.xc, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jw, %bb.jx
  %i.xg = phi i32 [ %i.xf, %bb.jx ], [ 0, %bb.jw ]
  %i.xh = load ptr, ptr %i.ae, align 8, !tbaa !72
  %i.xi = tail call i32 %i.xh(i32 noundef %i.xg, i32 noundef 4, ptr noundef nonnull %i.l) #25
  %.not928 = icmp eq i32 %i.xi, 0
  br i1 %.not928, label %.thread1003, label %bb.jz

.thread1003:                                      ; preds = %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %bb.kd

bb.jz:                                            ; preds = %bb.jy
  br i1 %i.wr, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  store ptr %i.sz, ptr %i.a, align 8, !tbaa !69
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %i.xj = phi ptr [ %i.sz, %bb.ka ], [ %i.xc, %bb.jz ]
  %i.xk = call fastcc i32 @fetch_name(i32 noundef 40, ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef %i.h, ptr noundef nonnull %3, ptr noundef %i.g, i32 noundef 1) ; 2 uses
  %i.xl = icmp slt i32 %i.xk, 0
  br i1 %i.xl, label %.thread1000, label %bb.kc

.thread1000:                                      ; preds = %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %.loopexit

bb.kc:                                            ; preds = %bb.kb
  store i32 8, ptr %0, align 8, !tbaa !99
  store ptr %i.xj, ptr %i.x, align 8, !tbaa !13
  %i.xm = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.xn = getelementptr i8, ptr %0, i64 32
  store ptr %i.xm, ptr %i.xn, align 8, !tbaa !13
  %i.xo = load i32, ptr %i.g, align 4, !tbaa !7
  %i.xp = getelementptr i8, ptr %0, i64 40
  store i32 %i.xo, ptr %i.xp, align 8, !tbaa !13
  %i.xq = getelementptr i8, ptr %0, i64 44
  store i32 1, ptr %i.xq, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %.thread985

bb.kd:                                            ; preds = %.thread1003, %bb.jr, %bb.js
  %i.xr = phi ptr [ %i.xc, %.thread1003 ], [ %i.sz, %bb.jr ], [ %i.sz, %bb.js ] ; 4 uses
  %i.xs = icmp ult ptr %i.xr, %2
  br i1 %i.xs, label %bb.ke, label %.critedge980

bb.ke:                                            ; preds = %bb.kd
  %i.xt = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.xu = tail call i32 %i.xt(ptr noundef %i.xr, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %i.xv = icmp eq i32 %i.xu, 80
  br i1 %i.xv, label %bb.kf, label %.critedge980

bb.kf:                                            ; preds = %bb.ke
  %i.xw = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.xx = getelementptr i8, ptr %i.xw, i64 4
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !104
  %i.xz = and i32 %i.xy, 1073741824
  %.not929 = icmp eq i32 %i.xz, 0
  br i1 %.not929, label %.critedge980, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  %i.ya = load i32, ptr %i.s, align 8, !tbaa !70  ; 2 uses
  %i.yb = load i32, ptr %i.u, align 4, !tbaa !47
  %i.yc = icmp eq i32 %i.ya, %i.yb
  br i1 %i.yc, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.yd = tail call i32 @onigenc_mbclen(ptr noundef %i.xr, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kg, %bb.kh
  %i.ye = phi i32 [ %i.yd, %bb.kh ], [ %i.ya, %bb.kg ]
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr i8, ptr %i.xr, i64 %i.yf  ; 6 uses
  store ptr %i.yg, ptr %i.a, align 8, !tbaa !69
  %i.yh = icmp ult ptr %i.yg, %2
  br i1 %i.yh, label %bb.kj, label %.thread1006

bb.kj:                                            ; preds = %bb.ki
  %i.yi = load i32, ptr %i.s, align 8, !tbaa !70
  %i.yj = icmp eq i32 %i.yi, 1
  br i1 %i.yj, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.yk = load i8, ptr %i.yg, align 1, !tbaa !13
  %i.yl = zext i8 %i.yk to i32
  br label %bb.km

bb.kl:                                            ; preds = %bb.kj
  %i.ym = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.yn = tail call i32 %i.ym(ptr noundef %i.yg, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %.pre1226 = load i32, ptr %i.s, align 8, !tbaa !70
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %i.yo = phi i32 [ 1, %bb.kk ], [ %.pre1226, %bb.kl ] ; 2 uses
  %i.yp = phi i32 [ %i.yl, %bb.kk ], [ %i.yn, %bb.kl ]
  %i.yq = load i32, ptr %i.u, align 4, !tbaa !47
  %i.yr = icmp eq i32 %i.yo, %i.yq
  br i1 %i.yr, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.ys = tail call i32 @onigenc_mbclen(ptr noundef %i.yg, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.ko

bb.ko:                                            ; preds = %bb.km, %bb.kn
  %i.yt = phi i32 [ %i.ys, %bb.kn ], [ %i.yo, %bb.km ]
  %i.yu = sext i32 %i.yt to i64
  %i.yv = getelementptr i8, ptr %i.yg, i64 %i.yu  ; 2 uses
  store ptr %i.yv, ptr %i.a, align 8, !tbaa !69
  switch i32 %i.yp, label %bb.ks [
    i32 61, label %bb.kp
    i32 62, label %bb.kq
  ]

bb.kp:                                            ; preds = %bb.ko
  %i.yw = call fastcc i32 @fetch_named_backref_token(i32 noundef 40, ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef nonnull %3) ; 2 uses
  %i.yx = icmp slt i32 %i.yw, 0
  br i1 %i.yx, label %.thread1006, label %.thread1011

bb.kq:                                            ; preds = %bb.ko
  %i.yy = call fastcc i32 @fetch_name(i32 noundef 40, ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef %i.j, ptr noundef nonnull %3, ptr noundef %i.i, i32 noundef 0) ; 2 uses
  %i.yz = icmp slt i32 %i.yy, 0
  br i1 %i.yz, label %.thread1006, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  store i32 8, ptr %0, align 8, !tbaa !99
  store ptr %i.yv, ptr %i.x, align 8, !tbaa !13
  %i.za = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.zb = getelementptr i8, ptr %0, i64 32
  store ptr %i.za, ptr %i.zb, align 8, !tbaa !13
  %i.zc = load i32, ptr %i.i, align 4, !tbaa !7
  %i.zd = getelementptr i8, ptr %0, i64 40
  store i32 %i.zc, ptr %i.zd, align 8, !tbaa !13
  %i.ze = getelementptr i8, ptr %0, i64 44
  store i32 0, ptr %i.ze, align 4, !tbaa !13
  br label %.thread1011

.thread1006:                                      ; preds = %bb.ki, %bb.kq, %bb.kp
  %.8.ph = phi i32 [ -119, %bb.ki ], [ %i.yy, %bb.kq ], [ %i.yw, %bb.kp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br label %.loopexit

.thread1011:                                      ; preds = %bb.kp, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br label %.thread985

bb.ks:                                            ; preds = %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br label %.critedge980

.critedge980:                                     ; preds = %bb.ks, %bb.kd, %bb.kf, %bb.ke
  store ptr %i.at, ptr %i.a, align 8, !tbaa !69
  br label %.critedge966

.critedge966:                                     ; preds = %bb.ib, %bb.id, %bb.ic, %.critedge980
  %i.zf = load i32, ptr %i.n, align 4, !tbaa !106
  %i.zg = and i32 %i.zf, 4096
  %.not930 = icmp eq i32 %i.zg, 0
  br i1 %.not930, label %.thread985, label %bb.kt

bb.kt:                                            ; preds = %.critedge966
  store i32 14, ptr %0, align 8, !tbaa !99
  br label %.thread985

bb.ku:                                            ; preds = %bb.hq
  %i.zh = and i32 %i.rq, 4096
  %.not923 = icmp eq i32 %i.zh, 0
  br i1 %.not923, label %.thread985, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  store i32 15, ptr %0, align 8, !tbaa !99
  br label %.thread985

bb.kw:                                            ; preds = %bb.hq
  %i.zi = and i32 %i.rq, 8388608
  %.not921 = icmp eq i32 %i.zi, 0
  br i1 %.not921, label %.thread985, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  store i32 9, ptr %0, align 8, !tbaa !99
  %i.zj = load i32, ptr %3, align 8, !tbaa !81
  %i.zk = and i32 %i.zj, 8
  %.not922 = icmp eq i32 %i.zk, 0
  %i.zl = select i1 %.not922, i32 2, i32 1
  store i32 %i.zl, ptr %i.x, align 8, !tbaa !13
  br label %.thread985

bb.ky:                                            ; preds = %bb.hq
  %i.zm = and i32 %i.rq, 8388608
  %.not919 = icmp eq i32 %i.zm, 0
  br i1 %.not919, label %.thread985, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  store i32 9, ptr %0, align 8, !tbaa !99
  %i.zn = load i32, ptr %3, align 8, !tbaa !81
  %i.zo = and i32 %i.zn, 8
  %.not920 = icmp eq i32 %i.zo, 0
  %i.zp = select i1 %.not920, i32 32, i32 16
  store i32 %i.zp, ptr %i.x, align 8, !tbaa !13
  br label %.thread985

bb.la:                                            ; preds = %bb.hq
  %i.zq = and i32 %i.rq, 131072
  %.not918 = icmp eq i32 %i.zq, 0
  br i1 %.not918, label %.thread985, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  store i32 16, ptr %0, align 8, !tbaa !99
  br label %.thread985

bb.lc:                                            ; preds = %bb.hq
  %i.zr = load ptr, ptr %1, align 8, !tbaa !69
  %i.zs = getelementptr i8, ptr %3, i64 40
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !87
  %i.zu = icmp ugt ptr %i.zr, %i.zt
  br i1 %i.zu, label %bb.ld, label %.thread985

bb.ld:                                            ; preds = %bb.lc
  tail call fastcc void @CLOSE_BRACKET_WITHOUT_ESC_WARN(ptr noundef nonnull %3)
  br label %.thread985

bb.le:                                            ; preds = %bb.hq
  %i.zv = load i32, ptr %3, align 8, !tbaa !81
  %i.zw = and i32 %i.zv, 2
  %.not915 = icmp eq i32 %i.zw, 0
  br i1 %.not915, label %.thread985, label %.preheader

.preheader:                                       ; preds = %bb.le, %bb.lk
  %i.zx = phi ptr [ %i.aal, %bb.lk ], [ %i.at, %bb.le ] ; 6 uses
  %.not916 = icmp ult ptr %i.zx, %2
  br i1 %.not916, label %bb.lf, label %.backedge

bb.lf:                                            ; preds = %.preheader
  %i.zy = load i32, ptr %i.s, align 8, !tbaa !70
  %i.zz = icmp eq i32 %i.zy, 1
  br i1 %i.zz, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.aaa = load i8, ptr %i.zx, align 1, !tbaa !13
  %i.aab = zext i8 %i.aaa to i32
  br label %bb.li

bb.lh:                                            ; preds = %bb.lf
  %i.aac = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.aad = tail call i32 %i.aac(ptr noundef %i.zx, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %.pre1223 = load i32, ptr %i.s, align 8, !tbaa !70
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg
  %i.aae = phi i32 [ 1, %bb.lg ], [ %.pre1223, %bb.lh ] ; 2 uses
  %i.aaf = phi i32 [ %i.aab, %bb.lg ], [ %i.aad, %bb.lh ]
  %i.aag = load i32, ptr %i.u, align 4, !tbaa !47
  %i.aah = icmp eq i32 %i.aae, %i.aag
  br i1 %i.aah, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.aai = tail call i32 @onigenc_mbclen(ptr noundef %i.zx, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.lk

bb.lk:                                            ; preds = %bb.li, %bb.lj
  %i.aaj = phi i32 [ %i.aai, %bb.lj ], [ %i.aae, %bb.li ]
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr i8, ptr %i.zx, i64 %i.aak ; 3 uses
  store ptr %i.aal, ptr %i.a, align 8, !tbaa !69
  %i.aam = load ptr, ptr %i.ae, align 8, !tbaa !72
  %i.aan = tail call i32 %i.aam(i32 noundef %i.aaf, i32 noundef 0, ptr noundef nonnull %i.l) #25
  %.not917 = icmp eq i32 %i.aan, 0
  br i1 %.not917, label %.preheader, label %.backedge, !llvm.loop !112

.backedge:                                        ; preds = %.preheader, %bb.lk, %bb.iz, %bb.ll
  %.promoted11671171 = phi ptr [ %i.uf, %bb.iz ], [ %i.at, %bb.ll ], [ %i.aal, %bb.lk ], [ %i.zx, %.preheader ] ; 2 uses
  %i.aao = icmp ult ptr %.promoted11671171, %2
  br i1 %i.aao, label %bb.b, label %._crit_edge

bb.ll:                                            ; preds = %bb.hq, %bb.hq, %bb.hq, %bb.hq, %bb.hq
  %i.aap = load i32, ptr %3, align 8, !tbaa !81
  %i.aaq = and i32 %i.aap, 2
  %.not914 = icmp eq i32 %i.aaq, 0
  br i1 %.not914, label %.thread985, label %.backedge

.thread985:                                       ; preds = %bb.hi, %bb.hq, %bb.ll, %bb.le, %.thread, %.thread1011, %bb.kc, %.critedge975, %bb.hh, %.thread994, %bb.hx, %bb.ap, %bb.gy, %bb.gz, %bb.gw, %bb.gx, %bb.gu, %bb.gv, %.critedge, %bb.gs, %bb.gt, %bb.gk, %bb.gl, %bb.gd, %bb.ge, %bb.fe, %bb.fd, %bb.gc, %bb.ek, %bb.ej, %bb.er, %bb.es, %bb.ef, %bb.ei, %bb.dd, %bb.de, %bb.dr, %bb.dq, %bb.dc, %bb.cy, %bb.db, %bb.cx, %bb.ct, %bb.cs, %bb.cw, %bb.cu, %bb.cf, %bb.ce, %bb.cd, %bb.cb, %bb.bz, %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.an, %bb.aa, %bb.am, %bb.al, %bb.s, %bb.r, %bb.q, %bb.ec, %bb.dy, %bb.cc, %bb.ca, %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.lc, %bb.ld, %bb.la, %bb.ky, %bb.kw, %bb.ku, %.critedge966, %bb.hz, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.lb, %bb.kz, %bb.kx, %bb.kv, %bb.kt, %bb.ia, %.loopexit1015, %bb.hp
  %i.aar = load ptr, ptr %i.a, align 8, !tbaa !69
  store ptr %i.aar, ptr %1, align 8, !tbaa !69
  %i.aas = load i32, ptr %0, align 8, !tbaa !99
  br label %.loopexit

.critedge964:                                     ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.im, %bb.ja, %.thread1006, %.thread1000, %.critedge975.thread, %bb.gb, %bb.hw, %.critedge964, %bb.fb, %bb.er, %bb.ee, %bb.dw, %bb.dx, %bb.dh, %bb.da, %bb.cz, %bb.cv, %bb.cl, %bb.cj, %bb.ao, %bb.j, %bb.dj, %.thread985, %._crit_edge
  %.9 = phi i32 [ %i.aas, %.thread985 ], [ %i.rd, %.critedge964 ], [ %i.sh, %bb.hw ], [ %.5.ph, %.critedge975.thread ], [ %i.xk, %.thread1000 ], [ %.8.ph, %.thread1006 ], [ %i.ne, %bb.fb ], [ -104, %bb.j ], [ %i.dq, %bb.ao ], [ -401, %bb.cj ], [ -212, %bb.cl ], [ -200, %bb.cv ], [ -211, %bb.cz ], [ -200, %bb.da ], [ -212, %bb.dj ], [ -208, %bb.dw ], [ -401, %bb.dh ], [ -200, %bb.ee ], [ %i.mk, %bb.er ], [ %i.pc, %bb.gb ], [ 0, %._crit_edge ], [ -208, %bb.dx ], [ -118, %bb.ja ], [ -118, %bb.im ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.9
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @parse_subexp(ptr noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 16) %2, ptr noundef nonnull captures(none) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %0, align 8, !tbaa !90
  %i.b = getelementptr i8, ptr %5, i64 176        ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !113
  %i.d = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !113
  %i.e = load i32, ptr @ParseDepthLimit, align 4, !tbaa !7
  %i.f = icmp ugt i32 %i.d, %i.e
  br i1 %i.f, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call fastcc i32 @parse_branch(ptr noundef %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) ; 4 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !90
  tail call void @onig_node_free(ptr noundef %i.i)
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.g, %2
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !90
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.l = icmp eq i32 %i.g, 13
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.n = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 9 uses
  %i.o = icmp eq ptr %i.n, null
end_hunk_0
begin_hunk_1_@scan_unsigned_hexadecimal_number:bb.a
  %.056.lcssa = phi i32 [ 0, %bb.a ], [ %.0566687, %bb.h ], [ %i.ao, %bb.n ], [ %i.ao, %bb.b ]
  %.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %.06885, %bb.h ], [ %i.v, %bb.n ], [ %i.v, %bb.b ]
  %.155 = phi i32 [ %3, %bb.a ], [ %.0546786, %bb.h ], [ %i.h, %bb.n ], [ -1, %bb.b ]
  %i.aq = icmp sgt i32 %.155, %i.b
  br i1 %i.aq, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.critedge
  store ptr %.0.lcssa, ptr %0, align 8, !tbaa !69
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.critedge, %bb.o
  %.053 = phi i32 [ %.056.lcssa, %bb.o ], [ -2, %.critedge ], [ -1, %bb.k ]
  ret i32 %.053
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @scan_unsigned_octal_number(ptr noundef nonnull captures(none) %0, ptr noundef %1, i32 noundef range(i32 2, 12) %2, ptr noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 3 uses
  %i.b = icmp ult ptr %i.a, %1
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16         ; 2 uses
  %i.d = getelementptr i8, ptr %3, i64 32
  %i.e = getelementptr i8, ptr %3, i64 20
  %i.f = getelementptr i8, ptr %3, i64 88
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph
  %.in = phi i32 [ %2, %.lr.ph ], [ %i.g, %bb.i ]
  %.0354358 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %bb.i ] ; 3 uses
  %.04457 = phi ptr [ %i.a, %.lr.ph ], [ %i.u, %bb.i ] ; 5 uses
  %i.g = add nsw i32 %.in, -1                     ; 2 uses
  %i.h = load i32, ptr %i.c, align 8, !tbaa !70
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %.04457, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.m = tail call i32 %i.l(ptr noundef %.04457, ptr noundef nonnull %1, ptr noundef nonnull %3) #25
  %.pre = load i32, ptr %i.c, align 8, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ 1, %bb.c ], [ %.pre, %bb.d ]   ; 2 uses
  %i.o = phi i32 [ %i.k, %bb.c ], [ %i.m, %bb.d ] ; 3 uses
  %i.p = load i32, ptr %i.e, align 4, !tbaa !47
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @onigenc_mbclen(ptr noundef %.04457, ptr noundef nonnull %1, ptr noundef nonnull %3) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.s = phi i32 [ %i.r, %bb.f ], [ %i.n, %bb.e ]
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %.04457, i64 %i.t  ; 3 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.w = tail call i32 %i.v(i32 noundef %i.o, i32 noundef 4, ptr noundef nonnull %3) #25
  %i.x = icmp ne i32 %i.w, 0
  %i.y = icmp ult i32 %i.o, 56
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.z = add nsw i32 %i.o, -48                    ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = sub nsw i64 2147483647, %i.aa
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = zext i32 %.0354358 to i64
  %i.ae = icmp samesign ult i64 %i.ac, %i.ad
  br i1 %i.ae, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = shl i32 %.0354358, 3
  %i.ag = add i32 %i.z, %i.af                     ; 2 uses
  %i.ah = icmp uge ptr %i.u, %1
  %.not = icmp eq i32 %i.g, 0
  %or.cond59 = select i1 %i.ah, i1 true, i1 %.not
  br i1 %or.cond59, label %.critedge, label %bb.b, !llvm.loop !117

.critedge:                                        ; preds = %bb.i, %bb.g, %bb.a
  %.035.lcssa = phi i32 [ 0, %bb.a ], [ %i.ag, %bb.i ], [ %.0354358, %bb.g ]
  %.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.u, %bb.i ], [ %.04457, %bb.g ]
  store ptr %.0.lcssa, ptr %0, align 8, !tbaa !69
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.critedge
  %.034 = phi i32 [ %.035.lcssa, %.critedge ], [ -1, %bb.h ]
  ret i32 %.034
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -217, 1) i32 @fetch_named_backref_token(i32 noundef %0, ptr noundef nonnull writeonly captures(none) %1, ptr noundef nonnull captures(none) %2, ptr noundef %3, ptr noundef captures(none) %4) unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.st_str_end_key, align 8     ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = getelementptr i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !69     ; 11 uses
  %i.f = getelementptr i8, ptr %1, i64 24         ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 48
  %i.h = getelementptr i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97   ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  switch i32 %0, label %bb.e [
    i32 60, label %get_name_end_code_point.exit.i
    i32 39, label %bb.b
    i32 40, label %bb.c
    i32 123, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %get_name_end_code_point.exit.i

bb.c:                                             ; preds = %bb.a
  br label %get_name_end_code_point.exit.i

bb.d:                                             ; preds = %bb.a
  br label %get_name_end_code_point.exit.i

bb.e:                                             ; preds = %bb.a
  br label %get_name_end_code_point.exit.i

get_name_end_code_point.exit.i:                   ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i.i = phi i32 [ 0, %bb.e ], [ 125, %bb.d ], [ 39, %bb.b ], [ 41, %bb.c ], [ 62, %bb.a ] ; 5 uses
  %i.j = icmp ult ptr %i.e, %3
  br i1 %i.j, label %bb.f, label %.thread98

bb.f:                                             ; preds = %get_name_end_code_point.exit.i
  %i.k = getelementptr i8, ptr %i.i, i64 16       ; 10 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !70
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = load i8, ptr %i.e, align 1, !tbaa !13
  %i.o = zext i8 %i.n to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !71
  %i.r = tail call i32 %i.q(ptr noundef %i.e, ptr noundef nonnull %3, ptr noundef nonnull %i.i) #25, !inline_history !118
  %.pre.i = load i32, ptr %i.k, align 8, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = phi i32 [ 1, %bb.g ], [ %.pre.i, %bb.h ] ; 2 uses
  %i.t = phi i32 [ %i.o, %bb.g ], [ %i.r, %bb.h ] ; 4 uses
  %i.u = getelementptr i8, ptr %i.i, i64 20       ; 5 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !47
  %i.w = icmp eq i32 %i.s, %i.v
  br i1 %i.w, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = tail call i32 @onigenc_mbclen(ptr noundef %i.e, ptr noundef nonnull %3, ptr noundef nonnull %i.i) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = phi i32 [ %i.x, %bb.j ], [ %i.s, %bb.i ]
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.e, i64 %i.z    ; 4 uses
  %i.ab = icmp eq i32 %i.t, %.0.i.i
  br i1 %i.ab, label %.thread98, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %i.i, i64 88      ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.ae = tail call i32 %i.ad(i32 noundef %i.t, i32 noundef 4, ptr noundef nonnull %i.i) #25, !inline_history !118
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.af = icmp eq i32 %i.t, 45
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.0.i = phi ptr [ %i.aa, %bb.n ], [ %i.e, %bb.m ], [ %i.e, %bb.l ]
  %.0120.i = phi i32 [ 2, %bb.n ], [ 0, %bb.m ], [ 1, %bb.l ] ; 2 uses
  %.0117.i = phi i32 [ -1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ]
  %.not139177.i = icmp ult ptr %i.aa, %3
  br i1 %.not139177.i, label %.lr.ph.i, label %select.unfold.loopexit.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.ag = getelementptr i8, ptr %i.i, i64 32
  br label %bb.p

bb.p:                                             ; preds = %bb.y, %.lr.ph.i
  %.1121.fr179.i = phi i32 [ 0, %.lr.ph.i ], [ %.1112.i, %bb.y ] ; 3 uses
  %.0111178.i = phi i32 [ %.0120.i, %.lr.ph.i ], [ %.2122.i, %bb.y ] ; 3 uses
  %i.ah = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.av, %bb.y ] ; 6 uses
  %i.ai = load i32, ptr %i.k, align 8, !tbaa !70
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.al = zext i8 %i.ak to i32
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !71
  %i.an = tail call i32 %i.am(ptr noundef %i.ah, ptr noundef nonnull %3, ptr noundef nonnull %i.i) #25, !inline_history !118
  %.pre192.i.a = load i32, ptr %i.k, align 8, !tbaa !70
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ao = phi i32 [ 1, %bb.q ], [ %.pre192.i.a, %bb.r ] ; 2 uses
  %i.ap = phi i32 [ %i.al, %bb.q ], [ %i.an, %bb.r ]
  %.fr.i = freeze i32 %i.ap                       ; 7 uses
  %i.aq = load i32, ptr %i.u, align 4, !tbaa !47
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = tail call i32 @onigenc_mbclen(ptr noundef %i.ah, ptr noundef nonnull %3, ptr noundef nonnull %i.i) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.at = phi i32 [ %i.as, %bb.t ], [ %i.ao, %bb.s ]
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr i8, ptr %i.ah, i64 %i.au  ; 5 uses
  %i.aw = icmp eq i32 %.fr.i, %.0.i.i
  br i1 %i.aw, label %bb.v, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.u
  switch i32 %.fr.i, label %bb.w [
    i32 45, label %bb.v
    i32 43, label %bb.v
    i32 41, label %bb.v
  ]

bb.v:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.u
  %.fr.lcssa.i = phi i32 [ %.fr.i, %switch.early.test.i ], [ %.fr.i, %switch.early.test.i ], [ %.fr.i, %switch.early.test.i ], [ %.0.i.i, %bb.u ]
  store ptr %i.av, ptr %i.b, align 8
  %i.ax = icmp eq i32 %.0111178.i, 2
  %spec.select154 = select i1 %i.ax, i32 -215, i32 %.1121.fr179.i
  br label %select.unfold.i

bb.w:                                             ; preds = %switch.early.test.i
  %.not140.i = icmp eq i32 %.0111178.i, 0
  br i1 %.not140.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.az = tail call i32 %i.ay(i32 noundef %.fr.i, i32 noundef 4, ptr noundef nonnull %i.i) #25, !inline_history !118
  %.not141.i = icmp ne i32 %i.az, 0               ; 2 uses
  %..i = zext i1 %.not141.i to i32
  %..0111.i = select i1 %.not141.i, i32 %.1121.fr179.i, i32 -215
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.2122.i = phi i32 [ %..i, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %.1112.i = phi i32 [ %..0111.i, %bb.x ], [ %.1121.fr179.i, %bb.w ] ; 2 uses
  %.not139.i = icmp ult ptr %i.av, %3
  br i1 %.not139.i, label %bb.p, label %select.unfold.loopexit.i, !llvm.loop !119

select.unfold.loopexit.i:                         ; preds = %bb.y, %bb.o
  %.lcssa.i = phi ptr [ %i.aa, %bb.o ], [ %i.av, %bb.y ] ; 2 uses
  %.1121.lcssa.i = phi i32 [ %.0120.i, %bb.o ], [ %.2122.i, %bb.y ]
  %.0118.lcssa.i = phi i32 [ %i.t, %bb.o ], [ %.fr.i, %bb.y ]
  %.0114.lcssa.i = phi ptr [ %3, %bb.o ], [ %i.ah, %bb.y ]
  %.0111.lcssa.i = phi i32 [ 0, %bb.o ], [ %.1112.i, %bb.y ]
  store ptr %.lcssa.i, ptr %i.b, align 8
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.v, %select.unfold.loopexit.i
  %i.ba = phi ptr [ %i.av, %bb.v ], [ %.lcssa.i, %select.unfold.loopexit.i ] ; 10 uses
  %.1121.fr172.i = phi i32 [ %.0111178.i, %bb.v ], [ %.1121.lcssa.i, %select.unfold.loopexit.i ]
  %.1119.i = phi i32 [ %.fr.lcssa.i, %bb.v ], [ %.0118.lcssa.i, %select.unfold.loopexit.i ] ; 3 uses
  %.1115.i = phi ptr [ %i.ah, %bb.v ], [ %.0114.lcssa.i, %select.unfold.loopexit.i ] ; 4 uses
  %.2.i = phi i32 [ %spec.select154, %bb.v ], [ %.0111.lcssa.i, %select.unfold.loopexit.i ] ; 2 uses
  %i.bb = icmp eq i32 %.2.i, 0
  br i1 %i.bb, label %bb.z, label %.thread.i.preheader

bb.z:                                             ; preds = %select.unfold.i
  %.not142.i = icmp eq i32 %.1119.i, %.0.i.i
  br i1 %.not142.i, label %.thread.i.preheader, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = icmp eq i32 %.1119.i, 45
  switch i32 %.1119.i, label %.thread.i.preheader [
    i32 45, label %bb.ab
    i32 43, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.bd = icmp ult ptr %i.ba, %3
  br i1 %i.bd, label %bb.ac, label %.thread.i.preheader

bb.ac:                                            ; preds = %bb.ab
  %i.be = load i32, ptr %i.k, align 8, !tbaa !70
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bg = load i8, ptr %i.ba, align 1, !tbaa !13
  %i.bh = zext i8 %i.bg to i32
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.bi = getelementptr i8, ptr %i.i, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !71
  %i.bk = tail call i32 %i.bj(ptr noundef %i.ba, ptr noundef nonnull %3, ptr noundef nonnull %i.i) #25, !inline_history !118
  %.pre193.i.a = load i32, ptr %i.k, align 8, !tbaa !70
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bl = phi i32 [ 1, %bb.ad ], [ %.pre193.i.a, %bb.ae ] ; 2 uses
  %i.bm = phi i32 [ %i.bh, %bb.ad ], [ %i.bk, %bb.ae ]
  %i.bn = load i32, ptr %i.u, align 4, !tbaa !47
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bp = tail call i32 @onigenc_mbclen(ptr noundef %i.ba, ptr noundef nonnull %3, ptr noundef nonnull %i.i) #25
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bq = phi i32 [ %i.bp, %bb.ag ], [ %i.bl, %bb.af ]
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr %i.ba, i64 %i.br  ; 2 uses
  store ptr %i.bs, ptr %i.b, align 8, !tbaa !69
  %i.bt = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.bu = tail call i32 %i.bt(i32 noundef %i.bm, i32 noundef 4, ptr noundef nonnull %i.i) #25, !inline_history !118
  %.not143.i = icmp eq i32 %i.bu, 0
  br i1 %.not143.i, label %.thread.i.preheader, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !69
  %i.bv = call i32 @onig_scan_unsigned_number(ptr noundef nonnull %i.b, ptr noundef nonnull %3, ptr noundef nonnull %i.i) ; 3 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %.thread98, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bx = sub nsw i32 0, %i.bv
  %i.by = select i1 %i.bc, i32 %i.bx, i32 %i.bv
  store i32 %i.by, ptr %i.g, align 4, !tbaa !7
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !69  ; 6 uses
  %i.ca = icmp ult ptr %i.bz, %3
  br i1 %i.ca, label %bb.ak, label %.thread.i.preheader

bb.ak:                                            ; preds = %bb.aj
  %i.cb = load i32, ptr %i.k, align 8, !tbaa !70
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cd = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.ce = zext i8 %i.cd to i32
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.cf = getelementptr i8, ptr %i.i, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !71
  %i.ch = tail call i32 %i.cg(ptr noundef %i.bz, ptr noundef nonnull %3, ptr noundef nonnull %i.i) #25, !inline_history !118
  %.pre194.i = load i32, ptr %i.k, align 8, !tbaa !70
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ci = phi i32 [ 1, %bb.al ], [ %.pre194.i, %bb.am ] ; 2 uses
  %i.cj = phi i32 [ %i.ce, %bb.al ], [ %i.ch, %bb.am ]
  %i.ck = load i32, ptr %i.u, align 4, !tbaa !47
  %i.cl = icmp eq i32 %i.ci, %i.ck
  br i1 %i.cl, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cm = tail call i32 @onigenc_mbclen(ptr noundef %i.bz, ptr noundef nonnull %3, ptr noundef nonnull %i.i) #25
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.cn = phi i32 [ %i.cm, %bb.ao ], [ %i.ci, %bb.an ]
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr i8, ptr %i.bz, i64 %i.co  ; 2 uses
  store ptr %i.cp, ptr %i.b, align 8, !tbaa !69
  %i.cq = icmp eq i32 %i.cj, %.0.i.i              ; 2 uses
  %spec.select = select i1 %i.cq, ptr %.1115.i, ptr %3
  %spec.select161 = select i1 %i.cq, i32 0, i32 -215
  br label %.thread.i.preheader

.thread.i.preheader:                              ; preds = %select.unfold.i, %bb.z, %bb.ab, %bb.aj, %bb.ah, %bb.aa, %bb.ap
  %.ph = phi ptr [ %i.bs, %bb.ah ], [ %i.bz, %bb.aj ], [ %i.ba, %bb.aa ], [ %i.ba, %bb.ab ], [ %i.ba, %select.unfold.i ], [ %i.cp, %bb.ap ], [ %i.ba, %bb.z ] ; 2 uses
  %.3126.i.ph = phi i32 [ 0, %bb.ah ], [ 1, %bb.aj ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %select.unfold.i ], [ 1, %bb.ap ], [ 0, %bb.z ] ; 2 uses
  %.2116.i.ph = phi ptr [ %3, %bb.ah ], [ %3, %bb.aj ], [ %3, %bb.aa ], [ %.1115.i, %bb.ab ], [ %.1115.i, %select.unfold.i ], [ %spec.select, %bb.ap ], [ %.1115.i, %bb.z ]
  %.4.i.ph = phi i32 [ -215, %bb.ah ], [ -215, %bb.aj ], [ -215, %bb.aa ], [ -216, %bb.ab ], [ %.2.i, %select.unfold.i ], [ %spec.select161, %bb.ap ], [ 0, %bb.z ]
  %.not144.i.peel = icmp eq i32 %.1121.fr172.i, 0
  %i.cr = getelementptr i8, ptr %i.i, i64 32
  br label %.thread.i.outer

.thread.i.outer:                                  ; preds = %.thread.i.preheader, %bb.az
  %.2151.i.ph = phi ptr [ %.0.i, %.thread.i.preheader ], [ %.3152.i, %bb.az ] ; 2 uses
  %.2116.i.ph165 = phi ptr [ %.2116.i.ph, %.thread.i.preheader ], [ %3, %bb.az ] ; 7 uses
  %.4.i.ph166 = phi i32 [ %.4.i.ph, %.thread.i.preheader ], [ -215, %bb.az ] ; 2 uses
  %i.cs = icmp eq i32 %.4.i.ph166, 0
  br i1 %i.cs, label %bb.aq, label %.loopexit182

bb.aq:                                            ; preds = %.thread.i.outer
  br i1 %.not144.i.peel, label %fetch_name_with_level.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not37.i.i.peel = icmp ult ptr %.2151.i.ph, %.2116.i.ph165
  br i1 %.not37.i.i.peel, label %.lr.ph.i.i, label %.loopexit182

.lr.ph.i.i:                                       ; preds = %bb.ar, %bb.ay
  %.039.i.i = phi ptr [ %i.dg, %bb.ay ], [ %.2151.i.ph, %bb.ar ] ; 5 uses
  %.03238.i.i = phi i32 [ %i.dq, %bb.ay ], [ 0, %bb.ar ] ; 3 uses
  %i.ct = load i32, ptr %i.k, align 8, !tbaa !70
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.i.i
  %i.cv = load i8, ptr %.039.i.i, align 1, !tbaa !13
  %i.cw = zext i8 %i.cv to i32
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph.i.i
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !71
  %i.cy = tail call i32 %i.cx(ptr noundef %.039.i.i, ptr noundef nonnull %.2116.i.ph165, ptr noundef nonnull %i.i) #25, !inline_history !120
  %.pre.i.i = load i32, ptr %i.k, align 8, !tbaa !70
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.cz = phi i32 [ 1, %bb.as ], [ %.pre.i.i, %bb.at ] ; 2 uses
  %i.da = phi i32 [ %i.cw, %bb.as ], [ %i.cy, %bb.at ] ; 2 uses
  %i.db = load i32, ptr %i.u, align 4, !tbaa !47
  %i.dc = icmp eq i32 %i.cz, %i.db
  br i1 %i.dc, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dd = tail call i32 @onigenc_mbclen(ptr noundef %.039.i.i, ptr noundef nonnull %.2116.i.ph165, ptr noundef nonnull %i.i) #25
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.de = phi i32 [ %i.dd, %bb.av ], [ %i.cz, %bb.au ]
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr i8, ptr %.039.i.i, i64 %i.df ; 3 uses
  %i.dh = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.di = tail call i32 %i.dh(i32 noundef %i.da, i32 noundef 4, ptr noundef nonnull %i.i) #25, !inline_history !120
  %.not34.i.i = icmp eq i32 %i.di, 0
  br i1 %.not34.i.i, label %onig_scan_unsigned_number.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dj = add i32 %i.da, -48                      ; 2 uses
  %i.dk = zext i32 %i.dj to i64
  %i.dl = sub nsw i64 2147483647, %i.dk
  %i.dm = udiv i64 %i.dl, 10
  %i.dn = zext i32 %.03238.i.i to i64
  %i.do = icmp samesign ult i64 %i.dm, %i.dn
  br i1 %i.do, label %.thread98, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dp = mul i32 %.03238.i.i, 10
  %i.dq = add i32 %i.dj, %i.dp                    ; 2 uses
  %.not.i.i = icmp ult ptr %i.dg, %.2116.i.ph165
  br i1 %.not.i.i, label %.lr.ph.i.i, label %onig_scan_unsigned_number.exit.i, !llvm.loop !73

onig_scan_unsigned_number.exit.i:                 ; preds = %bb.ay, %bb.aw
  %.3152.i = phi ptr [ %i.dg, %bb.ay ], [ %.039.i.i, %bb.aw ]
  %.031.i.i = phi i32 [ %i.dq, %bb.ay ], [ %.03238.i.i, %bb.aw ] ; 3 uses
  %i.dr = icmp slt i32 %.031.i.i, 0
  br i1 %i.dr, label %.thread98, label %bb.az

bb.az:                                            ; preds = %onig_scan_unsigned_number.exit.i
  %i.ds = icmp eq i32 %.031.i.i, 0
  br i1 %i.ds, label %.thread.i.outer, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dt = mul nsw i32 %.031.i.i, %.0117.i
  br label %fetch_name_with_level.exit
end_hunk_1
begin_hunk_2_@parse_exp:bb.a
node_linebreak.exit.thread:                       ; preds = %bb.ey, %node_new_str_raw.exit.thread.i, %bb.ez
  %.0.i344.ph = phi i32 [ %i.oy, %bb.ez ], [ -5, %node_new_str_raw.exit.thread.i ], [ %i.or, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br label %node_new_quantifier.exit380

node_linebreak.exit:                              ; preds = %bb.fk
  store <4 x i32> <i32 6, i32 0, i32 4, i32 0>, ptr %i.ql, align 1
  %i.qn = getelementptr i8, ptr %i.ql, i64 16
  store i32 0, ptr %i.qn, align 8, !tbaa !13
  %i.qo = getelementptr i8, ptr %i.ql, i64 24
  %i.qp = getelementptr i8, ptr %i.ql, i64 20
  store i32 -1, ptr %i.qp, align 4, !tbaa !13
  %i.qq = getelementptr i8, ptr %i.ql, i64 52
  store i32 0, ptr %i.qq, align 4, !tbaa !13
  store ptr %i.ql, ptr %0, align 8, !tbaa !90
  store ptr %i.qh, ptr %i.qo, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br label %.thread429

bb.fl:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.g, i8 0, i64 144, i1 false), !tbaa !90
  %.1249.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 4 uses
  %.1249.sroa.gep399.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.qr = getelementptr i8, ptr %5, i64 8         ; 9 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !97 ; 2 uses
  %i.qt = getelementptr i8, ptr %i.qs, i64 48
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !130
  %i.qv = call i32 %i.qu(i32 noundef 13, ptr noundef nonnull %i.f, ptr noundef %i.qs) #25, !inline_history !133 ; 3 uses
  %i.qw = icmp slt i32 %i.qv, 0
  br i1 %i.qw, label %.thread484.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.qx = load ptr, ptr %i.qr, align 8, !tbaa !97 ; 2 uses
  %i.qy = getelementptr i8, ptr %i.qx, i64 48
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !130
  %i.ra = zext nneg i32 %i.qv to i64
  %i.rb = getelementptr i8, ptr %i.f, i64 %i.ra   ; 2 uses
  %i.rc = call i32 %i.qz(i32 noundef 10, ptr noundef %i.rb, ptr noundef %i.qx) #25, !inline_history !133 ; 7 uses
  %i.rd = icmp slt i32 %i.rc, 0
  br i1 %i.rd, label %.thread484.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.re = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 10 uses
  %i.rf = icmp eq ptr %i.re, null
  br i1 %i.rf, label %node_new_str_raw.exit.thread.i347, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.rg = zext nneg i32 %i.rc to i64
  %i.rh = getelementptr i8, ptr %i.rb, i64 %i.rg
  store i32 0, ptr %i.re, align 1
  %i.ri = getelementptr i8, ptr %i.re, i64 28
  store i32 0, ptr %i.ri, align 4, !tbaa !13
  %i.rj = getelementptr i8, ptr %i.re, i64 24     ; 3 uses
  store i32 0, ptr %i.rj, align 8, !tbaa !13
  %i.rk = getelementptr i8, ptr %i.re, i64 32     ; 2 uses
  %i.rl = getelementptr i8, ptr %i.re, i64 8
  store ptr %i.rk, ptr %i.rl, align 8, !tbaa !13
  %i.rm = getelementptr i8, ptr %i.re, i64 16
  store ptr %i.rk, ptr %i.rm, align 8, !tbaa !13
  %i.rn = call i32 @onig_node_str_cat(ptr noundef nonnull %i.re, ptr noundef nonnull %i.f, ptr noundef %i.rh)
  %.not.i.i.i346 = icmp eq i32 %i.rn, 0
  br i1 %.not.i.i.i346, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @onig_node_free(ptr noundef nonnull %i.re)
  br label %node_new_str_raw.exit.thread.i347

node_new_str_raw.exit.thread.i347:                ; preds = %bb.fp, %bb.fn
  store ptr null, ptr %i.g, align 16, !tbaa !90
  br label %.thread484.i

bb.fq:                                            ; preds = %bb.fo
  %i.ro = load i32, ptr %i.rj, align 8, !tbaa !13
  %i.rp = or i32 %i.ro, 1
  store i32 %i.rp, ptr %i.rj, align 8, !tbaa !13
  store ptr %i.re, ptr %i.g, align 16, !tbaa !90
  %i.rq = load ptr, ptr %i.qr, align 8, !tbaa !97 ; 2 uses
  %i.rr = getelementptr i8, ptr %i.rq, i64 132
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !132
  %i.rt = and i32 %i.rs, 1
  %.not.i350 = icmp eq i32 %i.rt, 0
  br i1 %.not.i350, label %.thread494.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ru = getelementptr i8, ptr %i.rq, i64 80
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !134
  %i.rw = call i32 %i.rv(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull @.str.8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 29)) #25, !inline_history !135
  %i.rx = icmp slt i32 %i.rw, 0
  br i1 %i.rx, label %propname2ctype.exit.thread.i, label %propname2ctype.exit.i

propname2ctype.exit.thread.i:                     ; preds = %bb.fr
  %i.ry = getelementptr i8, ptr %5, i64 56
  store ptr @.str.8, ptr %i.ry, align 8, !tbaa !95
  %i.rz = getelementptr i8, ptr %5, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.8, i64 29), ptr %i.rz, align 8, !tbaa !96
  br label %.thread484.i

propname2ctype.exit.i:                            ; preds = %bb.fr
  %i.sa = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 7 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %node_new_cclass.exit.thread.i, label %bb.fs

node_new_cclass.exit.thread.i:                    ; preds = %propname2ctype.exit.i
  store ptr null, ptr %.1249.sroa.gep399.i, align 8, !tbaa !90
  br label %.thread484.i

bb.fs:                                            ; preds = %propname2ctype.exit.i
  store i32 1, ptr %i.sa, align 1
  %i.sc = getelementptr i8, ptr %i.sa, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.sc, i8 0, i64 44, i1 false)
  store ptr %i.sa, ptr %.1249.sroa.gep399.i, align 8, !tbaa !90
  %i.sd = load ptr, ptr %i.qr, align 8, !tbaa !97
  %i.se = getelementptr i8, ptr %i.sd, i64 80
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !134
  %i.sg = call i32 %i.sf(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull @.str.9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.9, i64 30)) #25, !inline_history !136 ; 3 uses
  %i.sh = icmp slt i32 %i.sg, 0
  br i1 %i.sh, label %add_property_to_cc.exit.thread.i, label %add_property_to_cc.exit.i

add_property_to_cc.exit.thread.i:                 ; preds = %bb.fs
  %i.si = getelementptr i8, ptr %5, i64 56
  store ptr @.str.9, ptr %i.si, align 8, !tbaa !95
  %i.sj = getelementptr i8, ptr %5, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.9, i64 30), ptr %i.sj, align 8, !tbaa !96
  br label %.thread484.i

add_property_to_cc.exit.i:                        ; preds = %bb.fs
  %i.sk = call fastcc i32 @add_ctype_to_cc(ptr noundef nonnull %i.sa, i32 noundef %i.sg, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) ; 2 uses
  %.not320.i = icmp eq i32 %i.sk, 0
  br i1 %.not320.i, label %bb.ft, label %.thread484.i

bb.ft:                                            ; preds = %add_property_to_cc.exit.i
  %i.sl = load ptr, ptr %i.qr, align 8, !tbaa !97
  %i.sm = getelementptr i8, ptr %i.sl, i64 20
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !47
  %i.so = icmp sgt i32 %i.sn, 1
  br i1 %i.so, label %bb.fu, label %bb.fw

bb.fu:                                            ; preds = %bb.ft
  %i.sp = getelementptr i8, ptr %i.sa, i64 40     ; 2 uses
  %i.sq = call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.sp, ptr noundef nonnull %5, i32 noundef 10, i32 noundef 10, i32 noundef 1) ; 2 uses
  %.not321.i = icmp eq i32 %i.sq, 0
  br i1 %.not321.i, label %bb.fv, label %.thread484.i

bb.fv:                                            ; preds = %bb.fu
  %i.sr = call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.sp, ptr noundef nonnull %5, i32 noundef 13, i32 noundef 13, i32 noundef 1) ; 2 uses
  %.not322.i = icmp eq i32 %i.sr, 0
  br i1 %.not322.i, label %bb.fx, label %.thread484.i

bb.fw:                                            ; preds = %bb.ft
  %i.ss = getelementptr i8, ptr %i.sa, i64 8      ; 2 uses
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !7
  %i.su = or i32 %i.st, 9216
  store i32 %i.su, ptr %i.ss, align 8, !tbaa !7
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.sv = call fastcc i32 @quantify_property_node(ptr noundef nonnull %.1249.sroa.gep.i, ptr noundef nonnull %5, ptr noundef nonnull @.str.10, i8 noundef signext 42) ; 2 uses
  %.not323.i = icmp eq i32 %i.sv, 0
  br i1 %.not323.i, label %bb.fy, label %.thread484.i

bb.fy:                                            ; preds = %bb.fx
  %i.sw = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 5 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.sy = call fastcc i32 @quantify_property_node(ptr noundef nonnull %i.sx, ptr noundef nonnull %5, ptr noundef nonnull @.str.11, i8 noundef signext 42) ; 2 uses
  %.not324.i = icmp eq i32 %i.sy, 0
  br i1 %.not324.i, label %bb.fz, label %.thread484.i

bb.fz:                                            ; preds = %bb.fy
  %i.sz = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 4 uses
  %i.ta = call fastcc i32 @quantify_property_node(ptr noundef nonnull %i.sz, ptr noundef nonnull %5, ptr noundef nonnull @.str.12, i8 noundef signext 43) ; 2 uses
  %.not325.i = icmp eq i32 %i.ta, 0
  br i1 %.not325.i, label %bb.ga, label %.thread484.i

bb.ga:                                            ; preds = %bb.fz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 6 uses
  %i.tc = call fastcc i32 @create_property_node(ptr noundef nonnull %i.tb, ptr noundef nonnull %5, ptr noundef nonnull @.str.13) ; 2 uses
  %.not326.i = icmp eq i32 %i.tc, 0
  br i1 %.not326.i, label %bb.gb, label %.thread484.i

bb.gb:                                            ; preds = %bb.ga
  %i.td = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 8 uses
  %i.te = call fastcc i32 @quantify_property_node(ptr noundef nonnull %i.td, ptr noundef nonnull %5, ptr noundef nonnull @.str.12, i8 noundef signext 42) ; 2 uses
  %.not327.i = icmp eq i32 %i.te, 0
  br i1 %.not327.i, label %bb.gc, label %.thread484.i

bb.gc:                                            ; preds = %bb.gb
  %i.tf = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.tg = call fastcc i32 @create_node_from_array(i32 noundef 0, ptr noundef nonnull %i.tf, ptr noundef nonnull %i.tb) ; 2 uses
  %.not328.i = icmp eq i32 %i.tg, 0
  br i1 %.not328.i, label %bb.gd, label %.thread484.i

bb.gd:                                            ; preds = %bb.gc
  %i.th = call fastcc i32 @create_property_node(ptr noundef nonnull %i.tb, ptr noundef nonnull %5, ptr noundef nonnull @.str.14) ; 2 uses
  %.not329.i = icmp eq i32 %i.th, 0
  br i1 %.not329.i, label %bb.ge, label %.thread484.i

bb.ge:                                            ; preds = %bb.gd
  %i.ti = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.tj = call fastcc i32 @create_node_from_array(i32 noundef 1, ptr noundef nonnull %i.ti, ptr noundef nonnull %i.sz) ; 2 uses
  %.not330.i = icmp eq i32 %i.tj, 0
  br i1 %.not330.i, label %.thread413.i, label %.thread484.i

.thread413.i:                                     ; preds = %bb.ge
  %i.tk = call fastcc i32 @quantify_property_node(ptr noundef nonnull %i.sz, ptr noundef nonnull %5, ptr noundef nonnull @.str.15, i8 noundef signext 42) ; 2 uses
  %.not331.i = icmp eq i32 %i.tk, 0
  br i1 %.not331.i, label %bb.gf, label %.thread484.i

bb.gf:                                            ; preds = %.thread413.i
  %i.tl = call fastcc i32 @create_node_from_array(i32 noundef 0, ptr noundef nonnull %i.sw, ptr noundef nonnull %i.sx) ; 2 uses
  %.not332.i = icmp eq i32 %i.tl, 0
  br i1 %.not332.i, label %bb.gg, label %.thread484.i

bb.gg:                                            ; preds = %bb.gf
  %i.tm = call fastcc i32 @quantify_property_node(ptr noundef nonnull %i.sx, ptr noundef nonnull %5, ptr noundef nonnull @.str.11, i8 noundef signext 43) ; 2 uses
  %.not333.i = icmp eq i32 %i.tm, 0
  br i1 %.not333.i, label %bb.gh, label %.thread484.i

bb.gh:                                            ; preds = %bb.gg
  %i.tn = call fastcc i32 @quantify_property_node(ptr noundef nonnull %i.ti, ptr noundef nonnull %5, ptr noundef nonnull @.str.15, i8 noundef signext 43) ; 2 uses
  %.not334.i = icmp eq i32 %i.tn, 0
  br i1 %.not334.i, label %bb.gi, label %.thread484.i

bb.gi:                                            ; preds = %bb.gh
  %i.to = call fastcc i32 @quantify_property_node(ptr noundef nonnull %i.sz, ptr noundef nonnull %5, ptr noundef nonnull @.str.16, i8 noundef signext 50) ; 2 uses
  %.not335.i = icmp eq i32 %i.to, 0
  br i1 %.not335.i, label %bb.gj, label %.thread484.i

bb.gj:                                            ; preds = %bb.gi
  %i.tp = call fastcc i32 @create_property_node(ptr noundef nonnull %i.tb, ptr noundef nonnull %5, ptr noundef nonnull @.str.17) ; 2 uses
  %.not336.i = icmp eq i32 %i.tp, 0
  br i1 %.not336.i, label %bb.gk, label %.thread484.i

bb.gk:                                            ; preds = %bb.gj
  %i.tq = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 5 uses
  %i.tr = call fastcc i32 @quantify_property_node(ptr noundef nonnull %i.tq, ptr noundef nonnull %5, ptr noundef nonnull @.str.8, i8 noundef signext 42) ; 2 uses
  %.not337.i = icmp eq i32 %i.tr, 0
  br i1 %.not337.i, label %bb.gl, label %.thread484.i

bb.gl:                                            ; preds = %bb.gk
  %i.ts = load ptr, ptr %i.qr, align 8, !tbaa !97 ; 2 uses
  %i.tt = getelementptr i8, ptr %i.ts, i64 48
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !130
  %i.tv = call i32 %i.tu(i32 noundef 8205, ptr noundef nonnull %i.f, ptr noundef %i.ts) #25, !inline_history !133 ; 4 uses
  %i.tw = icmp slt i32 %i.tv, 0
  br i1 %i.tw, label %.thread484.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.tx = zext nneg i32 %i.tv to i64
  %i.ty = getelementptr i8, ptr %i.f, i64 %i.tx
  %i.tz = call fastcc ptr @node_new_str_raw(ptr noundef %i.f, ptr noundef %i.ty) ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 5 uses
  store ptr %i.tz, ptr %i.ua, align 8, !tbaa !90
  %i.ub = icmp eq ptr %i.tz, null
  br i1 %i.ub, label %.thread484.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.uc = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 2 uses
  %i.ud = call fastcc i32 @create_property_node(ptr noundef nonnull %i.uc, ptr noundef nonnull %5, ptr noundef nonnull @.str.17) ; 2 uses
  %.not338.i = icmp eq i32 %i.ud, 0
  br i1 %.not338.i, label %bb.go, label %.thread484.i

bb.go:                                            ; preds = %bb.gn
  %i.ue = call fastcc i32 @create_node_from_array(i32 noundef 0, ptr noundef nonnull %i.td, ptr noundef nonnull %i.tq) ; 2 uses
  %.not339.i = icmp eq i32 %i.ue, 0
  br i1 %.not339.i, label %bb.gp, label %.thread484.i

bb.gp:                                            ; preds = %bb.go
  %i.uf = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 9 uses
  %i.ug = icmp eq ptr %i.uf, null
  br i1 %i.ug, label %.thread484.i, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  store i32 5, ptr %i.uf, align 1
  %i.uh = getelementptr i8, ptr %i.uf, i64 4
  store i32 0, ptr %i.uh, align 4, !tbaa !13
  %i.ui = getelementptr i8, ptr %i.uf, i64 8
  %i.uj = getelementptr i8, ptr %i.uf, i64 16
  store i32 0, ptr %i.uj, align 8, !tbaa !13
  %i.uk = getelementptr i8, ptr %i.uf, i64 20
  store i32 -1, ptr %i.uk, align 4, !tbaa !13
  %i.ul = getelementptr i8, ptr %i.uf, i64 24
  store i32 1, ptr %i.ul, align 8, !tbaa !13
  %i.um = getelementptr i8, ptr %i.uf, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.um, i8 0, i64 24, i1 false)
  %i.un = load ptr, ptr %i.td, align 8, !tbaa !90
  store ptr %i.un, ptr %i.ui, align 8, !tbaa !13
  store ptr %i.uf, ptr %i.td, align 8, !tbaa !90
  %i.uo = call fastcc i32 @create_node_from_array(i32 noundef 0, ptr noundef nonnull %i.tf, ptr noundef nonnull %i.tb) ; 2 uses
  %.not341.i = icmp eq i32 %i.uo, 0
  br i1 %.not341.i, label %quantify_node.exit.thread441.i, label %.thread484.i

quantify_node.exit.thread441.i:                   ; preds = %bb.gq
  %i.up = call fastcc i32 @create_property_node(ptr noundef nonnull %i.td, ptr noundef nonnull %5, ptr noundef nonnull @.str.18) ; 2 uses
  %.not342.i = icmp eq i32 %i.up, 0
  br i1 %.not342.i, label %bb.gr, label %.thread484.i

bb.gr:                                            ; preds = %quantify_node.exit.thread441.i
  %i.uq = call fastcc i32 @create_property_node(ptr noundef nonnull %i.ua, ptr noundef nonnull %5, ptr noundef nonnull @.str.19) ; 2 uses
  %.not343.i = icmp eq i32 %i.uq, 0
  br i1 %.not343.i, label %bb.gs, label %.thread484.i

bb.gs:                                            ; preds = %bb.gr
  %i.ur = load ptr, ptr %i.ua, align 8, !tbaa !90 ; 2 uses
  %i.us = call fastcc i32 @add_property_to_cc(ptr noundef %i.ur, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull %5) ; 2 uses
  %.not344.i = icmp eq i32 %i.us, 0
  br i1 %.not344.i, label %bb.gt, label %.thread484.i

bb.gt:                                            ; preds = %bb.gs
  %i.ut = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 9 uses
  %i.uu = icmp eq ptr %i.ut, null
  br i1 %i.uu, label %.thread484.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  store i32 5, ptr %i.ut, align 1
  %i.uv = getelementptr i8, ptr %i.ut, i64 4
  store i32 0, ptr %i.uv, align 4, !tbaa !13
  %i.uw = getelementptr i8, ptr %i.ut, i64 8
  %i.ux = getelementptr i8, ptr %i.ut, i64 16
  store i32 0, ptr %i.ux, align 8, !tbaa !13
  %i.uy = getelementptr i8, ptr %i.ut, i64 20
  store i32 -1, ptr %i.uy, align 4, !tbaa !13
  %i.uz = getelementptr i8, ptr %i.ut, i64 24
  store i32 1, ptr %i.uz, align 8, !tbaa !13
  %i.va = getelementptr i8, ptr %i.ut, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.va, i8 0, i64 24, i1 false)
  store ptr %i.ur, ptr %i.uw, align 8, !tbaa !13
  store ptr %i.ut, ptr %i.ua, align 8, !tbaa !90
  %i.vb = call fastcc i32 @create_property_node(ptr noundef nonnull %i.uc, ptr noundef nonnull %5, ptr noundef nonnull @.str.20) ; 2 uses
  %.not346.i = icmp eq i32 %i.vb, 0
  br i1 %.not346.i, label %bb.gv, label %.thread484.i

bb.gv:                                            ; preds = %bb.gu
  %i.vc = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 3 uses
  %i.vd = call fastcc i32 @create_property_node(ptr noundef nonnull %i.vc, ptr noundef nonnull %5, ptr noundef nonnull @.str.19) ; 2 uses
  %.not347.i = icmp eq i32 %i.vd, 0
  br i1 %.not347.i, label %bb.gw, label %.thread484.i

bb.gw:                                            ; preds = %bb.gv
  %i.ve = load ptr, ptr %i.vc, align 8, !tbaa !90 ; 2 uses
  %i.vf = call fastcc i32 @add_property_to_cc(ptr noundef %i.ve, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull %5) ; 2 uses
  %.not348.i = icmp eq i32 %i.vf, 0
  br i1 %.not348.i, label %bb.gx, label %.thread484.i

bb.gx:                                            ; preds = %bb.gw
  %i.vg = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 9 uses
  %i.vh = icmp eq ptr %i.vg, null
  br i1 %i.vh, label %.thread484.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  store i32 5, ptr %i.vg, align 1
  %i.vi = getelementptr i8, ptr %i.vg, i64 4
  store i32 0, ptr %i.vi, align 4, !tbaa !13
  %i.vj = getelementptr i8, ptr %i.vg, i64 8
  %i.vk = getelementptr i8, ptr %i.vg, i64 16
  store i32 0, ptr %i.vk, align 8, !tbaa !13
  %i.vl = getelementptr i8, ptr %i.vg, i64 20
  store i32 -1, ptr %i.vl, align 4, !tbaa !13
  %i.vm = getelementptr i8, ptr %i.vg, i64 24
  store i32 1, ptr %i.vm, align 8, !tbaa !13
  %i.vn = getelementptr i8, ptr %i.vg, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.vn, i8 0, i64 24, i1 false)
  store ptr %i.ve, ptr %i.vj, align 8, !tbaa !13
  store ptr %i.vg, ptr %i.vc, align 8, !tbaa !90
  %i.vo = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.vp = call fastcc i32 @create_property_node(ptr noundef nonnull %i.vo, ptr noundef nonnull %5, ptr noundef nonnull @.str.18) ; 2 uses
  %.not350.i = icmp eq i32 %i.vp, 0
  br i1 %.not350.i, label %bb.gz, label %.thread484.i

bb.gz:                                            ; preds = %bb.gy
  %i.vq = call fastcc i32 @create_node_from_array(i32 noundef 0, ptr noundef nonnull %i.tq, ptr noundef nonnull %i.ua) ; 2 uses
  %.not351.i = icmp eq i32 %i.vq, 0
  br i1 %.not351.i, label %bb.ha, label %.thread484.i

bb.ha:                                            ; preds = %bb.gz
  %i.vr = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 9 uses
  %i.vs = icmp eq ptr %i.vr, null
  br i1 %i.vs, label %.thread484.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  store i32 5, ptr %i.vr, align 1
  %i.vt = getelementptr i8, ptr %i.vr, i64 4
  store i32 0, ptr %i.vt, align 4, !tbaa !13
  %i.vu = getelementptr i8, ptr %i.vr, i64 8
  %i.vv = getelementptr i8, ptr %i.vr, i64 16
  store i32 1, ptr %i.vv, align 8, !tbaa !13
  %i.vw = getelementptr i8, ptr %i.vr, i64 20
  store i32 -1, ptr %i.vw, align 4, !tbaa !13
  %i.vx = getelementptr i8, ptr %i.vr, i64 24
  store i32 1, ptr %i.vx, align 8, !tbaa !13
  %i.vy = getelementptr i8, ptr %i.vr, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.vy, i8 0, i64 24, i1 false)
  %i.vz = load ptr, ptr %i.tq, align 16, !tbaa !90
  store ptr %i.vz, ptr %i.vu, align 8, !tbaa !13
  store ptr %i.vr, ptr %i.tq, align 16, !tbaa !90
  %i.wa = call fastcc i32 @create_node_from_array(i32 noundef 0, ptr noundef nonnull %i.tb, ptr noundef nonnull %i.td) ; 2 uses
  %.not353.i = icmp eq i32 %i.wa, 0
  br i1 %.not353.i, label %select.unfold458.i, label %.thread484.i

select.unfold458.i:                               ; preds = %bb.hb
  %i.wb = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 8 uses
  %i.wc = icmp eq ptr %i.wb, null
  br i1 %i.wc, label %node_new_cclass.exit395.thread.i, label %bb.hc

node_new_cclass.exit395.thread.i:                 ; preds = %select.unfold458.i
  store ptr null, ptr %i.td, align 8, !tbaa !90
  br label %.thread484.i

bb.hc:                                            ; preds = %select.unfold458.i
  store i32 1, ptr %i.wb, align 1
  %i.wd = getelementptr i8, ptr %i.wb, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.wd, i8 0, i64 44, i1 false)
  store ptr %i.wb, ptr %i.td, align 8, !tbaa !90
  %i.we = load ptr, ptr %i.qr, align 8, !tbaa !97
  %i.wf = getelementptr i8, ptr %i.we, i64 20
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !47
  %i.wh = icmp sgt i32 %i.wg, 1
  br i1 %i.wh, label %bb.hd, label %bb.hi

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.wi = getelementptr i8, ptr %5, i64 180       ; 4 uses
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !137 ; 2 uses
  %i.wk = or i32 %i.wj, -67108865
  %i.wl = or i32 %i.wj, 67108864
  store i32 %i.wl, ptr %i.wi, align 4, !tbaa !137
  %i.wm = call fastcc i32 @add_property_to_cc(ptr noundef nonnull %i.wb, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull %5) ; 2 uses
  %.not355.i = icmp eq i32 %i.wm, 0
  br i1 %.not355.i, label %bb.he, label %.thread466.i

bb.he:                                            ; preds = %bb.hd
  %i.wn = getelementptr i8, ptr %i.wb, i64 40     ; 5 uses
  %i.wo = call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.wn, ptr noundef nonnull %5, i32 noundef 10, i32 noundef 10, i32 noundef 1) ; 2 uses
  %.not356.i = icmp eq i32 %i.wo, 0
  br i1 %.not356.i, label %bb.hf, label %.thread466.i

bb.hf:                                            ; preds = %bb.he
  %i.wp = call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.wn, ptr noundef nonnull %5, i32 noundef 13, i32 noundef 13, i32 noundef 1) ; 2 uses
  %.not357.i = icmp eq i32 %i.wp, 0
  br i1 %.not357.i, label %bb.hg, label %.thread466.i

bb.hg:                                            ; preds = %bb.hf
  %i.wq = load ptr, ptr %i.qr, align 8, !tbaa !97
  %i.wr = load ptr, ptr %i.wn, align 8, !tbaa !63
  %i.ws = call fastcc i32 @not_code_range_buf(ptr noundef %i.wq, ptr noundef %i.wr, ptr noundef %i.h, ptr noundef nonnull %5) ; 2 uses
  %.not358.i = icmp eq i32 %i.ws, 0
  br i1 %.not358.i, label %bb.hh, label %.thread466.i

.thread466.i:                                     ; preds = %bb.hg, %bb.hf, %bb.he, %bb.hd
  %.7.ph.i = phi i32 [ %i.ws, %bb.hg ], [ %i.wp, %bb.hf ], [ %i.wo, %bb.he ], [ %i.wm, %bb.hd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  br label %.thread484.i

bb.hh:                                            ; preds = %bb.hg
  %i.wt = load ptr, ptr %i.wn, align 8, !tbaa !63
  call fastcc void @bbuf_free(ptr noundef %i.wt)
  %i.wu = load ptr, ptr %i.h, align 8, !tbaa !138
  store ptr %i.wu, ptr %i.wn, align 8, !tbaa !63
  %i.wv = load i32, ptr %i.wi, align 4, !tbaa !137
  %i.ww = and i32 %i.wv, %i.wk
  store i32 %i.ww, ptr %i.wi, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  br label %bb.hk

bb.hi:                                            ; preds = %bb.hc
  %i.wx = call fastcc i32 @add_property_to_cc(ptr noundef nonnull %i.wb, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %5) ; 2 uses
  %.not354.i = icmp eq i32 %i.wx, 0
  br i1 %.not354.i, label %bb.hj, label %.thread484.i

bb.hj:                                            ; preds = %bb.hi
  %i.wy = getelementptr i8, ptr %i.wb, i64 8      ; 2 uses
  %i.wz = load i32, ptr %i.wy, align 8, !tbaa !7
  %i.xa = and i32 %i.wz, -9217
  store i32 %i.xa, ptr %i.wy, align 8, !tbaa !7
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hh
  %i.xb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.xc = call fastcc i32 @create_node_from_array(i32 noundef 1, ptr noundef nonnull %i.xb, ptr noundef nonnull %i.sw) ; 2 uses
  %.not359.i = icmp eq i32 %i.xc, 0
  br i1 %.not359.i, label %bb.hl, label %.thread484.i

bb.hl:                                            ; preds = %bb.hk
  %i.xd = call fastcc i32 @create_property_node(ptr noundef nonnull %i.sw, ptr noundef nonnull %5, ptr noundef nonnull @.str.8) ; 2 uses
  %.not360.i = icmp eq i32 %i.xd, 0
  br i1 %.not360.i, label %bb.hm, label %.thread484.i

bb.hm:                                            ; preds = %bb.hl
  %i.xe = load ptr, ptr %i.sw, align 8, !tbaa !90 ; 3 uses
  %i.xf = call fastcc i32 @add_property_to_cc(ptr noundef %i.xe, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull %5) ; 2 uses
  %.not361.i = icmp eq i32 %i.xf, 0
  br i1 %.not361.i, label %bb.hn, label %.thread484.i

bb.hn:                                            ; preds = %bb.hm
  %i.xg = getelementptr i8, ptr %i.xe, i64 40
  %i.xh = call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.xg, ptr noundef nonnull %5, i32 noundef 8205, i32 noundef 8205, i32 noundef 1) ; 2 uses
  %.not362.i = icmp eq i32 %i.xh, 0
  br i1 %.not362.i, label %bb.ho, label %.thread484.i

bb.ho:                                            ; preds = %bb.hn
  %i.xi = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 9 uses
  %i.xj = icmp eq ptr %i.xi, null
  br i1 %i.xj, label %.thread484.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  store i32 5, ptr %i.xi, align 1
  %i.xk = getelementptr i8, ptr %i.xi, i64 4
  store i32 0, ptr %i.xk, align 4, !tbaa !13
  %i.xl = getelementptr i8, ptr %i.xi, i64 8
  %i.xm = getelementptr i8, ptr %i.xi, i64 16
  store i32 0, ptr %i.xm, align 8, !tbaa !13
  %i.xn = getelementptr i8, ptr %i.xi, i64 20
  store i32 -1, ptr %i.xn, align 4, !tbaa !13
  %i.xo = getelementptr i8, ptr %i.xi, i64 24
  store i32 1, ptr %i.xo, align 8, !tbaa !13
  %i.xp = getelementptr i8, ptr %i.xi, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.xp, i8 0, i64 24, i1 false)
  store ptr %i.xe, ptr %i.xl, align 8, !tbaa !13
  store ptr %i.xi, ptr %i.sw, align 8, !tbaa !90
  %i.xq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.xr = call fastcc i32 @create_node_from_array(i32 noundef 0, ptr noundef nonnull %i.xq, ptr noundef nonnull %.1249.sroa.gep.i) ; 2 uses
  %.not364.i = icmp eq i32 %i.xr, 0
  br i1 %.not364.i, label %.thread494.i, label %.thread484.i

.thread494.i:                                     ; preds = %bb.hp, %bb.fq
  %.1249.sroa.phi.i = phi ptr [ %.1249.sroa.gep399.i, %bb.fq ], [ %.1249.sroa.gep.i, %bb.hp ]
  %.11.i = phi i32 [ %i.rc, %bb.fq ], [ 0, %bb.hp ] ; 2 uses
  %i.xs = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 4 uses
  %i.xt = icmp eq ptr %i.xs, null
  br i1 %i.xt, label %.thread484.i, label %bb.hq

bb.hq:                                            ; preds = %.thread494.i
  store i32 3, ptr %i.xs, align 1
  %i.xu = load i32, ptr %5, align 8, !tbaa !81
  %i.xv = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 7 uses
  %i.xw = icmp eq ptr %i.xv, null
  br i1 %i.xw, label %.thread484.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.xx = or i32 %i.xu, 4
  store <4 x i32> <i32 6, i32 0, i32 2, i32 0>, ptr %i.xv, align 1
  %i.xy = getelementptr i8, ptr %i.xv, i64 16
  %i.xz = getelementptr i8, ptr %i.xv, i64 24
  %i.ya = getelementptr i8, ptr %i.xv, i64 20
  store i32 -1, ptr %i.ya, align 4, !tbaa !13
  %i.yb = getelementptr i8, ptr %i.xv, i64 52
  store i32 0, ptr %i.yb, align 4, !tbaa !13
  store i32 %i.xx, ptr %i.xy, align 8, !tbaa !13
  store ptr %i.xs, ptr %i.xz, align 8, !tbaa !13
  store ptr %i.xv, ptr %.1249.sroa.phi.i, align 8, !tbaa !90
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hs, %bb.hr
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %bb.hs ], [ -1, %bb.hr ] ; 2 uses
  %.0.i398.i = phi i32 [ %i.yf, %bb.hs ], [ 0, %bb.hr ] ; 3 uses
  %i.yc = sext i32 %.0.i398.i to i64
  %i.yd = getelementptr [8 x i8], ptr %i.g, i64 %i.yc
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.ye, null
  %i.yf = add i32 %.0.i398.i, 1
  %indvars.iv.next.i.i = add i32 %indvars.iv.i.i, 1
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.hs, !llvm.loop !139

.preheader.i.i:                                   ; preds = %bb.hs
  %i.yg = add i32 %.0.i398.i, -1
  %i.yh = icmp sgt i32 %i.yg, -1
  br i1 %i.yh, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.yi = zext i32 %indvars.iv.i.i to i64
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.ht, %.lr.ph.i.i
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i, %bb.ht ], [ %i.yi, %.lr.ph.i.i ] ; 5 uses
  %.02227.i.i = phi ptr [ %i.yl, %bb.ht ], [ null, %.lr.ph.i.i ] ; 2 uses
  %i.yj = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv40.i.i ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !90
  %i.yl = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 6 uses
  %i.ym = icmp eq ptr %i.yl, null
  br i1 %i.ym, label %node_new_list.exit.i.i, label %bb.ht

bb.ht:                                            ; preds = %.lr.ph.split.i.i
  store i32 9, ptr %i.yl, align 1
  %i.yn = getelementptr i8, ptr %i.yl, i64 8
  store ptr %i.yk, ptr %i.yn, align 8, !tbaa !13
  %i.yo = getelementptr i8, ptr %i.yl, i64 16
  store ptr %.02227.i.i, ptr %i.yo, align 8, !tbaa !13
  store ptr null, ptr %i.yj, align 8, !tbaa !90
  %indvars.iv.next41.i.i = add nsw i64 %indvars.iv40.i.i, -1
  %i.yp = icmp sgt i64 %indvars.iv40.i.i, 0
  br i1 %i.yp, label %.lr.ph.split.i.i, label %.loopexit.i, !llvm.loop !140

node_new_list.exit.i.i:                           ; preds = %.lr.ph.split.i.i
  %i.yq = and i64 %indvars.iv40.i.i, 2147483648
  %i.yr = icmp eq i64 %i.yq, 0
  br i1 %i.yr, label %.lr.ph32.preheader.i.i, label %create_node_from_array.exit.i

.lr.ph32.preheader.i.i:                           ; preds = %node_new_list.exit.i.i
  %i.ys = and i64 %indvars.iv40.i.i, 2147483647
  br label %.lr.ph32.i.i

.lr.ph32.i.i:                                     ; preds = %.lr.ph32.i.i, %.lr.ph32.preheader.i.i
  %indvars.iv47.i.i = phi i64 [ %i.ys, %.lr.ph32.preheader.i.i ], [ %indvars.iv.next48.i.i, %.lr.ph32.i.i ] ; 3 uses
  %i.yt = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv47.i.i ; 2 uses
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !90
  call void @onig_node_free(ptr noundef %i.yu)
  %indvars.iv.next48.i.i = add nsw i64 %indvars.iv47.i.i, -1
  store ptr null, ptr %i.yt, align 8, !tbaa !90
  %.not58.i.i = icmp eq i64 %indvars.iv47.i.i, 0
  br i1 %.not58.i.i, label %create_node_from_array.exit.i, label %.lr.ph32.i.i, !llvm.loop !141

create_node_from_array.exit.i:                    ; preds = %.lr.ph32.i.i, %node_new_list.exit.i.i
  call void @onig_node_free(ptr noundef %.02227.i.i)
  br label %.thread484.i

.loopexit.i:                                      ; preds = %bb.ht, %.preheader.i.i
  %.0401.ph.i = phi ptr [ null, %.preheader.i.i ], [ %i.yl, %bb.ht ]
  %i.yv = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 9 uses
  %i.yw = icmp eq ptr %i.yv, null
  br i1 %i.yw, label %.thread484.i, label %bb.hu

bb.hu:                                            ; preds = %.loopexit.i
  store <4 x i32> <i32 6, i32 0, i32 4, i32 0>, ptr %i.yv, align 1
  %i.yx = getelementptr i8, ptr %i.yv, i64 16
  store i32 0, ptr %i.yx, align 8, !tbaa !13
  %i.yy = getelementptr i8, ptr %i.yv, i64 24
  %i.yz = getelementptr i8, ptr %i.yv, i64 20
  store i32 -1, ptr %i.yz, align 4, !tbaa !13
  %i.za = getelementptr i8, ptr %i.yv, i64 52
  store i32 0, ptr %i.za, align 4, !tbaa !13
  store ptr %.0401.ph.i, ptr %i.yy, align 8, !tbaa !13
  %i.zb = load ptr, ptr %i.qr, align 8, !tbaa !97
  %i.zc = getelementptr i8, ptr %i.zb, i64 132
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !132
  %i.ze = and i32 %i.zd, 1
  %.not366.i = icmp eq i32 %i.ze, 0
  br i1 %.not366.i, label %bb.hx, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.zf = load i32, ptr %5, align 8, !tbaa !81
  %i.zg = and i32 %i.zf, -2
  %i.zh = call fastcc ptr @node_new_option(i32 noundef %i.zg) ; 3 uses
  store ptr %i.zh, ptr %0, align 8, !tbaa !90
  %i.zi = icmp eq ptr %i.zh, null
  br i1 %i.zi, label %.thread484.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.zj = getelementptr i8, ptr %i.zh, i64 24
  store ptr %i.yv, ptr %i.zj, align 8, !tbaa !13
  br label %node_extended_grapheme_cluster.exit.thread

bb.hx:                                            ; preds = %bb.hu
  store ptr %i.yv, ptr %0, align 8, !tbaa !90
  br label %node_extended_grapheme_cluster.exit.thread

.thread484.i:                                     ; preds = %bb.hv, %.loopexit.i, %create_node_from_array.exit.i, %bb.hq, %.thread494.i, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hi, %.thread466.i, %node_new_cclass.exit395.thread.i, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %quantify_node.exit.thread441.i, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %.thread413.i, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fv, %bb.fu, %add_property_to_cc.exit.i, %add_property_to_cc.exit.thread.i, %node_new_cclass.exit.thread.i, %propname2ctype.exit.thread.i, %node_new_str_raw.exit.thread.i347, %bb.fm, %bb.fl
  %.12.i = phi i32 [ %i.qv, %bb.fl ], [ %i.rc, %bb.fm ], [ %i.rc, %node_new_str_raw.exit.thread.i347 ], [ %i.vq, %bb.gz ], [ %.11.i, %.thread494.i ], [ -5, %create_node_from_array.exit.i ], [ %.11.i, %bb.hq ], [ 0, %bb.hv ], [ -5, %bb.ha ], [ %i.rc, %propname2ctype.exit.thread.i ], [ %i.sg, %add_property_to_cc.exit.thread.i ], [ %i.sr, %bb.fv ], [ %i.sq, %bb.fu ], [ %i.sk, %add_property_to_cc.exit.i ], [ %i.rc, %node_new_cclass.exit.thread.i ], [ -5, %bb.ho ], [ %i.xr, %bb.hp ], [ %i.xh, %bb.hn ], [ %i.xf, %bb.hm ], [ %i.xd, %bb.hl ], [ %i.sv, %bb.fx ], [ %i.te, %bb.gb ], [ %i.ud, %bb.gn ], [ 0, %node_new_cclass.exit395.thread.i ], [ %.7.ph.i, %.thread466.i ], [ %i.wx, %bb.hi ], [ %i.xc, %bb.hk ], [ %i.to, %bb.gi ], [ %i.tn, %bb.gh ], [ %i.tm, %bb.gg ], [ %i.sy, %bb.fy ], [ %i.tk, %.thread413.i ], [ %i.tl, %bb.gf ], [ %i.ta, %bb.fz ], [ %i.th, %bb.gd ], [ %i.tj, %bb.ge ], [ %i.tc, %bb.ga ], [ -5, %bb.gp ], [ %i.tp, %bb.gj ], [ %i.uo, %bb.gq ], [ %i.tv, %bb.gm ], [ %i.tv, %bb.gl ], [ %i.tr, %bb.gk ], [ 0, %.loopexit.i ], [ %i.up, %quantify_node.exit.thread441.i ], [ %i.wa, %bb.hb ], [ -5, %bb.gx ], [ %i.vp, %bb.gy ], [ -5, %bb.gt ], [ %i.vf, %bb.gw ], [ %i.vd, %bb.gv ], [ %i.vb, %bb.gu ], [ %i.us, %bb.gs ], [ %i.uq, %bb.gr ], [ %i.tg, %bb.gc ], [ %i.ue, %bb.go ]
  %.0233.i = phi ptr [ null, %bb.fl ], [ null, %bb.fm ], [ null, %node_new_str_raw.exit.thread.i347 ], [ null, %bb.gz ], [ null, %.thread494.i ], [ null, %create_node_from_array.exit.i ], [ %i.xs, %bb.hq ], [ %i.yv, %bb.hv ], [ null, %bb.ha ], [ null, %propname2ctype.exit.thread.i ], [ null, %add_property_to_cc.exit.thread.i ], [ null, %bb.fv ], [ null, %bb.fu ], [ null, %add_property_to_cc.exit.i ], [ null, %node_new_cclass.exit.thread.i ], [ null, %bb.ho ], [ null, %bb.hp ], [ null, %bb.hn ], [ null, %bb.hm ], [ null, %bb.hl ], [ null, %bb.fx ], [ null, %bb.gb ], [ null, %bb.gn ], [ null, %node_new_cclass.exit395.thread.i ], [ null, %.thread466.i ], [ null, %bb.hi ], [ null, %bb.hk ], [ null, %bb.gi ], [ null, %bb.gh ], [ null, %bb.gg ], [ null, %bb.fy ], [ null, %.thread413.i ], [ null, %bb.gf ], [ null, %bb.fz ], [ null, %bb.gd ], [ null, %bb.ge ], [ null, %bb.ga ], [ null, %bb.gp ], [ null, %bb.gj ], [ null, %bb.gq ], [ null, %bb.gm ], [ null, %bb.gl ], [ null, %bb.gk ], [ null, %.loopexit.i ], [ null, %quantify_node.exit.thread441.i ], [ null, %bb.hb ], [ null, %bb.gx ], [ null, %bb.gy ], [ null, %bb.gt ], [ null, %bb.gw ], [ null, %bb.gv ], [ null, %bb.gu ], [ null, %bb.gs ], [ null, %bb.gr ], [ null, %bb.gc ], [ null, %bb.go ]
  %.12.fr.i = freeze i32 %.12.i                   ; 3 uses
  call void @onig_node_free(ptr noundef %.0233.i)
  %i.zk = load ptr, ptr %i.g, align 16, !tbaa !90
  call void @onig_node_free(ptr noundef %i.zk)
  %i.zl = load ptr, ptr %.1249.sroa.gep399.i, align 8, !tbaa !90
  call void @onig_node_free(ptr noundef %i.zl)
  %i.zm = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.zn = load ptr, ptr %i.zm, align 16, !tbaa !90
  call void @onig_node_free(ptr noundef %i.zn)
  %i.zo = load ptr, ptr %.1249.sroa.gep.i, align 8, !tbaa !90
  call void @onig_node_free(ptr noundef %i.zo)
  %i.zp = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.zq = load ptr, ptr %i.zp, align 16, !tbaa !90
  call void @onig_node_free(ptr noundef %i.zq)
  %i.zr = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !90
  call void @onig_node_free(ptr noundef %i.zs)
  %i.zt = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.zu = load ptr, ptr %i.zt, align 16, !tbaa !90
  call void @onig_node_free(ptr noundef %i.zu)
  %i.zv = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !90
  call void @onig_node_free(ptr noundef %i.zw)
  %i.zx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.zy = load ptr, ptr %i.zx, align 16, !tbaa !90
  call void @onig_node_free(ptr noundef %i.zy)
  %i.zz = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !90
  call void @onig_node_free(ptr noundef %i.aaa)
  %i.aab = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.aac = load ptr, ptr %i.aab, align 16, !tbaa !90
  call void @onig_node_free(ptr noundef %i.aac)
  %i.aad = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !90
  call void @onig_node_free(ptr noundef %i.aae)
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.aag = load ptr, ptr %i.aaf, align 16, !tbaa !90
  call void @onig_node_free(ptr noundef %i.aag)
  %i.aah = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !90
  call void @onig_node_free(ptr noundef %i.aai)
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aak = load ptr, ptr %i.aaj, align 16, !tbaa !90
  call void @onig_node_free(ptr noundef %i.aak)
  %i.aal = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !90
  call void @onig_node_free(ptr noundef %i.aam)
  %i.aan = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.aao = load ptr, ptr %i.aan, align 16, !tbaa !90
  call void @onig_node_free(ptr noundef %i.aao)
  %i.aap = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !90
  call void @onig_node_free(ptr noundef %i.aaq)
  %i.aar = icmp eq i32 %.12.fr.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br i1 %i.aar, label %node_new_quantifier.exit380, label %node_extended_grapheme_cluster.exit

node_extended_grapheme_cluster.exit.thread:       ; preds = %bb.hw, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %.thread429

node_extended_grapheme_cluster.exit:              ; preds = %.thread484.i
  %i.aas = icmp slt i32 %.12.fr.i, 0
  br i1 %i.aas, label %node_new_quantifier.exit380, label %.thread429

bb.hy:                                            ; preds = %bb.b
  %i.aat = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 7 uses
  %i.aau = icmp eq ptr %i.aat, null
  br i1 %i.aau, label %onig_node_new_anchor.exit.thread, label %onig_node_new_anchor.exit

onig_node_new_anchor.exit.thread:                 ; preds = %bb.hy
  store ptr null, ptr %0, align 8, !tbaa !90
  br label %node_new_quantifier.exit380

onig_node_new_anchor.exit:                        ; preds = %bb.hy
  store i32 7, ptr %i.aat, align 1
  %i.aav = getelementptr i8, ptr %i.aat, i64 4
  store i32 65536, ptr %i.aav, align 4, !tbaa !13
  %i.aaw = getelementptr i8, ptr %i.aat, i64 8
  store ptr null, ptr %i.aaw, align 8, !tbaa !13
  %i.aax = getelementptr i8, ptr %i.aat, i64 16
  store i32 -1, ptr %i.aax, align 8, !tbaa !13
  %i.aay = getelementptr i8, ptr %i.aat, i64 20
  store i32 0, ptr %i.aay, align 4, !tbaa !13
  store ptr %i.aat, ptr %0, align 8, !tbaa !90
  br label %.thread429

bb.hz:                                            ; preds = %bb.ln, %bb.b, %bb.ex
  %i.aaz = getelementptr i8, ptr %1, i64 16
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !102
  %i.abb = load ptr, ptr %3, align 8, !tbaa !69
  %i.abc = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 10 uses
  %i.abd = icmp eq ptr %i.abc, null
  br i1 %i.abd, label %node_new_str.exit.thread, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  store i32 0, ptr %i.abc, align 1
  %i.abe = getelementptr i8, ptr %i.abc, i64 28
  store i32 0, ptr %i.abe, align 4, !tbaa !13
  %i.abf = getelementptr i8, ptr %i.abc, i64 24
  store i32 0, ptr %i.abf, align 8, !tbaa !13
  %i.abg = getelementptr i8, ptr %i.abc, i64 32   ; 2 uses
  %i.abh = getelementptr i8, ptr %i.abc, i64 8
  store ptr %i.abg, ptr %i.abh, align 8, !tbaa !13
  %i.abi = getelementptr i8, ptr %i.abc, i64 16
  store ptr %i.abg, ptr %i.abi, align 8, !tbaa !13
  %i.abj = tail call i32 @onig_node_str_cat(ptr noundef nonnull %i.abc, ptr noundef %i.aba, ptr noundef %i.abb)
  %.not.i351 = icmp eq i32 %i.abj, 0
  br i1 %.not.i351, label %node_new_str.exit, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  tail call void @onig_node_free(ptr noundef nonnull %i.abc)
  br label %node_new_str.exit.thread

node_new_str.exit.thread:                         ; preds = %bb.hz, %bb.ib
  store ptr null, ptr %0, align 8, !tbaa !90
  br label %node_new_quantifier.exit380

node_new_str.exit:                                ; preds = %bb.ia
  store ptr %i.abc, ptr %0, align 8, !tbaa !90
  br label %bb.ic

bb.ic:                                            ; preds = %bb.kn, %node_new_str.exit, %node_str_cat_codepoint.exit357
  %i.abk = getelementptr i8, ptr %5, i64 8
  %i.abl = getelementptr i8, ptr %1, i64 24
  %i.abm = getelementptr i8, ptr %1, i64 16
  br label %bb.id

bb.id:                                            ; preds = %bb.ii, %bb.ic
  %i.abn = call fastcc i32 @fetch_token(ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 4 uses
  %i.abo = icmp slt i32 %i.abn, 0
  br i1 %i.abo, label %node_new_quantifier.exit380, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  switch i32 %i.abn, label %.loopexit [
    i32 3, label %bb.if
    i32 4, label %bb.ig
  ]

bb.if:                                            ; preds = %bb.ie
  %i.abp = load ptr, ptr %0, align 8, !tbaa !90
  %i.abq = load ptr, ptr %i.abm, align 8, !tbaa !102
  %i.abr = load ptr, ptr %3, align 8, !tbaa !69
  %i.abs = call i32 @onig_node_str_cat(ptr noundef %i.abp, ptr noundef %i.abq, ptr noundef %i.abr)
  br label %bb.ii

bb.ig:                                            ; preds = %bb.ie
  %i.abt = load ptr, ptr %0, align 8, !tbaa !90
  %i.abu = load ptr, ptr %i.abk, align 8, !tbaa !97 ; 2 uses
  %i.abv = load i32, ptr %i.abl, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.abw = getelementptr i8, ptr %i.abu, i64 48
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !130
  %i.aby = call i32 %i.abx(i32 noundef %i.abv, ptr noundef nonnull %i.e, ptr noundef %i.abu) #25, !inline_history !142 ; 3 uses
  %i.abz = icmp slt i32 %i.aby, 0
  br i1 %i.abz, label %node_str_cat_codepoint.exit, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.aca = zext nneg i32 %i.aby to i64
  %i.acb = getelementptr i8, ptr %i.e, i64 %i.aca
  %i.acc = call i32 @onig_node_str_cat(ptr noundef %i.abt, ptr noundef nonnull %i.e, ptr noundef %i.acb)
  br label %node_str_cat_codepoint.exit

node_str_cat_codepoint.exit:                      ; preds = %bb.ig, %bb.ih
  %.0.i353 = phi i32 [ %i.acc, %bb.ih ], [ %i.aby, %bb.ig ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.ii

bb.ii:                                            ; preds = %node_str_cat_codepoint.exit, %bb.if
  %.0263 = phi i32 [ %i.abs, %bb.if ], [ %.0.i353, %node_str_cat_codepoint.exit ] ; 2 uses
  %i.acd = icmp slt i32 %.0263, 0
  br i1 %i.acd, label %node_new_quantifier.exit380, label %bb.id

bb.ij:                                            ; preds = %bb.b, %bb.ex
  %i.ace = getelementptr i8, ptr %1, i64 24       ; 2 uses
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !13
  %i.acg = trunc i32 %i.acf to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i8 %i.acg, ptr %i.d, align 1, !tbaa !13
  %i.ach = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 10 uses
  %i.aci = icmp eq ptr %i.ach, null
  br i1 %i.aci, label %node_new_str_raw_char.exit.thread, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.acj = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i32 0, ptr %i.ach, align 1
  %i.ack = getelementptr i8, ptr %i.ach, i64 28
  store i32 0, ptr %i.ack, align 4, !tbaa !13
  %i.acl = getelementptr i8, ptr %i.ach, i64 24   ; 3 uses
  store i32 0, ptr %i.acl, align 8, !tbaa !13
  %i.acm = getelementptr i8, ptr %i.ach, i64 32   ; 2 uses
  %i.acn = getelementptr i8, ptr %i.ach, i64 8
  store ptr %i.acm, ptr %i.acn, align 8, !tbaa !13
  %i.aco = getelementptr i8, ptr %i.ach, i64 16
  store ptr %i.acm, ptr %i.aco, align 8, !tbaa !13
  %i.acp = call i32 @onig_node_str_cat(ptr noundef nonnull %i.ach, ptr noundef nonnull %i.d, ptr noundef nonnull %i.acj)
  %.not.i.i.i354 = icmp eq i32 %i.acp, 0
end_hunk_2
begin_hunk_3_@parse_exp:bb.a
  br i1 %i.ahf, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.ahg = load i8, ptr %.053.i.i, align 1, !tbaa !13
  %i.ahh = zext i8 %i.ahg to i32
  br label %bb.js

bb.jr:                                            ; preds = %bb.jp
  %i.ahi = load ptr, ptr %i.ahc, align 8, !tbaa !71
  %i.ahj = tail call i32 %i.ahi(ptr noundef %.053.i.i, ptr noundef nonnull %4, ptr noundef nonnull %i.agz) #25, !inline_history !146
  %.pre.i.i = load i32, ptr %i.ahb, align 8, !tbaa !70
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.ahk = phi i32 [ 1, %bb.jq ], [ %.pre.i.i, %bb.jr ] ; 2 uses
  %i.ahl = phi i32 [ %i.ahh, %bb.jq ], [ %i.ahj, %bb.jr ]
  %i.ahm = load i32, ptr %i.ahd, align 4, !tbaa !47
  %i.ahn = icmp eq i32 %i.ahk, %i.ahm
  br i1 %i.ahn, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.aho = tail call i32 @onigenc_mbclen(ptr noundef %.053.i.i, ptr noundef nonnull %4, ptr noundef nonnull %i.agz) #25
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %i.ahp = phi i32 [ %i.aho, %bb.jt ], [ %i.ahk, %bb.js ]
  %i.ahq = sext i32 %i.ahp to i64
  %i.ahr = getelementptr i8, ptr %.053.i.i, i64 %i.ahq ; 3 uses
  switch i32 %i.ahl, label %bb.jo [
    i32 125, label %bb.jv
    i32 124, label %fetch_char_property_to_ctype.exit.thread.i
    i32 123, label %fetch_char_property_to_ctype.exit.thread.i
    i32 41, label %fetch_char_property_to_ctype.exit.thread.i
    i32 40, label %fetch_char_property_to_ctype.exit.thread.i
  ]

bb.jv:                                            ; preds = %bb.ju
  %i.ahs = getelementptr i8, ptr %i.agz, i64 80
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !134
  %i.ahu = tail call i32 %i.aht(ptr noundef nonnull %i.agz, ptr noundef %i.aha, ptr noundef %.053.i.i) #25, !inline_history !146 ; 4 uses
  %i.ahv = icmp slt i32 %i.ahu, 0
  br i1 %i.ahv, label %fetch_char_property_to_ctype.exit.thread.i, label %bb.jw

fetch_char_property_to_ctype.exit.thread.i:       ; preds = %bb.ju, %bb.ju, %bb.ju, %bb.ju, %bb.jo, %bb.jv, %bb.jn
  %.046.i.i = phi i32 [ %i.ahu, %bb.jv ], [ -223, %bb.jn ], [ -223, %bb.jo ], [ -223, %bb.ju ], [ -223, %bb.ju ], [ -223, %bb.ju ], [ -223, %bb.ju ]
  %.1.i.i = phi ptr [ %.053.i.i, %bb.jv ], [ %i.aha, %bb.jn ], [ %.053.i.i, %bb.jo ], [ %.053.i.i, %bb.ju ], [ %.053.i.i, %bb.ju ], [ %.053.i.i, %bb.ju ], [ %.053.i.i, %bb.ju ]
  %i.ahw = load ptr, ptr %3, align 8, !tbaa !69
  %i.ahx = getelementptr i8, ptr %5, i64 56
  store ptr %i.ahw, ptr %i.ahx, align 8, !tbaa !95
  %i.ahy = getelementptr i8, ptr %5, i64 64
  store ptr %.1.i.i, ptr %i.ahy, align 8, !tbaa !96
  br label %node_new_quantifier.exit380

bb.jw:                                            ; preds = %bb.jv
  store ptr %i.ahr, ptr %3, align 8, !tbaa !69
  %i.ahz = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 7 uses
  %i.aia = icmp eq ptr %i.ahz, null
  br i1 %i.aia, label %node_new_cclass.exit.thread.i367, label %bb.jx

node_new_cclass.exit.thread.i367:                 ; preds = %bb.jw
  store ptr null, ptr %0, align 8, !tbaa !90
  br label %node_new_quantifier.exit380

bb.jx:                                            ; preds = %bb.jw
  store i32 1, ptr %i.ahz, align 1
  %i.aib = getelementptr i8, ptr %i.ahz, i64 4    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.aib, i8 0, i64 44, i1 false)
  store ptr %i.ahz, ptr %0, align 8, !tbaa !90
  %i.aic = tail call fastcc i32 @add_ctype_to_cc(ptr noundef nonnull %i.ahz, i32 noundef %i.ahu, i32 noundef 0, i32 noundef 0, ptr noundef %5) ; 2 uses
  %.not.i365 = icmp eq i32 %i.aic, 0
  br i1 %.not.i365, label %bb.jy, label %node_new_quantifier.exit380

bb.jy:                                            ; preds = %bb.jx
  %i.aid = getelementptr i8, ptr %1, i64 28
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !13
  %.not28.i = icmp eq i32 %i.aie, 0
  br i1 %.not28.i, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.aif = load i32, ptr %i.aib, align 4, !tbaa !145
  %i.aig = or i32 %i.aif, 1
  store i32 %i.aig, ptr %i.aib, align 4, !tbaa !145
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy
  %i.aih = load i32, ptr %5, align 8, !tbaa !81
  %i.aii = trunc i32 %i.aih to i1
  %i.aij = icmp ne i32 %i.ahu, 14
  %or.cond.i366 = and i1 %i.aij, %i.aii
  br i1 %or.cond.i366, label %bb.kb, label %.thread429

bb.kb:                                            ; preds = %bb.ka
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %5, ptr %6, align 8, !tbaa !147
  %i.aik = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ahz, ptr %i.aik, align 8, !tbaa !149
  %i.ail = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ahz, ptr %i.ail, align 8, !tbaa !150
  %i.aim = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr null, ptr %i.aim, align 8, !tbaa !151
  %i.ain = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.aim, ptr %i.ain, align 8, !tbaa !152
  %i.aio = load ptr, ptr %i.agy, align 8, !tbaa !97 ; 2 uses
  %i.aip = getelementptr i8, ptr %i.aio, i64 64
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !153
  %i.air = getelementptr i8, ptr %5, i64 4
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !86
  %i.ait = call i32 %i.aiq(i32 noundef %i.ais, ptr noundef nonnull @i_apply_case_fold, ptr noundef nonnull %6, ptr noundef %i.aio) #25, !inline_history !154 ; 2 uses
  %.not.i29.i = icmp eq i32 %i.ait, 0
  %i.aiu = load ptr, ptr %i.aim, align 8, !tbaa !151 ; 3 uses
  br i1 %.not.i29.i, label %bb.kc, label %parse_char_property.exit

bb.kc:                                            ; preds = %bb.kb
  %.not18.i.i = icmp eq ptr %i.aiu, null
  br i1 %.not18.i.i, label %parse_char_property.exit.thread438, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.aiv = load ptr, ptr %0, align 8, !tbaa !90
  %i.aiw = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.aix = icmp eq ptr %i.aiw, null
  br i1 %i.aix, label %parse_char_property.exit, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  store i32 9, ptr %i.aiw, align 1
  %i.aiy = getelementptr i8, ptr %i.aiw, i64 8
  store ptr %i.aiv, ptr %i.aiy, align 8, !tbaa !13
  %i.aiz = getelementptr i8, ptr %i.aiw, i64 16
  store ptr %i.aiu, ptr %i.aiz, align 8, !tbaa !13
  store ptr %i.aiw, ptr %0, align 8, !tbaa !90
  br label %parse_char_property.exit.thread438

parse_char_property.exit.thread438:               ; preds = %bb.ke, %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.thread429

parse_char_property.exit:                         ; preds = %bb.kd, %bb.kb
  %.1.i30.i = phi i32 [ %i.ait, %bb.kb ], [ -5, %bb.kd ]
  call void @onig_node_free(ptr noundef %i.aiu)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %node_new_quantifier.exit380

bb.kf:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #25
  %i.aja = call fastcc i32 @parse_char_class(ptr noundef %0, ptr noundef %i.p, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 2 uses
  %.not325 = icmp eq i32 %i.aja, 0
  br i1 %.not325, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.ajb = load ptr, ptr %i.p, align 8, !tbaa !90
  tail call void @onig_node_free(ptr noundef %i.ajb)
  br label %.thread443

bb.kh:                                            ; preds = %bb.kf
  %i.ajc = load ptr, ptr %0, align 8, !tbaa !90   ; 3 uses
  %i.ajd = call fastcc i32 @is_onechar_cclass(ptr noundef %i.ajc, ptr noundef %i.q)
  %.not326 = icmp eq i32 %i.ajd, 0
  br i1 %.not326, label %bb.kk, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  tail call void @onig_node_free(ptr noundef %i.ajc)
  %i.aje = load ptr, ptr %i.p, align 8, !tbaa !90
  tail call void @onig_node_free(ptr noundef %i.aje)
  %i.ajf = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 9 uses
  %i.ajg = icmp eq ptr %i.ajf, null
  br i1 %i.ajg, label %node_new_empty.exit369.thread, label %bb.kj

node_new_empty.exit369.thread:                    ; preds = %bb.ki
  store ptr null, ptr %0, align 8, !tbaa !90
  br label %.thread443

bb.kj:                                            ; preds = %bb.ki
  store i32 0, ptr %i.ajf, align 1
  %i.ajh = getelementptr i8, ptr %i.ajf, i64 28
  store i32 0, ptr %i.ajh, align 4, !tbaa !13
  %i.aji = getelementptr i8, ptr %i.ajf, i64 24
  store i32 0, ptr %i.aji, align 8, !tbaa !13
  %i.ajj = getelementptr i8, ptr %i.ajf, i64 32   ; 2 uses
  %i.ajk = getelementptr i8, ptr %i.ajf, i64 8
  store ptr %i.ajj, ptr %i.ajk, align 8, !tbaa !13
  %i.ajl = getelementptr i8, ptr %i.ajf, i64 16
  store ptr %i.ajj, ptr %i.ajl, align 8, !tbaa !13
  store ptr %i.ajf, ptr %0, align 8, !tbaa !90
  %i.ajm = getelementptr i8, ptr %5, i64 8
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !97 ; 2 uses
  %i.ajo = load i32, ptr %i.q, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ajp = getelementptr i8, ptr %i.ajn, i64 48
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !130
  %i.ajr = call i32 %i.ajq(i32 noundef %i.ajo, ptr noundef nonnull %i.a, ptr noundef %i.ajn) #25, !inline_history !142 ; 3 uses
  %i.ajs = icmp slt i32 %i.ajr, 0
  br i1 %i.ajs, label %node_str_cat_codepoint.exit371.thread, label %node_str_cat_codepoint.exit371

node_str_cat_codepoint.exit371.thread:            ; preds = %bb.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.thread443

node_str_cat_codepoint.exit371:                   ; preds = %bb.kj
  %i.ajt = zext nneg i32 %i.ajr to i64
  %i.aju = getelementptr i8, ptr %i.a, i64 %i.ajt
  %i.ajv = call i32 @onig_node_str_cat(ptr noundef nonnull %i.ajf, ptr noundef nonnull %i.a, ptr noundef %i.aju) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not329 = icmp eq i32 %i.ajv, 0
  br i1 %.not329, label %bb.kn, label %.thread443

bb.kk:                                            ; preds = %bb.kh
  %i.ajw = load i32, ptr %5, align 8, !tbaa !81
  %i.ajx = and i32 %i.ajw, 1
  %.not327 = icmp eq i32 %i.ajx, 0
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !90  ; 3 uses
  br i1 %.not327, label %.thread446, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ajy = tail call fastcc i32 @cclass_case_fold(ptr noundef %0, ptr noundef %i.ajc, ptr noundef %.pre, ptr noundef nonnull %5) ; 2 uses
  %.not328 = icmp eq i32 %i.ajy, 0
  br i1 %.not328, label %.thread446, label %bb.km

bb.km:                                            ; preds = %bb.kl
  tail call void @onig_node_free(ptr noundef %.pre)
  br label %.thread443

.thread446:                                       ; preds = %bb.kk, %bb.kl
  tail call void @onig_node_free(ptr noundef %.pre)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  br label %.thread429

.thread443:                                       ; preds = %bb.kg, %node_str_cat_codepoint.exit371, %node_new_empty.exit369.thread, %bb.km, %node_str_cat_codepoint.exit371.thread
  %.5.ph = phi i32 [ %i.ajy, %bb.km ], [ -5, %node_new_empty.exit369.thread ], [ %i.ajv, %node_str_cat_codepoint.exit371 ], [ %i.aja, %bb.kg ], [ %i.ajr, %node_str_cat_codepoint.exit371.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  br label %node_new_quantifier.exit380

bb.kn:                                            ; preds = %node_str_cat_codepoint.exit371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  br label %bb.ic

bb.ko:                                            ; preds = %bb.b
  %i.ajz = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 3 uses
  %i.aka = icmp eq ptr %i.ajz, null
  br i1 %i.aka, label %node_new_anychar.exit.thread, label %node_new_anychar.exit

node_new_anychar.exit.thread:                     ; preds = %bb.ko
  store ptr null, ptr %0, align 8, !tbaa !90
  br label %node_new_quantifier.exit380

node_new_anychar.exit:                            ; preds = %bb.ko
  store i32 3, ptr %i.ajz, align 1
  store ptr %i.ajz, ptr %0, align 8, !tbaa !90
  br label %.thread429

bb.kp:                                            ; preds = %bb.b
  %i.akb = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 4 uses
  %i.akc = icmp eq ptr %i.akb, null
  br i1 %i.akc, label %node_new_anychar.exit372.thread, label %bb.kq

node_new_anychar.exit372.thread:                  ; preds = %bb.kp
  store ptr null, ptr %0, align 8, !tbaa !90
  br label %node_new_quantifier.exit380

bb.kq:                                            ; preds = %bb.kp
  store i32 3, ptr %i.akb, align 1
  store ptr %i.akb, ptr %0, align 8, !tbaa !90
  %i.akd = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 8 uses
  %i.ake = icmp eq ptr %i.akd, null
  br i1 %i.ake, label %node_new_quantifier.exit380, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  store i32 5, ptr %i.akd, align 1
  %i.akf = getelementptr i8, ptr %i.akd, i64 4
  %i.akg = getelementptr i8, ptr %i.akd, i64 8
  %i.akh = getelementptr i8, ptr %i.akd, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.akf, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.akh, align 4, !tbaa !13
  %i.aki = getelementptr i8, ptr %i.akd, i64 24
  store i32 1, ptr %i.aki, align 8, !tbaa !13
  %i.akj = getelementptr i8, ptr %i.akd, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.akj, i8 0, i64 24, i1 false)
  store ptr %i.akb, ptr %i.akg, align 8, !tbaa !13
  store ptr %i.akd, ptr %0, align 8, !tbaa !90
  br label %.thread429

bb.ks:                                            ; preds = %bb.b
  %i.akk = getelementptr i8, ptr %1, i64 24
  %i.akl = load i32, ptr %i.akk, align 8, !tbaa !13 ; 5 uses
  %i.akm = icmp sgt i32 %i.akl, 1
  br i1 %i.akm, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.akn = getelementptr i8, ptr %1, i64 32
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !13
  br label %bb.kv

bb.ku:                                            ; preds = %bb.ks
  %i.akp = getelementptr i8, ptr %1, i64 28
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt
  %i.akq = phi ptr [ %i.ako, %bb.kt ], [ %i.akp, %bb.ku ] ; 3 uses
  %i.akr = getelementptr i8, ptr %1, i64 40
  %i.aks = load i32, ptr %i.akr, align 8, !tbaa !13
  %i.akt = getelementptr i8, ptr %1, i64 44
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !13
  %i.akv = getelementptr i8, ptr %1, i64 48
  %i.akw = load i32, ptr %i.akv, align 8, !tbaa !13
  %i.akx = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 10 uses
  %i.aky = icmp eq ptr %i.akx, null
  br i1 %i.aky, label %node_new_backref.exit.thread, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  store i32 4, ptr %i.akx, align 1
  %i.akz = getelementptr i8, ptr %i.akx, i64 4    ; 4 uses
  store i32 0, ptr %i.akz, align 4, !tbaa !13
  %i.ala = getelementptr i8, ptr %i.akx, i64 8
  store i32 %i.akl, ptr %i.ala, align 8, !tbaa !13
  %i.alb = getelementptr i8, ptr %i.akx, i64 40   ; 2 uses
  store ptr null, ptr %i.alb, align 8, !tbaa !13
  %.not.i373 = icmp eq i32 %i.aks, 0
  br i1 %.not.i373, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  store i32 2048, ptr %i.akz, align 4, !tbaa !13
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  %i.alc = phi i32 [ 2048, %bb.kx ], [ 0, %bb.kw ] ; 2 uses
  %.not53.i = icmp eq i32 %i.aku, 0
  br i1 %.not53.i, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.ald = or disjoint i32 %i.alc, 8192           ; 2 uses
  store i32 %i.ald, ptr %i.akz, align 4, !tbaa !13
  %i.ale = getelementptr i8, ptr %i.akx, i64 48
  store i32 %i.akw, ptr %i.ale, align 8, !tbaa !13
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky
  %i.alf = phi i32 [ %i.ald, %bb.kz ], [ %i.alc, %bb.ky ]
  %i.alg = icmp sgt i32 %i.akl, 0
  br i1 %i.alg, label %.lr.ph.i375, label %node_new_backref.exit.thread451

.lr.ph.i375:                                      ; preds = %bb.la
  %i.alh = getelementptr i8, ptr %5, i64 92
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !92
  %i.alj = getelementptr i8, ptr %5, i64 168
  %i.alk = getelementptr i8, ptr %5, i64 104
  %wide.trip.count.i = zext nneg i32 %i.akl to i64 ; 3 uses
  br label %bb.lb

bb.lb:                                            ; preds = %bb.le, %.lr.ph.i375
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i375 ], [ %indvars.iv.next.i, %bb.le ] ; 2 uses
  %i.all = getelementptr [4 x i8], ptr %i.akq, i64 %indvars.iv.i
  %i.alm = load i32, ptr %i.all, align 4, !tbaa !7 ; 2 uses
  %.not54.i = icmp sgt i32 %i.alm, %i.ali
  br i1 %.not54.i, label %bb.le, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.aln = load ptr, ptr %i.alj, align 8, !tbaa !93 ; 2 uses
  %.not55.i = icmp eq ptr %i.aln, null
  %i.alo = select i1 %.not55.i, ptr %i.alk, ptr %i.aln
  %i.alp = sext i32 %i.alm to i64
  %i.alq = getelementptr [8 x i8], ptr %i.alo, i64 %i.alp
  %i.alr = load ptr, ptr %i.alq, align 8, !tbaa !90
  %i.als = icmp eq ptr %i.alr, null
  br i1 %i.als, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  %i.alt = or i32 %i.alf, 128
  store i32 %i.alt, ptr %i.akz, align 4, !tbaa !13
  br label %.loopexit58.i

bb.le:                                            ; preds = %bb.lc, %bb.lb
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit58.i, label %bb.lb, !llvm.loop !155

.loopexit58.i:                                    ; preds = %bb.le, %bb.ld
  %i.alu = icmp slt i32 %i.akl, 7
  br i1 %i.alu, label %node_new_backref.exit, label %bb.lf

bb.lf:                                            ; preds = %.loopexit58.i
  %i.alv = shl nuw nsw i64 %wide.trip.count.i, 2  ; 2 uses
  %i.alw = tail call noalias ptr @malloc(i64 noundef %i.alv) #26 ; 3 uses
  %.not56.i376 = icmp eq ptr %i.alw, null
  br i1 %.not56.i376, label %.thread.i, label %.lr.ph61.preheader.i

.thread.i:                                        ; preds = %bb.lf
  tail call void @onig_node_free(ptr noundef nonnull %i.akx)
  br label %node_new_backref.exit.thread

.lr.ph61.preheader.i:                             ; preds = %bb.lf
  store ptr %i.alw, ptr %i.alb, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.alw, ptr nonnull readonly align 4 %i.akq, i64 %i.alv, i1 false), !tbaa !7
  br label %node_new_backref.exit.thread451

node_new_backref.exit.thread:                     ; preds = %.thread.i, %bb.kv
  store ptr null, ptr %0, align 8, !tbaa !90
  br label %node_new_quantifier.exit380

node_new_backref.exit.thread451:                  ; preds = %.lr.ph61.preheader.i, %bb.la
  store ptr %i.akx, ptr %0, align 8, !tbaa !90
  br label %.thread429

node_new_backref.exit:                            ; preds = %.loopexit58.i
  %i.alx = getelementptr i8, ptr %i.akx, i64 12
  %i.aly = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.alx, ptr nonnull readonly align 4 %i.akq, i64 %i.aly, i1 false), !tbaa !13
  store ptr %i.akx, ptr %0, align 8, !tbaa !90
  br label %.thread429

bb.lg:                                            ; preds = %bb.b
  %i.alz = getelementptr i8, ptr %1, i64 24
  %i.ama = getelementptr i8, ptr %1, i64 40
  %i.amb = load i32, ptr %i.ama, align 8, !tbaa !13 ; 4 uses
  %i.amc = icmp slt i32 %i.amb, 0
  br i1 %i.amc, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.amd = getelementptr i8, ptr %1, i64 44
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !13
  %.not324 = icmp eq i32 %i.ame, 0
  br i1 %.not324, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg
  %i.amf = icmp sgt i32 %i.amb, 0
  %i.amg = sext i1 %i.amf to i32
  %i.amh = getelementptr i8, ptr %5, i64 92
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !92
end_hunk_3
begin_hunk_4_@parse_char_class:bb.a
  %.2293513 = phi ptr [ %.0291.ph, %next_state_class.exit ], [ %.0291.ph, %bbuf_free.exit432 ], [ %.1292.ph, %bb.ek ], [ %.0291.ph, %.thread478 ], [ %.0291.ph, %bb.el ]
  %.3297511 = phi ptr [ %.1295.ph, %next_state_class.exit ], [ null, %bbuf_free.exit432 ], [ %.2296.ph, %bb.ek ], [ %.1295.ph, %.thread478 ], [ %.1295.ph, %bb.el ] ; 2 uses
  %.2302509 = phi ptr [ %.0300.ph, %next_state_class.exit ], [ %.1301, %bbuf_free.exit432 ], [ %.1301.ph, %bb.ek ], [ %.0300.ph, %.thread478 ], [ %.0300.ph, %bb.el ]
  %.2305507 = phi ptr [ %.0303.ph, %next_state_class.exit ], [ %.1304, %bbuf_free.exit432 ], [ %.1304.ph, %bb.ek ], [ %.0303.ph, %.thread478 ], [ %.0303.ph, %bb.el ] ; 2 uses
  %.1325503 = phi i32 [ %.0324.ph, %next_state_class.exit ], [ 1, %bbuf_free.exit432 ], [ 1, %bb.ek ], [ %.0324.ph, %.thread478 ], [ %.0324.ph, %bb.el ]
  %i.of = call fastcc i32 @fetch_token_in_cc(ptr noundef %2, ptr noundef %i.b, ptr noundef %4, ptr noundef nonnull %5) ; 3 uses
  %i.og = icmp slt i32 %i.of, 0
  br i1 %i.og, label %parse_posix_bracket.exit.thread, label %.outer, !llvm.loop !178

bb.en:                                            ; preds = %bb.w
  %i.oh = load i32, ptr %i.c, align 4, !tbaa !7
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.oj = load i32, ptr %i.d, align 4, !tbaa !7
  %i.ok = call fastcc i32 @next_state_val(ptr noundef %.0303.ph, ptr noundef %.1295.ph, ptr noundef %i.a, i32 noundef 0, ptr noundef %i.e, i32 noundef 0, i32 noundef %i.oj, ptr noundef %i.d, ptr noundef %i.c, ptr noundef nonnull %5) ; 2 uses
  %.not371 = icmp eq i32 %i.ok, 0
  br i1 %.not371, label %bb.ep, label %parse_posix_bracket.exit.thread

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.not372 = icmp eq ptr %.0300.ph, null
  br i1 %.not372, label %bb.eu, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ol = call fastcc i32 @and_cclass(ptr noundef nonnull %.0300.ph, ptr noundef %.0303.ph, ptr noundef nonnull %5) ; 2 uses
  %.not373 = icmp eq i32 %i.ol, 0
  br i1 %.not373, label %bb.er, label %parse_posix_bracket.exit.thread

bb.er:                                            ; preds = %bb.eq
  %i.om = getelementptr i8, ptr %.0303.ph, i64 40
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !63
  call fastcc void @bbuf_free(ptr noundef %i.on)
  %.not374 = icmp eq ptr %.1295.ph, null
  br i1 %.not374, label %.thread537, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.oo = call fastcc i32 @and_cclass(ptr noundef %.0291.ph, ptr noundef %.1295.ph, ptr noundef nonnull %5) ; 2 uses
  %.not375 = icmp eq i32 %i.oo, 0
  br i1 %.not375, label %bb.et, label %parse_posix_bracket.exit.thread

bb.et:                                            ; preds = %bb.es
  %i.op = getelementptr i8, ptr %.1295.ph, i64 40
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !63
  call fastcc void @bbuf_free(ptr noundef %i.oq)
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.ep
  %.3306 = phi ptr [ %.0300.ph, %bb.et ], [ %.0303.ph, %bb.ep ] ; 5 uses
  %.4298 = phi ptr [ %.0291.ph, %bb.et ], [ %.1295.ph, %bb.ep ] ; 5 uses
  %i.or = getelementptr i8, ptr %.3306, i64 4     ; 3 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !145 ; 2 uses
  %.not377 = icmp eq ptr %.4298, null             ; 2 uses
  br i1 %.not376439444, label %bb.ex, label %bb.ev

.thread537:                                       ; preds = %bb.er
  %i.ot = getelementptr i8, ptr %.0300.ph, i64 4  ; 3 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !145 ; 2 uses
  br i1 %.not376439444, label %.thread555, label %.thread550

.thread555:                                       ; preds = %.thread537
  %i.ov = and i32 %i.ou, -2
  store i32 %i.ov, ptr %i.ot, align 4, !tbaa !145
  br label %bb.ez

.thread550:                                       ; preds = %.thread537
  %i.ow = or i32 %i.ou, 1
  store i32 %i.ow, ptr %i.ot, align 4, !tbaa !145
  br label %bb.ez

bb.ev:                                            ; preds = %bb.eu
  %i.ox = or i32 %i.os, 1
  store i32 %i.ox, ptr %i.or, align 4, !tbaa !145
  br i1 %.not377, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.oy = getelementptr i8, ptr %.4298, i64 4     ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !145
  %i.pa = or i32 %i.oz, 1
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !145
  br label %bb.ez

bb.ex:                                            ; preds = %bb.eu
  %i.pb = and i32 %i.os, -2
  store i32 %i.pb, ptr %i.or, align 4, !tbaa !145
  br i1 %.not377, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.pc = getelementptr i8, ptr %.4298, i64 4     ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !145
  %i.pe = and i32 %i.pd, -2
  store i32 %i.pe, ptr %i.pc, align 4, !tbaa !145
  br label %bb.ez

bb.ez:                                            ; preds = %.thread555, %.thread550, %bb.ex, %bb.ey, %bb.ev, %bb.ew
  %.4298546 = phi ptr [ null, %bb.ex ], [ %.4298, %bb.ey ], [ null, %bb.ev ], [ %.4298, %bb.ew ], [ null, %.thread550 ], [ null, %.thread555 ]
  %.3306543 = phi ptr [ %.3306, %bb.ex ], [ %.3306, %bb.ey ], [ %.3306, %bb.ev ], [ %.3306, %bb.ew ], [ %.0300.ph, %.thread550 ], [ %.0300.ph, %.thread555 ] ; 12 uses
  %i.pf = getelementptr i8, ptr %.3306543, i64 4
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !145
  %i.ph = and i32 %i.pg, 1
  %.not379 = icmp eq i32 %i.ph, 0
  br i1 %.not379, label %.thread566, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.pi = load ptr, ptr %i.bp, align 8, !tbaa !98
  %i.pj = getelementptr i8, ptr %i.pi, i64 8
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !60
  %i.pl = and i32 %i.pk, 1048576
  %.not380 = icmp eq i32 %i.pl, 0
  br i1 %.not380, label %.thread566, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.pm = getelementptr i8, ptr %.3306543, i64 40 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !63
  %.not = icmp eq ptr %i.pn, null
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.fb
  %i.po = getelementptr i8, ptr %.3306543, i64 8
  %i.pp = load i32, ptr %i.po, align 8, !tbaa !7
  %.not381 = icmp eq i32 %i.pp, 0
  br i1 %.not381, label %bb.fc, label %.loopexit

bb.fc:                                            ; preds = %.preheader
  %i.pq = getelementptr i8, ptr %.3306543, i64 12
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !7
  %.not381.1 = icmp eq i32 %i.pr, 0
  br i1 %.not381.1, label %bb.fd, label %.loopexit

bb.fd:                                            ; preds = %bb.fc
  %i.ps = getelementptr i8, ptr %.3306543, i64 16
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !7
  %.not381.2 = icmp eq i32 %i.pt, 0
  br i1 %.not381.2, label %bb.fe, label %.loopexit

bb.fe:                                            ; preds = %bb.fd
  %i.pu = getelementptr i8, ptr %.3306543, i64 20
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !7
  %.not381.3 = icmp eq i32 %i.pv, 0
  br i1 %.not381.3, label %bb.ff, label %.loopexit

bb.ff:                                            ; preds = %bb.fe
  %i.pw = getelementptr i8, ptr %.3306543, i64 24
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !7
  %.not381.4 = icmp eq i32 %i.px, 0
  br i1 %.not381.4, label %bb.fg, label %.loopexit

bb.fg:                                            ; preds = %bb.ff
  %i.py = getelementptr i8, ptr %.3306543, i64 28
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !7
  %.not381.5 = icmp eq i32 %i.pz, 0
  br i1 %.not381.5, label %bb.fh, label %.loopexit

bb.fh:                                            ; preds = %bb.fg
  %i.qa = getelementptr i8, ptr %.3306543, i64 32
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !7
  %.not381.6 = icmp eq i32 %i.qb, 0
  br i1 %.not381.6, label %bb.fi, label %.loopexit

bb.fi:                                            ; preds = %bb.fh
  %i.qc = getelementptr i8, ptr %.3306543, i64 36
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !7
  %.not381.7 = icmp eq i32 %i.qd, 0
  br i1 %.not381.7, label %.thread566, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.fc, %bb.fd, %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.fb
  %i.qe = load ptr, ptr %i.br, align 8, !tbaa !97 ; 2 uses
  %i.qf = getelementptr i8, ptr %i.qe, i64 88
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !72
  %i.qh = call i32 %i.qg(i32 noundef 10, i32 noundef 0, ptr noundef %i.qe) #25
  %.not382 = icmp eq i32 %i.qh, 0
  br i1 %.not382, label %.thread566, label %bb.fj

bb.fj:                                            ; preds = %.loopexit
  %i.qi = load ptr, ptr %i.br, align 8, !tbaa !97 ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 40
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !166
  %i.ql = call i32 %i.qk(i32 noundef 10, ptr noundef %i.qi) #25
  %i.qm = icmp eq i32 %i.ql, 1
  br i1 %i.qm, label %bb.fk, label %bb.fn

bb.fk:                                            ; preds = %bb.fj
  %i.qn = getelementptr i8, ptr %.3306543, i64 8  ; 3 uses
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !7  ; 2 uses
  %i.qp = and i32 %i.qo, 1024
  %.not383 = icmp eq i32 %i.qp, 0
  br i1 %.not383, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call fastcc void @CC_DUP_WARN(ptr noundef nonnull %5)
  %.pre679 = load i32, ptr %i.qn, align 8, !tbaa !7
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.qq = phi i32 [ %.pre679, %bb.fl ], [ %i.qo, %bb.fk ]
  %i.qr = or i32 %i.qq, 1024
  store i32 %i.qr, ptr %i.qn, align 8, !tbaa !7
  br label %.thread566

bb.fn:                                            ; preds = %bb.fj
  %i.qs = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.pm, ptr noundef nonnull %5, i32 noundef 10, i32 noundef 10, i32 noundef 1) ; 2 uses
  %i.qt = icmp slt i32 %i.qs, 0
  br i1 %i.qt, label %parse_posix_bracket.exit.thread, label %.thread566

.thread566:                                       ; preds = %bb.fi, %bb.fm, %.loopexit, %bb.fn, %bb.fa, %bb.ez
  %i.qu = load ptr, ptr %i.b, align 8, !tbaa !69
  store ptr %i.qu, ptr %3, align 8, !tbaa !69
  %i.qv = load i32, ptr %i.i, align 8, !tbaa !113
  %i.qw = add i32 %i.qv, -1
  store i32 %i.qw, ptr %i.i, align 8, !tbaa !113
  br label %bbuf_free.exit436

parse_posix_bracket.exit.thread.loopexit:         ; preds = %bb.w
  br label %parse_posix_bracket.exit.thread

parse_posix_bracket.exit.thread:                  ; preds = %bb.cd, %bb.aw, %bb.dv, %bb.dk, %CC_ESC_WARN.exit427, %bb.z, %bb.ds, %bb.dl, %bb.dh, %parse_posix_bracket.exit, %bb.ap, %bb.ct, %.thread465, %bb.cr, %.thread478, %.thread491, %bb.eg, %bb.ed, %bb.eb, %bb.w, %parse_posix_bracket.exit.thread.loopexit, %bb.fn, %.thread448, %bb.es, %bb.eq, %bb.eo
  %.4307 = phi ptr [ %.0303.ph, %bb.w ], [ %.0303.ph, %bb.eo ], [ %.0303.ph, %bb.eq ], [ %.3306543, %bb.fn ], [ %.0303.ph, %.thread448 ], [ %.0300.ph, %bb.es ], [ %.0303.ph, %bb.cd ], [ %.0303.ph, %bb.aw ], [ %.0303.ph, %bb.dv ], [ %.0303.ph, %bb.dk ], [ %.0303.ph, %CC_ESC_WARN.exit427 ], [ %.0303.ph, %bb.z ], [ %.0303.ph, %bb.ds ], [ %.0303.ph, %bb.dl ], [ %.0303.ph, %bb.dh ], [ %.0303.ph, %parse_posix_bracket.exit ], [ %.0303.ph, %bb.ap ], [ %.0303.ph, %bb.eb ], [ %.0303.ph, %bb.ed ], [ %.0303.ph, %bb.eg ], [ %.2305507, %.thread491 ], [ %.0303.ph, %.thread478 ], [ %.0303.ph, %bb.cr ], [ %.0303.ph, %.thread465 ], [ %.0303.ph, %bb.ct ], [ %.0303.ph, %parse_posix_bracket.exit.thread.loopexit ] ; 2 uses
  %.5299 = phi ptr [ %.1295.ph, %bb.w ], [ %.1295.ph, %bb.eo ], [ %.1295.ph, %bb.eq ], [ %.4298546, %bb.fn ], [ %.1295.ph, %.thread448 ], [ %.1295.ph, %bb.es ], [ %.1295.ph, %bb.cd ], [ %.1295.ph, %bb.aw ], [ %.1295.ph, %bb.dv ], [ %.1295.ph, %bb.dk ], [ %.1295.ph, %CC_ESC_WARN.exit427 ], [ %.1295.ph, %bb.z ], [ %.1295.ph, %bb.ds ], [ %.1295.ph, %bb.dl ], [ %.1295.ph, %bb.dh ], [ %.1295.ph, %parse_posix_bracket.exit ], [ %.1295.ph, %bb.ap ], [ %.1295.ph, %bb.eb ], [ %.1295.ph, %bb.ed ], [ %.1295.ph, %bb.eg ], [ %.3297511, %.thread491 ], [ %.1295.ph, %.thread478 ], [ %.1295.ph, %bb.cr ], [ %.1295.ph, %.thread465 ], [ %.1295.ph, %bb.ct ], [ %.1295.ph, %parse_posix_bracket.exit.thread.loopexit ] ; 3 uses
  %.15 = phi i32 [ -11, %bb.w ], [ %i.ok, %bb.eo ], [ %i.ol, %bb.eq ], [ %i.qs, %bb.fn ], [ %.5.ph, %.thread448 ], [ %i.oo, %bb.es ], [ -121, %bb.aw ], [ %i.ej, %bb.ap ], [ %i.cd, %bb.z ], [ %.0126.i, %parse_posix_bracket.exit ], [ -121, %bb.cd ], [ %i.mf, %bb.dh ], [ %i.ef, %CC_ESC_WARN.exit427 ], [ %i.mk, %bb.dl ], [ %i.mz, %bb.ds ], [ -112, %bb.dk ], [ -112, %bb.dv ], [ %i.ns, %bb.eb ], [ %i.nt, %bb.ed ], [ %i.nx, %bb.eg ], [ %i.of, %.thread491 ], [ %.9, %.thread478 ], [ %i.kv, %bb.cr ], [ -110, %.thread465 ], [ %i.kz, %bb.ct ], [ -103, %parse_posix_bracket.exit.thread.loopexit ] ; 4 uses
  %i.qx = load ptr, ptr %0, align 8, !tbaa !90
  %.not407 = icmp eq ptr %.4307, %i.qx
  br i1 %.not407, label %bbuf_free.exit434, label %bb.fo

bb.fo:                                            ; preds = %parse_posix_bracket.exit.thread
  %i.qy = getelementptr i8, ptr %.4307, i64 40
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !63 ; 3 uses
  %.not.i433 = icmp eq ptr %i.qz, null
  br i1 %.not.i433, label %bbuf_free.exit434, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !66
  call void @free(ptr noundef %i.ra) #25
  call void @free(ptr noundef nonnull %i.qz) #25
  br label %bbuf_free.exit434

bbuf_free.exit434:                                ; preds = %bb.fp, %bb.fo, %parse_posix_bracket.exit.thread
  %.not408 = icmp eq ptr %.5299, null
  br i1 %.not408, label %bbuf_free.exit436, label %bb.fq

bb.fq:                                            ; preds = %bbuf_free.exit434
  %i.rb = load ptr, ptr %1, align 8, !tbaa !90
  %.not409 = icmp eq ptr %.5299, %i.rb
  br i1 %.not409, label %bbuf_free.exit436, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.rc = getelementptr i8, ptr %.5299, i64 40
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !63 ; 3 uses
  %.not.i435 = icmp eq ptr %i.rd, null
  br i1 %.not.i435, label %bbuf_free.exit436, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !66
  call void @free(ptr noundef %i.re) #25
  call void @free(ptr noundef nonnull %i.rd) #25
  br label %bbuf_free.exit436

bbuf_free.exit436:                                ; preds = %bb.q, %bb.df, %bb.dd, %bb.cj, %bb.cg, %fetch_char_property_to_ctype.exit.thread, %bb.h, %bb.fs, %bb.fr, %node_new_cclass.exit415.thread, %node_new_cclass.exit.thread, %bbuf_free.exit434, %bb.fq, %bb.f, %bb.a, %.thread566
  %.4 = phi i32 [ %.0270, %bb.f ], [ -16, %bb.a ], [ %.15, %bb.fs ], [ -5, %node_new_cclass.exit.thread ], [ -102, %bb.h ], [ -5, %node_new_cclass.exit415.thread ], [ 0, %.thread566 ], [ %.046.i, %fetch_char_property_to_ctype.exit.thread ], [ %i.jk, %bb.cj ], [ %.15, %bbuf_free.exit434 ], [ %.15, %bb.fq ], [ %.15, %bb.fr ], [ %i.mb, %bb.dd ], [ %i.md, %bb.df ], [ %i.jf, %bb.cg ], [ -102, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @is_onechar_cclass(ptr noundef readonly captures(none) %0, ptr noundef nonnull writeonly captures(none) %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !145
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %.not40 = icmp eq ptr %i.b, null
  br i1 %.not40, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !66   ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7    ; 6 uses
  %i.k = getelementptr i8, ptr %i.f, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ult i32 %i.j, 256
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = lshr i32 %i.j, 5
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %i.o, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = and i32 %i.j, 31
  %i.u = shl nuw i32 1, %i.t
  %i.v = and i32 %i.s, %i.u
  %.not41 = icmp eq i32 %i.v, 0
  %spec.store.select = select i1 %.not41, i32 %i.j, i32 -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.232 = phi i32 [ -1, %bb.b ], [ %spec.store.select, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !7    ; 3 uses
  %.not43 = icmp eq i32 %i.x, 0
  br i1 %.not43, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.x)
  %i.z = icmp samesign ult i32 %i.y, 2
  %i.aa = icmp eq i32 %.232, -1
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ab = add i32 %i.x, -1
  %i.ac = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 range(i32 0, -1) %i.ab)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.5 = phi i32 [ %.232, %bb.g ], [ %i.ac, %bb.i ] ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7  ; 3 uses
  %.not43.1 = icmp eq i32 %i.ae, 0
  br i1 %.not43.1, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.ae)
  %i.ag = icmp samesign ult i32 %i.af, 2
  %i.ah = icmp eq i32 %.5, -1
  %or.cond.1 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond.1, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ai = add i32 %i.ae, -1
  %i.aj = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 range(i32 0, -1) %i.ai)
  %i.ak = or disjoint i32 %i.aj, 32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.5.1 = phi i32 [ %.5, %bb.j ], [ %i.ak, %bb.l ] ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !7  ; 3 uses
  %.not43.2 = icmp eq i32 %i.am, 0
  br i1 %.not43.2, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.am)
  %i.ao = icmp samesign ult i32 %i.an, 2
  %i.ap = icmp eq i32 %.5.1, -1
  %or.cond.2 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.2, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.aq = add i32 %i.am, -1
  %i.ar = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 range(i32 0, -1) %i.aq)
  %i.as = or disjoint i32 %i.ar, 64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.5.2 = phi i32 [ %.5.1, %bb.m ], [ %i.as, %bb.o ] ; 2 uses
  %i.at = getelementptr i8, ptr %0, i64 20
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7  ; 3 uses
  %.not43.3 = icmp eq i32 %i.au, 0
  br i1 %.not43.3, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.au)
  %i.aw = icmp samesign ult i32 %i.av, 2
  %i.ax = icmp eq i32 %.5.2, -1
  %or.cond.3 = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond.3, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.ay = add i32 %i.au, -1
  %i.az = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 range(i32 0, -1) %i.ay)
  %i.ba = or disjoint i32 %i.az, 96
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.5.3 = phi i32 [ %.5.2, %bb.p ], [ %i.ba, %bb.r ] ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !7  ; 3 uses
  %.not43.4 = icmp eq i32 %i.bc, 0
  br i1 %.not43.4, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.bc)
  %i.be = icmp samesign ult i32 %i.bd, 2
  %i.bf = icmp eq i32 %.5.3, -1
  %or.cond.4 = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond.4, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.bg = add i32 %i.bc, -1
  %i.bh = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 range(i32 0, -1) %i.bg)
  %i.bi = or disjoint i32 %i.bh, 128
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.5.4 = phi i32 [ %.5.3, %bb.s ], [ %i.bi, %bb.u ] ; 2 uses
  %i.bj = getelementptr i8, ptr %0, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7  ; 3 uses
  %.not43.5 = icmp eq i32 %i.bk, 0
  br i1 %.not43.5, label %bb.y, label %bb.w
end_hunk_4
begin_hunk_5_@fetch_token_in_cc:bb.a
  %i.if = phi i32 [ %i.ie, %bb.cy ], [ %i.ib, %bb.cx ]
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr i8, ptr %i.y, i64 %i.ig
  store ptr %i.ih, ptr %i.b, align 8, !tbaa !69
  store i32 25, ptr %0, align 8, !tbaa !99
  br label %bb.da

bb.da:                                            ; preds = %.thread, %bb.cm, %bb.i, %bb.ck, %bb.cl, %bb.cg, %bb.ci, %bb.br, %bb.bs, %bb.cf, %bb.ce, %bb.bq, %bb.bm, %bb.bp, %bb.bl, %bb.bh, %bb.bg, %bb.bk, %bb.bi, %bb.at, %bb.as, %bb.aq, %bb.ar, %bb.ai, %bb.aj, %bb.ad, %bb.ab, %bb.z, %bb.ac, %bb.aa, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.cz, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.j, %bb.l
  %i.ii = load ptr, ptr %i.b, align 8, !tbaa !69
  store ptr %i.ii, ptr %1, align 8, !tbaa !69
  %i.ij = load i32, ptr %0, align 8, !tbaa !99
  br label %bb.db

bb.db:                                            ; preds = %bb.cj, %bb.ch, %bb.bx, %bb.bv, %bb.bo, %bb.bn, %bb.bj, %bb.az, %bb.ax, %bb.m, %bb.da, %bb.b
  %.0275 = phi i32 [ %i.ij, %bb.da ], [ -200, %bb.ch ], [ -104, %bb.m ], [ -401, %bb.ax ], [ -212, %bb.az ], [ -200, %bb.bj ], [ -211, %bb.bn ], [ -200, %bb.bo ], [ -401, %bb.bv ], [ -212, %bb.bx ], [ 0, %bb.b ], [ %i.gw, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.0275
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @CC_ESC_WARN(ptr noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @onig_warn, align 8, !tbaa !11
  %i.b = icmp eq ptr %i.a, @onig_null_warn
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !60
  %i.g = and i32 %i.f, 18874368
  %or.cond.not = icmp eq i32 %i.g, 18874368
  br i1 %or.cond.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @next_state_val(ptr noundef nonnull captures(none) %0, ptr noundef captures(address_is_null) %1, ptr noundef nonnull captures(none) %2, i32 noundef %3, ptr noundef nonnull writeonly captures(none) %4, i32 noundef range(i32 0, 2) %5, i32 noundef %6, ptr noundef nonnull captures(none) %7, ptr noundef nonnull captures(none) %8, ptr noundef captures(none) %9) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %8, align 4, !tbaa !7
  switch i32 %i.a, label %bb.ai [
    i32 0, label %bb.b
    i32 1, label %bb.l
    i32 2, label %bb.ah
    i32 3, label %bb.ah
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %7, align 4, !tbaa !7
  switch i32 %i.b, label %bb.ai [
    i32 0, label %bb.c
    i32 1, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.d = load i32, ptr %2, align 4, !tbaa !7      ; 2 uses
  %i.e = sdiv i32 %i.d, 32
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr [4 x i8], ptr %i.c, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %i.i = and i32 %i.d, 31
  %i.j = shl nuw i32 1, %i.i
  %i.k = and i32 %i.j, %i.h
  %.not112 = icmp eq i32 %i.k, 0
  %i.l = load ptr, ptr @onig_warn, align 8
  %i.m = icmp eq ptr %i.l, @onig_null_warn
  %or.cond = select i1 %.not112, i1 true, i1 %i.m
  br i1 %or.cond, label %CC_DUP_WARN.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.o = load i64, ptr %i.n, align 8, !tbaa !57
  %i.p = and i64 %i.o, -5
  %.not5.i = icmp eq i64 %i.p, 0
  br i1 %.not5.i, label %CC_DUP_WARN.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %9, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !98
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !60
  %i.u = and i32 %i.t, 67108864
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %CC_DUP_WARN.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %9, i64 180        ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !137  ; 2 uses
  %i.x = and i32 %i.w, 67108864
  %.not4.i = icmp eq i32 %i.x, 0
  br i1 %.not4.i, label %bb.g, label %CC_DUP_WARN.exit

bb.g:                                             ; preds = %bb.f
  %i.y = or disjoint i32 %i.w, 67108864
  store i32 %i.y, ptr %i.v, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %9, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit

CC_DUP_WARN.exit:                                 ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.z = load i32, ptr %2, align 4, !tbaa !7      ; 2 uses
  %i.aa = and i32 %i.z, 31
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = sdiv i32 %i.z, 32
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr [4 x i8], ptr %i.c, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = or i32 %i.ab, %i.af
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !7
  %.not113 = icmp eq ptr %1, null
  br i1 %.not113, label %bb.ai, label %bb.h

bb.h:                                             ; preds = %CC_DUP_WARN.exit
  %i.ah = load i32, ptr %2, align 4, !tbaa !7     ; 2 uses
  %i.ai = and i32 %i.ah, 31
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = getelementptr i8, ptr %1, i64 8
  %i.al = sdiv i32 %i.ah, 32
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr [4 x i8], ptr %i.ak, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = or i32 %i.aj, %i.ao
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !7
  br label %bb.ai

bb.i:                                             ; preds = %bb.b
  %i.aq = getelementptr i8, ptr %0, i64 40
  %i.ar = load i32, ptr %2, align 4, !tbaa !7     ; 2 uses
  %i.as = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.aq, ptr noundef %9, i32 noundef %i.ar, i32 noundef %i.ar, i32 noundef 1) ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %add_code_range.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not111 = icmp eq ptr %1, null
  br i1 %.not111, label %bb.ai, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr i8, ptr %1, i64 40
  %i.av = load i32, ptr %2, align 4, !tbaa !7     ; 2 uses
  %i.aw = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.au, ptr noundef %9, i32 noundef %i.av, i32 noundef %i.av, i32 noundef 0) ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %add_code_range.exit.thread, label %bb.ai

bb.l:                                             ; preds = %bb.a
  %i.ay = load i32, ptr %7, align 4, !tbaa !7
  %i.az = icmp eq i32 %6, %i.ay
  br i1 %i.az, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.ba = icmp eq i32 %6, 0
  %i.bb = load i32, ptr %2, align 4, !tbaa !7     ; 5 uses
  br i1 %i.ba, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bc = or i32 %i.bb, %3
  %or.cond.not = icmp ult i32 %i.bc, 256
  br i1 %or.cond.not, label %bb.o, label %add_code_range.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bd = icmp samesign ugt i32 %i.bb, %3
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr i8, ptr %9, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !98
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !60
  %i.bi = and i32 %i.bh, 4194304
  %.not110 = icmp eq i32 %i.bi, 0
  br i1 %.not110, label %add_code_range.exit.thread, label %add_code_range0.exit.thread132

bb.q:                                             ; preds = %bb.o
  %i.bj = getelementptr i8, ptr %0, i64 8
  tail call fastcc void @bitset_set_range(ptr noundef %9, ptr noundef %i.bj, i32 noundef %i.bb, i32 noundef %3)
  %.not109 = icmp eq ptr %1, null
  br i1 %.not109, label %add_code_range0.exit.thread132, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr i8, ptr %1, i64 8
  %i.bl = load i32, ptr %2, align 4, !tbaa !7
  tail call fastcc void @bitset_set_range(ptr noundef %9, ptr noundef %i.bk, i32 noundef %i.bl, i32 noundef %3)
  br label %add_code_range0.exit.thread132

bb.s:                                             ; preds = %bb.m
  %i.bm = icmp ugt i32 %i.bb, %3
  br i1 %i.bm, label %bb.t, label %add_code_range.exit

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr i8, ptr %9, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !98
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !60
  %i.br = and i32 %i.bq, 4194304
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %add_code_range.exit.thread, label %add_code_range.exit.thread127

add_code_range.exit:                              ; preds = %bb.s
  %i.bs = getelementptr i8, ptr %0, i64 40
  %i.bt = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.bs, ptr noundef %9, i32 noundef %i.bb, i32 noundef %3, i32 noundef 1) ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %add_code_range.exit.thread, label %add_code_range.exit.thread127

add_code_range.exit.thread127:                    ; preds = %bb.t, %add_code_range.exit
  %.not108 = icmp eq ptr %1, null
  br i1 %.not108, label %add_code_range0.exit.thread132, label %bb.u

bb.u:                                             ; preds = %add_code_range.exit.thread127
  %i.bv = load i32, ptr %2, align 4, !tbaa !7     ; 2 uses
  %i.bw = icmp ugt i32 %i.bv, %3
  br i1 %i.bw, label %bb.v, label %add_code_range0.exit

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr i8, ptr %9, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !98
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !60
  %i.cb = and i32 %i.ca, 4194304
  %.not.i115 = icmp eq i32 %i.cb, 0
  br i1 %.not.i115, label %add_code_range.exit.thread, label %add_code_range0.exit.thread132

add_code_range0.exit:                             ; preds = %bb.u
  %i.cc = getelementptr i8, ptr %1, i64 40
  %i.cd = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.cc, ptr noundef %9, i32 noundef %i.bv, i32 noundef %3, i32 noundef 0) ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %add_code_range.exit.thread, label %add_code_range0.exit.thread132

bb.w:                                             ; preds = %bb.l
  %i.cf = load i32, ptr %2, align 4, !tbaa !7     ; 4 uses
  %i.cg = icmp ugt i32 %i.cf, %3
  br i1 %i.cg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr i8, ptr %9, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !98
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !60
  %i.cl = and i32 %i.ck, 4194304
  %.not107 = icmp eq i32 %i.cl, 0
  br i1 %.not107, label %add_code_range.exit.thread, label %add_code_range0.exit.thread132

bb.y:                                             ; preds = %bb.w
  %i.cm = getelementptr i8, ptr %0, i64 8
  %i.cn = tail call i32 @llvm.umin.i32(i32 %3, i32 255) ; 3 uses
  %.not145 = icmp sgt i32 %i.cf, %i.cn
  br i1 %.not145, label %bitset_set_range.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.co = getelementptr i8, ptr %9, i64 16
  %i.cp = getelementptr i8, ptr %9, i64 180       ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %CC_DUP_WARN.exit.i, %.lr.ph.i
  %.014.i = phi i32 [ %i.cf, %.lr.ph.i ], [ %i.dl, %CC_DUP_WARN.exit.i ] ; 4 uses
  %i.cq = sdiv i32 %.014.i, 32
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cr ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.cu = and i32 %.014.i, 31
  %i.cv = shl nuw i32 1, %i.cu                    ; 2 uses
  %i.cw = and i32 %i.cv, %i.ct
  %.not.i116 = icmp eq i32 %i.cw, 0
  %i.cx = load ptr, ptr @onig_warn, align 8
  %i.cy = icmp eq ptr %i.cx, @onig_null_warn
  %or.cond.i = select i1 %.not.i116, i1 true, i1 %i.cy
  br i1 %or.cond.i, label %CC_DUP_WARN.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !57
  %i.db = and i64 %i.da, -5
  %.not5.i.i = icmp eq i64 %i.db, 0
  br i1 %.not5.i.i, label %CC_DUP_WARN.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !98
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !60
  %i.df = and i32 %i.de, 67108864
  %.not.i.i117 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i117, label %CC_DUP_WARN.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = load i32, ptr %i.cp, align 4, !tbaa !137 ; 2 uses
  %i.dh = and i32 %i.dg, 67108864
  %.not4.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not4.i.i, label %bb.ad, label %CC_DUP_WARN.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.di = or disjoint i32 %i.dg, 67108864
  store i32 %i.di, ptr %i.cp, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %9, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit.i

CC_DUP_WARN.exit.i:                               ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.dj = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.dk = or i32 %i.dj, %i.cv
  store i32 %i.dk, ptr %i.cs, align 4, !tbaa !7
  %i.dl = add i32 %.014.i, 1
  %exitcond.not = icmp eq i32 %.014.i, %i.cn
  br i1 %exitcond.not, label %bitset_set_range.exit.loopexit, label %bb.z, !llvm.loop !180

bitset_set_range.exit.loopexit:                   ; preds = %CC_DUP_WARN.exit.i
  %.pre = load i32, ptr %2, align 4, !tbaa !7
  br label %bitset_set_range.exit

bitset_set_range.exit:                            ; preds = %bitset_set_range.exit.loopexit, %bb.y
  %i.dm = phi i32 [ %.pre, %bitset_set_range.exit.loopexit ], [ %i.cf, %bb.y ] ; 2 uses
  %i.dn = icmp ugt i32 %i.dm, %3
  br i1 %i.dn, label %bb.ae, label %add_code_range.exit121

bb.ae:                                            ; preds = %bitset_set_range.exit
  %i.do = getelementptr i8, ptr %9, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !98
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !60
  %i.ds = and i32 %i.dr, 4194304
  %.not.i.i119 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i119, label %add_code_range.exit.thread, label %add_code_range.exit121.thread137

add_code_range.exit121:                           ; preds = %bitset_set_range.exit
  %i.dt = getelementptr i8, ptr %0, i64 40
  %i.du = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.dt, ptr noundef %9, i32 noundef %i.dm, i32 noundef %3, i32 noundef 1) ; 2 uses
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %add_code_range.exit.thread, label %add_code_range.exit121.thread137

add_code_range.exit121.thread137:                 ; preds = %bb.ae, %add_code_range.exit121
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %add_code_range0.exit.thread132, label %bb.af

bb.af:                                            ; preds = %add_code_range.exit121.thread137
  %i.dw = getelementptr i8, ptr %1, i64 8
  %i.dx = load i32, ptr %2, align 4, !tbaa !7
  tail call fastcc void @bitset_set_range(ptr noundef %9, ptr noundef %i.dw, i32 noundef %i.dx, i32 noundef %i.cn)
  %i.dy = load i32, ptr %2, align 4, !tbaa !7     ; 2 uses
  %i.dz = icmp ugt i32 %i.dy, %3
  br i1 %i.dz, label %bb.ag, label %add_code_range0.exit125

bb.ag:                                            ; preds = %bb.af
  %i.ea = getelementptr i8, ptr %9, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !98
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !60
  %i.ee = and i32 %i.ed, 4194304
  %.not.i123 = icmp eq i32 %i.ee, 0
  br i1 %.not.i123, label %add_code_range.exit.thread, label %add_code_range0.exit.thread132

add_code_range0.exit125:                          ; preds = %bb.af
  %i.ef = getelementptr i8, ptr %1, i64 40
  %i.eg = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.ef, ptr noundef %9, i32 noundef %i.dy, i32 noundef %3, i32 noundef 0) ; 2 uses
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %add_code_range.exit.thread, label %add_code_range0.exit.thread132

add_code_range0.exit.thread132:                   ; preds = %bb.ag, %bb.v, %add_code_range.exit.thread127, %add_code_range0.exit, %bb.q, %bb.r, %add_code_range0.exit125, %add_code_range.exit121.thread137, %bb.x, %bb.p
  store i32 2, ptr %8, align 4, !tbaa !7
  br label %bb.ai

bb.ah:                                            ; preds = %bb.a, %bb.a
  store i32 0, ptr %8, align 4, !tbaa !7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.b, %bb.a, %bb.h, %CC_DUP_WARN.exit, %bb.j, %bb.k, %bb.ah, %add_code_range0.exit.thread132
  store i32 %5, ptr %4, align 4, !tbaa !7
  store i32 %3, ptr %2, align 4, !tbaa !7
  store i32 %6, ptr %7, align 4, !tbaa !7
  br label %add_code_range.exit.thread

add_code_range.exit.thread:                       ; preds = %bb.ag, %bb.ae, %bb.v, %bb.t, %add_code_range0.exit125, %add_code_range.exit121, %bb.x, %add_code_range0.exit, %add_code_range.exit, %bb.p, %bb.n, %bb.k, %bb.i, %bb.ai
  %.0 = phi i32 [ 0, %bb.ai ], [ %i.du, %add_code_range.exit121 ], [ %i.as, %bb.i ], [ %i.aw, %bb.k ], [ -400, %bb.n ], [ -203, %bb.p ], [ %i.bt, %add_code_range.exit ], [ %i.cd, %add_code_range0.exit ], [ -203, %bb.x ], [ %i.eg, %add_code_range0.exit125 ], [ -203, %bb.ae ], [ -203, %bb.t ], [ -203, %bb.v ], [ -203, %bb.ag ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @str_exist_check_with_esc(i32 %.0.val, i32 %.4.val, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 16         ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 20         ; 4 uses
  %i.d = getelementptr i8, ptr %2, i64 32         ; 3 uses
  %i.e = getelementptr i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %bb.o
  %.05 = phi ptr [ %0, %.lr.ph7 ], [ %.1, %bb.o ] ; 8 uses
  %.0704 = phi i32 [ 0, %.lr.ph7 ], [ %.2, %bb.o ]
  %.not = icmp eq i32 %.0704, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.g = load i32, ptr %i.c, align 4, !tbaa !47
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @onigenc_mbclen(ptr noundef %.05, ptr noundef nonnull %1, ptr noundef nonnull %2) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.i, %bb.d ], [ %i.f, %bb.c ]
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr i8, ptr %.05, i64 %i.k
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.n = tail call i32 %i.m(ptr noundef %.05, ptr noundef nonnull %1, ptr noundef %2) #25
  %i.o = load i32, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.p = load i32, ptr %i.c, align 4, !tbaa !47
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 @onigenc_mbclen(ptr noundef %.05, ptr noundef nonnull %1, ptr noundef nonnull %2) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = phi i32 [ %i.r, %bb.g ], [ %i.o, %bb.f ]
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %.05, i64 %i.t     ; 4 uses
  %i.v = icmp eq i32 %i.n, %.0.val
  br i1 %i.v, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.h
  %i.w = icmp ult ptr %i.u, %1
  br i1 %i.w, label %.lr.ph, label %.preheader..critedge_crit_edge

.preheader..critedge_crit_edge:                   ; preds = %.preheader
  %.pre = load i32, ptr %i.b, align 8, !tbaa !70
  %.pre15 = load i32, ptr %i.c, align 4, !tbaa !47
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.y = tail call i32 %i.x(ptr noundef %i.u, ptr noundef nonnull %1, ptr noundef nonnull %2) #25
  %.not80 = icmp eq i32 %i.y, %.4.val
  %.pre14 = load i32, ptr %i.b, align 8, !tbaa !70 ; 2 uses
  %.pre16 = load i32, ptr %i.c, align 4, !tbaa !47 ; 2 uses
  br i1 %.not80, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph
  %i.z = icmp eq i32 %.pre14, %.pre16
  br i1 %i.z, label %._crit_edge8, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i32 @onigenc_mbclen(ptr noundef %i.u, ptr noundef nonnull %1, ptr noundef nonnull %2) #25 ; 0 uses
  br label %._crit_edge8

.critedge:                                        ; preds = %.preheader..critedge_crit_edge, %.lr.ph
  %i.ab = phi i32 [ %.pre15, %.preheader..critedge_crit_edge ], [ %.pre16, %.lr.ph ] ; 2 uses
  %i.ac = phi i32 [ %.pre, %.preheader..critedge_crit_edge ], [ %.pre14, %.lr.ph ]
  %i.ad = icmp eq i32 %i.ac, %i.ab
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.ae = tail call i32 @onigenc_mbclen(ptr noundef %.05, ptr noundef nonnull %1, ptr noundef nonnull %2) #25
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.k
  %i.af = phi i32 [ %i.ae, %bb.k ], [ %i.ab, %.critedge ]
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %.05, i64 %i.ag
  br label %bb.o

bb.m:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.aj = tail call i32 %i.ai(ptr noundef %.05, ptr noundef nonnull %1, ptr noundef nonnull %2) #25 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 93
  br i1 %i.ak, label %._crit_edge8, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load i32, ptr %i.e, align 4, !tbaa !103
  %i.am = icmp eq i32 %i.aj, %i.al
  %spec.select = zext i1 %i.am to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.e
  %.2 = phi i32 [ 0, %bb.e ], [ 0, %bb.l ], [ %spec.select, %bb.n ]
  %.1 = phi ptr [ %i.l, %bb.e ], [ %i.ah, %bb.l ], [ %i.u, %bb.n ] ; 2 uses
  %i.an = icmp ult ptr %.1, %1
  br i1 %i.an, label %bb.b, label %._crit_edge8, !llvm.loop !207

._crit_edge8:                                     ; preds = %bb.m, %bb.o, %bb.j, %bb.i, %bb.a
  %.073 = phi i32 [ 0, %bb.a ], [ 1, %bb.j ], [ 1, %bb.i ], [ 0, %bb.o ], [ 0, %bb.m ]
  ret i32 %.073
}

declare i32 @onigenc_strlen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @onigenc_with_ascii_strncmp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @onigenc_step(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @i_apply_case_fold(i32 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef captures(none) %3) #5 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 9 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !147    ; 4 uses
  %i.c = getelementptr i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 6 uses
  %i.e = getelementptr i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !150  ; 3 uses
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i32 %0, 128
  %i.j = load i32, ptr %1, align 4, !tbaa !7
  %i.k = icmp ugt i32 %i.j, 127
  %i.l = xor i1 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97
  %i.o = tail call i32 @onig_is_code_in_cc(ptr noundef %i.n, i32 noundef %0, ptr noundef nonnull %i.f) #25 ; 2 uses
  %i.p = getelementptr i8, ptr %i.f, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !145
  %i.r = and i32 %i.q, 1
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not75 = icmp eq i32 %i.o, 0
  %i.s = zext i1 %.not75 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c
  %.066 = phi i32 [ %i.o, %bb.c ], [ 0, %bb.a ], [ %i.s, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %i.t = icmp eq i32 %2, 1
  br i1 %i.t, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97
  %i.w = tail call i32 @onig_is_code_in_cc(ptr noundef %i.v, i32 noundef %0, ptr noundef %i.d) #25
  %cond80 = icmp eq i32 %i.w, 0
  %i.x = getelementptr i8, ptr %i.d, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !145
  %i.z = trunc i32 %i.y to i1                     ; 2 uses
end_hunk_5
