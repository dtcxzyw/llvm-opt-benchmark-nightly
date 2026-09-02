Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rdopt?download=true
inline.NumInlined: 29
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 172
loop-unroll.NumUnrolled: 172
begin_hunk_0_@Mode_Decision_for_4x4IntraBlocks:bb.a
  %i.je = getelementptr [8 x i8], ptr %i.hy, i64 %i.dc
  %i.jf = getelementptr i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !59
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ib, i64 96
  %i.ji = getelementptr inbounds [2 x i8], ptr %i.jg, i64 %i.da
  %i.jj = load <4 x i16>, ptr %i.ji, align 2, !tbaa !60
  %i.jk = zext <4 x i16> %i.jj to <4 x i32>
  %i.jl = load <4 x i16>, ptr %i.jh, align 2, !tbaa !60
  %i.jm = zext <4 x i16> %i.jl to <4 x i32>
  %i.jn = sub nsw <4 x i32> %i.jk, %i.jm
  store <4 x i32> %i.jn, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 48), align 16, !tbaa !7
  %i.jo = icmp eq i64 %indvars.iv, %i.de
  %i.jp = select i1 %i.jo, i32 0, i32 %i.ah
  %i.jq = call i32 @distortion4x4(ptr noundef nonnull @diff) #14
  %i.jr = add nsw i32 %i.jq, %i.jp                ; 2 uses
  %i.js = load i32, ptr %3, align 4, !tbaa !7
  %i.jt = icmp slt i32 %i.jr, %i.js
  br i1 %i.jt, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.preheader245
  store i32 %i.jr, ptr %3, align 4, !tbaa !7
  %i.ju = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.y

bb.x:                                             ; preds = %.preheader248
  %i.jv = load ptr, ptr @cofAC4x4, align 8, !tbaa !24 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !72
  %i.jx = load ptr, ptr @img, align 8, !tbaa !16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 14160
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !85
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.cx
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !12
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.kb, i64 %i.cy
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.jw, ptr noundef nonnull align 4 dereferenceable(72) %i.ke, i64 72, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !72
  %i.kh = load ptr, ptr @img, align 8, !tbaa !16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 14160
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !85
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.cx
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !12
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.cy
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !24
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.kg, ptr noundef nonnull align 4 dereferenceable(72) %i.kp, i64 72, i1 false)
  %i.kq = load ptr, ptr @enc_picture, align 8, !tbaa !65
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 6440
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !69 ; 8 uses
  %i.kt = load ptr, ptr @img, align 8, !tbaa !16  ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 20
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !40
  %i.kw = icmp ne i32 %i.kv, 3
  %i.kx = load i32, ptr @si_frame_indicator, align 4
  %i.ky = icmp ne i32 %i.kx, 0
  %or.cond20 = select i1 %i.kw, i1 true, i1 %i.ky
  %i.kz = load i32, ptr @sp2_frame_indicator, align 4
  %i.la = icmp ne i32 %i.kz, 0
  %or.cond22 = select i1 %or.cond20, i1 true, i1 %i.la
  br i1 %or.cond22, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.x
  %i.lb = load ptr, ptr @lrec, align 8            ; 4 uses
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.dd
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !59
  %i.le = getelementptr inbounds [2 x i8], ptr %i.ld, i64 %i.cz
  %i.lf = load i64, ptr %i.le, align 2
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.dd
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !72
  %i.li = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.li, i64 16, i1 false)
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.di
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !59
  %i.ll = getelementptr inbounds [2 x i8], ptr %i.lk, i64 %i.cz
  %i.lm = load i64, ptr %i.ll, align 2
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.di
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !72
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dj, ptr noundef nonnull align 4 dereferenceable(16) %i.lp, i64 16, i1 false)
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.dk
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !59
  %i.ls = getelementptr inbounds [2 x i8], ptr %i.lr, i64 %i.cz
  %i.lt = load i64, ptr %i.ls, align 2
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.dk
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !72
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dl, ptr noundef nonnull align 4 dereferenceable(16) %i.lw, i64 16, i1 false)
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.dm
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !59
  %i.lz = getelementptr inbounds [2 x i8], ptr %i.ly, i64 %i.cz
  %i.ma = load i64, ptr %i.lz, align 2
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.dm
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !72
  %i.md = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dn, ptr noundef nonnull align 4 dereferenceable(16) %i.md, i64 16, i1 false)
  br label %.split253.us

