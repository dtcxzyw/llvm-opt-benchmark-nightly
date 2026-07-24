inline.NumInlined: 2217
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
  %i.jn = trunc i32 %i.jj to i8
  %i.jo = trunc i32 %i.jk to i8
  %i.jp = trunc i32 %i.jl to i8
  %i.jq = insertelement <4 x i8> poison, i8 %i.jp, i64 0
  %i.jr = insertelement <4 x i8> %i.jq, i8 %i.jo, i64 1
  %i.js = insertelement <4 x i8> %i.jr, i8 %i.jn, i64 2
  %i.jt = insertelement <4 x i8> %i.js, i8 %i.jm, i64 3
  %i.ju = and <4 x i8> %i.jt, <i8 -1, i8 63, i8 63, i8 63>
  %i.jv = or <4 x i8> %i.ju, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.jv, ptr %.01119.i19.i.i, align 1
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i: ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %.sink.i.i59.i = phi i64 [ 4, %bb.bc ], [ 3, %bb.bb ], [ 2, %bb.ba ], [ 1, %bb.ay ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.01119.i19.i.i, i64 %.sink.i.i59.i ; 2 uses
  %.1.i21.i.i = getelementptr inbounds nuw i8, ptr %.020.i18.i.i, i64 4
  %.114.i22.i.i = add nsw i64 %.01318.i20.i.i, -1 ; 2 uses
  %.not.i23.i.i = icmp eq i64 %.114.i22.i.i, 0
  br i1 %.not.i23.i.i, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i, label %.lr.ph.i17.i57.i, !llvm.loop !54

_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i, %.noexc36
  %.011.lcssa.i2937.i.i = phi i64 [ 1, %.noexc36 ], [ %i.ii, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i ]
  %i.jx = phi ptr [ %i.ih, %.noexc36 ], [ %i.ik, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i ]
  %.011.lcssa.i24.i.i = phi ptr [ %i.ih, %.noexc36 ], [ %i.jw, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i ]
  store i8 0, ptr %.011.lcssa.i24.i.i, align 1
  br label %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit

bb.bd:                                            ; preds = %bb.av
  br i1 %.not17.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i, label %.lr.ph.i.i62.i.preheader

.lr.ph.i.i62.i.preheader:                         ; preds = %bb.bd
  %i.jy = icmp eq i64 %i.hg, 1
  br i1 %i.jy, label %.lr.ph.i.i62.i.epil.preheader, label %.lr.ph.i.i62.i.preheader.new

.lr.ph.i.i62.i.preheader.new:                     ; preds = %.lr.ph.i.i62.i.preheader
  %unroll_iter = and i64 %i.hg, 4611686018427387902
  br label %.lr.ph.i.i62.i

.lr.ph.i.i62.i:                                   ; preds = %.lr.ph.i.i62.i, %.lr.ph.i.i62.i.preheader.new
  %.020.i.i63.i = phi ptr [ %3, %.lr.ph.i.i62.i.preheader.new ], [ %.1.i.i70.i.1, %.lr.ph.i.i62.i ] ; 3 uses
  %.01119.i.i64.i = phi i64 [ 0, %.lr.ph.i.i62.i.preheader.new ], [ %.112.i.i69.i.1, %.lr.ph.i.i62.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i62.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i62.i ]
  %i.jz = load i32, ptr %.020.i.i63.i, align 4
  %i.ka = tail call noundef i32 @llvm.bswap.i32(i32 %i.jz) ; 3 uses
  %i.kb = icmp ult i32 %i.ka, 65536
  %i.kc = icmp samesign ult i32 %i.ka, 128
  %i.kd = icmp samesign ult i32 %i.ka, 2048
  %..i.i.i66.i = select i1 %i.kd, i64 2, i64 3
  %.sink.i.i.i67.i = select i1 %i.kc, i64 1, i64 %..i.i.i66.i
  %.sink.i.pn.i.i68.i = select i1 %i.kb, i64 %.sink.i.i.i67.i, i64 4
  %.112.i.i69.i = add i64 %.sink.i.pn.i.i68.i, %.01119.i.i64.i
  %.1.i.i70.i = getelementptr inbounds nuw i8, ptr %.020.i.i63.i, i64 4
  %i.ke = load i32, ptr %.1.i.i70.i, align 4
  %i.kf = tail call noundef i32 @llvm.bswap.i32(i32 %i.ke) ; 3 uses
  %i.kg = icmp ult i32 %i.kf, 65536
  %i.kh = icmp samesign ult i32 %i.kf, 128
  %i.ki = icmp samesign ult i32 %i.kf, 2048
  %..i.i.i66.i.1 = select i1 %i.ki, i64 2, i64 3
  %.sink.i.i.i67.i.1 = select i1 %i.kh, i64 1, i64 %..i.i.i66.i.1
  %.sink.i.pn.i.i68.i.1 = select i1 %i.kg, i64 %.sink.i.i.i67.i.1, i64 4
  %.112.i.i69.i.1 = add i64 %.sink.i.pn.i.i68.i.1, %.112.i.i69.i ; 3 uses
  %.1.i.i70.i.1 = getelementptr inbounds nuw i8, ptr %.020.i.i63.i, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i.unr-lcssa, label %.lr.ph.i.i62.i, !llvm.loop !55

_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i: ; preds = %bb.bd
  %i.kj = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.kk = invoke noundef ptr %i.kj(i64 noundef 1)
          to label %.noexc38 unwind label %bb.bw, !inline_history !45 ; 3 uses

.noexc38:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i
  %.not.not.i86.i = icmp eq ptr %i.kk, null
  br i1 %.not.not.i86.i, label %bb.bv, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i.unr-lcssa: ; preds = %.lr.ph.i.i62.i
  %i.kl = and i64 %4, 4
  %lcmp.mod1739.not = icmp eq i64 %i.kl, 0
  br i1 %lcmp.mod1739.not, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i, label %.lr.ph.i.i62.i.epil.preheader

.lr.ph.i.i62.i.epil.preheader:                    ; preds = %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i.unr-lcssa, %.lr.ph.i.i62.i.preheader
  %.020.i.i63.i.epil.init = phi ptr [ %3, %.lr.ph.i.i62.i.preheader ], [ %.1.i.i70.i.1, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i.unr-lcssa ]
  %.01119.i.i64.i.epil.init = phi i64 [ 0, %.lr.ph.i.i62.i.preheader ], [ %.112.i.i69.i.1, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i.unr-lcssa ]
  %lcmp.mod1741 = trunc i64 %i.hg to i1
  tail call void @llvm.assume(i1 %lcmp.mod1741)
  %i.km = load i32, ptr %.020.i.i63.i.epil.init, align 4
  %i.kn = tail call noundef i32 @llvm.bswap.i32(i32 %i.km) ; 3 uses
  %i.ko = icmp ult i32 %i.kn, 65536
  %i.kp = icmp samesign ult i32 %i.kn, 128
  %i.kq = icmp samesign ult i32 %i.kn, 2048
  %..i.i.i66.i.epil = select i1 %i.kq, i64 2, i64 3
  %.sink.i.i.i67.i.epil = select i1 %i.kp, i64 1, i64 %..i.i.i66.i.epil
  %.sink.i.pn.i.i68.i.epil = select i1 %i.ko, i64 %.sink.i.i.i67.i.epil, i64 4
  %.112.i.i69.i.epil = add i64 %.sink.i.pn.i.i68.i.epil, %.01119.i.i64.i.epil.init
  br label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i

_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i.unr-lcssa, %.lr.ph.i.i62.i.epil.preheader
  %.112.i.i69.i.lcssa = phi i64 [ %.112.i.i69.i.1, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i.unr-lcssa ], [ %.112.i.i69.i.epil, %.lr.ph.i.i62.i.epil.preheader ]
  %i.kr = add i64 %.112.i.i69.i.lcssa, 1          ; 2 uses
  %i.ks = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.kt = invoke noundef ptr %i.ks(i64 noundef %i.kr)
          to label %.noexc39 unwind label %bb.bw, !inline_history !45 ; 3 uses

.noexc39:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i
  %.not28.not.i73.i = icmp eq ptr %i.kt, null
  br i1 %.not28.not.i73.i, label %bb.bv, label %.lr.ph.i17.i74.i

.lr.ph.i17.i74.i:                                 ; preds = %.noexc39, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i
  %.020.i18.i75.i = phi ptr [ %.1.i21.i80.i, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i ], [ %3, %.noexc39 ] ; 2 uses
  %.01119.i19.i76.i = phi ptr [ %i.mg, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i ], [ %i.kt, %.noexc39 ] ; 8 uses
  %.01318.i20.i77.i = phi i64 [ %.114.i22.i81.i, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i ], [ %i.hg, %.noexc39 ]
  %i.ku = load i32, ptr %.020.i18.i75.i, align 4
  %i.kv = tail call noundef i32 @llvm.bswap.i32(i32 %i.ku) ; 13 uses
  %i.kw = icmp ult i32 %i.kv, 65536
  br i1 %i.kw, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %.lr.ph.i17.i74.i
  %i.kx = icmp samesign ult i32 %i.kv, 128
  br i1 %i.kx, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ky = trunc nuw nsw i32 %i.kv to i8
  store i8 %i.ky, ptr %.01119.i19.i76.i, align 1
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i

bb.bg:                                            ; preds = %bb.be
  %i.kz = icmp samesign ult i32 %i.kv, 2048
  br i1 %i.kz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.la = lshr i32 %i.kv, 6
  %i.lb = trunc nuw nsw i32 %i.la to i8
  %i.lc = or disjoint i8 %i.lb, -64
  store i8 %i.lc, ptr %.01119.i19.i76.i, align 1
  %i.ld = trunc i32 %i.kv to i8
  %i.le = and i8 %i.ld, 63
  %i.lf = or disjoint i8 %i.le, -128
  %i.lg = getelementptr inbounds nuw i8, ptr %.01119.i19.i76.i, i64 1
  store i8 %i.lf, ptr %i.lg, align 1
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i

bb.bi:                                            ; preds = %bb.bg
  %i.lh = lshr i32 %i.kv, 12
  %i.li = trunc nuw nsw i32 %i.lh to i8
  %i.lj = or disjoint i8 %i.li, -32
  store i8 %i.lj, ptr %.01119.i19.i76.i, align 1
  %i.lk = lshr i32 %i.kv, 6
  %i.ll = trunc i32 %i.lk to i8
  %i.lm = and i8 %i.ll, 63
  %i.ln = or disjoint i8 %i.lm, -128
  %i.lo = getelementptr inbounds nuw i8, ptr %.01119.i19.i76.i, i64 1
  store i8 %i.ln, ptr %i.lo, align 1
  %i.lp = trunc i32 %i.kv to i8
  %i.lq = and i8 %i.lp, 63
  %i.lr = or disjoint i8 %i.lq, -128
  %i.ls = getelementptr inbounds nuw i8, ptr %.01119.i19.i76.i, i64 2
  store i8 %i.lr, ptr %i.ls, align 1
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i

bb.bj:                                            ; preds = %.lr.ph.i17.i74.i
  %i.lt = lshr i32 %i.kv, 6
  %i.lu = lshr i32 %i.kv, 12
  %i.lv = lshr i32 %i.kv, 18
  %i.lw = trunc i32 %i.kv to i8
  %i.lx = trunc i32 %i.lt to i8
  %i.ly = trunc i32 %i.lu to i8
  %i.lz = trunc i32 %i.lv to i8
  %i.ma = insertelement <4 x i8> poison, i8 %i.lz, i64 0
  %i.mb = insertelement <4 x i8> %i.ma, i8 %i.ly, i64 1
  %i.mc = insertelement <4 x i8> %i.mb, i8 %i.lx, i64 2
  %i.md = insertelement <4 x i8> %i.mc, i8 %i.lw, i64 3
  %i.me = and <4 x i8> %i.md, <i8 -1, i8 63, i8 63, i8 63>
  %i.mf = or <4 x i8> %i.me, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.mf, ptr %.01119.i19.i76.i, align 1
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bf
  %.sink.i.i79.i = phi i64 [ 4, %bb.bj ], [ 3, %bb.bi ], [ 2, %bb.bh ], [ 1, %bb.bf ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.01119.i19.i76.i, i64 %.sink.i.i79.i ; 2 uses
  %.1.i21.i80.i = getelementptr inbounds nuw i8, ptr %.020.i18.i75.i, i64 4
  %.114.i22.i81.i = add nsw i64 %.01318.i20.i77.i, -1 ; 2 uses
  %.not.i23.i82.i = icmp eq i64 %.114.i22.i81.i, 0
  br i1 %.not.i23.i82.i, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i, label %.lr.ph.i17.i74.i, !llvm.loop !56

_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i, %.noexc38
  %.011.lcssa.i2937.i83.i = phi i64 [ 1, %.noexc38 ], [ %i.kr, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i ]
  %i.mh = phi ptr [ %i.kk, %.noexc38 ], [ %i.kt, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i ]
  %.011.lcssa.i24.i84.i = phi ptr [ %i.kk, %.noexc38 ], [ %i.mg, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i ]
  store i8 0, ptr %.011.lcssa.i24.i84.i, align 1
  br label %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit

bb.bk:                                            ; preds = %bb.au
  %i.mi = icmp eq i32 %i.d, 9
  br i1 %i.mi, label %bb.bl, label %bb.bv

bb.bl:                                            ; preds = %bb.bk
  %.not.i.i87.i = icmp eq i64 %4, 0
  br i1 %.not.i.i87.i, label %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i, label %.lr.ph.i.i88.i

.lr.ph.i.i88.i:                                   ; preds = %bb.bl, %bb.bm
  %.0811.i.i.i = phi i64 [ %i.mm, %bb.bm ], [ 0, %bb.bl ] ; 9 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %3, i64 %.0811.i.i.i
  %i.mk = load i8, ptr %i.mj, align 1
  %i.ml = icmp slt i8 %i.mk, 0
  br i1 %i.ml, label %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i88.i
  %i.mm = add nuw i64 %.0811.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.mm, %4
  br i1 %exitcond.not.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i, label %.lr.ph.i.i88.i, !llvm.loop !57

_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.i.i: ; preds = %.lr.ph.i.i88.i
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 %.0811.i.i.i ; 6 uses
  %i.mo = sub i64 %4, %.0811.i.i.i                ; 8 uses
  %11 = icmp eq i64 %4, %.0811.i.i.i
  br i1 %11, label %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.i.i
  %min.iters.check = icmp ult i64 %i.mo, 4
  br i1 %min.iters.check, label %.preheader.i.i.preheader1731, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.preheader
  %n.vec = and i64 %i.mo, -4                      ; 3 uses
  %i.mp = and i64 %i.mo, 3
  %i.mq = getelementptr i8, ptr %i.mn, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.mw, %vector.body ]
  %vec.phi1414 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.mx, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.mn, i64 %index ; 2 uses
  %i.mr = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1
  %wide.load1415 = load <2 x i8>, ptr %i.mr, align 1
  %i.ms = icmp sgt <2 x i8> %wide.load, splat (i8 -1)
  %i.mt = icmp sgt <2 x i8> %wide.load1415, splat (i8 -1)
  %i.mu = select <2 x i1> %i.ms, <2 x i64> splat (i64 1), <2 x i64> splat (i64 2)
  %i.mv = select <2 x i1> %i.mt, <2 x i64> splat (i64 1), <2 x i64> splat (i64 2)
  %i.mw = add <2 x i64> %i.mu, %vec.phi           ; 2 uses
  %i.mx = add <2 x i64> %i.mv, %vec.phi1414       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.my = icmp eq i64 %index.next, %n.vec
  br i1 %i.my, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.mx, %i.mw
  %i.mz = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.mo, %n.vec
  br i1 %cmp.n, label %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_12utf8_counterEEENT_10value_typeEPKhmS6_S5_.exit.i.i, label %.preheader.i.i.preheader1731

.preheader.i.i.preheader1731:                     ; preds = %.preheader.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.mz, %middle.block ]
  %.058.i.i.i.ph = phi i64 [ %i.mo, %.preheader.i.i.preheader ], [ %i.mp, %middle.block ]
  %.067.i.i.i.ph = phi ptr [ %i.mn, %.preheader.i.i.preheader ], [ %i.mq, %middle.block ]
  br label %.preheader.i.i.a

