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
  %i.ek = load i8, ptr %i.ej, align 8, !range !64, !noundef !10
  %7 = icmp eq i8 %i.ek, 0                        ; 2 uses
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
begin_hunk_1_@_RNvNtCs8jFhWeO2DFb_9typst_pdf5image12handle_image:bb.a
  store double 1.000000e+00, ptr %i.oy, align 8, !noalias !13793
  %i.oz = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store double %spec.store.select1.i.i.i, ptr %i.oz, align 8, !noalias !13793
  %i.pa = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store double 0.000000e+00, ptr %i.pa, align 8, !noalias !13793
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform10pre_concat(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bm)
          to label %.noexc75 unwind label %bb.aq

.noexc75:                                         ; preds = %.noexc74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !13793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !13793
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform10pre_concat(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bo)
          to label %.noexc76 unwind label %bb.aq

.noexc76:                                         ; preds = %.noexc75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !13793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %i.bp, i64 48, i1 false), !noalias !13792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !13793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !13793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !13793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !13793
  store double 1.000000e+00, ptr %i.bj, align 8, !noalias !13793
  %i.pb = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pb, i8 0, i64 16, i1 false), !noalias !13793
  store double -1.000000e+00, ptr %i.pc, align 8, !noalias !13793
  %i.pd = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pd, i8 0, i64 16, i1 false), !noalias !13793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !13793
  %i.pe = fneg double %3
  %i.pf = fcmp uno double %3, 0.000000e+00
  %spec.store.select3.i.i46.i = select i1 %i.pf, double 0.000000e+00, double %i.pe
  store double 1.000000e+00, ptr %i.bi, align 8, !noalias !13793
  %i.pg = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pg, i8 0, i64 16, i1 false), !noalias !13793
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.ph, align 8, !noalias !13793
  %i.pi = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store double %spec.store.select3.i.i46.i, ptr %i.pi, align 8, !noalias !13793
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform10pre_concat(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bk, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bi)
          to label %.noexc77 unwind label %bb.aq

.noexc77:                                         ; preds = %.noexc76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !13793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !13793
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform10pre_concat(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bk)
          to label %.noexc78 unwind label %bb.aq

.noexc78:                                         ; preds = %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !13793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %i.bl, i64 48, i1 false), !noalias !13792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !13793
  %i.pj = load <4 x double>, ptr %i.bq, align 8
  %.sroa.19.0..sroa_idx320 = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.pk = load <2 x double>, ptr %.sroa.19.0..sroa_idx320, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !13785
  br label %bb.ar

bb.am:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !13785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !13794
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform9rotate_at(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bh, double noundef f0x3FF921FB54442D18, double noundef 0.000000e+00, double noundef 0.000000e+00)
          to label %.noexc79 unwind label %bb.aq

.noexc79:                                         ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !13794
  store double 1.000000e+00, ptr %i.bg, align 8, !noalias !13794
  %i.pl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pl, i8 0, i64 16, i1 false), !noalias !13794
  store double -1.000000e+00, ptr %i.pm, align 8, !noalias !13794
  %i.pn = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pn, i8 0, i64 16, i1 false), !noalias !13794
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform10pre_concat(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bg)
          to label %.noexc80 unwind label %bb.aq

.noexc80:                                         ; preds = %.noexc79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !13794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !13794
  %i.po = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store i8 1, ptr %i.po, align 8, !noalias !13794
  %i.pp = getelementptr inbounds nuw i8, ptr %i.bf, i64 49
  store i8 0, ptr %i.pp, align 1, !noalias !13794
  %i.pq = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  store double %4, ptr %i.pq, align 8, !noalias !13794
  %i.pr = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  store double %3, ptr %i.pr, align 8, !noalias !13794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !13795
  store double -1.000000e+00, ptr %i.bc, align 8, !noalias !13795
  %i.ps = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ps, i8 0, i64 16, i1 false), !noalias !13795
  store double 1.000000e+00, ptr %i.pt, align 8, !noalias !13795
  %i.pu = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pu, i8 0, i64 16, i1 false), !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !13795
  %i.pv = fneg double %4
  %i.pw = fcmp uno double %4, 0.000000e+00
  %spec.store.select1.i.i47.i = select i1 %i.pw, double 0.000000e+00, double %i.pv
  store double 1.000000e+00, ptr %i.bb, align 8, !noalias !13795
  %i.px = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.px, i8 0, i64 16, i1 false), !noalias !13795
  store double 1.000000e+00, ptr %i.py, align 8, !noalias !13795
  %i.pz = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store double %spec.store.select1.i.i47.i, ptr %i.pz, align 8, !noalias !13795
  %i.qa = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store double 0.000000e+00, ptr %i.qa, align 8, !noalias !13795
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform10pre_concat(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bb)
          to label %.noexc81 unwind label %bb.aq

.noexc81:                                         ; preds = %.noexc80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !13795
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform10pre_concat(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bd)
          to label %.noexc82 unwind label %bb.aq

.noexc82:                                         ; preds = %.noexc81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !13795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.be, i64 48, i1 false), !noalias !13794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !13795
  %i.qb = load <4 x double>, ptr %i.bf, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.qc = load <2 x double>, ptr %.sroa.19.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !13785
  br label %bb.ar

bb.an:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  %i.qd = insertelement <2 x double> poison, double %3, i64 0
  %i.qe = insertelement <2 x double> %i.qd, double %4, i64 1
  %i.qf = fdiv <2 x double> %i.qe, splat (double 1.270000e+02)
  %i.qg = fptrunc <2 x double> %i.qf to <2 x float> ; 2 uses
  %i.qh = extractelement <2 x float> %i.qg, i64 0
  %i.qi = extractelement <2 x float> %i.qg, i64 1
  invoke void @_RNvMs_NtCsidf7BFzONoc_6krilla4geomNtB4_4Size7from_wh(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.dd, float noundef %i.qh, float noundef %i.qi)
          to label %_RNvXs_NtCs8jFhWeO2DFb_9typst_pdf4utilINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtBE_3abs3AbsENtB4_7SizeExt9to_krilla.exit unwind label %bb.aq

bb.ao:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  %i.qj = insertelement <2 x double> poison, double %3, i64 0
  %i.qk = insertelement <2 x double> %i.qj, double %4, i64 1
  %i.ql = fdiv <2 x double> %i.qk, splat (double 1.270000e+02)
  %i.qm = fptrunc <2 x double> %i.ql to <2 x float> ; 2 uses
  %i.qn = extractelement <2 x float> %i.qm, i64 0
  %i.qo = extractelement <2 x float> %i.qm, i64 1
  invoke void @_RNvMs_NtCsidf7BFzONoc_6krilla4geomNtB4_4Size7from_wh(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.dc, float noundef %i.qn, float noundef %i.qo)
          to label %_RNvXs_NtCs8jFhWeO2DFb_9typst_pdf4utilINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesNtNtBE_3abs3AbsENtB4_7SizeExt9to_krilla.exit85 unwind label %bb.aq

.body261:                                         ; preds = %bb.nb, %bb.nc, %bb.aq, %.body.i167, %.body
  %.pn19 = phi { ptr, i32 } [ %eh.lpad-body.i168, %.body.i167 ], [ %.pn, %.body ], [ %i.qp, %bb.aq ], [ %i.bns, %bb.nc ], [ %i.bns, %bb.nb ] ; 2 uses
  br i1 %.sroa.4.0.i, label %bb.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4tags9TagHandleEBF_.exit

bb.ap:                                            ; preds = %.body261
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface10end_tagged(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %5)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4tags9TagHandleEBF_.exit unwind label %bb.jf

