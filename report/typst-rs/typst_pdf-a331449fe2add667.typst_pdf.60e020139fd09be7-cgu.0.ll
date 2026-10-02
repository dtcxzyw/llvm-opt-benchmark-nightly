Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_RNvNtCs8jFhWeO2DFb_9typst_pdf4util12display_font:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtCs8jFhWeO2DFb_9typst_pdf5image12handle_image(ptr noalias nofree noundef nonnull align 8 dereferenceable(672) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, double noundef %3, double noundef %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %5, i64 noundef range(i64 1, 0) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [88 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 13 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [16 x i8], align 16               ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 10 uses
  %i.p = alloca [8 x i8], align 8                 ; 7 uses
  %i.q = alloca [72 x i8], align 8                ; 14 uses
  %i.r = alloca [96 x i8], align 8                ; 18 uses
  %i.s = alloca [8 x i8], align 8                 ; 8 uses
  %i.t = alloca [72 x i8], align 8                ; 11 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [72 x i8], align 8                ; 4 uses
  %i.x = alloca [72 x i8], align 8                ; 9 uses
  %i.y = alloca [72 x i8], align 8                ; 10 uses
  %i.z = alloca [56 x i8], align 8                ; 13 uses
  %i.aa = alloca [88 x i8], align 8               ; 5 uses
  %i.ab = alloca [64 x i8], align 8               ; 12 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [8 x i8], align 8                ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [80 x i8], align 8               ; 7 uses
  %i.ai = alloca [8 x i8], align 8                ; 6 uses
  %i.aj = alloca [72 x i8], align 8               ; 14 uses
  %i.ak = alloca [80 x i8], align 16              ; 10 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [32 x i8], align 8               ; 11 uses
  %i.an = alloca [16 x i8], align 8               ; 6 uses
  %i.ao = alloca [8 x i8], align 8                ; 5 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %i.aq = alloca [72 x i8], align 8               ; 8 uses
  %i.ar = alloca [32 x i8], align 8               ; 6 uses
  %i.as = alloca [16 x i8], align 8               ; 6 uses
  %i.at = alloca [8 x i8], align 8                ; 7 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %i.ax = alloca [24 x i8], align 8               ; 10 uses
  %i.ay = alloca [72 x i8], align 8               ; 14 uses
  %i.az = alloca [16 x i8], align 8               ; 9 uses
  %i.ba = alloca [96 x i8], align 8               ; 19 uses
  %i.bb = alloca [48 x i8], align 8               ; 8 uses
  %i.bc = alloca [48 x i8], align 8               ; 7 uses
  %i.bd = alloca [48 x i8], align 8               ; 4 uses
  %i.be = alloca [48 x i8], align 8               ; 4 uses
  %i.bf = alloca [72 x i8], align 8               ; 11 uses
  %i.bg = alloca [48 x i8], align 8               ; 7 uses
  %i.bh = alloca [48 x i8], align 8               ; 4 uses
  %i.bi = alloca [48 x i8], align 8               ; 7 uses
  %i.bj = alloca [48 x i8], align 8               ; 7 uses
  %i.bk = alloca [48 x i8], align 8               ; 4 uses
  %i.bl = alloca [48 x i8], align 8               ; 4 uses
  %i.bm = alloca [48 x i8], align 8               ; 8 uses
  %i.bn = alloca [48 x i8], align 8               ; 7 uses
  %i.bo = alloca [48 x i8], align 8               ; 4 uses
  %i.bp = alloca [48 x i8], align 8               ; 4 uses
  %i.bq = alloca [72 x i8], align 8               ; 13 uses
  %i.br = alloca [48 x i8], align 8               ; 7 uses
  %i.bs = alloca [48 x i8], align 8               ; 4 uses
  %i.bt = alloca [48 x i8], align 8               ; 7 uses
  %i.bu = alloca [48 x i8], align 8               ; 7 uses
  %i.bv = alloca [48 x i8], align 8               ; 4 uses
  %i.bw = alloca [48 x i8], align 8               ; 4 uses
  %i.bx = alloca [72 x i8], align 8               ; 11 uses
  %i.by = alloca [48 x i8], align 8               ; 7 uses
  %i.bz = alloca [48 x i8], align 8               ; 4 uses
  %i.ca = alloca [72 x i8], align 8               ; 5 uses
  %i.cb = alloca [48 x i8], align 8               ; 7 uses
  %i.cc = alloca [48 x i8], align 8               ; 4 uses
  %i.cd = alloca [48 x i8], align 8               ; 7 uses
  %i.ce = alloca [48 x i8], align 8               ; 7 uses
  %i.cf = alloca [48 x i8], align 8               ; 4 uses
  %i.cg = alloca [48 x i8], align 8               ; 4 uses
  %i.ch = alloca [48 x i8], align 8               ; 7 uses
  %i.ci = alloca [48 x i8], align 8               ; 7 uses
  %i.cj = alloca [48 x i8], align 8               ; 4 uses
  %i.ck = alloca [48 x i8], align 8               ; 4 uses
  %i.cl = alloca [48 x i8], align 8               ; 8 uses
  %i.cm = alloca [48 x i8], align 8               ; 7 uses
  %i.cn = alloca [48 x i8], align 8               ; 4 uses
  %i.co = alloca [48 x i8], align 8               ; 4 uses
  %i.cp = alloca [48 x i8], align 8               ; 8 uses
  %i.cq = alloca [48 x i8], align 8               ; 7 uses
  %i.cr = alloca [48 x i8], align 8               ; 4 uses
  %i.cs = alloca [48 x i8], align 8               ; 4 uses
  %i.ct = alloca [72 x i8], align 8               ; 13 uses
  %i.cu = alloca [72 x i8], align 8               ; 15 uses
  %i.cv = alloca [72 x i8], align 8               ; 13 uses
  %i.cw = alloca [48 x i8], align 8               ; 16 uses
  %i.cx = alloca [24 x i8], align 8               ; 5 uses
  %i.cy = alloca [72 x i8], align 8               ; 9 uses
  %i.cz = alloca [24 x i8], align 8               ; 8 uses
  %i.da = alloca [16 x i8], align 8               ; 4 uses
  %i.db = alloca [8 x i8], align 8                ; 6 uses
  %i.dc = alloca [12 x i8], align 4               ; 7 uses
  %i.dd = alloca [12 x i8], align 4               ; 7 uses
  %i.de = alloca [12 x i8], align 4               ; 7 uses
  %i.df = alloca [24 x i8], align 8               ; 10 uses
  %i.dg = alloca [24 x i8], align 8               ; 5 uses
  %i.dh = alloca [8 x i8], align 8                ; 10 uses
  %i.di = alloca [16 x i8], align 8               ; 9 uses
  %i.dj = alloca [24 x i8], align 16              ; 5 uses
  %i.dk = alloca [16 x i8], align 8               ; 8 uses
  %i.dl = alloca [24 x i8], align 16              ; 5 uses
  %i.dm = alloca [32 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  %i.dn = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.dn, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.dm, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @265, i64 noundef 12, i64 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !13737, !noundef !10 ; 2 uses
  %.not.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i, label %bb.e, label %bb.i, !prof !13

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #42
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4tags9TagHandleEBF_.exit, %bb.h
  %.pn23 = phi { ptr, i32 } [ %i.ds, %bb.h ], [ %.pn21, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4tags9TagHandleEBF_.exit ]
  %i.dq = load ptr, ptr %i.dm, align 8, !alias.scope !13738, !noundef !10
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.jf

bb.h:                                             ; preds = %.invoke, %_RNvXNvCs6xpQEr8gLsQ_11typst_utils5deferINtB2_11DeferHandleNtNtCsidf7BFzONoc_6krilla7surface7SurfaceNCNvNtCs8jFhWeO2DFb_9typst_pdf5image12handle_image0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1F_.exit.i266, %_RNvXNvCs6xpQEr8gLsQ_11typst_utils5deferINtB2_11DeferHandleNtNtCsidf7BFzONoc_6krilla7surface7SurfaceNCNvNtCs8jFhWeO2DFb_9typst_pdf5image12handle_image0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1F_.exit.i, %bb.e, %bb.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %bb.d
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !13737, !nonnull !10, !noundef !10
  %i.dv = getelementptr [112 x i8], ptr %i.du, i64 %i.dp ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 -112   ; 5 uses
  %i.dx = getelementptr i8, ptr %i.dv, i64 -80
  %i.dy = load <4 x double>, ptr %i.dw, align 8
  %i.dz = fptrunc <4 x double> %i.dy to <4 x float>
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.eb = load <2 x double>, ptr %i.dx, align 8
  %i.ec = fdiv <2 x double> %i.eb, splat (double 1.270000e+02)
  %i.ed = fptrunc <2 x double> %i.ec to <2 x float>
  store <4 x float> %i.ea, ptr %i.dl, align 16
  store <2 x float> %i.ed, ptr %.sroa.7.0..sroa_idx, align 16
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface14push_transform(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.dl)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 944
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !10, !align !21, !noundef !10
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 576
  store i64 %6, ptr %i.eg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  store ptr %5, ptr %i.dk, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  store i8 1, ptr %i.eh, align 8
  %i.ei = load ptr, ptr %2, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  %i.ek = load i8, ptr %i.ej, align 8, !range !64, !noundef !10 ; 2 uses
  %.not15 = icmp ne i8 %i.ek, 2
  %7 = trunc nuw i8 %i.ek to i1
  %8 = xor i1 %7, true
  %.sroa.01.0 = select i1 %.not15, i1 %8, i1 false ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.em = mul i64 %6, -1065810590584100411        ; 2 uses
  %i.en = call noundef i64 @llvm.fshl.i64(i64 %i.em, i64 %i.em, i64 26) ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !13739, !noalias !13740, !noundef !10
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.k, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.es = invoke { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.el, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.er, i1 noundef zeroext true) #38
          to label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i unwind label %bb.s ; 0 uses

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.k, %bb.j
  %.val.i.i = load ptr, ptr %i.el, align 8, !alias.scope !13741, !noalias !13742, !nonnull !10, !noundef !10 ; 8 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 528
  %.val5.i.i = load i64, ptr %i.et, align 8, !alias.scope !13741, !noalias !13742, !noundef !10 ; 4 uses
  %i.eu = lshr i64 %i.en, 57
  %i.ev = trunc nuw nsw i64 %i.eu to i8           ; 3 uses
  %i.ew = insertelement <16 x i8> poison, i8 %i.ev, i64 0
  %i.ex = shufflevector <16 x i8> %i.ew, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %.pn.i.i.i = phi i64 [ %i.en, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ %i.fw, %bb.o ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ %.sroa.4.120.i.i.i, %bb.o ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ %.sroa.04.122.i.i.i, %bb.o ]
  %i.ey = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ %i.fv, %bb.o ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val5.i.i ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.ez, align 1, !noalias !13743 ; 3 uses
  %i.fa = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %i.ex
  %i.fb = bitcast <16 x i1> %i.fa to i16          ; 2 uses
  %.not28.i.i.i = icmp eq i16 %i.fb, 0
  br i1 %.not28.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %bb.m
  %.sroa.01.029.i.i.i = phi i16 [ %i.fl, %bb.m ], [ %i.fb, %bb.l ] ; 3 uses
  %i.fc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i, i1 true)
  %i.fd = zext nneg i16 %i.fc to i64
  %i.fe = add i64 %.sroa.0.017.i.i.i, %i.fd
  %i.ff = and i64 %i.fe, %.val5.i.i
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.fg
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -8
  %.val2.i.i.i = load i64, ptr %i.fi, align 8, !range !25, !noalias !13744, !noundef !10
  %i.fj = icmp eq i64 %6, %.val2.i.i.i
  br i1 %i.fj, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.m, !prof !16

._crit_edge.i.i.i:                                ; preds = %bb.m, %bb.l
  %.not12.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %.thread.i.i.i, label %bb.n, !prof !13

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.fk = add i16 %.sroa.01.029.i.i.i, -1
  %i.fl = and i16 %i.fk, %.sroa.01.029.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fl, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.fm = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, zeroinitializer
  %i.fn = bitcast <16 x i1> %i.fm to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.fn, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread24.i.i.i, !prof !13

.thread24.i.i.i:                                  ; preds = %bb.n
  %i.fo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fn, i1 true)
  %i.fp = zext nneg i16 %i.fo to i64
  %i.fq = add i64 %.sroa.0.017.i.i.i, %i.fp
  %i.fr = and i64 %i.fq, %.val5.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread24.i.i.i, %._crit_edge.i.i.i
  %.sroa.4.121.i.i.i = phi i64 [ %i.fr, %.thread24.i.i.i ], [ %.sroa.4.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.fs = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.ft = bitcast <16 x i1> %i.fs to i16
  %i.fu = icmp eq i16 %i.ft, 0
  br i1 %i.fu, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %.thread.i.i.i, %bb.n
  %.sroa.04.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.n ]
  %.sroa.4.120.i.i.i = phi i64 [ %.sroa.4.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.n ]
  %i.fv = add i64 %i.ey, 16                       ; 2 uses
  %i.fw = add i64 %i.fv, %.sroa.0.017.i.i.i
  br label %bb.l

bb.p:                                             ; preds = %.thread.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.121.i.i.i
  %i.fy = load i8, ptr %i.fx, align 1, !noalias !13745, !noundef !10 ; 2 uses
  %i.fz = icmp sgt i8 %i.fy, -1
  br i1 %i.fz, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %bb.p
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !13745
  %i.ga = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.gb = bitcast <16 x i1> %i.ga to i16          ; 2 uses
  %.not.i23.i.i.i = icmp ne i16 %i.gb, 0
  %i.gc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gb, i1 true)
  %i.gd = zext nneg i16 %i.gc to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gd
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !13746
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ge = phi i8 [ %.pre.i, %bb.q ], [ %i.fy, %bb.p ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.gd, %bb.q ], [ %.sroa.4.121.i.i.i, %bb.p ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13746)
  %i.gf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i
  %i.gg = and i8 %i.ge, 1
  %i.gh = zext nneg i8 %i.gg to i64
  %i.gi = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.gj = and i64 %i.gi, %.val5.i.i
  store i8 %i.ev, ptr %i.gf, align 1, !noalias !13746
  %i.gk = getelementptr i8, ptr %.val.i.i, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.gk, i64 16
  store i8 %i.ev, ptr %i.gl, align 1, !noalias !13746
  %i.gm = load <2 x i64>, ptr %i.eo, align 8, !alias.scope !13747
  %i.gn = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.gh, i64 0
  %i.go = sub <2 x i64> %i.gm, %i.gn
  store <2 x i64> %i.go, ptr %i.eo, align 8, !alias.scope !13747
  %i.gp = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.gq = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.gp
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 -8
  store i64 %6, ptr %i.gr, align 8, !noalias !13746
  br label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs8jFhWeO2DFb_9typst_pdf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4tags9TagHandleEBF_.exit: ; preds = %.body261, %bb.ap, %bb.s
  %.pn21 = phi { ptr, i32 } [ %i.gs, %bb.s ], [ %.pn19, %bb.ap ], [ %.pn19, %.body261 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCsidf7BFzONoc_6krilla7surface7SurfaceNCNvNtCs8jFhWeO2DFb_9typst_pdf5image12handle_image0EEB2b_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.dk) #44
          to label %bb.f unwind label %bb.jf

