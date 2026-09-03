Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-b71f3221b3f302d9.diesel_derives.fa624579f925b3f0-cgu.02?download=true
inline.NumInlined: 1420
inline.NumDeleted: 394
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function18expand_nonvariadic:bb.a
  %i.ed = alloca [32 x i8], align 8               ; 10 uses
  %i.ee = alloca [32 x i8], align 8               ; 4 uses
  %i.ef = alloca [32 x i8], align 8               ; 7 uses
  %i.eg = alloca [32 x i8], align 8               ; 4 uses
  %i.eh = alloca [32 x i8], align 8               ; 6 uses
  %i.ei = alloca [32 x i8], align 8               ; 4 uses
  %i.ej = alloca [32 x i8], align 8               ; 7 uses
  %i.ek = alloca [32 x i8], align 8               ; 4 uses
  %i.el = alloca [32 x i8], align 8               ; 7 uses
  %i.em = alloca [16 x i8], align 8               ; 7 uses
  %i.en = alloca [32 x i8], align 8               ; 16 uses
  %i.eo = alloca [32 x i8], align 8               ; 4 uses
  %i.ep = alloca [32 x i8], align 8               ; 9 uses
  %i.eq = alloca [32 x i8], align 8               ; 4 uses
  %i.er = alloca [16 x i8], align 8               ; 7 uses
  %i.es = alloca [32 x i8], align 8               ; 9 uses
  %i.et = alloca [32 x i8], align 8               ; 4 uses
  %i.eu = alloca [32 x i8], align 8               ; 6 uses
  %i.ev = alloca [32 x i8], align 8               ; 4 uses
  %i.ew = alloca [32 x i8], align 8               ; 7 uses
  %i.ex = alloca [32 x i8], align 8               ; 4 uses
  %i.ey = alloca [32 x i8], align 8               ; 40 uses
  %.sroa.342 = alloca [40 x i8], align 8          ; 2 uses
  %.sroa.336 = alloca [24 x i8], align 8          ; 2 uses
  %i.ez = alloca [32 x i8], align 8               ; 6 uses
  %i.fa = alloca [32 x i8], align 8               ; 4 uses
  %i.fb = alloca [48 x i8], align 8               ; 5 uses
  %i.fc = alloca [32 x i8], align 8               ; 8 uses
  %i.fd = alloca [32 x i8], align 8               ; 4 uses
  %i.fe = alloca [32 x i8], align 8               ; 35 uses
  %i.ff = alloca [32 x i8], align 8               ; 4 uses
  %i.fg = alloca [32 x i8], align 8               ; 6 uses
  %i.fh = alloca [32 x i8], align 8               ; 4 uses
  %i.fi = alloca [32 x i8], align 8               ; 7 uses
  %i.fj = alloca [32 x i8], align 8               ; 4 uses
  %i.fk = alloca [32 x i8], align 8               ; 10 uses
  %i.fl = alloca [32 x i8], align 8               ; 4 uses
  %i.fm = alloca [32 x i8], align 8               ; 7 uses
  %i.fn = alloca [32 x i8], align 8               ; 4 uses
  %i.fo = alloca [32 x i8], align 8               ; 12 uses
  %i.fp = alloca [32 x i8], align 8               ; 6 uses
  %i.fq = alloca [16 x i8], align 8               ; 5 uses
  %i.fr = alloca [24 x i8], align 8               ; 4 uses
  %i.fs = alloca [24 x i8], align 8               ; 8 uses
  %i.ft = alloca [16 x i8], align 8               ; 5 uses
  %i.fu = alloca [24 x i8], align 8               ; 4 uses
  %i.fv = alloca [24 x i8], align 8               ; 9 uses
  %i.fw = alloca [24 x i8], align 8               ; 11 uses
  %i.fx = alloca [24 x i8], align 8               ; 9 uses
  %i.fy = alloca [24 x i8], align 8               ; 6 uses
  %i.fz = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.530 = alloca [24 x i8], align 8          ; 6 uses
  %i.ga = alloca [24 x i8], align 8               ; 10 uses
  %i.gb = alloca [48 x i8], align 8               ; 7 uses
  %i.gc = alloca [32 x i8], align 8               ; 10 uses
  %.sroa.5617 = alloca [7 x i8], align 1          ; 2 uses
  %i.gd = alloca [32 x i8], align 8               ; 6 uses
  %i.ge = alloca [32 x i8], align 8               ; 3 uses
  %i.gf = alloca [32 x i8], align 8               ; 8 uses
  %i.gg = alloca [32 x i8], align 8               ; 4 uses
  %i.gh = alloca [32 x i8], align 8               ; 8 uses
  %i.gi = alloca [32 x i8], align 8               ; 4 uses
  %i.gj = alloca [32 x i8], align 8               ; 7 uses
  %i.gk = alloca [32 x i8], align 8               ; 4 uses
  %i.gl = alloca [32 x i8], align 8               ; 36 uses
  %i.gm = alloca [32 x i8], align 8               ; 7 uses
  %i.gn = alloca [16 x i8], align 8               ; 5 uses
  %i.go = alloca [24 x i8], align 8               ; 4 uses
  %i.gp = alloca [24 x i8], align 8               ; 9 uses
  %i.gq = alloca [24 x i8], align 8               ; 11 uses
  %i.gr = alloca [32 x i8], align 8               ; 8 uses
  %i.gs = alloca [32 x i8], align 8               ; 5 uses
  %i.gt = alloca [24 x i8], align 8               ; 9 uses
  %i.gu = alloca [32 x i8], align 8               ; 8 uses
  %i.gv = alloca [32 x i8], align 8               ; 13 uses
  %i.gw = alloca [32 x i8], align 8               ; 4 uses
  %i.gx = alloca [32 x i8], align 8               ; 4 uses
  %i.gy = alloca [32 x i8], align 8               ; 4 uses
  %i.gz = alloca [32 x i8], align 8               ; 4 uses
  %i.ha = alloca [32 x i8], align 8               ; 7 uses
  %i.hb = alloca [32 x i8], align 8               ; 4 uses
  %i.hc = alloca [32 x i8], align 8               ; 10 uses
  %i.hd = alloca [32 x i8], align 8               ; 4 uses
  %i.he = alloca [32 x i8], align 8               ; 12 uses
  %i.hf = alloca [32 x i8], align 8               ; 4 uses
  %i.hg = alloca [88 x i8], align 8               ; 5 uses
  %i.hh = alloca [32 x i8], align 8               ; 7 uses
  %i.hi = alloca [32 x i8], align 8               ; 4 uses
  %i.hj = alloca [32 x i8], align 8               ; 6 uses
  %i.hk = alloca [32 x i8], align 8               ; 4 uses
  %i.hl = alloca [32 x i8], align 8               ; 4 uses
  %i.hm = alloca [32 x i8], align 8               ; 9 uses
  %i.hn = alloca [32 x i8], align 8               ; 4 uses
  %i.ho = alloca [32 x i8], align 8               ; 6 uses
  %i.hp = alloca [32 x i8], align 8               ; 4 uses
  %i.hq = alloca [32 x i8], align 8               ; 10 uses
  %i.hr = alloca [32 x i8], align 8               ; 4 uses
  %i.hs = alloca [32 x i8], align 8               ; 20 uses
  %i.ht = alloca [32 x i8], align 8               ; 4 uses
  %i.hu = alloca [32 x i8], align 8               ; 4 uses
  %i.hv = alloca [32 x i8], align 8               ; 9 uses
  %i.hw = alloca [32 x i8], align 8               ; 4 uses
  %i.hx = alloca [32 x i8], align 8               ; 23 uses
  %i.hy = alloca [32 x i8], align 8               ; 4 uses
  %i.hz = alloca [32 x i8], align 8               ; 4 uses
  %i.ia = alloca [32 x i8], align 8               ; 20 uses
  %i.ib = alloca [32 x i8], align 8               ; 4 uses
  %i.ic = alloca [32 x i8], align 8               ; 6 uses
  %i.id = alloca [32 x i8], align 8               ; 4 uses
  %i.ie = alloca [32 x i8], align 8               ; 7 uses
  %i.if = alloca [32 x i8], align 8               ; 4 uses
  %i.ig = alloca [32 x i8], align 8               ; 28 uses
  %i.ih = alloca [32 x i8], align 8               ; 4 uses
  %i.ii = alloca [32 x i8], align 8               ; 4 uses
  %i.ij = alloca [32 x i8], align 8               ; 4 uses
  %i.ik = alloca [32 x i8], align 8               ; 10 uses
  %i.il = alloca [32 x i8], align 8               ; 4 uses
  %i.im = alloca [32 x i8], align 8               ; 8 uses
  %i.in = alloca [32 x i8], align 8               ; 4 uses
  %i.io = alloca [32 x i8], align 8               ; 7 uses
  %i.ip = alloca [32 x i8], align 8               ; 4 uses
  %i.iq = alloca [32 x i8], align 8               ; 7 uses
  %i.ir = alloca [32 x i8], align 8               ; 4 uses
  %i.is = alloca [16 x i8], align 8               ; 7 uses
  %i.it = alloca [32 x i8], align 8               ; 25 uses
  %i.iu = alloca [32 x i8], align 8               ; 4 uses
  %i.iv = alloca [32 x i8], align 8               ; 16 uses
  %i.iw = alloca [32 x i8], align 8               ; 4 uses
  %i.ix = alloca [32 x i8], align 8               ; 7 uses
  %i.iy = alloca [32 x i8], align 8               ; 4 uses
  %i.iz = alloca [32 x i8], align 8               ; 8 uses
  %i.ja = alloca [32 x i8], align 8               ; 4 uses
  %i.jb = alloca [32 x i8], align 8               ; 14 uses
  %i.jc = alloca [32 x i8], align 8               ; 4 uses
  %i.jd = alloca [32 x i8], align 8               ; 8 uses
  %i.je = alloca [32 x i8], align 8               ; 4 uses
  %i.jf = alloca [32 x i8], align 8               ; 159 uses
  %i.jg = alloca [32 x i8], align 8               ; 14 uses
  %i.jh = alloca [88 x i8], align 8               ; 14 uses
  %i.ji = alloca [32 x i8], align 8               ; 8 uses
  %i.jj = alloca [32 x i8], align 8               ; 13 uses
  %i.jk = alloca [16 x i8], align 8               ; 5 uses
  %i.jl = alloca [24 x i8], align 8               ; 4 uses
  %i.jm = alloca [24 x i8], align 8               ; 13 uses
  %i.jn = alloca [32 x i8], align 8               ; 10 uses
  %i.jo = alloca [32 x i8], align 8               ; 4 uses
  %i.jp = alloca [32 x i8], align 8               ; 7 uses
  %i.jq = alloca [32 x i8], align 8               ; 4 uses
  %i.jr = alloca [32 x i8], align 8               ; 7 uses
  %i.js = alloca [32 x i8], align 8               ; 8 uses
  %i.jt = alloca [32 x i8], align 8               ; 4 uses
  %i.ju = alloca [32 x i8], align 8               ; 9 uses
  %i.jv = alloca [32 x i8], align 8               ; 13 uses
  %i.jw = alloca [32 x i8], align 8               ; 13 uses
  %i.jx = alloca [24 x i8], align 8               ; 4 uses
  %i.jy = alloca [8 x i8], align 8                ; 9 uses
  %i.jz = alloca [32 x i8], align 8               ; 6 uses
  %i.ka = alloca [32 x i8], align 8               ; 4 uses
  %i.kb = alloca [464 x i8], align 8              ; 4 uses
  %i.kc = alloca [88 x i8], align 8               ; 13 uses
  %i.kd = alloca [32 x i8], align 8               ; 12 uses
  %i.ke = alloca [24 x i8], align 8               ; 6 uses
  %i.kf = alloca [8 x i8], align 8                ; 26 uses
  %i.kg = alloca [8 x i8], align 8                ; 8 uses
  %i.kh = alloca [32 x i8], align 8               ; 6 uses
  %i.ki = alloca [32 x i8], align 8               ; 4 uses
  %i.kj = alloca [464 x i8], align 8              ; 4 uses
  %i.kk = alloca [16 x i8], align 8               ; 7 uses
  %i.kl = alloca [24 x i8], align 8               ; 13 uses
  %i.km = alloca [48 x i8], align 8               ; 12 uses
  %i.kn = alloca [32 x i8], align 8               ; 7 uses
  %i.ko = alloca [24 x i8], align 8               ; 13 uses
  %i.kp = alloca [96 x i8], align 8               ; 6 uses
  %i.kq = alloca [96 x i8], align 8               ; 14 uses
  %i.kr = alloca [24 x i8], align 8               ; 13 uses
  %i.ks = alloca [224 x i8], align 8              ; 11 uses
  %i.kt = alloca [32 x i8], align 8               ; 14 uses
  %i.ku = alloca [88 x i8], align 8               ; 17 uses
  %i.kv = alloca [24 x i8], align 8               ; 51 uses
  %i.kw = alloca [4 x i8], align 4                ; 5 uses
  %i.kx = alloca [24 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kx)
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kx, ptr noundef nonnull align 8 dereferenceable(24) %i.ky, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kw)
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.la = load i32, ptr %i.kz, align 8, !noundef !14
  store i32 %i.la, ptr %i.kw, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kv)
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kv, ptr noundef nonnull align 8 dereferenceable(24) %i.lb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ku)
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ku, ptr noundef nonnull align 8 dereferenceable(88) %i.lc, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kt)
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kt, ptr noundef nonnull align 8 dereferenceable(32) %i.ld, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ks)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ks, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false)
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !nonnull !14, !noundef !14 ; 10 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.lh = load i64, ptr %i.lg, align 8, !noundef !14 ; 6 uses
  %.idx1181 = mul i64 %i.lh, 264                  ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %.idx1181 ; 4 uses
  %.not.not.not.i.not1126 = icmp eq i64 %i.lh, 0
  br i1 %.not.not.not.i.not1126, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvB1T_18expand_nonvariadic0EBV_.exit, label %.lr.ph1129