bb.aq:                                            ; preds = %.invoke763, %bb.ne, %_RNvXNvCs6xpQEr8gLsQ_11typst_utils5deferINtB2_11DeferHandleNtNtCsidf7BFzONoc_6krilla7surface7SurfaceNCNvNtCs8jFhWeO2DFb_9typst_pdf5image12handle_images_0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1F_.exit.i145, %_RNvXNvCs6xpQEr8gLsQ_11typst_utils5deferINtB2_11DeferHandleNtNtCsidf7BFzONoc_6krilla7surface7SurfaceNCNvNtCs8jFhWeO2DFb_9typst_pdf5image12handle_images_0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1F_.exit.i, %bb.ao, %bb.an, %.noexc81, %.noexc80, %.noexc79, %bb.am, %.noexc77, %.noexc76, %.noexc75, %.noexc74, %.noexc73, %bb.al, %.noexc71, %.noexc70, %.noexc69, %bb.ak, %.noexc67, %bb.aj, %.noexc65, %_RNCNvNtCs8jFhWeO2DFb_9typst_pdf5image14exif_transform0B5_.exit45.i, %.noexc63, %.noexc62, %.noexc61, %_RNCNvNtCs8jFhWeO2DFb_9typst_pdf5image14exif_transform0B5_.exit42.i, %.noexc59, %_RNCNvNtCs8jFhWeO2DFb_9typst_pdf5image14exif_transform0B5_.exit39.i, %bb.ji, %bb.ar
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %.body261

bb.ar:                                            ; preds = %.noexc82, %.noexc78, %.noexc72, %.noexc68, %.noexc66, %.noexc64, %.noexc60, %bb.ag, %bb.ai, %bb.ah
  %.sroa.33.0 = phi double [ %4, %bb.ag ], [ %4, %.noexc60 ], [ %4, %.noexc64 ], [ %4, %.noexc66 ], [ %3, %.noexc68 ], [ %3, %.noexc72 ], [ %3, %.noexc78 ], [ %3, %.noexc82 ], [ %4, %bb.ai ], [ %4, %bb.ah ]
  %.sroa.23.0 = phi double [ %3, %bb.ag ], [ %3, %.noexc60 ], [ %3, %.noexc64 ], [ %3, %.noexc66 ], [ %4, %.noexc68 ], [ %4, %.noexc72 ], [ %4, %.noexc78 ], [ %4, %.noexc82 ], [ %3, %bb.ai ], [ %3, %bb.ah ]
  %i.qq = phi <4 x double> [ <double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00>, %bb.ag ], [ %i.mc, %.noexc60 ], [ %i.mz, %.noexc64 ], [ %i.nn, %.noexc66 ], [ %i.ns, %.noexc68 ], [ %i.oj, %.noexc72 ], [ %i.pj, %.noexc78 ], [ %i.qb, %.noexc82 ], [ <double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00>, %bb.ai ], [ <double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00>, %bb.ah ]
  %i.qr = phi <2 x double> [ zeroinitializer, %bb.ag ], [ %i.md, %.noexc60 ], [ %i.na, %.noexc64 ], [ %i.no, %.noexc66 ], [ %i.nt, %.noexc68 ], [ %i.ok, %.noexc72 ], [ %i.pk, %.noexc78 ], [ %i.qc, %.noexc82 ], [ zeroinitializer, %bb.ai ], [ zeroinitializer, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  %i.qs = fptrunc <4 x double> %i.qq to <4 x float>
  %i.qt = fdiv <2 x double> %i.qr, splat (double 1.270000e+02)
  %i.qu = shufflevector <4 x float> %i.qs, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.qu, ptr %i.dj, align 16
  %.sroa.712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.qv = fptrunc <2 x double> %i.qt to <2 x float>
  store <2 x float> %i.qv, ptr %.sroa.712.0..sroa_idx, align 16
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface14push_transform(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.dj)
          to label %bb.as unwind label %bb.aq

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  store ptr %5, ptr %i.di, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  store i8 1, ptr %i.qw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  %i.qx = load ptr, ptr %i.lh, align 8, !nonnull !10, !noundef !10
  %i.qy = atomicrmw add ptr %i.qx, i64 1 monotonic, align 8
  %i.qz = icmp slt i64 %i.qy, 0
  br i1 %i.qz, label %bb.hp, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ra = load ptr, ptr %i.lh, align 8, !nonnull !10, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13796)
  %i.rb = zext i1 %7 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !13796
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ba, i8 0, i64 16, i1 false), !alias.scope !13797, !noalias !13796
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !13797, !noalias !13796
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !13797, !noalias !13796
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !13797, !noalias !13796
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @47, i64 32, i1 false), !noalias !13796
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 80 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !13797, !noalias !13796
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 88 ; 2 uses
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !13797, !noalias !13796
  call void @llvm.experimental.noalias.scope.decl(metadata !13798)
  call void @llvm.experimental.noalias.scope.decl(metadata !13799)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !13796
  store ptr %i.ra, ptr %i.az, align 8, !noalias !13800
  %i.rc = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  store i8 %i.rb, ptr %i.rc, align 8, !noalias !13800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !13800
  store i64 8317987319222330741, ptr %i.ay, align 8, !noalias !13800
  %.sroa.3.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i3.i, align 8, !noalias !13800
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !noalias !13800
  %.sroa.5.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 3 uses
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !noalias !13800
  %.sroa.6.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 56 ; 3 uses
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 64 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i6.i, i8 0, i64 40, i1 false), !noalias !13800
  invoke fastcc void @_RINvXs_NtNtNtCsdaEETE4DqmE_13typst_library9visualize5image6rasterNtB5_16RasterImageInnerNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.rd, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ay)
          to label %.noexc36.i.i unwind label %.body.thread18.i.i, !noalias !13800