.split.us.preheader:                              ; preds = %bb.x
  %i.me = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.dd
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !59
  %i.mg = getelementptr inbounds [2 x i8], ptr %i.mf, i64 %i.cz
  %i.mh = load i64, ptr %i.mg, align 2
  %i.mi = getelementptr [8 x i8], ptr %i.ks, i64 %i.dd
  %i.mj = getelementptr i8, ptr %i.mi, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !59
  %i.ml = getelementptr inbounds [2 x i8], ptr %i.mk, i64 %i.cz
  %i.mm = load i64, ptr %i.ml, align 2
  %i.mn = getelementptr [8 x i8], ptr %i.ks, i64 %i.dd
  %i.mo = getelementptr i8, ptr %i.mn, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !59
  %i.mq = getelementptr inbounds [2 x i8], ptr %i.mp, i64 %i.cz
  %i.mr = load i64, ptr %i.mq, align 2
  %i.ms = getelementptr [8 x i8], ptr %i.ks, i64 %i.dd
  %i.mt = getelementptr i8, ptr %i.ms, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !59
  %i.mv = getelementptr inbounds [2 x i8], ptr %i.mu, i64 %i.cz
  %i.mw = load i64, ptr %i.mv, align 2
  br label %.split253.us

.split253.us:                                     ; preds = %.split.preheader, %.split.us.preheader
  %.sroa.11.1 = phi i64 [ %i.mw, %.split.us.preheader ], [ %i.ma, %.split.preheader ] ; 2 uses
  %.sroa.8.1 = phi i64 [ %i.mr, %.split.us.preheader ], [ %i.lt, %.split.preheader ] ; 2 uses
  %.sroa.5.1 = phi i64 [ %i.mm, %.split.us.preheader ], [ %i.lm, %.split.preheader ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.mh, %.split.us.preheader ], [ %i.lf, %.split.preheader ] ; 2 uses
  %i.mx = load i32, ptr %i.b, align 4, !tbaa !7   ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.kt, i64 15260
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !86
  %.not235 = icmp eq i32 %i.mz, 0
  br i1 %.not235, label %.loopexit247, label %.preheader246

.preheader246:                                    ; preds = %.split253.us
  %i.na = load ptr, ptr @fadjust4x4, align 8, !tbaa !24 ; 4 uses
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.db
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !72
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.cw
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kt, i64 14176
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !87
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !24
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.nh, i64 %i.db
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !72
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nd, ptr noundef nonnull align 4 dereferenceable(16) %i.nk, i64 16, i1 false)
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.df
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !72
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %i.cw
  %i.no = load ptr, ptr @img, align 8, !tbaa !16
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 14176
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !87
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !24
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.ns, i64 %i.df
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !72
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nn, ptr noundef nonnull align 4 dereferenceable(16) %i.nv, i64 16, i1 false)
  %i.nw = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.dg
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !72
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.cw
  %i.nz = load ptr, ptr @img, align 8, !tbaa !16
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 14176
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !87
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !24
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.od, i64 %i.dg
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !72
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ny, ptr noundef nonnull align 4 dereferenceable(16) %i.og, i64 16, i1 false)
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.na, i64 %i.dh
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !72
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.cw
  %i.ok = load ptr, ptr @img, align 8, !tbaa !16
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 14176
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !87
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !24
  %i.op = getelementptr inbounds [8 x i8], ptr %i.oo, i64 %i.dh
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !72
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.oj, ptr noundef nonnull align 4 dereferenceable(16) %i.or, i64 16, i1 false)
  br label %.loopexit247

