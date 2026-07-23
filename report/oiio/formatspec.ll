inline.NumInlined: 8159
inline.NumDeleted: 2480
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN11OpenImageIO4v3_14pugi4impl14convert_bufferERPcRmNS1_12xml_encodingEPKvmb:bb.a
  %i.cp = lshr i32 %i.bp, 18
  %i.cq = trunc i32 %i.bp to i8
  %i.cr = trunc i32 %i.cn to i8
  %i.cs = trunc i32 %i.co to i8
  %i.ct = trunc i32 %i.cp to i8
  %i.cu = insertelement <4 x i8> poison, i8 %i.ct, i64 0
  %i.cv = insertelement <4 x i8> %i.cu, i8 %i.cs, i64 1
  %i.cw = insertelement <4 x i8> %i.cv, i8 %i.cr, i64 2
  %i.cx = insertelement <4 x i8> %i.cw, i8 %i.cq, i64 3
  %i.cy = and <4 x i8> %i.cx, <i8 -1, i8 63, i8 63, i8 63>
  %i.cz = or <4 x i8> %i.cy, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.cz, ptr %.01119.i19.i, align 1, !tbaa !62
  br label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i

_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i: ; preds = %bb.aa, %bb.z, %bb.y, %bb.w
  %.sink.i.i44 = phi i64 [ 4, %bb.aa ], [ 3, %bb.z ], [ 2, %bb.y ], [ 1, %bb.w ]
  %i.da = getelementptr inbounds nuw i8, ptr %.01119.i19.i, i64 %.sink.i.i44 ; 2 uses
  %.1.i21.i = getelementptr inbounds nuw i8, ptr %.020.i18.i, i64 4
  %.114.i22.i = add nsw i64 %.01318.i20.i, -1     ; 2 uses
  %.not.i23.i = icmp eq i64 %.114.i22.i, 0
  br i1 %.not.i23.i, label %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_9opt_falseEE7processINS2_11utf8_writerEEENT_10value_typeEPKjmS9_S8_.exit.i, label %.lr.ph.i17.i, !llvm.loop !1098

_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_9opt_falseEE7processINS2_11utf8_writerEEENT_10value_typeEPKjmS9_S8_.exit.i: ; preds = %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.i
  %.011.lcssa.i2937.i = phi i64 [ 1, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.i ], [ %i.bm, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i ]
  %i.db = phi ptr [ %i.bl, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.i ], [ %i.bo, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i ]
  %.011.lcssa.i24.i = phi ptr [ %i.bl, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.i ], [ %i.da, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i ]
  store i8 0, ptr %.011.lcssa.i24.i, align 1, !tbaa !62
  store ptr %i.db, ptr %0, align 8, !tbaa !113
  store i64 %.011.lcssa.i2937.i, ptr %1, align 8, !tbaa !114
  br label %_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit

bb.ab:                                            ; preds = %bb.t
  br i1 %.not17.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.i, label %.lr.ph.i.i47.preheader

.lr.ph.i.i47.preheader:                           ; preds = %bb.ab
  %i.dc = icmp eq i64 %i.ak, 1
  br i1 %i.dc, label %.lr.ph.i.i47.epil.preheader, label %.lr.ph.i.i47.preheader.new