bb.s:                                             ; preds = %.invoke761, %bb.jg, %bb.jd, %bb.ae, %.noexc52, %bb.ab, %.noexc49, %.noexc48, %.noexc47, %.noexc46, %.noexc45, %.noexc44, %.noexc43, %.noexc42, %.noexc41, %.noexc40, %.noexc39, %.split.preheader.i.i.i, %bb.u, %bb.k
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4tags9TagHandleEBF_.exit

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %.lr.ph.i.i.i, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !13748)
  call void @llvm.experimental.noalias.scope.decl(metadata !13749)
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !13748, !noalias !13750, !nonnull !10, !align !21, !noundef !10 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 91
  %i.gw = load i8, ptr %i.gv, align 1, !range !11, !noalias !13751, !noundef !10
  %i.gx = trunc nuw i8 %i.gw to i1
  %.not.i34 = xor i1 %i.gx, true
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.gz = load i8, ptr %i.gy, align 8, !range !11, !alias.scope !13748, !noalias !13750
  %i.ha = trunc nuw i8 %i.gz to i1
  %or.cond.i = select i1 %.not.i34, i1 true, i1 %i.ha
  br i1 %or.cond.i, label %bb.af, label %bb.t

bb.t:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs8jFhWeO2DFb_9typst_pdf.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !13752)
  call void @llvm.experimental.noalias.scope.decl(metadata !13753)
  call void @llvm.experimental.noalias.scope.decl(metadata !13754)
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !13755, !noalias !13756, !noundef !10 ; 2 uses
  %.not.i.i.i.i35 = icmp eq i64 %i.hc, 0
  br i1 %.not.i.i.i.i35, label %bb.u, label %_RNvXs0_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i.i, !prof !13

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @529) #42
          to label %.noexc37 unwind label %bb.s

