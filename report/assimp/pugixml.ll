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
