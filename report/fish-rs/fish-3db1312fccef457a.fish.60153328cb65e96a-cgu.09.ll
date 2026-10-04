Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.09?download=true
inline.NumInlined: 2082
inline.NumDeleted: 649
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RNvXs_NtCs8frGy5WneL6_4fish5timerNtB4_18PrintElapsedOnDropNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop:bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #38, !noalias !4205
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ef = extractvalue { i64, i1 } %i.ed, 0       ; 2 uses
  %i.eg = udiv i64 %i.ef, 1000000                 ; 2 uses
  %i.eh = urem i64 %i.ef, 1000000                 ; 2 uses
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = mul nuw nsw i32 %i.ei, 1000             ; 2 uses
  %i.ek = load i64, ptr %i.db, align 8, !alias.scope !4202, !noalias !4206, !noundef !4
  %i.el = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ek, i64 1000000) ; 2 uses
  %i.em = extractvalue { i64, i1 } %i.el, 1
  br i1 %i.em, label %bb.aq, label %bb.ap

bb.ao:                                            ; preds = %bb.al
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #38, !noalias !4205
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.en = extractvalue { i64, i1 } %i.el, 0
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !4202, !noalias !4206, !noundef !4
  %i.eq = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.en, i64 %i.ep) ; 2 uses
  %i.er = extractvalue { i64, i1 } %i.eq, 1
  br i1 %i.er, label %bb.av, label %bb.ar

bb.aq:                                            ; preds = %bb.an
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #38, !noalias !4205
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.es = extractvalue { i64, i1 } %i.eq, 0       ; 2 uses
  %i.et = udiv i64 %i.es, 1000000                 ; 2 uses
  %i.eu = urem i64 %i.es, 1000000                 ; 2 uses
  %i.ev = trunc nuw nsw i64 %i.eu to i32
  %.neg388.i = mul nsw i32 %i.ev, -1000
  %i.ew = icmp samesign ult i64 %i.eg, %i.et
  br i1 %i.ew, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ex = sub nuw nsw i64 %i.eg, %i.et            ; 3 uses
  %.not.i316.i = icmp samesign ult i64 %i.eh, %i.eu
  br i1 %.not.i316.i, label %bb.at, label %_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit.i317.i

bb.at:                                            ; preds = %bb.as
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ez = add nsw i64 %i.ex, -1
  %i.fa = add nuw nsw i32 %i.ej, 1000000000
  br label %_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit.i317.i

