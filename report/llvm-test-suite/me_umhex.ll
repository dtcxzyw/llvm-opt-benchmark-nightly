Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/me_umhex?download=true
inline.NumInlined: 78
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0_@UMHEXBipredIntegerPelBlockMotionSearch:bb.a
  %i.ha = add i32 %i.gz, %i.gx
  %i.hb = icmp sgt i32 %i.ha, %i.as
  %i.hc = icmp slt i32 %14, %i.at
  %or.cond = select i1 %i.hb, i1 %i.hc, i1 false
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %sext1223 = shl i32 %i.cu, 16
  %i.hd = ashr exact i32 %sext1223, 16
  %i.he = sub i32 %i.gy, %i.q
  %i.hf = add i32 %i.he, %i.hd
  %i.hg = icmp sgt i32 %i.hf, %i.at
  br i1 %i.hg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %storemerge1138 = phi i32 [ 1, %bb.u ], [ 0, %bb.t ]
  store i32 %storemerge1138, ptr @bipred2_access_method, align 4, !tbaa !7
  %i.hh = sext i16 %i.aj to i32                   ; 3 uses
  %i.hi = icmp slt i32 %14, %i.hh
  br i1 %i.hi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %sext1224 = shl i32 %i.cu, 16
  %i.hj = ashr exact i32 %sext1224, 16
  %i.hk = xor i32 %14, -1
  %i.hl = sub i32 %i.hk, %i.q
  %i.hm = add i32 %i.hl, %i.hj
  %i.hn = icmp sgt i32 %i.hm, %i.hh
  br i1 %i.hn, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %storemerge1139 = phi i32 [ 1, %bb.x ], [ 0, %bb.w ]
  store i32 %storemerge1139, ptr @bipred1_access_method, align 4, !tbaa !7
  %i.ho = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !32
  %i.hq = shl nsw i32 %14, 1
  %i.hr = or disjoint i32 %i.hq, 1                ; 2 uses
  %i.hs = mul nsw i32 %i.hr, %i.hr
  %i.ht = zext nneg i32 %i.hs to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hp, i8 0, i64 %i.ht, i1 false)
  %i.hu = load ptr, ptr @mvbits, align 8, !tbaa !50 ; 4 uses
  %i.hv = sext i16 %i.ah to i32
  %i.hw = shl nsw i32 %i.hv, 2                    ; 2 uses
  %i.hx = add i32 %i.s, %i.t
  %i.hy = sub i32 %i.hw, %i.hx
  %i.hz = sext i32 %i.hy to i64                   ; 26 uses
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !7
  %i.ic = shl nsw i32 %i.hh, 2                    ; 2 uses
  %i.id = add i32 %i.u, %i.v
  %i.ie = sub i32 %i.ic, %i.id
  %i.if = sext i32 %i.ie to i64                   ; 26 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !7
  %i.ii = add nsw i32 %i.ih, %i.ib
  %i.ij = mul nsw i32 %i.ii, %16
  %i.ik = ashr i32 %i.ij, 16
  %i.il = shl nsw i32 %i.as, 2                    ; 2 uses
  %i.im = sub nsw i32 %i.il, %i.x
  %i.in = sext i32 %i.im to i64                   ; 3 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !7
  %i.iq = shl nsw i32 %i.at, 2                    ; 2 uses
  %i.ir = sub nsw i32 %i.iq, %i.z
  %i.is = sext i32 %i.ir to i64                   ; 3 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !7
  %i.iv = add nsw i32 %i.iu, %i.ip
  %i.iw = mul nsw i32 %i.iv, %16
  %i.ix = ashr i32 %i.iw, 16
  %i.iy = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.iz = add nsw i32 %i.hw, 80                   ; 26 uses
  %i.ja = add nsw i32 %i.ic, 80                   ; 26 uses
  %i.jb = add nsw i32 %i.il, 80                   ; 3 uses
  %i.jc = add nsw i32 %i.iq, 80                   ; 3 uses
  %i.jd = tail call i32 %i.iy(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef 2147483647, i32 noundef %i.iz, i32 noundef %i.ja, i32 noundef %i.jb, i32 noundef %i.jc) #13
  %i.je = add i32 %i.jd, %i.ik
  %i.jf = add i32 %i.je, %i.ix
  %i.jg = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.jh = sext i32 %14 to i64                     ; 15 uses
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.jh
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !32
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 %i.jh
  store i8 1, ptr %i.jk, align 1, !tbaa !78
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.jf, i32 %15) ; 7 uses
  %i.jl = add nsw i32 %i.as, -1                   ; 2 uses
  %.not1182 = icmp slt i32 %14, 1
  br i1 %.not1182, label %.thread1456, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jm = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jh
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !32
  %i.jp = add nsw i32 %14, -1
  %i.jq = zext nneg i32 %i.jp to i64              ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !78
  %.not1184 = icmp eq i8 %i.js, 0
  br i1 %.not1184, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.jt = load ptr, ptr @mvbits, align 8, !tbaa !50 ; 4 uses
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.hz
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !7
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.if
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !7
  %i.jy = add nsw i32 %i.jx, %i.jv
  %i.jz = mul nsw i32 %i.jy, %16
  %i.ka = ashr i32 %i.jz, 16
  %i.kb = shl nsw i32 %i.jl, 2                    ; 2 uses
  %i.kc = sub nsw i32 %i.kb, %i.x
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !7
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.is
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !7
  %i.ki = add nsw i32 %i.kh, %i.kf
  %i.kj = mul nsw i32 %i.ki, %16
  %i.kk = ashr i32 %i.kj, 16
  %i.kl = add nsw i32 %i.kk, %i.ka                ; 3 uses
  %i.km = icmp slt i32 %i.kl, %spec.select
  br i1 %i.km, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.kn = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.ko = sub nsw i32 %spec.select, %i.kl
  %i.kp = add nsw i32 %i.kb, 80
  %i.kq = tail call i32 %i.kn(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.ko, i32 noundef %i.iz, i32 noundef %i.ja, i32 noundef %i.kp, i32 noundef %i.jc) #13
  %i.kr = add nsw i32 %i.kq, %i.kl                ; 2 uses
  %i.ks = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.jh
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.jq
  store i8 1, ptr %i.kv, align 1, !tbaa !78
  %i.kw = icmp slt i32 %i.kr, %spec.select
  %spec.select1496.a = tail call i32 @llvm.smin.i32(i32 %i.kr, i32 %spec.select)
  %spec.select1497.a = select i1 %i.kw, i32 %i.jl, i32 %i.as
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.21050.ph = phi i32 [ %spec.select, %bb.aa ], [ %spec.select1496.a, %bb.ab ], [ %spec.select, %bb.z ] ; 6 uses
  %.21004.ph = phi i32 [ %i.as, %bb.aa ], [ %spec.select1497.a, %bb.ab ], [ %i.as, %bb.z ] ; 3 uses
  %i.kx = add nsw i32 %i.at, 1                    ; 2 uses
  %i.ky = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.kz = add nuw nsw i32 %14, 1
  %i.la = zext nneg i32 %i.kz to i64              ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.la
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !32
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.jh
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !78
  %.not1184.1 = icmp eq i8 %i.le, 0
  br i1 %.not1184.1, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.lf = load ptr, ptr @mvbits, align 8, !tbaa !50 ; 4 uses
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.hz
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !7
  %i.li = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.if
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !7
  %i.lk = add nsw i32 %i.lj, %i.lh
  %i.ll = mul nsw i32 %i.lk, %16
  %i.lm = ashr i32 %i.ll, 16
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.in
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !7
  %i.lp = shl nsw i32 %i.kx, 2                    ; 2 uses
  %i.lq = sub nsw i32 %i.lp, %i.z
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !7
  %i.lu = add nsw i32 %i.lt, %i.lo
  %i.lv = mul nsw i32 %i.lu, %16
  %i.lw = ashr i32 %i.lv, 16
  %i.lx = add nsw i32 %i.lw, %i.lm                ; 3 uses
  %i.ly = icmp slt i32 %i.lx, %.21050.ph
  br i1 %i.ly, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.lz = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.ma = sub nsw i32 %.21050.ph, %i.lx
  %i.mb = add nsw i32 %i.lp, 80
  %i.mc = tail call i32 %i.lz(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.ma, i32 noundef %i.iz, i32 noundef %i.ja, i32 noundef %i.jb, i32 noundef %i.mb) #13
  %i.md = add nsw i32 %i.mc, %i.lx                ; 2 uses
  %i.me = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.la
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.jh
  store i8 1, ptr %i.mh, align 1, !tbaa !78
  %i.mi = icmp slt i32 %i.md, %.21050.ph
  br i1 %i.mi, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.21050.1.ph = phi i32 [ %.21050.ph, %bb.ad ], [ %.21050.ph, %bb.ae ], [ %i.md, %bb.af ], [ %.21050.ph, %bb.ac ] ; 4 uses
  %.21004.1.ph = phi i32 [ %.21004.ph, %bb.ad ], [ %.21004.ph, %bb.ae ], [ %i.as, %bb.af ], [ %.21004.ph, %bb.ac ]
  %.2.1.ph = phi i32 [ %i.at, %bb.ad ], [ %i.at, %bb.ae ], [ %i.kx, %bb.af ], [ %i.at, %bb.ac ]
  %i.mj = add nsw i32 %i.as, 1                    ; 2 uses
  %i.mk = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %i.jh
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !32
  %i.mn = add nuw nsw i32 %14, 1
  %i.mo = zext nneg i32 %i.mn to i64              ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !78
  %.not1184.2 = icmp eq i8 %i.mq, 0
  br i1 %.not1184.2, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.mr = load ptr, ptr @mvbits, align 8, !tbaa !50 ; 4 uses
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %i.hz
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !7
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %i.if
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !7
  %i.mw = add nsw i32 %i.mv, %i.mt
  %i.mx = mul nsw i32 %i.mw, %16
  %i.my = ashr i32 %i.mx, 16
  %i.mz = shl nsw i32 %i.mj, 2                    ; 2 uses
  %i.na = sub nsw i32 %i.mz, %i.x
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !7
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %i.is
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !7
  %i.ng = add nsw i32 %i.nf, %i.nd
  %i.nh = mul nsw i32 %i.ng, %16
  %i.ni = ashr i32 %i.nh, 16
  %i.nj = add nsw i32 %i.ni, %i.my                ; 3 uses
  %i.nk = icmp slt i32 %i.nj, %.21050.1.ph
  br i1 %i.nk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.nl = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.nm = sub nsw i32 %.21050.1.ph, %i.nj
  %i.nn = add nsw i32 %i.mz, 80
  %i.no = tail call i32 %i.nl(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.nm, i32 noundef %i.iz, i32 noundef %i.ja, i32 noundef %i.nn, i32 noundef %i.jc) #13
  %i.np = add nsw i32 %i.no, %i.nj                ; 2 uses
  %i.nq = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.jh
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !32
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.mo
  store i8 1, ptr %i.nt, align 1, !tbaa !78
  %i.nu = icmp slt i32 %i.np, %.21050.1.ph
  br i1 %i.nu, label %.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  br label %.split