_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i: ; preds = %bb.bm, %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.i.i, %bb.bl
  br i1 %7, label %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i
  %i.na = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.nb = add i64 %4, 1                           ; 2 uses
  %i.nc = invoke noundef ptr %i.na(i64 noundef %i.nb)
          to label %.noexc40 unwind label %bb.bw, !inline_history !45 ; 4 uses

.noexc40:                                         ; preds = %bb.bn
  %.not.not.i.i.i = icmp eq ptr %i.nc, null
  br i1 %.not.not.i.i.i, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %.noexc40
  br i1 %i.a, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nc, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %4
  store i8 0, ptr %i.nd, align 1
  br label %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit

.preheader.i.i.a:                                 ; preds = %.preheader.i.i.preheader1731, %.preheader.i.i.a
  %.09.i.i.i = phi i64 [ %i.ng, %.preheader.i.i.a ], [ %.09.i.i.i.ph, %.preheader.i.i.preheader1731 ]
  %.058.i.i.i = phi i64 [ %i.ni, %.preheader.i.i.a ], [ %.058.i.i.i.ph, %.preheader.i.i.preheader1731 ]
  %.067.i.i.i = phi ptr [ %i.nh, %.preheader.i.i.a ], [ %.067.i.i.i.ph, %.preheader.i.i.preheader1731 ] ; 2 uses
  %i.ne = load i8, ptr %.067.i.i.i, align 1
  %i.nf = icmp sgt i8 %i.ne, -1
  %.sink.i.i.i90.i = select i1 %i.nf, i64 1, i64 2
  %i.ng = add i64 %.sink.i.i.i90.i, %.09.i.i.i    ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 1
  %i.ni = add i64 %.058.i.i.i, -1                 ; 2 uses
  %.not.i34.i.i = icmp eq i64 %i.ni, 0
  br i1 %.not.i34.i.i, label %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_12utf8_counterEEENT_10value_typeEPKhmS6_S5_.exit.i.i, label %.preheader.i.i.a, !llvm.loop !59

