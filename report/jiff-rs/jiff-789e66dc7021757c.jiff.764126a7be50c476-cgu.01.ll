Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.01?download=true
inline.NumInlined: 432
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE6format0Bd_:bb.a
  store i32 %i.bte, ptr %i.ee, align 8, !noalias !1423
  %.sroa.41430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 256, ptr %.sroa.41430.0..sroa_idx, align 4, !noalias !1423
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit106.i

_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit106.i: ; preds = %bb.vn, %bb.vo
  %.sink = phi i8 [ 7, %bb.vo ], [ -1, %bb.vn ]
  %i.btf = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i8 %.sink, ptr %i.btf, align 8, !noalias !1423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !2001
  store i8 1, ptr %i.dr, align 8, !noalias !2002
  %.sroa.41042.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  store i8 122, ptr %.sroa.41042.0..sroa_idx, align 1, !noalias !2002
  %.sroa.51043.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  store i8 0, ptr %.sroa.51043.0..sroa_idx, align 2, !noalias !2002
  call fastcc void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ee, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dr) #25, !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !2001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !1423
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.vp:                                            ; preds = %bb.vk
  %i.btg = tail call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 2) #20, !noalias !1998
  store ptr %i.btg, ptr %i.ed, align 8, !noalias !1423
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit105.i

bb.vq:                                            ; preds = %bb.vk
  %i.bth = getelementptr inbounds nuw i8, ptr %.val87, i64 76
  %i.bti = load i32, ptr %i.bth, align 4, !noalias !1998
  store i32 %i.bti, ptr %i.ed, align 8, !noalias !1423
  %.sroa.41435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 257, ptr %.sroa.41435.0..sroa_idx, align 4, !noalias !1423
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit105.i

_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit105.i: ; preds = %bb.vp, %bb.vq
  %.sink2269 = phi i8 [ 7, %bb.vq ], [ -1, %bb.vp ]
  %i.btj = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i8 %.sink2269, ptr %i.btj, align 8, !noalias !1423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !2003
  store i8 1, ptr %i.ds, align 8, !noalias !2004
  %.sroa.41052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store i8 122, ptr %.sroa.41052.0..sroa_idx, align 1, !noalias !2004
  %.sroa.51053.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store i8 1, ptr %.sroa.51053.0..sroa_idx, align 2, !noalias !2004
  call fastcc void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ed, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ds) #25, !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !2003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !1423
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.vr:                                            ; preds = %bb.vl
  %i.btk = tail call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 2) #20, !noalias !1999
  store ptr %i.btk, ptr %i.ec, align 8, !noalias !1423
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit104.i

bb.vs:                                            ; preds = %bb.vl
  %i.btl = getelementptr inbounds nuw i8, ptr %.val88, i64 76
  %i.btm = load i32, ptr %i.btl, align 4, !noalias !1999
  store i32 %i.btm, ptr %i.ec, align 8, !noalias !1423
  %.sroa.41440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 65793, ptr %.sroa.41440.0..sroa_idx, align 4, !noalias !1423
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit104.i

_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit104.i: ; preds = %bb.vr, %bb.vs
  %.sink2270 = phi i8 [ 7, %bb.vs ], [ -1, %bb.vr ]
  %i.btn = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i8 %.sink2270, ptr %i.btn, align 8, !noalias !1423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !2005
  store i8 1, ptr %i.dt, align 8, !noalias !2006
  %.sroa.41062.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store i8 122, ptr %.sroa.41062.0..sroa_idx, align 1, !noalias !2006
  %.sroa.51063.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  store i8 2, ptr %.sroa.51063.0..sroa_idx, align 2, !noalias !2006
  call fastcc void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ec, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dt) #25, !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !2005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !1423
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.vt:                                            ; preds = %bb.vm
  %i.bto = tail call noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef 2) #20, !noalias !2000
  store ptr %i.bto, ptr %i.eb, align 8, !noalias !1423
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit.i

bb.vu:                                            ; preds = %bb.vm
  %i.btp = getelementptr inbounds nuw i8, ptr %.val89, i64 76
  %i.btq = load i32, ptr %i.btp, align 4, !noalias !2000
  store i32 %i.btq, ptr %i.eb, align 8, !noalias !1423
  %.sroa.41445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store i32 1, ptr %.sroa.41445.0..sroa_idx, align 4, !noalias !1423
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit.i

_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit.i: ; preds = %bb.vt, %bb.vu
  %.sink2271 = phi i8 [ 7, %bb.vu ], [ -1, %bb.vt ]
  %i.btr = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i8 %.sink2271, ptr %i.btr, align 8, !noalias !1423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !2007
  store i8 1, ptr %i.du, align 8, !noalias !2008
  %.sroa.41072.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 122, ptr %.sroa.41072.0..sroa_idx, align 1, !noalias !2008
  %.sroa.51073.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i8 3, ptr %.sroa.51073.0..sroa_idx, align 2, !noalias !2008
  call fastcc void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eb, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.du) #25, !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !2007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !1423
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.vv:                                            ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !1423
  store i8 31, ptr %i.dz, align 8, !noalias !1423
  %i.bts = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dz) #20, !noalias !1424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !1423
  br label %bb.rp

bb.vw:                                            ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  br label %bb.vy

bb.vx:                                            ; preds = %bb.vy
  %i.btt = icmp eq i64 %.sroa.0.0.i181981.a, 0
  br i1 %i.btt, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit673, label %.lr.ph.preheader

bb.vy:                                            ; preds = %bb.vw, %bb.vz
  %.sroa.0.0.i181981.a = phi i64 [ 0, %bb.vw ], [ %i.btx, %bb.vz ] ; 4 uses
  %i.btu = getelementptr inbounds nuw i8, ptr %i.bav, i64 %.sroa.0.0.i181981.a
  %i.btv = load i8, ptr %i.btu, align 1, !alias.scope !2010, !noalias !2011, !noundef !6
  %i.btw = add i8 %i.btv, -48
  %or.cond48.i = icmp ult i8 %i.btw, 10
  br i1 %or.cond48.i, label %bb.vz, label %bb.vx

bb.vz:                                            ; preds = %bb.vy
  %i.btx = add nuw i64 %.sroa.0.0.i181981.a, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.btx, %i.bau
  br i1 %exitcond.not, label %.lr.ph.preheader, label %bb.vy