.split:                                           ; preds = %bb.ai, %bb.aj
  %.2.21463 = phi i32 [ %.2.1.ph, %bb.aj ], [ %i.at, %bb.ai ] ; 3 uses
  %.21004.21462 = phi i32 [ %.21004.1.ph, %bb.aj ], [ %i.mj, %bb.ai ] ; 3 uses
  %.21050.21461 = phi i32 [ %.21050.1.ph, %bb.aj ], [ %i.np, %bb.ai ] ; 6 uses
  %i.nv = add nsw i32 %i.at, -1                   ; 2 uses
  %i.nw = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.nx = add nsw i32 %14, -1
  %i.ny = zext nneg i32 %i.nx to i64              ; 2 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.ny
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !32
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.jh
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !78
  %.not1184.3 = icmp eq i8 %i.oc, 0
  br i1 %.not1184.3, label %bb.ak, label %.thread1456

bb.ak:                                            ; preds = %.split
  %i.od = load ptr, ptr @mvbits, align 8, !tbaa !50 ; 4 uses
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.hz
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !7
  %i.og = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.if
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !7
  %i.oi = add nsw i32 %i.oh, %i.of
  %i.oj = mul nsw i32 %i.oi, %16
  %i.ok = ashr i32 %i.oj, 16
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.in
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !7
  %i.on = shl nsw i32 %i.nv, 2                    ; 2 uses
  %i.oo = sub nsw i32 %i.on, %i.z
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !7
  %i.os = add nsw i32 %i.or, %i.om
  %i.ot = mul nsw i32 %i.os, %16
  %i.ou = ashr i32 %i.ot, 16
  %i.ov = add nsw i32 %i.ou, %i.ok                ; 3 uses
  %i.ow = icmp slt i32 %i.ov, %.21050.21461
  br i1 %i.ow, label %bb.al, label %.thread1456