.lr.ph.i.i47.preheader.new:                       ; preds = %.lr.ph.i.i47.preheader
  %unroll_iter = and i64 %i.ak, 4611686018427387902
  br label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %.lr.ph.i.i47, %.lr.ph.i.i47.preheader.new
  %.020.i.i48 = phi ptr [ %3, %.lr.ph.i.i47.preheader.new ], [ %.1.i.i55.1, %.lr.ph.i.i47 ] ; 3 uses
  %.01119.i.i49 = phi i64 [ 0, %.lr.ph.i.i47.preheader.new ], [ %.112.i.i54.1, %.lr.ph.i.i47 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i47.preheader.new ], [ %niter.next.1, %.lr.ph.i.i47 ]
  %i.dd = load i32, ptr %.020.i.i48, align 4, !tbaa !3
  %i.de = tail call noundef i32 @llvm.bswap.i32(i32 %i.dd) ; 3 uses
  %i.df = icmp ult i32 %i.de, 65536
  %i.dg = icmp samesign ult i32 %i.de, 128
  %i.dh = icmp samesign ult i32 %i.de, 2048
  %..i.i.i51 = select i1 %i.dh, i64 2, i64 3
  %.sink.i.i.i52 = select i1 %i.dg, i64 1, i64 %..i.i.i51
  %.sink.i.pn.i.i53 = select i1 %i.df, i64 %.sink.i.i.i52, i64 4
  %.112.i.i54 = add i64 %.sink.i.pn.i.i53, %.01119.i.i49
  %.1.i.i55 = getelementptr inbounds nuw i8, ptr %.020.i.i48, i64 4
  %i.di = load i32, ptr %.1.i.i55, align 4, !tbaa !3
  %i.dj = tail call noundef i32 @llvm.bswap.i32(i32 %i.di) ; 3 uses
  %i.dk = icmp ult i32 %i.dj, 65536
  %i.dl = icmp samesign ult i32 %i.dj, 128
  %i.dm = icmp samesign ult i32 %i.dj, 2048
  %..i.i.i51.1 = select i1 %i.dm, i64 2, i64 3
  %.sink.i.i.i52.1 = select i1 %i.dl, i64 1, i64 %..i.i.i51.1
  %.sink.i.pn.i.i53.1 = select i1 %i.dk, i64 %.sink.i.i.i52.1, i64 4
  %.112.i.i54.1 = add i64 %.sink.i.pn.i.i53.1, %.112.i.i54 ; 3 uses
  %.1.i.i55.1 = getelementptr inbounds nuw i8, ptr %.020.i.i48, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i.unr-lcssa, label %.lr.ph.i.i47, !llvm.loop !1099

_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.i: ; preds = %bb.ab
  %i.dn = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !18
  %i.do = tail call noundef ptr %i.dn(i64 noundef 1), !inline_history !1100 ; 3 uses
  %.not.not.i71 = icmp eq ptr %i.do, null
  br i1 %.not.not.i71, label %_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit, label %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_11utf8_writerEEENT_10value_typeEPKjmS9_S8_.exit.i

_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i.unr-lcssa: ; preds = %.lr.ph.i.i47
  %i.dp = and i64 %4, 4
  %lcmp.mod158.not = icmp eq i64 %i.dp, 0
  br i1 %lcmp.mod158.not, label %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i, label %.lr.ph.i.i47.epil.preheader

.lr.ph.i.i47.epil.preheader:                      ; preds = %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i.unr-lcssa, %.lr.ph.i.i47.preheader
  %.020.i.i48.epil.init = phi ptr [ %3, %.lr.ph.i.i47.preheader ], [ %.1.i.i55.1, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i.unr-lcssa ]
  %.01119.i.i49.epil.init = phi i64 [ 0, %.lr.ph.i.i47.preheader ], [ %.112.i.i54.1, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i.unr-lcssa ]
  %lcmp.mod160 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.dq = load i32, ptr %.020.i.i48.epil.init, align 4, !tbaa !3
  %i.dr = tail call noundef i32 @llvm.bswap.i32(i32 %i.dq) ; 3 uses
  %i.ds = icmp ult i32 %i.dr, 65536
  %i.dt = icmp samesign ult i32 %i.dr, 128
  %i.du = icmp samesign ult i32 %i.dr, 2048
  %..i.i.i51.epil = select i1 %i.du, i64 2, i64 3
  %.sink.i.i.i52.epil = select i1 %i.dt, i64 1, i64 %..i.i.i51.epil
  %.sink.i.pn.i.i53.epil = select i1 %i.ds, i64 %.sink.i.i.i52.epil, i64 4
  %.112.i.i54.epil = add i64 %.sink.i.pn.i.i53.epil, %.01119.i.i49.epil.init
  br label %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i

