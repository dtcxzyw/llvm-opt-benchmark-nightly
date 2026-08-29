Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.01?download=true
inline.NumInlined: 432
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE6format0Bd_:bb.a
bb.vi:                                            ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !84
  %i.bse = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 122, ptr %i.bse, align 1, !noalias !84
  store i8 0, ptr %i.ea, align 8, !noalias !84
  %i.bsf = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ea) #20, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !84
  br label %bb.rp

bb.vj:                                            ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !84
  %i.bsg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val86 = load ptr, ptr %i.bsg, align 8, !nonnull !5, !align !89, !noundef !5 ; 2 uses
  %i.bsh = getelementptr inbounds nuw i8, ptr %.val86, i64 72
  %i.bsi = load i32, ptr %i.bsh, align 8, !range !521, !noalias !1952, !noundef !5
  %i.bsj = trunc nuw i32 %i.bsi to i1
  br i1 %i.bsj, label %bb.vo, label %bb.vn

bb.vk:                                            ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !84
  %i.bsk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val87 = load ptr, ptr %i.bsk, align 8, !nonnull !5, !align !89, !noundef !5 ; 2 uses
  %i.bsl = getelementptr inbounds nuw i8, ptr %.val87, i64 72
  %i.bsm = load i32, ptr %i.bsl, align 8, !range !521, !noalias !1955, !noundef !5
  %i.bsn = trunc nuw i32 %i.bsm to i1
  br i1 %i.bsn, label %bb.vq, label %bb.vp

bb.vl:                                            ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !84
  %i.bso = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val88 = load ptr, ptr %i.bso, align 8, !nonnull !5, !align !89, !noundef !5 ; 2 uses
  %i.bsp = getelementptr inbounds nuw i8, ptr %.val88, i64 72
  %i.bsq = load i32, ptr %i.bsp, align 8, !range !521, !noalias !1958, !noundef !5
  %i.bsr = trunc nuw i32 %i.bsq to i1
  br i1 %i.bsr, label %bb.vs, label %bb.vr

bb.vm:                                            ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !84
  %i.bss = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val89 = load ptr, ptr %i.bss, align 8, !nonnull !5, !align !89, !noundef !5 ; 2 uses
  %i.bst = getelementptr inbounds nuw i8, ptr %.val89, i64 72
  %i.bsu = load i32, ptr %i.bst, align 8, !range !521, !noalias !1961, !noundef !5
  %i.bsv = trunc nuw i32 %i.bsu to i1
  br i1 %i.bsv, label %bb.vu, label %bb.vt

bb.vn:                                            ; preds = %bb.vj
  %i.bsw = tail call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 2) #20, !noalias !1952
  store ptr %i.bsw, ptr %i.ee, align 8, !noalias !84
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit106.i

bb.vo:                                            ; preds = %bb.vj
  %i.bsx = getelementptr inbounds nuw i8, ptr %.val86, i64 76
  %i.bsy = load i32, ptr %i.bsx, align 4, !noalias !1952
  store i32 %i.bsy, ptr %i.ee, align 8, !noalias !84
  %.sroa.41435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 256, ptr %.sroa.41435.0..sroa_idx, align 4, !noalias !84
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit106.i

_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit106.i: ; preds = %bb.vn, %bb.vo
  %.sink = phi i8 [ 7, %bb.vo ], [ -1, %bb.vn ]
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i8 %.sink, ptr %i.bsz, align 8, !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !1964
  store i8 1, ptr %i.dr, align 8, !noalias !1969
  %.sroa.41047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  store i8 122, ptr %.sroa.41047.0..sroa_idx, align 1, !noalias !1969
  %.sroa.51048.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  store i8 0, ptr %.sroa.51048.0..sroa_idx, align 2, !noalias !1969
  call fastcc void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ee, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dr) #25, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !1964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !84
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.vp:                                            ; preds = %bb.vk
  %i.bta = tail call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 2) #20, !noalias !1955
  store ptr %i.bta, ptr %i.ed, align 8, !noalias !84
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit105.i

bb.vq:                                            ; preds = %bb.vk
  %i.btb = getelementptr inbounds nuw i8, ptr %.val87, i64 76
  %i.btc = load i32, ptr %i.btb, align 4, !noalias !1955
  store i32 %i.btc, ptr %i.ed, align 8, !noalias !84
  %.sroa.41440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 257, ptr %.sroa.41440.0..sroa_idx, align 4, !noalias !84
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit105.i

_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit105.i: ; preds = %bb.vp, %bb.vq
  %.sink2274 = phi i8 [ 7, %bb.vq ], [ -1, %bb.vp ]
  %i.btd = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i8 %.sink2274, ptr %i.btd, align 8, !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !1970
  store i8 1, ptr %i.ds, align 8, !noalias !1975
  %.sroa.41057.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store i8 122, ptr %.sroa.41057.0..sroa_idx, align 1, !noalias !1975
  %.sroa.51058.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store i8 1, ptr %.sroa.51058.0..sroa_idx, align 2, !noalias !1975
  call fastcc void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ed, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ds) #25, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !1970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !84
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.vr:                                            ; preds = %bb.vl
  %i.bte = tail call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 2) #20, !noalias !1958
  store ptr %i.bte, ptr %i.ec, align 8, !noalias !84
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit104.i

bb.vs:                                            ; preds = %bb.vl
  %i.btf = getelementptr inbounds nuw i8, ptr %.val88, i64 76
  %i.btg = load i32, ptr %i.btf, align 4, !noalias !1958
  store i32 %i.btg, ptr %i.ec, align 8, !noalias !84
  %.sroa.41445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 65793, ptr %.sroa.41445.0..sroa_idx, align 4, !noalias !84
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit104.i

_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit104.i: ; preds = %bb.vr, %bb.vs
  %.sink2275 = phi i8 [ 7, %bb.vs ], [ -1, %bb.vr ]
  %i.bth = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i8 %.sink2275, ptr %i.bth, align 8, !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !1976
  store i8 1, ptr %i.dt, align 8, !noalias !1981
  %.sroa.41067.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store i8 122, ptr %.sroa.41067.0..sroa_idx, align 1, !noalias !1981
  %.sroa.51068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  store i8 2, ptr %.sroa.51068.0..sroa_idx, align 2, !noalias !1981
  call fastcc void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ec, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dt) #25, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !1976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !84
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.vt:                                            ; preds = %bb.vm
  %i.bti = tail call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 2) #20, !noalias !1961
  store ptr %i.bti, ptr %i.eb, align 8, !noalias !84
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit.i

