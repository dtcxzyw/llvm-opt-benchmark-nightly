inline.NumInlined: 37
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@report:.preheader150
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !205
  %i.gr = add nsw i64 %i.gq, %i.go
  %i.gs = getelementptr inbounds nuw i8, ptr %i.k, i64 2216
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !205
  %i.gu = add nsw i64 %i.gt, %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.k, i64 1976
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !205
  %i.gx = add nsw i64 %i.gw, %i.gu
  %i.gy = load ptr, ptr @img, align 8, !tbaa !8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.ha = load float, ptr %i.gz, align 8, !tbaa !142
  %i.hb = load ptr, ptr @stats, align 8, !tbaa !8 ; 5 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 700
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !15
  %i.he = add nsw i32 %i.hd, 1
  %i.hf = sitofp i32 %i.he to float
  %i.hg = fmul float %i.ha, %i.hf
  %i.hh = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 20
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !70
  %i.hk = add nsw i32 %i.hj, 1
  %i.hl = sitofp i32 %i.hk to float
  %i.hm = fdiv float %i.hg, %i.hl                 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hb, i64 720
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !51
  %i.hq = add nsw i32 %i.hp, %i.j
  %i.hr = sitofp i32 %i.hq to float               ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hb, i64 744
  %i.ht = load <2 x i64>, ptr %i.hn, align 8, !tbaa !205
  %i.hu = sitofp <2 x i64> %i.ht to <2 x float>
  %i.hv = insertelement <2 x float> poison, float %i.hm, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x float> %i.hw, %i.hu
  %i.hy = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = fdiv <2 x float> %i.hx, %i.hz
  store <2 x float> %i.ia, ptr %i.hs, align 8, !tbaa !210
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hb, i64 736
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !211
  %i.id = sitofp i64 %i.ic to float
  %i.ie = fmul float %i.hm, %i.id
  %i.if = fdiv float %i.ie, %i.hr
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hb, i64 752
  store float %i.if, ptr %i.ig, align 8, !tbaa !212
  %i.ih = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.ii = tail call i64 @fwrite(ptr nonnull @.str.30, i64 80, i64 1, ptr %i.ih) ; 0 uses
  %i.ij = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 5112
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !61
  %.not = icmp eq i32 %i.il, 0
  br i1 %.not, label %bb.at, label %bb.a