.loopexit247:                                     ; preds = %.preheader246, %.split253.us, %.preheader248
  %.sroa.11.2 = phi i64 [ %.sroa.11.1, %.split253.us ], [ %.sroa.11.1, %.preheader246 ], [ %.sroa.11.0, %.preheader248 ]
  %.sroa.8.2 = phi i64 [ %.sroa.8.1, %.split253.us ], [ %.sroa.8.1, %.preheader246 ], [ %.sroa.8.0, %.preheader248 ]
  %.sroa.5.2 = phi i64 [ %.sroa.5.1, %.split253.us ], [ %.sroa.5.1, %.preheader246 ], [ %.sroa.5.0, %.preheader248 ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %.split253.us ], [ %.sroa.0.1, %.preheader246 ], [ %.sroa.0.0, %.preheader248 ]
  %.1216 = phi i32 [ %i.hv, %.split253.us ], [ %i.hv, %.preheader246 ], [ %.0215261, %.preheader248 ]
  %.1200 = phi i32 [ %i.mx, %.split253.us ], [ %i.mx, %.preheader246 ], [ %.0199262, %.preheader248 ]
  %.1 = phi double [ %i.hw, %.split253.us ], [ %i.hw, %.preheader246 ], [ %.0263, %.preheader248 ]
  %i.os = load ptr, ptr @cs_cm, align 8, !tbaa !16
  call void @reset_coding_state(ptr noundef %i.os) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.u, %.preheader245, %bb.w, %.loopexit247, %bb.s, %bb.r
  %.sroa.11.3 = phi i64 [ %.sroa.11.0, %bb.r ], [ %.sroa.11.0, %bb.s ], [ %.sroa.11.0, %bb.w ], [ %.sroa.11.0, %.preheader245 ], [ %.sroa.11.2, %.loopexit247 ], [ %.sroa.11.0, %bb.t ], [ %.sroa.11.0, %bb.u ] ; 2 uses
  %.sroa.8.3 = phi i64 [ %.sroa.8.0, %bb.r ], [ %.sroa.8.0, %bb.s ], [ %.sroa.8.0, %bb.w ], [ %.sroa.8.0, %.preheader245 ], [ %.sroa.8.2, %.loopexit247 ], [ %.sroa.8.0, %bb.t ], [ %.sroa.8.0, %bb.u ] ; 2 uses
  %.sroa.5.3 = phi i64 [ %.sroa.5.0, %bb.r ], [ %.sroa.5.0, %bb.s ], [ %.sroa.5.0, %bb.w ], [ %.sroa.5.0, %.preheader245 ], [ %.sroa.5.2, %.loopexit247 ], [ %.sroa.5.0, %bb.t ], [ %.sroa.5.0, %bb.u ] ; 2 uses
  %.sroa.0.3 = phi i64 [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %bb.s ], [ %.sroa.0.0, %bb.w ], [ %.sroa.0.0, %.preheader245 ], [ %.sroa.0.2, %.loopexit247 ], [ %.sroa.0.0, %bb.t ], [ %.sroa.0.0, %bb.u ] ; 2 uses
  %.3218 = phi i32 [ %.0215261, %bb.r ], [ %.0215261, %bb.s ], [ %i.ju, %bb.w ], [ %.0215261, %.preheader245 ], [ %.1216, %.loopexit247 ], [ %.0215261, %bb.t ], [ %.0215261, %bb.u ] ; 6 uses
  %.3202 = phi i32 [ %.0199262, %bb.r ], [ %.0199262, %bb.s ], [ %.0199262, %bb.w ], [ %.0199262, %.preheader245 ], [ %.1200, %.loopexit247 ], [ %.0199262, %bb.t ], [ %.0199262, %bb.u ] ; 3 uses
  %.3 = phi double [ %.0263, %bb.r ], [ %.0263, %bb.s ], [ %.0263, %bb.w ], [ %.0263, %.preheader245 ], [ %.1, %.loopexit247 ], [ %.0263, %bb.t ], [ %.0263, %bb.u ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %bb.z, label %bb.l, !llvm.loop !161

bb.z:                                             ; preds = %bb.y
  %i.ot = trunc i32 %.3218 to i8                  ; 2 uses
  %i.ou = load ptr, ptr @img, align 8, !tbaa !16
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 128
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !84
  %i.ox = sext i32 %i.ae to i64
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.ow, i64 %i.ox
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !44
  %i.pa = sext i32 %i.ad to i64
  %i.pb = getelementptr inbounds i8, ptr %i.oz, i64 %i.pa
  store i8 %i.ot, ptr %i.pb, align 1, !tbaa !45
  %i.pc = icmp eq i32 %i.cv, %.3218
  %i.pd = icmp sge i32 %.3218, %i.cv
  %6 = sext i1 %i.pd to i8
  %7 = add i8 %6, %i.ot
  %i.pe = select i1 %i.pc, i8 -1, i8 %7
  %i.pf = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 14224
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !88
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !83
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr inbounds [536 x i8], ptr %i.ph, i64 %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 332
  %i.pn = add nsw i32 %i.l, %1
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds i8, ptr %i.pm, i64 %i.po
  store i8 %i.pe, ptr %i.pp, align 1, !tbaa !45
  %i.pq = load ptr, ptr @input, align 8, !tbaa !16
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 4168
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !25
  %.not229 = icmp eq i32 %i.ps, 0
  br i1 %.not229, label %.preheader, label %.preheader244

.preheader244:                                    ; preds = %bb.z
  %i.pt = load ptr, ptr @cofAC4x4, align 8, !tbaa !24 ; 2 uses
  %i.pu = load ptr, ptr @img, align 8, !tbaa !16
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 14160
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !85
  %i.px = getelementptr inbounds [8 x i8], ptr %i.pw, i64 %i.cx
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !12
  %i.pz = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.cy
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !24
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !72
  %i.qc = load ptr, ptr %i.pt, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.qb, ptr noundef nonnull align 4 dereferenceable(72) %i.qc, i64 72, i1 false)
  %i.qd = load ptr, ptr @img, align 8, !tbaa !16
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 14160
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !85
  %i.qg = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %i.cx
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !12
  %i.qi = getelementptr inbounds [8 x i8], ptr %i.qh, i64 %i.cy
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !24
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !72
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.ql, ptr noundef nonnull align 4 dereferenceable(72) %i.qn, i64 72, i1 false)
  %i.qo = sext i32 %.3218 to i64                  ; 4 uses
  %i.qp = load ptr, ptr @enc_picture, align 8, !tbaa !65
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 6440
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !69
  %i.qs = getelementptr inbounds [8 x i8], ptr %i.qr, i64 %i.dd
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !59
  %i.qu = getelementptr inbounds [2 x i8], ptr %i.qt, i64 %i.cz
  store i64 %.sroa.0.3, ptr %i.qu, align 2
  %i.qv = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 12624
  %i.qx = getelementptr inbounds [32 x i8], ptr %i.qw, i64 %i.db
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.qx, i64 %i.cw
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 208
  %i.ra = getelementptr inbounds [512 x i8], ptr %i.qz, i64 %i.qo
  %i.rb = load i64, ptr %i.ra, align 8
  store i64 %i.rb, ptr %i.qy, align 2
  %i.rc = load ptr, ptr @img, align 8, !tbaa !16
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 20
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !40
  %i.rf = icmp ne i32 %i.re, 3
  %i.rg = load i32, ptr @si_frame_indicator, align 4
  %i.rh = icmp ne i32 %i.rg, 0
  %or.cond24 = select i1 %i.rf, i1 true, i1 %i.rh
  %i.ri = load i32, ptr @sp2_frame_indicator, align 4
  %i.rj = icmp ne i32 %i.ri, 0
  %or.cond26 = select i1 %or.cond24, i1 true, i1 %i.rj
  br i1 %or.cond26, label %bb.ab, label %bb.aa