bb.vu:                                            ; preds = %bb.vm
  %i.btj = getelementptr inbounds nuw i8, ptr %.val89, i64 76
  %i.btk = load i32, ptr %i.btj, align 4, !noalias !1961
  store i32 %i.btk, ptr %i.eb, align 8, !noalias !84
  %.sroa.41450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store i32 1, ptr %.sroa.41450.0..sroa_idx, align 4, !noalias !84
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit.i

_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit.i: ; preds = %bb.vt, %bb.vu
  %.sink2276 = phi i8 [ 7, %bb.vu ], [ -1, %bb.vt ]
  %i.btl = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i8 %.sink2276, ptr %i.btl, align 8, !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !1982
  store i8 1, ptr %i.du, align 8, !noalias !1987
  %.sroa.41077.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 122, ptr %.sroa.41077.0..sroa_idx, align 1, !noalias !1987
  %.sroa.51078.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i8 3, ptr %.sroa.51078.0..sroa_idx, align 2, !noalias !1987
  call fastcc void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eb, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.du) #25, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !1982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !84
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.vv:                                            ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !84
  store i8 31, ptr %i.dz, align 8, !noalias !84
  %i.btm = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dz) #20, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !84
  br label %bb.rp

bb.vw:                                            ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  br label %bb.vy

bb.vx:                                            ; preds = %bb.vy
  %i.btn = icmp eq i64 %.sroa.0.0.i181986, 0
  br i1 %i.btn, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit678, label %.thread1881

bb.vy:                                            ; preds = %bb.vw, %bb.vz
  %.sroa.0.0.i181986 = phi i64 [ 0, %bb.vw ], [ %i.btr, %bb.vz ] ; 5 uses
  %i.bto = getelementptr inbounds nuw i8, ptr %i.bap, i64 %.sroa.0.0.i181986
  %i.btp = load i8, ptr %i.bto, align 1, !alias.scope !1991, !noalias !1994, !noundef !5
  %i.btq = add i8 %i.btp, -48
  %or.cond48.i = icmp ult i8 %i.btq, 10
  br i1 %or.cond48.i, label %bb.vz, label %bb.vx

bb.vz:                                            ; preds = %bb.vy
  %i.btr = add nuw i64 %.sroa.0.0.i181986, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.btr, %i.bao
  br i1 %exitcond.not, label %.lr.ph.preheader, label %bb.vy

.thread1881:                                      ; preds = %bb.vx
  %.not.i675 = icmp ugt i64 %.sroa.0.0.i181986, %i.bao
  br i1 %.not.i675, label %bb.wa, label %.lr.ph.preheader, !prof !1997

bb.wa:                                            ; preds = %.thread1881
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #24, !noalias !1998
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.vz, %.thread1881
  %.sroa.0.0.i1819852621 = phi i64 [ %.sroa.0.0.i181986, %.thread1881 ], [ %i.bao, %bb.vz ] ; 2 uses
  %i.bts = getelementptr inbounds nuw i8, ptr %i.bap, i64 %.sroa.0.0.i1819852621 ; 2 uses
  %i.btt = sub nuw nsw i64 %i.bao, %.sroa.0.0.i1819852621 ; 2 uses
  br label %.lr.ph

2:                                                ; preds = %bb.wc
  %3 = add nsw i64 %7, %i.btx                     ; 3 uses
  %4 = icmp eq ptr %i.btu, %i.bts
  br i1 %4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %2
  %.sroa.0.0.i241988 = phi ptr [ %i.btu, %2 ], [ %i.bap, %.lr.ph.preheader ] ; 2 uses
  %.sroa.012.0.i1987 = phi i64 [ %3, %2 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.btu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i241988, i64 1 ; 2 uses
  %i.btv = load i8, ptr %.sroa.0.0.i241988, align 1, !alias.scope !2002, !noalias !2005, !noundef !5 ; 2 uses
  %i.btw = add i8 %i.btv, -48                     ; 2 uses
  %or.cond.i25 = icmp ult i8 %i.btw, 10
  br i1 %or.cond.i25, label %bb.wb, label %bb.wd

bb.wb:                                            ; preds = %.lr.ph
  %5 = add i64 %.sroa.012.0.i1987, -922337203685477581
  %6 = icmp ult i64 %5, -1844674407370955161
  br i1 %6, label %bb.wd, label %bb.wc, !prof !240

bb.wc:                                            ; preds = %bb.wb
  %7 = mul nsw i64 %.sroa.012.0.i1987, 10         ; 2 uses
  %i.btx = zext nneg i8 %i.btw to i64             ; 2 uses
  %i.bty = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %7, i64 %i.btx)
  %i.btz = extractvalue { i64, i1 } %i.bty, 1
  br i1 %i.btz, label %bb.wd, label %2, !prof !240

bb.wd:                                            ; preds = %.lr.ph, %bb.wc, %bb.wb
  %.sroa.71728.1.ph = phi i8 [ 2, %bb.wb ], [ 2, %bb.wc ], [ 1, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !2007
  store i8 8, ptr %i.dm, align 8, !noalias !2007
  %i.bua = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultxNtNtB8_4util13ParseIntErrorEINtB8_12ErrorContextxB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dm, i8 noundef %.sroa.71728.1.ph, i8 %i.btv) #25, !noalias !1994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !2007
  br label %bb.rp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit: ; preds = %2
  %or.cond.i19 = icmp ugt i64 %3, 255
  br i1 %or.cond.i19, label %bb.wh, label %bb.we

bb.we:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit
  %i.bub = icmp eq i64 %i.btt, 0
  br i1 %i.bub, label %bb.wg, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.buc = trunc nuw i64 %3 to i8
  br label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit678

bb.wg:                                            ; preds = %bb.we
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !2007
  store i8 5, ptr %i.dn, align 8, !noalias !2007
  %i.bud = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dn) #20, !noalias !1994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !2007
  br label %bb.rp

bb.wh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !2007
  store i8 22, ptr %i.dl, align 8, !noalias !2007
  %i.bue = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dl) #20, !noalias !1994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !2007
  br label %bb.rp

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit678: ; preds = %bb.vx, %bb.wf
  %.sroa.01718.0 = phi i8 [ 1, %bb.wf ], [ 0, %bb.vx ] ; 2 uses
  %.sroa.101720.0 = phi i8 [ %i.buc, %bb.wf ], [ undef, %bb.vx ] ; 2 uses
  %.sroa.121722.0 = phi ptr [ %i.bts, %bb.wf ], [ %i.bap, %bb.vx ] ; 3 uses
  %.sroa.19.0 = phi i64 [ %i.btt, %bb.wf ], [ %i.bao, %bb.vx ]
  store ptr %.sroa.121722.0, ptr %i.em, align 8, !alias.scope !1988, !noalias !2008, !captures !1057
  store i64 %.sroa.19.0, ptr %i.en, align 8, !alias.scope !1988, !noalias !2008
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121722.0) ]
  %i.buf = load i8, ptr %.sroa.121722.0, align 1, !noundef !5 ; 2 uses
  %i.bug = icmp eq i8 %i.buf, 102
  br i1 %i.bug, label %bb.wi, label %bb.wl