.lr.ph1129:                                       ; preds = %.lr.ph1129, %bb.a
  %i.lj = phi ptr [ %i.ll, %.lr.ph1129 ], [ %i.lf, %bb.a ] ; 2 uses
  %.val.i = load i64, ptr %i.lj, align 8, !range !39, !noalias !2258, !noundef !14
  %i.lk = icmp ne i64 %.val.i, 42                 ; 2 uses
  %.not = xor i1 %i.lk, true
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 264 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.ll, %i.li
  %or.cond1261 = select i1 %.not, i1 true, i1 %.not.not.not.i.not
  br i1 %or.cond1261, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvB1T_18expand_nonvariadic0EBV_.exit, label %.lr.ph1129

.body461:                                         ; preds = %bb.aun, %bb.aot, %bb.b, %bb.i
  %.sroa.056.0 = phi i1 [ %.sroa.056.2, %bb.i ], [ false, %bb.aot ], [ %.sroa.056.1, %bb.b ], [ false, %bb.aun ]
  %.pn212.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn212.pn.pn.pn.pn.pn.pn, %bb.i ], [ %i.ahb, %bb.aot ], [ %i.lm, %bb.b ], [ %i.amb, %bb.aun ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn2ty4TypeECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(224) %i.ks) #17
          to label %bb.aow unwind label %bb.op