.noexc36.i.i:                                     ; preds = %bb.at
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 2 uses
  %i.re = zext i1 %7 to i64                       ; 2 uses
  %i.rf = load i64, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !13801, !noalias !13800, !noundef !10
  %i.rg = add i64 %i.rf, 1
  store i64 %i.rg, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !13801, !noalias !13800
  %i.rh = load i64, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !13801, !noalias !13800, !noundef !10 ; 4 uses
  %i.ri = sub i64 8, %i.rh                        ; 2 uses
  %i.rj = shl i64 %i.rh, 3
  %i.rk = and i64 %i.rj, 56
  %i.rl = shl nuw nsw i64 %i.re, %i.rk
  %i.rm = load i64, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !13801, !noalias !13800, !noundef !10
  %i.rn = or i64 %i.rl, %i.rm                     ; 3 uses
  store i64 %i.rn, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !13801, !noalias !13800
  %i.ro = icmp ugt i64 %i.ri, 1
  br i1 %i.ro, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.noexc36.i.i
  %i.rp = load i64, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !13801, !noalias !13800, !noundef !10
  %i.rq = xor i64 %i.rp, %i.rn                    ; 3 uses
  %i.rr = load i64, ptr %i.ay, align 8, !alias.scope !13802, !noalias !13800, !noundef !10
  %i.rs = load i64, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !alias.scope !13802, !noalias !13800, !noundef !10 ; 3 uses
  %i.rt = add i64 %i.rs, %i.rr                    ; 3 uses
  %i.ru = call noundef i64 @llvm.fshl.i64(i64 %i.rs, i64 %i.rs, i64 13)
  %i.rv = xor i64 %i.ru, %i.rt                    ; 3 uses
  %i.rw = call noundef i64 @llvm.fshl.i64(i64 %i.rt, i64 %i.rt, i64 32)
  %i.rx = load i64, ptr %.sroa.3.0..sroa_idx.i3.i, align 8, !alias.scope !13802, !noalias !13800, !noundef !10
  %i.ry = add i64 %i.rx, %i.rq                    ; 2 uses
  %i.rz = call noundef i64 @llvm.fshl.i64(i64 %i.rq, i64 %i.rq, i64 16)
  %i.sa = xor i64 %i.ry, %i.rz                    ; 3 uses
  %i.sb = add i64 %i.sa, %i.rw                    ; 2 uses
  %i.sc = call noundef i64 @llvm.fshl.i64(i64 %i.sa, i64 %i.sa, i64 21)
  %i.sd = xor i64 %i.sc, %i.sb
  store i64 %i.sd, ptr %.sroa.5.0..sroa_idx.i5.i, align 8, !alias.scope !13802, !noalias !13800
  %i.se = add i64 %i.ry, %i.rv                    ; 3 uses
  %i.sf = call noundef i64 @llvm.fshl.i64(i64 %i.rv, i64 %i.rv, i64 17)
  %i.sg = xor i64 %i.se, %i.sf
  store i64 %i.sg, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !alias.scope !13802, !noalias !13800
  %i.sh = call noundef i64 @llvm.fshl.i64(i64 %i.se, i64 %i.se, i64 32)
  store i64 %i.sh, ptr %.sroa.3.0..sroa_idx.i3.i, align 8, !alias.scope !13802, !noalias !13800
  %i.si = xor i64 %i.sb, %i.rn
  store i64 %i.si, ptr %i.ay, align 8, !alias.scope !13801, !noalias !13800
  %i.sj = add i64 %i.rh, -7
  %i.sk = shl nuw nsw i64 %i.ri, 3
  %i.sl = lshr i64 %i.re, %i.sk
  store i64 %i.sl, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !13801, !noalias !13800
  br label %bb.aw

bb.av:                                            ; preds = %.noexc36.i.i
  %i.sm = add i64 %i.rh, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.sm, %bb.av ], [ %i.sj, %bb.au ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !13801, !noalias !13800
  %i.sn = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ay), !noalias !13800 ; 2 uses
  %i.so = extractvalue { i64, i64 } %i.sn, 0      ; 3 uses
  %i.sp = extractvalue { i64, i64 } %i.sn, 1      ; 3 uses
  %i.sq = zext i64 %i.so to i128
  %i.sr = zext i64 %i.sp to i128
  %i.ss = shl nuw i128 %i.sr, 64
  %i.st = or disjoint i128 %i.ss, %i.sq           ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !13800
  %i.su = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, i64 152) acquire, align 8, !noalias !13800
  %i.sv = icmp eq i32 %i.su, 0
  br i1 %i.sv, label %.noexc.i.i, label %bb.ax, !prof !16

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !13800
  store ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, ptr %i.av, align 8, !noalias !13800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !13800
  store ptr %i.av, ptr %i.au, align 8, !noalias !13800
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, i64 152), i1 noundef zeroext true, ptr noundef nonnull %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23)
          to label %.noexc37.i.i unwind label %.body.thread18.i.i, !noalias !13803, !inline_history !13147

.noexc37.i.i:                                     ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !13800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !13800
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc37.i.i, %bb.aw
  %i.sw = load atomic i64, ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE monotonic, align 8, !noalias !13800 ; 4 uses
  %i.sx = and i64 %i.sw, 8
  %i.sy = icmp ne i64 %i.sx, 0
  %i.sz = icmp ugt i64 %i.sw, -17
  %or.cond.i.i.i = or i1 %i.sz, %i.sy
  br i1 %or.cond.i.i.i, label %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, label %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, !prof !36

_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i: ; preds = %.noexc.i.i
  %i.ta = add nuw i64 %i.sw, 16
  %i.tb = cmpxchg weak ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, i64 %i.sw, i64 %i.ta acquire monotonic, align 8, !noalias !13800
  %i.tc = extractvalue { i64, i1 } %i.tb, 1
  br i1 %i.tc, label %bb.ay, label %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, !prof !28

_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i: ; preds = %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, %.noexc.i.i
  %i.td = invoke noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %bb.ay unwind label %.body.thread18.i.i, !noalias !13803 ; 0 uses

bb.ay:                                            ; preds = %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13804)
  %i.te = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, i64 112), align 8, !alias.scope !13804, !noalias !13800, !noundef !10
  %i.tf = icmp eq i64 %i.te, 0
  br i1 %i.tf, label %.loopexit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.tg = mul i64 %i.so, -1065810590584100411
  %i.th = add i64 %i.tg, %i.sp
  %i.ti = mul i64 %i.th, -1065810590584100411     ; 2 uses
  %i.tj = call noundef i64 @llvm.fshl.i64(i64 %i.ti, i64 %i.ti, i64 26) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13805)
  call void @llvm.experimental.noalias.scope.decl(metadata !13806)
  %i.tk = lshr i64 %i.tj, 57
  %i.tl = trunc nuw nsw i64 %i.tk to i8
  %i.tm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, i64 96), align 8, !alias.scope !13807, !noalias !13808, !noundef !10 ; 2 uses
  %i.tn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, i64 88), align 8, !alias.scope !13807, !noalias !13808, !nonnull !10, !noundef !10 ; 2 uses
  %i.to = insertelement <16 x i8> poison, i8 %i.tl, i64 0
  %i.tp = shufflevector <16 x i8> %i.to, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bd, %bb.az
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.az ], [ %i.uo, %bb.bd ]
  %.pn.i.i.i.i.i = phi i64 [ %i.tj, %bb.az ], [ %i.up, %bb.bd ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.tm ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.tq, align 1, !noalias !13809 ; 2 uses
  %i.tr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.tp
  %i.ts = bitcast <16 x i1> %i.tr to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.ts, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ba, %bb.bc
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.un, %bb.bc ], [ %i.ts, %bb.ba ] ; 3 uses
  %i.tt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.tu = zext nneg i16 %i.tt to i64
  %i.tv = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.tu
  %i.tw = and i64 %i.tv, %i.tm
  %i.tx = sub nsw i64 0, %i.tw
  %i.ty = getelementptr inbounds [32 x i8], ptr %i.tn, i64 %i.tx ; 2 uses
  %i.tz = getelementptr inbounds i8, ptr %i.ty, i64 -32
  %.val2.i.i.i.i.i.i = load i128, ptr %i.tz, align 16, !noalias !13810, !noundef !10
  %i.ua = icmp eq i128 %i.st, %.val2.i.i.i.i.i.i
  br i1 %i.ua, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs8jFhWeO2DFb_9typst_pdf.exit.preheader.i.i.i, label %bb.bc, !prof !16

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs8jFhWeO2DFb_9typst_pdf.exit.preheader.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.sroa.09.0.in19.i.i.i = getelementptr inbounds i8, ptr %i.ty, i64 -16
  %.sroa.09.020.i.i.i = load i64, ptr %.sroa.09.0.in19.i.i.i, align 8, !noalias !13803, !noundef !10 ; 5 uses
  %i.ub = icmp sgt i64 %.sroa.09.020.i.i.i, -1
  br i1 %i.ub, label %.lr.ph.i.i.i91, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs8jFhWeO2DFb_9typst_pdf.exit._crit_edge.i.i.i