bb.a:                                             ; preds = %.preheader150
  %i.im = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.in = load ptr, ptr @img, align 8, !tbaa !8
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 48
  %i.ip = load float, ptr %i.io, align 8, !tbaa !142
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 20
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !70
  %i.is = add nsw i32 %i.ir, 1
  %i.it = sitofp i32 %i.is to float
  %i.iu = fdiv float %i.ip, %i.it
  %i.iv = fpext float %i.iu to double
  %i.iw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.im, ptr noundef nonnull @.str.31, double noundef %i.iv) #23 ; 0 uses
  %i.ix = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.iy = load ptr, ptr @input, align 8, !tbaa !8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 5780
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !4
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [20 x i8], ptr @DistortionType, i64 %i.jb
  %i.jd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ix, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef nonnull %i.jc) #23 ; 0 uses
  %i.je = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.jf = load ptr, ptr @input, align 8, !tbaa !8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 5784
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !4
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [20 x i8], ptr @DistortionType, i64 %i.ji
  %i.jk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.je, ptr noundef nonnull @.str.32, i32 noundef 1, ptr noundef nonnull %i.jj) #23 ; 0 uses
  %i.jl = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.jm = load ptr, ptr @input, align 8, !tbaa !8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 5788
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !4
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [20 x i8], ptr @DistortionType, i64 %i.jp
  %i.jr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jl, ptr noundef nonnull @.str.32, i32 noundef 2, ptr noundef nonnull %i.jq) #23 ; 0 uses
  %i.js = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.jt = load ptr, ptr @input, align 8, !tbaa !8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 5792
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !213
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [20 x i8], ptr @DistortionType, i64 %i.jw
  %i.jy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.js, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.jx) #23 ; 0 uses
  %i.jz = load ptr, ptr @input, align 8, !tbaa !8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 5776
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !214
  %cond1 = icmp eq i32 %i.kb, 1
  %i.kc = load ptr, ptr @stdout, align 8, !tbaa !19 ; 2 uses
  br i1 %cond1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.kd = tail call i64 @fwrite(ptr nonnull @.str.34, i64 43, i64 1, ptr %i.kc) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ke = tail call i64 @fwrite(ptr nonnull @.str.35, i64 39, i64 1, ptr %i.kc) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.kf = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.kg = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 56
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !147
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 60
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !149
  %i.kl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kf, ptr noundef nonnull @.str.36, i32 noundef %i.ki, i32 noundef %i.kk) #23 ; 0 uses
  %i.km = load ptr, ptr @input, align 8, !tbaa !8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 68
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !215
  %.not122 = icmp eq i32 %i.ko, 0
  %i.kp = load ptr, ptr @stdout, align 8, !tbaa !19 ; 2 uses
  br i1 %.not122, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.kq = tail call i64 @fwrite(ptr nonnull @.str.37, i64 40, i64 1, ptr %i.kp) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.kr = tail call i64 @fwrite(ptr nonnull @.str.38, i64 41, i64 1, ptr %i.kp) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ks = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.kt = load ptr, ptr @input, align 8, !tbaa !8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 28
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !216
  %i.kw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ks, ptr noundef nonnull @.str.39, i32 noundef %i.kv) #23 ; 0 uses
  %i.kx = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.ky = load ptr, ptr @input, align 8, !tbaa !8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !138
  %i.lb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kx, ptr noundef nonnull @.str.40, i32 noundef %i.la) #23 ; 0 uses
  %i.lc = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.ld = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 36
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !217 ; 2 uses
  %.not123 = icmp eq i32 %i.lf, 0
  br i1 %.not123, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.li = phi i32 [ %i.lh, %bb.h ], [ %i.lf, %bb.g ]
  %i.lj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lc, ptr noundef nonnull @.str.41, i32 noundef %i.li) #23 ; 0 uses
  %i.lk = load ptr, ptr @stats, align 8, !tbaa !8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 700
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !15
  %.not124 = icmp eq i32 %i.lm, 0
  br i1 %.not124, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ln = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.lo = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !218 ; 2 uses
  %.not125 = icmp eq i32 %i.lq, 0
  br i1 %.not125, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !138
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.lt = phi i32 [ %i.ls, %bb.k ], [ %i.lq, %bb.j ]
  %i.lu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ln, ptr noundef nonnull @.str.42, i32 noundef %i.lt) #23 ; 0 uses
  %i.lv = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.lw = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 44
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !219 ; 2 uses
  %.not126 = icmp eq i32 %i.ly, 0
  br i1 %.not126, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !138
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.mb = phi i32 [ %i.ma, %bb.m ], [ %i.ly, %bb.l ]
  %i.mc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lv, ptr noundef nonnull @.str.43, i32 noundef %i.mb) #23 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %i.md = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.me = tail call i64 @fwrite(ptr nonnull @.str.44, i64 36, i64 1, ptr %i.md) ; 0 uses
  %i.mf = load ptr, ptr @stats, align 8, !tbaa !8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 700 ; 4 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !15 ; 2 uses
  %i.mi = icmp sgt i32 %i.mh, 0
  br i1 %i.mi, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.mj = load ptr, ptr @input, align 8, !tbaa !8 ; 9 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 2968
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !54
  %.not127 = icmp eq i32 %i.ml, 0
  br i1 %.not127, label %.lr.ph.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.mm = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 12
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !220
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !221
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mj, i64 2104
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !222
  %i.mt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mm, ptr noundef nonnull @.str.45, i32 noundef %i.mo, i32 noundef %i.mq, i32 noundef %i.ms) #23 ; 0 uses
  br label %bb.y

.lr.ph.preheader:                                 ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i16 73, ptr %i.d, align 16
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mj, i64 2964 ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.093155 = phi i32 [ %i.nc, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !40
  %.not129 = icmp eq i32 %i.mv, 0
  %i.mw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #26
  %i.mx = trunc i64 %i.mw to i32
  %i.my = sub i32 79, %i.mx
  %i.mz = call noundef i32 @llvm.smax.i32(i32 %i.my, i32 0)
  %i.na = zext nneg i32 %i.mz to i64
  %.str.48..str.47 = select i1 %.not129, ptr @.str.48, ptr @.str.47
  %i.nb = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull %.str.48..str.47, i64 noundef %i.na) #23 ; 0 uses
  %i.nc = add nuw nsw i32 %.093155, 1             ; 2 uses
  %i.nd = load i32, ptr %i.mg, align 4, !tbaa !15
  %i.ne = icmp slt i32 %i.nc, %i.nd
  br i1 %i.ne, label %.lr.ph, label %._crit_edge, !llvm.loop !223