bb.b:                                             ; preds = %bb.auo, %bb.aou, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvB1T_18expand_nonvariadics_0EBV_.exit
  %.sroa.056.1 = phi i1 [ false, %bb.auo ], [ false, %bb.aou ], [ true, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvB1T_18expand_nonvariadics_0EBV_.exit ]
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %.body461

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvB1T_18expand_nonvariadic0EBV_.exit: ; preds = %.lr.ph1129, %bb.a
  %.not.not.not.i.not.lcssa = phi i1 [ true, %bb.a ], [ %i.lk, %.lr.ph1129 ]
  %.idx.i = mul nuw nsw i64 %i.lh, 264
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 %.idx.i
  %i.lo = icmp eq i64 %i.lh, 0                    ; 2 uses
  br i1 %i.lo, label %_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function34function_cannot_be_called_directly.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvB1T_18expand_nonvariadic0EBV_.exit
  %5 = add i64 %.idx1181, -264                    ; 2 uses
  %6 = udiv i64 %5, 264                           ; 2 uses
  %7 = add nuw nsw i64 %6, 1                      ; 2 uses
  %8 = icmp ult i64 %5, 264
  br i1 %8, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %7, 144115188075855870
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i.preheader.new
  %.sroa.01.09.i = phi ptr [ %i.lf, %.lr.ph.i.preheader.new ], [ %29, %bb.f ] ; 4 uses
  %.sroa.05.08.i = phi i8 [ 0, %.lr.ph.i.preheader.new ], [ %.sroa.05.1.i.1, %bb.f ]
  %.sroa.03.07.i = phi i8 [ 0, %.lr.ph.i.preheader.new ], [ %.sroa.03.1.i.1, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.01.09.i, i64 264 ; 2 uses
  %i.lq = trunc nuw i8 %.sroa.03.07.i to i1
  br i1 %i.lq, label %24, label %21

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.f
  %9 = and i64 %6, 1
  %lcmp.mod.not.not = icmp eq i64 %9, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %._crit_edge.loopexit.i

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.01.09.i.epil.init = phi ptr [ %i.lf, %.lr.ph.i.preheader ], [ %29, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.sroa.05.08.i.epil.init = phi i8 [ 0, %.lr.ph.i.preheader ], [ %.sroa.05.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.sroa.03.07.i.epil.init = phi i8 [ 0, %.lr.ph.i.preheader ], [ %.sroa.03.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod1226 = trunc i64 %7 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1226)
  %10 = trunc nuw i8 %.sroa.03.07.i.epil.init to i1
  br i1 %10, label %15, label %11

11:                                               ; preds = %.lr.ph.i.epil.preheader
  %12 = load i64, ptr %.sroa.01.09.i.epil.init, align 8, !range !39, !alias.scope !2259, !noundef !14
  %13 = icmp eq i64 %12, 42
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %11, %.lr.ph.i.epil.preheader
  %.sroa.03.1.i.epil = phi i8 [ %14, %11 ], [ 1, %.lr.ph.i.epil.preheader ] ; 2 uses
  %16 = trunc nuw i8 %.sroa.05.08.i.epil.init to i1
  br i1 %16, label %._crit_edge.loopexit.i, label %17

17:                                               ; preds = %15
  %18 = load i64, ptr %.sroa.01.09.i.epil.init, align 8, !range !39, !alias.scope !2259, !noundef !14
  %19 = icmp eq i64 %18, 43
  %20 = zext i1 %19 to i8
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %15, %17, %._crit_edge.loopexit.i.unr-lcssa
  %.sroa.05.1.i.lcssa = phi i8 [ %.sroa.05.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %20, %17 ], [ 1, %15 ]
  %.sroa.03.1.i.lcssa = phi i8 [ %.sroa.03.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.sroa.03.1.i.epil, %17 ], [ %.sroa.03.1.i.epil, %15 ]
  %i.lr = trunc nuw i8 %.sroa.05.1.i.lcssa to i1
  %i.ls = trunc nuw i8 %.sroa.03.1.i.lcssa to i1
  %i.lt = xor i1 %i.ls, true
  %i.lu = select i1 %i.lr, i1 %i.lt, i1 false
  br label %_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function34function_cannot_be_called_directly.exit

21:                                               ; preds = %.lr.ph.i
  %22 = load i64, ptr %.sroa.01.09.i, align 8, !range !39, !alias.scope !2259, !noundef !14
  %23 = icmp eq i64 %22, 42
  br label %24

24:                                               ; preds = %21, %.lr.ph.i
  %.sroa.03.1.i = phi i1 [ %23, %21 ], [ true, %.lr.ph.i ]
  %25 = trunc nuw i8 %.sroa.05.08.i to i1
  br i1 %25, label %.lr.ph.i.1, label %26

26:                                               ; preds = %24
  %27 = load i64, ptr %.sroa.01.09.i, align 8, !range !39, !alias.scope !2259, !noundef !14
  %28 = icmp eq i64 %27, 43
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %26, %24
  %.sroa.05.1.i = phi i1 [ %28, %26 ], [ true, %24 ]
  %29 = getelementptr inbounds nuw i8, ptr %.sroa.01.09.i, i64 528 ; 2 uses
  br i1 %.sroa.03.1.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.1
  %i.lv = load i64, ptr %i.lp, align 8, !range !39, !alias.scope !2259, !noundef !14
  %i.lw = icmp eq i64 %i.lv, 42
  %i.lx = zext i1 %i.lw to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.1
  %.sroa.03.1.i.1 = phi i8 [ %i.lx, %bb.c ], [ 1, %.lr.ph.i.1 ] ; 3 uses
  br i1 %.sroa.05.1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ly = load i64, ptr %i.lp, align 8, !range !39, !alias.scope !2259, !noundef !14
  %i.lz = icmp eq i64 %i.ly, 43
  %i.ma = zext i1 %i.lz to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.05.1.i.1 = phi i8 [ %i.ma, %bb.e ], [ 1, %bb.d ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i

_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function34function_cannot_be_called_directly.exit: ; preds = %._crit_edge.loopexit.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvB1T_18expand_nonvariadic0EBV_.exit
  %.sroa.05.0.lcssa.i = phi i1 [ false, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvB1T_18expand_nonvariadic0EBV_.exit ], [ %i.lu, %._crit_edge.loopexit.i ]
  %.not.not.not.i2591132 = icmp eq i64 %i.lh, 0
  br i1 %.not.not.not.i2591132, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvB1T_18expand_nonvariadics_0EBV_.exit, label %.lr.ph1134

bb.g:                                             ; preds = %.lr.ph1134
  %i.mb = getelementptr inbounds nuw i8, ptr %i.mc, i64 264 ; 2 uses
  %.not.not.not.i259 = icmp eq ptr %i.mb, %i.li
  br i1 %.not.not.not.i259, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvB1T_18expand_nonvariadics_0EBV_.exit, label %.lr.ph1134

.lr.ph1134:                                       ; preds = %_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function34function_cannot_be_called_directly.exit, %bb.g
  %i.mc = phi ptr [ %i.mb, %bb.g ], [ %i.lf, %_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function34function_cannot_be_called_directly.exit ] ; 2 uses
  %.val.i260 = load i64, ptr %i.mc, align 8, !range !39, !noalias !2260, !noundef !14
  %i.md = icmp eq i64 %.val.i260, 47
  br i1 %i.md, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvB1T_18expand_nonvariadics_0EBV_.exit, label %bb.g

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvB1T_18expand_nonvariadics_0EBV_.exit: ; preds = %bb.g, %.lr.ph1134, %_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function34function_cannot_be_called_directly.exit
  %.not.not.not.i259.lcssa = phi i1 [ %4, %_RNvNtCsluMP4ekZjHw_14diesel_derives12sql_function34function_cannot_be_called_directly.exit ], [ %4, %bb.g ], [ false, %.lr.ph1134 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kr)
  invoke void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtB16_12sql_function20SqlFunctionAttributeEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtB3l_6filter6FilterINtNtNtB3p_5slice4iter4IterB11_ENCNvB24_18expand_nonvariadics0_0EEE9from_iterB16_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.kr, ptr noundef nonnull %i.lf, ptr noundef nonnull %i.li)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvB1T_18expand_nonvariadics_0EBV_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kp)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2261)
  br i1 %i.lo, label %.loopexit839, label %.lr.ph.i262

.lr.ph.i262:                                      ; preds = %bb.h, %.backedge.i
  %i.me = phi ptr [ %i.mf, %.backedge.i ], [ %i.lf, %bb.h ] ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2263)
  %i.mg = load i64, ptr %i.me, align 8, !range !39, !alias.scope !2263, !noalias !2264, !noundef !14
  %i.mh = icmp eq i64 %i.mg, 45
  br i1 %i.mh, label %_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function18expand_nonvariadics1_0B5_.exit.i, label %.critedge.i