.lr.ph.preheader:                                 ; preds = %bb.vz, %bb.vx
  %.sroa.0.0.i181980 = phi i64 [ %.sroa.0.0.i181981.a, %bb.vx ], [ %i.bau, %bb.vz ] ; 2 uses
  %i.bty = getelementptr inbounds nuw i8, ptr %i.bav, i64 %.sroa.0.0.i181980 ; 2 uses
  %i.btz = sub nuw nsw i64 %i.bau, %.sroa.0.0.i181980 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.wc
  %.sroa.0.0.i241983 = phi ptr [ %i.bua, %bb.wc ], [ %i.bav, %.lr.ph.preheader ] ; 2 uses
  %.sroa.012.0.i1982 = phi i64 [ %i.buj, %bb.wc ], [ 0, %.lr.ph.preheader ]
  %i.bua = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i241983, i64 1 ; 2 uses
  %i.bub = load i8, ptr %.sroa.0.0.i241983, align 1, !alias.scope !2012, !noalias !2013, !noundef !6 ; 2 uses
  %i.buc = add i8 %i.bub, -48                     ; 2 uses
  %or.cond.i25 = icmp ult i8 %i.buc, 10
  br i1 %or.cond.i25, label %bb.wa, label %bb.wd

bb.wa:                                            ; preds = %.lr.ph
  %i.bud = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.012.0.i1982, i64 10) ; 2 uses
  %i.bue = extractvalue { i64, i1 } %i.bud, 1
  br i1 %i.bue, label %bb.wd, label %bb.wb, !prof !14

bb.wb:                                            ; preds = %bb.wa
  %i.buf = extractvalue { i64, i1 } %i.bud, 0
  %i.bug = zext nneg i8 %i.buc to i64
  %i.buh = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.buf, i64 %i.bug) ; 2 uses
  %i.bui = extractvalue { i64, i1 } %i.buh, 1
  br i1 %i.bui, label %bb.wd, label %bb.wc, !prof !14

bb.wc:                                            ; preds = %bb.wb
  %i.buj = extractvalue { i64, i1 } %i.buh, 0     ; 3 uses
  %i.buk = icmp eq ptr %i.bua, %i.bty
  br i1 %i.buk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, label %.lr.ph

bb.wd:                                            ; preds = %.lr.ph, %bb.wb, %bb.wa
  %.sroa.71723.1.ph = phi i8 [ 2, %bb.wa ], [ 2, %bb.wb ], [ 1, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !2014
  store i8 8, ptr %i.dm, align 8, !noalias !2014
  %i.bul = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultxNtNtB8_4util13ParseIntErrorEINtB8_12ErrorContextxB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dm, i8 noundef %.sroa.71723.1.ph, i8 %i.bub) #25, !noalias !2013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !2014
  br label %bb.rp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit: ; preds = %bb.wc
  %or.cond.i19 = icmp ugt i64 %i.buj, 255
  br i1 %or.cond.i19, label %bb.wh, label %bb.we

bb.we:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit
  %i.bum = icmp eq i64 %i.btz, 0
  br i1 %i.bum, label %bb.wg, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.bun = trunc nuw i64 %i.buj to i8
  br label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit673

bb.wg:                                            ; preds = %bb.we
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !2014
  store i8 5, ptr %i.dn, align 8, !noalias !2014
  %i.buo = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dn) #20, !noalias !2013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !2014
  br label %bb.rp

bb.wh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultxNtNtBK_4util13ParseIntErrorEINtBK_12ErrorContextxB1y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !2014
  store i8 22, ptr %i.dl, align 8, !noalias !2014
  %i.bup = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dl) #20, !noalias !2013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !2014
  br label %bb.rp

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit673: ; preds = %bb.vx, %bb.wf
  %.not.not.i = phi i1 [ false, %bb.wf ], [ true, %bb.vx ]
  %.sroa.01713.0 = phi i8 [ 1, %bb.wf ], [ 0, %bb.vx ] ; 2 uses
  %.sroa.101715.0 = phi i8 [ %i.bun, %bb.wf ], [ undef, %bb.vx ] ; 2 uses
  %.sroa.121717.0 = phi ptr [ %i.bty, %bb.wf ], [ %i.bav, %bb.vx ] ; 3 uses
  %.sroa.19.0 = phi i64 [ %i.btz, %bb.wf ], [ %i.bau, %bb.vx ]
  store ptr %.sroa.121717.0, ptr %i.em, align 8, !alias.scope !2009, !noalias !1424, !captures !20
  store i64 %.sroa.19.0, ptr %i.en, align 8, !alias.scope !2009, !noalias !1424
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121717.0) ]
  %i.buq = load i8, ptr %.sroa.121717.0, align 1, !noundef !6 ; 2 uses
  %i.bur = icmp eq i8 %i.buq, 102
  br i1 %i.bur, label %bb.wi, label %bb.wl

bb.wi:                                            ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !1423
  %i.bus = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val90 = load ptr, ptr %i.bus, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  %i.but = getelementptr inbounds nuw i8, ptr %.val90, i64 64
  %i.buu = load i32, ptr %i.but, align 8, !range !17, !noalias !2015, !noundef !6
  %i.buv = trunc nuw i32 %i.buu to i1
  br i1 %i.buv, label %bb.wj, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE18fmt_dot_fractionalBb_.exit

bb.wj:                                            ; preds = %bb.wi
  %i.buw = getelementptr inbounds nuw i8, ptr %.val90, i64 68
  %i.bux = load i32, ptr %i.buw, align 4, !noalias !2015, !noundef !6 ; 2 uses
  %i.buy = icmp eq i32 %i.bux, 0
  %or.cond12.i = and i1 %.not.not.i, %i.buy
  %i.buz = trunc nuw i8 %.sroa.01713.0 to i1
  %i.bva = icmp eq i8 %.sroa.101715.0, 0
  %or.cond.i675 = select i1 %i.buz, i1 %i.bva, i1 false
  %or.cond1.i675 = select i1 %or.cond12.i, i1 true, i1 %or.cond.i675
  br i1 %or.cond1.i675, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE18fmt_dot_fractionalBb_.exit, label %bb.wk