_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit.i317.i: ; preds = %bb.au, %bb.as
  %.sroa.05.0.i318.i = phi i64 [ %i.ez, %bb.au ], [ %i.ex, %bb.as ]
  %.pn.i319.i = phi i32 [ %i.fa, %bb.au ], [ %i.ej, %bb.as ]
  %.sroa.02.0.i320.i = add nsw i32 %.pn.i319.i, %.neg388.i ; 3 uses
  %i.fb = icmp samesign ugt i32 %.sroa.02.0.i320.i, 999999999 ; 2 uses
  %i.fc = add nsw i32 %.sroa.02.0.i320.i, -1000000000
  %i.fd = zext i1 %i.fb to i64
  %.sroa.0.0.i.i322.i = add nuw nsw i64 %.sroa.05.0.i318.i, %i.fd ; 2 uses
  %spec.select385.i = select i1 %i.fb, i32 %i.fc, i32 %.sroa.02.0.i320.i ; 5 uses
  %i.fe = icmp ne i64 %.sroa.0.0.i.i.i, 0
  %i.ff = icmp ne i32 %spec.select382.i, 0
  %i.fg = select i1 %i.fe, i1 true, i1 %i.ff
  %.2.i.i = select i1 %i.fg, i64 %.sroa.0.0.i.i.i, i64 0 ; 8 uses
  %i.fh = icmp ne i64 %.sroa.0.0.i.i302.i, 0
  %i.fi = icmp ne i32 %spec.select383.i, 0
  %i.fj = select i1 %i.fh, i1 true, i1 %i.fi
  %.2.i327.i = select i1 %i.fj, i64 %.sroa.0.0.i.i302.i, i64 0 ; 5 uses
  %i.fk = icmp ne i64 %.sroa.0.0.i.i312.i, 0
  %i.fl = icmp ne i32 %spec.select384.i, 0
  %i.fm = select i1 %i.fk, i1 true, i1 %i.fl
  %.2.i329.i = select i1 %i.fm, i64 %.sroa.0.0.i.i312.i, i64 0 ; 8 uses
  %i.fn = icmp ne i64 %.sroa.0.0.i.i322.i, 0
  %i.fo = icmp ne i32 %spec.select385.i, 0
  %i.fp = select i1 %i.fn, i1 true, i1 %i.fo
  %.2.i331.i = select i1 %i.fp, i64 %.sroa.0.0.i.i322.i, i64 0 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.v, i64 288
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !4203, !noalias !4204, !noundef !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.v, i64 296
  %i.ft = load i32, ptr %i.fs, align 8, !range !4207, !alias.scope !4203, !noalias !4204, !noundef !4
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !4202, !noalias !4206, !noundef !4
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.fx = load i32, ptr %i.fw, align 8, !range !4207, !alias.scope !4202, !noalias !4206, !noundef !4
  %i.fy = tail call { i64, i32 } @_RNvXs3_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(i64 noundef %i.fr, i32 noundef %i.ft, i64 noundef %i.fv, i32 noundef %i.fx), !noalias !4205 ; 2 uses
  %i.fz = extractvalue { i64, i32 } %i.fy, 0
  %i.ga = extractvalue { i64, i32 } %i.fy, 1      ; 2 uses
  %i.gb = mul i64 %i.fz, 1000000
  %i.gc = icmp ult i32 %i.ga, 1000000000
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = udiv i32 %i.ga, 1000
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = add i64 %i.gb, %i.ge                    ; 4 uses
  %i.gg = add nuw nsw i32 %spec.select384.i, %spec.select382.i ; 3 uses
  %i.gh = icmp samesign ugt i32 %i.gg, 999999999  ; 2 uses
  %i.gi = add nsw i32 %i.gg, -1000000000
  %.sroa.4.0.i333.ph.i = select i1 %i.gh, i32 %i.gi, i32 %i.gg ; 2 uses
  %i.gj = zext i1 %i.gh to i64
  %i.gk = add nuw nsw i64 %.2.i.i, %i.gj
  %.sroa.0.0.i334.ph.i = add nuw nsw i64 %i.gk, %.2.i329.i
  %i.gl = mul i64 %.sroa.0.0.i334.ph.i, 1000000
  %i.gm = icmp samesign ult i32 %.sroa.4.0.i333.ph.i, 1000000000
  tail call void @llvm.assume(i1 %i.gm)
  %i.gn = udiv i32 %.sroa.4.0.i333.ph.i, 1000
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = add i64 %i.gl, %i.go                    ; 2 uses
  %i.gq = add nuw nsw i32 %spec.select385.i, %spec.select383.i ; 3 uses
  %i.gr = icmp samesign ugt i32 %i.gq, 999999999  ; 2 uses
  %i.gs = add nsw i32 %i.gq, -1000000000
  %.sroa.4.0.i336.ph.i = select i1 %i.gr, i32 %i.gs, i32 %i.gq ; 2 uses
  %i.gt = zext i1 %i.gr to i64
  %i.gu = add nuw nsw i64 %.2.i327.i, %i.gt
  %.sroa.0.0.i337.ph.i = add nuw nsw i64 %i.gu, %.2.i331.i
  %i.gv = mul i64 %.sroa.0.0.i337.ph.i, 1000000
  %i.gw = icmp samesign ult i32 %.sroa.4.0.i336.ph.i, 1000000000
  tail call void @llvm.assume(i1 %i.gw)
  %i.gx = udiv i32 %.sroa.4.0.i336.ph.i, 1000
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = add i64 %i.gv, %i.gy                    ; 5 uses
  %i.ha = icmp sgt i64 %i.gf, 900000000
  br i1 %i.ha, label %bb.az, label %bb.ax

bb.av:                                            ; preds = %bb.ap
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #38, !noalias !4205
  unreachable