_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function18expand_nonvariadics1_0B5_.exit.i: ; preds = %.lr.ph.i262
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  invoke fastcc void @_RNvXsa_NtCsluMP4ekZjHw_14diesel_derives12sql_functionNtB5_18BackendRestrictionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(96) %i.kp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.mi)
          to label %.noexc unwind label %.loopexit834

.noexc:                                           ; preds = %_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function18expand_nonvariadics1_0B5_.exit.i
  %.pr.i = load i64, ptr %i.kp, align 8
  %i.mj = icmp eq i64 %.pr.i, -1
  br i1 %i.mj, label %.backedge.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtB1T_18BackendRestrictionNCNvB1T_18expand_nonvariadics1_0EBV_.exit

.backedge.i:                                      ; preds = %.critedge.i, %.noexc
  %i.mk = icmp eq ptr %i.mf, %i.ln
  br i1 %i.mk, label %.loopexit839, label %.lr.ph.i262

.critedge.i:                                      ; preds = %.lr.ph.i262
  store i64 -1, ptr %i.kp, align 8, !alias.scope !2265, !noalias !2266
  br label %.backedge.i

bb.i:                                             ; preds = %.loopexit834, %.loopexit.split-lp835, %.body458
  %.sroa.056.2 = phi i1 [ false, %.body458 ], [ true, %.loopexit834 ], [ false, %.loopexit.split-lp835 ]
  %.pn212.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn212.pn.pn.pn.pn.pn, %.body458 ], [ %lpad.loopexit836, %.loopexit834 ], [ %lpad.loopexit.split-lp837, %.loopexit.split-lp835 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtB1d_12sql_function20SqlFunctionAttributeEEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.kr) #17
          to label %.body461 unwind label %bb.op

