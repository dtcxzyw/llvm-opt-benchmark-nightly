Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/me_umhexsmp?download=true
inline.NumInlined: 63
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@smpUMHEXBipredIntegerPelBlockMotionSearch:bb.a
  %i.ha = add i32 %i.gz, %i.gx
  %i.hb = icmp sgt i32 %i.ha, %i.gv
  br i1 %i.hb, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %storemerge1023 = phi i32 [ 1, %bb.x ], [ 0, %bb.w ]
  store i32 %storemerge1023, ptr @bipred1_access_method, align 4, !tbaa !7
  %i.hc = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.hd = sext i16 %i.af to i32
  %i.he = shl nsw i32 %i.hd, 2                    ; 2 uses
  %i.hf = add i32 %i.q, %i.r
  %i.hg = sub i32 %i.he, %i.hf
  %i.hh = sext i32 %i.hg to i64                   ; 31 uses
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !7
  %i.hk = shl nsw i32 %i.gv, 2                    ; 2 uses
  %i.hl = add i32 %i.s, %i.t
  %i.hm = sub i32 %i.hk, %i.hl
  %i.hn = sext i32 %i.hm to i64                   ; 31 uses
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !7
  %i.hq = add nsw i32 %i.hp, %i.hj
  %i.hr = mul nsw i32 %i.hq, %16
  %i.hs = ashr i32 %i.hr, 16
  %i.ht = shl nsw i32 %i.ai, 2                    ; 2 uses
  %i.hu = sub nsw i32 %i.ht, %i.v
  %i.hv = sext i32 %i.hu to i64                   ; 5 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !7
  %i.hy = shl nsw i32 %i.aj, 2                    ; 2 uses
  %i.hz = sub nsw i32 %i.hy, %i.x
  %i.ia = sext i32 %i.hz to i64                   ; 5 uses
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !7
  %i.id = add nsw i32 %i.ic, %i.hx
  %i.ie = mul nsw i32 %i.id, %16
  %i.if = ashr i32 %i.ie, 16
  %i.ig = add nsw i32 %i.he, 80                   ; 31 uses
  %i.ih = add nsw i32 %i.hk, 80                   ; 31 uses
  %i.ii = add nsw i32 %i.ht, 80                   ; 5 uses
  %i.ij = add nsw i32 %i.hy, 80                   ; 5 uses
  %i.ik = tail call i32 %storemerge(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef 2147483647, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef %i.ij) #11
  %i.il = add i32 %i.ik, %i.hs
  %i.im = add i32 %i.il, %i.if
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.im, i32 %15) ; 8 uses
  %i.in = or i16 %7, %6
  %i.io = or i16 %i.in, %8
  %i.ip = or i16 %i.io, %9
  %or.cond8.not = icmp eq i16 %i.ip, 0
  br i1 %or.cond8.not, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iq = sub nsw i32 %3, %i.ai
  %i.ir = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.iq, i1 true)
  %.not1024 = icmp sgt i32 %i.ir, %14
  br i1 %.not1024, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.is = sub nsw i32 %4, %i.aj
  %i.it = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.is, i1 true)
  %.not1025 = icmp samesign ugt i32 %i.it, %14
  br i1 %.not1025, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.iu = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.hh
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !7
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.hn
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !7
  %i.iz = add nsw i32 %i.iy, %i.iw
  %i.ja = mul nsw i32 %i.iz, %16
  %i.jb = ashr i32 %i.ja, 16
  %i.jc = sub nsw i32 0, %i.u
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !7
  %i.jg = sub nsw i32 0, %i.w
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.jh
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !7
  %i.jk = add nsw i32 %i.jj, %i.jf
  %i.jl = mul nsw i32 %i.jk, %16
  %i.jm = ashr i32 %i.jl, 16
  %i.jn = add nsw i32 %i.jm, %i.jb                ; 3 uses
  %i.jo = icmp slt i32 %i.jn, %spec.select
  br i1 %i.jo, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.jp = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.jq = sub nsw i32 %spec.select, %i.jn
  %i.jr = add nsw i32 %i.q, 80
  %i.js = add nsw i32 %i.s, 80
  %i.jt = tail call i32 %i.jp(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.jq, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.jr, i32 noundef %i.js) #11
  %i.ju = add nsw i32 %i.jt, %i.jn                ; 2 uses
  %i.jv = icmp slt i32 %i.ju, %spec.select
  br i1 %i.jv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br label %bb.ae

bb.ae:                                            ; preds = %bb.z, %bb.aa, %bb.ac, %bb.ad, %bb.ab, %bb.y
  %.1927 = phi i32 [ %i.ju, %bb.ad ], [ %spec.select, %bb.ac ], [ %spec.select, %bb.ab ], [ %spec.select, %bb.aa ], [ %spec.select, %bb.z ], [ %spec.select, %bb.y ] ; 13 uses
  %.1882 = phi i32 [ %3, %bb.ad ], [ %i.ai, %bb.ac ], [ %i.ai, %bb.ab ], [ %i.ai, %bb.aa ], [ %i.ai, %bb.z ], [ %i.ai, %bb.y ] ; 6 uses
  %.1 = phi i32 [ %4, %bb.ad ], [ %i.aj, %bb.ac ], [ %i.aj, %bb.ab ], [ %i.aj, %bb.aa ], [ %i.aj, %bb.z ], [ %i.aj, %bb.y ] ; 6 uses
  %i.jw = shl i32 %.1927, 3
  %i.jx = load i16, ptr @ConvergeThreshold, align 2, !tbaa !9
  %i.jy = zext i16 %i.jx to i32
  %i.jz = getelementptr inbounds [2 x i8], ptr @block_type_shift_factor, i64 %i.l
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !9
  %i.kb = zext nneg i16 %i.ka to i32              ; 4 uses
  %i.kc = lshr i32 %i.jy, %i.kb
  %i.kd = icmp slt i32 %i.jw, %i.kc
  %i.ke = add nsw i32 %i.ai, -1                   ; 4 uses
  %.not1056 = icmp slt i32 %14, 1                 ; 2 uses
  br i1 %i.kd, label %.preheader.preheader, label %.preheader1114.preheader

.preheader1114.preheader:                         ; preds = %bb.ae
  br i1 %.not1056, label %.preheader1114.3.thread, label %bb.ap

.preheader.preheader:                             ; preds = %bb.ae
  br i1 %.not1056, label %.preheader.3.thread, label %bb.af