.lr.ph.i.i.i91:                                   ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs8jFhWeO2DFb_9typst_pdf.exit.preheader.i.i.i
  %.val16.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, i64 24), align 8, !noalias !13800, !noundef !10 ; 2 uses
  %.val15.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, i64 16), align 8, !noalias !13800, !nonnull !10 ; 2 uses
  %i.uc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, i64 144), align 8, !noalias !13800
  %.fr22.i.i.i = freeze i64 %i.uc
  %i.ud = icmp eq i64 %.fr22.i.i.i, 0
  %i.ue = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, i64 128), align 8, !noalias !13800 ; 2 uses
  %i.uf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, i64 120), align 8, !noalias !13800, !nonnull !10 ; 2 uses
  br i1 %i.ud, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i91
  %i.ug = icmp ult i64 %.sroa.09.020.i.i.i, %.val16.i.i.i
  br i1 %i.ug, label %bb.bb, label %.split.us.i.invoke.i.i, !prof !16

bb.bb:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.uh = getelementptr inbounds nuw [32 x i8], ptr %.val15.i.i.i, i64 %.sroa.09.020.i.i.i
  %i.ui = load i64, ptr %i.uh, align 8, !range !29, !noalias !13811, !noundef !10
  %.not.i19.us.i.i.i = icmp eq i64 %i.ui, 2
  br i1 %.not.i19.us.i.i.i, label %.split.us.i.invoke.i.i, label %.loopexit.i.i, !prof !13

._crit_edge.i.i.i.i.i:                            ; preds = %bb.bc, %bb.ba
  %i.uj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.uk = bitcast <16 x i1> %i.uj to i16
  %i.ul = icmp eq i16 %i.uk, 0
  br i1 %i.ul, label %bb.bd, label %.loopexit.i.i, !prof !13

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.um = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.un = and i16 %i.um, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.un, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.bd:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.uo = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.up = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.uo
  br label %bb.ba

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs8jFhWeO2DFb_9typst_pdf.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i25.i.i.i
  %.sroa.09.0.in.i.i.i = getelementptr inbounds i8, ptr %i.vp, i64 -16
  %.sroa.09.0.i.i.i = load i64, ptr %.sroa.09.0.in.i.i.i, align 8, !noalias !13803, !noundef !10 ; 3 uses
  %i.uq = icmp sgt i64 %.sroa.09.0.i.i.i, -1
  br i1 %i.uq, label %.lr.ph.split.i.i.i, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs8jFhWeO2DFb_9typst_pdf.exit._crit_edge.i.i.i

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs8jFhWeO2DFb_9typst_pdf.exit._crit_edge.i.i.i: ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs8jFhWeO2DFb_9typst_pdf.exit.loopexit.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs8jFhWeO2DFb_9typst_pdf.exit.preheader.i.i.i
  %.sroa.09.0.lcssa.i.i.i = phi i64 [ %.sroa.09.020.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs8jFhWeO2DFb_9typst_pdf.exit.preheader.i.i.i ], [ %.sroa.09.0.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs8jFhWeO2DFb_9typst_pdf.exit.loopexit.i.i.i ]
  %i.ur = xor i64 %.sroa.09.0.lcssa.i.i.i, -1     ; 2 uses
  %i.us = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, i64 64), align 8, !noalias !13800, !noundef !10
  %i.ut = icmp ugt i64 %i.us, %i.ur
  br i1 %i.ut, label %bb.be, label %.split.us.i.invoke.i.i, !prof !16

bb.be:                                            ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapoNtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getoECs8jFhWeO2DFb_9typst_pdf.exit._crit_edge.i.i.i
  %i.uu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8jFhWeO2DFb_9typst_pdf5image14convert_raster7___CACHE, i64 56), align 8, !noalias !13800, !nonnull !10, !noundef !10
  %i.uv = getelementptr inbounds nuw [72 x i8], ptr %i.uu, i64 %i.ur ; 4 uses
  %i.uw = load i64, ptr %i.uv, align 8, !range !29, !noalias !13803, !noundef !10
end_hunk_1
begin_hunk_2_@_RNvXsl_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf:bb.a
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !23396, !noalias !23398, !nonnull !10, !noundef !10
  %i.cf = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !23395, !noalias !23397, !nonnull !10, !noundef !10
  %i.ch = icmp eq i64 %i.bz, 0
  br i1 %i.ch, label %.loopexit.i13.i.i.i, label %.lr.ph.i.i9.i.i.i

bb.v:                                             ; preds = %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i11.i.i.i
  %i.ci = add nuw i64 %.sroa.01.06.i.i10.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i12.i.i.i = icmp eq i64 %i.ci, %i.bz
  br i1 %exitcond.not.i.i12.i.i.i, label %.loopexit.i13.i.i.i, label %.lr.ph.i.i9.i.i.i

.lr.ph.i.i9.i.i.i:                                ; preds = %bb.u, %bb.v
  %.sroa.01.06.i.i10.i.i.i = phi i64 [ %i.ci, %bb.v ], [ 0, %bb.u ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %.sroa.01.06.i.i10.i.i.i ; 2 uses
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %.sroa.01.06.i.i10.i.i.i ; 2 uses
  %i.cl = tail call fastcc noundef zeroext i1 @_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ck) #40, !noalias !23399
  br i1 %i.cl, label %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i11.i.i.i, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i11.i.i.i: ; preds = %.lr.ph.i.i9.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.co = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn), !noalias !23399
  br i1 %i.co, label %bb.v, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

.loopexit.i13.i.i.i:                              ; preds = %bb.v, %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 88
  %i.cq = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 88
  %i.cr = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cq), !noalias !23394
  br i1 %i.cr, label %bb.w, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.w:                                             ; preds = %.loopexit.i13.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 96
  %i.ct = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 96
  %i.cu = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct), !noalias !23394
  br i1 %i.cu, label %bb.x, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 104
  %i.cw = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 104
  %i.cx = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cw), !noalias !23394
  br i1 %i.cx, label %bb.y, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 112
  %i.cz = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 112
  %i.da = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cz), !noalias !23394
  br i1 %i.da, label %bb.z, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.z:                                             ; preds = %bb.y
  %i.db = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 120
  %i.dc = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 120
  %i.dd = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dc), !noalias !23394
  br i1 %i.dd, label %bb.aa, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 128
  %i.df = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 128
  %i.dg = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.de, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.df), !noalias !23394
  br i1 %i.dg, label %bb.ab, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dh = load i64, ptr %i.br, align 8, !range !30, !alias.scope !23395, !noalias !23397, !noundef !10
  %i.di = icmp ne i64 %i.dh, -1                   ; 2 uses
  %i.dj = load i64, ptr %i.bs, align 8, !range !30, !alias.scope !23396, !noalias !23398, !noundef !10
  %i.dk = icmp eq i64 %i.dj, -1                   ; 3 uses
  %not..i14.i.i.i = xor i1 %i.dk, true
  %i.dl = xor i1 %i.di, %i.dk
  br i1 %i.dl, label %bb.ac, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.di, label %.split.i19.i.i.i, label %bb.ad

.split.i19.i.i.i:                                 ; preds = %bb.ac
  tail call void @llvm.assume(i1 %not..i14.i.i.i)
  %i.dm = tail call fastcc noundef zeroext i1 @_RNvXsU_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12SpotColorantNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bs) #40, !noalias !23394
  br i1 %i.dm, label %bb.ae, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.assume(i1 %i.dk)
  %i.dn = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24
  %i.do = load i8, ptr %i.dn, align 8, !range !33, !alias.scope !23395, !noalias !23397, !noundef !10
  %i.dp = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 24
  %i.dq = load i8, ptr %i.dp, align 8, !range !33, !alias.scope !23396, !noalias !23398, !noundef !10
  %i.dr = icmp eq i8 %i.do, %i.dq
  br i1 %i.dr, label %bb.ae, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.ae:                                            ; preds = %bb.ad, %.split.i19.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 137
  %i.dt = load i8, ptr %i.ds, align 1, !range !64, !alias.scope !23395, !noalias !23397, !noundef !10 ; 2 uses
  %i.du = icmp ne i8 %i.dt, 2                     ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 137
  %i.dw = load i8, ptr %i.dv, align 1, !range !64, !alias.scope !23396, !noalias !23398, !noundef !10 ; 2 uses
  %i.dx = icmp ne i8 %i.dw, 2                     ; 2 uses
  %i.dy = xor i1 %i.du, %i.dx
  br i1 %i.dy, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %.split19