.loopexit834:                                     ; preds = %_RNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function18expand_nonvariadics1_0B5_.exit.i
  %lpad.loopexit836 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp835:                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4attr9AttributeEECsluMP4ekZjHw_14diesel_derives.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4attr9AttributeEECsluMP4ekZjHw_14diesel_derives.exit554
  %lpad.loopexit.split-lp837 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtB1T_18BackendRestrictionNCNvB1T_18expand_nonvariadics1_0EBV_.exit: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.kq, ptr noundef nonnull align 8 dereferenceable(96) %i.kp, i64 96, i1 false)
  br label %bb.j

.loopexit839:                                     ; preds = %.backedge.i, %bb.h
  store i64 -9223372036854775808, ptr %i.kq, align 8
  br label %bb.j

bb.j:                                             ; preds = %.loopexit839, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtBV_12sql_function20SqlFunctionAttributeEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtB1T_18BackendRestrictionNCNvB1T_18expand_nonvariadics1_0EBV_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ko)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kn)
  %i.ml = load i64, ptr %i.kx, align 8, !range !28, !noundef !14
  %i.mm = icmp ult i64 %i.lh, 34937015291116576
  tail call void @llvm.assume(i1 %i.mm)
  store ptr %i.lf, ptr %i.kn, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  store ptr %i.lf, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store i64 %i.ml, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  store ptr %i.li, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterINtNtCsluMP4ekZjHw_14diesel_derives5attrs20AttributeSpanWrapperNtNtB2E_12sql_function20SqlFunctionAttributeEENCNvB3C_18expand_nonvariadics2_0ENtNtCshMFl0SviwmK_3syn4attr9AttributeEB2E_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ko, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.kn)
          to label %bb.l unwind label %bb.k