bb.af:                                            ; preds = %.preheader.preheader
  %i.kf = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.hh
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !7
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.hn
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !7
  %i.kk = add nsw i32 %i.kj, %i.kh
  %i.kl = mul nsw i32 %i.kk, %16
  %i.km = ashr i32 %i.kl, 16
  %i.kn = shl nsw i32 %i.ke, 2                    ; 2 uses
  %i.ko = sub nsw i32 %i.kn, %i.v
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !7
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.ia
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !7
  %i.ku = add nsw i32 %i.kt, %i.kr
  %i.kv = mul nsw i32 %i.ku, %16
  %i.kw = ashr i32 %i.kv, 16
  %i.kx = add nsw i32 %i.kw, %i.km                ; 3 uses
  %i.ky = icmp slt i32 %i.kx, %.1927
  br i1 %i.ky, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.kz = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.la = sub nsw i32 %.1927, %i.kx
  %i.lb = add nsw i32 %i.kn, 80
  %i.lc = tail call i32 %i.kz(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.la, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.lb, i32 noundef %i.ij) #11
  %i.ld = add nsw i32 %i.lc, %i.kx                ; 2 uses
  %i.le = icmp slt i32 %i.ld, %.1927
  br i1 %i.le, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %.3929.ph = phi i32 [ %.1927, %bb.af ], [ %.1927, %bb.ag ], [ %i.ld, %bb.ah ] ; 5 uses
  %.3884.ph = phi i32 [ %.1882, %bb.af ], [ %.1882, %bb.ag ], [ %i.ke, %bb.ah ] ; 2 uses
  %.3.ph = phi i32 [ %.1, %bb.af ], [ %.1, %bb.ag ], [ %i.aj, %bb.ah ] ; 2 uses
  %i.lf = add nsw i32 %i.ai, 1                    ; 2 uses
  %i.lg = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %i.hh
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !7
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %i.hn
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !7
  %i.ll = add nsw i32 %i.lk, %i.li
  %i.lm = mul nsw i32 %i.ll, %16
  %i.ln = ashr i32 %i.lm, 16
  %i.lo = shl nsw i32 %i.lf, 2                    ; 2 uses
  %i.lp = sub nsw i32 %i.lo, %i.v
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %i.lq
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !7
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %i.ia
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !7
  %i.lv = add nsw i32 %i.lu, %i.ls
  %i.lw = mul nsw i32 %i.lv, %16
  %i.lx = ashr i32 %i.lw, 16
  %i.ly = add nsw i32 %i.lx, %i.ln                ; 3 uses
  %i.lz = icmp slt i32 %i.ly, %.3929.ph
  br i1 %i.lz, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ma = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.mb = sub nsw i32 %.3929.ph, %i.ly
  %i.mc = add nsw i32 %i.lo, 80
  %i.md = tail call i32 %i.ma(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.mb, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.mc, i32 noundef %i.ij) #11
  %i.me = add nsw i32 %i.md, %i.ly                ; 2 uses
  %i.mf = icmp slt i32 %i.me, %.3929.ph
  br i1 %i.mf, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.3929.1.ph = phi i32 [ %.3929.ph, %bb.ai ], [ %.3929.ph, %bb.aj ], [ %i.me, %bb.ak ] ; 5 uses
  %.3884.1.ph = phi i32 [ %.3884.ph, %bb.ai ], [ %.3884.ph, %bb.aj ], [ %i.lf, %bb.ak ] ; 2 uses
  %.3.1.ph = phi i32 [ %.3.ph, %bb.ai ], [ %.3.ph, %bb.aj ], [ %i.aj, %bb.ak ] ; 2 uses
  %i.mg = add nsw i32 %i.aj, -1                   ; 2 uses
  %i.mh = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.hh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !7
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.hn
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !7
  %i.mm = add nsw i32 %i.ml, %i.mj
  %i.mn = mul nsw i32 %i.mm, %16
  %i.mo = ashr i32 %i.mn, 16
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.hv
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !7
  %i.mr = shl nsw i32 %i.mg, 2                    ; 2 uses
  %i.ms = sub nsw i32 %i.mr, %i.x
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.mt
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !7
  %i.mw = add nsw i32 %i.mv, %i.mq
  %i.mx = mul nsw i32 %i.mw, %16
  %i.my = ashr i32 %i.mx, 16
  %i.mz = add nsw i32 %i.my, %i.mo                ; 3 uses
  %i.na = icmp slt i32 %i.mz, %.3929.1.ph
  br i1 %i.na, label %bb.am, label %.split

bb.am:                                            ; preds = %bb.al
  %i.nb = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.nc = sub nsw i32 %.3929.1.ph, %i.mz
  %i.nd = add nsw i32 %i.mr, 80
  %i.ne = tail call i32 %i.nb(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.nc, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef %i.nd) #11
  %i.nf = add nsw i32 %i.ne, %i.mz                ; 2 uses
  %i.ng = icmp slt i32 %i.nf, %.3929.1.ph
  br i1 %i.ng, label %.preheader.3.a, label %.split

.preheader.3.a:                                   ; preds = %bb.am
  br label %.split

.split:                                           ; preds = %.preheader.3.a, %bb.am, %bb.al
  %.3929.2.ph = phi i32 [ %.3929.1.ph, %bb.al ], [ %.3929.1.ph, %bb.am ], [ %i.nf, %.preheader.3.a ] ; 5 uses
  %.3884.2.ph = phi i32 [ %.3884.1.ph, %bb.al ], [ %.3884.1.ph, %bb.am ], [ %i.ai, %.preheader.3.a ] ; 2 uses
  %.3.2.ph = phi i32 [ %.3.1.ph, %bb.al ], [ %.3.1.ph, %bb.am ], [ %i.mg, %.preheader.3.a ] ; 2 uses
  %i.nh = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.ni = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.ni, i64 %i.hh
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !7
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.ni, i64 %i.hn
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !7
  %i.nn = add nsw i32 %i.nm, %i.nk
  %i.no = mul nsw i32 %i.nn, %16
  %i.np = ashr i32 %i.no, 16
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.ni, i64 %i.hv
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !7
  %i.ns = shl nsw i32 %i.nh, 2                    ; 2 uses
  %i.nt = sub nsw i32 %i.ns, %i.x
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.ni, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !7
  %i.nx = add nsw i32 %i.nw, %i.nr
  %i.ny = mul nsw i32 %i.nx, %16
  %i.nz = ashr i32 %i.ny, 16
  %i.oa = add nsw i32 %i.nz, %i.np                ; 3 uses
  %i.ob = icmp slt i32 %i.oa, %.3929.2.ph
  br i1 %i.ob, label %bb.an, label %.preheader.3.thread

bb.an:                                            ; preds = %.split
  %i.oc = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.od = sub nsw i32 %.3929.2.ph, %i.oa
  %i.oe = add nsw i32 %i.ns, 80
  %i.of = tail call i32 %i.oc(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.od, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef %i.oe) #11
  %i.og = add nsw i32 %i.of, %i.oa                ; 2 uses
  %i.oh = icmp slt i32 %i.og, %.3929.2.ph
  br i1 %i.oh, label %bb.ao, label %.preheader.3.thread