.noexc37:                                         ; preds = %bb.u
  unreachable

_RNvXs0_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i.i: ; preds = %bb.t
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !13755, !noalias !13756, !nonnull !10, !noundef !10
  %i.hf = getelementptr [160 x i8], ptr %i.he, i64 %i.hc ; 3 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 -48
  %i.hh = load i64, ptr %i.hg, align 16, !noalias !13757, !noundef !10 ; 2 uses
  %.not.i.i.i36 = icmp eq i64 %i.hh, 0
  br i1 %.not.i.i.i36, label %_RNvXs0_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvXs0_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i.i
  %i.hi = getelementptr i8, ptr %i.hf, i64 -56
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !13757, !nonnull !10, !noundef !10
  %i.hk = getelementptr [4 x i8], ptr %i.hj, i64 %i.hh
  %i.hl = getelementptr i8, ptr %i.hk, i64 -4
  %i.hm = load i32, ptr %i.hl, align 4, !noalias !13757, !noundef !10
  %i.hn = zext i32 %i.hm to i64                   ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.hp = load i64, ptr %i.ho, align 8, !alias.scope !13758, !noalias !13756, !noundef !10 ; 2 uses
  %i.hq = icmp ugt i64 %i.hp, %i.hn
  br i1 %i.hq, label %bb.w, label %.invoke761