_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i: ; preds = %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i.unr-lcssa, %.lr.ph.i.i47.epil.preheader
  %.112.i.i54.lcssa = phi i64 [ %.112.i.i54.1, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i.unr-lcssa ], [ %.112.i.i54.epil, %.lr.ph.i.i47.epil.preheader ]
  %i.dv = add i64 %.112.i.i54.lcssa, 1            ; 2 uses
  %i.dw = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !18
  %i.dx = tail call noundef ptr %i.dw(i64 noundef %i.dv), !inline_history !1100 ; 3 uses
  %.not28.not.i58 = icmp eq ptr %i.dx, null
  br i1 %.not28.not.i58, label %_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit, label %.lr.ph.i17.i59

.lr.ph.i17.i59:                                   ; preds = %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i63
  %.020.i18.i60 = phi ptr [ %.1.i21.i65, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i63 ], [ %3, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i ] ; 2 uses
  %.01119.i19.i61 = phi ptr [ %i.fk, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i63 ], [ %i.dx, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i ] ; 8 uses
  %.01318.i20.i62 = phi i64 [ %.114.i22.i66, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i63 ], [ %i.ak, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i ]
  %i.dy = load i32, ptr %.020.i18.i60, align 4, !tbaa !3
  %i.dz = tail call noundef i32 @llvm.bswap.i32(i32 %i.dy) ; 13 uses
  %i.ea = icmp ult i32 %i.dz, 65536
  br i1 %i.ea, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %.lr.ph.i17.i59
  %i.eb = icmp samesign ult i32 %i.dz, 128
  br i1 %i.eb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ec = trunc nuw nsw i32 %i.dz to i8
  store i8 %i.ec, ptr %.01119.i19.i61, align 1, !tbaa !62
  br label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i63

bb.ae:                                            ; preds = %bb.ac
  %i.ed = icmp samesign ult i32 %i.dz, 2048
  br i1 %i.ed, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ee = lshr i32 %i.dz, 6
  %i.ef = trunc nuw nsw i32 %i.ee to i8
  %i.eg = or disjoint i8 %i.ef, -64
  store i8 %i.eg, ptr %.01119.i19.i61, align 1, !tbaa !62
  %i.eh = trunc i32 %i.dz to i8
  %i.ei = and i8 %i.eh, 63
  %i.ej = or disjoint i8 %i.ei, -128
  %i.ek = getelementptr inbounds nuw i8, ptr %.01119.i19.i61, i64 1
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !62
  br label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i63

bb.ag:                                            ; preds = %bb.ae
  %i.el = lshr i32 %i.dz, 12
  %i.em = trunc nuw nsw i32 %i.el to i8
  %i.en = or disjoint i8 %i.em, -32
  store i8 %i.en, ptr %.01119.i19.i61, align 1, !tbaa !62
  %i.eo = lshr i32 %i.dz, 6
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = and i8 %i.ep, 63
  %i.er = or disjoint i8 %i.eq, -128
  %i.es = getelementptr inbounds nuw i8, ptr %.01119.i19.i61, i64 1
  store i8 %i.er, ptr %i.es, align 1, !tbaa !62
  %i.et = trunc i32 %i.dz to i8
  %i.eu = and i8 %i.et, 63
  %i.ev = or disjoint i8 %i.eu, -128
  %i.ew = getelementptr inbounds nuw i8, ptr %.01119.i19.i61, i64 2
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !62
  br label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i63