_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_12utf8_counterEEENT_10value_typeEPKhmS6_S5_.exit.i.i: ; preds = %.preheader.i.i.a, %middle.block
  %.lcssa1412 = phi i64 [ %i.mz, %middle.block ], [ %i.ng, %.preheader.i.i.a ]
  %i.nj = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.nk = add i64 %.0811.i.i.i, 1
  %i.nl = add i64 %i.nk, %.lcssa1412              ; 2 uses
  %i.nm = invoke noundef ptr %i.nj(i64 noundef %i.nl)
          to label %.noexc41 unwind label %bb.bw, !inline_history !45 ; 4 uses

.noexc41:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_12utf8_counterEEENT_10value_typeEPKhmS6_S5_.exit.i.i
  %.not.not.i91.i = icmp eq ptr %i.nm, null
  br i1 %.not.not.i91.i, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %.noexc41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nm, ptr nonnull align 1 %3, i64 %.0811.i.i.i, i1 false)
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 %.0811.i.i.i ; 4 uses
  %.neg = add i64 %.0811.i.i.i, 1
  %xtraiter = and i64 %i.mo, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.br
  %i.no = load i8, ptr %i.mn, align 1             ; 4 uses
  %i.np = icmp sgt i8 %i.no, -1
  br i1 %i.np, label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.prol, label %bb.bs