bb.ao:                                            ; preds = %bb.an
  br label %.preheader.3.thread

bb.ap:                                            ; preds = %.preheader1114.preheader
  %i.oi = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.hh
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !7
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.hn
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !7
  %i.on = add nsw i32 %i.om, %i.ok
  %i.oo = mul nsw i32 %i.on, %16
  %i.op = ashr i32 %i.oo, 16
  %i.oq = shl nsw i32 %i.ke, 2                    ; 2 uses
  %i.or = sub nsw i32 %i.oq, %i.v
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.os
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !7
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.ia
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !7
  %i.ox = add nsw i32 %i.ow, %i.ou
  %i.oy = mul nsw i32 %i.ox, %16
  %i.oz = ashr i32 %i.oy, 16
  %i.pa = add nsw i32 %i.oz, %i.op                ; 3 uses
  %i.pb = icmp slt i32 %i.pa, %.1927
  br i1 %i.pb, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.pc = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.pd = sub nsw i32 %.1927, %i.pa
  %i.pe = add nsw i32 %i.oq, 80
  %i.pf = tail call i32 %i.pc(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.pd, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.pe, i32 noundef %i.ij) #11
  %i.pg = add nsw i32 %i.pf, %i.pa                ; 2 uses
  %i.ph = icmp slt i32 %i.pg, %.1927
  br i1 %i.ph, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.ap
  %.5931.ph = phi i32 [ %.1927, %bb.ap ], [ %.1927, %bb.aq ], [ %i.pg, %bb.ar ] ; 5 uses
  %.5886.ph = phi i32 [ %.1882, %bb.ap ], [ %.1882, %bb.aq ], [ %i.ke, %bb.ar ] ; 2 uses
  %.5.ph = phi i32 [ %.1, %bb.ap ], [ %.1, %bb.aq ], [ %i.aj, %bb.ar ] ; 2 uses
  %i.pi = add nsw i32 %i.ai, 1                    ; 2 uses
  %i.pj = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.pj, i64 %i.hh
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !7
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.pj, i64 %i.hn
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !7
  %i.po = add nsw i32 %i.pn, %i.pl
  %i.pp = mul nsw i32 %i.po, %16
  %i.pq = ashr i32 %i.pp, 16
  %i.pr = shl nsw i32 %i.pi, 2                    ; 2 uses
  %i.ps = sub nsw i32 %i.pr, %i.v
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pj, i64 %i.pt
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !7
  %i.pw = getelementptr inbounds [4 x i8], ptr %i.pj, i64 %i.ia
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !7
  %i.py = add nsw i32 %i.px, %i.pv
  %i.pz = mul nsw i32 %i.py, %16
  %i.qa = ashr i32 %i.pz, 16
  %i.qb = add nsw i32 %i.qa, %i.pq                ; 3 uses
  %i.qc = icmp slt i32 %i.qb, %.5931.ph
  br i1 %i.qc, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.qd = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.qe = sub nsw i32 %.5931.ph, %i.qb
  %i.qf = add nsw i32 %i.pr, 80
  %i.qg = tail call i32 %i.qd(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.qe, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.qf, i32 noundef %i.ij) #11
  %i.qh = add nsw i32 %i.qg, %i.qb                ; 2 uses
  %i.qi = icmp slt i32 %i.qh, %.5931.ph
  br i1 %i.qi, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.5931.1.ph = phi i32 [ %.5931.ph, %bb.as ], [ %.5931.ph, %bb.at ], [ %i.qh, %bb.au ] ; 5 uses
  %.5886.1.ph = phi i32 [ %.5886.ph, %bb.as ], [ %.5886.ph, %bb.at ], [ %i.pi, %bb.au ] ; 2 uses
  %.5.1.ph = phi i32 [ %.5.ph, %bb.as ], [ %.5.ph, %bb.at ], [ %i.aj, %bb.au ] ; 2 uses
  %i.qj = add nsw i32 %i.aj, -1                   ; 2 uses
  %i.qk = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %i.hh
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !7
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %i.hn
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !7
  %i.qp = add nsw i32 %i.qo, %i.qm
  %i.qq = mul nsw i32 %i.qp, %16
  %i.qr = ashr i32 %i.qq, 16
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %i.hv
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !7
  %i.qu = shl nsw i32 %i.qj, 2                    ; 2 uses
  %i.qv = sub nsw i32 %i.qu, %i.x
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %i.qw
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !7
  %i.qz = add nsw i32 %i.qy, %i.qt
  %i.ra = mul nsw i32 %i.qz, %16
  %i.rb = ashr i32 %i.ra, 16
  %i.rc = add nsw i32 %i.rb, %i.qr                ; 3 uses
  %i.rd = icmp slt i32 %i.rc, %.5931.1.ph
  br i1 %i.rd, label %bb.aw, label %.split1347

bb.aw:                                            ; preds = %bb.av
  %i.re = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.rf = sub nsw i32 %.5931.1.ph, %i.rc
  %i.rg = add nsw i32 %i.qu, 80
  %i.rh = tail call i32 %i.re(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.rf, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef %i.rg) #11
  %i.ri = add nsw i32 %i.rh, %i.rc                ; 2 uses
  %i.rj = icmp slt i32 %i.ri, %.5931.1.ph
  br i1 %i.rj, label %.preheader1114.3.a, label %.split1347

.preheader1114.3.a:                               ; preds = %bb.aw
  br label %.split1347

.split1347:                                       ; preds = %.preheader1114.3.a, %bb.aw, %bb.av
  %.5931.2.ph = phi i32 [ %.5931.1.ph, %bb.av ], [ %.5931.1.ph, %bb.aw ], [ %i.ri, %.preheader1114.3.a ] ; 5 uses
  %.5886.2.ph = phi i32 [ %.5886.1.ph, %bb.av ], [ %.5886.1.ph, %bb.aw ], [ %i.ai, %.preheader1114.3.a ] ; 2 uses
  %.5.2.ph = phi i32 [ %.5.1.ph, %bb.av ], [ %.5.1.ph, %bb.aw ], [ %i.qj, %.preheader1114.3.a ] ; 2 uses
  %i.rk = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.rl = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.hh
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !7
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.hn
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !7
  %i.rq = add nsw i32 %i.rp, %i.rn
  %i.rr = mul nsw i32 %i.rq, %16
  %i.rs = ashr i32 %i.rr, 16
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.hv
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !7
  %i.rv = shl nsw i32 %i.rk, 2                    ; 2 uses
  %i.rw = sub nsw i32 %i.rv, %i.x
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %i.rx
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !7
  %i.sa = add nsw i32 %i.rz, %i.ru
  %i.sb = mul nsw i32 %i.sa, %16
  %i.sc = ashr i32 %i.sb, 16
  %i.sd = add nsw i32 %i.sc, %i.rs                ; 3 uses
  %i.se = icmp slt i32 %i.sd, %.5931.2.ph
  br i1 %i.se, label %bb.ax, label %.preheader1114.3.thread