bb.wk:                                            ; preds = %bb.wj
  %.sroa.011.0.i676 = tail call i32 @llvm.abs.i32(i32 %i.bux, i1 false)
  store i32 %.sroa.011.0.i676, ptr %i.dy, align 8, !alias.scope !2015
  %.sroa.06.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i8 %.sroa.01713.0, ptr %.sroa.06.sroa.4.0..sroa_idx.i, align 4, !alias.scope !2015
  %.sroa.06.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 5
  store i8 %.sroa.101715.0, ptr %.sroa.06.sroa.5.0..sroa_idx.i, align 1, !alias.scope !2015
  %.sroa.06.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 6
  store i8 1, ptr %.sroa.06.sroa.6.0..sroa_idx.i, align 2, !alias.scope !2015
  br label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE18fmt_dot_fractionalBb_.exit

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE18fmt_dot_fractionalBb_.exit: ; preds = %bb.wi, %bb.wj, %bb.wk
  %.sink.i674 = phi i8 [ 5, %bb.wk ], [ 3, %bb.wi ], [ 3, %bb.wj ]
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i8 %.sink.i674, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !2015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !2016
  store i8 2, ptr %i.dv, align 8, !noalias !2017
  %.sroa.41085.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store i8 102, ptr %.sroa.41085.0..sroa_idx, align 1, !noalias !2017
  call fastcc void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dy, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dv) #25, !noalias !2018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !2016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !1423
  br label %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i

bb.wl:                                            ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !1423
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  store i8 %i.buq, ptr %i.bvb, align 1, !noalias !1423
  store i8 33, ptr %i.dx, align 8, !noalias !1423
  %i.bvc = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dx) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !1423
  br label %bb.rp

bb.wm:                                            ; preds = %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !1423
  br label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE10format_oneBb_.exit

bb.wn:                                            ; preds = %_RINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtB8_3fmt7strtime7printer4ItemNtB6_5ErrorEINtB6_12ErrorContextB19_B1J_E7contextNtNtNtB6_3fmt7strtime5ErrorEB8_.exit150.i
  %.sroa.490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.490.0.copyload.i = load i64, ptr %.sroa.490.0..sroa_idx.i, align 8, !noalias !1423 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !1423
  %i.bvd = ptrtoint ptr %i.baz to i64             ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2019)
  call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  %i.bve = icmp ne i8 %i.bax, 6
  call void @llvm.assume(i1 %i.bve)
  %i.bvf = add nsw i8 %i.bax, -3
  %.inv.i = icmp samesign ult i8 %i.bax, 3
  %narrow.i = select i1 %.inv.i, i8 3, i8 %i.bvf
  switch i8 %narrow.i, label %bb.wo [
    i8 0, label %.thread1952
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
  %i.bvg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bvh = load ptr, ptr %i.bvg, align 8, !alias.scope !2019, !nonnull !6, !align !8, !noundef !6 ; 16 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2021)
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.bvj = load i8, ptr %i.bvi, align 2, !range !2022, !alias.scope !2023, !noundef !6
  switch i8 %i.bvj, label %bb.wr [
    i8 2, label %.thread
    i8 0, label %.thread1896
    i8 1, label %bb.wq
  ]

bb.wq:                                            ; preds = %bb.wp
  br label %bb.wr

.thread1896:                                      ; preds = %bb.wp
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wp, %.thread1896, %bb.wq
  %.sroa.0.1.i.i = phi i8 [ 32, %.thread1896 ], [ %.sroa.14.8.extract.trunc, %bb.wp ], [ 48, %bb.wq ] ; 3 uses
  %i.bvk = load i8, ptr %i.el, align 4, !range !12, !alias.scope !2023, !noundef !6
  %i.bvl = trunc nuw i8 %i.bvk to i1
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.bvn = load i8, ptr %i.bvm, align 1, !alias.scope !2023
  %.sroa.03.1.i.i = select i1 %i.bvl, i8 %i.bvn, i8 %.sroa.14.9.extract.trunc ; 3 uses
  %i.bvo = icmp slt ptr %i.baz, null
  br i1 %i.bvo, label %bb.ws, label %bb.wt

.thread:                                          ; preds = %bb.wp
  %i.bvp = icmp slt ptr %i.baz, null
  br i1 %i.bvp, label %.thread1904, label %bb.wt

bb.ws:                                            ; preds = %bb.wr
  %.not15.i.i = icmp eq i8 %.sroa.03.1.i.i, 0
  br i1 %.not15.i.i, label %.thread1904, label %bb.wx, !prof !2024

bb.wt:                                            ; preds = %.thread, %.thread2614, %bb.wr
  %.sroa.0.2.i.i1902 = phi i8 [ %.sroa.0.2.i.i19031908, %.thread2614 ], [ %.sroa.0.1.i.i, %bb.wr ], [ %.sroa.14.8.extract.trunc, %.thread ] ; 3 uses
  %.sroa.03.0.i.i1900 = phi i8 [ 0, %.thread2614 ], [ %.sroa.03.1.i.i, %bb.wr ], [ 0, %.thread ] ; 3 uses
  %.sroa.014.0.i.i = phi i64 [ %i.bwj, %.thread2614 ], [ %i.bvd, %bb.wr ], [ %i.bvd, %.thread ] ; 16 uses
  switch i8 %.sroa.0.2.i.i1902, label %bb.wy [
    i8 48, label %bb.xi
    i8 32, label %bb.xj
  ]

.thread1904:                                      ; preds = %.thread, %bb.ws
  %.sroa.0.2.i.i19031908 = phi i8 [ %.sroa.0.1.i.i, %bb.ws ], [ %.sroa.14.8.extract.trunc, %.thread ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  %i.bvq = load ptr, ptr %i.bvh, align 8, !alias.scope !2025, !noalias !2026, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvq, i64 8
  %i.bvs = load i64, ptr %i.bvr, align 8, !noalias !2027, !noundef !6
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvq, i64 16
  %i.bvu = load i16, ptr %i.bvt, align 8, !noalias !2027, !noundef !6 ; 2 uses
  %i.bvv = zext i16 %i.bvu to i64                 ; 2 uses
  %i.bvw = icmp eq i64 %i.bvs, %i.bvv
  br i1 %i.bvw, label %bb.wu, label %.thread2614, !prof !14

bb.wu:                                            ; preds = %.thread1904
  %i.bvx = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bvh) #20, !noalias !2026 ; 2 uses
  %i.bvy = extractvalue { i64, ptr } %i.bvx, 0
  %i.bvz = trunc nuw i64 %i.bvy to i1
  br i1 %i.bvz, label %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i.thread, label %bb.wv

bb.wv:                                            ; preds = %bb.wu
  %.pre2319 = load ptr, ptr %i.bvh, align 8, !alias.scope !2025, !noalias !2026 ; 3 uses
  %.phi.trans.insert2320 = getelementptr inbounds nuw i8, ptr %.pre2319, i64 8
  %.pre2321 = load i64, ptr %.phi.trans.insert2320, align 8, !alias.scope !2028, !noalias !2026
  %.phi.trans.insert2322 = getelementptr inbounds nuw i8, ptr %.pre2319, i64 16
  %.pre2323 = load i16, ptr %.phi.trans.insert2322, align 8, !alias.scope !2028, !noalias !2026 ; 2 uses
  %.pre2341 = zext i16 %.pre2323 to i64           ; 2 uses
  %i.bwa = icmp eq i64 %.pre2321, %.pre2341
  call void @llvm.experimental.noalias.scope.decl(metadata !2028), !noalias !2026
  br i1 %i.bwa, label %bb.ww, label %.thread2614, !prof !16