bb.bs:                                            ; preds = %.prol.preheader
  %i.nq = lshr i8 %i.no, 6
  %i.nr = or disjoint i8 %i.nq, -64
  %i.ns = and i8 %i.no, -65
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
  store i8 %i.ns, ptr %i.nt, align 1
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.prol

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.prol: ; preds = %bb.bs, %.prol.preheader
  %.sink.i38.i.i.prol = phi i8 [ %i.nr, %bb.bs ], [ %i.no, %.prol.preheader ]
  %.sink.i.i39.i.i.prol = phi i64 [ 2, %bb.bs ], [ 1, %.prol.preheader ]
  store i8 %.sink.i38.i.i.prol, ptr %i.nn, align 1
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nn, i64 %.sink.i.i39.i.i.prol ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mn, i64 1
  %i.nw = add nsw i64 %i.mo, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.prol, %bb.br
  %.lcssa1730.unr = phi ptr [ poison, %bb.br ], [ %i.nu, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.prol ]
  %.09.i35.i.i.unr = phi ptr [ %i.nn, %bb.br ], [ %i.nu, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.prol ]
  %.058.i36.i.i.unr = phi i64 [ %i.mo, %bb.br ], [ %i.nw, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.prol ]
  %.067.i37.i.i.unr = phi ptr [ %i.mn, %bb.br ], [ %i.nv, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.prol ]
  %i.nx = icmp eq i64 %4, %.neg
  br i1 %i.nx, label %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1
  %.09.i35.i.i = phi ptr [ %i.om, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1 ], [ %.09.i35.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.058.i36.i.i = phi i64 [ %i.oo, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1 ], [ %.058.i36.i.i.unr, %.prol.loopexit ]
  %.067.i37.i.i = phi ptr [ %i.on, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1 ], [ %.067.i37.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ny = load i8, ptr %.067.i37.i.i, align 1     ; 4 uses
  %i.nz = icmp sgt i8 %i.ny, -1
  br i1 %i.nz, label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i, label %bb.bt

bb.bt:                                            ; preds = %.new
  %i.oa = lshr i8 %i.ny, 6
  %i.ob = or disjoint i8 %i.oa, -64
  %i.oc = and i8 %i.ny, -65
  %i.od = getelementptr inbounds nuw i8, ptr %.09.i35.i.i, i64 1
  store i8 %i.oc, ptr %i.od, align 1
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i: ; preds = %bb.bt, %.new
  %.sink.i38.i.i = phi i8 [ %i.ob, %bb.bt ], [ %i.ny, %.new ]
  %.sink.i.i39.i.i = phi i64 [ 2, %bb.bt ], [ 1, %.new ]
  store i8 %.sink.i38.i.i, ptr %.09.i35.i.i, align 1
  %i.oe = getelementptr inbounds nuw i8, ptr %.09.i35.i.i, i64 %.sink.i.i39.i.i ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.067.i37.i.i, i64 1
  %i.og = load i8, ptr %i.of, align 1             ; 4 uses
  %i.oh = icmp sgt i8 %i.og, -1
  br i1 %i.oh, label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1, label %bb.bu

bb.bu:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i
  %i.oi = lshr i8 %i.og, 6
  %i.oj = or disjoint i8 %i.oi, -64
  %i.ok = and i8 %i.og, -65
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oe, i64 1
  store i8 %i.ok, ptr %i.ol, align 1
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1: ; preds = %bb.bu, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i
  %.sink.i38.i.i.1 = phi i8 [ %i.oj, %bb.bu ], [ %i.og, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i ]
  %.sink.i.i39.i.i.1 = phi i64 [ 2, %bb.bu ], [ 1, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i ]
  store i8 %.sink.i38.i.i.1, ptr %i.oe, align 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 %.sink.i.i39.i.i.1 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.067.i37.i.i, i64 2
  %i.oo = add i64 %.058.i36.i.i, -2               ; 2 uses
  %.not.i40.i.i.1 = icmp eq i64 %i.oo, 0
  br i1 %.not.i40.i.i.1, label %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i, label %.new, !llvm.loop !60

_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1, %.prol.loopexit
  %.lcssa1730 = phi ptr [ %.lcssa1730.unr, %.prol.loopexit ], [ %i.om, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1 ]
  store i8 0, ptr %.lcssa1730, align 1
  br label %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit

bb.bv:                                            ; preds = %bb.bk, %.noexc36, %.noexc39, %.noexc38, %.noexc40, %.noexc41, %.noexc, %.noexc33, %.noexc32, %.noexc35, %.noexc34, %.noexc37
  invoke void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
          to label %bb.ik unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_12utf8_counterEEENT_10value_typeEPKhmS6_S5_.exit.i.i, %bb.bn, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.thread.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.thread.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.i.i, %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  invoke void %i.f(ptr noundef nonnull %3)
          to label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.op = landingpad { ptr, i32 }
          catch ptr null
  %i.oq = extractvalue { ptr, i32 } %i.op, 0
  tail call void @__clang_call_terminate(ptr %i.oq) #49
  unreachable

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit: ; preds = %bb.bw, %bb.bx
  resume { ptr, i32 } %lpad.thr_comm.split-lp

_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit: ; preds = %bb.d, %bb.h, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i, %bb.bq, %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i
  %.070 = phi ptr [ %i.nm, %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i ], [ %i.nc, %bb.bq ], [ %3, %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i ], [ %3, %bb.d ], [ %i.mh, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i ], [ %i.jx, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i ], [ %i.hd, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i ], [ %i.di, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i ], [ %i.j, %bb.h ] ; 12 uses
  %.0 = phi i64 [ %i.nl, %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i ], [ %i.nb, %bb.bq ], [ %4, %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i ], [ %4, %bb.d ], [ %.011.lcssa.i2937.i83.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i ], [ %.011.lcssa.i2937.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i ], [ %.029.lcssa.i3440.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i ], [ %.029.lcssa.i3541.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i ], [ %i.i, %bb.h ] ; 3 uses
  br i1 %8, label %bb.bz, label %.critedge

bb.bz:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit
  %i.or = icmp ne ptr %.070, %3
  %i.os = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.os, %i.or
  br i1 %or.cond3, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ot = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  tail call void %i.ot(ptr noundef nonnull %3)
  br label %bb.cb

.critedge:                                        ; preds = %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit
  %.not.old = icmp eq ptr %.070, %3
  br i1 %.not.old, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca, %.critedge
  store ptr %.070, ptr %9, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.critedge
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %.070, ptr %i.ou, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.ov = icmp eq i64 %.0, 0
  br i1 %i.ov, label %.noexc51.a, label %bb.cd

.noexc51.a:                                       ; preds = %bb.cc
  %i.ow = lshr i32 %5, 8
  %i.ox = and i32 %i.ow, 16
  %i.oy = xor i32 %i.ox, 16
  tail call void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
  store i32 %i.oy, ptr %0, align 8, !alias.scope !64
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.oz, align 8, !alias.scope !64
  br label %.thread78
end_hunk_0
begin_hunk_1_@_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm:bb.a

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.073.i.i.i, i64 1
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = and i32 %i.bh, 192
  %i.bj = icmp eq i32 %i.bi, 128
  br i1 %i.bj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.073.i.i.i, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = and i32 %i.bm, 192
  %i.bo = icmp eq i32 %i.bn, 128
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = shl nuw nsw i32 %i.l, 12
  %i.bq = shl nuw nsw i32 %i.bh, 6
  %i.br = and i32 %i.bq, 4032
  %i.bs = or disjoint i32 %i.br, %i.bp
  %i.bt = and i32 %i.bm, 63
  %i.bu = or disjoint i32 %i.bt, %i.bs
  %i.bv = trunc i32 %i.bu to i16
  store i16 %i.bv, ptr %.06371.i.i.i.ptr, align 2
  %.06371.i.i.i.add = add nuw nsw i64 %.06371.i.i.i.idx, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %.073.i.i.i, i64 3
  %i.bx = add i64 %.06072.i.i.i, -3
  br label %.critedge.i.i.i

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.by = and i32 %i.l, 248
  %i.bz = icmp eq i32 %i.by, 240
  %i.ca = icmp ugt i64 %.06072.i.i.i, 3
  %or.cond5.i.i.i = and i1 %i.ca, %i.bz
  br i1 %or.cond5.i.i.i, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.073.i.i.i, i64 1
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = and i32 %i.cd, 192
  %i.cf = icmp eq i32 %i.ce, 128
  br i1 %i.cf, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %.073.i.i.i, i64 2
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = and i32 %i.ci, 192
  %i.ck = icmp eq i32 %i.cj, 128
  br i1 %i.ck, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %.073.i.i.i, i64 3
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %i.co = and i32 %i.cn, 192
  %i.cp = icmp eq i32 %i.co, 128
  br i1 %i.cp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cq = shl nuw nsw i32 %i.l, 18
  %i.cr = and i32 %i.cq, 1835008
  %i.cs = shl nuw nsw i32 %i.cd, 12
  %i.ct = and i32 %i.cs, 258048
  %i.cu = shl nuw nsw i32 %i.ci, 6                ; 2 uses
  %i.cv = and i32 %i.cu, 3072
  %i.cw = and i32 %i.cn, 63
  %i.cx = or disjoint i32 %i.cw, %i.cu
  %i.cy = add nuw nsw i32 %i.cr, 67043328
  %i.cz = add nuw nsw i32 %i.cy, %i.ct
  %i.da = or disjoint i32 %i.cz, %i.cv
  %i.db = lshr exact i32 %i.da, 10
  %i.dc = trunc i32 %i.db to i16
  %i.dd = add nsw i16 %i.dc, -10240
  store i16 %i.dd, ptr %.06371.i.i.i.ptr, align 2
  %i.de = trunc nuw nsw i32 %i.cx to i16
  %i.df = and i16 %i.de, 1023
  %i.dg = or disjoint i16 %i.df, -9216
  %i.dh = getelementptr inbounds nuw i8, ptr %.06371.i.i.i.ptr, i64 2
  store i16 %i.dg, ptr %i.dh, align 2
  %.06371.i.i.i.add8 = add nuw nsw i64 %.06371.i.i.i.idx, 4
  %i.di = getelementptr inbounds nuw i8, ptr %.073.i.i.i, i64 4
  %i.dj = add i64 %.06072.i.i.i, -4
  br label %.critedge.i.i.i

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %.073.i.i.i, i64 1
  %i.dl = add i64 %.06072.i.i.i, -1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.f, %.preheader.i.i.i, %bb.s, %bb.r, %bb.m, %bb.i, %bb.e
  %.265.i.i.i.idx = phi i64 [ %.06371.i.i.i.add8, %bb.r ], [ %.06371.i.i.i.idx, %bb.s ], [ %.06371.i.i.i.add7, %bb.e ], [ %.06371.i.i.i.add6, %bb.i ], [ %.06371.i.i.i.add, %bb.m ], [ %.164.i.i.i.add, %bb.f ], [ %.164.i.i.i.idx, %.preheader.i.i.i ] ; 5 uses
  %.262.i.i.i = phi i64 [ %i.dj, %bb.r ], [ %i.dl, %bb.s ], [ %i.p, %bb.e ], [ %i.bb, %bb.i ], [ %i.bx, %bb.m ], [ %i.am, %bb.f ], [ %.161.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.2.i.i.i = phi ptr [ %i.di, %bb.r ], [ %i.dk, %bb.s ], [ %i.o, %bb.e ], [ %i.ba, %bb.i ], [ %i.bw, %bb.m ], [ %i.al, %bb.f ], [ %.1.i.i.i, %.preheader.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.262.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf16_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i, label %.preheader, !llvm.loop !373

_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf16_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i: ; preds = %.critedge.i.i.i
  %.265.i.i.i.ptr.le = getelementptr inbounds nuw i8, ptr %0, i64 %.265.i.i.i.idx
  %i.dm = icmp ne i32 %i.c, 2
  %.not11.i.i = icmp ne i64 %.265.i.i.i.idx, 2048
  %or.cond.not.i.i = select i1 %i.dm, i1 %.not11.i.i, i1 false
  br i1 %or.cond.not.i.i, label %iter.check, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i

iter.check:                                       ; preds = %_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf16_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i
  %i.dn = add i64 %.265.i.i.i.idx, -2050          ; 3 uses
  %i.do = lshr i64 %i.dn, 1
  %i.dp = add nuw i64 %i.do, 1                    ; 5 uses
  %min.iters.check28 = icmp ult i64 %i.dn, 14
  br i1 %min.iters.check28, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i64 %i.dn, 30
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph30

vector.ph30:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf31 = and i64 %i.dp, 8
  %n.vec32 = and i64 %i.dp, -16                   ; 4 uses
  %i.dq = shl i64 %n.vec32, 1
  %i.dr = getelementptr i8, ptr %.ptr13, i64 %i.dq
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next38, %vector.body33 ] ; 2 uses
  %i.ds = shl i64 %index34, 1
  %next.gep35 = getelementptr i8, ptr %.ptr13, i64 %i.ds ; 3 uses
  %i.dt = getelementptr i8, ptr %next.gep35, i64 16 ; 2 uses
  %wide.load36 = load <8 x i16>, ptr %next.gep35, align 8
  %wide.load37 = load <8 x i16>, ptr %i.dt, align 8
  %i.du = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load36)
  %i.dv = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load37)
  store <8 x i16> %i.du, ptr %next.gep35, align 8
  store <8 x i16> %i.dv, ptr %i.dt, align 8
  %index.next38 = add nuw i64 %index34, 16        ; 2 uses
  %i.dw = icmp eq i64 %index.next38, %n.vec32
  br i1 %i.dw, label %middle.block39, label %vector.body33, !llvm.loop !374

middle.block39:                                   ; preds = %vector.body33
  %cmp.n40 = icmp eq i64 %i.dp, %n.vec32
  br i1 %cmp.n40, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block39
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf31, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !375

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec32, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.dp, -8                    ; 3 uses
  %i.dx = shl i64 %n.vec43, 1
  %i.dy = getelementptr i8, ptr %.ptr13, i64 %i.dx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 2 uses
  %i.dz = shl i64 %index44, 1
  %next.gep45 = getelementptr i8, ptr %.ptr13, i64 %i.dz ; 2 uses
  %wide.load46 = load <8 x i16>, ptr %next.gep45, align 8
  %i.ea = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load46)
  store <8 x i16> %i.ea, ptr %next.gep45, align 8
  %index.next47 = add nuw i64 %index44, 8         ; 2 uses
  %i.eb = icmp eq i64 %index.next47, %n.vec43
  br i1 %i.eb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !376

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %i.dp, %n.vec43
  br i1 %cmp.n48, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.ph = phi ptr [ %.ptr13, %iter.check ], [ %i.dr, %vec.epilog.iter.check ], [ %i.dy, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.ed, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ec = load i16, ptr %.012.i.i, align 2
  %rev.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.ec)
  store i16 %rev.i.i.i, ptr %.012.i.i, align 2
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 2 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ed, %.265.i.i.i.ptr.le
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i.i, !llvm.loop !377