bb.wi:                                            ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !84
  %i.buh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val90 = load ptr, ptr %i.buh, align 8, !nonnull !5, !align !89, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  %i.bui = getelementptr inbounds nuw i8, ptr %.val90, i64 64
  %i.buj = load i32, ptr %i.bui, align 8, !range !521, !noalias !2009, !noundef !5
  %i.buk = trunc nuw i32 %i.buj to i1
  br i1 %i.buk, label %bb.wj, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE18fmt_dot_fractionalBb_.exit

bb.wj:                                            ; preds = %bb.wi
  %i.bul = getelementptr inbounds nuw i8, ptr %.val90, i64 68
  %i.bum = load i32, ptr %i.bul, align 4, !noalias !2009, !noundef !5 ; 2 uses
  %i.bun = icmp eq i32 %i.bum, 0
  %i.buo = trunc nuw i8 %.sroa.01718.0 to i1
  %i.bup = icmp eq i8 %.sroa.101720.0, 0
  %or.cond1.i680 = select i1 %i.buo, i1 %i.bup, i1 %i.bun
  br i1 %or.cond1.i680, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE18fmt_dot_fractionalBb_.exit, label %bb.wk

bb.wk:                                            ; preds = %bb.wj
  %.sroa.011.0.i681 = tail call i32 @llvm.abs.i32(i32 %i.bum, i1 false)
  store i32 %.sroa.011.0.i681, ptr %i.dy, align 8, !alias.scope !2009
  %.sroa.06.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i8 %.sroa.01718.0, ptr %.sroa.06.sroa.4.0..sroa_idx.i, align 4, !alias.scope !2009
  %.sroa.06.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 5
  store i8 %.sroa.101720.0, ptr %.sroa.06.sroa.5.0..sroa_idx.i, align 1, !alias.scope !2009
  %.sroa.06.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 6
  store i8 1, ptr %.sroa.06.sroa.6.0..sroa_idx.i, align 2, !alias.scope !2009
  br label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE18fmt_dot_fractionalBb_.exit

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE18fmt_dot_fractionalBb_.exit: ; preds = %bb.wi, %bb.wj, %bb.wk
  %.sink.i679 = phi i8 [ 5, %bb.wk ], [ 3, %bb.wi ], [ 3, %bb.wj ]
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i8 %.sink.i679, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !2009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !2012
  store i8 2, ptr %i.dv, align 8, !noalias !2017
  %.sroa.41090.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store i8 102, ptr %.sroa.41090.0..sroa_idx, align 1, !noalias !2017
  call fastcc void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dy, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dv) #25, !noalias !2018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !2012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !84
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.wl:                                            ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !84
  %i.buq = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  store i8 %i.buf, ptr %i.buq, align 1, !noalias !84
  store i8 33, ptr %i.dx, align 8, !noalias !84
  %i.bur = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dx) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !84
  br label %bb.rp

bb.wm:                                            ; preds = %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !84
  br label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE10format_oneBb_.exit

bb.wn:                                            ; preds = %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i
  %.sroa.490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.490.0.copyload.i = load i64, ptr %.sroa.490.0..sroa_idx.i, align 8, !noalias !84 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !84
  %i.bus = ptrtoint ptr %i.bat to i64             ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2019)
  call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  %i.but = icmp ne i8 %i.bar, 6
  call void @llvm.assume(i1 %i.but)
  %i.buu = add nsw i8 %i.bar, -3
  %.inv.i = icmp samesign ult i8 %i.bar, 3
  %narrow.i = select i1 %.inv.i, i8 3, i8 %i.buu
  switch i8 %narrow.i, label %bb.wo [
    i8 0, label %.thread1957
    i8 1, label %bb.wp
    i8 2, label %bb.xs
    i8 3, label %bb.xt
    i8 4, label %bb.xu
  ]

bb.wo:                                            ; preds = %bb.wn
  unreachable

bb.wp:                                            ; preds = %bb.wn
  %.sroa.14.8.extract.trunc = trunc i64 %.sroa.490.0.copyload.i to i8 ; 3 uses
  %.sroa.14.9.extract.shift = lshr i64 %.sroa.490.0.copyload.i, 8
  %.sroa.14.9.extract.trunc = trunc i64 %.sroa.14.9.extract.shift to i8
  %i.buv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.buw = load ptr, ptr %i.buv, align 8, !alias.scope !2019, !noalias !2024, !nonnull !5, !align !89, !noundef !5 ; 16 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  %i.bux = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.buy = load i8, ptr %i.bux, align 2, !range !2029, !alias.scope !2030, !noalias !2031, !noundef !5
  switch i8 %i.buy, label %bb.wr [
    i8 2, label %.thread
    i8 0, label %.thread1901
    i8 1, label %bb.wq
  ]

bb.wq:                                            ; preds = %bb.wp
  br label %bb.wr

.thread1901:                                      ; preds = %bb.wp
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wp, %.thread1901, %bb.wq
  %.sroa.0.1.i.i = phi i8 [ 32, %.thread1901 ], [ %.sroa.14.8.extract.trunc, %bb.wp ], [ 48, %bb.wq ] ; 3 uses
  %i.buz = load i8, ptr %i.el, align 4, !range !151, !alias.scope !2030, !noalias !2031, !noundef !5
  %i.bva = trunc nuw i8 %i.buz to i1
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.bvc = load i8, ptr %i.bvb, align 1, !alias.scope !2030, !noalias !2031
  %.sroa.03.1.i.i = select i1 %i.bva, i8 %i.bvc, i8 %.sroa.14.9.extract.trunc ; 3 uses
  %i.bvd = icmp slt ptr %i.bat, null
  br i1 %i.bvd, label %bb.ws, label %bb.wt

.thread:                                          ; preds = %bb.wp
  %i.bve = icmp slt ptr %i.bat, null
  br i1 %i.bve, label %.thread1909, label %bb.wt

bb.ws:                                            ; preds = %bb.wr
  %.not15.i.i = icmp eq i8 %.sroa.03.1.i.i, 0
  br i1 %.not15.i.i, label %.thread1909, label %bb.wx, !prof !2033