bb.ww:                                            ; preds = %bb.wv
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #24, !noalias !2029
  unreachable

bb.wx:                                            ; preds = %bb.ws
  %i.bwb = sub i64 0, %i.bvd
  %i.bwc = call { i64, ptr } @_RNvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB7_9Extension18write_negative_int(i8 noundef %.sroa.0.1.i.i, i8 noundef %.sroa.03.1.i.i, i64 noundef %i.bwb, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bvh) #20, !noalias !2026
  br label %_RINvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB8_9Extension9write_intxEBc_.exit.i

.thread2614:                                      ; preds = %.thread1904, %bb.wv
  %i.bwd = phi ptr [ %.pre2319, %bb.wv ], [ %i.bvq, %.thread1904 ] ; 2 uses
  %i.bwe = phi i16 [ %.pre2323, %bb.wv ], [ %i.bvu, %.thread1904 ]
  %.pre-phi2617 = phi i64 [ %.pre2341, %bb.wv ], [ %i.bvv, %.thread1904 ]
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bwd, i64 16
  %i.bwg = load ptr, ptr %i.bwd, align 8, !alias.scope !2028, !noalias !2026, !nonnull !6, !noundef !6
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwg, i64 %.pre-phi2617
  store i8 45, ptr %i.bwh, align 1, !noalias !2029
  %i.bwi = add i16 %i.bwe, 1
  store i16 %i.bwi, ptr %i.bwf, align 8, !alias.scope !2028, !noalias !2026
  %i.bwj = sub i64 0, %i.bvd
  br label %bb.wt

bb.wy:                                            ; preds = %bb.xj, %bb.xi, %bb.wt
  call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  %..i = call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 %.sroa.03.0.i.i1900, i8 20) ; 3 uses
  %i.bwk = icmp ult i64 %.sroa.014.0.i.i, 10
  br i1 %i.bwk, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit23, label %bb.wz

bb.wz:                                            ; preds = %bb.wy
  %i.bwl = icmp ult i64 %.sroa.014.0.i.i, 100
  br i1 %i.bwl, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit23, label %.thread1916

.thread1916:                                      ; preds = %bb.xk, %bb.wz
  %..i19141918 = phi i8 [ %..i, %bb.wz ], [ 2, %bb.xk ] ; 3 uses
  %i.bwm = icmp ult i64 %.sroa.014.0.i.i, 1000
  br i1 %i.bwm, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit23, label %bb.xa

bb.xa:                                            ; preds = %.thread1916
  %i.bwn = icmp ult i64 %.sroa.014.0.i.i, 10000
  br i1 %i.bwn, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit23, label %.thread2620

.thread2620:                                      ; preds = %bb.xl, %bb.xa
  %..i1914191826192622 = phi i8 [ %..i19141918, %bb.xa ], [ 4, %bb.xl ]
  %i.bwo = call fastcc noundef i32 @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl(i64 noundef range(i64 0, -9223372036854775807) %.sroa.014.0.i.i) #25, !noalias !2031 ; 2 uses
  %i.bwp = icmp samesign ult i32 %i.bwo, 20
  call void @llvm.assume(i1 %i.bwp), !noalias !2031
  %i.bwq = trunc nuw nsw i32 %i.bwo to i8
  %i.bwr = add nuw nsw i8 %i.bwq, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit23

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit23: ; preds = %bb.wy, %bb.wz, %.thread1916, %bb.xa, %.thread2620
  %i.bws = phi i1 [ false, %.thread2620 ], [ true, %bb.wy ], [ false, %bb.wz ], [ false, %.thread1916 ], [ false, %bb.xa ]
  %..i1915 = phi i8 [ %..i1914191826192622, %.thread2620 ], [ %..i, %bb.wy ], [ %..i, %bb.wz ], [ %..i19141918, %.thread1916 ], [ %..i19141918, %bb.xa ] ; 2 uses
  %.sroa.0.0.i22 = phi i8 [ %i.bwr, %.thread2620 ], [ 1, %bb.wy ], [ 2, %bb.wz ], [ 3, %.thread1916 ], [ 4, %bb.xa ]
  %..i677 = call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 21) %.sroa.0.0.i22, i8 %..i1915)
  call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  %i.bwt = zext nneg i8 %..i677 to i64
  %i.bwu = load ptr, ptr %i.bvh, align 8, !alias.scope !2032, !noalias !2026, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bwu, i64 16
  %i.bww = load i16, ptr %i.bwv, align 8, !noalias !2033, !noundef !6
  %i.bwx = zext i16 %i.bww to i64
end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime12to_timestamp:bb.a
bb.ax:                                            ; preds = %bb.bd, %bb.bf, %bb.bl, %bb.b
  ret void

bb.ay:                                            ; preds = %bb.i, %bb.aw
  %.sroa.6.1.ph = phi ptr [ %i.by, %bb.aw ], [ %i.af, %bb.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2345
  store ptr %.sroa.6.1.ph, ptr %i.e, align 8, !noalias !2345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2345
  store i8 24, ptr %i.d, align 8
  %i.bz = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.bd unwind label %bb.az, !noalias !2345

bb.az:                                            ; preds = %bb.ay
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cb = icmp eq ptr %.sroa.6.1.ph, null
  br i1 %i.cb, label %common.resume, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cc = atomicrmw add ptr %.sroa.6.1.ph, i64 -1 release, align 8, !noalias !2346
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.bb, label %common.resume

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #20
          to label %common.resume unwind label %bb.bc, !noalias !2345

bb.bc:                                            ; preds = %bb.bb
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !2345
  unreachable

bb.bd:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2345
  %i.cf = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.6.1.ph, ptr noundef %i.bz), !noalias !2345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2345
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %i.cg, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ax