bb.ah:                                            ; preds = %.lr.ph.i17.i59
  %i.ex = lshr i32 %i.dz, 6
  %i.ey = lshr i32 %i.dz, 12
  %i.ez = lshr i32 %i.dz, 18
  %i.fa = trunc i32 %i.dz to i8
  %i.fb = trunc i32 %i.ex to i8
  %i.fc = trunc i32 %i.ey to i8
  %i.fd = trunc i32 %i.ez to i8
  %i.fe = insertelement <4 x i8> poison, i8 %i.fd, i64 0
  %i.ff = insertelement <4 x i8> %i.fe, i8 %i.fc, i64 1
  %i.fg = insertelement <4 x i8> %i.ff, i8 %i.fb, i64 2
  %i.fh = insertelement <4 x i8> %i.fg, i8 %i.fa, i64 3
  %i.fi = and <4 x i8> %i.fh, <i8 -1, i8 63, i8 63, i8 63>
  %i.fj = or <4 x i8> %i.fi, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.fj, ptr %.01119.i19.i61, align 1, !tbaa !62
  br label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i63

_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i63: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad
  %.sink.i.i64 = phi i64 [ 4, %bb.ah ], [ 3, %bb.ag ], [ 2, %bb.af ], [ 1, %bb.ad ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.01119.i19.i61, i64 %.sink.i.i64 ; 2 uses
  %.1.i21.i65 = getelementptr inbounds nuw i8, ptr %.020.i18.i60, i64 4
  %.114.i22.i66 = add nsw i64 %.01318.i20.i62, -1 ; 2 uses
  %.not.i23.i67 = icmp eq i64 %.114.i22.i66, 0
  br i1 %.not.i23.i67, label %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_11utf8_writerEEENT_10value_typeEPKjmS9_S8_.exit.i, label %.lr.ph.i17.i59, !llvm.loop !1101

_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_11utf8_writerEEENT_10value_typeEPKjmS9_S8_.exit.i: ; preds = %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i63, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.i
  %.011.lcssa.i2937.i68 = phi i64 [ 1, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.i ], [ %i.dv, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i63 ]
  %i.fl = phi ptr [ %i.do, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.i ], [ %i.dx, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i63 ]
  %.011.lcssa.i24.i69 = phi ptr [ %i.do, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.i ], [ %i.fk, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i63 ]
  store i8 0, ptr %.011.lcssa.i24.i69, align 1, !tbaa !62
  store ptr %i.fl, ptr %0, align 8, !tbaa !113
  store i64 %.011.lcssa.i2937.i68, ptr %1, align 8, !tbaa !114
  br label %_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit

bb.ai:                                            ; preds = %bb.s
  %i.fm = icmp eq i32 %2, 9
  br i1 %i.fm, label %bb.aj, label %_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i72 = icmp eq i64 %4, 0
  br i1 %.not.i.i72, label %_ZN11OpenImageIO4v3_14pugi4impl29get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i, label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %bb.aj, %bb.ak
  %.0811.i.i = phi i64 [ %i.fq, %bb.ak ], [ 0, %bb.aj ] ; 8 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 %.0811.i.i
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !62
  %i.fp = icmp slt i8 %i.fo, 0
  br i1 %i.fp, label %_ZN11OpenImageIO4v3_14pugi4impl29get_latin1_7bit_prefix_lengthEPKhm.exit.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i73
  %i.fq = add nuw i64 %.0811.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fq, %4
  br i1 %exitcond.not.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl29get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i, label %.lr.ph.i.i73, !llvm.loop !1102

_ZN11OpenImageIO4v3_14pugi4impl29get_latin1_7bit_prefix_lengthEPKhm.exit.i: ; preds = %.lr.ph.i.i73
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 %.0811.i.i ; 6 uses
  %i.fs = sub i64 %4, %.0811.i.i                  ; 8 uses
  %min.iters.check = icmp ult i64 %i.fs, 4
  br i1 %min.iters.check, label %.lr.ph.i34.i.preheader150, label %vector.ph

vector.ph:                                        ; preds = %_ZN11OpenImageIO4v3_14pugi4impl29get_latin1_7bit_prefix_lengthEPKhm.exit.i
  %n.vec = and i64 %i.fs, -4                      ; 3 uses
  %i.ft = and i64 %i.fs, 3
  %i.fu = getelementptr i8, ptr %i.fr, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ga, %vector.body ]
  %vec.phi122 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gb, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.fr, i64 %index ; 2 uses
  %i.fv = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !62
  %wide.load123 = load <2 x i8>, ptr %i.fv, align 1, !tbaa !62
  %i.fw = icmp sgt <2 x i8> %wide.load, splat (i8 -1)
  %i.fx = icmp sgt <2 x i8> %wide.load123, splat (i8 -1)
  %i.fy = select <2 x i1> %i.fw, <2 x i64> splat (i64 1), <2 x i64> splat (i64 2)
  %i.fz = select <2 x i1> %i.fx, <2 x i64> splat (i64 1), <2 x i64> splat (i64 2)
  %i.ga = add <2 x i64> %i.fy, %vec.phi           ; 2 uses
  %i.gb = add <2 x i64> %i.fz, %vec.phi122        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !1103

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.gb, %i.ga
  %i.gd = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.fs, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_14pugi4impl14latin1_decoder7processINS2_12utf8_counterEEENT_10value_typeEPKhmS7_S6_.exit.i, label %.lr.ph.i34.i.preheader150