.split19:                                         ; preds = %bb.ae
  %.not.i16.i.i.i = icmp ne i8 %i.dt, %i.dw
  %i.dz = and i1 %i.dx, %.not.i16.i.i.i
  %spec.select.i18.i.i.i.not = and i1 %i.du, %i.dz
  br i1 %spec.select.i18.i.i.i.not, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread17

bb.af:                                            ; preds = %bb.j
  %i.ea = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23401)
  %i.ec = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 112
  %i.ed = load i8, ptr %i.ec, align 8, !range !11, !alias.scope !23400, !noalias !23402, !noundef !10
  %i.ee = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 112
  %i.ef = load i8, ptr %i.ee, align 8, !range !11, !alias.scope !23401, !noalias !23403, !noundef !10
  %i.eg = icmp eq i8 %i.ed, %i.ef
  br i1 %i.eg, label %bb.ag, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.ag:                                            ; preds = %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 80
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !23400, !noalias !23402, !noundef !10 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 80
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !23401, !noalias !23403, !noundef !10
  %i.el = icmp eq i64 %i.ei, %i.ek
  br i1 %i.el, label %bb.ah, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.ah:                                            ; preds = %bb.ag
  %i.em = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 72
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !23401, !noalias !23403, !nonnull !10, !noundef !10
  %i.eo = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !23400, !noalias !23402, !nonnull !10, !noundef !10
  %i.eq = icmp eq i64 %i.ei, 0
  br i1 %i.eq, label %.loopexit.i25.i.i.i, label %.lr.ph.i.i21.i.i.i

bb.ai:                                            ; preds = %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i23.i.i.i
  %i.er = add nuw i64 %.sroa.01.06.i.i22.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i24.i.i.i = icmp eq i64 %i.er, %i.ei
  br i1 %exitcond.not.i.i24.i.i.i, label %.loopexit.i25.i.i.i, label %.lr.ph.i.i21.i.i.i

.lr.ph.i.i21.i.i.i:                               ; preds = %bb.ah, %bb.ai
  %.sroa.01.06.i.i22.i.i.i = phi i64 [ %i.er, %bb.ai ], [ 0, %bb.ah ] ; 3 uses
  %i.es = getelementptr inbounds nuw [32 x i8], ptr %i.ep, i64 %.sroa.01.06.i.i22.i.i.i ; 2 uses
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.en, i64 %.sroa.01.06.i.i22.i.i.i ; 2 uses
  %i.eu = tail call fastcc noundef zeroext i1 @_RNvXsw_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5ColorNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.es, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.et) #40, !noalias !23404
  br i1 %i.eu, label %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i23.i.i.i, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i23.i.i.i: ; preds = %.lr.ph.i.i21.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ex = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ev, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ew), !noalias !23404
  br i1 %i.ex, label %bb.ai, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

.loopexit.i25.i.i.i:                              ; preds = %bb.ai, %bb.ah
  %i.ey = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 88
  %i.ez = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 88
  %i.fa = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ey, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ez), !noalias !23394
  br i1 %i.fa, label %bb.aj, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.aj:                                            ; preds = %.loopexit.i25.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 96
  %i.fc = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 96
  %i.fd = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fc), !noalias !23394
  br i1 %i.fd, label %bb.ak, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fe = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 104
  %i.ff = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 104
  %i.fg = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fe, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ff), !noalias !23394
  br i1 %i.fg, label %bb.al, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.al:                                            ; preds = %bb.ak
  %i.fh = load i64, ptr %i.ea, align 8, !range !30, !alias.scope !23400, !noalias !23402, !noundef !10
  %i.fi = icmp ne i64 %i.fh, -1                   ; 2 uses
  %i.fj = load i64, ptr %i.eb, align 8, !range !30, !alias.scope !23401, !noalias !23403, !noundef !10
  %i.fk = icmp eq i64 %i.fj, -1                   ; 3 uses
  %not..i26.i.i.i = xor i1 %i.fk, true
  %i.fl = xor i1 %i.fi, %i.fk
  br i1 %i.fl, label %bb.am, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.am:                                            ; preds = %bb.al
  br i1 %i.fi, label %.split.i31.i.i.i, label %bb.an

.split.i31.i.i.i:                                 ; preds = %bb.am
  tail call void @llvm.assume(i1 %not..i26.i.i.i)
  %i.fm = tail call fastcc noundef zeroext i1 @_RNvXsU_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12SpotColorantNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ea, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.eb) #40, !noalias !23394
  br i1 %i.fm, label %bb.ao, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.an:                                            ; preds = %bb.am
  tail call void @llvm.assume(i1 %i.fk)
  %i.fn = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24
  %i.fo = load i8, ptr %i.fn, align 8, !range !33, !alias.scope !23400, !noalias !23402, !noundef !10
  %i.fp = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 24
  %i.fq = load i8, ptr %i.fp, align 8, !range !33, !alias.scope !23401, !noalias !23403, !noundef !10
  %i.fr = icmp eq i8 %i.fo, %i.fq
  br i1 %i.fr, label %bb.ao, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.ao:                                            ; preds = %bb.an, %.split.i31.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 113
  %i.ft = load i8, ptr %i.fs, align 1, !range !64, !alias.scope !23400, !noalias !23402, !noundef !10 ; 2 uses
  %i.fu = icmp ne i8 %i.ft, 2                     ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 113
  %i.fw = load i8, ptr %i.fv, align 1, !range !64, !alias.scope !23401, !noalias !23403, !noundef !10 ; 2 uses
  %i.fx = icmp ne i8 %i.fw, 2                     ; 2 uses
  %i.fy = xor i1 %i.fu, %i.fx
  br i1 %i.fy, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.ap:                                            ; preds = %bb.d
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val5.i.i = load ptr, ptr %i.fz, align 8, !alias.scope !23387, !noalias !23388, !nonnull !10, !noundef !10 ; 10 uses
  %.val6.i.i = load ptr, ptr %i.ga, align 8, !alias.scope !23388, !noalias !23387, !nonnull !10, !noundef !10 ; 10 uses
  %i.gb = icmp eq ptr %.val5.i.i, %.val6.i.i
  br i1 %i.gb, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread17, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gc = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16 ; 2 uses
  %i.ge = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !23394, !nonnull !10, !noundef !10
  %i.gf = tail call noundef i128 %i.ge(ptr noundef nonnull align 16 %i.gc), !noalias !23394, !inline_history !23360 ; 2 uses
  %i.gg = icmp eq i128 %i.gf, 0
  br i1 %i.gg, label %bb.ar, label %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.gh = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 32
  %i.gi = tail call fastcc noundef i128 @_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gh), !noalias !23394, !inline_history !5 ; 2 uses
  %i.gj = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !noalias !23394, !nonnull !10, !noundef !10
  tail call void %i.gj(ptr noundef nonnull align 16 %i.gc, i128 noundef %i.gi), !noalias !23394, !inline_history !23361
  br label %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.sroa.0.0.i.i.i.i.i.i = phi i128 [ %i.gi, %bb.ar ], [ %i.gf, %bb.aq ]
  %i.gk = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !23394, !nonnull !10, !noundef !10
  %i.gl = tail call noundef i128 %i.gk(ptr noundef nonnull align 16 %i.gd), !noalias !23394, !inline_history !23360 ; 2 uses
  %i.gm = icmp eq i128 %i.gl, 0
  br i1 %i.gm, label %bb.as, label %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs8jFhWeO2DFb_9typst_pdf.exit4.i.i.i.i.i