bb.wt:                                            ; preds = %.thread, %.thread2622, %bb.wr
  %.sroa.0.2.i.i1907 = phi i8 [ %.sroa.0.2.i.i19081913, %.thread2622 ], [ %.sroa.0.1.i.i, %bb.wr ], [ %.sroa.14.8.extract.trunc, %.thread ] ; 3 uses
  %.sroa.03.0.i.i1905 = phi i8 [ 0, %.thread2622 ], [ %.sroa.03.1.i.i, %bb.wr ], [ 0, %.thread ] ; 3 uses
  %.sroa.014.0.i.i = phi i64 [ %i.bvy, %.thread2622 ], [ %i.bus, %bb.wr ], [ %i.bus, %.thread ] ; 16 uses
  switch i8 %.sroa.0.2.i.i1907, label %bb.wy [
    i8 48, label %bb.xi
    i8 32, label %bb.xj
  ]

.thread1909:                                      ; preds = %.thread, %bb.ws
  %.sroa.0.2.i.i19081913 = phi i8 [ %.sroa.0.1.i.i, %bb.ws ], [ %.sroa.14.8.extract.trunc, %.thread ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  %i.bvf = load ptr, ptr %i.buw, align 8, !alias.scope !2034, !noalias !2037, !nonnull !5, !align !89, !noundef !5 ; 3 uses
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bvf, i64 8
  %i.bvh = load i64, ptr %i.bvg, align 8, !noalias !2038, !noundef !5
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bvf, i64 16
  %i.bvj = load i16, ptr %i.bvi, align 8, !noalias !2038, !noundef !5 ; 2 uses
  %i.bvk = zext i16 %i.bvj to i64                 ; 2 uses
  %i.bvl = icmp eq i64 %i.bvh, %i.bvk
  br i1 %i.bvl, label %bb.wu, label %.thread2622, !prof !240

bb.wu:                                            ; preds = %.thread1909
  %i.bvm = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.buw) #20, !noalias !2037 ; 2 uses
  %i.bvn = extractvalue { i64, ptr } %i.bvm, 0
  %i.bvo = trunc nuw i64 %i.bvn to i1
  br i1 %i.bvo, label %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i.thread, label %bb.wv

bb.wv:                                            ; preds = %bb.wu
  %.pre2324 = load ptr, ptr %i.buw, align 8, !alias.scope !2034, !noalias !2037 ; 3 uses
  %.phi.trans.insert2325 = getelementptr inbounds nuw i8, ptr %.pre2324, i64 8
  %.pre2326 = load i64, ptr %.phi.trans.insert2325, align 8, !alias.scope !2039, !noalias !2037
  %.phi.trans.insert2327 = getelementptr inbounds nuw i8, ptr %.pre2324, i64 16
  %.pre2328 = load i16, ptr %.phi.trans.insert2327, align 8, !alias.scope !2039, !noalias !2037 ; 2 uses
  %.pre2345 = zext i16 %.pre2328 to i64           ; 2 uses
  %i.bvp = icmp eq i64 %.pre2326, %.pre2345
  call void @llvm.experimental.noalias.scope.decl(metadata !2039), !noalias !2037
  br i1 %i.bvp, label %bb.ww, label %.thread2622, !prof !254

bb.ww:                                            ; preds = %bb.wv
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #24, !noalias !2042
  unreachable

bb.wx:                                            ; preds = %bb.ws
  %i.bvq = sub i64 0, %i.bus
  %i.bvr = call { i64, ptr } @_RNvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB7_9Extension18write_negative_int(i8 noundef %.sroa.0.1.i.i, i8 noundef %.sroa.03.1.i.i, i64 noundef %i.bvq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.buw) #20, !noalias !2037
  br label %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i

.thread2622:                                      ; preds = %.thread1909, %bb.wv
  %i.bvs = phi ptr [ %.pre2324, %bb.wv ], [ %i.bvf, %.thread1909 ] ; 2 uses
  %i.bvt = phi i16 [ %.pre2328, %bb.wv ], [ %i.bvj, %.thread1909 ]
  %.pre-phi2625 = phi i64 [ %.pre2345, %bb.wv ], [ %i.bvk, %.thread1909 ]
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvs, i64 16
  %i.bvv = load ptr, ptr %i.bvs, align 8, !alias.scope !2039, !noalias !2037, !nonnull !5, !noundef !5
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvv, i64 %.pre-phi2625
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE20utf8_decode_and_bumpBb_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.i = load i8, ptr %i.h, align 1, !range !151, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.l, label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %i.e, 4785074604081152
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i64 %i.e, 549755813888
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp samesign ult i64 %i.e, 8796093022208
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp samesign ult i64 %i.e, 281474976710656
  %. = select i1 %i.n, i64 3, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.sroa.08.0 = phi i64 [ 2, %bb.f ], [ %., %bb.g ], [ 1, %bb.e ] ; 3 uses
  %i.o = icmp ugt i64 %.sroa.08.0, %i.d
  br i1 %i.o, label %bb.j, label %bb.i, !prof !240

bb.i:                                             ; preds = %bb.h
  %i.p = and i64 %i.e, 9007194959773696
  %i.q = or disjoint i64 %i.p, 1536
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.08.0, i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #24
  unreachable

bb.k:                                             ; preds = %bb.l, %bb.i
  %.sroa.08.0.pn = phi i64 [ %.sroa.08.0, %bb.i ], [ %i.r, %bb.l ] ; 2 uses
  %.sroa.51.0 = phi i64 [ %i.q, %bb.i ], [ 281462091810304, %bb.l ]
  %storemerge = sub nuw i64 %i.d, %.sroa.08.0.pn
  %storemerge21 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.08.0.pn
  store ptr %storemerge21, ptr %i.a, align 8
  store i64 %storemerge, ptr %i.c, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.r = and i64 %.sroa.514.0.extract.shift, 255  ; 3 uses
  %i.s = icmp ugt i64 %i.r, %i.d
  br i1 %i.s, label %bb.n, label %bb.k, !prof !240