bb.w:                                             ; preds = %bb.v
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.hs = load ptr, ptr %i.hr, align 8, !alias.scope !13758, !noalias !13756, !nonnull !10, !noundef !10
  %i.ht = getelementptr inbounds nuw [56 x i8], ptr %i.hs, i64 %i.hn ; 16 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gu, i64 88
  %i.hv = load i8, ptr %i.hu, align 8, !range !11, !noalias !13759, !noundef !10
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.x, label %_RNvXs0_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !13760)
end_hunk_0
begin_hunk_1_@_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context6finish:bb.a
  %i.no = add i64 %i.nj, 1
  %i.np = icmp ne i64 %i.no, %i.mr
  %brmerge.not.i133.i = and i1 %i.np, %i.nn       ; 2 uses
  %i.nq = add i64 %i.nj, 4294967295
  %spec.select.i134.i = select i1 %brmerge.not.i133.i, i64 %i.nj, i64 %i.nq
  %spec.select44.i135.i = select i1 %brmerge.not.i133.i, i64 8, i64 40
  %i.nr = and i64 %spec.select.i134.i, 4294967295
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineEENCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table20place_explicit_linesNCNvB3v_11build_tables2_0E0EIB1s_B2o_EENtNtNtB9_6traits8iterator8Iterator4nextB3B_.exit.i.i
  %.sroa.08.0.i136.i = phi i64 [ 0, %_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineEENCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table20place_explicit_linesNCNvB3v_11build_tables2_0E0EIB1s_B2o_EENtNtNtB9_6traits8iterator8Iterator4nextB3B_.exit.i.i ], [ %i.nr, %bb.bs ]
  %.sroa.06.2.i137.i = phi i64 [ 8, %_RNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineEENCINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table20place_explicit_linesNCNvB3v_11build_tables2_0E0EIB1s_B2o_EENtNtNtB9_6traits8iterator8Iterator4nextB3B_.exit.i.i ], [ %spec.select44.i135.i, %bb.bs ]
  %i.ns = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.i128.lcssa.i, i64 8
  %i.nt = load i64, ptr %i.ns, align 8, !noalias !20327, !noundef !10 ; 2 uses
  %i.nu = trunc i64 %i.nt to i32
  %i.nv = icmp ugt i32 %..i.i132.i, %i.nu
  br i1 %i.nv, label %.lr.ph.i139.i, label %.loopexit.i138.i.backedge

.loopexit.i138.i.backedge:                        ; preds = %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table11build_tables2_0B9_.exit.thread.i.i, %bb.bt
  br label %.loopexit.i138.i

.lr.ph.i139.i:                                    ; preds = %bb.bt
  %invariant.gep.i140.i = getelementptr i8, ptr %i.mt, i64 %.sroa.06.2.i137.i
  %i.nw = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.i128.lcssa.i, i64 24 ; 2 uses
  %i.nx = and i64 %i.nt, 4294967295
  %wide.trip.count.i141.i = zext i32 %..i.i132.i to i64
  br label %bb.bu

bb.bu:                                            ; preds = %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table11build_tables2_0B9_.exit.thread.i.i, %.lr.ph.i139.i
  %indvars.iv.i142.i = phi i64 [ %i.nx, %.lr.ph.i139.i ], [ %indvars.iv.next.i143.i, %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table11build_tables2_0B9_.exit.thread.i.i ] ; 2 uses
  %indvars.iv.next.i143.i = add nuw nsw i64 %indvars.iv.i142.i, 1 ; 2 uses
  %i.ny = mul i64 %indvars.iv.i142.i, %i.ms
  %i.nz = add i64 %i.ny, %.sroa.08.0.i136.i       ; 4 uses
  %i.oa = icmp ult i64 %i.nz, %i.mu
  br i1 %i.oa, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ob = getelementptr inbounds nuw [136 x i8], ptr %i.mt, i64 %i.nz ; 2 uses
  %i.oc = load i8, ptr %i.ob, align 8, !range !39, !noalias !20328, !noundef !10 ; 2 uses
  %i.od = icmp samesign ugt i8 %i.oc, 2
  %i.oe = zext nneg i8 %i.oc to i64
  %i.of = add nsw i64 %i.oe, -2
  %i.og = select i1 %i.od, i64 %i.of, i64 0
  switch i64 %i.og, label %bb.bx [
    i64 0, label %select.unfold.i145.i
    i64 1, label %bb.by
    i64 2, label %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table11build_tables2_0B9_.exit.thread.i.i
  ]