bb.as:                                            ; preds = %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 32
  %i.go = tail call fastcc noundef i128 @_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gn), !noalias !23394, !inline_history !5 ; 2 uses
  %i.gp = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !noalias !23394, !nonnull !10, !noundef !10
  tail call void %i.gp(ptr noundef nonnull align 16 %i.gd, i128 noundef %i.go), !noalias !23394, !inline_history !23361
  br label %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs8jFhWeO2DFb_9typst_pdf.exit4.i.i.i.i.i

_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs8jFhWeO2DFb_9typst_pdf.exit4.i.i.i.i.i: ; preds = %bb.as, %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  %.sroa.0.0.i3.i.i.i.i.i = phi i128 [ %i.go, %bb.as ], [ %i.gl, %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i ]
  %i.gq = icmp eq i128 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i3.i.i.i.i.i
  br i1 %i.gq, label %bb.at, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.at:                                            ; preds = %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs8jFhWeO2DFb_9typst_pdf.exit4.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 80
  %i.gs = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 80
  %i.gt = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gs), !noalias !23394
  br i1 %i.gt, label %bb.au, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.au:                                            ; preds = %bb.at
  %i.gu = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 88
  %i.gv = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 88
  %i.gw = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gv), !noalias !23394
  br i1 %i.gw, label %bb.av, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.av:                                            ; preds = %bb.au
  %i.gx = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 96
  %i.gy = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 96
  %i.gz = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gy), !noalias !23394
  br i1 %i.gz, label %bb.aw, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.aw:                                            ; preds = %bb.av
  %i.ha = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 104
  %i.hb = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 104
  %i.hc = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ha, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hb), !noalias !23394
  br i1 %i.hc, label %bb.ax, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.ax:                                            ; preds = %bb.aw
  %i.hd = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 112
  %i.he = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 112
  %i.hf = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.he), !noalias !23394
  br i1 %i.hf, label %bb.ay, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.ay:                                            ; preds = %bb.ax
  %i.hg = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 120
  %i.hh = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 120
  %i.hi = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hh), !noalias !23394
  br i1 %i.hi, label %bb.az, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.az:                                            ; preds = %bb.ay
  %i.hj = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 128
  %i.hk = load i8, ptr %i.hj, align 16, !range !64, !noalias !23394, !noundef !10 ; 2 uses
  %i.hl = icmp ne i8 %i.hk, 2                     ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 128
  %i.hn = load i8, ptr %i.hm, align 16, !range !64, !noalias !23394, !noundef !10 ; 2 uses
  %i.ho = icmp ne i8 %i.hn, 2                     ; 2 uses
  %i.hp = xor i1 %i.hl, %i.ho
  br i1 %i.hp, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %.split

.split:                                           ; preds = %bb.az
  %2 = icmp ne i8 %i.hk, %i.hn
  %3 = and i1 %i.ho, %2
  %spec.select.i.i.i.i.i.not = and i1 %i.hl, %3
  br i1 %spec.select.i.i.i.i.i.not, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread17

_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.ao
  %.not.i.i.i.i.i = icmp ne i8 %i.ft, %i.fw
  %i.hq = and i1 %i.fx, %.not.i.i.i.i.i
  %spec.select.i.i.i.i.i.not.a = and i1 %i.fu, %i.hq
  br i1 %spec.select.i.i.i.i.i.not.a, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread17

_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread17: ; preds = %bb.i, %bb.h, %bb.j, %bb.ap, %bb.b, %.split21, %.split.a, %.split19, %.split, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23406)
  %i.hr = load i64, ptr %0, align 8, !range !19, !alias.scope !23405, !noalias !23406, !noundef !10 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ht = load i64, ptr %1, align 8, !range !19, !alias.scope !23406, !noalias !23405, !noundef !10
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hv = icmp eq i64 %i.hr, %i.ht
  br i1 %i.hv, label %bb.ba, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.ba:                                            ; preds = %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread17
  %or.cond.not.i = icmp eq i64 %i.hr, 0
  br i1 %or.cond.not.i, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.ba
  %i.hw = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hu)
  br i1 %i.hw, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread: ; preds = %bb.ba, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val = load i8, ptr %i.hx, align 8, !range !70, !noundef !10 ; 2 uses
  %.val1 = load i8, ptr %i.hy, align 8, !range !70, !noundef !10 ; 2 uses
  %i.hz = icmp ne i8 %.val, -1                    ; 2 uses
  %i.ia = icmp ne i8 %.val1, -1                   ; 2 uses
  %i.ib = xor i1 %i.hz, %i.ia
  br i1 %i.ib, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke7LineCapENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke7LineCapENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread
  %i.ic = icmp ne i8 %.val, %.val1
  %i.id = and i1 %i.ia, %i.ic
  %spec.select.i.not = and i1 %i.hz, %i.id
  br i1 %spec.select.i.not, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.bb

bb.bb:                                            ; preds = %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke7LineCapENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 89
  %.val2 = load i8, ptr %i.ie, align 1, !range !70, !noundef !10 ; 2 uses
  %.val3 = load i8, ptr %i.if, align 1, !range !70, !noundef !10 ; 2 uses
  %i.ig = icmp ne i8 %.val2, -1                   ; 2 uses
  %i.ih = icmp ne i8 %.val3, -1                   ; 2 uses
  %i.ii = xor i1 %i.ig, %i.ih
  br i1 %i.ii, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke8LineJoinENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke8LineJoinENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.bb
  %i.ij = icmp ne i8 %.val2, %.val3
  %i.ik = and i1 %i.ih, %i.ij
  %spec.select.i9.not = and i1 %i.ig, %i.ik
  br i1 %spec.select.i9.not, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.bc

bb.bc:                                            ; preds = %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke8LineJoinENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23408)
  %i.in = load i64, ptr %i.il, align 8, !range !38, !alias.scope !23407, !noalias !23408, !noundef !10 ; 3 uses
  %i.io = icmp ne i64 %i.in, -2                   ; 2 uses
  %i.ip = load i64, ptr %i.im, align 8, !range !38, !alias.scope !23408, !noalias !23407, !noundef !10 ; 3 uses
  %i.iq = icmp ne i64 %i.ip, -2                   ; 2 uses
  %i.ir = xor i1 %i.io, %i.iq
  br i1 %i.ir, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %brmerge.demorgan.i11 = and i1 %i.io, %i.iq
  br i1 %brmerge.demorgan.i11, label %bb.be, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB9_9visualize6stroke11DashPatternNtNtNtB9_6layout3abs3AbsEEENtNtB1b_3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread28

