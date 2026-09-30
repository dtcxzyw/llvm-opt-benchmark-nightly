Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_strfmt_num?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lj_strfmt_wfnum:bb.a
bb.av:                                            ; preds = %.thread768
  %i.ju = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.js, i1 true) ; 3 uses
  %.not117.i = icmp samesign ult i32 %i.ju, %i.jt
  br i1 %.not117.i, label %.thread.i, label %bb.aw

.thread.i:                                        ; preds = %bb.av
  %i.jv = lshr exact i32 %i.js, %i.ju
  store i32 %i.jv, ptr %i.c, align 16, !tbaa !17
  %i.jw = sub nuw nsw i32 %i.jt, %i.ju
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jx = lshr i32 %i.js, %i.jt
  store i32 %i.jx, ptr %i.c, align 16, !tbaa !17
  br label %nd_mul2k.exit665

bb.ax:                                            ; preds = %.thread1162, %.thread.i
  %.not.i666803 = phi i1 [ false, %.thread1162 ], [ true, %.thread.i ] ; 2 uses
  %.sroa.0.7758788 = phi i64 [ %.sroa.0.6, %.thread1162 ], [ %.sroa.0.7758789, %.thread.i ] ; 3 uses
  %.2458760785 = phi i32 [ 1, %.thread1162 ], [ 0, %.thread.i ] ; 7 uses
  %.3444763782 = phi i32 [ %.2443, %.thread1162 ], [ %.3444763783, %.thread.i ] ; 3 uses
  %.3766779 = phi i32 [ %.2440, %.thread1162 ], [ %.3766780, %.thread.i ] ; 3 uses
  %.1107.i = phi i32 [ %i.ie, %.thread1162 ], [ %i.jw, %.thread.i ] ; 5 uses
  %i.jy = icmp samesign ult i32 %.1107.i, 19
  %i.jz = and i32 %1, 48
  %i.ka = icmp eq i32 %i.jz, 32
  %or.cond.i667 = or i1 %i.ka, %i.jy
  br i1 %or.cond.i667, label %bb.ay, label %.thread158.i

.thread158.i:                                     ; preds = %bb.ax
  %i.kb = mul nuw nsw i32 %.2458760785, 29
  %i.kc = zext nneg i32 %.2458760785 to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !17
  %i.kf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ke, i1 true)
  %i.kg = xor i32 %i.kf, 31
  %i.kh = sub nsw i32 %i.kb, %.1107.i
  %i.ki = add nsw i32 %i.kh, %i.kg
  %i.kj = sitofp i32 %i.ki to double
  %i.kk = fmul nnan double %i.kj, f0x3FD34413509F79FE
  %i.kl = fptosi double %i.kk to i32
  %i.km = sub nsw i32 %i.kl, %i.i
  %i.kn = sdiv i32 %i.km, 9
  %i.ko = add nsw i32 %i.kn, 62
  %.neg.lhs.trunc.i = trunc nsw i32 %i.i to i16
  %.neg136.i = sdiv i16 %.neg.lhs.trunc.i, -8
  %narrow1015 = add nsw i16 %.neg136.i, 61
  %i.kp = zext nneg i16 %narrow1015 to i32
  %i.kq = add nuw nsw i32 %.2458760785, %i.kp
  br label %.preheader.preheader.i

bb.ay:                                            ; preds = %bb.ax
  %i.kr = icmp samesign ugt i32 %.1107.i, 8
  br i1 %i.kr, label %.preheader.preheader.i, label %._crit_edge.i669

.preheader.preheader.i:                           ; preds = %bb.ay, %.thread158.i
  %.096162.i = phi i32 [ %i.kq, %.thread158.i ], [ -1, %bb.ay ]
  %.0100161.i = phi i32 [ %i.ko, %.thread158.i ], [ -1, %bb.ay ]
  br label %.preheader.i668