.lr.ph.i34.i.preheader150:                        ; preds = %_ZN11OpenImageIO4v3_14pugi4impl29get_latin1_7bit_prefix_lengthEPKhm.exit.i, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %_ZN11OpenImageIO4v3_14pugi4impl29get_latin1_7bit_prefix_lengthEPKhm.exit.i ], [ %i.gd, %middle.block ]
  %.059.i.i.ph = phi i64 [ %i.fs, %_ZN11OpenImageIO4v3_14pugi4impl29get_latin1_7bit_prefix_lengthEPKhm.exit.i ], [ %i.ft, %middle.block ]
  %.068.i.i.ph = phi ptr [ %i.fr, %_ZN11OpenImageIO4v3_14pugi4impl29get_latin1_7bit_prefix_lengthEPKhm.exit.i ], [ %i.fu, %middle.block ]
  br label %.lr.ph.i34.i

_ZN11OpenImageIO4v3_14pugi4impl29get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i: ; preds = %bb.ak, %bb.aj
  br i1 %5, label %_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit.sink.split.i, label %bb.al

bb.al:                                            ; preds = %_ZN11OpenImageIO4v3_14pugi4impl29get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i
  %i.ge = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !18
  %i.gf = add i64 %4, 1                           ; 2 uses
  %i.gg = tail call noundef ptr %i.ge(i64 noundef %i.gf), !inline_history !1104 ; 4 uses
  %.not.not.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.not.i.i, label %_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not22.i.i = icmp eq ptr %3, null
  br i1 %.not22.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gg, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %4
  store i8 0, ptr %i.gh, align 1, !tbaa !62
  br label %_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit.sink.split.i

.lr.ph.i34.i:                                     ; preds = %.lr.ph.i34.i.preheader150, %.lr.ph.i34.i
  %.010.i.i = phi i64 [ %i.gk, %.lr.ph.i34.i ], [ %.010.i.i.ph, %.lr.ph.i34.i.preheader150 ]
  %.059.i.i = phi i64 [ %i.gm, %.lr.ph.i34.i ], [ %.059.i.i.ph, %.lr.ph.i34.i.preheader150 ]
  %.068.i.i = phi ptr [ %i.gl, %.lr.ph.i34.i ], [ %.068.i.i.ph, %.lr.ph.i34.i.preheader150 ] ; 2 uses
  %i.gi = load i8, ptr %.068.i.i, align 1, !tbaa !62
  %i.gj = icmp sgt i8 %i.gi, -1
  %.sink.i.i.i75 = select i1 %i.gj, i64 1, i64 2
  %i.gk = add i64 %.sink.i.i.i75, %.010.i.i       ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 1
  %i.gm = add i64 %.059.i.i, -1                   ; 2 uses
  %.not.i35.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i35.i, label %_ZN11OpenImageIO4v3_14pugi4impl14latin1_decoder7processINS2_12utf8_counterEEENT_10value_typeEPKhmS7_S6_.exit.i, label %.lr.ph.i34.i, !llvm.loop !1105