.body458:                                         ; preds = %bb.auj, %bb.aop, %bb.k, %bb.m
  %.pn212.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn212.pn.pn.pn.pn, %bb.m ], [ %i.agz, %bb.aop ], [ %i.mn, %bb.k ], [ %i.alz, %bb.auj ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsluMP4ekZjHw_14diesel_derives12sql_function18BackendRestrictionEBF_(ptr noalias noundef align 8 dereferenceable(96) %i.kq) #17
          to label %bb.i unwind label %bb.op

bb.k:                                             ; preds = %bb.auk, %bb.aoq, %bb.j
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body458

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.km)
  %i.mo = invoke { ptr, ptr } @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB4_5token5CommaE4iterBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kt)
          to label %bb.o unwind label %bb.n       ; 2 uses

bb.m:                                             ; preds = %.body454.thread718, %bb.n
  %.pn212.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn212.pn.pn.pn, %.body454.thread718 ], [ %i.mp, %bb.n ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCshMFl0SviwmK_3syn4attr9AttributeEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24) %i.ko) #17
          to label %.body458 unwind label %bb.op

bb.n:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives.exit549, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgENCNvB1P_18expand_nonvariadics4_0EEB1R_.exit, %bb.o, %bb.l
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  %i.mq = extractvalue { ptr, ptr } %i.mo, 0
  %i.mr = extractvalue { ptr, ptr } %i.mo, 1
  invoke void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgENCNvB1x_18expand_nonvariadics3_0ENtNtNtBa_6traits8iterator8Iterator5unzipRNtCsf5uYjtxkodL_11proc_macro25IdentRNtNtBW_2ty4TypeINtNtCs40k4W9msRzi_5alloc3vec3VecB3G_EIB4x_B4g_EEB1z_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.km, ptr noundef nonnull %i.mq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.mr)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.ms = invoke { ptr, ptr } @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB4_5token5CommaE4iterBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kt)
          to label %bb.r unwind label %bb.q       ; 2 uses