bb.be:                                            ; preds = %bb.bd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23410)
  %.not.i.i = icmp eq i64 %i.in, -1
  %i.is = icmp eq i64 %i.ip, -1
  %brmerge.i.i = or i1 %.not.i.i, %i.is
  br i1 %brmerge.i.i, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB9_9visualize6stroke11DashPatternNtNtNtB9_6layout3abs3AbsEEENtNtB1b_3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23412)
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iu = load i64, ptr %i.it, align 8, !alias.scope !23413, !noalias !23414, !noundef !10 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.iw = load i64, ptr %i.iv, align 8, !alias.scope !23414, !noalias !23413, !noundef !10
  %i.ix = icmp eq i64 %i.iu, %i.iw
  br i1 %i.ix, label %bb.bg, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.bg:                                            ; preds = %bb.bf
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !23414, !noalias !23413, !nonnull !10, !noundef !10
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jb = load ptr, ptr %i.ja, align 8, !alias.scope !23413, !noalias !23414, !nonnull !10, !noundef !10
  %i.jc = icmp eq i64 %i.iu, 0
  br i1 %i.jc, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bg, %_RNvYINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.thread6.i.i.i.i
  %.sroa.01.08.i.i.i.i = phi i64 [ %i.jl, %_RNvYINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.thread6.i.i.i.i ], [ 0, %bb.bg ] ; 3 uses
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %.sroa.01.08.i.i.i.i ; 2 uses
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %.sroa.01.08.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23418)
  %i.jf = load i64, ptr %i.jd, align 8, !range !19, !alias.scope !23419, !noalias !23420, !noundef !10 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jh = load i64, ptr %i.je, align 8, !range !19, !alias.scope !23421, !noalias !23422, !noundef !10
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jj = icmp eq i64 %i.jf, %i.jh
  br i1 %i.jj, label %bb.bh, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i
  %or.cond.not.i.i.i.i.i.i = icmp eq i64 %i.jf, 0
  br i1 %or.cond.not.i.i.i.i.i.i, label %_RNvYINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.thread6.i.i.i.i, label %_RNvYINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i

_RNvYINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i: ; preds = %bb.bh
  %i.jk = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ji), !noalias !23423
  br i1 %i.jk, label %_RNvYINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.thread6.i.i.i.i, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

_RNvYINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.thread6.i.i.i.i: ; preds = %_RNvYINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, %bb.bh
  %i.jl = add nuw i64 %.sroa.01.08.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.jl, %i.iu
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvYINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.thread6.i.i.i.i, %bb.bg
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jo = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jn)
  br i1 %i.jo, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB9_9visualize6stroke11DashPatternNtNtNtB9_6layout3abs3AbsEEENtNtB1b_3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread28, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB9_9visualize6stroke11DashPatternNtNtNtB9_6layout3abs3AbsEEENtNtB1b_3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.be
  %i.jp = and i64 %i.ip, %i.in
  %.mux.i.i = icmp eq i64 %i.jp, -1
  br i1 %.mux.i.i, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB9_9visualize6stroke11DashPatternNtNtNtB9_6layout3abs3AbsEEENtNtB1b_3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread28, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB9_9visualize6stroke11DashPatternNtNtNtB9_6layout3abs3AbsEEENtNtB1b_3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread28: ; preds = %bb.bd, %.loopexit.i.i.i, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB9_9visualize6stroke11DashPatternNtNtNtB9_6layout3abs3AbsEEENtNtB1b_3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23425)
  %i.js = load i64, ptr %i.jq, align 8, !range !19, !alias.scope !23424, !noalias !23425, !noundef !10 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ju = load i64, ptr %i.jr, align 8, !range !19, !alias.scope !23425, !noalias !23424, !noundef !10
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jw = icmp eq i64 %i.js, %i.ju
  br i1 %i.jw, label %bb.bi, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

bb.bi:                                            ; preds = %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB9_9visualize6stroke11DashPatternNtNtNtB9_6layout3abs3AbsEEENtNtB1b_3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread28
  %or.cond.not.i14 = icmp eq i64 %i.js, 0
  br i1 %or.cond.not.i14, label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jx = tail call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jv)
  br label %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout5ratio5RatioENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i23.i.i.i, %.lr.ph.i.i21.i.i.i, %.lr.ph.i.i9.i.i.i, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i11.i.i.i, %.lr.ph.i.i.i.i.i, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, %_RNvYINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, %.lr.ph.i.i.i.i, %bb.bf, %bb.bc, %bb.bb, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread17, %bb.av, %bb.ax, %bb.au, %bb.az, %bb.aw, %bb.an, %bb.af, %bb.ag, %bb.aj, %bb.al, %.loopexit.i25.i.i.i, %bb.ao, %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs8jFhWeO2DFb_9typst_pdf.exit4.i.i.i.i.i, %.split.i19.i.i.i, %bb.x, %bb.z, %bb.aa, %bb.ad, %bb.s, %bb.t, %.loopexit.i13.i.i.i, %bb.y, %bb.ab, %bb.w, %bb.ae, %bb.ay, %.split.i.i.i.i, %bb.q, %bb.k, %bb.l, %bb.o, %.loopexit.i.i.i.i, %bb.r, %.split.i31.i.i.i, %bb.ak, %bb.f, %bb.at, %bb.c, %bb.a, %bb.bj, %bb.bi, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB9_9visualize6stroke11DashPatternNtNtNtB9_6layout3abs3AbsEEENtNtB1b_3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread28, %.loopexit.i.i.i, %.split21, %.split.a, %.split19, %.split, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke7LineCapENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke8LineJoinENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB9_9visualize6stroke11DashPatternNtNtNtB9_6layout3abs3AbsEEENtNtB1b_3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit
  %.sroa.0.0 = phi i1 [ false, %.loopexit.i.i.i ], [ false, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB9_9visualize6stroke11DashPatternNtNtNtB9_6layout3abs3AbsEEENtNtB1b_3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit ], [ false, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke8LineJoinENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit ], [ false, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke7LineCapENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit ], [ false, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit ], [ false, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit ], [ true, %bb.bi ], [ false, %.split ], [ false, %.split19 ], [ false, %.split.a ], [ false, %.split21 ], [ false, %.lr.ph.i.i9.i.i.i ], [ false, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize5paint5PaintENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread17 ], [ false, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread ], [ false, %bb.bb ], [ %i.jx, %bb.bj ], [ false, %_RNvXss_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtB9_9visualize6stroke11DashPatternNtNtNtB9_6layout3abs3AbsEEENtNtB1b_3cmp9PartialEq2eqCs8jFhWeO2DFb_9typst_pdf.exit.thread28 ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.at ], [ false, %bb.f ], [ false, %bb.ak ], [ false, %.split.i31.i.i.i ], [ false, %bb.r ], [ false, %.loopexit.i.i.i.i ], [ false, %bb.o ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.q ], [ false, %.split.i.i.i.i ], [ false, %bb.ay ], [ false, %bb.ae ], [ false, %bb.w ], [ false, %bb.ab ], [ false, %bb.y ], [ false, %.loopexit.i13.i.i.i ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.ad ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.x ], [ false, %.split.i19.i.i.i ], [ false, %_RINvMse_NtCs6xpQEr8gLsQ_11typst_utils4hashNtB6_8HashLock18get_or_insert_withNCNvMs0_B6_INtB6_8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE20load_or_compute_hash0ECs8jFhWeO2DFb_9typst_pdf.exit4.i.i.i.i.i ], [ false, %bb.ao ], [ false, %.loopexit.i25.i.i.i ], [ false, %bb.al ], [ false, %bb.aj ], [ false, %bb.ag ], [ false, %bb.af ], [ false, %bb.an ], [ false, %bb.aw ], [ false, %bb.bc ], [ false, %bb.bf ], [ false, %bb.az ], [ false, %bb.au ], [ false, %bb.ax ], [ false, %bb.av ], [ false, %.lr.ph.i.i.i.i.i ], [ false, %_RNvYINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke10DashLengthNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ], [ false, %.lr.ph.i.i.i.i ], [ false, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i ], [ false, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i11.i.i.i ], [ false, %.lr.ph.i.i21.i.i.i ], [ false, %_RNvXs8_NtCs3oUPovFnLWP_4core5tupleTNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorNtNtNtBD_6layout5ratio5RatioENtNtB7_3cmp9PartialEq2neCs8jFhWeO2DFb_9typst_pdf.exit.i.i23.i.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsm_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj20_ENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23447)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !23448, !noalias !23449, !noundef !10 ; 9 uses
  %i.d = icmp ugt i64 %i.c, 32
  %i.e = load ptr, ptr %0, align 8, !alias.scope !23448, !noalias !23449, !nonnull !10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !23448, !noalias !23449 ; 7 uses
  %.sink10.i.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23451)
  %.sink.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 32) ; 6 uses
  %i.h = sub i64 %.sink.i.i.i.i, %.sink10.i.i
  %.not.i.i.i = icmp ult i64 %i.h, %2
  br i1 %.not.i.i.i, label %bb.b, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %.sink10.i.i, %2                 ; 3 uses
  %i.j = icmp ult i64 %i.i, %.sink10.i.i
  br i1 %i.j, label %bb.q, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %i.i, 2
  %i.l = add i64 %i.i, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = lshr i64 -1, %i.m
  %.sroa.010.0.i.i.i = select i1 %i.k, i64 0, i64 %i.n ; 3 uses
  %i.o = icmp eq i64 %.sroa.010.0.i.i.i, -1
  br i1 %i.o, label %bb.q, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw i64 %.sroa.010.0.i.i.i, 1        ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23452)
  %i.q = icmp ult i64 %i.c, 33                    ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.p, %.sink10.i.i
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #42, !noalias !23453
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = icmp ult i64 %.sroa.010.0.i.i.i, 32
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not43.i.i.i.i = icmp eq i64 %i.c, %i.p
  br i1 %.not43.i.i.i.i, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  br i1 %i.q, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.s = icmp sgt i64 %i.p, -1
  br i1 %i.s, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, label %bb.q

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i: ; preds = %bb.i
  br i1 %i.q, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i
  %i.t = icmp sgt i64 %.sink.i.i.i.i, -1
  br i1 %i.t, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit47.i.i.i.i, label %bb.q