bb.aw:                                            ; preds = %bb.at, %bb.ar
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #38, !noalias !4205
  unreachable

bb.ax:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit.i317.i
  %i.hb = icmp sgt i64 %i.gf, 999994
  br i1 %i.hb, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hc = icmp sgt i64 %i.gf, 999
  %..i = select i1 %i.hc, i64 2, i64 3
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit.i317.i
  %.sroa.031.0.i = phi i64 [ 1, %bb.ax ], [ %..i, %bb.ay ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit.i317.i ] ; 4 uses
  %..i339.i = tail call noundef i64 @llvm.smax.i64(i64 %i.gz, i64 %i.gp) ; 3 uses
  %i.hd = icmp sgt i64 %..i339.i, 900000000
  br i1 %i.hd, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.he = icmp sgt i64 %..i339.i, 999994
  br i1 %i.he, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hf = icmp sgt i64 %..i339.i, 999
  %.287.i = select i1 %i.hf, i64 2, i64 3
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.sroa.035.0.i = phi i64 [ 1, %bb.ba ], [ %.287.i, %bb.bb ], [ 0, %bb.az ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4205
  %i.hg = sitofp i64 %i.gf to double              ; 4 uses
  switch i64 %.sroa.031.0.i, label %default.unreachable [
    i64 0, label %bb.bd
    i64 1, label %bb.be
    i64 2, label %bb.bf
    i64 3, label %bb.bg
  ]

default.unreachable:                              ; preds = %bb.cq, %bb.cm, %bb.bx, %bb.bs, %bb.bg, %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %i.hh = fdiv double %i.hg, 1.000000e+06
  %i.hi = fdiv double %i.hh, 6.000000e+01
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.hj = fdiv double %i.hg, 1.000000e+06
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.hk = fdiv double %i.hg, 1.000000e+03
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc
  %.sink.i = phi double [ %i.hi, %bb.bd ], [ %i.hk, %bb.bf ], [ %i.hj, %bb.be ], [ %i.hg, %bb.bc ]
  store double %.sink.i, ptr %i.r, align 8, !noalias !4205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4205
  %i.hl = sitofp i64 %i.gp to double              ; 4 uses
  switch i64 %.sroa.035.0.i, label %default.unreachable [
    i64 0, label %bb.bh
    i64 1, label %bb.bi
    i64 2, label %bb.bj
    i64 3, label %bb.bk
  ]

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4205
  %i.hm = sitofp i64 %i.gz to double
  %i.hn = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.hm, i64 1
  %i.hp = fdiv <2 x double> %i.ho, splat (double 1.000000e+06)
  %1 = fdiv <2 x double> %i.hp, splat (double 6.000000e+01) ; 2 uses
  %2 = extractelement <2 x double> %1, i64 0
  store double %2, ptr %i.q, align 8, !noalias !4205
  %i.hq = extractelement <2 x double> %1, i64 1
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4205
  %i.hr = sitofp i64 %i.gz to double
  %i.hs = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.ht = insertelement <2 x double> %i.hs, double %i.hr, i64 1
  %i.hu = fdiv <2 x double> %i.ht, splat (double 1.000000e+06) ; 2 uses
  %i.hv = extractelement <2 x double> %i.hu, i64 0
  store double %i.hv, ptr %i.q, align 8, !noalias !4205
  %i.hw = extractelement <2 x double> %i.hu, i64 1
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4205
  %i.hx = sitofp i64 %i.gz to double
  %i.hy = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.hz = insertelement <2 x double> %i.hy, double %i.hx, i64 1
  %i.ia = fdiv <2 x double> %i.hz, splat (double 1.000000e+03) ; 2 uses
  %i.ib = extractelement <2 x double> %i.ia, i64 0
  store double %i.ib, ptr %i.q, align 8, !noalias !4205
  %i.ic = extractelement <2 x double> %i.ia, i64 1
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bg
  store double %i.hl, ptr %i.q, align 8, !noalias !4205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4205
  %i.id = sitofp i64 %i.gz to double
  br label %bb.bm

bb.bl:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8frGy5WneL6_4fish.exit.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8frGy5WneL6_4fish.exit293.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8frGy5WneL6_4fish.exit295.i, %.invoke.i, %bb.cc, %switch.lookup
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #35
          to label %common.resume unwind label %bb.cg, !noalias !4205

bb.bm:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %.sink407.i = phi double [ %i.hq, %bb.bh ], [ %i.hw, %bb.bi ], [ %i.ic, %bb.bj ], [ %i.id, %bb.bk ]
  store double %.sink407.i, ptr %i.p, align 8, !noalias !4205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4205
  store i64 0, ptr %i.o, align 8, !noalias !4205
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4205
  %.sroa.587.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.587.0..sroa_idx.i, align 8, !noalias !4205
  %i.if = icmp eq i64 %.2.i327.i, %.2.i.i
  %i.ig = icmp samesign ult i32 %spec.select383.i, %spec.select382.i
  %i.ih = icmp samesign ult i64 %.2.i327.i, %.2.i.i
  %i.ii = select i1 %i.if, i1 %i.ig, i1 %i.ih     ; 2 uses
  %..i340.i = select i1 %i.ii, i32 %spec.select382.i, i32 %spec.select383.i
  %.2.i341.i = select i1 %i.ii, i64 %.2.i.i, i64 %.2.i327.i
  %i.ij = mul i64 %.2.i341.i, 1000000
  %i.ik = udiv i32 %..i340.i, 1000
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = add i64 %i.ij, %i.il                    ; 3 uses
  %i.in = icmp sgt i64 %i.im, 900000000
  br i1 %i.in, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.io = icmp sgt i64 %i.im, 999994
  br i1 %i.io, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ip = icmp sgt i64 %i.im, 999
  %.288.i = select i1 %i.ip, i64 2, i64 3
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %.sroa.045.0.i = phi i64 [ 1, %bb.bn ], [ %.288.i, %bb.bo ], [ 0, %bb.bm ] ; 4 uses
  %i.iq = icmp eq i64 %.2.i331.i, %.2.i329.i
  %i.ir = icmp samesign ult i32 %spec.select385.i, %spec.select384.i
  %i.is = icmp samesign ult i64 %.2.i331.i, %.2.i329.i
  %i.it = select i1 %i.iq, i1 %i.ir, i1 %i.is     ; 2 uses
  %..i342.i = select i1 %i.it, i32 %spec.select384.i, i32 %spec.select385.i
  %.2.i343.i = select i1 %i.it, i64 %.2.i329.i, i64 %.2.i331.i
  %i.iu = mul i64 %.2.i343.i, 1000000
  %i.iv = udiv i32 %..i342.i, 1000
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = add i64 %i.iu, %i.iw                    ; 3 uses
  %i.iy = icmp sgt i64 %i.ix, 900000000
  br i1 %i.iy, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iz = icmp sgt i64 %i.ix, 999994
  br i1 %i.iz, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ja = icmp sgt i64 %i.ix, 999
  %.289.i = select i1 %i.ja, i64 2, i64 3
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %.sroa.048.0.i = phi i64 [ 1, %bb.bq ], [ %.289.i, %bb.br ], [ 0, %bb.bp ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4205
  %i.jb = mul i64 %.2.i327.i, 1000000
  %i.jc = udiv i32 %spec.select383.i, 1000
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = add i64 %i.jb, %i.jd
  %i.jf = sitofp i64 %i.je to double              ; 4 uses
  switch i64 %.sroa.045.0.i, label %default.unreachable [
    i64 0, label %bb.bt
    i64 1, label %bb.bu
    i64 2, label %bb.bv
    i64 3, label %bb.bw
  ]

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4205
  %i.jg = mul i64 %.2.i.i, 1000000
  %i.jh = udiv i32 %spec.select382.i, 1000
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = add i64 %i.jg, %i.ji
  %i.jk = sitofp i64 %i.jj to double
  %i.jl = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.jm = insertelement <2 x double> %i.jl, double %i.jk, i64 1
  %i.jn = fdiv <2 x double> %i.jm, splat (double 1.000000e+06)
  %3 = fdiv <2 x double> %i.jn, splat (double 6.000000e+01) ; 2 uses
  %4 = extractelement <2 x double> %3, i64 0
  store double %4, ptr %i.n, align 8, !noalias !4205
  %i.jo = extractelement <2 x double> %3, i64 1
  br label %bb.bx

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4205
  %i.jp = mul i64 %.2.i.i, 1000000
  %i.jq = udiv i32 %spec.select382.i, 1000
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = add i64 %i.jp, %i.jr
  %i.jt = sitofp i64 %i.js to double
  %i.ju = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.jv = insertelement <2 x double> %i.ju, double %i.jt, i64 1
  %i.jw = fdiv <2 x double> %i.jv, splat (double 1.000000e+06) ; 2 uses
  %i.jx = extractelement <2 x double> %i.jw, i64 0
  store double %i.jx, ptr %i.n, align 8, !noalias !4205
  %i.jy = extractelement <2 x double> %i.jw, i64 1
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4205
  %i.jz = mul i64 %.2.i.i, 1000000
  %i.ka = udiv i32 %spec.select382.i, 1000
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = add i64 %i.jz, %i.kb
  %i.kd = sitofp i64 %i.kc to double
  %i.ke = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.kf = insertelement <2 x double> %i.ke, double %i.kd, i64 1
  %i.kg = fdiv <2 x double> %i.kf, splat (double 1.000000e+03) ; 2 uses
  %i.kh = extractelement <2 x double> %i.kg, i64 0
  store double %i.kh, ptr %i.n, align 8, !noalias !4205
  %i.ki = extractelement <2 x double> %i.kg, i64 1
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bs
  store double %i.jf, ptr %i.n, align 8, !noalias !4205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4205
  %i.kj = mul i64 %.2.i.i, 1000000
  %i.kk = udiv i32 %spec.select382.i, 1000
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = add i64 %i.kj, %i.kl
  %i.kn = sitofp i64 %i.km to double
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt
  %.sink408.i = phi double [ %i.kn, %bb.bw ], [ %i.ki, %bb.bv ], [ %i.jy, %bb.bu ], [ %i.jo, %bb.bt ]
  store double %.sink408.i, ptr %i.m, align 8, !noalias !4205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4205
  %i.ko = mul i64 %.2.i331.i, 1000000
  %i.kp = udiv i32 %spec.select385.i, 1000
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = add i64 %i.ko, %i.kq
  %i.ks = sitofp i64 %i.kr to double              ; 4 uses
  switch i64 %.sroa.048.0.i, label %default.unreachable [
    i64 0, label %bb.by
    i64 1, label %bb.bz
    i64 2, label %bb.ca
    i64 3, label %bb.cb
  ]

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4205
  %i.kt = mul i64 %.2.i329.i, 1000000
  %i.ku = udiv i32 %spec.select384.i, 1000
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = add i64 %i.kt, %i.kv
  %i.kx = sitofp i64 %i.kw to double
  %i.ky = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.kz = insertelement <2 x double> %i.ky, double %i.kx, i64 1
  %i.la = fdiv <2 x double> %i.kz, splat (double 1.000000e+06)
  %5 = fdiv <2 x double> %i.la, splat (double 6.000000e+01) ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0
  store double %6, ptr %i.l, align 8, !noalias !4205
  %i.lb = extractelement <2 x double> %5, i64 1
  br label %switch.lookup

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4205
  %i.lc = mul i64 %.2.i329.i, 1000000
  %i.ld = udiv i32 %spec.select384.i, 1000
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = add i64 %i.lc, %i.le
  %i.lg = sitofp i64 %i.lf to double
  %i.lh = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.li = insertelement <2 x double> %i.lh, double %i.lg, i64 1
  %i.lj = fdiv <2 x double> %i.li, splat (double 1.000000e+06) ; 2 uses
  %i.lk = extractelement <2 x double> %i.lj, i64 0
  store double %i.lk, ptr %i.l, align 8, !noalias !4205
  %i.ll = extractelement <2 x double> %i.lj, i64 1
  br label %switch.lookup

bb.ca:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4205
  %i.lm = mul i64 %.2.i329.i, 1000000
  %i.ln = udiv i32 %spec.select384.i, 1000
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = add i64 %i.lm, %i.lo
  %i.lq = sitofp i64 %i.lp to double
  %i.lr = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.ls = insertelement <2 x double> %i.lr, double %i.lq, i64 1
  %i.lt = fdiv <2 x double> %i.ls, splat (double 1.000000e+03) ; 2 uses
  %i.lu = extractelement <2 x double> %i.lt, i64 0
  store double %i.lu, ptr %i.l, align 8, !noalias !4205
  %i.lv = extractelement <2 x double> %i.lt, i64 1
  br label %switch.lookup

bb.cb:                                            ; preds = %bb.bx
  store double %i.ks, ptr %i.l, align 8, !noalias !4205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4205
  %i.lw = mul i64 %.2.i329.i, 1000000
  %i.lx = udiv i32 %spec.select384.i, 1000
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = add i64 %i.lw, %i.ly
  %i.ma = sitofp i64 %i.lz to double
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by
  %.sink409.i = phi double [ %i.lb, %bb.by ], [ %i.ll, %bb.bz ], [ %i.lv, %bb.ca ], [ %i.ma, %bb.cb ]
  store double %.sink409.i, ptr %i.k, align 8, !noalias !4205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4205
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs_NtCs8frGy5WneL6_4fish5timerNtB4_18PrintElapsedOnDropNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.244, i64 %.sroa.031.0.i
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep27 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtCs8frGy5WneL6_4fish5timerNtB4_18PrintElapsedOnDropNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.245, i64 %.sroa.031.0.i
  %switch.load28 = load i8, ptr %switch.gep27, align 1
  %switch.ext = zext i8 %switch.load28 to i64
  store ptr %switch.load, ptr %i.j, align 8, !noalias !4205, !captures !29
  %i.mb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %switch.ext, ptr %i.mb, align 8, !noalias !4205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4205
  %switch.gep36 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs_NtCs8frGy5WneL6_4fish5timerNtB4_18PrintElapsedOnDropNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.244, i64 %.sroa.035.0.i
  %switch.load37 = load ptr, ptr %switch.gep36, align 8
  %switch.gep38 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtCs8frGy5WneL6_4fish5timerNtB4_18PrintElapsedOnDropNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.245, i64 %.sroa.035.0.i
  %switch.load39 = load i8, ptr %switch.gep38, align 1
  %switch.ext40 = zext i8 %switch.load39 to i64
  store ptr %switch.load37, ptr %i.i, align 8, !noalias !4205, !captures !29
  %i.mc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %switch.ext40, ptr %i.mc, align 8, !noalias !4205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4205
  %switch.gep30 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs_NtCs8frGy5WneL6_4fish5timerNtB4_18PrintElapsedOnDropNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.244, i64 %.sroa.045.0.i
  %switch.load31 = load ptr, ptr %switch.gep30, align 8
  %switch.gep32 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtCs8frGy5WneL6_4fish5timerNtB4_18PrintElapsedOnDropNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.245, i64 %.sroa.045.0.i
  %switch.load33 = load i8, ptr %switch.gep32, align 1
  %switch.ext34 = zext i8 %switch.load33 to i64
  store ptr %switch.load31, ptr %i.h, align 8, !noalias !4205, !captures !29
  %i.md = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %switch.ext34, ptr %i.md, align 8, !noalias !4205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4205
  %switch.gep42 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs_NtCs8frGy5WneL6_4fish5timerNtB4_18PrintElapsedOnDropNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.244, i64 %.sroa.048.0.i
  %switch.load43 = load ptr, ptr %switch.gep42, align 8
  %switch.gep44 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtCs8frGy5WneL6_4fish5timerNtB4_18PrintElapsedOnDropNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.245, i64 %.sroa.048.0.i
  %switch.load45 = load i8, ptr %switch.gep44, align 1
  %switch.ext46 = zext i8 %switch.load45 to i64
  store ptr %switch.load43, ptr %i.g, align 8, !noalias !4205, !captures !29
  %i.me = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %switch.ext46, ptr %i.me, align 8, !noalias !4205
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 57)
          to label %bb.cc unwind label %bb.bl, !noalias !4205

bb.cc:                                            ; preds = %switch.lookup
  %switch.shiftamt = shl nuw nsw i64 %.sroa.045.0.i, 4
  %switch.downshift = lshr i64 3659230532534283, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i16
  %i.mf = and i64 %.sroa.035.0.i, 2
  %spec.select.i = or disjoint i64 %i.mf, 4
  %i.mg = and i64 %.sroa.031.0.i, 2
  %.290.i = or disjoint i64 %i.mg, 4
  %..i344.i = tail call noundef i64 @llvm.umax.i64(i64 %spec.select.i, i64 %.290.i)
  %i.mh = load i64, ptr %.sroa.587.0..sroa_idx.i, align 8, !alias.scope !4208, !noalias !4205, !noundef !4 ; 3 uses
  %i.mi = icmp sgt i64 %i.mh, -1
  call void @llvm.assume(i1 %i.mi)
  %i.mj = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4208, !noalias !4205, !nonnull !4, !noundef !4
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.mk, ptr noundef nonnull align 1 dereferenceable(57) @104, i64 57, i1 false), !noalias !4205
  %i.ml = add nuw i64 %i.mh, 57
  store i64 %i.ml, ptr %.sroa.587.0..sroa_idx.i, align 8, !alias.scope !4208, !noalias !4205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4205
  %i.mm = trunc nuw nsw i64 %..i344.i to i16      ; 3 uses
  store ptr %i.r, ptr %i.f, align 8, !noalias !4205
  %.sroa.4163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.4163.0..sroa_idx.i, align 8, !noalias !4205
  %i.mn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.j, ptr %i.mn, align 8, !noalias !4205
  %.sroa.4167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs8frGy5WneL6_4fish, ptr %.sroa.4167.0..sroa_idx.i, align 8, !noalias !4205
  %i.mo = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.mo, align 8, !noalias !4205
  %.sroa.4172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i16 %i.mm, ptr %.sroa.4172.0..sroa_idx.i, align 8, !noalias !4205
  %i.mp = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr @105, ptr %i.mp, align 8, !noalias !4205
  %.sroa.4183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs8frGy5WneL6_4fish, ptr %.sroa.4183.0..sroa_idx.i, align 8, !noalias !4205
  %i.mq = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr null, ptr %i.mq, align 8, !noalias !4205
  %.sroa.4188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i16 %switch.masked, ptr %.sroa.4188.0..sroa_idx.i, align 8, !noalias !4205
  %i.mr = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @99, ptr noundef nonnull @106, ptr noundef nonnull %i.f)
          to label %bb.cd unwind label %bb.bl, !noalias !4205

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.mr, label %.invoke.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8frGy5WneL6_4fish.exit295.i, !prof !15