bb.al:                                            ; preds = %bb.ak
  %i.ox = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.oy = sub nsw i32 %.21050.21461, %i.ov
  %i.oz = add nsw i32 %i.on, 80
  %i.pa = tail call i32 %i.ox(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.oy, i32 noundef %i.iz, i32 noundef %i.ja, i32 noundef %i.jb, i32 noundef %i.oz) #13
  %i.pb = add nsw i32 %i.pa, %i.ov                ; 2 uses
  %i.pc = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.ny
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !32
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.jh
  store i8 1, ptr %i.pf, align 1, !tbaa !78
  %i.pg = icmp slt i32 %i.pb, %.21050.21461
  br i1 %i.pg, label %bb.am, label %.thread1456

bb.am:                                            ; preds = %bb.al
  br label %.thread1456

.thread1456:                                      ; preds = %bb.y, %bb.am, %bb.al, %bb.ak, %.split
  %.21050.3 = phi i32 [ %.21050.21461, %.split ], [ %i.pb, %bb.am ], [ %.21050.21461, %bb.al ], [ %.21050.21461, %bb.ak ], [ %spec.select, %bb.y ] ; 9 uses
  %.21004.3 = phi i32 [ %.21004.21462, %.split ], [ %i.as, %bb.am ], [ %.21004.21462, %bb.al ], [ %.21004.21462, %bb.ak ], [ %i.as, %bb.y ] ; 6 uses
  %.2.3 = phi i32 [ %.2.21463, %.split ], [ %i.nv, %bb.am ], [ %.2.21463, %bb.al ], [ %.2.21463, %bb.ak ], [ %i.at, %bb.y ] ; 6 uses
  %.not1140 = icmp eq i32 %3, %i.as
  %.not1141 = icmp eq i32 %4, %i.at
  %or.cond1185 = select i1 %.not1140, i1 %.not1141, i1 false
  br i1 %or.cond1185, label %.loopexit1241, label %bb.an