bb.m:                                             ; preds = %bb.d, %bb.k
  %.sroa.0.0.insert.insert = phi i64 [ %.sroa.51.0, %bb.k ], [ 1537, %bb.d ]
  ret i64 %.sroa.0.0.insert.insert

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.r, i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #24
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define { i64, ptr } @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE6formatBb_(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.loopexit, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit.lr.ph

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit.lr.ph: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit: ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit.lr.ph, %.backedge
  %i.p = phi i64 [ %i.l, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit.lr.ph ], [ %i.cq, %.backedge ] ; 2 uses
  %.val66 = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = load i8, ptr %.val66, align 1, !noundef !5 ; 3 uses
  %i.r = icmp eq i8 %i.q, 37
  br i1 %i.r, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit70

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit: ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit
  %i.s = add i64 %i.p, -1                         ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val66, i64 1 ; 4 uses
  store ptr %i.t, ptr %i.j, align 8, !alias.scope !2290, !captures !1057
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !2290
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.b, label %bb.c

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit70: ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit
  %i.u = icmp sgt i8 %i.q, -1
  br i1 %i.u, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit76, label %bb.aw, !prof !244

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit
  %i.v = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.w = load i8, ptr %i.v, align 1, !range !151, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.ad, label %bb.ac

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2293)
  %i.y = load i8, ptr %i.t, align 1, !noalias !2296, !noundef !5 ; 3 uses
  %i.z = and i8 %i.y, -33
  %i.aa = add i8 %i.z, -65
  %or.cond56.i = icmp ult i8 %i.aa, 26
  br i1 %or.cond56.i, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.val66, i64 2
  %i.ac = add i64 %i.p, -2                        ; 2 uses
  switch i8 %i.y, label %bb.k [
    i8 95, label %bb.i
    i8 48, label %bb.e
    i8 45, label %bb.f
    i8 94, label %bb.g
    i8 35, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.01.0.i = phi i32 [ 262144, %bb.h ], [ 65536, %bb.e ], [ 131072, %bb.f ], [ 196608, %bb.g ], [ 0, %bb.d ]
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2298
  store i8 %i.y, ptr %i.o, align 1, !noalias !2298
  store i8 4, ptr %i.f, align 8, !noalias !2298
  %i.ae = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f) #20, !noalias !2298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2298
  br label %bb.ai

bb.k:                                             ; preds = %bb.d, %bb.i
  %.sroa.13.0.ph = phi i64 [ %i.ac, %bb.i ], [ %i.s, %bb.d ] ; 6 uses
  %.sroa.890.0.ph = phi ptr [ %i.ab, %bb.i ], [ %i.t, %bb.d ] ; 5 uses
  %.sroa.088.0.ph = phi i32 [ %.sroa.01.0.i, %bb.i ], [ 16711680, %bb.d ]
  store ptr %.sroa.890.0.ph, ptr %i.j, align 8, !alias.scope !2293, !noalias !2302, !captures !1057
  store i64 %.sroa.13.0.ph, ptr %i.k, align 8, !alias.scope !2293, !noalias !2302
  call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.af = icmp eq i64 %.sroa.0.0.i55159, 0
  br i1 %i.af, label %.lr.ph164.preheader, label %.thread