.body454.thread718:                               ; preds = %.body454.thread, %bb.auf, %.body454, %bb.q
  %.pn212.pn.pn.pn = phi { ptr, i32 } [ %.pn212.pn.pn717, %.body454.thread ], [ %.pn212.pn.pn, %.body454 ], [ %i.mt, %bb.q ], [ %i.alx, %bb.auf ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc3vec3VecRNtCsf5uYjtxkodL_11proc_macro25IdentEIBD_RNtNtCshMFl0SviwmK_3syn2ty4TypeEEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(48) %i.km) #17
          to label %bb.m unwind label %bb.op

bb.q:                                             ; preds = %bb.p
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.body454.thread718

bb.r:                                             ; preds = %bb.p
  %i.mu = extractvalue { ptr, ptr } %i.ms, 0      ; 5 uses
  %i.mv = extractvalue { ptr, ptr } %i.ms, 1      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kl)
  %i.mw = invoke { ptr, ptr } @_RNvMs_NtCshMFl0SviwmK_3syn8genericsNtB4_8Generics11type_params(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ku)
          to label %bb.t unwind label %bb.s       ; 2 uses

.body454:                                         ; preds = %bb.s, %.body
  %.sroa.055.0 = phi i8 [ %.sroa.055.2, %.body ], [ %.sroa.055.1, %bb.s ]
  %.pn212.pn.pn = phi { ptr, i32 } [ %.pn212.pn, %.body ], [ %i.my, %bb.s ] ; 2 uses
  %i.mx = trunc nuw i8 %.sroa.055.0 to i1
  br i1 %i.mx, label %.body454.thread, label %.body454.thread718