bb.ax:                                            ; preds = %.split1347
  %i.sf = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.sg = sub nsw i32 %.5931.2.ph, %i.sd
  %i.sh = add nsw i32 %i.rv, 80
  %i.si = tail call i32 %i.sf(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.sg, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef %i.sh) #11
  %i.sj = add nsw i32 %i.si, %i.sd                ; 2 uses
  %i.sk = icmp slt i32 %i.sj, %.5931.2.ph
  br i1 %i.sk, label %bb.ay, label %.preheader1114.3.thread

bb.ay:                                            ; preds = %bb.ax
  br label %.preheader1114.3.thread

.preheader1114.3.thread:                          ; preds = %.preheader1114.preheader, %bb.ay, %bb.ax, %.split1347
  %.5931.3 = phi i32 [ %i.sj, %bb.ay ], [ %.5931.2.ph, %bb.ax ], [ %.5931.2.ph, %.split1347 ], [ %.1927, %.preheader1114.preheader ] ; 4 uses
  %.5886.3 = phi i32 [ %i.ai, %bb.ay ], [ %.5886.2.ph, %bb.ax ], [ %.5886.2.ph, %.split1347 ], [ %.1882, %.preheader1114.preheader ] ; 8 uses
  %.5.3 = phi i32 [ %i.rk, %bb.ay ], [ %.5.2.ph, %bb.ax ], [ %.5.2.ph, %.split1347 ], [ %.1, %.preheader1114.preheader ] ; 8 uses
  %i.sl = icmp eq i32 %5, 1
  %i.sm = shl i32 %.5931.3, 2                     ; 2 uses
  br i1 %i.sl, label %bb.az, label %._crit_edge1222

bb.az:                                            ; preds = %.preheader1114.3.thread
  %i.sn = load i16, ptr @SymmetricalCrossSearchThreshold1, align 2, !tbaa !9
  %i.so = zext i16 %i.sn to i32
  %i.sp = lshr i32 %i.so, %i.kb
  %i.sq = icmp sgt i32 %i.sm, %i.sp
  br i1 %i.sq, label %bb.ba, label %._crit_edge1222

._crit_edge1222:                                  ; preds = %.preheader1114.3.thread, %bb.az
  %i.sr = load i16, ptr @SymmetricalCrossSearchThreshold2, align 2, !tbaa !9
  %i.ss = zext i16 %i.sr to i32
  %i.st = lshr i32 %i.ss, %i.kb
  %i.su = icmp sgt i32 %i.sm, %i.st
  br i1 %i.su, label %bb.ba, label %.loopexit1112

bb.ba:                                            ; preds = %._crit_edge1222, %bb.az
  %.not10261119 = icmp slt i32 %14, 2
  br i1 %.not10261119, label %.preheader1113, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ba
  %i.sv = lshr i32 %14, 1
  %i.sw = sub nsw i32 %.5.3, %i.aj
  %i.sx = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.sw, i1 true)
  %.not1047 = icmp samesign ugt i32 %i.sx, %14    ; 2 uses
  %i.sy = shl i32 %.5.3, 2                        ; 2 uses
  %i.sz = sub nsw i32 %i.sy, %i.x
  %i.ta = sext i32 %i.sz to i64                   ; 2 uses
  %i.tb = add nsw i32 %i.sy, 80                   ; 2 uses
  %i.tc = sub nsw i32 %.5886.3, %i.ai
  %i.td = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.tc, i1 true)
  %.not1050 = icmp samesign ugt i32 %i.td, %14
  %i.te = shl i32 %.5886.3, 2                     ; 2 uses
  %i.tf = sub nsw i32 %i.te, %i.v
  %i.tg = sext i32 %i.tf to i64                   ; 2 uses
  %i.th = add nsw i32 %i.te, 80                   ; 2 uses
  %i.ti = zext i32 %.5.3 to i64                   ; 2 uses
  %i.tj = zext i32 %.5886.3 to i64                ; 2 uses
  %i.tk = add nuw nsw i32 %i.sv, 1
  %wide.trip.count = zext nneg i32 %i.tk to i64
  br label %bb.bb

.preheader1113:                                   ; preds = %bb.bs, %bb.ba
  %.6932.lcssa = phi i32 [ %.5931.3, %bb.ba ], [ %.10936, %bb.bs ]
  %.6887.lcssa = phi i32 [ %.5886.3, %bb.ba ], [ %.10891, %bb.bs ] ; 2 uses
  %.6.lcssa = phi i32 [ %.5.3, %bb.ba ], [ %.10, %bb.bs ] ; 2 uses
  br label %bb.bt