bb.m:                                             ; preds = %bb.k, %bb.n
  %.sroa.0.0.i55159 = phi i64 [ 0, %bb.k ], [ %i.aj, %bb.n ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.890.0.ph, i64 %.sroa.0.0.i55159
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !2303, !noalias !2306, !noundef !5
  %i.ai = add i8 %i.ah, -48
  %or.cond48.i = icmp ult i8 %i.ai, 10
  br i1 %or.cond48.i, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.aj = add nuw i64 %.sroa.0.0.i55159, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %.sroa.13.0.ph
  br i1 %exitcond.not, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.n, %bb.l
  %.sroa.0.0.i55149 = phi i64 [ %.sroa.0.0.i55159, %bb.l ], [ %.sroa.13.0.ph, %bb.n ]
  %.sroa.0.0.i55149.fr = freeze i64 %.sroa.0.0.i55149 ; 3 uses
  %.not.i71 = icmp ugt i64 %.sroa.0.0.i55149.fr, %.sroa.13.0.ph
  br i1 %.not.i71, label %bb.o, label %.lr.ph.preheader, !prof !240

bb.o:                                             ; preds = %.thread
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #24, !noalias !2308
  unreachable

.lr.ph.preheader:                                 ; preds = %.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.890.0.ph, i64 %.sroa.0.0.i55149.fr ; 2 uses
  %i.al = sub nuw i64 %.sroa.13.0.ph, %.sroa.0.0.i55149.fr ; 2 uses
  br label %.lr.ph

1:                                                ; preds = %bb.q
  %2 = add nsw i64 %6, %i.ap                      ; 3 uses
  %3 = icmp eq ptr %i.am, %i.ak
  br i1 %3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %1
  %.sroa.0.0.i61161 = phi ptr [ %i.am, %1 ], [ %.sroa.890.0.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.012.0.i160 = phi i64 [ %2, %1 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61161, i64 1 ; 2 uses
  %i.an = load i8, ptr %.sroa.0.0.i61161, align 1, !alias.scope !2312, !noalias !2315, !noundef !5 ; 2 uses
  %i.ao = add i8 %i.an, -48                       ; 2 uses
  %or.cond.i62 = icmp ult i8 %i.ao, 10
  br i1 %or.cond.i62, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph
  %4 = add i64 %.sroa.012.0.i160, -922337203685477581
  %5 = icmp ult i64 %4, -1844674407370955161
  br i1 %5, label %bb.r, label %bb.q, !prof !240

bb.q:                                             ; preds = %bb.p
  %6 = mul nsw i64 %.sroa.012.0.i160, 10          ; 2 uses
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %i.ap)
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %bb.r, label %1, !prof !240

bb.r:                                             ; preds = %.lr.ph, %bb.q, %bb.p
  %.sroa.799.1.ph = phi i8 [ 2, %bb.p ], [ 2, %bb.q ], [ 1, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2317
  %i.as = call noundef ptr @_RNvXs2_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtB7_9IntoError10into_error(i8 noundef range(i8 0, 3) %.sroa.799.1.ph, i8 %i.an), !noalias !2317 ; 4 uses
  store ptr %i.as, ptr %i.b, align 8, !noalias !2317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2317
  store i8 8, ptr %i.a, align 8, !noalias !2306
  %i.at = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultxNtNtB8_4util13ParseIntErrorEINtB8_12ErrorContextxB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit unwind label %bb.s, !noalias !2317

bb.s:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.av = icmp eq ptr %i.as, null
  br i1 %i.av, label %common.resume, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !2320
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire, !noalias !2306
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %common.resume unwind label %bb.v, !noalias !2317

bb.v:                                             ; preds = %bb.u
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !2317
  unreachable

common.resume:                                    ; preds = %bb.ap, %bb.an, %bb.ao, %bb.s, %bb.t, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.s ], [ %lpad.phi, %bb.ap ], [ %i.au, %bb.t ], [ %i.au, %bb.u ], [ %lpad.phi, %bb.ao ], [ %lpad.phi, %bb.an ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultxNtNtB8_4util13ParseIntErrorEINtB8_12ErrorContextxB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2317
  %i.az = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.as, ptr noundef %i.at), !noalias !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2317
  br label %bb.ai

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit: ; preds = %1
  %or.cond.i56 = icmp ugt i64 %2, 255
  br i1 %or.cond.i56, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit
  %i.ba = icmp eq i64 %i.al, 0
  br i1 %i.ba, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = trunc nuw nsw i64 %2 to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = or disjoint i32 %i.bc, 1
  br label %.lr.ph164.preheader

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2329
  store i8 5, ptr %i.e, align 8, !noalias !2329
  %i.be = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e) #20, !noalias !2306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2329
  br label %bb.ai

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2329
  store i8 22, ptr %i.d, align 8, !noalias !2329
  %i.bf = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #20, !noalias !2306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2329
  br label %bb.ai

.lr.ph164.preheader:                              ; preds = %bb.l, %bb.x
  %.sroa.19.0 = phi i64 [ %i.al, %bb.x ], [ %.sroa.13.0.ph, %bb.l ] ; 7 uses
  %.sroa.1293.0 = phi ptr [ %i.ak, %bb.x ], [ %.sroa.890.0.ph, %bb.l ] ; 3 uses
  %.sroa.091.0 = phi i32 [ %i.bd, %bb.x ], [ 0, %bb.l ]
  store ptr %.sroa.1293.0, ptr %i.j, align 8, !alias.scope !2293, !noalias !2302, !captures !1057
  store i64 %.sroa.19.0, ptr %i.k, align 8, !alias.scope !2293, !noalias !2302
  call void @llvm.experimental.noalias.scope.decl(metadata !2330)
  %umax190 = call i64 @llvm.umin.i64(i64 %.sroa.19.0, i64 3) ; 2 uses
  br label %.lr.ph164

._crit_edge:                                      ; preds = %.lr.ph164
  %i.bg = icmp samesign ugt i64 %.sroa.0.0.i58163, %.sroa.19.0
  br i1 %i.bg, label %bb.ab, label %._crit_edge.thread, !prof !2333

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %bb.aa
  %.sroa.0.0.i58163 = phi i64 [ %i.bk, %bb.aa ], [ 0, %.lr.ph164.preheader ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.1293.0, i64 %.sroa.0.0.i58163
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !2330, !noalias !2334, !noundef !5
  %i.bj = icmp eq i8 %i.bi, 58
  br i1 %i.bj, label %bb.aa, label %._crit_edge

bb.aa:                                            ; preds = %.lr.ph164
  %i.bk = add nuw nsw i64 %.sroa.0.0.i58163, 1    ; 2 uses
  %exitcond191.not = icmp eq i64 %i.bk, %umax190
  br i1 %exitcond191.not, label %._crit_edge.thread, label %.lr.ph164

._crit_edge.thread:                               ; preds = %bb.aa, %._crit_edge
  %.sroa.0.0.i58.lcssa.ph239 = phi i64 [ %.sroa.0.0.i58163, %._crit_edge ], [ %umax190, %bb.aa ] ; 4 uses
  %i.bl = icmp eq i64 %.sroa.19.0, %.sroa.0.0.i58.lcssa.ph239
  br i1 %i.bl, label %_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit.thread, label %_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit

bb.ab:                                            ; preds = %._crit_edge
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i58163, i64 noundef range(i64 0, -9223372036854775808) %.sroa.19.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.19.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #24, !noalias !2336
  unreachable

_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit.thread: ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2336
  store i8 3, ptr %i.c, align 8, !noalias !2336
  %i.bm = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c) #20, !noalias !2336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2336
  br label %bb.ai

_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit: ; preds = %._crit_edge.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.1293.0, i64 %.sroa.0.0.i58.lcssa.ph239
  %i.bo = sub nuw nsw i64 %.sroa.19.0, %.sroa.0.0.i58.lcssa.ph239
  %.sroa.049.0.extract.trunc.i = trunc i64 %.sroa.0.0.i58.lcssa.ph239 to i32
  store ptr %i.bn, ptr %i.j, align 8, !alias.scope !2293, !noalias !2302, !captures !1057
  store i64 %i.bo, ptr %i.k, align 8, !alias.scope !2293, !noalias !2302
  %.sroa.9.3.insert.ext = and i32 %.sroa.088.0.ph, 16711680
  %.sroa.9.3.insert.insert = or i32 %.sroa.091.0, %.sroa.9.3.insert.ext
  %.sroa.9.4.insert.ext = shl i32 %.sroa.049.0.extract.trunc.i, 24
  %.sroa.9.4.insert.insert = or i32 %.sroa.9.3.insert.insert, %.sroa.9.4.insert.ext
  br label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_.exit

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 32, ptr %i.i, align 8
  %i.bp = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.loopexit

bb.ad:                                            ; preds = %bb.b
  %i.bq = load ptr, ptr %i.n, align 8, !nonnull !5, !align !89, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2337)
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !2337, !nonnull !5, !align !89, !noundef !5 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !2337, !noundef !5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bv = load i16, ptr %i.bu, align 8, !noalias !2337, !noundef !5 ; 2 uses
  %i.bw = zext i16 %i.bv to i64                   ; 2 uses
  %i.bx = icmp eq i64 %i.bt, %i.bw
  br i1 %i.bx, label %bb.ae, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53, !prof !240

bb.ae:                                            ; preds = %bb.ad
  %i.by = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq) #20 ; 2 uses
  %i.bz = extractvalue { i64, ptr } %i.by, 0
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.pre205 = load ptr, ptr %i.bq, align 8, !alias.scope !2337 ; 3 uses
  %.phi.trans.insert206 = getelementptr inbounds nuw i8, ptr %.pre205, i64 8
  %.pre207 = load i64, ptr %.phi.trans.insert206, align 8, !alias.scope !2340
  %.phi.trans.insert208 = getelementptr inbounds nuw i8, ptr %.pre205, i64 16
  %.pre209 = load i16, ptr %.phi.trans.insert208, align 8, !alias.scope !2340 ; 2 uses
  %.pre210 = zext i16 %.pre209 to i64             ; 2 uses
  %i.cb = icmp eq i64 %.pre207, %.pre210
  call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  br i1 %i.cb, label %bb.ag, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53, !prof !254