.invoke.i:                                        ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.ms = phi ptr [ @109, %bb.ce ], [ @107, %bb.cd ], [ @111, %bb.cf ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ms) #38
          to label %.cont.i unwind label %bb.bl, !noalias !4205

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8frGy5WneL6_4fish.exit295.i: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4205
  store ptr %i.p, ptr %i.e, align 8, !noalias !4205
  %.sroa.4205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.4205.0..sroa_idx.i, align 8, !noalias !4205
  %i.mt = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.i, ptr %i.mt, align 8, !noalias !4205
  %.sroa.4209.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs8frGy5WneL6_4fish, ptr %.sroa.4209.0..sroa_idx.i, align 8, !noalias !4205
  %i.mu = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.mu, align 8, !noalias !4205
  %.sroa.4172.0..sroa_idx173.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i16 %i.mm, ptr %.sroa.4172.0..sroa_idx173.i, align 8, !noalias !4205
  %i.mv = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.n, ptr %i.mv, align 8, !noalias !4205
  %.sroa.4213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.4213.0..sroa_idx.i, align 8, !noalias !4205
  %i.mw = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.h, ptr %i.mw, align 8, !noalias !4205
  %.sroa.4217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs8frGy5WneL6_4fish, ptr %.sroa.4217.0..sroa_idx.i, align 8, !noalias !4205
  %i.mx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr %i.l, ptr %i.mx, align 8, !noalias !4205
  %.sroa.4221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.4221.0..sroa_idx.i, align 8, !noalias !4205
  %i.my = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %i.g, ptr %i.my, align 8, !noalias !4205
  %.sroa.4225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs8frGy5WneL6_4fish, ptr %.sroa.4225.0..sroa_idx.i, align 8, !noalias !4205
  %i.mz = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @99, ptr noundef nonnull @108, ptr noundef nonnull %i.e)
          to label %bb.ce unwind label %bb.bl, !noalias !4205