bb.bb:                                            ; preds = %.lr.ph, %bb.bs
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.bs ] ; 2 uses
  %.61123 = phi i32 [ %.5.3, %.lr.ph ], [ %.10, %bb.bs ] ; 3 uses
  %.68871122 = phi i32 [ %.5886.3, %.lr.ph ], [ %.10891, %bb.bs ] ; 3 uses
  %.69321120 = phi i32 [ %.5931.3, %.lr.ph ], [ %.10936, %bb.bs ] ; 6 uses
  %i.tl = shl nuw nsw i64 %indvars.iv, 1
  %i.tm = add nsw i64 %i.tl, -1                   ; 4 uses
  %i.tn = add i64 %i.tm, %i.tj                    ; 2 uses
  %i.to = trunc i64 %i.tn to i32
  %i.tp = sub i32 %i.to, %i.ai
  %i.tq = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.tp, i1 true)
  %.not1046 = icmp sgt i32 %i.tq, %14
  %brmerge = select i1 %.not1046, i1 true, i1 %.not1047
  br i1 %brmerge, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.tr = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.hh
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !7
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.hn
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !7
  %i.tw = add nsw i32 %i.tv, %i.tt
  %i.tx = mul nsw i32 %i.tw, %16
  %i.ty = ashr i32 %i.tx, 16
  %i.tz = trunc i64 %i.tn to i32                  ; 2 uses
  %i.ua = shl i32 %i.tz, 2                        ; 2 uses
  %i.ub = sub nsw i32 %i.ua, %i.v
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.uc
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !7
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.ta
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !7
  %i.uh = add nsw i32 %i.ug, %i.ue
  %i.ui = mul nsw i32 %i.uh, %16
  %i.uj = ashr i32 %i.ui, 16
  %i.uk = add nsw i32 %i.uj, %i.ty                ; 3 uses
  %i.ul = icmp slt i32 %i.uk, %.69321120
  br i1 %i.ul, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.um = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.un = sub nsw i32 %.69321120, %i.uk
  %i.uo = add nsw i32 %i.ua, 80
  %i.up = tail call i32 %i.um(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.un, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.uo, i32 noundef %i.tb) #11
  %i.uq = add nsw i32 %i.up, %i.uk                ; 2 uses
  %i.ur = icmp slt i32 %i.uq, %.69321120
  br i1 %i.ur, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bb, %bb.bc, %bb.be, %bb.bd
  %.7933 = phi i32 [ %i.uq, %bb.be ], [ %.69321120, %bb.bd ], [ %.69321120, %bb.bc ], [ %.69321120, %bb.bb ] ; 6 uses
  %.7888 = phi i32 [ %i.tz, %bb.be ], [ %.68871122, %bb.bd ], [ %.68871122, %bb.bc ], [ %.68871122, %bb.bb ] ; 3 uses
  %.7 = phi i32 [ %.5.3, %bb.be ], [ %.61123, %bb.bd ], [ %.61123, %bb.bc ], [ %.61123, %bb.bb ] ; 3 uses
  %i.us = sub i64 %i.tj, %i.tm                    ; 2 uses
  %i.ut = trunc i64 %i.us to i32
  %i.uu = sub i32 %i.ut, %i.ai
  %i.uv = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.uu, i1 true)
  %.not1048 = icmp sgt i32 %i.uv, %14
  %brmerge1185 = select i1 %.not1048, i1 true, i1 %.not1047
  br i1 %brmerge1185, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.uw = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.hh
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !7
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.hn
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !7
  %i.vb = add nsw i32 %i.va, %i.uy
  %i.vc = mul nsw i32 %i.vb, %16
  %i.vd = ashr i32 %i.vc, 16
  %i.ve = trunc i64 %i.us to i32                  ; 2 uses
  %i.vf = shl i32 %i.ve, 2                        ; 2 uses
  %i.vg = sub nsw i32 %i.vf, %i.v
  %i.vh = sext i32 %i.vg to i64
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.vh
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !7
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.ta
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !7
  %i.vm = add nsw i32 %i.vl, %i.vj
  %i.vn = mul nsw i32 %i.vm, %16
  %i.vo = ashr i32 %i.vn, 16
  %i.vp = add nsw i32 %i.vo, %i.vd                ; 3 uses
  %i.vq = icmp slt i32 %i.vp, %.7933
  br i1 %i.vq, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.vr = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.vs = sub nsw i32 %.7933, %i.vp
  %i.vt = add nsw i32 %i.vf, 80
  %i.vu = tail call i32 %i.vr(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.vs, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.vt, i32 noundef %i.tb) #11
  %i.vv = add nsw i32 %i.vu, %i.vp                ; 2 uses
  %i.vw = icmp slt i32 %i.vv, %.7933
  br i1 %i.vw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bf, %bb.bg, %bb.bi, %bb.bh
  %.8934 = phi i32 [ %i.vv, %bb.bi ], [ %.7933, %bb.bh ], [ %.7933, %bb.bg ], [ %.7933, %bb.bf ] ; 7 uses
  %.8889 = phi i32 [ %i.ve, %bb.bi ], [ %.7888, %bb.bh ], [ %.7888, %bb.bg ], [ %.7888, %bb.bf ] ; 4 uses
  %.8 = phi i32 [ %.5.3, %bb.bi ], [ %.7, %bb.bh ], [ %.7, %bb.bg ], [ %.7, %bb.bf ] ; 4 uses
  %i.vx = add i64 %i.tm, %i.ti                    ; 2 uses
  br i1 %.not1050, label %bb.bs, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.vy = trunc i64 %i.vx to i32
  %i.vz = sub i32 %i.vy, %i.aj
  %i.wa = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.vz, i1 true)
  %.not1051 = icmp samesign ugt i32 %i.wa, %14
  br i1 %.not1051, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.wb = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.wb, i64 %i.hh
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !7
  %i.we = getelementptr inbounds [4 x i8], ptr %i.wb, i64 %i.hn
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !7
  %i.wg = add nsw i32 %i.wf, %i.wd
  %i.wh = mul nsw i32 %i.wg, %16
  %i.wi = ashr i32 %i.wh, 16
  %i.wj = getelementptr inbounds [4 x i8], ptr %i.wb, i64 %i.tg
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !7
  %i.wl = trunc i64 %i.vx to i32                  ; 2 uses
  %i.wm = shl i32 %i.wl, 2                        ; 2 uses
  %i.wn = sub nsw i32 %i.wm, %i.x
  %i.wo = sext i32 %i.wn to i64
  %i.wp = getelementptr inbounds [4 x i8], ptr %i.wb, i64 %i.wo
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !7
  %i.wr = add nsw i32 %i.wq, %i.wk
  %i.ws = mul nsw i32 %i.wr, %16
  %i.wt = ashr i32 %i.ws, 16
  %i.wu = add nsw i32 %i.wt, %i.wi                ; 3 uses
  %i.wv = icmp slt i32 %i.wu, %.8934
  br i1 %i.wv, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.ww = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.wx = sub nsw i32 %.8934, %i.wu
  %i.wy = add nsw i32 %i.wm, 80
  %i.wz = tail call i32 %i.ww(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.wx, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.th, i32 noundef %i.wy) #11
  %i.xa = add nsw i32 %i.wz, %i.wu                ; 2 uses
  %i.xb = icmp slt i32 %i.xa, %.8934
  br i1 %i.xb, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bl, %bb.bn, %bb.bm, %bb.bk