.preheader.i668:                                  ; preds = %bb.bi, %.preheader.preheader.i
  %.089145.i = phi i32 [ %.190.i, %bb.bi ], [ %.2458760785, %.preheader.preheader.i ] ; 9 uses
  %.197144.i = phi i32 [ %.298.i, %bb.bi ], [ %.096162.i, %.preheader.preheader.i ] ; 5 uses
  %.0101143.i = phi i32 [ %.2103.i, %bb.bi ], [ 0, %.preheader.preheader.i ] ; 8 uses
  %.2108142.i = phi i32 [ %i.ls, %bb.bi ], [ %.1107.i, %.preheader.preheader.i ]
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.preheader.i668
  %.085.i = phi i32 [ %i.lb, %bb.az ], [ %.089145.i, %.preheader.i668 ] ; 3 uses
  %.084.i = phi i32 [ %i.ky, %bb.az ], [ 0, %.preheader.i668 ]
  %i.ks = zext nneg i32 %.085.i to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ks ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !17 ; 2 uses
  %i.kv = lshr i32 %i.ku, 9
  %i.kw = add nuw nsw i32 %i.kv, %.084.i
  store i32 %i.kw, ptr %i.kt, align 4, !tbaa !17
  %i.kx = and i32 %i.ku, 511                      ; 2 uses
  %i.ky = mul nuw nsw i32 %i.kx, 1953125          ; 2 uses
  %i.kz = icmp eq i32 %.085.i, %.0101143.i
  %i.la = add nuw nsw i32 %.085.i, 63
  %i.lb = and i32 %i.la, 63
  br i1 %i.kz, label %bb.ba, label %bb.az

bb.ba:                                            ; preds = %bb.az
  %.not120.i = icmp eq i32 %.0101143.i, %.0100161.i
  %.not121.i = icmp eq i32 %.0101143.i, %.197144.i
  %or.cond127.i = select i1 %.not120.i, i1 true, i1 %.not121.i
  br i1 %or.cond127.i, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not124.i = icmp eq i32 %i.kx, 0
  br i1 %.not124.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lc = add nuw nsw i32 %.0101143.i, 63
  %i.ld = and i32 %i.lc, 63                       ; 2 uses
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le
  store i32 %i.ky, ptr %i.lf, align 4, !tbaa !17
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.1102.i = phi i32 [ %i.ld, %bb.bc ], [ %.0101143.i, %bb.bb ] ; 2 uses
  %i.lg = zext nneg i32 %.089145.i to i64
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !17
  %.not125.i = icmp eq i32 %i.li, 0
  br i1 %.not125.i, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.lj = add nuw nsw i32 %.089145.i, 63
  %i.lk = and i32 %i.lj, 63
  %i.ll = add i32 %.197144.i, -1
  br label %bb.bi

bb.bf:                                            ; preds = %bb.ba
  %i.lm = zext nneg i32 %.089145.i to i64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !17
  %.not122.i = icmp eq i32 %i.lo, 0
  br i1 %.not122.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %.not123.i = icmp eq i32 %.089145.i, %.0101143.i
  br i1 %.not123.i, label %nd_div2k.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lp = add nuw nsw i32 %.089145.i, 63
  %i.lq = and i32 %i.lp, 63
  %i.lr = add i32 %.197144.i, -1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf, %bb.be, %bb.bd
  %.2103.i = phi i32 [ %.1102.i, %bb.bd ], [ %.1102.i, %bb.be ], [ %.0101143.i, %bb.bf ], [ %.0101143.i, %bb.bh ] ; 2 uses
  %.298.i = phi i32 [ %.197144.i, %bb.bd ], [ %i.ll, %bb.be ], [ %.197144.i, %bb.bf ], [ %i.lr, %bb.bh ]
  %.190.i = phi i32 [ %.089145.i, %bb.bd ], [ %i.lk, %bb.be ], [ %.089145.i, %bb.bf ], [ %i.lq, %bb.bh ] ; 2 uses
  %i.ls = add nsw i32 %.2108142.i, -9             ; 3 uses
  %i.lt = icmp ugt i32 %i.ls, 8
  br i1 %i.lt, label %.preheader.i668, label %._crit_edge.i669, !llvm.loop !25