bb.ce:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8frGy5WneL6_4fish.exit295.i
  br i1 %i.mz, label %.invoke.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8frGy5WneL6_4fish.exit293.i, !prof !15

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8frGy5WneL6_4fish.exit293.i: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4205
  store ptr %i.q, ptr %i.d, align 8, !noalias !4205
  %.sroa.4241.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.4241.0..sroa_idx.i, align 8, !noalias !4205
  %i.na = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %i.na, align 8, !noalias !4205
  %.sroa.4245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs8frGy5WneL6_4fish, ptr %.sroa.4245.0..sroa_idx.i, align 8, !noalias !4205
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.nb, align 8, !noalias !4205
  %.sroa.4172.0..sroa_idx175.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i16 %i.mm, ptr %.sroa.4172.0..sroa_idx175.i, align 8, !noalias !4205
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.m, ptr %i.nc, align 8, !noalias !4205
  %.sroa.4249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.4249.0..sroa_idx.i, align 8, !noalias !4205
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.h, ptr %i.nd, align 8, !noalias !4205
  %.sroa.4253.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs8frGy5WneL6_4fish, ptr %.sroa.4253.0..sroa_idx.i, align 8, !noalias !4205
  %i.ne = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.k, ptr %i.ne, align 8, !noalias !4205
  %.sroa.4257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.4257.0..sroa_idx.i, align 8, !noalias !4205
  %i.nf = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %i.g, ptr %i.nf, align 8, !noalias !4205
  %.sroa.4261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs8frGy5WneL6_4fish, ptr %.sroa.4261.0..sroa_idx.i, align 8, !noalias !4205
  %i.ng = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @99, ptr noundef nonnull @110, ptr noundef nonnull %i.d)
          to label %bb.cf unwind label %bb.bl, !noalias !4205