end_hunk_0
begin_hunk_1_@smpUMHEXBipredIntegerPelBlockMotionSearch:bb.a
  %i.arj = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.ark = getelementptr inbounds [4 x i8], ptr %i.arj, i64 %i.hh
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !7
  %i.arm = getelementptr inbounds [4 x i8], ptr %i.arj, i64 %i.hn
  %i.arn = load i32, ptr %i.arm, align 4, !tbaa !7
  %i.aro = add nsw i32 %i.arn, %i.arl
  %i.arp = mul nsw i32 %i.aro, %16
  %i.arq = ashr i32 %i.arp, 16
  %i.arr = shl i32 %i.are, 2                      ; 2 uses
  %i.ars = sub nsw i32 %i.arr, %i.v
  %i.art = sext i32 %i.ars to i64
  %i.aru = getelementptr inbounds [4 x i8], ptr %i.arj, i64 %i.art
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !7
  %i.arw = shl i32 %.281168, 2                    ; 2 uses
  %i.arx = sub nsw i32 %i.arw, %i.x
  %i.ary = sext i32 %i.arx to i64
  %i.arz = getelementptr inbounds [4 x i8], ptr %i.arj, i64 %i.ary
  %i.asa = load i32, ptr %i.arz, align 4, !tbaa !7
  %i.asb = add nsw i32 %i.asa, %i.arv
  %i.asc = mul nsw i32 %i.asb, %16
  %i.asd = ashr i32 %i.asc, 16
  %i.ase = add nsw i32 %i.asd, %i.arq             ; 3 uses
  %i.asf = icmp slt i32 %i.ase, %.289541165
  br i1 %i.asf, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.asg = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.ash = sub nsw i32 %.289541165, %i.ase
  %i.asi = add nsw i32 %i.arr, 80
  %i.asj = add nsw i32 %i.arw, 80
  %i.ask = tail call i32 %i.asg(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.ash, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.asi, i32 noundef %i.asj) #11
  %i.asl = add nsw i32 %i.ask, %i.ase             ; 2 uses
  %i.asm = icmp slt i32 %i.asl, %.289541165
  %spec.select1403 = tail call i32 @llvm.smin.i32(i32 %i.asl, i32 %.289541165)
  %spec.select1404 = select i1 %i.asm, i32 %i.are, i32 %.289091167
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %.preheader1107, %bb.ee, %bb.ef
  %.30956 = phi i32 [ %.289541165, %.preheader1107 ], [ %spec.select1403, %bb.eg ], [ %.289541165, %bb.ef ], [ %.289541165, %bb.ee ] ; 7 uses
  %.30911 = phi i32 [ %.289091167, %.preheader1107 ], [ %spec.select1404, %bb.eg ], [ %.289091167, %bb.ef ], [ %.289091167, %bb.ee ] ; 4 uses
  %i.asn = add nsw i32 %.289091167, 1             ; 3 uses
  %i.aso = sub nsw i32 %i.asn, %i.ai
  %i.asp = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.aso, i1 true)
  %.not1034.1 = icmp sgt i32 %i.asp, %14
  br i1 %.not1034.1, label %bb.el, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.asq = sub nsw i32 %.281168, %i.aj
  %i.asr = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.asq, i1 true)
  %.not1035.1 = icmp samesign ugt i32 %i.asr, %14
  br i1 %.not1035.1, label %bb.el, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ass = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.ast = getelementptr inbounds [4 x i8], ptr %i.ass, i64 %i.hh
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !7
  %i.asv = getelementptr inbounds [4 x i8], ptr %i.ass, i64 %i.hn
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !7
  %i.asx = add nsw i32 %i.asw, %i.asu
  %i.asy = mul nsw i32 %i.asx, %16
  %i.asz = ashr i32 %i.asy, 16
  %i.ata = shl i32 %i.asn, 2                      ; 2 uses
  %i.atb = sub nsw i32 %i.ata, %i.v
  %i.atc = sext i32 %i.atb to i64
  %i.atd = getelementptr inbounds [4 x i8], ptr %i.ass, i64 %i.atc
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !7
  %i.atf = shl i32 %.281168, 2                    ; 2 uses
  %i.atg = sub nsw i32 %i.atf, %i.x
  %i.ath = sext i32 %i.atg to i64
  %i.ati = getelementptr inbounds [4 x i8], ptr %i.ass, i64 %i.ath
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !7
  %i.atk = add nsw i32 %i.atj, %i.ate
  %i.atl = mul nsw i32 %i.atk, %16
  %i.atm = ashr i32 %i.atl, 16
  %i.atn = add nsw i32 %i.atm, %i.asz             ; 3 uses
  %i.ato = icmp slt i32 %i.atn, %.30956
  br i1 %i.ato, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.atp = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.atq = sub nsw i32 %.30956, %i.atn
  %i.atr = add nsw i32 %i.ata, 80
  %i.ats = add nsw i32 %i.atf, 80
  %i.att = tail call i32 %i.atp(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.atq, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.atr, i32 noundef %i.ats) #11
  %i.atu = add nsw i32 %i.att, %i.atn             ; 2 uses
  %i.atv = icmp slt i32 %i.atu, %.30956
  %spec.select1405 = tail call i32 @llvm.smin.i32(i32 %i.atu, i32 %.30956)
  %spec.select1406 = select i1 %i.atv, i32 %i.asn, i32 %.30911
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.eh
  %.30956.1 = phi i32 [ %.30956, %bb.eh ], [ %spec.select1405, %bb.ek ], [ %.30956, %bb.ej ], [ %.30956, %bb.ei ] ; 7 uses
  %.30911.1 = phi i32 [ %.30911, %bb.eh ], [ %spec.select1406, %bb.ek ], [ %.30911, %bb.ej ], [ %.30911, %bb.ei ] ; 4 uses
  %i.atw = add nsw i32 %.281168, -1               ; 3 uses
  %i.atx = sub nsw i32 %.289091167, %i.ai
  %i.aty = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.atx, i1 true)
  %.not1034.2 = icmp sgt i32 %i.aty, %14
  br i1 %.not1034.2, label %bb.et, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.atz = sub nsw i32 %i.atw, %i.aj
  %i.aua = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.atz, i1 true)
  %.not1035.2 = icmp samesign ugt i32 %i.aua, %14
  br i1 %.not1035.2, label %bb.eq, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aub = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.auc = getelementptr inbounds [4 x i8], ptr %i.aub, i64 %i.hh
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !7
  %i.aue = getelementptr inbounds [4 x i8], ptr %i.aub, i64 %i.hn
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !7
  %i.aug = add nsw i32 %i.auf, %i.aud
  %i.auh = mul nsw i32 %i.aug, %16
  %i.aui = ashr i32 %i.auh, 16
  %i.auj = shl i32 %.289091167, 2                 ; 2 uses
  %i.auk = sub nsw i32 %i.auj, %i.v
  %i.aul = sext i32 %i.auk to i64
  %i.aum = getelementptr inbounds [4 x i8], ptr %i.aub, i64 %i.aul
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !7
  %i.auo = shl i32 %i.atw, 2                      ; 2 uses
  %i.aup = sub nsw i32 %i.auo, %i.x
  %i.auq = sext i32 %i.aup to i64
  %i.aur = getelementptr inbounds [4 x i8], ptr %i.aub, i64 %i.auq
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !7
  %i.aut = add nsw i32 %i.aus, %i.aun
  %i.auu = mul nsw i32 %i.aut, %16
  %i.auv = ashr i32 %i.auu, 16
  %i.auw = add nsw i32 %i.auv, %i.aui             ; 3 uses
  %i.aux = icmp slt i32 %i.auw, %.30956.1
  br i1 %i.aux, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.auy = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.auz = sub nsw i32 %.30956.1, %i.auw
  %i.ava = add nsw i32 %i.auj, 80
  %i.avb = add nsw i32 %i.auo, 80
  %i.avc = tail call i32 %i.auy(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.auz, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.ava, i32 noundef %i.avb) #11
  %i.avd = add nsw i32 %i.avc, %i.auw             ; 2 uses
  %i.ave = icmp slt i32 %i.avd, %.30956.1
  br i1 %i.ave, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en, %bb.em
  %.30956.2.ph = phi i32 [ %.30956.1, %bb.em ], [ %.30956.1, %bb.en ], [ %.30956.1, %bb.eo ], [ %i.avd, %bb.ep ] ; 6 uses
  %.30911.2.ph = phi i32 [ %.30911.1, %bb.em ], [ %.30911.1, %bb.en ], [ %.30911.1, %bb.eo ], [ %.289091167, %bb.ep ] ; 3 uses
  %.30.2.ph = phi i32 [ %.281168, %bb.em ], [ %.281168, %bb.en ], [ %.281168, %bb.eo ], [ %i.atw, %bb.ep ] ; 3 uses
  %i.avf = add nsw i32 %.281168, 1                ; 3 uses
  %i.avg = sub nsw i32 %i.avf, %i.aj
  %i.avh = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.avg, i1 true)
  %.not1035.3 = icmp samesign ugt i32 %i.avh, %14
  br i1 %.not1035.3, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.avi = load ptr, ptr @mvbits, align 8, !tbaa !65 ; 4 uses
  %i.avj = getelementptr inbounds [4 x i8], ptr %i.avi, i64 %i.hh
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !7
  %i.avl = getelementptr inbounds [4 x i8], ptr %i.avi, i64 %i.hn
  %i.avm = load i32, ptr %i.avl, align 4, !tbaa !7
  %i.avn = add nsw i32 %i.avm, %i.avk
  %i.avo = mul nsw i32 %i.avn, %16
  %i.avp = ashr i32 %i.avo, 16
  %i.avq = shl i32 %.289091167, 2                 ; 2 uses
  %i.avr = sub nsw i32 %i.avq, %i.v
  %i.avs = sext i32 %i.avr to i64
  %i.avt = getelementptr inbounds [4 x i8], ptr %i.avi, i64 %i.avs
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !7
  %i.avv = shl i32 %i.avf, 2                      ; 2 uses
  %i.avw = sub nsw i32 %i.avv, %i.x
  %i.avx = sext i32 %i.avw to i64
  %i.avy = getelementptr inbounds [4 x i8], ptr %i.avi, i64 %i.avx
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !7
  %i.awa = add nsw i32 %i.avz, %i.avu
  %i.awb = mul nsw i32 %i.awa, %16
  %i.awc = ashr i32 %i.awb, 16
  %i.awd = add nsw i32 %i.awc, %i.avp             ; 3 uses
  %i.awe = icmp slt i32 %i.awd, %.30956.2.ph
  br i1 %i.awe, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.awf = load ptr, ptr @computeBiPred, align 8, !tbaa !11
  %i.awg = sub nsw i32 %.30956.2.ph, %i.awd
  %i.awh = add nsw i32 %i.avq, 80
  %i.awi = add nsw i32 %i.avv, 80
  %i.awj = tail call i32 %i.awf(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.awg, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef %i.awh, i32 noundef %i.awi) #11
  %i.awk = add nsw i32 %i.awj, %i.awd             ; 2 uses
  %i.awl = icmp slt i32 %i.awk, %.30956.2.ph
  br i1 %i.awl, label %.thread1374, label %bb.et