._crit_edge.i669:                                 ; preds = %bb.bi, %bb.ay
  %.2108.lcssa.i = phi i32 [ %.1107.i, %bb.ay ], [ %i.ls, %bb.bi ] ; 4 uses
  %.0101.lcssa.i = phi i32 [ 0, %bb.ay ], [ %.2103.i, %bb.bi ] ; 4 uses
  %.089.lcssa.i = phi i32 [ %.2458760785, %bb.ay ], [ %.190.i, %bb.bi ]
  %.not118.i = icmp eq i32 %.2108.lcssa.i, 0
  br i1 %.not118.i, label %nd_div2k.exit, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i669
  %notmask.i = shl nsw i32 -1, %.2108.lcssa.i
  %i.lu = xor i32 %notmask.i, -1
  %i.lv = lshr i32 1000000000, %.2108.lcssa.i
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %bb.bj
  %.083.i = phi i32 [ %.089.lcssa.i, %bb.bj ], [ %i.mf, %bb.bk ] ; 3 uses
  %.0.i670 = phi i32 [ 0, %bb.bj ], [ %i.mc, %bb.bk ]
  %i.lw = zext nneg i32 %.083.i to i64
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lw ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !17 ; 2 uses
  %i.lz = lshr i32 %i.ly, %.2108.lcssa.i
  %i.ma = add i32 %i.lz, %.0.i670
  store i32 %i.ma, ptr %i.lx, align 4, !tbaa !17
  %i.mb = and i32 %i.ly, %i.lu
  %i.mc = mul i32 %i.mb, %i.lv                    ; 3 uses
  %i.md = icmp eq i32 %.083.i, %.0101.lcssa.i
  %i.me = add nuw nsw i32 %.083.i, 63
  %i.mf = and i32 %i.me, 63
  br i1 %i.md, label %bb.bl, label %bb.bk

bb.bl:                                            ; preds = %bb.bk
  %.not119.i = icmp eq i32 %i.mc, 0
  br i1 %.not119.i, label %nd_div2k.exit, label %.split815

.split815:                                        ; preds = %bb.bl
  %i.mg = add nuw nsw i32 %.0101.lcssa.i, 63
  %i.mh = and i32 %i.mg, 63                       ; 3 uses
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.mi
  store i32 %i.mc, ptr %i.mj, align 4, !tbaa !17
  br i1 %.not.i666803, label %nd_mul2k.exit665, label %bb.bm

nd_div2k.exit:                                    ; preds = %bb.bg, %._crit_edge.i669, %bb.bl
  %.4.i = phi i32 [ %.0101.lcssa.i, %bb.bl ], [ %.0101.lcssa.i, %._crit_edge.i669 ], [ %.089145.i, %bb.bg ] ; 2 uses
  br i1 %.not.i666803, label %nd_mul2k.exit665, label %bb.bm

bb.bm:                                            ; preds = %.split815, %nd_div2k.exit
  %.4.i824 = phi i32 [ %i.mh, %.split815 ], [ %.4.i, %nd_div2k.exit ]
  %i.mk = zext nneg i32 %.2458760785 to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !17
  %.not559 = icmp eq i32 %i.mm, 0
  %i.mn = sext i1 %.not559 to i32
  %spec.select619 = add nsw i32 %.2458760785, %i.mn
  br label %nd_mul2k.exit665

nd_mul2k.exit665:                                 ; preds = %bb.aw, %.thread768, %.split815, %bb.au, %._crit_edge78.i640, %._crit_edge69.i631, %bb.bm, %nd_div2k.exit
  %.3765 = phi i32 [ %.3766779, %nd_div2k.exit ], [ %.3766779, %bb.bm ], [ %.3767, %bb.au ], [ %.3767, %._crit_edge78.i640 ], [ %.3767, %._crit_edge69.i631 ], [ %.3766779, %.split815 ], [ %.3766780, %bb.aw ], [ %.3766780, %.thread768 ] ; 2 uses
  %.3444762 = phi i32 [ %.3444763782, %nd_div2k.exit ], [ %.3444763782, %bb.bm ], [ %.3444764, %bb.au ], [ %.3444764, %._crit_edge78.i640 ], [ %.3444764, %._crit_edge69.i631 ], [ %.3444763782, %.split815 ], [ %.3444763783, %bb.aw ], [ %.3444763783, %.thread768 ]
  %.sroa.0.7757 = phi i64 [ %.sroa.0.7758788, %nd_div2k.exit ], [ %.sroa.0.7758788, %bb.bm ], [ %.sroa.0.7759, %bb.au ], [ %.sroa.0.7759, %._crit_edge78.i640 ], [ %.sroa.0.7759, %._crit_edge69.i631 ], [ %.sroa.0.7758788, %.split815 ], [ %.sroa.0.7758789, %bb.aw ], [ %.sroa.0.7758789, %.thread768 ]
  %.3459 = phi i32 [ 0, %nd_div2k.exit ], [ %spec.select619, %bb.bm ], [ %i.jg, %bb.au ], [ %.0.lcssa.i, %._crit_edge78.i640 ], [ %.0.lcssa.i, %._crit_edge69.i631 ], [ 0, %.split815 ], [ 0, %bb.aw ], [ 0, %.thread768 ] ; 4 uses
  %.0449 = phi i32 [ %.4.i, %nd_div2k.exit ], [ %.4.i824, %bb.bm ], [ 0, %bb.au ], [ 0, %._crit_edge78.i640 ], [ 0, %._crit_edge69.i631 ], [ %i.mh, %.split815 ], [ 0, %bb.aw ], [ 0, %.thread768 ] ; 14 uses
  br i1 %i.gp, label %bb.bn, label %bb.cv