_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i: ; preds = %.lr.ph.i.i, %middle.block39, %vec.epilog.middle.block, %_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf16_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i
  %gepdiff = add nsw i64 %.265.i.i.i.idx, -2048
  br label %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit

bb.t:                                             ; preds = %bb.d
  %i.ee = add i32 %i.c, -5
  %or.cond3.i = icmp ult i32 %i.ee, 2
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ef = icmp ne i32 %i.c, 5
  %i.eg = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf32_writerEEENT_10value_typeEPKhmS6_S5_(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef nonnull %.ptr13) ; 4 uses
  %.not11.i22.i = icmp ne ptr %.ptr13, %i.eg
  %or.cond.not.i23.i = and i1 %i.ef, %.not11.i22.i
  br i1 %or.cond.not.i23.i, label %.lr.ph.i24.i.preheader, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i

.lr.ph.i24.i.preheader:                           ; preds = %bb.u
  %3 = ptrtoint ptr %i.eg to i64
  %4 = ptrtoint ptr %0 to i64
  %i.eh = sub i64 %3, %4
  %i.ei = add i64 %i.eh, -2052                    ; 2 uses
  %i.ej = lshr i64 %i.ei, 2
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ei, 28
  br i1 %min.iters.check, label %.lr.ph.i24.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i24.i.preheader
  %n.vec = and i64 %i.ek, 9223372036854775800     ; 3 uses
  %i.el = shl i64 %n.vec, 2
  %i.em = getelementptr i8, ptr %.ptr13, i64 %i.el
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.en = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.ptr13, i64 %i.en ; 3 uses
  %i.eo = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 8
  %wide.load26 = load <4 x i32>, ptr %i.eo, align 8
  %i.ep = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.eq = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load26)
  store <4 x i32> %i.ep, ptr %next.gep, align 8
  store <4 x i32> %i.eq, ptr %i.eo, align 8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !378

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ek, %n.vec
  br i1 %cmp.n, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i24.i.preheader50