bb.bw:                                            ; preds = %bb.bu
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.nz, i64 noundef %i.mu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #42, !noalias !20328
  unreachable

bb.bx:                                            ; preds = %bb.bv
  unreachable

bb.by:                                            ; preds = %bb.bv
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.oi = load i64, ptr %i.oh, align 8, !noalias !20328, !noundef !10 ; 4 uses
  %i.oj = icmp ult i64 %i.oi, %i.mu
  br i1 %i.oj, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ok = getelementptr inbounds nuw [136 x i8], ptr %i.mt, i64 %i.oi
  %i.ol = load i8, ptr %i.ok, align 8, !range !39, !noalias !20328, !noundef !10
  %i.om = icmp samesign ult i8 %i.ol, 3
  br i1 %i.om, label %select.unfold.i145.i, label %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table11build_tables2_0B9_.exit.thread.i.i

bb.ca:                                            ; preds = %bb.by
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.oi, i64 noundef %i.mu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #42, !noalias !20328
  unreachable

select.unfold.i145.i:                             ; preds = %bb.bz, %bb.bv
  %i.on = phi i64 [ %i.nz, %bb.bv ], [ %i.oi, %bb.bz ]
  %gep.i146.i = getelementptr [136 x i8], ptr %invariant.gep.i140.i, i64 %i.on ; 6 uses
  %i.oo = load ptr, ptr %i.nw, align 8, !noalias !20327, !noundef !10 ; 2 uses
  %.not32.i147.i = icmp eq ptr %i.oo, null
  br i1 %.not32.i147.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %select.unfold.i145.i
  %i.op = atomicrmw add ptr %i.oo, i64 1 monotonic, align 8, !noalias !20327
  %i.oq = icmp slt i64 %i.op, 0
  br i1 %i.oq, label %bb.cg, label %bb.cf

bb.cc:                                            ; preds = %bb.cf, %select.unfold.i145.i
  %.sroa.025.0.i148.i = phi ptr [ %i.ov, %bb.cf ], [ null, %select.unfold.i145.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20329)
  call void @llvm.experimental.noalias.scope.decl(metadata !20330)
  %i.or = load ptr, ptr %gep.i146.i, align 8, !alias.scope !20331, !noalias !20327, !noundef !10 ; 2 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table16PrioritzedStrokeEBJ_.exit.i149.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ot = atomicrmw sub ptr %i.or, i64 1 release, align 8, !noalias !20332
  %i.ou = icmp eq i64 %i.ot, 1
  br i1 %i.ou, label %bb.ce, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table16PrioritzedStrokeEBJ_.exit.i149.i

bb.ce:                                            ; preds = %bb.cd
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtBN_6layout3abs3AbsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %gep.i146.i) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table16PrioritzedStrokeEBJ_.exit.i149.i unwind label %bb.ch, !noalias !20327

bb.cf:                                            ; preds = %bb.cb
  %i.ov = load ptr, ptr %i.nw, align 8, !noalias !20327, !nonnull !10, !noundef !10
  br label %bb.cc

bb.cg:                                            ; preds = %bb.cb
  call void @llvm.trap()
  unreachable

bb.ch:                                            ; preds = %bb.ce
  %i.ow = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.025.0.i148.i, ptr %gep.i146.i, align 8, !noalias !20327
  %i.ox = getelementptr inbounds nuw i8, ptr %gep.i146.i, i64 8
  store i8 2, ptr %i.ox, align 8, !noalias !20327
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table16PrioritzedStrokeEBJ_.exit.i149.i: ; preds = %bb.ce, %bb.cd, %bb.cc
  store ptr %.sroa.025.0.i148.i, ptr %gep.i146.i, align 8, !noalias !20327
  %i.oy = getelementptr inbounds nuw i8, ptr %gep.i146.i, i64 8
  store i8 2, ptr %i.oy, align 8, !noalias !20327
  br label %_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table11build_tables2_0B9_.exit.thread.i.i

_RNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table11build_tables2_0B9_.exit.thread.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table16PrioritzedStrokeEBJ_.exit.i149.i, %bb.bz, %bb.bv
  %exitcond.not.i144.i = icmp eq i64 %indvars.iv.next.i143.i, %wide.trip.count.i141.i
  br i1 %exitcond.not.i144.i, label %.loopexit.i138.i.backedge, label %bb.bu

bb.ci:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table11HeaderCellsEEB1g_.exit59, %.lr.ph878.i
  %indvars.iv1136.i = phi i64 [ 0, %.lr.ph878.i ], [ %indvars.iv.next1137.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table11HeaderCellsEEB1g_.exit59 ] ; 2 uses
  %indvars.iv.next1137.i = add nuw nsw i64 %indvars.iv1136.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !20307
  store i64 0, ptr %i.t, align 8, !noalias !20307
  store ptr inttoptr (i64 8 to ptr), ptr %i.aq, align 8, !noalias !20307
  store i64 0, ptr %i.ar, align 8, !noalias !20307
  br i1 %.not909.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table11HeaderCellsEEB1g_.exit59, label %.lr.ph875.i

._RINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table20place_explicit_linesNCNvB2_11build_tables2_0EB8_.exit.loopexit_crit_edge.i: ; preds = %_RINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table18prioritize_strokesNCNvB2_11build_tables3_0EB8_.exit.i
  %i.oz = icmp samesign ult i64 %indvars.iv.next1143.i, %.pre-phi
  br i1 %i.oz, label %.lr.ph894.i, label %.preheader.i

.preheader.i:                                     ; preds = %._RINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table20place_explicit_linesNCNvB2_11build_tables2_0EB8_.exit.loopexit_crit_edge.i, %.lr.ph896.i
  %.not919.i = icmp eq i32 %i.gq, 1
  %or.cond1556.i = or i1 %.not909.i, %.not919.i
  br i1 %or.cond1556.i, label %._crit_edge902.split.i, label %.lr.ph899.preheader.i