_ZN11OpenImageIO4v3_14pugi4impl14latin1_decoder7processINS2_12utf8_counterEEENT_10value_typeEPKhmS7_S6_.exit.i: ; preds = %.lr.ph.i34.i, %middle.block
  %.lcssa120 = phi i64 [ %i.gd, %middle.block ], [ %i.gk, %.lr.ph.i34.i ]
  %i.gn = load ptr, ptr @_ZN11OpenImageIO4v3_14pugi4impl38xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !18
  %i.go = add i64 %.0811.i.i, 1
  %i.gp = add i64 %i.go, %.lcssa120               ; 2 uses
  %i.gq = tail call noundef ptr %i.gn(i64 noundef %i.gp), !inline_history !1106 ; 4 uses
  %.not.not.i76 = icmp eq ptr %i.gq, null
  br i1 %.not.not.i76, label %_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_14pugi4impl14latin1_decoder7processINS2_12utf8_counterEEENT_10value_typeEPKhmS7_S6_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gq, ptr nonnull align 1 %3, i64 %.0811.i.i, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.0811.i.i ; 4 uses
  %.neg = add i64 %.0811.i.i, 1
  %xtraiter = and i64 %i.fs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i37.i.prol.loopexit, label %.lr.ph.i37.i.prol

.lr.ph.i37.i.prol:                                ; preds = %bb.ap
  %i.gs = load i8, ptr %i.fr, align 1, !tbaa !62  ; 4 uses
  %i.gt = icmp sgt i8 %i.gs, -1
  br i1 %i.gt, label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.prol, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i37.i.prol
  %i.gu = lshr i8 %i.gs, 6
  %i.gv = or disjoint i8 %i.gu, -64
  %i.gw = and i8 %i.gs, -65
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !62
  br label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.prol

_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.prol: ; preds = %bb.aq, %.lr.ph.i37.i.prol
  %.sink.i41.i.prol = phi i8 [ %i.gv, %bb.aq ], [ %i.gs, %.lr.ph.i37.i.prol ]
  %.sink.i.i42.i.prol = phi i64 [ 2, %bb.aq ], [ 1, %.lr.ph.i37.i.prol ]
  store i8 %.sink.i41.i.prol, ptr %i.gr, align 1, !tbaa !62
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sink.i.i42.i.prol ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.ha = add nsw i64 %i.fs, -1
  br label %.lr.ph.i37.i.prol.loopexit

.lr.ph.i37.i.prol.loopexit:                       ; preds = %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.prol, %bb.ap
  %.lcssa149.unr = phi ptr [ poison, %bb.ap ], [ %i.gy, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.prol ]
  %.010.i38.i.unr = phi ptr [ %i.gr, %bb.ap ], [ %i.gy, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.prol ]
  %.059.i39.i.unr = phi i64 [ %i.fs, %bb.ap ], [ %i.ha, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.prol ]
  %.068.i40.i.unr = phi ptr [ %i.fr, %bb.ap ], [ %i.gz, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.prol ]
  %i.hb = icmp eq i64 %4, %.neg
  br i1 %i.hb, label %_ZN11OpenImageIO4v3_14pugi4impl14latin1_decoder7processINS2_11utf8_writerEEENT_10value_typeEPKhmS7_S6_.exit.i, label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %.lr.ph.i37.i.prol.loopexit, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.1
  %.010.i38.i = phi ptr [ %i.hq, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.1 ], [ %.010.i38.i.unr, %.lr.ph.i37.i.prol.loopexit ] ; 3 uses
  %.059.i39.i = phi i64 [ %i.hs, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.1 ], [ %.059.i39.i.unr, %.lr.ph.i37.i.prol.loopexit ]
  %.068.i40.i = phi ptr [ %i.hr, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.1 ], [ %.068.i40.i.unr, %.lr.ph.i37.i.prol.loopexit ] ; 3 uses
  %i.hc = load i8, ptr %.068.i40.i, align 1, !tbaa !62 ; 4 uses
  %i.hd = icmp sgt i8 %i.hc, -1
  br i1 %i.hd, label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i37.i
  %i.he = lshr i8 %i.hc, 6
  %i.hf = or disjoint i8 %i.he, -64
  %i.hg = and i8 %i.hc, -65
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i38.i, i64 1
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !62
  br label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77