.lr.ph.i24.i.preheader50:                         ; preds = %.lr.ph.i24.i.preheader, %middle.block
  %.012.i25.i.ph = phi ptr [ %.ptr13, %.lr.ph.i24.i.preheader ], [ %i.em, %middle.block ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader50, %.lr.ph.i24.i
  %.012.i25.i = phi ptr [ %i.eu, %.lr.ph.i24.i ], [ %.012.i25.i.ph, %.lr.ph.i24.i.preheader50 ] ; 3 uses
  %i.es = load i32, ptr %.012.i25.i, align 4
  %i.et = tail call noundef i32 @llvm.bswap.i32(i32 %i.es)
  store i32 %i.et, ptr %.012.i25.i, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %.012.i25.i, i64 4 ; 2 uses
  %.not.i26.i = icmp eq ptr %i.eu, %i.eg
  br i1 %.not.i26.i, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i24.i, !llvm.loop !379

_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i: ; preds = %.lr.ph.i24.i, %middle.block, %bb.u
  %i.ev = ptrtoint ptr %i.eg to i64
  %i.ew = ptrtoint ptr %.ptr13 to i64
  %i.ex = sub i64 %i.ev, %i.ew
  br label %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit

bb.v:                                             ; preds = %bb.t
  %i.ey = icmp eq i32 %i.c, 9
  br i1 %i.ey, label %.preheader.i, label %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit

.preheader.i:                                     ; preds = %bb.v, %.critedge.i.i30.i
  %.074.i.i.i = phi ptr [ %.2.i.i33.i, %.critedge.i.i30.i ], [ %1, %bb.v ] ; 12 uses
  %.06073.i.i.i = phi i64 [ %.262.i.i32.i, %.critedge.i.i30.i ], [ %2, %bb.v ] ; 8 uses
  %.06372.i.i.i = phi ptr [ %.265.i.i31.i, %.critedge.i.i30.i ], [ %.ptr13, %bb.v ] ; 9 uses
  %i.ez = load i8, ptr %.074.i.i.i, align 1       ; 4 uses
  %i.fa = zext i8 %i.ez to i32                    ; 5 uses
  %i.fb = icmp sgt i8 %i.ez, -1
  br i1 %i.fb, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.preheader.i
  store i8 %i.ez, ptr %.06372.i.i.i, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 1 ; 3 uses
  %i.fe = add i64 %.06073.i.i.i, -1               ; 3 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = and i64 %i.ff, 3
  %i.fh = icmp eq i64 %i.fg, 0
  %i.fi = icmp ugt i64 %i.fe, 3
  %or.cond7.i.i35.i = and i1 %i.fi, %i.fh
  br i1 %or.cond7.i.i35.i, label %.preheader.i.i36.i, label %.critedge.i.i30.i

.preheader.i.i36.i:                               ; preds = %bb.w, %bb.x
  %.164.i.i37.i = phi ptr [ %i.fw, %bb.x ], [ %i.fc, %bb.w ] ; 6 uses
  %.161.i.i38.i = phi i64 [ %i.fy, %bb.x ], [ %i.fe, %bb.w ] ; 2 uses
  %.1.i.i39.i = phi ptr [ %i.fx, %bb.x ], [ %i.fd, %bb.w ] ; 6 uses
  %i.fj = load i32, ptr %.1.i.i39.i, align 4      ; 2 uses
  %i.fk = and i32 %i.fj, -2139062144
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.x, label %.critedge.i.i30.i

bb.x:                                             ; preds = %.preheader.i.i36.i
  %i.fm = trunc i32 %i.fj to i8
  store i8 %i.fm, ptr %.164.i.i37.i, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 1
  %i.fo = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 1
  %i.fp = load i8, ptr %i.fo, align 1
  store i8 %i.fp, ptr %i.fn, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 2
  %i.fr = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 2
  %i.fs = load i8, ptr %i.fr, align 2
  store i8 %i.fs, ptr %i.fq, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 3
  %i.fu = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 3
  %i.fv = load i8, ptr %i.fu, align 1
  store i8 %i.fv, ptr %i.ft, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 4 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 4 ; 2 uses
  %i.fy = add i64 %.161.i.i38.i, -4               ; 3 uses
  %.old6.i.i40.i = icmp ugt i64 %i.fy, 3
  br i1 %.old6.i.i40.i, label %.preheader.i.i36.i, label %.critedge.i.i30.i

bb.y:                                             ; preds = %.preheader.i
  %i.fz = and i32 %i.fa, 224
  %i.ga = icmp eq i32 %i.fz, 192
  %i.gb = icmp ne i64 %.06073.i.i.i, 1
  %or.cond.i.i27.i = and i1 %i.gb, %i.ga
  br i1 %or.cond.i.i27.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.gc = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 1
  %i.gd = load i8, ptr %i.gc, align 1             ; 2 uses
  %i.ge = icmp slt i8 %i.gd, -64
  br i1 %i.ge, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gf = shl i8 %i.ez, 6
  %i.gg = and i8 %i.gd, 63
  %i.gh = or disjoint i8 %i.gg, %i.gf
  %i.gi = and i32 %i.fa, 28
  %.not71.i.i.i = icmp eq i32 %i.gi, 0
  %i.gj = select i1 %.not71.i.i.i, i8 %i.gh, i8 63
  store i8 %i.gj, ptr %.06372.i.i.i, align 1
  %i.gk = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1
  %i.gl = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 2
  %i.gm = add i64 %.06073.i.i.i, -2
  br label %.critedge.i.i30.i

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.gn = and i32 %i.fa, 240
  %i.go = icmp eq i32 %i.gn, 224
  %i.gp = icmp ugt i64 %.06073.i.i.i, 2
  %or.cond3.i.i28.i = and i1 %i.gp, %i.go
  br i1 %or.cond3.i.i28.i, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.gq = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 1
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = zext i8 %i.gr to i32                    ; 2 uses
  %i.gt = and i32 %i.gs, 192
  %i.gu = icmp eq i32 %i.gt, 128
  br i1 %i.gu, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gv = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 2
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = zext i8 %i.gw to i32                    ; 2 uses
  %i.gy = and i32 %i.gx, 192
  %i.gz = icmp eq i32 %i.gy, 128
  br i1 %i.gz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ha = shl nuw nsw i32 %i.fa, 12
  %i.hb = and i32 %i.ha, 61440
  %i.hc = shl nuw nsw i32 %i.gs, 6                ; 2 uses
  %i.hd = and i32 %i.hc, 3840
  %i.he = or disjoint i32 %i.hd, %i.hb
  %i.hf = and i32 %i.gx, 63
  %i.hg = or disjoint i32 %i.hf, %i.hc
  %.not75.i.i.i = icmp eq i32 %i.he, 0
  %i.hh = trunc i32 %i.hg to i8
  %i.hi = select i1 %.not75.i.i.i, i8 %i.hh, i8 63
  store i8 %i.hi, ptr %.06372.i.i.i, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1
  %i.hk = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 3
  %i.hl = add i64 %.06073.i.i.i, -3
  br label %.critedge.i.i30.i

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.hm = and i32 %i.fa, 248
  %i.hn = icmp eq i32 %i.hm, 240
  %i.ho = icmp ugt i64 %.06073.i.i.i, 3
  %or.cond5.i.i29.i = and i1 %i.ho, %i.hn
  br i1 %or.cond5.i.i29.i, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.hp = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 1
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = icmp slt i8 %i.hq, -64
  br i1 %i.hr, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.hs = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 2
  %i.ht = load i8, ptr %i.hs, align 1
  %i.hu = icmp slt i8 %i.ht, -64
  br i1 %i.hu, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.hv = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 3
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = icmp slt i8 %i.hw, -64
  br i1 %i.hx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i8 63, ptr %.06372.i.i.i, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1
end_hunk_1
begin_hunk_2_@_ZN4pugi4impl12_GLOBAL__N_113namespace_uriERKNS_10xpath_nodeE:bb.a
  %i.i = sub i64 %i.g, %i.h
  %i.j = select i1 %.not.i6.i, i64 0, i64 %i.i
  %.not.i720.i = icmp eq ptr %.sroa.0.0.copyload.i7, null
  %or.cond.i = select i1 %.not.i6.i, i1 true, i1 %.not.i720.i
  br i1 %or.cond.i, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4pugi13xml_attribute4nameEv.exit.i, %bb.b
  %.sroa.014.021.i = phi ptr [ %i.n, %bb.b ], [ %.sroa.0.0.copyload.i7, %_ZNK4pugi13xml_attribute4nameEv.exit.i ] ; 2 uses
  %i.k = call fastcc ptr @_ZNK4pugi8xml_node14find_attributeINS_4impl12_GLOBAL__N_123namespace_uri_predicateEEENS_13xml_attributeET_(ptr nonnull %.sroa.014.021.i, ptr %i.f, i64 %i.j) ; 2 uses
  %.not.i8.i = icmp eq ptr %i.k, null
  br i1 %.not.i8.i, label %bb.b, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.014.021.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.m)
  %i.n = load ptr, ptr %2, align 8                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not.i7.i = icmp eq ptr %i.n, null
  br i1 %.not.i7.i, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit, label %.lr.ph.i, !llvm.loop !445

_ZNK4pugi10xpath_node4nodeEv.exit:                ; preds = %bb.a
  %i.o = load i64, ptr %0, align 8                ; 2 uses
  %.not.i.i10 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i10, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit, label %_ZNK4pugi8xml_node4nameEv.exit.i

_ZNK4pugi8xml_node4nameEv.exit.i:                 ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not5.i.i11 = icmp eq ptr %i.r, null
  %i.s = select i1 %.not5.i.i11, ptr @.str, ptr %i.r ; 3 uses
  %i.t = tail call noundef ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.s, i32 noundef 58) #51 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.t, null             ; 2 uses
  %i.u = select i1 %.not.i4.i, ptr null, ptr %i.s
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = select i1 %.not.i4.i, i64 0, i64 %i.x
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.c, %_ZNK4pugi8xml_node4nameEv.exit.i
  %.sroa.012.019.i = phi ptr [ %i.ac, %bb.c ], [ %i.p, %_ZNK4pugi8xml_node4nameEv.exit.i ] ; 2 uses
  %i.z = call fastcc ptr @_ZNK4pugi8xml_node14find_attributeINS_4impl12_GLOBAL__N_123namespace_uri_predicateEEENS_13xml_attributeET_(ptr nonnull %.sroa.012.019.i, ptr %i.u, i64 %i.y) ; 2 uses
  %.not.i6.i13 = icmp eq ptr %i.z, null
  br i1 %.not.i6.i13, label %bb.c, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split

bb.c:                                             ; preds = %.lr.ph.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ab)
  %i.ac = load ptr, ptr %1, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not.i5.i = icmp eq ptr %i.ac, null
  br i1 %.not.i5.i, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit, label %.lr.ph.i12, !llvm.loop !446