bb.bn:                                            ; preds = %nd_mul2k.exit665
  %.not560 = icmp eq i32 %.0449, 0                ; 2 uses
  %.phi.trans.insert = zext i32 %.3459 to i64     ; 2 uses
  %.phi.trans.insert1099 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.phi.trans.insert
  %.pre1100 = load i32, ptr %.phi.trans.insert1099, align 4, !tbaa !17 ; 2 uses
  %.not561.a = icmp ne i32 %.pre1100, 0
  %or.cond1190.not = select i1 %.not560, i1 true, i1 %.not561.a
  br i1 %or.cond1190.not, label %.loopexit888, label %.preheader887

.preheader887:                                    ; preds = %bb.bn, %.preheader887
  %.4460 = phi i32 [ %i.mo, %.preheader887 ], [ 64, %bb.bn ]
  %i.mo = add i32 %.4460, -1                      ; 3 uses
  %i.mp = zext i32 %i.mo to i64                   ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.mp
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !17 ; 2 uses
  %.not562 = icmp eq i32 %i.mr, 0
  br i1 %.not562, label %.preheader887, label %.loopexit888, !llvm.loop !26

.loopexit888:                                     ; preds = %.preheader887, %bb.bn
  %.pre-phi = phi i64 [ %.phi.trans.insert, %bb.bn ], [ %i.mp, %.preheader887 ] ; 2 uses
  %i.ms = phi i32 [ %.pre1100, %bb.bn ], [ %i.mr, %.preheader887 ] ; 3 uses
  %.5461 = phi i32 [ %.3459, %bb.bn ], [ %i.mo, %.preheader887 ] ; 7 uses
  %.0434 = phi i32 [ -1, %bb.bn ], [ -577, %.preheader887 ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre-phi
  %i.mu = or i32 %i.ms, 1
  %i.mv = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.mu, i1 true)
  %i.mw = xor i32 %i.mv, 31
  %i.mx = mul nuw nsw i32 %i.mw, 77
  %i.my = lshr i32 %i.mx, 8                       ; 2 uses
  %i.mz = add nuw nsw i32 %i.my, 1                ; 2 uses
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr @ndigits_dec_threshold, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !17
  %i.nd = icmp ugt i32 %i.ms, %i.nc
  %i.ne = zext i1 %i.nd to i32                    ; 2 uses
  %i.nf = add nuw nsw i32 %i.mz, %i.ne            ; 7 uses
  %i.ng = mul nuw i32 %.5461, 9
  %i.nh = add i32 %.0434, %i.ng
  %i.ni = add i32 %i.nh, %i.nf                    ; 4 uses
  %.not563 = icmp eq i32 %.3765, 0
  br i1 %.not563, label %bb.ca, label %bb.bo