bb.ag:                                            ; preds = %bb.af
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #24, !noalias !2340
  unreachable

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53: ; preds = %bb.ad, %bb.af
  %i.cc = phi ptr [ %.pre205, %bb.af ], [ %i.br, %bb.ad ] ; 2 uses
  %i.cd = phi i16 [ %.pre209, %bb.af ], [ %i.bv, %bb.ad ]
  %.pre-phi243 = phi i64 [ %.pre210, %bb.af ], [ %i.bw, %bb.ad ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load ptr, ptr %i.cc, align 8, !alias.scope !2340, !nonnull !5, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.pre-phi243
  store i8 37, ptr %i.cg, align 1, !noalias !2340
  %i.ch = add i16 %i.cd, 1
  store i16 %i.ch, ptr %i.ce, align 8, !alias.scope !2340
  br label %.loopexit

bb.ah:                                            ; preds = %bb.ae
  %i.ci = extractvalue { i64, ptr } %i.by, 1
  br label %.loopexit

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_.exit: ; preds = %_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit, %bb.c
  %.sroa.9.0109 = phi i32 [ %.sroa.9.4.insert.insert, %_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit ], [ 16711680, %bb.c ]
  %i.cj = call fastcc { i64, ptr } @_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE6format0Bd_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i32 %.sroa.9.0109) #25 ; 2 uses
  %i.ck = extractvalue { i64, ptr } %i.cj, 0
  %i.cl = extractvalue { i64, ptr } %i.cj, 1
  %i.cm = trunc nuw i64 %i.ck to i1
  br i1 %i.cm, label %bb.ai, label %.backedgethread-pre-split

bb.ai:                                            ; preds = %_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit.thread, %bb.z, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultxNtNtB8_4util13ParseIntErrorEINtB8_12ErrorContextxB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit, %bb.y, %bb.j, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_.exit
  %.sroa.621.0 = phi ptr [ %i.cl, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_.exit ], [ %i.ae, %bb.j ], [ %i.bm, %_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons.exit.thread ], [ %i.bf, %bb.z ], [ %i.be, %bb.y ], [ %i.az, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultxNtNtB8_4util13ParseIntErrorEINtB8_12ErrorContextxB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %.sroa.621.0, ptr %i.h, align 8
  %i.cn = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.co = load i8, ptr %i.cn, align 1, !range !151, !noundef !5
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73

.backedgethread-pre-split:                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit74, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_.exit, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char.exit
  %.pr = load i64, ptr %i.k, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedgethread-pre-split, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit77
  %i.cq = phi i64 [ %.pr, %.backedgethread-pre-split ], [ %i.fz, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit77 ] ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.loopexit, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cs = load ptr, ptr %i.n, align 8, !nonnull !5, !align !89, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2343)
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !2343, !nonnull !5, !align !89, !noundef !5 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !2343, !noundef !5
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cx = load i16, ptr %i.cw, align 8, !noalias !2343, !noundef !5 ; 2 uses
  %i.cy = zext i16 %i.cx to i64                   ; 2 uses
  %i.cz = icmp eq i64 %i.cv, %i.cy
  br i1 %i.cz, label %bb.ak, label %.thread249, !prof !240

bb.ak:                                            ; preds = %bb.aj
  %i.da = invoke { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cs) #20
          to label %.noexc unwind label %.loopexit147 ; 2 uses

.noexc:                                           ; preds = %bb.ak
  %i.db = extractvalue { i64, ptr } %i.da, 0
  %i.dc = trunc nuw i64 %i.db to i1
  br i1 %i.dc, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %.noexc
  %.pre199 = load ptr, ptr %i.cs, align 8, !alias.scope !2343 ; 3 uses
  %.phi.trans.insert200 = getelementptr inbounds nuw i8, ptr %.pre199, i64 8
  %.pre201 = load i64, ptr %.phi.trans.insert200, align 8, !alias.scope !2346
  %.phi.trans.insert202 = getelementptr inbounds nuw i8, ptr %.pre199, i64 16
  %.pre203 = load i16, ptr %.phi.trans.insert202, align 8, !alias.scope !2346 ; 2 uses
  %.pre211 = zext i16 %.pre203 to i64             ; 2 uses
  %i.dd = icmp eq i64 %.pre201, %.pre211
  call void @llvm.experimental.noalias.scope.decl(metadata !2346)
  br i1 %i.dd, label %bb.am, label %.thread249, !prof !254

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #24
          to label %.noexc47 unwind label %.loopexit.split-lp