.lr.ph899.preheader.i:                            ; preds = %.preheader.i
  %i.pa = add nuw nsw i64 %i.go, 4294967295
  %i.pb = and i64 %i.pa, 4294967295
  br label %.lr.ph899.i

.lr.ph894.i:                                      ; preds = %._RINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table20place_explicit_linesNCNvB2_11build_tables2_0EB8_.exit.loopexit_crit_edge.i, %.lr.ph894.preheader.i
  %indvars.iv1142.i = phi i64 [ 0, %.lr.ph894.preheader.i ], [ %indvars.iv.next1143.i, %._RINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table20place_explicit_linesNCNvB2_11build_tables2_0EB8_.exit.loopexit_crit_edge.i ] ; 2 uses
  %indvars.iv.next1143.i = add nuw nsw i64 %indvars.iv1142.i, 1 ; 2 uses
  br label %bb.fx

..loopexit606_crit_edge.i:                        ; preds = %_RINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table18prioritize_strokesNCNvB2_11build_tables4_0EB8_.exit.i
  %exitcond1152.not.i = icmp eq i64 %indvars.iv.next1149.i, %i.mr
  br i1 %exitcond1152.not.i, label %._crit_edge902.split.i, label %.lr.ph899.i

._crit_edge902.split.i:                           ; preds = %..loopexit606_crit_edge.i, %.preheader.i, %_RINvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table20place_explicit_linesNCNvB2_11build_tables2_0EB8_.exit.preheader.i
  %.val110.i = load ptr, ptr %.phi.trans.insert1170.i, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %.val111.i = load i64, ptr %i.fy, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !20333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) @47, i64 32, i1 false), !noalias !20333
  %i.pc = getelementptr inbounds nuw [136 x i8], ptr %.val110.i, i64 %.val111.i
  br label %bb.cj

bb.cj:                                            ; preds = %.backedge2466, %._crit_edge902.split.i
  %i.pd = phi ptr [ %.val110.i, %._crit_edge902.split.i ], [ %i.pf, %.backedge2466 ] ; 7 uses
  %i.pe = icmp eq ptr %i.pd, %i.pc
  br i1 %i.pe, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 136
  %i.pg = load i8, ptr %i.pd, align 8, !range !39, !alias.scope !20334, !noalias !20335, !noundef !10
  %i.ph = icmp samesign ugt i8 %i.pg, 2
  br i1 %i.ph, label %.backedge2466, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBV_5table13TableCellDataEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRINtBT_7CtxCellB1P_EQNvMs1_BT_BQ_7as_cellEBZ_.exit.i.i

.backedge2466:                                    ; preds = %bb.ck, %bb.de
  br label %bb.cj

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBV_5table13TableCellDataEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRINtBT_7CtxCellB1P_EQNvMs1_BT_BQ_7as_cellEBZ_.exit.i.i: ; preds = %bb.ck
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pd, i64 40
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pd, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !20333
  store i64 4, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !20333
  store ptr %i.pi, ptr %.sroa.333.0..sroa_idx.i.i, align 8, !noalias !20333
  store ptr %i.pj, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !20333
  store ptr %i.pk, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !20333
  store ptr %i.pl, ptr %.sroa.636.0..sroa_idx.i.i, align 8, !noalias !20333
  br label %bb.cz

bb.cl:                                            ; preds = %bb.cj
  %i.pm = load i64, ptr %i.az, align 8, !noalias !20333, !noundef !10 ; 3 uses
  %i.pn = icmp eq i64 %i.pm, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !20333
  %.sroa.024.0.copyload.i.i = load ptr, ptr %i.r, align 8, !noalias !20333, !nonnull !10, !noundef !10 ; 5 uses
  %.sroa.425.0.copyload.i.i = load i64, ptr %i.ax, align 8, !noalias !20333 ; 4 uses
  %.val3.i.i.i.i157.i = load <16 x i8>, ptr %.sroa.024.0.copyload.i.i, align 16, !noalias !20336
  %i.po = icmp eq i64 %.sroa.425.0.copyload.i.i, 0 ; 3 uses
  br i1 %i.po, label %bb.cm, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.cl
  %1 = icmp slt i64 %.sroa.425.0.copyload.i.i, 1152921504606846975
  call void @llvm.assume(i1 %1)
  %i.pp = shl i64 %.sroa.425.0.copyload.i.i, 4    ; 2 uses
  %2 = add i64 %i.pp, 16                          ; 2 uses
  %3 = add nsw i64 %.sroa.425.0.copyload.i.i, 17
  %i.pq = add i64 %3, %2                          ; 3 uses
  %4 = icmp uge i64 %i.pq, %2
  call void @llvm.assume(i1 %4)
  %5 = icmp ult i64 %i.pq, 9223372036854775793
  call void @llvm.assume(i1 %5)
  %i.pr = sub nuw nsw i64 -16, %i.pp
  %i.ps = getelementptr inbounds i8, ptr %.sroa.024.0.copyload.i.i, i64 %i.pr
  br label %bb.cm