.preheader:                                       ; preds = %bb.z
  %i.rk = load ptr, ptr @img, align 8, !tbaa !16  ; 18 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 208
  %i.rm = sext i32 %.3218 to i64
  %i.rn = getelementptr inbounds [512 x i8], ptr %i.rl, i64 %i.rm ; 16 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 12624 ; 4 uses
  %i.rp = load ptr, ptr @imgY_org, align 8, !tbaa !57 ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rk, i64 13136
  %i.rr = zext nneg i32 %i.k to i64               ; 7 uses
  %i.rs = getelementptr inbounds [32 x i8], ptr %i.ro, i64 %i.db ; 4 uses
  %i.rt = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %i.dc
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !59 ; 4 uses
  %i.rv = load i16, ptr %i.rn, align 2, !tbaa !60 ; 2 uses
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.rr
  store i16 %i.rv, ptr %i.rw, align 2, !tbaa !60
  %i.rx = getelementptr inbounds [2 x i8], ptr %i.ru, i64 %i.da
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !60
  %i.rz = zext i16 %i.ry to i32
  %i.sa = zext i16 %i.rv to i32
  %i.sb = sub nsw i32 %i.rz, %i.sa
  store i32 %i.sb, ptr %i.rq, align 4, !tbaa !7
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rn, i64 2
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !60 ; 2 uses
  %i.se = or disjoint i64 %i.rr, 1                ; 4 uses
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.se
  store i16 %i.sd, ptr %i.sf, align 2, !tbaa !60
  %i.sg = add nsw i64 %i.da, 1                    ; 4 uses
  %i.sh = getelementptr inbounds [2 x i8], ptr %i.ru, i64 %i.sg
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !60
  %i.sj = zext i16 %i.si to i32
  %i.sk = zext i16 %i.sd to i32
  %i.sl = sub nsw i32 %i.sj, %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rk, i64 13140
  store i32 %i.sl, ptr %i.sm, align 4, !tbaa !7
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  %i.so = load i16, ptr %i.sn, align 2, !tbaa !60 ; 2 uses
  %i.sp = or disjoint i64 %i.rr, 2                ; 4 uses
  %i.sq = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.sp
  store i16 %i.so, ptr %i.sq, align 2, !tbaa !60
  %i.sr = add nsw i64 %i.da, 2                    ; 4 uses
  %i.ss = getelementptr inbounds [2 x i8], ptr %i.ru, i64 %i.sr
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !60
  %i.su = zext i16 %i.st to i32
  %i.sv = zext i16 %i.so to i32
  %i.sw = sub nsw i32 %i.su, %i.sv
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rk, i64 13144
  store i32 %i.sw, ptr %i.sx, align 4, !tbaa !7
  %i.sy = getelementptr inbounds nuw i8, ptr %i.rn, i64 6
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !60 ; 2 uses
  %i.ta = or disjoint i64 %i.rr, 3                ; 4 uses
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.ta
  store i16 %i.sz, ptr %i.tb, align 2, !tbaa !60
  %i.tc = add nsw i64 %i.da, 3                    ; 4 uses
  %i.td = getelementptr inbounds [2 x i8], ptr %i.ru, i64 %i.tc
  %i.te = load i16, ptr %i.td, align 2, !tbaa !60
  %i.tf = zext i16 %i.te to i32
  %i.tg = zext i16 %i.sz to i32
  %i.th = sub nsw i32 %i.tf, %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %i.rk, i64 13148
  store i32 %i.th, ptr %i.ti, align 4, !tbaa !7
  %i.tj = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  %i.tk = getelementptr [32 x i8], ptr %i.ro, i64 %i.db
  %i.tl = getelementptr i8, ptr %i.tk, i64 32     ; 4 uses
  %i.tm = getelementptr [8 x i8], ptr %i.rp, i64 %i.dc
  %i.tn = getelementptr i8, ptr %i.tm, i64 8
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !59 ; 4 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.rk, i64 13200
  %i.tq = load i16, ptr %i.tj, align 2, !tbaa !60 ; 2 uses
  %i.tr = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %i.rr
  store i16 %i.tq, ptr %i.tr, align 2, !tbaa !60
  %i.ts = getelementptr inbounds [2 x i8], ptr %i.to, i64 %i.da
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !60
  %i.tu = zext i16 %i.tt to i32
  %i.tv = zext i16 %i.tq to i32
  %i.tw = sub nsw i32 %i.tu, %i.tv
  store i32 %i.tw, ptr %i.tp, align 4, !tbaa !7
  %i.tx = getelementptr inbounds nuw i8, ptr %i.rn, i64 34
  %i.ty = load i16, ptr %i.tx, align 2, !tbaa !60 ; 2 uses
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %i.se
  store i16 %i.ty, ptr %i.tz, align 2, !tbaa !60
  %i.ua = getelementptr inbounds [2 x i8], ptr %i.to, i64 %i.sg
  %i.ub = load i16, ptr %i.ua, align 2, !tbaa !60
  %i.uc = zext i16 %i.ub to i32
  %i.ud = zext i16 %i.ty to i32
  %i.ue = sub nsw i32 %i.uc, %i.ud
  %i.uf = getelementptr inbounds nuw i8, ptr %i.rk, i64 13204
  store i32 %i.ue, ptr %i.uf, align 4, !tbaa !7
  %i.ug = getelementptr inbounds nuw i8, ptr %i.rn, i64 36
  %i.uh = load i16, ptr %i.ug, align 2, !tbaa !60 ; 2 uses
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %i.sp
  store i16 %i.uh, ptr %i.ui, align 2, !tbaa !60
  %i.uj = getelementptr inbounds [2 x i8], ptr %i.to, i64 %i.sr
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !60
  %i.ul = zext i16 %i.uk to i32
  %i.um = zext i16 %i.uh to i32
  %i.un = sub nsw i32 %i.ul, %i.um
  %i.uo = getelementptr inbounds nuw i8, ptr %i.rk, i64 13208
  store i32 %i.un, ptr %i.uo, align 4, !tbaa !7
  %i.up = getelementptr inbounds nuw i8, ptr %i.rn, i64 38
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !60 ; 2 uses
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %i.ta
  store i16 %i.uq, ptr %i.ur, align 2, !tbaa !60
  %i.us = getelementptr inbounds [2 x i8], ptr %i.to, i64 %i.tc
  %i.ut = load i16, ptr %i.us, align 2, !tbaa !60
  %i.uu = zext i16 %i.ut to i32
  %i.uv = zext i16 %i.uq to i32
  %i.uw = sub nsw i32 %i.uu, %i.uv
  %i.ux = getelementptr inbounds nuw i8, ptr %i.rk, i64 13212
  store i32 %i.uw, ptr %i.ux, align 4, !tbaa !7
  %i.uy = getelementptr inbounds nuw i8, ptr %i.rn, i64 64
  %i.uz = getelementptr [32 x i8], ptr %i.ro, i64 %i.db
  %i.va = getelementptr i8, ptr %i.uz, i64 64     ; 4 uses
  %i.vb = getelementptr [8 x i8], ptr %i.rp, i64 %i.dc
  %i.vc = getelementptr i8, ptr %i.vb, i64 16
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !59 ; 4 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.rk, i64 13264
  %i.vf = load i16, ptr %i.uy, align 2, !tbaa !60 ; 2 uses
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.rr
  store i16 %i.vf, ptr %i.vg, align 2, !tbaa !60
  %i.vh = getelementptr inbounds [2 x i8], ptr %i.vd, i64 %i.da
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !60
  %i.vj = zext i16 %i.vi to i32
  %i.vk = zext i16 %i.vf to i32
  %i.vl = sub nsw i32 %i.vj, %i.vk
  store i32 %i.vl, ptr %i.ve, align 4, !tbaa !7
  %i.vm = getelementptr inbounds nuw i8, ptr %i.rn, i64 66
  %i.vn = load i16, ptr %i.vm, align 2, !tbaa !60 ; 2 uses
  %i.vo = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.se
  store i16 %i.vn, ptr %i.vo, align 2, !tbaa !60
  %i.vp = getelementptr inbounds [2 x i8], ptr %i.vd, i64 %i.sg
end_hunk_0