_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77: ; preds = %bb.ar, %.lr.ph.i37.i
  %.sink.i41.i = phi i8 [ %i.hf, %bb.ar ], [ %i.hc, %.lr.ph.i37.i ]
  %.sink.i.i42.i = phi i64 [ 2, %bb.ar ], [ 1, %.lr.ph.i37.i ]
  store i8 %.sink.i41.i, ptr %.010.i38.i, align 1, !tbaa !62
  %i.hi = getelementptr inbounds nuw i8, ptr %.010.i38.i, i64 %.sink.i.i42.i ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.068.i40.i, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !62  ; 4 uses
  %i.hl = icmp sgt i8 %i.hk, -1
  br i1 %i.hl, label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.1, label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77
  %i.hm = lshr i8 %i.hk, 6
  %i.hn = or disjoint i8 %i.hm, -64
  %i.ho = and i8 %i.hk, -65
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !62
  br label %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.1

_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.1: ; preds = %bb.as, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77
  %.sink.i41.i.1 = phi i8 [ %i.hn, %bb.as ], [ %i.hk, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77 ]
  %.sink.i.i42.i.1 = phi i64 [ 2, %bb.as ], [ 1, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77 ]
  store i8 %.sink.i41.i.1, ptr %i.hi, align 1, !tbaa !62
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.sink.i.i42.i.1 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.068.i40.i, i64 2
  %i.hs = add i64 %.059.i39.i, -2                 ; 2 uses
  %.not.i43.i.1 = icmp eq i64 %i.hs, 0
  br i1 %.not.i43.i.1, label %_ZN11OpenImageIO4v3_14pugi4impl14latin1_decoder7processINS2_11utf8_writerEEENT_10value_typeEPKhmS7_S6_.exit.i, label %.lr.ph.i37.i, !llvm.loop !1107

_ZN11OpenImageIO4v3_14pugi4impl14latin1_decoder7processINS2_11utf8_writerEEENT_10value_typeEPKhmS7_S6_.exit.i: ; preds = %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.1, %.lr.ph.i37.i.prol.loopexit
  %.lcssa149 = phi ptr [ %.lcssa149.unr, %.lr.ph.i37.i.prol.loopexit ], [ %i.hq, %_ZN11OpenImageIO4v3_14pugi4impl11utf8_writer3lowEPhj.exit.i.i77.1 ]
  store i8 0, ptr %.lcssa149, align 1, !tbaa !62
  br label %_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit.sink.split.i

_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit.sink.split.i: ; preds = %_ZN11OpenImageIO4v3_14pugi4impl14latin1_decoder7processINS2_11utf8_writerEEENT_10value_typeEPKhmS7_S6_.exit.i, %bb.ao, %_ZN11OpenImageIO4v3_14pugi4impl29get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i
  %.sink24.i.sink.i = phi ptr [ %i.gq, %_ZN11OpenImageIO4v3_14pugi4impl14latin1_decoder7processINS2_11utf8_writerEEENT_10value_typeEPKhmS7_S6_.exit.i ], [ %i.gg, %bb.ao ], [ %3, %_ZN11OpenImageIO4v3_14pugi4impl29get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i ]
  %.sink.i.sink.i = phi i64 [ %i.gp, %_ZN11OpenImageIO4v3_14pugi4impl14latin1_decoder7processINS2_11utf8_writerEEENT_10value_typeEPKhmS7_S6_.exit.i ], [ %i.gf, %bb.ao ], [ %4, %_ZN11OpenImageIO4v3_14pugi4impl29get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i ]
  store ptr %.sink24.i.sink.i, ptr %0, align 8, !tbaa !113
  store i64 %.sink.i.sink.i, ptr %1, align 8, !tbaa !114
  br label %_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit

_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit: ; preds = %_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit.sink.split.i, %_ZN11OpenImageIO4v3_14pugi4impl14latin1_decoder7processINS2_12utf8_counterEEENT_10value_typeEPKhmS7_S6_.exit.i, %bb.al, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_11utf8_writerEEENT_10value_typeEPKjmS9_S8_.exit.i, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.i, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_9opt_falseEE7processINS2_11utf8_writerEEENT_10value_typeEPKjmS9_S8_.exit.i, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.i, %bb.r, %_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKtmS9_S8_.exit.i, %.critedge.sink.split.i, %bb.c, %bb.ai, %bb.i
  %.0 = phi i1 [ false, %bb.ai ], [ true, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_9opt_falseEE7processINS2_11utf8_writerEEENT_10value_typeEPKjmS9_S8_.exit.i ], [ true, %.critedge.sink.split.i ], [ true, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_11utf8_writerEEENT_10value_typeEPKjmS9_S8_.exit.i ], [ %i.h, %bb.i ], [ true, %bb.r ], [ false, %bb.c ], [ false, %_ZN11OpenImageIO4v3_14pugi4impl13utf16_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKtmS9_S8_.exit.i ], [ false, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i ], [ false, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_9opt_falseEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.i ], [ false, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.thread.i ], [ false, %_ZN11OpenImageIO4v3_14pugi4impl13utf32_decoderINS2_8opt_trueEE7processINS2_12utf8_counterEEENT_10value_typeEPKjmS9_S8_.exit.i ], [ false, %bb.al ], [ false, %_ZN11OpenImageIO4v3_14pugi4impl14latin1_decoder7processINS2_12utf8_counterEEENT_10value_typeEPKhmS7_S6_.exit.i ], [ true, %_ZN11OpenImageIO4v3_14pugi4impl18get_mutable_bufferERPcRmPKvmb.exit.sink.split.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_14pugi4impl10xml_parser5parseEPcmPNS2_19xml_document_structEPNS1_15xml_node_structEj(ptr dead_on_unwind noalias writable sret(%"struct.OpenImageIO::v3_1::pugi::xml_parse_result") align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #12 align 2 {
bb.a:
  %6 = alloca %"struct.OpenImageIO::v3_1::pugi::impl::xml_parser", align 8 ; 6 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %5, 8
  %i.c = and i32 %i.b, 16
  %i.d = xor i32 %i.c, 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !1079, !alias.scope !1108
  store i32 %i.d, ptr %0, align 8, !tbaa !1085, !alias.scope !1108
  store i64 0, ptr %i.e, align 8, !tbaa !1086, !alias.scope !1108
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !302  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !296
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.l = icmp eq ptr %3, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %spec.select = select i1 %i.l, ptr null, ptr %i.m
  store ptr %spec.select, ptr %6, align 8, !tbaa !1111
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !1113
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !1114
  %i.p = add i64 %2, -1                           ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !62    ; 3 uses
  store i8 0, ptr %i.q, align 1, !tbaa !62
  %i.s = load i8, ptr %1, align 1, !tbaa !62
  %i.t = icmp eq i8 %i.s, -17
  br i1 %i.t, label %bb.f, label %_ZN11OpenImageIO4v3_14pugi4impl10xml_parser14parse_skip_bomEPc.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !62
  %i.w = icmp eq i8 %i.v, -69
  br i1 %i.w, label %bb.g, label %_ZN11OpenImageIO4v3_14pugi4impl10xml_parser14parse_skip_bomEPc.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !62
end_hunk_0