_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split: ; preds = %.lr.ph.i, %.lr.ph.i12
  %.lcssa.sink = phi ptr [ %i.z, %.lr.ph.i12 ], [ %i.k, %.lr.ph.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.lcssa.sink, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not5.i8.i = icmp eq ptr %i.ae, null
  %i.af = select i1 %.not5.i8.i, ptr @.str, ptr %i.ae
  br label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit

_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit: ; preds = %bb.b, %bb.c, %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split, %_ZNK4pugi10xpath_node4nodeEv.exit, %_ZNK4pugi13xml_attribute4nameEv.exit.i
  %i.ag = phi ptr [ %i.af, %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split ], [ @.str, %_ZNK4pugi13xml_attribute4nameEv.exit.i ], [ @.str, %_ZNK4pugi10xpath_node4nodeEv.exit ], [ @.str, %bb.c ], [ @.str, %bb.b ]
  ret ptr %i.ag
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_112xpath_string9from_heapEPKcS4_PNS1_15xpath_allocatorE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 9), (16, 24)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = and i64 %i.d, -8                         ; 2 uses
  %i.f = add i64 %i.e, 8                          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = add i64 %i.h, %i.f                       ; 2 uses
  %i.j = load ptr, ptr %3, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %.not.i.i = icmp ugt i64 %i.i, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  store i64 %i.i, ptr %i.g, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.e, 1032
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.o, i64 4096) ; 2 uses
  %i.q = add i64 %i.p, 16
  %i.r = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.s = tail call noundef ptr %i.r(i64 noundef %i.q), !inline_history !447 ; 5 uses
  %.not23.i.i = icmp eq ptr %i.s, null
  br i1 %.not23.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not24.i.i = icmp eq ptr %i.u, null
  br i1 %.not24.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.u, align 1
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %3, align 8
  store ptr %i.v, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.p, ptr %i.w, align 8
  store ptr %i.s, ptr %3, align 8
  store i64 %i.f, ptr %i.g, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.1.i.i = phi ptr [ %i.n, %bb.c ], [ %i.x, %bb.g ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1.i.i, ptr readonly align 1 %1, i64 %i.d, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %i.d
  store i8 0, ptr %i.y, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.h
  %.1.i.i.sink = phi ptr [ %.1.i.i, %bb.h ], [ @.str, %bb.a ], [ @.str, %bb.f ], [ @.str, %bb.e ]
  %.sink18 = phi i8 [ 1, %bb.h ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ]
  %.sink = phi i64 [ %i.d, %bb.h ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ]
  store ptr %.1.i.i.sink, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink18, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.aa, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_124convert_number_to_stringEdPNS1_15xpath_allocatorE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, double noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca double, align 8                   ; 9 uses
  %i.b = alloca [32 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile double %1, ptr %i.a, align 8
  %.0..0..0..0..0..0..i = load volatile double, ptr %i.a, align 8
  %i.c = fcmp oeq double %.0..0..0..0..0..0..i, 0.000000e+00
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0..0..0..0..0..0.1.i = load volatile double, ptr %i.a, align 8
  %.0..0..0..0..0..0.2.i = load volatile double, ptr %i.a, align 8
  %i.d = fcmp une double %.0..0..0..0..0..0.1.i, %.0..0..0..0..0..0.2.i
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0..0..0..0..0..0.3.i = load volatile double, ptr %i.a, align 8
  %i.e = fmul double %.0..0..0..0..0..0.3.i, 2.000000e+00
  %.0..0..0..0..0..0.4.i = load volatile double, ptr %i.a, align 8
  %i.f = fcmp oeq double %i.e, %.0..0..0..0..0..0.4.i
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = fcmp ogt double %1, 0.000000e+00
  %i.h = select i1 %i.g, ptr @.str.104, ptr @.str.105
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d
  %.0.i.ph = phi ptr [ %i.h, %bb.d ], [ @.str.102, %bb.a ], [ @.str.103, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.0.i.ph, ptr %0, align 8, !alias.scope !448
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.i, align 8, !alias.scope !448
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8, !alias.scope !448
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 noundef 32, ptr noundef nonnull @.str.106, i32 noundef 15, double noundef %1) #50 ; 0 uses
  %i.l = call noundef ptr @strchr(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i32 noundef 101) #51 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = call i64 @__isoc23_strtol(ptr noundef nonnull %i.m, ptr noundef null, i32 noundef 10) #50, !inline_history !451 ; 2 uses
  %i.o = load i8, ptr %i.b, align 16              ; 2 uses
  %i.p = icmp eq i8 %i.o, 45                      ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.sroa.gep.val = load i8, ptr %.sroa.gep, align 1
  %i.q = select i1 %i.p, i8 %.sroa.gep.val, i8 %i.o
  %.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.idx.i.sroa.sel.sroa.sel = select i1 %i.p, ptr %.sroa.gep.sroa.gep, ptr %.sroa.gep ; 9 uses
  store i8 %i.q, ptr %.idx.i.sroa.sel.sroa.sel, align 1
  %3 = ptrtoint ptr %i.l to i64
  %4 = ptrtoint ptr %.idx.i.sroa.sel.sroa.sel to i64
  %i.r = sub i64 %4, %3
  %scevgep.i.i = getelementptr i8, ptr %i.l, i64 %i.r ; 2 uses
  %.not.i.i87 = icmp eq ptr %.idx.i.sroa.sel.sroa.sel, %i.l
  br i1 %.not.i.i87, label %_ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit, label %.lr.ph89

bb.g:                                             ; preds = %.lr.ph89
  %.not.i.i = icmp eq ptr %.idx.i.sroa.sel.sroa.sel, %i.s
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit, label %.lr.ph89, !llvm.loop !452

.lr.ph89:                                         ; preds = %bb.f, %bb.g
  %.0.i.i88 = phi ptr [ %i.s, %bb.g ], [ %i.l, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.0.i.i88, i64 -1 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 48
  br i1 %i.u, label %bb.g, label %._ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit_crit_edge90, !llvm.loop !452

._ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit_crit_edge90: ; preds = %.lr.ph89
  br label %_ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit, !llvm.loop !452

_ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit: ; preds = %bb.g, %._ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit_crit_edge90, %bb.f
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %bb.f ], [ %.0.i.i88, %._ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit_crit_edge90 ], [ %scevgep.i.i, %bb.g ]
  %i.v = trunc i64 %i.n to i32                    ; 4 uses
  %i.w = add nsw i32 %i.v, 1                      ; 4 uses
  store i8 0, ptr %.0.lcssa.i.i, align 1
  %i.x = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #51
  %i.y = call i32 @llvm.abs.i32(i32 %i.w, i1 true)
  %narrow = add nuw i32 %i.y, 11
  %i.z = zext i32 %narrow to i64
  %i.aa = add i64 %i.x, %i.z
  %i.ab = and i64 %i.aa, -8                       ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = add i64 %i.ab, %i.ad                    ; 2 uses
  %i.af = load ptr, ptr %2, align 8               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %.not.i = icmp ugt i64 %i.ae, %i.ah
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad
  store i64 %i.ae, ptr %i.ac, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit

bb.i:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit
  %i.ak = add i64 %i.ab, 1024
  %i.al = call i64 @llvm.umax.i64(i64 %i.ak, i64 4096) ; 2 uses
  %i.am = add i64 %i.al, 16
  %i.an = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.ao = call noundef ptr %i.an(i64 noundef %i.am), !inline_history !453 ; 5 uses
  %.not23.i = icmp eq ptr %i.ao, null
  br i1 %.not23.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not24.i = icmp eq ptr %i.aq, null
  br i1 %.not24.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.aq, align 1
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %2, align 8
  store ptr %i.ar, ptr %i.ao, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.al, ptr %i.as, align 8
  store ptr %i.ao, ptr %2, align 8
  store i64 %i.ab, ptr %i.ac, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit: ; preds = %bb.l, %bb.h
  %.1.i = phi ptr [ %i.aj, %bb.h ], [ %i.at, %bb.l ] ; 5 uses
  %i.au = fcmp olt double %1, 0.000000e+00
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 45, ptr %.1.i, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit
  %.0 = phi ptr [ %i.av, %bb.m ], [ %.1.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit ] ; 5 uses
  %i.aw = icmp slt i32 %i.v, 0
  br i1 %i.aw, label %.loopexit45, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i32 %i.w, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.148.prol = phi ptr [ %i.ay, %.lr.ph.prol ], [ %.0, %.lr.ph.preheader ] ; 3 uses
  %.03147.prol = phi i32 [ %i.az, %.lr.ph.prol ], [ %i.w, %.lr.ph.preheader ]
  %.03446.prol = phi ptr [ %spec.select.idx.sroa.sel.idx.prol.sroa.sel, %.lr.ph.prol ], [ %.idx.i.sroa.sel.sroa.sel, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ax = load i8, ptr %.03446.prol, align 1      ; 2 uses
  %.not20.not.prol.not = icmp ne i8 %i.ax, 0      ; 2 uses
  %spec.select.idx.sroa.sel.idx.prol.sroa.sel.idx = zext i1 %.not20.not.prol.not to i64
  %spec.select.idx.sroa.sel.idx.prol.sroa.sel = getelementptr inbounds nuw i8, ptr %.03446.prol, i64 %spec.select.idx.sroa.sel.idx.prol.sroa.sel.idx ; 3 uses
  %spec.select43.prol = select i1 %.not20.not.prol.not, i8 %i.ax, i8 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.148.prol, i64 1 ; 3 uses
  store i8 %spec.select43.prol, ptr %.148.prol, align 1
  %i.az = add nsw i32 %.03147.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !454

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.148.unr = phi ptr [ %.0, %.lr.ph.preheader ], [ %i.ay, %.lr.ph.prol ]
  %.03147.unr = phi i32 [ %i.w, %.lr.ph.preheader ], [ %i.az, %.lr.ph.prol ]
  %.03446.unr = phi ptr [ %.idx.i.sroa.sel.sroa.sel, %.lr.ph.preheader ], [ %spec.select.idx.sroa.sel.idx.prol.sroa.sel, %.lr.ph.prol ]
  %.148.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.148.prol, %.lr.ph.prol ]
  %spec.select.idx.sroa.sel.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %spec.select.idx.sroa.sel.idx.prol.sroa.sel, %.lr.ph.prol ]
  %.lcssa92.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ay, %.lr.ph.prol ]
  %i.ba = icmp ult i32 %i.v, 3
  br i1 %i.ba, label %.loopexit45.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.148 = phi ptr [ %i.bi, %.lr.ph ], [ %.148.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.03147 = phi i32 [ %i.bj, %.lr.ph ], [ %.03147.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.03446 = phi ptr [ %spec.select.idx.sroa.sel.3, %.lr.ph ], [ %.03446.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bb = load i8, ptr %.03446, align 1           ; 2 uses
  %.not20.not.not = icmp ne i8 %i.bb, 0           ; 2 uses
  %spec.select.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.not20.not.not to i64
  %spec.select.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.03446, i64 %spec.select.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %spec.select43 = select i1 %.not20.not.not, i8 %i.bb, i8 48
  %i.bc = getelementptr inbounds nuw i8, ptr %.148, i64 1
  store i8 %spec.select43, ptr %.148, align 1
  %i.bd = load i8, ptr %spec.select.idx.sroa.sel.idx.sroa.sel, align 1 ; 2 uses
  %.not20.not.1 = icmp ne i8 %i.bd, 0             ; 2 uses
  %spec.select.idx.sroa.sel.idx.1 = zext i1 %.not20.not.1 to i64
  %spec.select.idx.sroa.sel.1 = getelementptr inbounds nuw i8, ptr %spec.select.idx.sroa.sel.idx.sroa.sel, i64 %spec.select.idx.sroa.sel.idx.1 ; 2 uses
  %spec.select43.1 = select i1 %.not20.not.1, i8 %i.bd, i8 48
  %i.be = getelementptr inbounds nuw i8, ptr %.148, i64 2
  store i8 %spec.select43.1, ptr %i.bc, align 1
  %i.bf = load i8, ptr %spec.select.idx.sroa.sel.1, align 1 ; 2 uses
  %.not20.not.2.not = icmp ne i8 %i.bf, 0         ; 2 uses
  %spec.select.idx.sroa.sel.idx.2.sroa.sel.idx = zext i1 %.not20.not.2.not to i64
  %spec.select.idx.sroa.sel.idx.2.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.select.idx.sroa.sel.1, i64 %spec.select.idx.sroa.sel.idx.2.sroa.sel.idx ; 2 uses
  %spec.select43.2 = select i1 %.not20.not.2.not, i8 %i.bf, i8 48
  %i.bg = getelementptr inbounds nuw i8, ptr %.148, i64 3
  store i8 %spec.select43.2, ptr %i.be, align 1
  %i.bh = load i8, ptr %spec.select.idx.sroa.sel.idx.2.sroa.sel, align 1 ; 2 uses
  %.not20.not.3 = icmp ne i8 %i.bh, 0             ; 2 uses
  %spec.select.idx.sroa.sel.idx.3 = zext i1 %.not20.not.3 to i64
  %spec.select.idx.sroa.sel.3 = getelementptr inbounds nuw i8, ptr %spec.select.idx.sroa.sel.idx.2.sroa.sel, i64 %spec.select.idx.sroa.sel.idx.3 ; 2 uses
  %spec.select43.3 = select i1 %.not20.not.3, i8 %i.bh, i8 48
  %i.bi = getelementptr inbounds nuw i8, ptr %.148, i64 4 ; 2 uses
  store i8 %spec.select43.3, ptr %i.bg, align 1
  %i.bj = add nsw i32 %.03147, -4
  %i.bk = icmp sgt i32 %.03147, 4
  br i1 %i.bk, label %.lr.ph, label %.loopexit45.thread.unr-lcssa, !llvm.loop !456

.loopexit45:                                      ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  store i8 48, ptr %.0, align 1
  %i.bm = load i8, ptr %.idx.i.sroa.sel.sroa.sel, align 1
  %.not21 = icmp eq i8 %i.bm, 0
  br i1 %.not21, label %.loopexit, label %bb.o

.loopexit45.thread.unr-lcssa:                     ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw i8, ptr %.148, i64 3
  br label %.loopexit45.thread

.loopexit45.thread:                               ; preds = %.lr.ph.prol.loopexit, %.loopexit45.thread.unr-lcssa
  %.148.lcssa = phi ptr [ %.148.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bn, %.loopexit45.thread.unr-lcssa ]
  %spec.select.idx.sroa.sel.lcssa = phi ptr [ %spec.select.idx.sroa.sel.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select.idx.sroa.sel.3, %.loopexit45.thread.unr-lcssa ] ; 2 uses
  %.lcssa92 = phi ptr [ %.lcssa92.unr, %.lr.ph.prol.loopexit ], [ %i.bi, %.loopexit45.thread.unr-lcssa ] ; 2 uses
  %i.bo = load i8, ptr %spec.select.idx.sroa.sel.lcssa, align 1
  %.not2173 = icmp eq i8 %i.bo, 0
  br i1 %.not2173, label %.loopexit, label %.thread

.thread:                                          ; preds = %.loopexit45.thread
  store i8 46, ptr %.lcssa92, align 1
  %.35180 = getelementptr i8, ptr %.148.lcssa, i64 2
  br label %.preheader

bb.o:                                             ; preds = %.loopexit45
  store i8 46, ptr %i.bl, align 1
  %.351 = getelementptr i8, ptr %.0, i64 2        ; 2 uses
  %.not = icmp eq i32 %i.v, -1
  br i1 %.not, label %.preheader, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %bb.o
  %i.bp = sub i64 4294967294, %i.n
  %i.bq = and i64 %i.bp, 4294967295               ; 2 uses
  %i.br = add nuw nsw i64 %i.bq, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.351, i8 48, i64 %i.br, i1 false)
  %i.bs = getelementptr i8, ptr %i.bl, i64 %i.bq
  %scevgep = getelementptr i8, ptr %i.bs, i64 2
  br label %.preheader

.preheader:                                       ; preds = %.thread, %.lr.ph54.preheader, %bb.o
  %.2367481 = phi ptr [ %.idx.i.sroa.sel.sroa.sel, %bb.o ], [ %.idx.i.sroa.sel.sroa.sel, %.lr.ph54.preheader ], [ %spec.select.idx.sroa.sel.lcssa, %.thread ] ; 2 uses
  %.3.lcssa = phi ptr [ %.351, %bb.o ], [ %scevgep, %.lr.ph54.preheader ], [ %.35180, %.thread ] ; 2 uses
  %i.bt = load i8, ptr %.2367481, align 1         ; 2 uses
end_hunk_2