bb.k:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !23453
  %i.u = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 1) #41, !noalias !23453 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.p, label %bb.m

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit47.i.i.i.i: ; preds = %bb.j
  %i.w = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %.sink.i.i.i.i, i64 noundef 1, i64 noundef %i.p) #41, !noalias !23453 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.m, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit47.i.i.i.i
  %.sroa.030.0.i.i.i.i = phi ptr [ %i.u, %bb.m ], [ %i.w, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit47.i.i.i.i ]
  store ptr %.sroa.030.0.i.i.i.i, ptr %0, align 8, !alias.scope !23454, !noalias !23455
  store i64 %.sink10.i.i, ptr %i.f, align 8, !alias.scope !23454, !noalias !23455
  store i64 %i.p, ptr %i.b, align 8, !alias.scope !23454, !noalias !23455
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 8 dereferenceable(40) %0, i64 %i.c, i1 false), !noalias !23455
  br label %bb.l

bb.n:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(40) %0, ptr nonnull align 1 %i.e, i64 %i.g, i1 false), !noalias !23455
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !23454, !noalias !23455
  %i.y = icmp sgt i64 %.sink.i.i.i.i, -1
  br i1 %i.y, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23456
  store i64 0, ptr %i.a, align 8, !noalias !23456
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i.i.i, ptr %i.z, align 8, !noalias !23456
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42, !noalias !23456
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i: ; preds = %bb.n
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %.sink.i.i.i.i, i64 noundef 1) #41, !noalias !23453
  %.pre.i.i = load i64, ptr %i.f, align 8, !alias.scope !23457, !noalias !23458
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.p:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit47.i.i.i.i, %bb.k
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 1, i64 noundef %i.p) #39, !noalias !23459
  unreachable

bb.q:                                             ; preds = %bb.j, %bb.i, %bb.c, %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #42, !noalias !23459
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, %bb.l, %bb.h, %bb.g, %bb.a
  %i.aa = phi i64 [ %i.g, %bb.a ], [ %.pre.i.i, %_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ], [ %i.g, %bb.g ], [ %.sink10.i.i, %bb.l ], [ %i.g, %bb.h ]
  %i.ab = phi i64 [ %i.c, %bb.a ], [ %i.g, %_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ], [ %i.c, %bb.g ], [ %i.p, %bb.l ], [ %i.c, %bb.h ] ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 32                  ; 2 uses
  %.sink10.i.i.i = select i1 %i.ac, i64 %i.aa, i64 %i.ab ; 3 uses
  %.not.i.i = icmp ugt i64 %.sink10.i.i, %.sink10.i.i.i
  br i1 %.not.i.i, label %bb.r, label %_RNvMse_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj20_E17extend_from_sliceCs8jFhWeO2DFb_9typst_pdf.exit, !prof !13

bb.r:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @245, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @246) #42, !noalias !23459
  unreachable

_RNvMse_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj20_E17extend_from_sliceCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !23457, !noalias !23458, !nonnull !10
  %.sink10.i2.i.i = select i1 %i.ac, ptr %i.ad, ptr %0
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink10.i2.i.i, i64 %.sink10.i.i ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %2
  %i.ag = sub nuw i64 %.sink10.i.i.i, %.sink10.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.ae, i64 %i.ag, i1 false), !noalias !23455
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false)
  %i.ah = add i64 %.sink10.i.i.i, %2
  %i.ai = load i64, ptr %i.b, align 8, !alias.scope !23460, !noalias !23461, !noundef !10
  %i.aj = icmp ugt i64 %i.ai, 32
  %.sink9.i5.i.i = select i1 %i.aj, ptr %i.f, ptr %i.b
  store i64 %i.ah, ptr %.sink9.i5.i.i, align 8, !alias.scope !23462, !noalias !23455
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXsn_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke6StrokeENtNtCs3oUPovFnLWP_4core7default7Default7defaultCs8jFhWeO2DFb_9typst_pdf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #20 {
bb.a:
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsp_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke6StrokeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load i64, ptr %1, align 8, !range !29, !noundef !10 ; 3 uses
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23482)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23483
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i32, ptr %i.c, align 8, !range !48, !alias.scope !23482, !noalias !23484, !noundef !10 ; 4 uses
  %.not.i = icmp eq i32 %i.d, -1                  ; 2 uses
  br i1 %.not.i, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23485)
  %i.e = icmp samesign ugt i32 %i.d, 1
  %i.f = zext nneg i32 %i.d to i64
  %i.g = add nsw i64 %i.f, -1
  %i.h = select i1 %i.e, i64 %i.g, i64 0
  switch i64 %i.h, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = trunc i32 %i.d to i1
  br i1 %i.i, label %bb.n, label %bb.o

bb.f:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i.i = load i64, ptr %i.j, align 8, !range !29, !alias.scope !23486, !noalias !23487, !noundef !10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val3.i.i = load ptr, ptr %i.k, align 8, !alias.scope !23486, !noalias !23487, !nonnull !10, !noundef !10 ; 2 uses
  %i.l = atomicrmw add ptr %.val3.i.i, i64 1 monotonic, align 8, !noalias !23488
  %i.m = icmp slt i64 %i.l, 0                     ; 3 uses
  switch i64 %.val.i.i, label %default.unreachable [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]
end_hunk_2