bb.be:                                            ; preds = %bb.ao, %bb.al, %bb.af, %bb.aa, %bb.y
  %.sroa.4.4..sroa.4.4..sroa.4.8..sroa.418.0.copyload.i = phi i64 [ %.sroa.5115.i.sroa.5.8.insert.insert.i, %bb.y ], [ %.sroa.5.i.sroa.5.6.insert.ext.i, %bb.al ], [ %.sroa.5101.i.sroa.5.7.insert.insert.i, %bb.af ], [ %.sroa.5108.i.sroa.5.8.insert.insert.i, %bb.aa ], [ 0, %bb.ao ]
  %.sroa.4.0..sroa.4.0..sroa.4.4..sroa.017.0.copyload.i = phi i32 [ %i.ba, %bb.y ], [ 0, %bb.al ], [ 0, %bb.af ], [ 0, %bb.aa ], [ 0, %bb.ao ]
  %.sroa.6.12.insert.ext = zext i32 %.sroa.016.0.copyload.i to i64
  %.sroa.6.12.insert.shift = shl nuw i64 %.sroa.6.12.insert.ext, 32
  %.sroa.6.12.insert.insert = or disjoint i64 %.sroa.4.4..sroa.4.4..sroa.4.8..sroa.418.0.copyload.i, %.sroa.6.12.insert.shift
  %i.ch = inttoptr i64 %.sroa.6.12.insert.insert to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i32 %.sroa.4.0..sroa.4.0..sroa.4.4..sroa.017.0.copyload.i, ptr %i.r, align 8
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.ch, ptr %.4..4..4..sroa_idx, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cj = load i32, ptr %i.ci, align 8, !range !17, !noundef !6
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = trunc nuw i32 %i.cj to i1
  br i1 %i.cm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit, label %bb.bf

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit: ; preds = %bb.be
  %.0..0..0..val = load i64, ptr %i.r, align 8    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2347)
  %i.cn = shl i32 %.sroa.016.0.copyload.i, 8
  %i.co = ashr i32 %i.cn, 24                      ; 3 uses
  %i.cp = icmp ult i32 %i.co, 3                   ; 2 uses
  %i.cq = or disjoint i32 %i.co, 12
  %.sroa.02.0.i.i.i = select i1 %i.cp, i32 %i.cq, i32 %i.co
  %i.cr = shl i32 %.sroa.016.0.copyload.i, 16
  %i.cs = ashr exact i32 %i.cr, 16
  %i.ct = add nsw i32 %i.cs, 32800
  %.neg.i.i.i = sext i1 %i.cp to i32
  %i.cu = add nsw i32 %i.ct, %.neg.i.i.i          ; 3 uses
  %i.cv = ashr i32 %.sroa.016.0.copyload.i, 24
  %i.cw = udiv i32 %i.cu, 100
  %i.cx = mul nuw nsw i32 %i.cu, 1461
  %i.cy = lshr i32 %i.cx, 2
  %i.cz = udiv i32 %i.cu, 400
  %i.da = mul nsw i32 %.sroa.02.0.i.i.i, 979
  %i.db = add nsw i32 %i.da, -2919
  %i.dc = lshr i32 %i.db, 5
  %i.dd = add nsw i32 %i.cv, -12699423
  %i.de = sub nuw nsw i32 %i.dd, %i.cw
  %i.df = add nuw nsw i32 %i.de, %i.cz
  %i.dg = add nsw i32 %i.df, %i.cy
  %i.dh = add nsw i32 %i.dg, %i.dc
  %i.di = sext i32 %i.dh to i64
  %i.dj = mul nsw i64 %i.di, 86400
  %i.dk = shl i64 %.0..0..0..val, 24
  %i.dl = ashr i64 %i.dk, 56
  %i.dm = mul nsw i64 %i.dl, 3600
  %i.dn = shl i64 %.0..0..0..val, 16
  %i.do = ashr i64 %i.dn, 56
  %i.dp = mul nsw i64 %i.do, 60
  %i.dq = shl i64 %.0..0..0..val, 8
  %i.dr = ashr i64 %i.dq, 56
  %.sroa.02.0.extract.trunc.i = trunc i64 %.0..0..0..val to i32 ; 3 uses
  %i.ds = sext i32 %i.cl to i64
  %i.dt = sub nsw i64 %i.dr, %i.ds
  %i.du = add nsw i64 %i.dt, %i.dm
  %i.dv = add nsw i64 %i.du, %i.dp
  %i.dw = add nsw i64 %i.dv, %i.dj                ; 2 uses
  %i.dx = icmp slt i64 %i.dw, 0
  %i.dy = icmp ne i32 %.sroa.02.0.extract.trunc.i, 0
  %or.cond3.not.i.i = and i1 %i.dy, %i.dx         ; 2 uses
  %i.dz = zext i1 %or.cond3.not.i.i to i64
  %.sroa.05.0.i.i = add nsw i64 %i.dw, %i.dz      ; 2 uses
  %i.ea = add nsw i64 %.sroa.05.0.i.i, 377705023201
  %or.cond.i.i = icmp ult i64 %i.ea, 631107230402
  br i1 %or.cond.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtBM_9timestamp9TimestampNtBK_5ErrorEINtBK_12ErrorContextB1x_B1Y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 26, ptr %i.q, align 8
  %i.eb = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #20
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eb, ptr %i.ec, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ax

bb.bg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2347
  store i32 0, ptr %i.c, align 8, !noalias !2347
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.cl, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !2347
  %i.ed = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsb09rMIQFAXO_9jiff_core9timestamp9TimestampNtNtB1f_6bounds10RangeErrorEINtB8_12ErrorContextB1b_B1X_E7contextNtNtNtB8_2tz6offset5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, i32 7167) #25, !noalias !2347 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2347
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ed, ptr %i.ee, align 8, !alias.scope !2347
  store i64 1, ptr %0, align 8, !alias.scope !2347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2348
  store ptr %i.ed, ptr %i.b, align 8, !noalias !2348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2348
  store i8 21, ptr %i.a, align 8
  %i.ef = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit unwind label %bb.bh, !noalias !2348

bb.bh:                                            ; preds = %bb.bg
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.eh = icmp eq ptr %i.ed, null
  br i1 %i.eh, label %common.resume, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ei = atomicrmw add ptr %i.ed, i64 -1 release, align 8, !noalias !2349
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.bj, label %common.resume

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %common.resume unwind label %bb.bk, !noalias !2348