bb.cm:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.cl
  %.sroa.514.0.i.i.i.i = phi ptr [ undef, %bb.cl ], [ %i.ps, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.413.0.i.i.i.i = phi i64 [ undef, %bb.cl ], [ %i.pq, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 4 uses
  %.sink.i.i.i.i.i = phi i64 [ 0, %bb.cl ], [ 16, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ] ; 2 uses
  %i.pt = icmp eq i64 %i.pm, 0
  br i1 %i.pt, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterINtNtBb_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2U_6layout3abs3AbsEEEjENCINvNvNtNtNtB9_6traits8iterator8Iterator10max_by_key3keyTB1S_jEjNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table24try_resolve_table_stroke0E0EB4m_4nextB5s_.exit.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pu = icmp sgt <16 x i8> %.val3.i.i.i.i157.i, splat (i8 -1)
  %i.pv = bitcast <16 x i1> %i.pu to i16          ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.024.0.copyload.i.i, i64 16 ; 2 uses
  %.not11.i.i.i.i.i.i.i.i = icmp eq i16 %i.pv, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge18.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.cn, %.lr.ph.i.i.i.i.i.i.i.i
  %i.px = phi ptr [ %i.qb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.pw, %bb.cn ] ; 2 uses
  %i.py = phi ptr [ %i.qa, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.024.0.copyload.i.i, %bb.cn ]
  %.val9.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.px, align 16, !noalias !20337
  %i.pz = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.qa = getelementptr inbounds i8, ptr %i.py, i64 -256 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.pz to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge18.i.i.i.i.i.i.i.i

._crit_edge18.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.cn
  %.sroa.79.0.copyload.i.i.i.i = phi ptr [ %i.pw, %bb.cn ], [ %i.qb, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.6.0.copyload.i.i.i.i = phi ptr [ %.sroa.024.0.copyload.i.i, %bb.cn ], [ %i.qa, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.pv, %bb.cn ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.qc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.qd = zext nneg i16 %i.qc to i64
  %i.qe = sub nsw i64 0, %i.qd
  %i.qf = getelementptr inbounds [16 x i8], ptr %.sroa.6.0.copyload.i.i.i.i, i64 %i.qe ; 2 uses
  %i.qg = add i64 %i.pm, -1                       ; 2 uses
  %i.qh = getelementptr inbounds i8, ptr %i.qf, i64 -16
  %i.qi = load ptr, ptr %i.qh, align 8, !noalias !20338, !align !21, !noundef !10 ; 2 uses
  %i.qj = icmp eq i64 %i.qg, 0
  br i1 %i.qj, label %_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2b_6layout3abs3AbsEEEjEENtNtNtNtBY_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %._crit_edge18.i.i.i.i.i.i.i.i
  %i.qk = getelementptr inbounds i8, ptr %i.qf, i64 -8
  %i.ql = load i64, ptr %i.qk, align 8, !noalias !20338, !noundef !10
  %i.qm = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.qn = and i16 %i.qm, %.lcssa.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge18.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.sroa.017.0.i.i.i.i = phi ptr [ %.sroa.017.0.copyload18.sroa.speculated.i.i.i.i, %._crit_edge18.i.i.i.i.i.i.i.i.i ], [ %i.qi, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %.sroa.724.0.i.i.i.i = phi i64 [ %.sroa.724.0.copyload25.sroa.speculated.i.i.i.i, %._crit_edge18.i.i.i.i.i.i.i.i.i ], [ %i.ql, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.lcssa18.i.i.i.i.i.i.i = phi ptr [ %.lcssa17.i.i.i.i.i.i.i, %._crit_edge18.i.i.i.i.i.i.i.i.i ], [ %.sroa.79.0.copyload.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.lcssa1015.i.i.i.i.i.i.i = phi ptr [ %.lcssa1014.i.i.i.i.i.i.i, %._crit_edge18.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.0.copyload.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.qo = phi i16 [ %i.qz, %._crit_edge18.i.i.i.i.i.i.i.i.i ], [ %i.qn, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.qp = phi i64 [ %i.rc, %._crit_edge18.i.i.i.i.i.i.i.i.i ], [ %i.qg, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.qo, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge18.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.qq = phi ptr [ %i.qu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa18.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.qr = phi ptr [ %i.qt, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa1015.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.val9.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.qq, align 16, !noalias !20339
  %i.qs = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.qt = getelementptr inbounds i8, ptr %i.qr, i64 -256 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.qs to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge18.i.i.i.i.i.i.i.i.i

_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2b_6layout3abs3AbsEEEjEENtNtNtNtBY_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge18.i.i.i.i.i.i.i.i.i, %._crit_edge18.i.i.i.i.i.i.i.i
  %.sroa.017.1.i.i.i.i = phi ptr [ %i.qi, %._crit_edge18.i.i.i.i.i.i.i.i ], [ %.sroa.017.0.copyload18.sroa.speculated.i.i.i.i, %._crit_edge18.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.qv = icmp eq i64 %.sroa.413.0.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = or i1 %i.po, %i.qv
  br i1 %or.cond.i.i.i.i.i.i, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2b_6layout3abs3AbsEEEjEENtNtNtNtBY_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i) #41, !noalias !20340
  br label %bb.cq

._crit_edge18.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i = phi ptr [ %.lcssa18.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.qu, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa1014.i.i.i.i.i.i.i = phi ptr [ %.lcssa1015.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.qt, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.qo, %.lr.ph.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.qw = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.qx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.qy = zext nneg i16 %i.qx to i64
  %i.qz = and i16 %i.qw, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.ra = sub nsw i64 0, %i.qy
  %i.rb = getelementptr inbounds [16 x i8], ptr %.lcssa1014.i.i.i.i.i.i.i, i64 %i.ra ; 2 uses
  %i.rc = add i64 %i.qp, -1                       ; 2 uses
  %i.rd = getelementptr inbounds i8, ptr %i.rb, i64 -16
  %i.re = load ptr, ptr %i.rd, align 8, !noalias !20341, !align !21, !noundef !10
  %i.rf = getelementptr inbounds i8, ptr %i.rb, i64 -8
  %i.rg = load i64, ptr %i.rf, align 8, !noalias !20341, !noundef !10 ; 2 uses
  %i.rh = icmp ult i64 %i.rg, %.sroa.724.0.i.i.i.i
  %.sroa.017.0.copyload18.sroa.speculated.i.i.i.i = select i1 %i.rh, ptr %.sroa.017.0.i.i.i.i, ptr %i.re ; 2 uses
  %.sroa.724.0.copyload25.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.rg, i64 %.sroa.724.0.i.i.i.i)
  %i.ri = icmp eq i64 %i.rc, 0
  br i1 %i.ri, label %_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2b_6layout3abs3AbsEEEjEENtNtNtNtBY_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterINtNtBb_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2U_6layout3abs3AbsEEEjENCINvNvNtNtNtB9_6traits8iterator8Iterator10max_by_key3keyTB1S_jEjNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table24try_resolve_table_stroke0E0EB4m_4nextB5s_.exit.i.i.i.i: ; preds = %bb.cm
  %i.rj = icmp eq i64 %.sroa.413.0.i.i.i.i, 0
  %or.cond.i.i.i = or i1 %i.po, %i.rj
  br i1 %or.cond.i.i.i, label %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table24try_resolve_table_stroke.exit.i, label %bb.cp

bb.cp:                                            ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterINtNtBb_6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2U_6layout3abs3AbsEEEjENCINvNvNtNtNtB9_6traits8iterator8Iterator10max_by_key3keyTB1S_jEjNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table24try_resolve_table_stroke0E0EB4m_4nextB5s_.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i) #41, !noalias !20342
  br label %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table24try_resolve_table_stroke.exit.i

bb.cq:                                            ; preds = %bb.co, %_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB2b_6layout3abs3AbsEEEjEENtNtNtNtBY_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20343)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20344
  %.not.i.i.i23 = icmp eq ptr %.sroa.017.1.i.i.i.i, null
  br i1 %.not.i.i.i23, label %.thread37.i.i, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.cq
  %i.rk = load ptr, ptr %.sroa.017.1.i.i.i.i, align 8, !alias.scope !20343, !noalias !20345, !nonnull !10, !noundef !10
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  call fastcc void @_RNvXsi_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.rl) #40, !noalias !20346
  call void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsE17unwrap_or_default(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.n), !noalias !20346
  %.pr.i.i = load i64, ptr %i.p, align 8, !noalias !20333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20344
  %.not40.i.i = icmp eq i64 %.pr.i.i, -2
  br i1 %.not40.i.i, label %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table24try_resolve_table_stroke.exit.i, label %bb.cr

.thread37.i.i:                                    ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20344
  br label %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table24try_resolve_table_stroke.exit.i

bb.cr:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !20333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false), !noalias !20333
  %i.rm = load double, ptr %i.ba, align 8, !noalias !20333
  %i.rn = fdiv double %i.rm, 1.270000e+02
  %i.ro = fptrunc double %i.rn to float
  %.sroa.3.0.i.i = select i1 %i.pn, float %i.ro, float undef
  %.sroa.06.0.i.i = zext i1 %i.pn to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !20347)
  %i.rp = load i32, ptr %i.bb, align 8, !range !57, !alias.scope !20347, !noalias !20333, !noundef !10
  %i.rq = icmp samesign ult i32 %i.rp, 2
  br i1 %i.rq, label %bb.cs, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14paint_to_color.exit.i.i

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20348
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color6to_rgb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb)
          to label %.noexc50.i.i unwind label %bb.ct, !noalias !20346

.noexc50.i.i:                                     ; preds = %bb.cs
  %i.rr = load float, ptr %i.m, align 4, !noalias !20348, !noundef !10
  %i.rs = load float, ptr %i.bc, align 4, !noalias !20348, !noundef !10
  %i.rt = load float, ptr %i.bd, align 4, !noalias !20348, !noundef !10
  %i.ru = invoke i24 @_RNvMsa_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB5_13NaiveRgbColor7new_f32(float noundef %i.rr, float noundef %i.rs, float noundef %i.rt)
          to label %.noexc51.i.i unwind label %bb.ct, !noalias !20346

.noexc51.i.i:                                     ; preds = %.noexc50.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20348
  %i.rv = zext i24 %i.ru to i32
  %i.rw = shl nuw i32 %i.rv, 8
  %i.rx = or disjoint i32 %i.rw, 1
  br label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14paint_to_color.exit.i.i

bb.ct:                                            ; preds = %.noexc50.i.i, %bb.cs
  %i.ry = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(80) %i.o) #44
          to label %common.resume unwind label %bb.cy, !noalias !20346

_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14paint_to_color.exit.i.i: ; preds = %.noexc51.i.i, %bb.cr
  %.sroa.4.sroa.0.0.i.i.i = phi i32 [ %i.rx, %.noexc51.i.i ], [ 0, %bb.cr ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb)
          to label %bb.cw unwind label %bb.cu, !noalias !20346

bb.cu:                                            ; preds = %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14paint_to_color.exit.i.i
  %i.rz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.o, align 8, !range !24, !alias.scope !20349, !noalias !20333, !noundef !10 ; 2 uses
  %i.sa = icmp sgt i64 %.val2.i.i.i, 0
  br i1 %i.sa, label %bb.cv, label %common.resume

bb.cv:                                            ; preds = %bb.cu
  %.val3.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !20349, !noalias !20333, !nonnull !10, !noundef !10
  %i.sb = shl nuw i64 %.val2.i.i.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.sb, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !20346
  br label %common.resume

bb.cw:                                            ; preds = %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14paint_to_color.exit.i.i
  %.val.i.i158.i = load i64, ptr %i.o, align 8, !range !24, !alias.scope !20349, !noalias !20333, !noundef !10 ; 2 uses
  %i.sc = icmp sgt i64 %.val.i.i158.i, 0
  br i1 %i.sc, label %bb.cx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.cx:                                            ; preds = %bb.cw
  %.val1.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !20349, !noalias !20333, !nonnull !10, !noundef !10
  %i.sd = shl nuw i64 %.val.i.i158.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.sd, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !20346
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs8jFhWeO2DFb_9typst_pdf.exit.i.i

end_hunk_1