bb.bo:                                            ; preds = %.loopexit888
  %i.nj = add nsw i32 %.3444762, 70
  %i.nk = and i64 %.sroa.0.7757, 4503599627370494
  %narrow = icmp eq i64 %i.nk, 4503599627370494
  %i.nl = zext i1 %narrow to i32
  %i.nm = add nsw i32 %i.nj, %i.nl
  %i.nn = shl nsw i32 %i.nm, 1
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds i8, ptr @four_ulp_m_e, i64 %i.no ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.c, i64 132 ; 3 uses
  store i32 %i.ms, ptr %i.nq, align 4, !tbaa !17
  %i.nr = add nuw i32 %.5461, 63
  %i.ns = and i32 %i.nr, 63
  %i.nt = zext nneg i32 %i.ns to i64              ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.nt ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !17
  %i.nw = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  store i32 %i.nv, ptr %i.nw, align 16, !tbaa !17
  %i.nx = add nuw i32 %.5461, 62
  %i.ny = and i32 %i.nx, 63
  %i.nz = zext nneg i32 %i.ny to i64              ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !17
  %i.oc = getelementptr inbounds nuw i8, ptr %i.c, i64 124 ; 2 uses
  store i32 %i.ob, ptr %i.oc, align 4, !tbaa !17
  %i.od = load i8, ptr %i.np, align 2, !tbaa !16
  %i.oe = getelementptr inbounds nuw i8, ptr %i.np, i64 1
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !16  ; 4 uses
  %i.og = sext i8 %i.of to i32
  %i.oh = icmp sgt i8 %i.of, -1
  br i1 %i.oh, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.oi = udiv i8 %i.of, 9
  %.zext = zext nneg i8 %i.oi to i32              ; 2 uses
  %.neg38.i = mul nsw i32 %.zext, -9
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %.nonneg.i = sub i8 8, %i.of
  %i.oj = udiv i8 %.nonneg.i, 9
  %.zext862 = zext nneg i8 %i.oj to i32           ; 2 uses
  %i.ok = sub nuw nsw i32 64, %.zext862
  %.neg.i671 = mul nuw nsw i32 %.zext862, 9
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.neg.sink.i = phi i32 [ %.neg.i671, %bb.bq ], [ %.neg38.i, %bb.bp ]
  %.031.i = phi i32 [ %i.ok, %bb.bq ], [ %.zext, %bb.bp ] ; 2 uses
  %.sink59.i = zext i8 %i.od to i32
  %i.ol = add nsw i32 %.neg.sink.i, %i.og
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [4 x i8], ptr @ndigits_dec_threshold, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !17
  %i.op = add i32 %i.oo, 1
  %i.oq = mul i32 %i.op, %.sink59.i
  %i.or = zext nneg i32 %.031.i to i64
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.or ; 3 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !17
  %i.ou = add i32 %i.oq, %i.ot                    ; 3 uses
  %i.ov = icmp ugt i32 %i.ou, 999999999
  br i1 %i.ov, label %.lr.ph.i673, label %._crit_edge.i672, !prof !19

.lr.ph.i673:                                      ; preds = %bb.br, %bb.bt
  %i.ow = phi i32 [ %i.pj, %bb.bt ], [ %i.ou, %bb.br ]
  %i.ox = phi ptr [ %i.ph, %bb.bt ], [ %i.os, %bb.br ]
  %.13248.i = phi i32 [ %i.pf, %bb.bt ], [ %.031.i, %bb.br ] ; 2 uses
  %i.oy = add i32 %i.ow, -1000000000
  store i32 %i.oy, ptr %i.ox, align 4, !tbaa !17
  %i.oz = icmp eq i32 %.13248.i, %.5461
  br i1 %i.oz, label %bb.bs, label %bb.bt, !prof !15

bb.bs:                                            ; preds = %.lr.ph.i673
  %i.pa = add nuw nsw i32 %.5461, 1
  %i.pb = and i32 %i.pa, 63
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pc
  store i32 1, ptr %i.pd, align 4, !tbaa !17
  br label %nd_add_m10e.exit

._crit_edge.i672:                                 ; preds = %bb.bt, %bb.br
  %.lcssa46.i = phi ptr [ %i.os, %bb.br ], [ %i.ph, %bb.bt ]
  %.lcssa.i = phi i32 [ %i.ou, %bb.br ], [ %i.pj, %bb.bt ]
  store i32 %.lcssa.i, ptr %.lcssa46.i, align 4, !tbaa !17
  br label %nd_add_m10e.exit

bb.bt:                                            ; preds = %.lr.ph.i673
  %i.pe = add nuw nsw i32 %.13248.i, 1
  %i.pf = and i32 %i.pe, 63                       ; 2 uses
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pg ; 3 uses
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !17
  %i.pj = add i32 %i.pi, 1                        ; 3 uses
  %i.pk = icmp ugt i32 %i.pj, 999999999
  br i1 %i.pk, label %.lr.ph.i673, label %._crit_edge.i672, !prof !20