bb.bk:                                            ; preds = %bb.bj
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !2348
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2348
  %i.el = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ed, ptr noundef %i.ef), !noalias !2348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2348
  store ptr %i.el, ptr %i.ee, align 8
  br label %bb.bl

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtBM_9timestamp9TimestampNtBK_5ErrorEINtBK_12ErrorContextB1x_B1Y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit
  %i.em = add i32 %.sroa.02.0.extract.trunc.i, -1000000000
  %.sroa.021.0.i.i = select i1 %or.cond3.not.i.i, i32 %i.em, i32 %.sroa.02.0.extract.trunc.i
  %i.en = inttoptr i64 %.sroa.05.0.i.i to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.021.0.i.i, ptr %i.eo, align 8, !alias.scope !2347
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.en, ptr %i.ep, align 8, !alias.scope !2347
  br label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtBM_9timestamp9TimestampNtBK_5ErrorEINtBK_12ErrorContextB1x_B1Y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit
  %storemerge = phi i64 [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtBM_9timestamp9TimestampNtBK_5ErrorEINtBK_12ErrorContextB1x_B1Y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.ax
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i16, ptr %i.c, align 8, !range !10, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.f = load i16, ptr %i.e, align 2              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.h = load i8, ptr %i.g, align 1               ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 94
  %i.j = load i8, ptr %i.i, align 2, !range !12, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 95
  %i.l = load i8, ptr %i.k, align 1               ; 4 uses
  %.not55 = icmp eq i16 %i.d, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.n = load i8, ptr %i.m, align 4, !range !12
  %.not56 = icmp eq i8 %i.n, 0
  %or.cond.not57 = select i1 %.not55, i1 true, i1 %.not56, !prof !21
  %.not50 = icmp eq i8 %i.j, 0
  %brmerge = or i1 %.not50, %or.cond.not57
  br i1 %brmerge, label %bb.b, label %bb.c, !prof !2350

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB7_14BrokenDownTime7to_date7to_date(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) #20
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = add i16 %i.f, 9999
  %or.cond.i = icmp ult i16 %i.o, 19999
  br i1 %or.cond.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.p = add i8 %i.h, -1
  %or.cond1.i = icmp ult i8 %i.p, 12
  br i1 %or.cond1.i, label %bb.e, label %bb.k, !prof !2351

bb.e:                                             ; preds = %bb.d
  %i.q = icmp slt i8 %i.l, 1
  br i1 %i.q, label %bb.k, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.r = icmp samesign ugt i8 %i.l, 28
  br i1 %i.r, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i8 %i.h, 2
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = srem i16 %i.f, 25
  %i.u = icmp eq i16 %i.t, 0
  %..i.i = select i1 %i.u, i16 15, i16 3
  %i.v = and i16 %..i.i, %i.f
  %i.w = icmp eq i16 %i.v, 0
  %spec.select.i.i = select i1 %i.w, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

bb.i:                                             ; preds = %bb.g
  %i.x = lshr i8 %i.h, 3
  %i.y = xor i8 %i.x, %i.h
  %i.z = or i8 %i.y, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i = phi i8 [ %spec.select.i.i, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = icmp samesign ugt i8 %i.l, %.sroa.0.0.i.i
  br i1 %i.aa, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, !prof !2352

bb.j:                                             ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i
  %.sroa.530.0.insert.ext.i = zext i16 %i.f to i32
  %.sroa.530.0.insert.shift.i = shl nuw i32 %.sroa.530.0.insert.ext.i, 16
  %.sroa.429.0.insert.ext.i = zext nneg i8 %i.h to i32
  %.sroa.429.0.insert.shift.i = shl nuw nsw i32 %.sroa.429.0.insert.ext.i, 8
  %.sroa.429.0.insert.insert.i = or disjoint i32 %.sroa.429.0.insert.shift.i, %.sroa.530.0.insert.shift.i
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j, %bb.c, %bb.e
  %.sroa.6.0.i.ph = phi i32 [ 767, %bb.e ], [ 8447, %bb.c ], [ %.sroa.429.0.insert.insert.i, %bb.j ], [ 3327, %bb.d ]
  %i.ab = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.6.0.i.ph) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 9, ptr %i.a, align 8
  %i.ac = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef %i.ab) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  store i16 1, ptr %0, align 8
  br label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit: ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i, %bb.f
  %.sroa.518.0.insert.ext.i = zext nneg i8 %i.l to i32 ; 2 uses
  %.sroa.518.0.insert.shift.i = shl nuw nsw i32 %.sroa.518.0.insert.ext.i, 24
  %.sroa.417.0.insert.ext.i = zext nneg i8 %i.h to i32 ; 3 uses
  %.sroa.417.0.insert.shift.i = shl nuw nsw i32 %.sroa.417.0.insert.ext.i, 16
  %.sroa.016.0.insert.ext.i = zext i16 %i.f to i32
  %i.ae = or disjoint i32 %.sroa.518.0.insert.shift.i, %.sroa.417.0.insert.shift.i
  %.sroa.016.0.insert.insert.i = or disjoint i32 %i.ae, %.sroa.016.0.insert.ext.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.ag = load i8, ptr %i.af, align 1, !range !9, !noundef !6 ; 3 uses
  %.not = icmp eq i8 %i.ag, 0
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit
  %i.ah = icmp ult i8 %i.h, 3                     ; 2 uses
  %i.ai = or disjoint i32 %.sroa.417.0.insert.ext.i, 12
  %.sroa.02.0.i.i = select i1 %i.ah, i32 %i.ai, i32 %.sroa.417.0.insert.ext.i
  %i.aj = sext i16 %i.f to i32
  %i.ak = add nsw i32 %i.aj, 32800
  %.neg.i.i = sext i1 %i.ah to i32
  %i.al = add nsw i32 %i.ak, %.neg.i.i            ; 3 uses
  %i.am = udiv i32 %i.al, 100
  %i.an = mul nuw nsw i32 %i.al, 1461
  %i.ao = lshr i32 %i.an, 2
  %i.ap = udiv i32 %i.al, 400
  %i.aq = mul nuw nsw i32 %.sroa.02.0.i.i, 979
  %i.ar = add nsw i32 %i.aq, -2919
  %i.as = lshr i32 %i.ar, 5
  %i.at = add nuw nsw i32 %.sroa.518.0.insert.ext.i, -12699423
  %i.au = sub nuw nsw i32 %i.at, %i.am
  %i.av = add nuw nsw i32 %i.au, %i.ap
  %i.aw = add nsw i32 %i.av, %i.ao
  %i.ax = add nsw i32 %i.aw, %i.as
  %i.ay = mul i32 %i.ax, 613566757
  %i.az = add i32 %i.ay, -1879048192
  %i.ba = lshr i32 %i.az, 29                      ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.m, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit, !prof !11

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @38, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #24
  unreachable

_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit: ; preds = %bb.l
  %i.bc = trunc nuw nsw i32 %i.ba to i8           ; 2 uses
  %.not47 = icmp eq i8 %i.ag, %i.bc
  br i1 %.not47, label %bb.n, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit53

bb.n:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.016.0.insert.insert.i, ptr %i.bd, align 2
  store i16 0, ptr %0, align 8
  br label %bb.o