._crit_edge:                                      ; preds = %.lr.ph
  %i.nf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #26
  %i.ng = trunc i64 %i.nf to i32
  %i.nh = sub i32 79, %i.ng
  %i.ni = call noundef i32 @llvm.smax.i32(i32 %i.nh, i32 0)
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull @.str.49, i64 noundef %i.nj) #23 ; 0 uses
  %i.nl = load i32, ptr %i.mg, align 4, !tbaa !15
  %i.nm = icmp sgt i32 %i.nl, 0
  br i1 %i.nm, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %._crit_edge, %.lr.ph.1
  %.093155.1 = phi i32 [ %i.nu, %.lr.ph.1 ], [ 0, %._crit_edge ]
  %i.nn = load i32, ptr %i.mu, align 4, !tbaa !40
  %.not129.1 = icmp eq i32 %i.nn, 0
  %i.no = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #26
  %i.np = trunc i64 %i.no to i32
  %i.nq = sub i32 79, %i.np
  %i.nr = call noundef i32 @llvm.smax.i32(i32 %i.nq, i32 0)
  %i.ns = zext nneg i32 %i.nr to i64
  %.str.48..str.47224 = select i1 %.not129.1, ptr @.str.48, ptr @.str.47
  %i.nt = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull %.str.48..str.47224, i64 noundef %i.ns) #23 ; 0 uses
  %i.nu = add nuw nsw i32 %.093155.1, 1           ; 2 uses
  %i.nv = load i32, ptr %i.mg, align 4, !tbaa !15
  %i.nw = icmp slt i32 %i.nu, %i.nv
  br i1 %i.nw, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !223

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %i.nx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #26
  %i.ny = trunc i64 %i.nx to i32
  %i.nz = sub i32 79, %i.ny
  %i.oa = call noundef i32 @llvm.smax.i32(i32 %i.nz, i32 0)
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull @.str.49, i64 noundef %i.ob) #23 ; 0 uses
  %i.od = load i32, ptr %i.mu, align 4, !tbaa !40
  %.not128 = icmp eq i32 %i.od, 0
  %i.oe = load ptr, ptr @stdout, align 8, !tbaa !19 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.mj, i64 12
  %i.og = load i32, ptr %i.of, align 4, !tbaa !220 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !221 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mj, i64 2104
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !222 ; 2 uses
  br i1 %.not128, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.1
  %i.ol = getelementptr inbounds nuw i8, ptr %i.mj, i64 2108
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !224
  %i.on = add nsw i32 %i.om, %i.ok
  %i.oo = call noundef i32 @llvm.smax.i32(i32 %i.on, i32 0)
  %i.op = call noundef range(i32 0, 52) i32 @llvm.umin.i32(i32 %i.oo, i32 51)
  %i.oq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oe, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.d, i32 noundef %i.og, i32 noundef %i.oi, i32 noundef %i.op) #23 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.1
  %i.or = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oe, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.d, i32 noundef %i.og, i32 noundef %i.oi, i32 noundef %i.ok) #23 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.y