nd_add_m10e.exit:                                 ; preds = %bb.bs, %._crit_edge.i672
  %i.pl = add nsw i32 %.4482, 1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %.not.i674 = icmp ugt i32 %i.nf, %i.pl
  br i1 %.not.i674, label %bb.by, label %bb.bu

bb.bu:                                            ; preds = %nd_add_m10e.exit
  %i.pm = load i32, ptr %i.mt, align 4, !tbaa !17
  %i.pn = load i32, ptr %i.nq, align 4, !tbaa !17
  %.not32.i = icmp eq i32 %i.pm, %i.pn
  br i1 %.not32.i, label %bb.bv, label %nd_similar.exit.thread, !prof !37

bb.bv:                                            ; preds = %bb.bu
  %i.po = sub nuw i32 %i.pl, %i.nf                ; 3 uses
  %i.pp = icmp ugt i32 %i.po, 8
  br i1 %i.pp, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.pq = load i32, ptr %i.nu, align 4, !tbaa !17
  %i.pr = load i32, ptr %i.nw, align 16, !tbaa !17
  %.not33.i = icmp eq i32 %i.pq, %i.pr
  br i1 %.not33.i, label %bb.bx, label %nd_similar.exit.thread, !prof !37

bb.bx:                                            ; preds = %bb.bw
  %i.ps = add i32 %i.po, -9
  br label %bb.bz

bb.by:                                            ; preds = %nd_add_m10e.exit
  %reass.sub.i = add nsw i32 %.4482, 10
  %i.pt = sub i32 %reass.sub.i, %i.nf
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bv
  %.pre-phi1102 = phi i64 [ %.pre-phi, %bb.by ], [ %i.nz, %bb.bx ], [ %i.nt, %bb.bv ]
  %.025.i = phi ptr [ %i.nq, %bb.by ], [ %i.oc, %bb.bx ], [ %i.nw, %bb.bv ]
  %.0.i675 = phi i32 [ %i.pt, %bb.by ], [ %i.ps, %bb.bx ], [ %i.po, %bb.bv ]
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre-phi1102
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !17 ; 3 uses
  %i.pw = udiv i32 %i.pv, 10000                   ; 2 uses
  %.neg.i.i = mul i32 %i.pw, -10000
  %i.px = add i32 %.neg.i.i, %i.pv                ; 2 uses
  %i.py = udiv i32 %i.pv, 100000000               ; 2 uses
  %.neg42.i.i = mul nsw i32 %i.py, -10000
  %i.pz = add nsw i32 %.neg42.i.i, %i.pw          ; 2 uses
  %i.qa = trunc nuw nsw i32 %i.py to i8
  %i.qb = add nuw nsw i8 %i.qa, 48
  %i.qc = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.qb, ptr %i.a, align 1, !tbaa !16
  %i.qd = mul i32 %i.pz, 8389
  %i.qe = lshr i32 %i.qd, 23                      ; 2 uses
  %.neg43.i.i = mul nsw i32 %i.qe, -1000
  %i.qf = add nsw i32 %.neg43.i.i, %i.pz          ; 2 uses
  %i.qg = trunc i32 %i.qe to i8
  %i.qh = add i8 %i.qg, 48
  %i.qi = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.qh, ptr %i.qc, align 1, !tbaa !16
  %i.qj = mul nsw i32 %i.qf, 41
  %i.qk = lshr i32 %i.qj, 12                      ; 2 uses
  %.neg44.i.i = mul nsw i32 %i.qk, -100
  %i.ql = add nsw i32 %.neg44.i.i, %i.qf          ; 2 uses
  %i.qm = trunc i32 %i.qk to i8
  %i.qn = add i8 %i.qm, 48
  %i.qo = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.qn, ptr %i.qi, align 1, !tbaa !16
  %i.qp = mul i32 %i.ql, 103
  %i.qq = lshr i32 %i.qp, 10                      ; 2 uses
  %.neg45.i.i = mul nuw nsw i32 %i.qq, 246
  %i.qr = add nsw i32 %.neg45.i.i, %i.ql
  %i.qs = trunc i32 %i.qq to i8
end_hunk_0