bb.s:                                             ; preds = %bb.aug, %bb.aol, %bb.t, %bb.r
  %.sroa.055.1 = phi i8 [ 0, %bb.aug ], [ 1, %bb.aol ], [ 1, %bb.t ], [ 1, %bb.r ]
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %.body454

bb.t:                                             ; preds = %bb.r
  %i.mz = extractvalue { ptr, ptr } %i.mw, 0
  %i.na = extractvalue { ptr, ptr } %i.mw, 1
  invoke void @_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCsf5uYjtxkodL_11proc_macro25IdentEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtCshMFl0SviwmK_3syn8generics10TypeParamsNCNvNtCsluMP4ekZjHw_14diesel_derives12sql_function18expand_nonvariadics5_0EE9from_iterB3G_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.kl, ptr noundef nonnull %i.mz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.na)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.nb = invoke { ptr, ptr } @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgNtNtB4_5token5CommaE4iterBU_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kt)
          to label %bb.w unwind label %bb.v       ; 2 uses

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsluMP4ekZjHw_14diesel_derives.exit589, %.body448, %bb.ai, %bb.af, %bb.v
  %.sroa.055.2 = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsluMP4ekZjHw_14diesel_derives.exit589 ], [ 1, %bb.ai ], [ 1, %bb.af ], [ %.sroa.055.3, %bb.v ], [ %.sroa.055.4, %.body448 ]
  %.pn212.pn = phi { ptr, i32 } [ %.pn212, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsluMP4ekZjHw_14diesel_derives.exit589 ], [ %i.oc, %bb.ai ], [ %i.oa, %bb.af ], [ %i.nc, %bb.v ], [ %.pn201.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body448 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCsf5uYjtxkodL_11proc_macro25IdentEECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(24) %i.kl) #17
          to label %.body454 unwind label %bb.op

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics8GenericsECsluMP4ekZjHw_14diesel_derives.exit541, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics8GenericsECsluMP4ekZjHw_14diesel_derives.exit, %bb.ah, %bb.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgEEB1j_.exit, %bb.u
  %.sroa.055.3 = phi i8 [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics8GenericsECsluMP4ekZjHw_14diesel_derives.exit541 ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn8generics8GenericsECsluMP4ekZjHw_14diesel_derives.exit ], [ 1, %bb.ae ], [ 1, %bb.ah ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgEEB1j_.exit ], [ 1, %bb.u ]
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.u
  %i.nd = extractvalue { ptr, ptr } %i.nb, 0
  %i.ne = extractvalue { ptr, ptr } %i.nb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kk)
  store ptr %i.nd, ptr %i.kk, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 3 uses
  store ptr %i.ne, ptr %i.nf, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.avr, %bb.w
  %i.ng = invoke noundef align 8 ptr @_RNvXst_NtCshMFl0SviwmK_3syn10punctuatedINtB5_4IterNtNtCsluMP4ekZjHw_14diesel_derives12sql_function11StrictFnArgENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.kk)
          to label %bb.z unwind label %bb.y       ; 2 uses

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsluMP4ekZjHw_14diesel_derives.exit589: ; preds = %bb.avo, %bb.y
  %.pn212 = phi { ptr, i32 } [ %i.nh, %bb.y ], [ %i.amz, %bb.avo ]
  %.val248 = load ptr, ptr %i.kk, align 8
end_hunk_0