bb.an:                                            ; preds = %.thread1456
  %i.ph = sub nsw i32 %3, %i.as                   ; 2 uses
  %i.pi = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ph, i1 true)
  %.not1142 = icmp sgt i32 %i.pi, %14
  br i1 %.not1142, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.pj = sub nsw i32 %4, %i.at                   ; 2 uses
  %i.pk = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.pj, i1 true)
  %.not1143 = icmp samesign ugt i32 %i.pk, %14
  br i1 %.not1143, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.pl = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.pm = add nsw i32 %i.pj, %14
  %i.pn = sext i32 %i.pm to i64                   ; 2 uses
  %i.po = getelementptr inbounds [8 x i8], ptr %i.pl, i64 %i.pn
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !32
  %i.pq = add nsw i32 %i.ph, %14
  %i.pr = sext i32 %i.pq to i64                   ; 2 uses
  %i.ps = getelementptr inbounds i8, ptr %i.pp, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !78
  %.not1144 = icmp eq i8 %i.pt, 0
  br i1 %.not1144, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.pu = load ptr, ptr @mvbits, align 8, !tbaa !50 ; 4 uses
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.pu, i64 %i.hz
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !7
  %i.px = getelementptr inbounds [4 x i8], ptr %i.pu, i64 %i.if
  %i.py = load i32, ptr %i.px, align 4, !tbaa !7
  %i.pz = add nsw i32 %i.py, %i.pw
  %i.qa = mul nsw i32 %i.pz, %16
  %i.qb = ashr i32 %i.qa, 16
  %i.qc = sub nsw i32 0, %i.w
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.pu, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !7
  %i.qg = sub nsw i32 0, %i.y
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.pu, i64 %i.qh
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !7
  %i.qk = add nsw i32 %i.qj, %i.qf
  %i.ql = mul nsw i32 %i.qk, %16
  %i.qm = ashr i32 %i.ql, 16
  %i.qn = add nsw i32 %i.qm, %i.qb                ; 3 uses
  %i.qo = icmp slt i32 %i.qn, %.21050.3
  br i1 %i.qo, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.qp = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.qq = sub nsw i32 %.21050.3, %i.qn
  %i.qr = add nsw i32 %i.s, 80
  %i.qs = add nsw i32 %i.u, 80
  %i.qt = tail call i32 %i.qp(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.qq, i32 noundef %i.iz, i32 noundef %i.ja, i32 noundef %i.qr, i32 noundef %i.qs) #13
  %i.qu = add nsw i32 %i.qt, %i.qn                ; 2 uses
  %i.qv = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.pn
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !32
  %i.qy = getelementptr inbounds i8, ptr %i.qx, i64 %i.pr
  store i8 1, ptr %i.qy, align 1, !tbaa !78
  %i.qz = icmp slt i32 %i.qu, %.21050.3
  br i1 %i.qz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  br label %bb.at