_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit53: ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ag, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.bc, ptr %i.bf, align 2
  store i8 14, ptr %i.b, align 8
  %i.bg = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.bh, align 8
  store i16 1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit53, %bb.n, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw(i32 noundef range(i32 0, 1114112) %0, ptr noalias nofree noundef nonnull initializes((0, 1)) %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp samesign ult i32 %0, 128
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 2048
  %i.c = trunc i32 %0 to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, -128                ; 3 uses
  %i.f = lshr i32 %0, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %0, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %0, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %0 to i8
  store i8 %i.q, ptr %1, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_unchecked.exit

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  store i8 %i.r, ptr %1, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.e, ptr %i.s, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_unchecked.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp samesign ult i32 %0, 65536
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = or disjoint i8 %i.k, -32
  store i8 %i.u, ptr %1, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.i, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.e, ptr %i.w, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_unchecked.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %1, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.m, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.i, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.e, ptr %i.z, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_unchecked.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_unchecked.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05 = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
end_hunk_1
begin_hunk_2_@llvm.umin.i64
!2150 = distinct !{!2150, i1 true, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str"}
!2151 = distinct !{!2151, !2150, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str: argument 0"}
!2152 = !{!2148}
!2153 = !{!2148, !2149}
!2154 = !{!2149}
!2155 = !{!2151}
!2156 = distinct !{!2156, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE16fmt_month_abbrev0EB16_"}
!2157 = distinct !{!2157, !2156, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE16fmt_month_abbrev0EB16_: argument 0"}
!2158 = distinct !{!2158, i1 true, !"_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE16fmt_month_abbrev0Bd_"}
!2159 = distinct !{!2159, !2158, !"_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE16fmt_month_abbrev0Bd_: argument 0"}
!2160 = distinct !{!2160, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtB13_5error5ErrorEEB13_"}
!2161 = distinct !{!2161, !2160, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtB13_5error5ErrorEEB13_: argument 0"}
!2162 = distinct !{!2162, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!2163 = distinct !{!2163, !2162, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!2164 = distinct !{!2164, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!2165 = distinct !{!2165, !2164, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!2166 = distinct !{!2166, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!2167 = distinct !{!2167, !2166, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!2168 = distinct !{!2168, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!2169 = distinct !{!2169, !2168, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!2170 = !{!2159, !2157}
!2171 = !{!2161}
!2172 = !{!2163}
!2173 = !{!2165}
!2174 = !{!2165, !2163, !2161}
!2175 = !{!2169, !2167, !2165, !2163, !2161}
!2176 = distinct !{!2176, i1 true, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_"}
!2177 = distinct !{!2177, !2176, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_: argument 0"}
!2178 = distinct !{!2178, i1 true, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_"}
!2179 = distinct !{!2179, !2178, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_: argument 1"}
!2180 = distinct !{!2180, !2178, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE15parse_extensionBb_: argument 0"}
!2181 = distinct !{!2181, i1 true, !"_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension10parse_flag"}
!2182 = distinct !{!2182, !2181, !"_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension10parse_flag: argument 1"}
!2183 = distinct !{!2183, !2181, !"_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension10parse_flag: argument 0"}
!2184 = distinct !{!2184, i1 true, !"_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension11parse_width"}
!2185 = distinct !{!2185, !2184, !"_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension11parse_width: argument 1"}
!2186 = distinct !{!2186, i1 true, !"_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64"}
!2187 = distinct !{!2187, !2186, !"_RNvNtNtCsa9sSWSfjDbm_4jiff4util5parse3i64: argument 1"}
!2188 = distinct !{!2188, !2184, !"_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension11parse_width: argument 0"}
!2189 = distinct !{!2189, i1 true, !"_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultxNtNtB8_4util13ParseIntErrorEINtB8_12ErrorContextxB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_"}
!2190 = distinct !{!2190, !2189, !"_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultxNtNtB8_4util13ParseIntErrorEINtB8_12ErrorContextxB1c_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_: argument 0"}
!2191 = distinct !{!2191, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!2192 = distinct !{!2192, !2191, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!2193 = distinct !{!2193, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!2194 = distinct !{!2194, !2193, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!2195 = distinct !{!2195, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!2196 = distinct !{!2196, !2195, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!2197 = distinct !{!2197, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!2198 = distinct !{!2198, !2197, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!2199 = distinct !{!2199, i1 true, !"_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons"}
!2200 = distinct !{!2200, !2199, !"_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons: argument 1"}
!2201 = distinct !{!2201, !2199, !"_RNvMsf_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_9Extension12parse_colons: argument 0"}
!2202 = distinct !{!2202, i1 true, !"_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char"}
!2203 = distinct !{!2203, !2202, !"_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char: argument 0"}
!2204 = distinct !{!2204, i1 true, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!2205 = distinct !{!2205, !2204, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!2206 = distinct !{!2206, i1 true, !"_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char"}
!2207 = distinct !{!2207, !2206, !"_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char: argument 0"}
!2208 = distinct !{!2208, i1 true, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!2209 = distinct !{!2209, !2208, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!2210 = distinct !{!2210, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!2211 = distinct !{!2211, !2210, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!2212 = distinct !{!2212, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!2213 = distinct !{!2213, !2212, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!2214 = distinct !{!2214, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!2215 = distinct !{!2215, !2214, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!2216 = distinct !{!2216, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!2217 = distinct !{!2217, !2216, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!2218 = distinct !{!2218, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!2219 = distinct !{!2219, !2218, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!2220 = distinct !{!2220, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!2221 = distinct !{!2221, !2220, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!2222 = distinct !{!2222, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!2223 = distinct !{!2223, !2222, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!2224 = distinct !{!2224, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!2225 = distinct !{!2225, !2224, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!2226 = distinct !{!2226, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!2227 = distinct !{!2227, !2226, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!2228 = distinct !{!2228, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!2229 = distinct !{!2229, !2228, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!2230 = distinct !{!2230, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!2231 = distinct !{!2231, !2230, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!2232 = distinct !{!2232, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!2233 = distinct !{!2233, !2232, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!2234 = distinct !{!2234, i1 true, !"_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char"}
!2235 = distinct !{!2235, !2234, !"_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char: argument 0"}
!2236 = distinct !{!2236, i1 true, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!2237 = distinct !{!2237, !2236, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!2238 = distinct !{!2238, i1 true, !"_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char"}
!2239 = distinct !{!2239, !2238, !"_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char: argument 0"}
!2240 = distinct !{!2240, i1 true, !"_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_"}
!2241 = distinct !{!2241, !2240, !"_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_: argument 0"}
!2242 = distinct !{!2242, i1 true, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str"}
!2243 = distinct !{!2243, !2242, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str: argument 0"}
!2244 = distinct !{!2244, !2242, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str: argument 1"}
!2245 = distinct !{!2245, i1 true, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_"}
!2246 = distinct !{!2246, !2245, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_: argument 0"}
!2247 = !{!2177}
!2248 = !{!2179}
!2249 = !{!2180, !2179}
!2250 = !{!2183, !2182, !2180, !2179}
!2251 = !{!2185}
!2252 = !{!2187}
!2253 = !{!2188, !2180, !2179}
!2254 = !{!2190, !2188, !2180, !2179}
!2255 = !{!2198, !2196, !2194, !2192, !2190, !2188, !2180, !2179}
!2256 = !{!2188, !2185, !2180, !2179}
!2257 = !{!2200}
!2258 = !{!"branch_weights", !"expected", i32 2112871, i32 2145370777}
!2259 = !{!2201, !2200, !2180, !2179}
!2260 = !{!2203}
!2261 = !{!2205}
!2262 = !{!2207}
!2263 = !{!2209}
!2264 = !{!2211}
!2265 = !{!2213}
!2266 = !{!2213, !2211}
!2267 = !{!2217, !2215, !2213, !2211}
!2268 = !{!2219}
!2269 = !{!2221}
!2270 = !{!2221, !2219}
!2271 = !{!2225, !2223, !2221, !2219}
!2272 = !{!2227}
!2273 = !{!2229}
!2274 = !{!2229, !2227}
!2275 = !{!2233, !2231, !2229, !2227}
!2276 = !{!2235}
!2277 = !{!2237}
!2278 = !{!2239}
!2279 = !{!2241}
!2280 = !{!2241, !2239}
!2281 = !{!2243}
!2282 = !{!2243, !2244}
!2283 = !{!2246}
!2284 = distinct !{!2284, i1 true, !"_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime11to_datetime"}
!2285 = distinct !{!2285, !2284, !"_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime11to_datetime: argument 1"}
!2286 = distinct !{!2286, !2284, !"_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime11to_datetime: argument 0"}
!2287 = distinct !{!2287, i1 true, !"_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_"}
!2288 = distinct !{!2288, !2287, !"_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_: argument 0"}
!2289 = distinct !{!2289, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!2290 = distinct !{!2290, !2289, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!2291 = distinct !{!2291, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!2292 = distinct !{!2292, !2291, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!2293 = distinct !{!2293, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!2294 = distinct !{!2294, !2293, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!2295 = distinct !{!2295, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!2296 = distinct !{!2296, !2295, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!2297 = distinct !{!2297, i1 true, !"_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_time"}
!2298 = distinct !{!2298, !2297, !"_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_time: argument 1"}
!2299 = distinct !{!2299, !2297, !"_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_time: argument 0"}
!2300 = distinct !{!2300, i1 true, !"_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4time4TimeNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_"}
!2301 = distinct !{!2301, !2300, !"_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4time4TimeNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_: argument 0"}
!2302 = distinct !{!2302, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!2303 = distinct !{!2303, !2302, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!2304 = distinct !{!2304, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!2305 = distinct !{!2305, !2304, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!2306 = distinct !{!2306, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!2307 = distinct !{!2307, !2306, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!2308 = distinct !{!2308, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!2309 = distinct !{!2309, !2308, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!2310 = distinct !{!2310, i1 true, !"_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil8datetime8DateTimeNtB8_5ErrorEINtB8_12ErrorContextB1b_B1I_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_"}
!2311 = distinct !{!2311, !2310, !"_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil8datetime8DateTimeNtB8_5ErrorEINtB8_12ErrorContextB1b_B1I_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_: argument 0"}
!2312 = distinct !{!2312, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!2313 = distinct !{!2313, !2312, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!2314 = distinct !{!2314, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!2315 = distinct !{!2315, !2314, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!2316 = distinct !{!2316, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!2317 = distinct !{!2317, !2316, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!2318 = distinct !{!2318, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!2319 = distinct !{!2319, !2318, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!2320 = distinct !{!2320, i1 true, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6Offset12to_timestamp"}
!2321 = distinct !{!2321, !2320, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6Offset12to_timestamp: argument 0"}
!2322 = distinct !{!2322, i1 true, !"_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_"}
!2323 = distinct !{!2323, !2322, !"_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_: argument 0"}
!2324 = distinct !{!2324, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!2325 = distinct !{!2325, !2324, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!2326 = distinct !{!2326, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!2327 = distinct !{!2327, !2326, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!2328 = distinct !{!2328, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!2329 = distinct !{!2329, !2328, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!2330 = distinct !{!2330, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!2331 = distinct !{!2331, !2330, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!2332 = !{!2285}
!2333 = !{!2286}
!2334 = !{!2286, !2285}
!2335 = !{!2288, !2286, !2285}
!2336 = !{!2288, !2286}
!2337 = !{!2296, !2294, !2292, !2290, !2288, !2286}
!2338 = !{!2298}
!2339 = !{!2298, !2285}
!2340 = !{!2299, !2298, !2286}
!2341 = !{!2299, !2298, !2286, !2285}
!2342 = !{!2301, !2286, !2285}
!2343 = !{!2301, !2286}
!2344 = !{!2309, !2307, !2305, !2303, !2301, !2286}
!2345 = !{!2311}
!2346 = !{!2319, !2317, !2315, !2313, !2311}
!2347 = !{!2321}
!2348 = !{!2323}
!2349 = !{!2331, !2329, !2327, !2325, !2323}
!2350 = !{!"branch_weights", i32 6003000, i32 -294967296}
!2351 = !{!"branch_weights", i32 2146410443, i32 1073205}
!2352 = !{!"branch_weights", i32 1073205, i32 2146410443}
!2353 = distinct !{!2353, i1 true, !"_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsa9sSWSfjDbm_4jiff"}
!2354 = distinct !{!2354, !2353, !"_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsa9sSWSfjDbm_4jiff: argument 0"}
!2355 = distinct !{!2355, !2353, !"_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsa9sSWSfjDbm_4jiff: argument 1"}
!2356 = distinct !{!2356, !2361, !2362}
!2357 = distinct !{!2357, !2362, !2361}
!2358 = !{!2354}
!2359 = !{!2355}
!2360 = !{!"branch_weights", i32 2002, i32 2000}
!2361 = !{!"llvm.loop.isvectorized", i32 1}
!2362 = !{!"llvm.loop.unroll.runtime.disable"}
!2363 = !{!2354, !2355}
end_hunk_2