bb.cf:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8frGy5WneL6_4fish.exit293.i
  br i1 %i.ng, label %.invoke.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8frGy5WneL6_4fish.exit.i, !prof !15

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8frGy5WneL6_4fish.exit.i: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4205
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 1)
          to label %_RNvMNtCs8frGy5WneL6_4fish5timerNtB2_13TimerSnapshot9get_delta.exit unwind label %bb.bl, !noalias !4205

bb.cg:                                            ; preds = %bb.bl
  %i.nh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !noalias !4205
  unreachable

common.resume:                                    ; preds = %bb.ch, %bb.cv, %bb.bl
  %common.resume.op = phi { ptr, i32 } [ %i.ot, %bb.cv ], [ %i.ie, %bb.bl ], [ %.pn, %bb.ch ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs8frGy5WneL6_4fish5timerNtB2_13TimerSnapshot9get_delta.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8frGy5WneL6_4fish.exit.i
  %i.ni = load i64, ptr %.sroa.587.0..sroa_idx.i, align 8, !alias.scope !4209, !noalias !4205, !noundef !4 ; 2 uses
  %i.nj = icmp sgt i64 %i.ni, -1
  call void @llvm.assume(i1 %i.nj)
  %i.nk = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4209, !noalias !4205, !nonnull !4, !noundef !4
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.ni
  store i8 10, ptr %i.nl, align 1, !noalias !4205
  %.pre.i346.i = load i64, ptr %.sroa.587.0..sroa_idx.i, align 8, !alias.scope !4209, !noalias !4205
  %i.nm = add i64 %.pre.i346.i, 1
  store i64 %i.nm, ptr %.sroa.587.0..sroa_idx.i, align 8, !alias.scope !4209, !noalias !4205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !4210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4205
end_hunk_0