bb.et:                                            ; preds = %bb.el, %bb.es, %bb.er, %bb.eq
  %.30956.3 = phi i32 [ %.30956.2.ph, %bb.eq ], [ %.30956.2.ph, %bb.es ], [ %.30956.2.ph, %bb.er ], [ %.30956.1, %bb.el ] ; 2 uses
  %.30911.3 = phi i32 [ %.30911.2.ph, %bb.eq ], [ %.30911.2.ph, %bb.es ], [ %.30911.2.ph, %bb.er ], [ %.30911.1, %bb.el ] ; 2 uses
  %.30.3 = phi i32 [ %.30.2.ph, %bb.eq ], [ %.30.2.ph, %bb.es ], [ %.30.2.ph, %bb.er ], [ %.281168, %bb.el ] ; 2 uses
  %i.awm = icmp eq i32 %.30911.3, %.289091167
  %i.awn = icmp eq i32 %.30.3, %.281168
  %or.cond1060 = select i1 %i.awm, i1 %i.awn, i1 false
  br i1 %or.cond1060, label %.preheader.3.thread, label %.thread1374

.preheader.3.thread:                              ; preds = %bb.et, %.thread1374, %.preheader1109, %bb.ds, %bb.dt, %bb.du, %bb.dv, %.preheader1106.2, %.split, %bb.an, %bb.ao, %.preheader.preheader
  %.31912.sink = phi i32 [ %.23904.1, %.preheader1106.2 ], [ %.1882, %.preheader.preheader ], [ %i.ai, %bb.ao ], [ %.3884.2.ph, %bb.an ], [ %.3884.2.ph, %.split ], [ %.21902, %bb.dv ], [ %.23904.2.ph, %bb.du ], [ %.23904.2.ph, %bb.dt ], [ %.23904.2.ph, %bb.ds ], [ %.21902, %.preheader1109 ], [ %.30911.31381, %.thread1374 ], [ %.289091167, %bb.et ]
  %.31.sink = phi i32 [ %.21, %.preheader1106.2 ], [ %.1, %.preheader.preheader ], [ %i.nh, %bb.ao ], [ %.3.2.ph, %bb.an ], [ %.3.2.ph, %.split ], [ %i.aod, %bb.dv ], [ %.23.2.ph, %bb.du ], [ %.23.2.ph, %bb.dt ], [ %.23.2.ph, %bb.ds ], [ %.21, %.preheader1109 ], [ %.30.31382, %.thread1374 ], [ %.281168, %bb.et ]
  %.0925 = phi i32 [ %.23949.1, %.preheader1106.2 ], [ %.1927, %.preheader.preheader ], [ %i.og, %bb.ao ], [ %.3929.2.ph, %bb.an ], [ %.3929.2.ph, %.split ], [ %i.api, %bb.dv ], [ %.23949.2.ph, %bb.du ], [ %.23949.2.ph, %bb.dt ], [ %.23949.2.ph, %bb.ds ], [ %.21947, %.preheader1109 ], [ %.30956.31379, %.thread1374 ], [ %.30956.3, %bb.et ]
  %i.awo = sub nsw i32 %.31912.sink, %3
  %i.awp = trunc i32 %i.awo to i16
  store i16 %i.awp, ptr %10, align 2, !tbaa !9
  %i.awq = sub nsw i32 %.31.sink, %4
  %i.awr = trunc i32 %i.awq to i16
  store i16 %i.awr, ptr %11, align 2, !tbaa !9
  ret i32 %.0925
}