bb.at:                                            ; preds = %bb.ap, %bb.ar, %bb.as, %bb.aq, %bb.ao, %bb.an
  %.31051 = phi i32 [ %.21050.3, %bb.ap ], [ %i.qu, %bb.as ], [ %.21050.3, %bb.ar ], [ %.21050.3, %bb.aq ], [ %.21050.3, %bb.ao ], [ %.21050.3, %bb.an ] ; 8 uses
  %.31005 = phi i32 [ %.21004.3, %bb.ap ], [ %3, %bb.as ], [ %.21004.3, %bb.ar ], [ %.21004.3, %bb.aq ], [ %.21004.3, %bb.ao ], [ %.21004.3, %bb.an ] ; 12 uses
  %.3 = phi i32 [ %.2.3, %bb.ap ], [ %4, %bb.as ], [ %.2.3, %bb.ar ], [ %.2.3, %bb.aq ], [ %.2.3, %bb.ao ], [ %.2.3, %bb.an ] ; 12 uses
  %i.ra = add nsw i32 %.31005, -1                 ; 3 uses
  %i.rb = sub nsw i32 %i.ra, %i.as                ; 2 uses
  %i.rc = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.rb, i1 true)
  %.not1179 = icmp sgt i32 %i.rc, %14
  br i1 %.not1179, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rd = sub nsw i32 %.3, %i.at                  ; 2 uses
  %i.re = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.rd, i1 true)
  %.not1180 = icmp samesign ugt i32 %i.re, %14
  br i1 %.not1180, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.rf = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.rg = add nsw i32 %i.rd, %14
  %i.rh = sext i32 %i.rg to i64                   ; 2 uses
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.rf, i64 %i.rh
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !32
  %i.rk = add nsw i32 %i.rb, %14
  %i.rl = sext i32 %i.rk to i64                   ; 2 uses
  %i.rm = getelementptr inbounds i8, ptr %i.rj, i64 %i.rl
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !78
  %.not1181 = icmp eq i8 %i.rn, 0
  br i1 %.not1181, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ro = load ptr, ptr @mvbits, align 8, !tbaa !50 ; 4 uses
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.hz
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !7
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.if
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !7
  %i.rt = add nsw i32 %i.rs, %i.rq
  %i.ru = mul nsw i32 %i.rt, %16
  %i.rv = ashr i32 %i.ru, 16
  %i.rw = shl i32 %i.ra, 2                        ; 2 uses
  %i.rx = sub nsw i32 %i.rw, %i.x
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.ry
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !7
  %i.sb = shl i32 %.3, 2                          ; 2 uses
  %i.sc = sub nsw i32 %i.sb, %i.z
  %i.sd = sext i32 %i.sc to i64
  %i.se = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.sd
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !7
  %i.sg = add nsw i32 %i.sf, %i.sa
  %i.sh = mul nsw i32 %i.sg, %16
  %i.si = ashr i32 %i.sh, 16
  %i.sj = add nsw i32 %i.si, %i.rv                ; 3 uses
  %i.sk = icmp slt i32 %i.sj, %.31051
  br i1 %i.sk, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.sl = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.sm = sub nsw i32 %.31051, %i.sj
  %i.sn = add nsw i32 %i.rw, 80
  %i.so = add nsw i32 %i.sb, 80
  %i.sp = tail call i32 %i.sl(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.sm, i32 noundef %i.iz, i32 noundef %i.ja, i32 noundef %i.sn, i32 noundef %i.so) #13
  %i.sq = add nsw i32 %i.sp, %i.sj                ; 2 uses
  %i.sr = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.ss = getelementptr inbounds [8 x i8], ptr %i.sr, i64 %i.rh
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !32
  %i.su = getelementptr inbounds i8, ptr %i.st, i64 %i.rl
  store i8 1, ptr %i.su, align 1, !tbaa !78
  %i.sv = icmp slt i32 %i.sq, %.31051
  %spec.select1498 = tail call i32 @llvm.smin.i32(i32 %i.sq, i32 %.31051)
  %spec.select1499 = select i1 %i.sv, i32 %i.ra, i32 %.31005
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.at, %bb.au, %bb.aw, %bb.av
  %.51053 = phi i32 [ %.31051, %bb.av ], [ %.31051, %bb.at ], [ %spec.select1498, %bb.ax ], [ %.31051, %bb.aw ], [ %.31051, %bb.au ] ; 8 uses
  %.51007 = phi i32 [ %.31005, %bb.av ], [ %.31005, %bb.at ], [ %spec.select1499, %bb.ax ], [ %.31005, %bb.aw ], [ %.31005, %bb.au ] ; 5 uses
  %i.sw = add nsw i32 %.3, 1                      ; 3 uses
  %i.sx = sub nsw i32 %.31005, %i.as              ; 3 uses
  %i.sy = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.sx, i1 true)
  %.not1179.1 = icmp sgt i32 %i.sy, %14           ; 2 uses
  br i1 %.not1179.1, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.sz = sub nsw i32 %i.sw, %i.at                ; 2 uses
  %i.ta = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.sz, i1 true)
  %.not1180.1 = icmp samesign ugt i32 %i.ta, %14
  br i1 %.not1180.1, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.tb = load ptr, ptr @McostState, align 8, !tbaa !36
  %i.tc = add nsw i32 %i.sz, %14
  %i.td = sext i32 %i.tc to i64                   ; 2 uses
  %i.te = getelementptr inbounds [8 x i8], ptr %i.tb, i64 %i.td
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !32
  %i.tg = add nsw i32 %i.sx, %14
  %i.th = sext i32 %i.tg to i64                   ; 2 uses
  %i.ti = getelementptr inbounds i8, ptr %i.tf, i64 %i.th
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !78
  %.not1181.1 = icmp eq i8 %i.tj, 0
  br i1 %.not1181.1, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.tk = load ptr, ptr @mvbits, align 8, !tbaa !50 ; 4 uses
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.hz
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !7
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.if
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !7
  %i.tp = add nsw i32 %i.to, %i.tm
  %i.tq = mul nsw i32 %i.tp, %16
  %i.tr = ashr i32 %i.tq, 16
  %i.ts = shl i32 %.31005, 2                      ; 2 uses
  %i.tt = sub nsw i32 %i.ts, %i.x
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.tu
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !7
  %i.tx = shl i32 %i.sw, 2                        ; 2 uses
  %i.ty = sub nsw i32 %i.tx, %i.z
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.tz
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !7
  %i.uc = add nsw i32 %i.ub, %i.tw
  %i.ud = mul nsw i32 %i.uc, %16
  %i.ue = ashr i32 %i.ud, 16
  %i.uf = add nsw i32 %i.ue, %i.tr                ; 3 uses
  %i.ug = icmp slt i32 %i.uf, %.51053
  br i1 %i.ug, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.uh = load ptr, ptr @computeBiPred, align 8, !tbaa !11
end_hunk_0