.noexc47:                                         ; preds = %bb.am
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73: ; preds = %bb.ai, %bb.as, %bb.ar, %bb.aq
  %.sroa.9.0 = phi ptr [ %i.di, %bb.as ], [ %i.di, %bb.aq ], [ %i.di, %bb.ar ], [ %.sroa.621.0, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.loopexit

.loopexit147:                                     ; preds = %bb.ak
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNvXsr_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write9write_strCsa9sSWSfjDbm_4jiff:bb.a
  %i.e = icmp ugt i64 %i.c, 9
  %or.cond.not.i.not = or i1 %i.d, %i.e           ; 2 uses
  br i1 %or.cond.not.i.not, label %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsa9sSWSfjDbm_4jiff.exit, label %.preheader.i, !prof !2482

.preheader.i:                                     ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %i.c, %i.b
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = add i64 %2, -1
  %i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.h)
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i
  %.sroa.02.010.i.ph = phi i64 [ %i.b, %.lr.ph.i ], [ %i.n, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.k = and i64 %i.j, 15                         ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 16, i64 %i.k
  %n.vec = sub i64 %i.j, %i.m                     ; 2 uses
  %i.n = add i64 %n.vec, %i.b
  %invariant.gep = getelementptr i8, ptr %i.g, i64 %i.b
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.o, align 1, !alias.scope !2480, !noalias !2477
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index
  store <16 x i8> %wide.load, ptr %gep, align 1, !alias.scope !2477, !noalias !2480
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2483

._crit_edge.i:                                    ; preds = %bb.c, %.preheader.i
  %i.q = trunc nuw nsw i64 %i.c to i8
  store i8 %i.q, ptr %0, align 1, !alias.scope !2477, !noalias !2480
  br label %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsa9sSWSfjDbm_4jiff.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %.sroa.02.010.i = phi i64 [ %i.w, %bb.c ], [ %.sroa.02.010.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.r = sub nuw nsw i64 %.sroa.02.010.i, %i.b    ; 3 uses
  %i.s = icmp ult i64 %i.r, %2
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #24, !noalias !2486
  unreachable

bb.c:                                             ; preds = %scalar.ph
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !2480, !noalias !2477, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.010.i
  store i8 %i.u, ptr %i.v, align 1, !alias.scope !2477, !noalias !2480
  %i.w = add nuw i64 %.sroa.02.010.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !2487

_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.a, %._crit_edge.i
  ret i1 %or.cond.not.i.not
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @_RNvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB7_9Extension18write_negative_int(i8 noundef, i8 noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error2tz6offsetNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs2_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtB7_9IntoError10into_error(i8 noundef range(i8 0, 3), i8) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone14to_offset_info(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232), i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZone14to_offset_info(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtNtCsb09rMIQFAXO_9jiff_core5civil4date24iso_week_start_from_year(i16 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYINtNtCsb09rMIQFAXO_9jiff_core4util8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write10write_charCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef dereferenceable(10), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYINtNtCsb09rMIQFAXO_9jiff_core4util8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef dereferenceable(10), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef range(i8 0, 9)) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @_RNvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB7_9Extension14write_str_cold(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), i8 noundef range(i8 0, 3), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom15format_datetimeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom18format_12hour_timeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvNtNtCsa9sSWSfjDbm_4jiff4util4utf86decode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom11format_dateNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom11format_timeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB7_14BrokenDownTime7to_date7to_date(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #16

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { noinline }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { noinline noreturn }
attributes #25 = { inlinehint }
attributes #26 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{i8 -1, i8 8}
!5 = !{}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_: argument 0"}
!8 = distinct !{!8, !"_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_"}
!9 = !{!10, !12, !14, !16, !7}
!10 = distinct !{!10, !11, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!11 = distinct !{!11, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!12 = distinct !{!12, !13, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!13 = distinct !{!13, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!14 = distinct !{!14, !15, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!15 = distinct !{!15, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!16 = distinct !{!16, !17, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!17 = distinct !{!17, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtNtBM_3fmt7strtime7printer4ItemNtBK_5ErrorEINtBK_12ErrorContextB1x_B27_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_: argument 0"}
!20 = distinct !{!20, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtNtBM_3fmt7strtime7printer4ItemNtBK_5ErrorEINtBK_12ErrorContextB1x_B27_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_: argument 0"}
!23 = distinct !{!23, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_"}
!24 = !{i8 0, i8 36}
!25 = !{!22, !19}
!26 = !{!27, !29}
!27 = distinct !{!27, !28, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff: argument 0"}
!28 = distinct !{!28, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff"}
!29 = distinct !{!29, !30, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff: argument 0"}
!30 = distinct !{!30, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff"}
!31 = !{!32, !34}
!32 = distinct !{!32, !33, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff: argument 0"}
!33 = distinct !{!33, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff"}
!34 = distinct !{!34, !35, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff: argument 0"}
!35 = distinct !{!35, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff"}
!36 = !{!37, !39}
!37 = distinct !{!37, !38, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff: argument 0"}
!38 = distinct !{!38, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff"}
!39 = distinct !{!39, !40, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff: argument 0"}
!40 = distinct !{!40, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff"}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff: argument 0"}
!43 = distinct !{!43, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff"}
!44 = distinct !{!44, !45, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff: argument 0"}
!45 = distinct !{!45, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff"}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff: argument 0"}
!48 = distinct !{!48, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff"}
!49 = distinct !{!49, !50, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff: argument 0"}
!50 = distinct !{!50, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff"}
!51 = !{!52, !54}
!52 = distinct !{!52, !53, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff: argument 0"}
!53 = distinct !{!53, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff"}
!54 = distinct !{!54, !55, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff: argument 0"}
!55 = distinct !{!55, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff"}
!56 = !{!57, !59, !61, !63}
!57 = distinct !{!57, !58, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!58 = distinct !{!58, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!59 = distinct !{!59, !60, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!60 = distinct !{!60, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!61 = distinct !{!61, !62, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!62 = distinct !{!62, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!63 = distinct !{!63, !64, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!64 = distinct !{!64, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!65 = !{i32 0, i32 7}
!66 = !{!67, !69, !71, !73}
!67 = distinct !{!67, !68, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!68 = distinct !{!68, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!69 = distinct !{!69, !70, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!70 = distinct !{!70, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!71 = distinct !{!71, !72, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!72 = distinct !{!72, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!73 = distinct !{!73, !74, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!74 = distinct !{!74, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!75 = !{!76, !78, !80, !82}
!76 = distinct !{!76, !77, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!77 = distinct !{!77, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!78 = distinct !{!78, !79, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!79 = distinct !{!79, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!80 = distinct !{!80, !81, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!81 = distinct !{!81, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!82 = distinct !{!82, !83, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!83 = distinct !{!83, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE10format_oneBb_: argument 0"}
!86 = distinct !{!86, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE10format_oneBb_"}
!87 = distinct !{!87, !86, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE10format_oneBb_: argument 1"}
!88 = !{!87}
!89 = !{i64 8}
!90 = !{i8 0, i8 8}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE16fmt_weekday_fullBb_: argument 0"}
!93 = distinct !{!93, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE16fmt_weekday_fullBb_"}
!94 = !{!95, !97, !92}
!95 = distinct !{!95, !96, !"_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE16fmt_weekday_full0Bd_: argument 0"}
!96 = distinct !{!96, !"_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE16fmt_weekday_full0Bd_"}
!97 = distinct !{!97, !98, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_13DefaultCustomE16fmt_weekday_full0EBO_: argument 0"}
!98 = distinct !{!98, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_13DefaultCustomE16fmt_weekday_full0EBO_"}
!99 = !{i16 0, i16 2}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtB13_5error5ErrorEEB13_: argument 0"}
!102 = distinct !{!102, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtB13_5error5ErrorEEB13_"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!105 = distinct !{!105, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!108 = distinct !{!108, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!109 = !{!107, !104, !101}
!110 = !{!111, !113, !107, !104, !101, !92}
!111 = distinct !{!111, !112, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!112 = distinct !{!112, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!113 = distinct !{!113, !114, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!114 = distinct !{!114, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!115 = !{!"branch_weights", i32 1, i32 14000}
!116 = !{!117, !119}
!117 = distinct !{!117, !118, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_: argument 0"}
!118 = distinct !{!118, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_"}
!119 = distinct !{!119, !118, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_: argument 1"}
!120 = !{!121, !87}
!121 = distinct !{!121, !118, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_: argument 2"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE18fmt_weekday_abbrevBb_: argument 0"}
!124 = distinct !{!124, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE18fmt_weekday_abbrevBb_"}
!125 = !{!126, !128, !123}
!126 = distinct !{!126, !127, !"_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE18fmt_weekday_abbrev0Bd_: argument 0"}
!127 = distinct !{!127, !"_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE18fmt_weekday_abbrev0Bd_"}
!128 = distinct !{!128, !129, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_13DefaultCustomE18fmt_weekday_abbrev0EBO_: argument 0"}
!129 = distinct !{!129, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_13DefaultCustomE18fmt_weekday_abbrev0EBO_"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtB13_5error5ErrorEEB13_: argument 0"}
!132 = distinct !{!132, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtB13_5error5ErrorEEB13_"}
!133 = !{!134}
end_hunk_2