bb.u:                                             ; preds = %bb.o
  %i.os = icmp eq i32 %i.mh, 0
  %.pre = load ptr, ptr @input, align 8, !tbaa !8 ; 7 uses
  br i1 %i.os, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ot = getelementptr inbounds nuw i8, ptr %.pre, i64 2136
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !85
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ow = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.ox = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !220
  %i.oz = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !221
  %i.pb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ow, ptr noundef nonnull @.str.52, i32 noundef %i.oy, i32 noundef %i.pa) #23 ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.pc = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.pd = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !220
  %i.pf = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !221
  %i.ph = getelementptr inbounds nuw i8, ptr %.pre, i64 2140
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !225
  %i.pj = getelementptr inbounds nuw i8, ptr %.pre, i64 2144
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !226
  %i.pl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pc, ptr noundef nonnull @.str.53, i32 noundef %i.pe, i32 noundef %i.pg, i32 noundef %i.pi, i32 noundef %i.pk) #23 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.x, %bb.w, %bb.q
  %i.pm = load ptr, ptr @input, align 8, !tbaa !8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 4008
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !227
  %i.pp = icmp eq i32 %i.po, 0
  %i.pq = load ptr, ptr @stdout, align 8, !tbaa !19
  %.str.54..str.55 = select i1 %i.pp, ptr @.str.54, ptr @.str.55
  %i.pr = call i64 @fwrite(ptr nonnull %.str.54..str.55, i64 43, i64 1, ptr %i.pq) ; 0 uses
  %i.ps = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.pt = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !228
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !229
  %i.px = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ps, ptr noundef nonnull @.str.56, i32 noundef %i.pu, i32 noundef %i.pw) #23 ; 0 uses
  %i.py = load ptr, ptr @input, align 8, !tbaa !8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 5244
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !65
  %i.qb = load ptr, ptr @stdout, align 8, !tbaa !19 ; 5 uses
  switch i32 %i.qa, label %bb.ad [
    i32 1, label %bb.z
    i32 2, label %bb.aa
    i32 3, label %bb.ab
    i32 0, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  %i.qc = call i64 @fwrite(ptr nonnull @.str.57, i64 41, i64 1, ptr %i.qb) ; 0 uses
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.qd = call i64 @fwrite(ptr nonnull @.str.58, i64 42, i64 1, ptr %i.qb) ; 0 uses
  br label %bb.ae

bb.ab:                                            ; preds = %bb.y
  %i.qe = call i64 @fwrite(ptr nonnull @.str.59, i64 42, i64 1, ptr %i.qb) ; 0 uses
  %i.qf = load ptr, ptr @stdout, align 8, !tbaa !19
  call void @EPZSOutputStats(ptr noundef %i.qf, i16 noundef signext 0) #23
  br label %bb.ae

bb.ac:                                            ; preds = %bb.y
  %i.qg = call i64 @fwrite(ptr nonnull @.str.60, i64 54, i64 1, ptr %i.qb) ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %i.qh = call i64 @fwrite(ptr nonnull @.str.61, i64 49, i64 1, ptr %i.qb) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.ab, %bb.z
  %i.qi = load ptr, ptr @input, align 8, !tbaa !8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 4140
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !230
  %i.ql = load ptr, ptr @stdout, align 8, !tbaa !19 ; 3 uses
  switch i32 %i.qk, label %bb.ah [
    i32 2, label %bb.af
    i32 1, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.qm = call i64 @fwrite(ptr nonnull @.str.62, i64 42, i64 1, ptr %i.ql) ; 0 uses
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.qn = call i64 @fwrite(ptr nonnull @.str.63, i64 60, i64 1, ptr %i.ql) ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.qo = call i64 @fwrite(ptr nonnull @.str.64, i64 79, i64 1, ptr %i.ql) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %i.qp = load ptr, ptr @input, align 8, !tbaa !8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 4168
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !191
  %.not130 = icmp eq i32 %i.qr, 0
  %i.qs = load ptr, ptr @stdout, align 8, !tbaa !19 ; 2 uses
  br i1 %.not130, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.qt = call i64 @fwrite(ptr nonnull @.str.65, i64 42, i64 1, ptr %i.qs) ; 0 uses
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.qu = call i64 @fwrite(ptr nonnull @.str.66, i64 46, i64 1, ptr %i.qs) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.qv = load ptr, ptr @input, align 8, !tbaa !8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 4016
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !231
  %i.qy = load ptr, ptr @stdout, align 8, !tbaa !19 ; 3 uses
  switch i32 %i.qx, label %bb.ao [
    i32 0, label %bb.am
    i32 1, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %i.qz = call i64 @fwrite(ptr nonnull @.str.67, i64 50, i64 1, ptr %i.qy) ; 0 uses
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.ra = call i64 @fwrite(ptr nonnull @.str.68, i64 51, i64 1, ptr %i.qy) ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %i.rb = call i64 @fwrite(ptr nonnull @.str.69, i64 51, i64 1, ptr %i.qy) ; 0 uses
  br label %bb.ap
end_hunk_0