declare i32 @computeBiPredSAD2(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @computeBiPredSAD1(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @smpUMHEX_decide_intrabk_SAD() local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !11   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !41
  %.not = icmp eq i32 %i.c, 2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.e = load i32, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.h = load i32, ptr %i.g, align 4, !tbaa !76
  %i.i = icmp eq i32 %i.h, 0                      ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @smpUMHEX_flag_intra, align 8, !tbaa !30
  %i.k = load i8, ptr %i.j, align 1, !tbaa !74
  %i.l = zext i8 %i.k to i32
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr @smpUMHEX_flag_intra, align 8, !tbaa !30
  %i.n = ashr i32 %i.e, 4
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 4 uses
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !74
  %i.s = zext i8 %i.r to i32
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.p, align 1, !tbaa !74
  %.not1 = icmp eq i8 %i.t, 0
  br i1 %.not1, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %i.p, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !74
  %.not2 = icmp eq i8 %i.v, 0
  br i1 %.not2, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.p, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !74
  %i.y = icmp ne i8 %i.x, 0
  %i.z = zext i1 %i.y to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h, %bb.i, %bb.c, %bb.d, %bb.f
  %.sink = phi i32 [ %i.l, %bb.d ], [ %i.s, %bb.f ], [ 0, %bb.c ], [ 1, %bb.h ], [ 1, %bb.g ], [ %i.z, %bb.i ]
  store i32 %.sink, ptr @smpUMHEX_flag_intra_SAD, align 4, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @smpUMHEX_skip_intrabk_SAD(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !11   ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !97
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = add i32 %0, -9                           ; 2 uses
  br i1 %i.c, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %i.d, 2
  %i.f = zext i1 %i.e to i8
  %i.g = load ptr, ptr @smpUMHEX_flag_intra, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.i = load i32, ptr %i.h, align 8, !tbaa !75
  %i.j = ashr i32 %i.i, 4
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %i.k
  store i8 %i.f, ptr %i.l, align 1, !tbaa !74
  %.pre = load ptr, ptr @img, align 8, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !41
  %.not = icmp ne i32 %i.o, 2
  %or.cond = icmp ult i32 %i.d, 2
  %or.cond19 = and i1 %or.cond, %.not
  br i1 %or.cond19, label %.preheader21, label %.loopexit

.preheader21:                                     ; preds = %._crit_edge
  %i.p = load ptr, ptr @smpUMHEX_l0_cost, align 8, !tbaa !31 ; 10 uses
  %i.q = load ptr, ptr @smpUMHEX_l1_cost, align 8, !tbaa !31 ; 10 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.pre28 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !64
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %.pre30 = load ptr, ptr %.phi.trans.insert29, align 8, !tbaa !64
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %.pre32 = load ptr, ptr %.phi.trans.insert31, align 8, !tbaa !64
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %.pre34 = load ptr, ptr %.phi.trans.insert33, align 8, !tbaa !64
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %.pre36 = load ptr, ptr %.phi.trans.insert35, align 8, !tbaa !64
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %.pre38 = load ptr, ptr %.phi.trans.insert37, align 8, !tbaa !64
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %.pre40 = load ptr, ptr %.phi.trans.insert39, align 8, !tbaa !64
  %.phi.trans.insert41 = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %.pre42 = load ptr, ptr %.phi.trans.insert41, align 8, !tbaa !64
  %.phi.trans.insert43 = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  %.pre44 = load ptr, ptr %.phi.trans.insert43, align 8, !tbaa !64
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 3 uses
  %.pre46 = load ptr, ptr %.phi.trans.insert45, align 8, !tbaa !64
  %.phi.trans.insert47 = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 3 uses
  %.pre48 = load ptr, ptr %.phi.trans.insert47, align 8, !tbaa !64
  %.phi.trans.insert49 = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  %.pre50 = load ptr, ptr %.phi.trans.insert49, align 8, !tbaa !64
  %.phi.trans.insert51 = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 3 uses
  %.pre52 = load ptr, ptr %.phi.trans.insert51, align 8, !tbaa !64
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 3 uses
  %.pre54 = load ptr, ptr %.phi.trans.insert53, align 8, !tbaa !64
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %.pre56 = load ptr, ptr %.phi.trans.insert55, align 8, !tbaa !64
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 3 uses
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8, !tbaa !64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !64   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !64   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.z = load ptr, ptr %.phi.trans.insert29, align 8, !tbaa !64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !65
  %i.ac = load ptr, ptr %.phi.trans.insert31, align 8, !tbaa !64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !65
  %i.af = load ptr, ptr %.phi.trans.insert33, align 8, !tbaa !64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65
  %i.ai = load ptr, ptr %.phi.trans.insert35, align 8, !tbaa !64 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !65
  %i.al = load ptr, ptr %.phi.trans.insert37, align 8, !tbaa !64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.ao = load ptr, ptr %.phi.trans.insert39, align 8, !tbaa !64 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !65
  %i.ar = load ptr, ptr %.phi.trans.insert41, align 8, !tbaa !64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader21, %.preheader20
  %i.bb = phi ptr [ %.pre58, %.preheader21 ], [ %i.jc, %.preheader20 ]
  %i.bc = phi ptr [ %.pre56, %.preheader21 ], [ %i.iy, %.preheader20 ]
  %i.bd = phi ptr [ %.pre54, %.preheader21 ], [ %i.iu, %.preheader20 ]
  %i.be = phi ptr [ %.pre52, %.preheader21 ], [ %i.iq, %.preheader20 ]
  %i.bf = phi ptr [ %.pre50, %.preheader21 ], [ %i.im, %.preheader20 ]
  %i.bg = phi ptr [ %.pre48, %.preheader21 ], [ %i.ii, %.preheader20 ]
  %i.bh = phi ptr [ %.pre46, %.preheader21 ], [ %i.ie, %.preheader20 ]
  %i.bi = phi ptr [ %.pre44, %.preheader21 ], [ %i.ia, %.preheader20 ]
  %i.bj = phi ptr [ %.pre42, %.preheader21 ], [ %i.hw, %.preheader20 ]
  %i.bk = phi ptr [ %.pre40, %.preheader21 ], [ %i.hs, %.preheader20 ]
  %i.bl = phi ptr [ %.pre38, %.preheader21 ], [ %i.ho, %.preheader20 ]
  %i.bm = phi ptr [ %.pre36, %.preheader21 ], [ %i.hk, %.preheader20 ]
  %i.bn = phi ptr [ %.pre34, %.preheader21 ], [ %i.hg, %.preheader20 ]
  %i.bo = phi ptr [ %.pre32, %.preheader21 ], [ %i.hc, %.preheader20 ]
  %i.bp = phi ptr [ %.pre30, %.preheader21 ], [ %i.gy, %.preheader20 ]
end_hunk_1
