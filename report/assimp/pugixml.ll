inline.NumInlined: 2217
inline.NumDeleted: 424
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
  %.058.i36.i.i.unr = phi i64 [ %i.mz, %bb.br ], [ %i.oi, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.prol ]
  %.067.i37.i.i.unr = phi ptr [ %i.my, %bb.br ], [ %i.oh, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.prol ]
  %i.oj = icmp eq i64 %4, %.neg
  br i1 %i.oj, label %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1
  %.09.i35.i.i = phi ptr [ %i.oy, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1 ], [ %.09.i35.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.058.i36.i.i = phi i64 [ %i.pa, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1 ], [ %.058.i36.i.i.unr, %.prol.loopexit ]
  %.067.i37.i.i = phi ptr [ %i.oz, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1 ], [ %.067.i37.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ok = load i8, ptr %.067.i37.i.i, align 1     ; 4 uses
  %i.ol = icmp sgt i8 %i.ok, -1
  br i1 %i.ol, label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i, label %bb.bt

bb.bt:                                            ; preds = %.new
  %i.om = lshr i8 %i.ok, 6
  %i.on = or disjoint i8 %i.om, -64
  %i.oo = and i8 %i.ok, -65
  %i.op = getelementptr inbounds nuw i8, ptr %.09.i35.i.i, i64 1
  store i8 %i.oo, ptr %i.op, align 1
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i: ; preds = %bb.bt, %.new
  %.sink.i38.i.i = phi i8 [ %i.on, %bb.bt ], [ %i.ok, %.new ]
  %.sink.i.i39.i.i = phi i64 [ 2, %bb.bt ], [ 1, %.new ]
  store i8 %.sink.i38.i.i, ptr %.09.i35.i.i, align 1
  %i.oq = getelementptr inbounds nuw i8, ptr %.09.i35.i.i, i64 %.sink.i.i39.i.i ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.067.i37.i.i, i64 1
  %i.os = load i8, ptr %i.or, align 1             ; 4 uses
  %i.ot = icmp sgt i8 %i.os, -1
  br i1 %i.ot, label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1, label %bb.bu

bb.bu:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i
  %i.ou = lshr i8 %i.os, 6
  %i.ov = or disjoint i8 %i.ou, -64
  %i.ow = and i8 %i.os, -65
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oq, i64 1
  store i8 %i.ow, ptr %i.ox, align 1
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1: ; preds = %bb.bu, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i
  %.sink.i38.i.i.1 = phi i8 [ %i.ov, %bb.bu ], [ %i.os, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i ]
  %.sink.i.i39.i.i.1 = phi i64 [ 2, %bb.bu ], [ 1, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i ]
  store i8 %.sink.i38.i.i.1, ptr %i.oq, align 1
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oq, i64 %.sink.i.i39.i.i.1 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.067.i37.i.i, i64 2
  %i.pa = add i64 %.058.i36.i.i, -2               ; 2 uses
  %.not.i40.i.i.1 = icmp eq i64 %i.pa, 0
  br i1 %.not.i40.i.i.1, label %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i, label %.new, !llvm.loop !61

_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1, %.prol.loopexit
  %.lcssa1746 = phi ptr [ %.lcssa1746.unr, %.prol.loopexit ], [ %i.oy, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i92.i.1 ]
  store i8 0, ptr %.lcssa1746, align 1
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
  %i.pb = landingpad { ptr, i32 }
          catch ptr null
  %i.pc = extractvalue { ptr, i32 } %i.pb, 0
  tail call void @__clang_call_terminate(ptr %i.pc) #49
  unreachable

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit: ; preds = %bb.bw, %bb.bx
  resume { ptr, i32 } %lpad.thr_comm.split-lp

_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit: ; preds = %bb.d, %bb.h, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i, %bb.bq, %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i
  %.070 = phi ptr [ %i.ny, %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i ], [ %i.no, %bb.bq ], [ %3, %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i ], [ %3, %bb.d ], [ %i.ms, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i ], [ %i.jx, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i ], [ %i.hd, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i ], [ %i.di, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i ], [ %i.j, %bb.h ] ; 12 uses
  %.0 = phi i64 [ %i.nx, %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i ], [ %i.nn, %bb.bq ], [ %4, %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i ], [ %4, %bb.d ], [ %.011.lcssa.i2937.i83.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i ], [ %.011.lcssa.i2937.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i ], [ %.029.lcssa.i3440.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i ], [ %.029.lcssa.i3541.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i ], [ %i.i, %bb.h ] ; 3 uses
  br i1 %8, label %bb.bz, label %.critedge

bb.bz:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit
  %i.pd = icmp ne ptr %.070, %3
  %i.pe = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.pe, %i.pd
  br i1 %or.cond3, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.pf = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  tail call void %i.pf(ptr noundef nonnull %3)
  br label %bb.cb

.critedge:                                        ; preds = %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit
  %.not.old = icmp eq ptr %.070, %3
  br i1 %.not.old, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca, %.critedge
  store ptr %.070, ptr %9, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.critedge
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %.070, ptr %i.pg, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.ph = icmp eq i64 %.0, 0
  br i1 %i.ph, label %.noexc51, label %bb.cd

.noexc51:                                         ; preds = %bb.cc
  %i.pi = lshr i32 %5, 8
  %i.pj = and i32 %i.pi, 16
  %i.pk = xor i32 %i.pj, 16
  tail call void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
  store i32 %i.pk, ptr %0, align 8, !alias.scope !65
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.pl, align 8, !alias.scope !65
  br label %.thread78

bb.cd:                                            ; preds = %bb.cc
  %i.pm = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !noalias !62 ; 2 uses
  %.not.i43 = icmp eq ptr %i.pn, null
  br i1 %.not.i43, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 40
  %i.pp = load ptr, ptr %i.po, align 8, !noalias !62
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.pq = phi ptr [ %i.pp, %bb.ce ], [ null, %bb.cd ] ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 8 uses
  %i.ps = add i64 %.0, -1                         ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.070, i64 %i.ps ; 2 uses
  %i.pu = load i8, ptr %i.pt, align 1, !noalias !62 ; 10 uses
  store i8 0, ptr %i.pt, align 1, !noalias !62
  %i.pv = load i8, ptr %.070, align 1, !noalias !62
  %i.pw = icmp eq i8 %i.pv, -17
  br i1 %i.pw, label %bb.cg, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_skip_bomEPc.exit.i

bb.cg:                                            ; preds = %bb.cf
  %i.px = getelementptr inbounds nuw i8, ptr %.070, i64 1
  %i.py = load i8, ptr %i.px, align 1, !noalias !62
  %i.pz = icmp eq i8 %i.py, -69
  br i1 %i.pz, label %bb.ch, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_skip_bomEPc.exit.i

bb.ch:                                            ; preds = %bb.cg
  %i.qa = getelementptr inbounds nuw i8, ptr %.070, i64 2
  %i.qb = load i8, ptr %i.qa, align 1, !noalias !62
  %i.qc = icmp eq i8 %i.qb, -65
  %spec.select.idx.i.i = select i1 %i.qc, i64 3, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.070, i64 %spec.select.idx.i.i
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_skip_bomEPc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_skip_bomEPc.exit.i: ; preds = %bb.ch, %bb.cg, %bb.cf
  %i.qd = phi ptr [ %.070, %bb.cf ], [ %spec.select.i.i, %bb.ch ], [ %.070, %bb.cg ] ; 2 uses
  %i.qe = lshr i32 %5, 4                          ; 2 uses
  %i.qf = and i32 %i.qe, 15
  %i.qg = zext nneg i32 %i.qf to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc, i64 %i.qg
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.qh = and i32 %i.qe, 3
  %i.qi = lshr i32 %5, 9
  %i.qj = and i32 %i.qi, 4
  %i.qk = or disjoint i32 %i.qh, %i.qj
  %i.ql = zext nneg i32 %i.qk to i64
  %switch.gep1450 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc.83, i64 %i.ql
  %switch.load1451 = load ptr, ptr %switch.gep1450, align 8
  %i.qm = and i32 %5, 1032
  %.not243.i.i = icmp ne i32 %i.qm, 0
  %i.qn = and i32 %5, 2048
  %.not244.i.i = icmp eq i32 %i.qn, 0             ; 2 uses
  %or.cond295.i.i = and i1 %.not243.i.i, %.not244.i.i
  %i.qo = and i32 %5, 1024
  %.not245.i.i = icmp eq i32 %i.qo, 0
  %i.qp = and i32 %5, 4096
  %.not251.i.i = icmp eq i32 %i.qp, 0             ; 2 uses
  %i.qq = and i32 %5, 8192
  %.not255.i.i = icmp eq i32 %i.qq, 0
  %i.qr = and i32 %5, 16384
  %.not259.i.i = icmp eq i32 %i.qr, 0
  %.not280.i.i = icmp eq i8 %i.pu, 62             ; 12 uses
  %i.qs = icmp eq i8 %i.pu, 69
  %i.qt = and i32 %5, 512
  %.not144.i.i.i = icmp eq i32 %i.qt, 0
  %i.qu = and i32 %5, 4
  %.not147.i.i.i = icmp eq i32 %i.qu, 0
  %i.qv = and i32 %5, 32
  %.not153.i.i.i = icmp eq i32 %i.qv, 0
  %i.qw = and i32 %5, 2
  %.not159.i.i.i = icmp eq i32 %i.qw, 0           ; 2 uses
  %i.qx = and i32 %5, 34
  %brmerge.not.i.i.i = icmp eq i32 %i.qx, 34
  %i.qy = and i32 %5, 1
  %.not98121.i.i.i = icmp eq i32 %i.qy, 0
  %i.qz = icmp ne i8 %i.pu, 62
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %.outer.i.i.backedge, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_skip_bomEPc.exit.i
  %.0.ph.i.i = phi ptr [ %2, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_skip_bomEPc.exit.i ], [ %.0.ph.i.i.be, %.outer.i.i.backedge ]
  %.0215.ph.i.i = phi ptr [ %i.qd, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_skip_bomEPc.exit.i ], [ %.1216.i.i, %.outer.i.i.backedge ] ; 4 uses
  %.0197.ph.i.i = phi ptr [ %i.qd, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_skip_bomEPc.exit.i ], [ %.0197.ph.i.i.be, %.outer.i.i.backedge ] ; 2 uses
  %.0.ph.i.fr.i = freeze ptr %.0.ph.i.i           ; 22 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.0.ph.i.fr.i, i64 32 ; 3 uses
  %.pre.i.i = load i8, ptr %.0197.ph.i.i, align 1, !noalias !62
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %.outer.i.i
  %i.rb = phi i8 [ %.pre.i.i, %.outer.i.i ], [ %i.ajc, %.backedge.i.i.backedge ] ; 3 uses
  %.0197.i.i = phi ptr [ %.0197.ph.i.i, %.outer.i.i ], [ %.17.lcssa.i.i, %.backedge.i.i.backedge ] ; 5 uses
  switch i8 %i.rb, label %.preheader384.i.i [
    i8 0, label %.loopexit.i.i
    i8 60, label %thread-pre-split.i.i
  ]

.preheader384.i.i:                                ; preds = %.backedge.i.i
  %i.rc = zext i8 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !noalias !62
  %i.rf = and i8 %i.re, 8
  %.not241680.i.i = icmp eq i8 %i.rf, 0
  br i1 %.not241680.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

thread-pre-split.i.i:                             ; preds = %.backedge.i.i, %.preheader383.i.i
  %.19.pn.i.i = phi ptr [ %.19.i.i, %.preheader383.i.i ], [ %.0197.i.i, %.backedge.i.i ]
  %.1198.ph.i.i = getelementptr inbounds nuw i8, ptr %.19.pn.i.i, i64 1 ; 2 uses
  %.pr367.i.i = load i8, ptr %.1198.ph.i.i, align 1, !noalias !62
  br label %.thread363.i.i

.thread363.i.i:                                   ; preds = %bb.ia, %thread-pre-split.i.i
  %i.rg = phi i8 [ %.pr367.i.i, %thread-pre-split.i.i ], [ %.fr.i.i, %bb.ia ] ; 3 uses
  %.1216.i.i = phi ptr [ %.0215.ph.i.i, %thread-pre-split.i.i ], [ %.3218.i.i, %bb.ia ]
  %.1198.i.i = phi ptr [ %.1198.ph.i.i, %thread-pre-split.i.i ], [ %i.aji, %bb.ia ] ; 35 uses
  %i.rh = zext i8 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !noalias !62
  %.not264.i.i = icmp sgt i8 %i.rj, -1
  br i1 %.not264.i.i, label %bb.dj, label %.noexc52

.noexc52:                                         ; preds = %.thread363.i.i
  %i.rk = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_115append_new_nodeEPNS_15xml_node_structERNS1_13xml_allocatorENS_13xml_node_typeE(ptr noundef %.0.ph.i.fr.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pr, i32 noundef 2) ; 6 uses
  %.not274.i.i = icmp eq ptr %i.rk, null
  br i1 %.not274.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.ci

bb.ci:                                            ; preds = %.noexc52
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  store ptr %.1198.i.i, ptr %i.rl, align 8, !noalias !62
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cm, %bb.ci
  %.2199.i.i = phi ptr [ %.1198.i.i, %bb.ci ], [ %i.sj, %bb.cm ] ; 9 uses
  %i.rm = load i8, ptr %.2199.i.i, align 1, !noalias !62 ; 2 uses
  %i.rn = zext i8 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !noalias !62 ; 2 uses
  %i.rq = and i8 %i.rp, 64
  %.not275.i.i = icmp eq i8 %i.rq, 0
  br i1 %.not275.i.i, label %select.unfold.i.i, label %bb.ck, !prof !8

bb.ck:                                            ; preds = %bb.cj
  %i.rr = getelementptr inbounds nuw i8, ptr %.2199.i.i, i64 1
  %i.rs = load i8, ptr %i.rr, align 1, !noalias !62 ; 2 uses
  %i.rt = zext i8 %i.rs to i64
  %i.ru = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1, !noalias !62 ; 2 uses
  %i.rw = and i8 %i.rv, 64
  %.not276.i.i = icmp eq i8 %i.rw, 0
  br i1 %.not276.i.i, label %select.unfold.i.i.split.loop.exit975, label %bb.cl, !prof !8

bb.cl:                                            ; preds = %bb.ck
  %i.rx = getelementptr inbounds nuw i8, ptr %.2199.i.i, i64 2
  %i.ry = load i8, ptr %i.rx, align 1, !noalias !62 ; 2 uses
  %i.rz = zext i8 %i.ry to i64
  %i.sa = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.rz
  %i.sb = load i8, ptr %i.sa, align 1, !noalias !62 ; 2 uses
  %i.sc = and i8 %i.sb, 64
  %.not277.i.i = icmp eq i8 %i.sc, 0
  br i1 %.not277.i.i, label %select.unfold.i.i.split.loop.exit979, label %bb.cm, !prof !8

bb.cm:                                            ; preds = %bb.cl
  %i.sd = getelementptr inbounds nuw i8, ptr %.2199.i.i, i64 3
  %i.se = load i8, ptr %i.sd, align 1, !noalias !62 ; 2 uses
  %i.sf = zext i8 %i.se to i64
  %i.sg = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !noalias !62
  %.fr369.i.i = freeze i8 %i.sh                   ; 2 uses
  %i.si = and i8 %.fr369.i.i, 64
  %.not278.i.i = icmp eq i8 %i.si, 0
  %i.sj = getelementptr inbounds nuw i8, ptr %.2199.i.i, i64 4
  br i1 %.not278.i.i, label %select.unfold.i.i.split.loop.exit971, label %bb.cj, !prof !8

select.unfold.i.i.split.loop.exit971:             ; preds = %bb.cm
  %i.sk = getelementptr inbounds nuw i8, ptr %.2199.i.i, i64 3
  br label %select.unfold.i.i

select.unfold.i.i.split.loop.exit975:             ; preds = %bb.ck
  %i.sl = getelementptr inbounds nuw i8, ptr %.2199.i.i, i64 1
  br label %select.unfold.i.i

select.unfold.i.i.split.loop.exit979:             ; preds = %bb.cl
  %i.sm = getelementptr inbounds nuw i8, ptr %.2199.i.i, i64 2
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %bb.cj, %select.unfold.i.i.split.loop.exit979, %select.unfold.i.i.split.loop.exit975, %select.unfold.i.i.split.loop.exit971
  %i.sn = phi i8 [ %.fr369.i.i, %select.unfold.i.i.split.loop.exit971 ], [ %i.sb, %select.unfold.i.i.split.loop.exit979 ], [ %i.rv, %select.unfold.i.i.split.loop.exit975 ], [ %i.rp, %bb.cj ]
  %i.so = phi i8 [ %i.se, %select.unfold.i.i.split.loop.exit971 ], [ %i.ry, %select.unfold.i.i.split.loop.exit979 ], [ %i.rs, %select.unfold.i.i.split.loop.exit975 ], [ %i.rm, %bb.cj ] ; 2 uses
  %.3200.ph.i.i = phi ptr [ %i.sk, %select.unfold.i.i.split.loop.exit971 ], [ %i.sm, %select.unfold.i.i.split.loop.exit979 ], [ %i.sl, %select.unfold.i.i.split.loop.exit975 ], [ %.2199.i.i, %bb.cj ] ; 4 uses
  store i8 0, ptr %.3200.ph.i.i, align 1, !noalias !62
  %i.sp = getelementptr inbounds nuw i8, ptr %.3200.ph.i.i, i64 1 ; 6 uses
  %i.sq = icmp eq i8 %i.so, 62
  br i1 %i.sq, label %.outer.i.i.backedge, label %bb.cn

bb.cn:                                            ; preds = %select.unfold.i.i
  %i.sr = and i8 %i.sn, 8
  %.not279.i.i = icmp eq i8 %i.sr, 0
  br i1 %.not279.i.i, label %bb.df, label %bb.co

bb.co:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i, %bb.cn
  %.2.i.i = phi ptr [ %.9329.i.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i ], [ %i.rk, %bb.cn ] ; 5 uses
  %.4201.i.i = phi ptr [ %.2.i.i.i49, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i ], [ %i.sp, %bb.cn ]
  br label %bb.cp

bb.cp:                                            ; preds = %.backedge, %bb.co
  %.6203.i.i = phi ptr [ %.4201.i.i, %bb.co ], [ %.6203.i.i.be, %.backedge ] ; 8 uses
  %i.ss = load i8, ptr %.6203.i.i, align 1, !noalias !62 ; 3 uses
  %i.st = zext i8 %i.ss to i64
  %i.su = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.st
  %i.sv = load i8, ptr %i.su, align 1, !noalias !62 ; 2 uses
  %i.sw = and i8 %i.sv, 8
  %.not281.i.i = icmp eq i8 %i.sw, 0
  %i.sx = getelementptr inbounds nuw i8, ptr %.6203.i.i, i64 1 ; 5 uses
  br i1 %.not281.i.i, label %bb.cq, label %.backedge

.backedge:                                        ; preds = %bb.cp, %bb.cy
  %.6203.i.i.be = phi ptr [ %i.sx, %bb.cp ], [ %i.ut, %bb.cy ]
  br label %bb.cp, !llvm.loop !68

bb.cq:                                            ; preds = %bb.cp
  %.not282.i.i = icmp sgt i8 %i.sv, -1
  br i1 %.not282.i.i, label %bb.cz, label %.noexc53

.noexc53:                                         ; preds = %bb.cq
  %i.sy = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_120append_new_attributeEPNS_15xml_node_structERNS1_13xml_allocatorE(ptr noundef nonnull %.2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pr) ; 4 uses
  %.not283.i.i = icmp eq ptr %i.sy, null
  br i1 %.not283.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.cr

bb.cr:                                            ; preds = %.noexc53
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  store ptr %.6203.i.i, ptr %i.sz, align 8, !noalias !62
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cv, %bb.cr
  %.7204.i.i = phi ptr [ %.6203.i.i, %bb.cr ], [ %i.tx, %bb.cv ] ; 9 uses
  %i.ta = load i8, ptr %.7204.i.i, align 1, !noalias !62 ; 2 uses
  %i.tb = zext i8 %i.ta to i64
  %i.tc = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1, !noalias !62 ; 2 uses
  %i.te = and i8 %i.td, 64
  %.not284.i.i = icmp eq i8 %i.te, 0
  br i1 %.not284.i.i, label %select.unfold333.i.i, label %bb.ct, !prof !8

bb.ct:                                            ; preds = %bb.cs
  %i.tf = getelementptr inbounds nuw i8, ptr %.7204.i.i, i64 1
  %i.tg = load i8, ptr %i.tf, align 1, !noalias !62 ; 2 uses
  %i.th = zext i8 %i.tg to i64
  %i.ti = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.th
  %i.tj = load i8, ptr %i.ti, align 1, !noalias !62 ; 2 uses
  %i.tk = and i8 %i.tj, 64
  %.not285.i.i = icmp eq i8 %i.tk, 0
  br i1 %.not285.i.i, label %select.unfold333.i.i.split.loop.exit1003, label %bb.cu, !prof !8

bb.cu:                                            ; preds = %bb.ct
  %i.tl = getelementptr inbounds nuw i8, ptr %.7204.i.i, i64 2
  %i.tm = load i8, ptr %i.tl, align 1, !noalias !62 ; 2 uses
  %i.tn = zext i8 %i.tm to i64
  %i.to = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.tn
  %i.tp = load i8, ptr %i.to, align 1, !noalias !62 ; 2 uses
  %i.tq = and i8 %i.tp, 64
  %.not286.i.i = icmp eq i8 %i.tq, 0
  br i1 %.not286.i.i, label %select.unfold333.i.i.split.loop.exit1007, label %bb.cv, !prof !8

bb.cv:                                            ; preds = %bb.cu
  %i.tr = getelementptr inbounds nuw i8, ptr %.7204.i.i, i64 3
  %i.ts = load i8, ptr %i.tr, align 1, !noalias !62 ; 2 uses
  %i.tt = zext i8 %i.ts to i64
  %i.tu = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.tt
  %i.tv = load i8, ptr %i.tu, align 1, !noalias !62
  %.fr371.i.i = freeze i8 %i.tv                   ; 2 uses
  %i.tw = and i8 %.fr371.i.i, 64
  %.not287.i.i = icmp eq i8 %i.tw, 0
  %i.tx = getelementptr inbounds nuw i8, ptr %.7204.i.i, i64 4
  br i1 %.not287.i.i, label %select.unfold333.i.i.split.loop.exit999, label %bb.cs, !prof !8

select.unfold333.i.i.split.loop.exit999:          ; preds = %bb.cv
  %i.ty = getelementptr inbounds nuw i8, ptr %.7204.i.i, i64 3
  br label %select.unfold333.i.i

select.unfold333.i.i.split.loop.exit1003:         ; preds = %bb.ct
  %i.tz = getelementptr inbounds nuw i8, ptr %.7204.i.i, i64 1
  br label %select.unfold333.i.i

select.unfold333.i.i.split.loop.exit1007:         ; preds = %bb.cu
  %i.ua = getelementptr inbounds nuw i8, ptr %.7204.i.i, i64 2
  br label %select.unfold333.i.i

select.unfold333.i.i:                             ; preds = %bb.cs, %select.unfold333.i.i.split.loop.exit1007, %select.unfold333.i.i.split.loop.exit1003, %select.unfold333.i.i.split.loop.exit999
  %i.ub = phi i8 [ %.fr371.i.i, %select.unfold333.i.i.split.loop.exit999 ], [ %i.tp, %select.unfold333.i.i.split.loop.exit1007 ], [ %i.tj, %select.unfold333.i.i.split.loop.exit1003 ], [ %i.td, %bb.cs ]
  %i.uc = phi i8 [ %i.ts, %select.unfold333.i.i.split.loop.exit999 ], [ %i.tm, %select.unfold333.i.i.split.loop.exit1007 ], [ %i.tg, %select.unfold333.i.i.split.loop.exit1003 ], [ %i.ta, %bb.cs ]
  %.8205.ph.i.i = phi ptr [ %i.ty, %select.unfold333.i.i.split.loop.exit999 ], [ %i.ua, %select.unfold333.i.i.split.loop.exit1007 ], [ %i.tz, %select.unfold333.i.i.split.loop.exit1003 ], [ %.7204.i.i, %bb.cs ] ; 2 uses
  store i8 0, ptr %.8205.ph.i.i, align 1, !noalias !62
  %i.ud = getelementptr inbounds nuw i8, ptr %.8205.ph.i.i, i64 1 ; 2 uses
  %i.ue = and i8 %i.ub, 8
  %.not288.i.i = icmp eq i8 %i.ue, 0
  br i1 %.not288.i.i, label %.loopexit1081.i.i, label %.preheader372.i.i

.preheader372.i.i:                                ; preds = %select.unfold333.i.i, %.preheader372.i.i
  %.9206.i.i = phi ptr [ %i.uk, %.preheader372.i.i ], [ %i.ud, %select.unfold333.i.i ] ; 2 uses
  %i.uf = load i8, ptr %.9206.i.i, align 1, !noalias !62 ; 2 uses
  %i.ug = zext i8 %i.uf to i64
  %i.uh = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ug
  %i.ui = load i8, ptr %i.uh, align 1, !noalias !62
  %i.uj = and i8 %i.ui, 8
  %.not289.i.i = icmp eq i8 %i.uj, 0
  %i.uk = getelementptr inbounds nuw i8, ptr %.9206.i.i, i64 1 ; 2 uses
  br i1 %.not289.i.i, label %.loopexit1081.i.i, label %.preheader372.i.i, !llvm.loop !69

.loopexit1081.i.i:                                ; preds = %.preheader372.i.i, %select.unfold333.i.i
  %.0207.i.i = phi i8 [ %i.uc, %select.unfold333.i.i ], [ %i.uf, %.preheader372.i.i ]
  %.10.i.i = phi ptr [ %i.ud, %select.unfold333.i.i ], [ %i.uk, %.preheader372.i.i ] ; 2 uses
  %i.ul = icmp eq i8 %.0207.i.i, 61
  br i1 %i.ul, label %.preheader.i.i46, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

.preheader.i.i46:                                 ; preds = %.loopexit1081.i.i, %.preheader.i.i46
  %.11.i.i = phi ptr [ %i.ur, %.preheader.i.i46 ], [ %.10.i.i, %.loopexit1081.i.i ] ; 3 uses
  %i.um = load i8, ptr %.11.i.i, align 1, !noalias !62 ; 3 uses
  %i.un = zext i8 %i.um to i64
  %i.uo = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.un
  %i.up = load i8, ptr %i.uo, align 1, !noalias !62
  %i.uq = and i8 %i.up, 8
  %.not290.i.i = icmp eq i8 %i.uq, 0
  %i.ur = getelementptr inbounds nuw i8, ptr %.11.i.i, i64 1 ; 3 uses
  br i1 %.not290.i.i, label %bb.cw, label %.preheader.i.i46, !llvm.loop !70

bb.cw:                                            ; preds = %.preheader.i.i46
  switch i8 %i.um, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i [
    i8 34, label %.noexc54
    i8 39, label %.noexc54
  ]

.noexc54:                                         ; preds = %bb.cw, %bb.cw
  %i.us = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  store ptr %i.ur, ptr %i.us, align 8, !noalias !62
  %i.ut = tail call noundef ptr %switch.load(ptr noundef nonnull %i.ur, i8 noundef signext %i.um), !inline_history !71 ; 4 uses
  %.not291.i.i = icmp eq ptr %i.ut, null
  br i1 %.not291.i.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.noexc54
  %i.uu = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %i.uv = load ptr, ptr %i.uu, align 8, !noalias !62
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.cy:                                            ; preds = %.noexc54
  %i.uw = load i8, ptr %i.ut, align 1, !noalias !62
  %i.ux = zext i8 %i.uw to i64
  %i.uy = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ux
  %i.uz = load i8, ptr %i.uy, align 1, !noalias !62
  %.not292.i.i = icmp sgt i8 %i.uz, -1
  br i1 %.not292.i.i, label %.backedge, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.cz:                                            ; preds = %bb.cq
  switch i8 %i.ss, label %bb.de [
    i8 47, label %bb.da
    i8 62, label %.outer.i.i.backedge
  ]

bb.da:                                            ; preds = %bb.cz
  %i.va = load i8, ptr %i.sx, align 1, !noalias !62 ; 2 uses
  %i.vb = icmp eq i8 %i.va, 62
  br i1 %i.vb, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.vc = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 24
  %i.vd = load ptr, ptr %i.vc, align 8
  %i.ve = getelementptr inbounds nuw i8, ptr %.6203.i.i, i64 2
  br label %.outer.i.i.backedge

bb.dc:                                            ; preds = %bb.da
  %i.vf = icmp eq i8 %i.va, 0
  %or.cond.i.i = and i1 %.not280.i.i, %i.vf
  br i1 %or.cond.i.i, label %bb.dd, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.dd:                                            ; preds = %bb.dc
  %i.vg = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 24
  %i.vh = load ptr, ptr %i.vg, align 8
  br label %.outer.i.i.backedge

bb.de:                                            ; preds = %bb.cz
  %i.vi = icmp eq i8 %i.ss, 0
  %or.cond7.i.i = and i1 %.not280.i.i, %i.vi
  br i1 %or.cond7.i.i, label %.outer.i.i.backedge, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.df:                                            ; preds = %bb.cn
  switch i8 %i.so, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i [
    i8 47, label %bb.dg
    i8 0, label %bb.di
  ]

bb.dg:                                            ; preds = %bb.df
  %i.vj = load i8, ptr %i.sp, align 1, !noalias !62 ; 2 uses
  %i.vk = icmp eq i8 %i.vj, 62                    ; 2 uses
  %i.vl = icmp eq i8 %i.vj, 0
  %or.cond10.i.i = and i1 %.not280.i.i, %i.vl
  %or.cond730.i.i = or i1 %i.vk, %or.cond10.i.i
  br i1 %or.cond730.i.i, label %bb.dh, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.dh:                                            ; preds = %bb.dg
  %i.vm = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  %i.vn = load ptr, ptr %i.vm, align 8, !noalias !62
  %i.vo = zext i1 %i.vk to i64
  %i.vp = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.vo
  br label %.outer.i.i.backedge

bb.di:                                            ; preds = %bb.df
  br i1 %.not280.i.i, label %.outer.i.i.backedge, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.dj:                                            ; preds = %.thread363.i.i
  switch i8 %i.rg, label %bb.hk [
    i8 47, label %bb.dk
    i8 63, label %bb.du
    i8 33, label %bb.el
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.vq = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 1 ; 4 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.0.ph.i.fr.i, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8            ; 2 uses
  %.not267.i.i = icmp eq ptr %i.vs, null
  br i1 %.not267.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %.preheader373.i.i

.preheader373.i.i:                                ; preds = %bb.dk, %bb.dl
  %.0208.i.i = phi ptr [ %i.vz, %bb.dl ], [ %i.vs, %bb.dk ] ; 4 uses
  %.13.i.i = phi ptr [ %i.vy, %bb.dl ], [ %i.vq, %bb.dk ] ; 4 uses
  %i.vt = load i8, ptr %.13.i.i, align 1, !noalias !62 ; 3 uses
  %i.vu = zext i8 %i.vt to i64
  %i.vv = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.vu
  %i.vw = load i8, ptr %i.vv, align 1, !noalias !62
  %i.vx = and i8 %i.vw, 64
  %.not268.i.i = icmp eq i8 %i.vx, 0
  br i1 %.not268.i.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %.preheader373.i.i
  %i.vy = getelementptr inbounds nuw i8, ptr %.13.i.i, i64 1
  %i.vz = getelementptr inbounds nuw i8, ptr %.0208.i.i, i64 1
  %i.wa = load i8, ptr %.0208.i.i, align 1, !noalias !62
  %.not273.i.i = icmp eq i8 %i.vt, %i.wa
  br i1 %.not273.i.i, label %.preheader373.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, !llvm.loop !72

bb.dm:                                            ; preds = %.preheader373.i.i
  %i.wb = load i8, ptr %.0208.i.i, align 1, !noalias !62 ; 2 uses
  %.not269.i.i = icmp eq i8 %i.wb, 0
  br i1 %.not269.i.i, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.wc = icmp eq i8 %i.vt, 0
  %i.wd = icmp eq i8 %i.wb, %i.pu
  %or.cond294.i.i = and i1 %i.wc, %i.wd
  br i1 %or.cond294.i.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.we = getelementptr inbounds nuw i8, ptr %.0208.i.i, i64 1
  %i.wf = load i8, ptr %i.we, align 1, !noalias !62
  %i.wg = icmp eq i8 %i.wf, 0
  br i1 %i.wg, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.dq:                                            ; preds = %bb.dm
  %i.wh = getelementptr inbounds nuw i8, ptr %.0.ph.i.fr.i, i64 24
  %i.wi = load ptr, ptr %i.wh, align 8            ; 2 uses
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %bb.dq
  %.14.i.i = phi ptr [ %.13.i.i, %bb.dq ], [ %i.wo, %bb.dr ] ; 5 uses
  %i.wj = load i8, ptr %.14.i.i, align 1, !noalias !62 ; 2 uses
  %i.wk = zext i8 %i.wj to i64
  %i.wl = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.wk
  %i.wm = load i8, ptr %i.wl, align 1, !noalias !62
  %i.wn = and i8 %i.wm, 8
  %.not270.i.i = icmp eq i8 %i.wn, 0
  %i.wo = getelementptr inbounds nuw i8, ptr %.14.i.i, i64 1 ; 2 uses
  br i1 %.not270.i.i, label %bb.ds, label %bb.dr, !llvm.loop !73

bb.ds:                                            ; preds = %bb.dr
  switch i8 %i.wj, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i [
    i8 0, label %bb.dt
    i8 62, label %.outer.i.i.backedge
  ]

bb.dt:                                            ; preds = %bb.ds
  br i1 %.not280.i.i, label %.outer.i.i.backedge, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.du:                                            ; preds = %bb.dj
  %.ptr97.i.i.i = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 1 ; 3 uses
  %i.wp = load i8, ptr %.ptr97.i.i.i, align 1, !noalias !62 ; 2 uses
  %i.wq = zext i8 %i.wp to i64
  %i.wr = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.wq
  %i.ws = load i8, ptr %i.wr, align 1, !noalias !62
  %.not.i.i.i48 = icmp sgt i8 %i.ws, -1
  br i1 %.not.i.i.i48, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %.preheader133.i.i.i

.preheader133.i.i.i:                              ; preds = %bb.du, %.preheader133.i.i.i
  %.082.idx.i.i.i = phi i64 [ %.082.add.i.i.i, %.preheader133.i.i.i ], [ 1, %bb.du ] ; 4 uses
  %.082.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 %.082.idx.i.i.i
  %i.wt = load i8, ptr %.082.ptr.i.i.i, align 1, !noalias !62 ; 4 uses
  %i.wu = zext i8 %i.wt to i64
  %i.wv = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.wu
  %i.ww = load i8, ptr %i.wv, align 1, !noalias !62
  %i.wx = and i8 %i.ww, 64
  %.not96.i.i.i = icmp eq i8 %i.wx, 0
  %.082.add.i.i.i = add nuw nsw i64 %.082.idx.i.i.i, 1
  br i1 %.not96.i.i.i, label %bb.dv, label %.preheader133.i.i.i, !llvm.loop !74

bb.dv:                                            ; preds = %.preheader133.i.i.i
  %.082.ptr.i.i.i.le = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 %.082.idx.i.i.i ; 9 uses
  %i.wy = icmp eq i8 %i.wt, 0
  br i1 %i.wy, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.wz = and i8 %i.wp, -33
  %i.xa = icmp eq i8 %i.wz, 88
  br i1 %i.xa, label %bb.dx, label %.thread120.i.i.i

bb.dx:                                            ; preds = %bb.dw
  %i.xb = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 2
  %i.xc = load i8, ptr %i.xb, align 1, !noalias !62
  %i.xd = and i8 %i.xc, -33
  %i.xe = icmp eq i8 %i.xd, 77
  br i1 %i.xe, label %bb.dy, label %.thread120.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.xf = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 3
  %i.xg = load i8, ptr %i.xf, align 1, !noalias !62
  %i.xh = and i8 %i.xg, -33
  %i.xi = icmp eq i8 %i.xh, 76
  %i.xj = icmp eq i64 %.082.idx.i.i.i, 4
  %spec.select.i.i.i = and i1 %i.xj, %i.xi
  %cond.fr.i.i.i = freeze i1 %spec.select.i.i.i   ; 2 uses
  %spec.select130.i.i.i = select i1 %cond.fr.i.i.i, i32 256, i32 1
  %i.xk = and i32 %spec.select130.i.i.i, %5
  %.not98.i.i.i = icmp eq i32 %i.xk, 0
  br i1 %.not98.i.i.i, label %.preheader.i.i.i, label %bb.ea

.thread120.i.i.i:                                 ; preds = %bb.dx, %bb.dw
  br i1 %.not98121.i.i.i, label %.preheader.i.i.i, label %.thread122.i.i.i

.preheader.i.i.i:                                 ; preds = %.thread120.i.i.i, %bb.dy
  br i1 %.not280.i.i, label %.preheader.split.i.i.i, label %.preheader.split.us.i.i.i

.preheader.split.us.i.i.i:                        ; preds = %.preheader.i.i.i, %.critedge117.us.i.i.i
  %i.xl = phi i8 [ %.pre156.i.i.i, %.critedge117.us.i.i.i ], [ %i.wt, %.preheader.i.i.i ]
  %.5.us.i.i.i = phi ptr [ %i.xp, %.critedge117.us.i.i.i ], [ %.082.ptr.i.i.i.le, %.preheader.i.i.i ] ; 5 uses
  switch i8 %i.xl, label %.preheader.split.us..critedge117.us_crit_edge.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 63, label %bb.dz
  ]

.preheader.split.us..critedge117.us_crit_edge.i.i.i: ; preds = %.preheader.split.us.i.i.i
  %.phi.trans.insert157.i.i.i = getelementptr inbounds nuw i8, ptr %.5.us.i.i.i, i64 1
  %.pre156.pre.i.i.i = load i8, ptr %.phi.trans.insert157.i.i.i, align 1, !noalias !62
  br label %.critedge117.us.i.i.i

bb.dz:                                            ; preds = %.preheader.split.us.i.i.i
  %i.xm = getelementptr inbounds nuw i8, ptr %.5.us.i.i.i, i64 1
  %i.xn = load i8, ptr %i.xm, align 1, !noalias !62 ; 2 uses
  %i.xo = icmp eq i8 %i.xn, 62
  br i1 %i.xo, label %.split140.us.i.i.i, label %.critedge117.us.i.i.i

.critedge117.us.i.i.i:                            ; preds = %bb.dz, %.preheader.split.us..critedge117.us_crit_edge.i.i.i
  %.pre156.i.i.i = phi i8 [ %.pre156.pre.i.i.i, %.preheader.split.us..critedge117.us_crit_edge.i.i.i ], [ %i.xn, %bb.dz ]
  %i.xp = getelementptr inbounds nuw i8, ptr %.5.us.i.i.i, i64 1
  br label %.preheader.split.us.i.i.i, !llvm.loop !75

bb.ea:                                            ; preds = %bb.dy
  br i1 %cond.fr.i.i.i, label %bb.eb, label %.thread122.i.i.i

bb.eb:                                            ; preds = %bb.ea
  %i.xq = getelementptr inbounds nuw i8, ptr %.0.ph.i.fr.i, i64 24
  %i.xr = load ptr, ptr %i.xq, align 8
  %.not104.i.i.i = icmp eq ptr %i.xr, null
  br i1 %.not104.i.i.i, label %.noexc55, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

.noexc55:                                         ; preds = %bb.eb
  %i.xs = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_115append_new_nodeEPNS_15xml_node_structERNS1_13xml_allocatorENS_13xml_node_typeE(ptr noundef nonnull %.0.ph.i.fr.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pr, i32 noundef 7) ; 2 uses
  %.not105.i.i.i = icmp eq ptr %i.xs, null
  br i1 %.not105.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.ec

.thread122.i.i.i:                                 ; preds = %bb.ea, %.thread120.i.i.i
  %i.xt = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_115append_new_nodeEPNS_15xml_node_structERNS1_13xml_allocatorENS_13xml_node_typeE(ptr noundef %.0.ph.i.fr.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pr, i32 noundef 6) ; 2 uses
  %.not103.i.i.i = icmp eq ptr %i.xt, null
  br i1 %.not103.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.ec

bb.ec:                                            ; preds = %.thread122.i.i.i, %.noexc55
  %i.xu = phi i1 [ true, %.noexc55 ], [ false, %.thread122.i.i.i ]
  %.086.i.i.i = phi ptr [ %i.xs, %.noexc55 ], [ %i.xt, %.thread122.i.i.i ] ; 5 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.086.i.i.i, i64 8
  store ptr %.ptr97.i.i.i, ptr %i.xv, align 8, !noalias !62
  %i.xw = load i8, ptr %.082.ptr.i.i.i.le, align 1, !noalias !62 ; 2 uses
  store i8 0, ptr %.082.ptr.i.i.i.le, align 1, !noalias !62
  %i.xx = getelementptr inbounds nuw i8, ptr %.082.ptr.i.i.i.le, i64 1 ; 5 uses
  %i.xy = icmp eq i8 %i.xw, 63
  br i1 %i.xy, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.xz = load i8, ptr %i.xx, align 1, !noalias !62 ; 2 uses
  %i.ya = icmp eq i8 %i.xz, 62                    ; 2 uses
  %i.yb = icmp eq i8 %i.xz, 0
  %or.cond.i.i.i50 = and i1 %.not280.i.i, %i.yb
  %or.cond731.i.i = or i1 %i.ya, %or.cond.i.i.i50
  br i1 %or.cond731.i.i, label %bb.ee, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.ee:                                            ; preds = %bb.ed
  %i.yc = zext i1 %i.ya to i64
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.yc
  %i.ye = getelementptr inbounds nuw i8, ptr %.086.i.i.i, i64 24
  %i.yf = load ptr, ptr %i.ye, align 8, !noalias !62
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i

bb.ef:                                            ; preds = %bb.ec
  %i.yg = zext i8 %i.xw to i64
  %i.yh = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.yg
  %i.yi = load i8, ptr %i.yh, align 1, !noalias !62
  %i.yj = and i8 %i.yi, 8
  %.not106.i.i.i = icmp eq i8 %i.yj, 0
  br i1 %.not106.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %.preheader132.i.i.i

.preheader132.i.i.i:                              ; preds = %bb.ef, %.preheader132.i.i.i
  %.183.i.i.i = phi ptr [ %i.yp, %.preheader132.i.i.i ], [ %i.xx, %bb.ef ] ; 6 uses
  %i.yk = load i8, ptr %.183.i.i.i, align 1, !noalias !62 ; 3 uses
  %i.yl = zext i8 %i.yk to i64
  %i.ym = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.yl
  %i.yn = load i8, ptr %i.ym, align 1, !noalias !62
  %i.yo = and i8 %i.yn, 8
  %.not107.i.i.i = icmp eq i8 %i.yo, 0
  %i.yp = getelementptr inbounds nuw i8, ptr %.183.i.i.i, i64 1
  br i1 %.not107.i.i.i, label %.preheader131.i.i.i, label %.preheader132.i.i.i, !llvm.loop !76

.preheader131.i.i.i:                              ; preds = %.preheader132.i.i.i
  br i1 %.not280.i.i, label %.preheader131.split.i.i.i, label %.preheader131.split.us.i.i.i

.preheader131.split.us.i.i.i:                     ; preds = %.preheader131.i.i.i, %.critedge114.us.i.i.i
  %i.yq = phi i8 [ %.pre.i.i.i, %.critedge114.us.i.i.i ], [ %i.yk, %.preheader131.i.i.i ]
  %.284.us.i.i.i = phi ptr [ %i.yu, %.critedge114.us.i.i.i ], [ %.183.i.i.i, %.preheader131.i.i.i ] ; 5 uses
  switch i8 %i.yq, label %.preheader131.split.us..critedge114.us_crit_edge.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 63, label %bb.eg
  ]

.preheader131.split.us..critedge114.us_crit_edge.i.i.i: ; preds = %.preheader131.split.us.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.284.us.i.i.i, i64 1
  %.pre.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !62
  br label %.critedge114.us.i.i.i

bb.eg:                                            ; preds = %.preheader131.split.us.i.i.i
  %i.yr = getelementptr inbounds nuw i8, ptr %.284.us.i.i.i, i64 1
  %i.ys = load i8, ptr %i.yr, align 1, !noalias !62 ; 2 uses
  %i.yt = icmp eq i8 %i.ys, 62
  br i1 %i.yt, label %.split.us.i.i.i, label %.critedge114.us.i.i.i

.critedge114.us.i.i.i:                            ; preds = %bb.eg, %.preheader131.split.us..critedge114.us_crit_edge.i.i.i
  %.pre.i.i.i = phi i8 [ %.pre.pre.i.i.i, %.preheader131.split.us..critedge114.us_crit_edge.i.i.i ], [ %i.ys, %bb.eg ]
  %i.yu = getelementptr inbounds nuw i8, ptr %.284.us.i.i.i, i64 1
  br label %.preheader131.split.us.i.i.i, !llvm.loop !77

.preheader131.split.i.i.i:                        ; preds = %.preheader131.i.i.i, %.critedge114.i.i.i
  %i.yv = phi i8 [ %.pre153.i.i.i, %.critedge114.i.i.i ], [ %i.yk, %.preheader131.i.i.i ]
  %.284.i.i.i = phi ptr [ %i.yy, %.critedge114.i.i.i ], [ %.183.i.i.i, %.preheader131.i.i.i ] ; 6 uses
  switch i8 %i.yv, label %.preheader131.split..critedge114_crit_edge.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 63, label %bb.eh
  ]

.preheader131.split..critedge114_crit_edge.i.i.i: ; preds = %.preheader131.split.i.i.i
  %.phi.trans.insert154.i.i.i = getelementptr inbounds nuw i8, ptr %.284.i.i.i, i64 1
  %.pre153.pre.i.i.i = load i8, ptr %.phi.trans.insert154.i.i.i, align 1, !noalias !62
  br label %.critedge114.i.i.i

bb.eh:                                            ; preds = %.preheader131.split.i.i.i
  %i.yw = getelementptr inbounds nuw i8, ptr %.284.i.i.i, i64 1
  %i.yx = load i8, ptr %i.yw, align 1, !noalias !62 ; 2 uses
  switch i8 %i.yx, label %.critedge114.i.i.i [
    i8 62, label %.split.us.i.i.i
    i8 0, label %.split.us.i.i.i
  ]

.critedge114.i.i.i:                               ; preds = %bb.eh, %.preheader131.split..critedge114_crit_edge.i.i.i
  %.pre153.i.i.i = phi i8 [ %.pre153.pre.i.i.i, %.preheader131.split..critedge114_crit_edge.i.i.i ], [ %i.yx, %bb.eh ]
  %i.yy = getelementptr inbounds nuw i8, ptr %.284.i.i.i, i64 1
  br label %.preheader131.split.i.i.i, !llvm.loop !77

.split.us.i.i.i:                                  ; preds = %bb.eg, %bb.eh, %bb.eh
  %.us-phi137.i.i.i = phi ptr [ %.284.i.i.i, %bb.eh ], [ %.284.i.i.i, %bb.eh ], [ %.284.us.i.i.i, %bb.eg ] ; 3 uses
  br i1 %i.xu, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %.split.us.i.i.i
  %i.yz = getelementptr inbounds nuw i8, ptr %.086.i.i.i, i64 16
  store ptr %.183.i.i.i, ptr %i.yz, align 8, !noalias !62
  %i.za = getelementptr inbounds nuw i8, ptr %.086.i.i.i, i64 24
  %i.zb = load ptr, ptr %i.za, align 8, !noalias !62
  store i8 0, ptr %.us-phi137.i.i.i, align 1, !noalias !62
  %i.zc = getelementptr inbounds nuw i8, ptr %.us-phi137.i.i.i, i64 1 ; 2 uses
  %i.zd = load i8, ptr %i.zc, align 1, !noalias !62
  %i.ze = icmp eq i8 %i.zd, 62
  %i.zf = zext i1 %i.ze to i64
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 %i.zf
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i

bb.ej:                                            ; preds = %.split.us.i.i.i
  store i8 47, ptr %.us-phi137.i.i.i, align 1, !noalias !62
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i

.preheader.split.i.i.i:                           ; preds = %.preheader.i.i.i, %.critedge117.i.i.i
  %i.zh = phi i8 [ %.pre159.i.i.i, %.critedge117.i.i.i ], [ %i.wt, %.preheader.i.i.i ]
  %.5.i.i.i = phi ptr [ %i.zk, %.critedge117.i.i.i ], [ %.082.ptr.i.i.i.le, %.preheader.i.i.i ] ; 5 uses
  switch i8 %i.zh, label %.preheader.split..critedge117_crit_edge.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 63, label %bb.ek
  ]

.preheader.split..critedge117_crit_edge.i.i.i:    ; preds = %.preheader.split.i.i.i
  %.phi.trans.insert160.i.i.i = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 1
  %.pre159.pre.i.i.i = load i8, ptr %.phi.trans.insert160.i.i.i, align 1, !noalias !62
  br label %.critedge117.i.i.i

bb.ek:                                            ; preds = %.preheader.split.i.i.i
  %i.zi = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 1
  %i.zj = load i8, ptr %i.zi, align 1, !noalias !62 ; 3 uses
  switch i8 %i.zj, label %.critedge117.i.i.i [
    i8 62, label %.split140.us.loopexit.i.i.i
    i8 0, label %.split140.us.loopexit.i.i.i
  ]

.critedge117.i.i.i:                               ; preds = %bb.ek, %.preheader.split..critedge117_crit_edge.i.i.i
  %.pre159.i.i.i = phi i8 [ %.pre159.pre.i.i.i, %.preheader.split..critedge117_crit_edge.i.i.i ], [ %i.zj, %bb.ek ]
  %i.zk = getelementptr inbounds nuw i8, ptr %.5.i.i.i, i64 1
  br label %.preheader.split.i.i.i, !llvm.loop !75

.split140.us.loopexit.i.i.i:                      ; preds = %bb.ek, %bb.ek
  %i.zl = icmp eq i8 %i.zj, 62
  %i.zm = select i1 %i.zl, i64 2, i64 1
  br label %.split140.us.i.i.i

.split140.us.i.i.i:                               ; preds = %bb.dz, %.split140.us.loopexit.i.i.i
  %i.zn = phi i64 [ %i.zm, %.split140.us.loopexit.i.i.i ], [ 2, %bb.dz ]
  %.us-phi141.i.i.i = phi ptr [ %.5.i.i.i, %.split140.us.loopexit.i.i.i ], [ %.5.us.i.i.i, %bb.dz ]
  %i.zo = getelementptr inbounds nuw i8, ptr %.us-phi141.i.i.i, i64 %i.zn
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i: ; preds = %.split140.us.i.i.i, %bb.ej, %bb.ei, %bb.ee
  %.9329.i.i = phi ptr [ %i.zb, %bb.ei ], [ %i.yf, %bb.ee ], [ %.086.i.i.i, %bb.ej ], [ %.0.ph.i.fr.i, %.split140.us.i.i.i ] ; 3 uses
  %.2.i.i.i49 = phi ptr [ %i.zg, %bb.ei ], [ %i.yd, %bb.ee ], [ %.183.i.i.i, %bb.ej ], [ %i.zo, %.split140.us.i.i.i ] ; 2 uses
  %i.zp = load i64, ptr %.9329.i.i, align 8
  %i.zq = and i64 %i.zp, 15
  %i.zr = icmp eq i64 %i.zq, 7
  br i1 %i.zr, label %bb.co, label %.outer.i.i.backedge

bb.el:                                            ; preds = %bb.dj
  %i.zs = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 1 ; 10 uses
  %i.zt = load i8, ptr %i.zs, align 1, !noalias !62 ; 2 uses
  switch i8 %i.zt, label %bb.hj [
    i8 45, label %bb.em
    i8 91, label %bb.fh
    i8 68, label %bb.ga
  ]

bb.em:                                            ; preds = %bb.el
  %i.zu = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 2
  %i.zv = load i8, ptr %i.zu, align 1, !noalias !62
  %i.zw = icmp eq i8 %i.zv, 45
  br i1 %i.zw, label %bb.en, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit

bb.en:                                            ; preds = %bb.em
  %i.zx = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 3 ; 5 uses
  br i1 %.not159.i.i.i, label %bb.ep, label %.noexc57

.noexc57:                                         ; preds = %bb.en
  %i.zy = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_115append_new_nodeEPNS_15xml_node_structERNS1_13xml_allocatorENS_13xml_node_typeE(ptr noundef %.0.ph.i.fr.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pr, i32 noundef 5) ; 3 uses
  %.not160.i.i.i = icmp eq ptr %i.zy, null
  br i1 %.not160.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.eo

bb.eo:                                            ; preds = %.noexc57
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  store ptr %i.zx, ptr %i.zz, align 8, !noalias !62
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.0126.i.i.i = phi ptr [ %i.zy, %bb.eo ], [ %.0.ph.i.fr.i, %bb.en ]
  br i1 %brmerge.not.i.i.i, label %.preheader377.i.i.outer, label %.preheader.i311.i.i

.preheader.i311.i.i:                              ; preds = %bb.ep
  br i1 %.not280.i.i, label %.preheader.split.i313.i.i, label %.preheader.split.us.i312.i.i

.preheader.split.us.i312.i.i:                     ; preds = %.preheader.i311.i.i, %.critedge168.us.i.i.i
  %.0124.us.i.i.i = phi ptr [ %i.aah, %.critedge168.us.i.i.i ], [ %i.zx, %.preheader.i311.i.i ] ; 6 uses
  %i.aaa = load i8, ptr %.0124.us.i.i.i, align 1, !noalias !62
  switch i8 %i.aaa, label %.critedge168.us.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 45, label %bb.eq
  ]

bb.eq:                                            ; preds = %.preheader.split.us.i312.i.i
  %i.aab = getelementptr inbounds nuw i8, ptr %.0124.us.i.i.i, i64 1
  %i.aac = load i8, ptr %i.aab, align 1, !noalias !62
  %i.aad = icmp eq i8 %i.aac, 45
  br i1 %i.aad, label %bb.er, label %.critedge168.us.i.i.i

bb.er:                                            ; preds = %bb.eq
  %i.aae = getelementptr inbounds nuw i8, ptr %.0124.us.i.i.i, i64 2
  %i.aaf = load i8, ptr %i.aae, align 1, !noalias !62
  %i.aag = icmp eq i8 %i.aaf, 62
  br i1 %i.aag, label %.split200.us.i.i.i, label %.critedge168.us.i.i.i

.critedge168.us.i.i.i:                            ; preds = %bb.er, %bb.eq, %.preheader.split.us.i312.i.i
  %i.aah = getelementptr inbounds nuw i8, ptr %.0124.us.i.i.i, i64 1
  br label %.preheader.split.us.i312.i.i, !llvm.loop !78

.preheader377.i.i.a:                              ; preds = %.preheader377.i.i.backedge, %.preheader377.i.i.outer
  %.026.i.i.i.i = phi ptr [ %.026.i.i.i.i.ph, %.preheader377.i.i.outer ], [ %.026.i.i.i.i.be, %.preheader377.i.i.backedge ] ; 3 uses
  %i.aai = load i8, ptr %.026.i.i.i.i, align 1, !noalias !62 ; 2 uses
  %i.aaj = zext i8 %i.aai to i64
  %i.aak = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.aaj
  %i.aal = load i8, ptr %i.aak, align 1, !noalias !62
  %i.aam = and i8 %i.aal, 32
  %.not43.i.i.i.i = icmp eq i8 %i.aam, 0
  br i1 %.not43.i.i.i.i, label %.lr.ph.i.i.i.i, label %.split.loop.exit.i.i.i.i, !prof !79

.lr.ph.i.i.i.i:                                   ; preds = %.preheader377.i.i.a, %bb.eu
  %.144.i.i.i.i = phi ptr [ %i.abf, %bb.eu ], [ %.026.i.i.i.i, %.preheader377.i.i.a ] ; 7 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.144.i.i.i.i, i64 1
  %i.aao = load i8, ptr %i.aan, align 1, !noalias !62 ; 2 uses
  %i.aap = zext i8 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.aap
  %i.aar = load i8, ptr %i.aaq, align 1, !noalias !62
  %i.aas = and i8 %i.aar, 32
  %.not11.i.i.i.i = icmp eq i8 %i.aas, 0
  br i1 %.not11.i.i.i.i, label %bb.es, label %.split.loop.exit.i.i.i.i.loopexit.split.loop.exit, !prof !80

bb.es:                                            ; preds = %.lr.ph.i.i.i.i
  %i.aat = getelementptr inbounds nuw i8, ptr %.144.i.i.i.i, i64 2
  %i.aau = load i8, ptr %i.aat, align 1, !noalias !62 ; 2 uses
  %i.aav = zext i8 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.aav
  %i.aax = load i8, ptr %i.aaw, align 1, !noalias !62
  %i.aay = and i8 %i.aax, 32
  %.not12.i.i.i.i = icmp eq i8 %i.aay, 0
  br i1 %.not12.i.i.i.i, label %bb.et, label %.split.loop.exit.i.i.i.i.loopexit.split.loop.exit985, !prof !80

bb.et:                                            ; preds = %bb.es
  %i.aaz = getelementptr inbounds nuw i8, ptr %.144.i.i.i.i, i64 3
  %i.aba = load i8, ptr %i.aaz, align 1, !noalias !62 ; 2 uses
  %i.abb = zext i8 %i.aba to i64
  %i.abc = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.abb
  %i.abd = load i8, ptr %i.abc, align 1, !noalias !62
  %i.abe = and i8 %i.abd, 32
  %.not13.i.i.i.i = icmp eq i8 %i.abe, 0
  br i1 %.not13.i.i.i.i, label %bb.eu, label %.split.loop.exit.i.i.i.i.loopexit.split.loop.exit988, !prof !80

bb.eu:                                            ; preds = %bb.et
  %i.abf = getelementptr inbounds nuw i8, ptr %.144.i.i.i.i, i64 4 ; 3 uses
  %i.abg = load i8, ptr %i.abf, align 1, !noalias !62 ; 2 uses
  %i.abh = zext i8 %i.abg to i64
  %i.abi = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.abh
  %i.abj = load i8, ptr %i.abi, align 1, !noalias !62
  %i.abk = and i8 %i.abj, 32
  %.not.i.i.i.i = icmp eq i8 %i.abk, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.split.loop.exit.i.i.i.i, !prof !81

.split.loop.exit.i.i.i.i.loopexit.split.loop.exit: ; preds = %.lr.ph.i.i.i.i
  %i.abl = getelementptr inbounds nuw i8, ptr %.144.i.i.i.i, i64 1
  br label %.split.loop.exit.i.i.i.i

.split.loop.exit.i.i.i.i.loopexit.split.loop.exit985: ; preds = %bb.es
  %i.abm = getelementptr inbounds nuw i8, ptr %.144.i.i.i.i, i64 2
  br label %.split.loop.exit.i.i.i.i

.split.loop.exit.i.i.i.i.loopexit.split.loop.exit988: ; preds = %bb.et
  %i.abn = getelementptr inbounds nuw i8, ptr %.144.i.i.i.i, i64 3
  br label %.split.loop.exit.i.i.i.i

.split.loop.exit.i.i.i.i:                         ; preds = %bb.eu, %.split.loop.exit.i.i.i.i.loopexit.split.loop.exit, %.split.loop.exit.i.i.i.i.loopexit.split.loop.exit985, %.split.loop.exit.i.i.i.i.loopexit.split.loop.exit988, %.preheader377.i.i.a
  %i.abo = phi i8 [ %i.aai, %.preheader377.i.i.a ], [ %i.aba, %.split.loop.exit.i.i.i.i.loopexit.split.loop.exit988 ], [ %i.aao, %.split.loop.exit.i.i.i.i.loopexit.split.loop.exit ], [ %i.aau, %.split.loop.exit.i.i.i.i.loopexit.split.loop.exit985 ], [ %i.abg, %bb.eu ]
  %.2.ph.i.i.i.i = phi ptr [ %.026.i.i.i.i, %.preheader377.i.i.a ], [ %i.abn, %.split.loop.exit.i.i.i.i.loopexit.split.loop.exit988 ], [ %i.abl, %.split.loop.exit.i.i.i.i.loopexit.split.loop.exit ], [ %i.abm, %.split.loop.exit.i.i.i.i.loopexit.split.loop.exit985 ], [ %i.abf, %bb.eu ] ; 11 uses
  switch i8 %i.abo, label %.thread31.i.i.i.i [
    i8 13, label %bb.ev
    i8 45, label %bb.ey
    i8 0, label %bb.fc
  ]

bb.ev:                                            ; preds = %.split.loop.exit.i.i.i.i
  %i.abp = getelementptr inbounds nuw i8, ptr %.2.ph.i.i.i.i, i64 1 ; 3 uses
  store i8 10, ptr %.2.ph.i.i.i.i, align 1, !noalias !62
  %i.abq = load i8, ptr %i.abp, align 1, !noalias !62
  %i.abr = icmp eq i8 %i.abq, 10
  br i1 %i.abr, label %bb.ew, label %.preheader377.i.i.backedge

bb.ew:                                            ; preds = %bb.ev
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.ph, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit.i.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.abs = sub i64 0, %.sroa.6.0.i.i.i.i.ph
  %i.abt = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.ph, i64 %i.abs
  %i.abu = ptrtoint ptr %i.abp to i64
  %i.abv = ptrtoint ptr %.sroa.0.0.i.i.i.i.ph to i64
  %i.abw = sub i64 %i.abu, %i.abv
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.abt, ptr nonnull align 1 %.sroa.0.0.i.i.i.i.ph, i64 %i.abw, i1 false), !noalias !62
  br label %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit.i.i.i.i

_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit.i.i.i.i: ; preds = %bb.ex, %bb.ew
  %i.abx = getelementptr inbounds nuw i8, ptr %.2.ph.i.i.i.i, i64 2 ; 2 uses
  %i.aby = add i64 %.sroa.6.0.i.i.i.i.ph, 1
  br label %.preheader377.i.i.outer, !llvm.loop !82

.preheader377.i.i.outer:                          ; preds = %bb.ep, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit.i.i.i.i
  %.026.i.i.i.i.ph = phi ptr [ %i.abx, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit.i.i.i.i ], [ %i.zx, %bb.ep ]
  %.sroa.0.0.i.i.i.i.ph = phi ptr [ %i.abx, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit.i.i.i.i ], [ null, %bb.ep ] ; 8 uses
  %.sroa.6.0.i.i.i.i.ph = phi i64 [ %i.aby, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit.i.i.i.i ], [ 0, %bb.ep ] ; 3 uses
  br label %.preheader377.i.i.a

bb.ey:                                            ; preds = %.split.loop.exit.i.i.i.i
  %i.abz = getelementptr inbounds nuw i8, ptr %.2.ph.i.i.i.i, i64 1
  %i.aca = load i8, ptr %i.abz, align 1, !noalias !62
  %i.acb = icmp eq i8 %i.aca, 45
  br i1 %i.acb, label %bb.ez, label %.thread31.i.i.i.i

bb.ez:                                            ; preds = %bb.ey
  %i.acc = getelementptr inbounds nuw i8, ptr %.2.ph.i.i.i.i, i64 2
  %i.acd = load i8, ptr %i.acc, align 1, !noalias !62 ; 2 uses
  %i.ace = icmp eq i8 %i.acd, 62
  %i.acf = icmp eq i8 %i.acd, 0
  %or.cond.i.i.i.i = and i1 %.not280.i.i, %i.acf
  %or.cond45.i.i.i.i = or i1 %i.ace, %or.cond.i.i.i.i
  br i1 %or.cond45.i.i.i.i, label %bb.fa, label %.thread31.i.i.i.i

bb.fa:                                            ; preds = %bb.ez
  %i.acg = getelementptr inbounds nuw i8, ptr %.2.ph.i.i.i.i, i64 2
  %.not.i14.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.ph, null
  br i1 %.not.i14.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_115strconv_commentEPcc.exit.i.i.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ach = sub i64 0, %.sroa.6.0.i.i.i.i.ph       ; 2 uses
  %i.aci = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.ph, i64 %i.ach
  %i.acj = ptrtoint ptr %.2.ph.i.i.i.i to i64
  %i.ack = ptrtoint ptr %.sroa.0.0.i.i.i.i.ph to i64
  %i.acl = sub i64 %i.acj, %i.ack
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aci, ptr nonnull align 1 %.sroa.0.0.i.i.i.i.ph, i64 %i.acl, i1 false), !noalias !62
  %i.acm = getelementptr inbounds i8, ptr %.2.ph.i.i.i.i, i64 %i.ach
  br label %_ZN4pugi4impl12_GLOBAL__N_115strconv_commentEPcc.exit.i.i.i

.thread31.i.i.i.i:                                ; preds = %bb.ez, %bb.ey, %.split.loop.exit.i.i.i.i
  %i.acn = getelementptr inbounds nuw i8, ptr %.2.ph.i.i.i.i, i64 1
  br label %.preheader377.i.i.backedge

.preheader377.i.i.backedge:                       ; preds = %.thread31.i.i.i.i, %bb.ev
  %.026.i.i.i.i.be = phi ptr [ %i.abp, %bb.ev ], [ %i.acn, %.thread31.i.i.i.i ]
  br label %.preheader377.i.i.a, !llvm.loop !82

_ZN4pugi4impl12_GLOBAL__N_115strconv_commentEPcc.exit.i.i.i: ; preds = %bb.fb, %bb.fa
  %.0.i.i.i.i.i = phi ptr [ %i.acm, %bb.fb ], [ %.2.ph.i.i.i.i, %bb.fa ]
  store i8 0, ptr %.0.i.i.i.i.i, align 1, !noalias !62
  %i.aco = load i8, ptr %i.acg, align 1, !noalias !62
  %i.acp = icmp eq i8 %i.aco, 62
  %i.acq = select i1 %i.acp, i64 3, i64 2
  %i.acr = getelementptr inbounds nuw i8, ptr %.2.ph.i.i.i.i, i64 %i.acq
  br label %.outer.i.i.backedge

bb.fc:                                            ; preds = %.split.loop.exit.i.i.i.i
  %i.acs = getelementptr inbounds nuw i8, ptr %.0126.i.i.i, i64 16
  %i.act = load ptr, ptr %i.acs, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

.preheader.split.i313.i.i:                        ; preds = %.preheader.i311.i.i, %.critedge168.i.i.i
  %.0124.i.i.i = phi ptr [ %i.ada, %.critedge168.i.i.i ], [ %i.zx, %.preheader.i311.i.i ] ; 6 uses
  %i.acu = load i8, ptr %.0124.i.i.i, align 1, !noalias !62
  switch i8 %i.acu, label %.critedge168.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 45, label %bb.fd
  ]

bb.fd:                                            ; preds = %.preheader.split.i313.i.i
  %i.acv = getelementptr inbounds nuw i8, ptr %.0124.i.i.i, i64 1
  %i.acw = load i8, ptr %i.acv, align 1, !noalias !62
  %i.acx = icmp eq i8 %i.acw, 45
  br i1 %i.acx, label %bb.fe, label %.critedge168.i.i.i

bb.fe:                                            ; preds = %bb.fd
  %i.acy = getelementptr inbounds nuw i8, ptr %.0124.i.i.i, i64 2
  %i.acz = load i8, ptr %i.acy, align 1, !noalias !62 ; 2 uses
  switch i8 %i.acz, label %.critedge168.i.i.i [
    i8 62, label %.split200.us.loopexit.i.i.i
    i8 0, label %.split200.us.loopexit.i.i.i
  ]

.critedge168.i.i.i:                               ; preds = %bb.fe, %bb.fd, %.preheader.split.i313.i.i
  %i.ada = getelementptr inbounds nuw i8, ptr %.0124.i.i.i, i64 1
  br label %.preheader.split.i313.i.i, !llvm.loop !78

.split200.us.loopexit.i.i.i:                      ; preds = %bb.fe, %bb.fe
  %i.adb = icmp eq i8 %i.acz, 62
  %i.adc = select i1 %i.adb, i64 3, i64 2
  br label %.split200.us.i.i.i

.split200.us.i.i.i:                               ; preds = %bb.er, %.split200.us.loopexit.i.i.i
  %i.add = phi i64 [ %i.adc, %.split200.us.loopexit.i.i.i ], [ 3, %bb.er ]
  %.us-phi201.i.i.i = phi ptr [ %.0124.i.i.i, %.split200.us.loopexit.i.i.i ], [ %.0124.us.i.i.i, %bb.er ] ; 2 uses
  br i1 %.not159.i.i.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %.split200.us.i.i.i
  store i8 0, ptr %.us-phi201.i.i.i, align 1, !noalias !62
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.split200.us.i.i.i
  %i.ade = getelementptr inbounds nuw i8, ptr %.us-phi201.i.i.i, i64 %i.add
  br label %.outer.i.i.backedge

bb.fh:                                            ; preds = %bb.el
  %i.adf = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 2
  %i.adg = load i8, ptr %i.adf, align 1, !noalias !62
  %i.adh = icmp eq i8 %i.adg, 67
  br i1 %i.adh, label %bb.fi, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1030

bb.fi:                                            ; preds = %bb.fh
  %i.adi = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 3
  %i.adj = load i8, ptr %i.adi, align 1, !noalias !62
  %i.adk = icmp eq i8 %i.adj, 68
  br i1 %i.adk, label %bb.fj, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1027

bb.fj:                                            ; preds = %bb.fi
  %i.adl = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 4
  %i.adm = load i8, ptr %i.adl, align 1, !noalias !62
  %i.adn = icmp eq i8 %i.adm, 65
  br i1 %i.adn, label %bb.fk, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1024

bb.fk:                                            ; preds = %bb.fj
  %i.ado = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 5
  %i.adp = load i8, ptr %i.ado, align 1, !noalias !62
  %i.adq = icmp eq i8 %i.adp, 84
  br i1 %i.adq, label %bb.fl, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1021

bb.fl:                                            ; preds = %bb.fk
  %i.adr = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 6
  %i.ads = load i8, ptr %i.adr, align 1, !noalias !62
  %i.adt = icmp eq i8 %i.ads, 65
  br i1 %i.adt, label %bb.fm, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1018

bb.fm:                                            ; preds = %bb.fl
  %i.adu = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 7
  %i.adv = load i8, ptr %i.adu, align 1, !noalias !62
  %i.adw = icmp eq i8 %i.adv, 91
  br i1 %i.adw, label %bb.fn, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1015

bb.fn:                                            ; preds = %bb.fm
  %i.adx = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 8 ; 7 uses
  br i1 %.not147.i.i.i, label %.preheader184.i.i.i, label %.noexc58

.preheader184.i.i.i:                              ; preds = %bb.fn
  br i1 %.not280.i.i, label %.preheader184.split.i.i.i, label %.preheader184.split.us.i.i.i

.preheader184.split.us.i.i.i:                     ; preds = %.preheader184.i.i.i, %.critedge174.us.i.i.i
  %.2.us.i.i.i = phi ptr [ %i.aef, %.critedge174.us.i.i.i ], [ %i.adx, %.preheader184.i.i.i ] ; 6 uses
  %i.ady = load i8, ptr %.2.us.i.i.i, align 1, !noalias !62
  switch i8 %i.ady, label %.critedge174.us.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 93, label %bb.fo
  ]

bb.fo:                                            ; preds = %.preheader184.split.us.i.i.i
  %i.adz = getelementptr inbounds nuw i8, ptr %.2.us.i.i.i, i64 1
  %i.aea = load i8, ptr %i.adz, align 1, !noalias !62
  %i.aeb = icmp eq i8 %i.aea, 93
  br i1 %i.aeb, label %bb.fp, label %.critedge174.us.i.i.i

bb.fp:                                            ; preds = %bb.fo
  %i.aec = getelementptr inbounds nuw i8, ptr %.2.us.i.i.i, i64 2
  %i.aed = load i8, ptr %i.aec, align 1, !noalias !62
  %i.aee = icmp eq i8 %i.aed, 62
  br i1 %i.aee, label %.split196.us.i.i.i, label %.critedge174.us.i.i.i

.critedge174.us.i.i.i:                            ; preds = %bb.fp, %bb.fo, %.preheader184.split.us.i.i.i
  %i.aef = getelementptr inbounds nuw i8, ptr %.2.us.i.i.i, i64 1
  br label %.preheader184.split.us.i.i.i, !llvm.loop !83

.noexc58:                                         ; preds = %bb.fn
  %i.aeg = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_115append_new_nodeEPNS_15xml_node_structERNS1_13xml_allocatorENS_13xml_node_typeE(ptr noundef %.0.ph.i.fr.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pr, i32 noundef 4) ; 3 uses
  %.not152.i.i.i = icmp eq ptr %i.aeg, null
  br i1 %.not152.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.fq

bb.fq:                                            ; preds = %.noexc58
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  store ptr %i.adx, ptr %i.aeh, align 8, !noalias !62
  br i1 %.not153.i.i.i, label %.preheader185.i.i.i, label %bb.ft

.preheader185.i.i.i:                              ; preds = %bb.fq
  br i1 %.not280.i.i, label %.preheader185.split.i.i.i, label %.preheader185.split.us.i.i.i

.preheader185.split.us.i.i.i:                     ; preds = %.preheader185.i.i.i, %.critedge171.us.i.i.i
  %.1125.us.i.i.i = phi ptr [ %i.aep, %.critedge171.us.i.i.i ], [ %i.adx, %.preheader185.i.i.i ] ; 6 uses
  %i.aei = load i8, ptr %.1125.us.i.i.i, align 1, !noalias !62
  switch i8 %i.aei, label %.critedge171.us.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 93, label %bb.fr
  ]

bb.fr:                                            ; preds = %.preheader185.split.us.i.i.i
  %i.aej = getelementptr inbounds nuw i8, ptr %.1125.us.i.i.i, i64 1
  %i.aek = load i8, ptr %i.aej, align 1, !noalias !62
  %i.ael = icmp eq i8 %i.aek, 93
  br i1 %i.ael, label %bb.fs, label %.critedge171.us.i.i.i

bb.fs:                                            ; preds = %bb.fr
  %i.aem = getelementptr inbounds nuw i8, ptr %.1125.us.i.i.i, i64 2
  %i.aen = load i8, ptr %i.aem, align 1, !noalias !62
  %i.aeo = icmp eq i8 %i.aen, 62
  br i1 %i.aeo, label %.split.us.i307.i.i, label %.critedge171.us.i.i.i

.critedge171.us.i.i.i:                            ; preds = %bb.fs, %bb.fr, %.preheader185.split.us.i.i.i
  %i.aep = getelementptr inbounds nuw i8, ptr %.1125.us.i.i.i, i64 1
  br label %.preheader185.split.us.i.i.i, !llvm.loop !84

bb.ft:                                            ; preds = %bb.fq
  %i.aeq = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_113strconv_cdataEPcc(ptr noundef nonnull %i.adx, i8 noundef signext %i.pu), !noalias !62 ; 2 uses
  %.not158.i.i.i = icmp eq ptr %i.aeq, null
  br i1 %.not158.i.i.i, label %bb.fu, label %bb.fz

bb.fu:                                            ; preds = %bb.ft
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16
  %i.aes = load ptr, ptr %i.aer, align 8, !noalias !62
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

.preheader185.split.i.i.i:                        ; preds = %.preheader185.i.i.i, %.critedge171.i.i.i
  %.1125.i.i.i = phi ptr [ %i.aez, %.critedge171.i.i.i ], [ %i.adx, %.preheader185.i.i.i ] ; 7 uses
  %i.aet = load i8, ptr %.1125.i.i.i, align 1, !noalias !62
  switch i8 %i.aet, label %.critedge171.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 93, label %bb.fv
  ]

bb.fv:                                            ; preds = %.preheader185.split.i.i.i
  %i.aeu = getelementptr inbounds nuw i8, ptr %.1125.i.i.i, i64 1
  %i.aev = load i8, ptr %i.aeu, align 1, !noalias !62
  %i.aew = icmp eq i8 %i.aev, 93
  br i1 %i.aew, label %bb.fw, label %.critedge171.i.i.i

bb.fw:                                            ; preds = %bb.fv
  %i.aex = getelementptr inbounds nuw i8, ptr %.1125.i.i.i, i64 2
  %i.aey = load i8, ptr %i.aex, align 1, !noalias !62
  switch i8 %i.aey, label %.critedge171.i.i.i [
    i8 62, label %.split.us.i307.i.i
    i8 0, label %.split.us.i307.i.i
  ]

.critedge171.i.i.i:                               ; preds = %bb.fw, %bb.fv, %.preheader185.split.i.i.i
  %i.aez = getelementptr inbounds nuw i8, ptr %.1125.i.i.i, i64 1
  br label %.preheader185.split.i.i.i, !llvm.loop !84

.split.us.i307.i.i:                               ; preds = %bb.fs, %bb.fw, %bb.fw
  %.us-phi193.i.i.i = phi ptr [ %.1125.i.i.i, %bb.fw ], [ %.1125.i.i.i, %bb.fw ], [ %.1125.us.i.i.i, %bb.fs ] ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %.us-phi193.i.i.i, i64 1
  store i8 0, ptr %.us-phi193.i.i.i, align 1, !noalias !62
  br label %bb.fz

.preheader184.split.i.i.i:                        ; preds = %.preheader184.i.i.i, %.critedge174.i.i.i
  %.2.i310.i.i = phi ptr [ %i.afh, %.critedge174.i.i.i ], [ %i.adx, %.preheader184.i.i.i ] ; 7 uses
  %i.afb = load i8, ptr %.2.i310.i.i, align 1, !noalias !62
  switch i8 %i.afb, label %.critedge174.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 93, label %bb.fx
  ]

bb.fx:                                            ; preds = %.preheader184.split.i.i.i
  %i.afc = getelementptr inbounds nuw i8, ptr %.2.i310.i.i, i64 1
  %i.afd = load i8, ptr %i.afc, align 1, !noalias !62
  %i.afe = icmp eq i8 %i.afd, 93
  br i1 %i.afe, label %bb.fy, label %.critedge174.i.i.i

bb.fy:                                            ; preds = %bb.fx
  %i.aff = getelementptr inbounds nuw i8, ptr %.2.i310.i.i, i64 2
  %i.afg = load i8, ptr %i.aff, align 1, !noalias !62
  switch i8 %i.afg, label %.critedge174.i.i.i [
    i8 62, label %.split196.us.i.i.i
    i8 0, label %.split196.us.i.i.i
  ]

.critedge174.i.i.i:                               ; preds = %bb.fy, %bb.fx, %.preheader184.split.i.i.i
  %i.afh = getelementptr inbounds nuw i8, ptr %.2.i310.i.i, i64 1
  br label %.preheader184.split.i.i.i, !llvm.loop !83

.split196.us.i.i.i:                               ; preds = %bb.fp, %bb.fy, %bb.fy
  %.us-phi197.i.i.i = phi ptr [ %.2.i310.i.i, %bb.fy ], [ %.2.i310.i.i, %bb.fy ], [ %.2.us.i.i.i, %bb.fp ]
  %i.afi = getelementptr inbounds nuw i8, ptr %.us-phi197.i.i.i, i64 1
  br label %bb.fz

bb.fz:                                            ; preds = %.split196.us.i.i.i, %.split.us.i307.i.i, %bb.ft
  %.3.i.i.i = phi ptr [ %i.aeq, %bb.ft ], [ %i.afa, %.split.us.i307.i.i ], [ %i.afi, %.split196.us.i.i.i ] ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 1
  %i.afk = load i8, ptr %i.afj, align 1, !noalias !62
  %i.afl = icmp eq i8 %i.afk, 62
  %i.afm = select i1 %i.afl, i64 2, i64 1
  %i.afn = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 %i.afm
  br label %.outer.i.i.backedge

bb.ga:                                            ; preds = %bb.el
  %i.afo = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 2
  %i.afp = load i8, ptr %i.afo, align 1, !noalias !62
  %i.afq = icmp eq i8 %i.afp, 79
  br i1 %i.afq, label %bb.gb, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.gb:                                            ; preds = %bb.ga
  %i.afr = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 3
  %i.afs = load i8, ptr %i.afr, align 1, !noalias !62
  %i.aft = icmp eq i8 %i.afs, 67
  br i1 %i.aft, label %bb.gc, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.gc:                                            ; preds = %bb.gb
  %i.afu = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 4
  %i.afv = load i8, ptr %i.afu, align 1, !noalias !62
  %i.afw = icmp eq i8 %i.afv, 84
  br i1 %i.afw, label %bb.gd, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.gd:                                            ; preds = %bb.gc
  %i.afx = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 5
  %i.afy = load i8, ptr %i.afx, align 1, !noalias !62
  %i.afz = icmp eq i8 %i.afy, 89
  br i1 %i.afz, label %bb.ge, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.ge:                                            ; preds = %bb.gd
  %i.aga = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 6
  %i.agb = load i8, ptr %i.aga, align 1, !noalias !62
  %i.agc = icmp eq i8 %i.agb, 80
  br i1 %i.agc, label %bb.gf, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.gf:                                            ; preds = %bb.ge
  %i.agd = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 7
  %i.age = load i8, ptr %i.agd, align 1, !noalias !62 ; 2 uses
  %i.agf = icmp eq i8 %i.age, 69
  %i.agg = icmp eq i8 %i.age, 0
  %or.cond.i302.i.i = and i1 %i.qs, %i.agg
  %or.cond732.i.i = or i1 %i.agf, %or.cond.i302.i.i
  br i1 %or.cond732.i.i, label %bb.gg, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.gg:                                            ; preds = %bb.gf
  %i.agh = getelementptr inbounds nuw i8, ptr %.0.ph.i.fr.i, i64 24
  %i.agi = load ptr, ptr %i.agh, align 8
  %.not.i303.i.i = icmp eq ptr %i.agi, null
  br i1 %.not.i303.i.i, label %bb.gh, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.loopexit91.split.loop.exit368.i

bb.gh:                                            ; preds = %bb.gg
  %i.agj = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 8
  br label %bb.gi

bb.gi:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i, %bb.gh
  %i.agk = phi i8 [ 68, %bb.gh ], [ %.pre.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i ] ; 2 uses
  %.031.i.i = phi ptr [ %i.zs, %bb.gh ], [ %.132.i.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i ] ; 15 uses
  %.0.i.i = phi i64 [ 0, %bb.gh ], [ %.1.i.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i ] ; 9 uses
  switch i8 %i.agk, label %bb.hg [
    i8 0, label %bb.hh
    i8 60, label %bb.gj
    i8 62, label %bb.he
    i8 34, label %.preheader
    i8 39, label %.preheader
  ]

.preheader:                                       ; preds = %bb.gi, %bb.gi
  br label %bb.gv

bb.gj:                                            ; preds = %bb.gi
  %i.agl = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 1
  %i.agm = load i8, ptr %i.agl, align 1, !noalias !62
  switch i8 %i.agm, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i [
    i8 33, label %bb.gk
    i8 63, label %bb.gx
  ]

bb.gk:                                            ; preds = %bb.gj
  %i.agn = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 2 ; 2 uses
  %i.ago = load i8, ptr %i.agn, align 1, !noalias !62
  switch i8 %i.ago, label %bb.gu [
    i8 45, label %.thread46.thread.i.i
    i8 91, label %bb.gl
  ]

bb.gl:                                            ; preds = %bb.gk
  %i.agp = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 3
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.gl
  %.017.i.i.i.ph = phi ptr [ %i.agp, %bb.gl ], [ %.017.i.i.i.ph.be, %.outer.backedge ]
  %.0.i.i42.i.ph = phi i64 [ 0, %bb.gl ], [ %.0.i.i42.i.ph.be, %.outer.backedge ] ; 3 uses
  br label %bb.gm

bb.gm:                                            ; preds = %.outer, %.thread.i.i.i
  %.017.i.i.i = phi ptr [ %i.ahi, %.thread.i.i.i ], [ %.017.i.i.i.ph, %.outer ] ; 9 uses
  %i.agq = load i8, ptr %.017.i.i.i, align 1, !noalias !62
  switch i8 %i.agq, label %.thread.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 60, label %bb.gn
    i8 93, label %bb.gq
  ]

bb.gn:                                            ; preds = %bb.gm
  %i.agr = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 1
  %i.ags = load i8, ptr %i.agr, align 1, !noalias !62
  %i.agt = icmp eq i8 %i.ags, 33
  br i1 %i.agt, label %bb.go, label %.thread.i.i.i

bb.go:                                            ; preds = %bb.gn
  %i.agu = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 2
  %i.agv = load i8, ptr %i.agu, align 1, !noalias !62
  %i.agw = icmp eq i8 %i.agv, 91
  br i1 %i.agw, label %bb.gp, label %.thread.i.i.i

bb.gp:                                            ; preds = %bb.go
  %i.agx = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 3
  %i.agy = add i64 %.0.i.i42.i.ph, 1
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.gp, %bb.gt
  %.017.i.i.i.ph.be = phi ptr [ %i.ahf, %bb.gt ], [ %i.agx, %bb.gp ]
  %.0.i.i42.i.ph.be = phi i64 [ %i.ahh, %bb.gt ], [ %i.agy, %bb.gp ]
  br label %.outer, !llvm.loop !85

bb.gq:                                            ; preds = %bb.gm
  %i.agz = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 1
  %i.aha = load i8, ptr %i.agz, align 1, !noalias !62
  %i.ahb = icmp eq i8 %i.aha, 93
  br i1 %i.ahb, label %bb.gr, label %.thread.i.i.i

bb.gr:                                            ; preds = %bb.gq
  %i.ahc = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 2
  %i.ahd = load i8, ptr %i.ahc, align 1, !noalias !62
  %i.ahe = icmp eq i8 %i.ahd, 62
  br i1 %i.ahe, label %bb.gs, label %.thread.i.i.i

bb.gs:                                            ; preds = %bb.gr
  %i.ahf = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 3 ; 2 uses
  %i.ahg = icmp eq i64 %.0.i.i42.i.ph, 0
  br i1 %i.ahg, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ahh = add i64 %.0.i.i42.i.ph, -1
  br label %.outer.backedge

.thread.i.i.i:                                    ; preds = %bb.gr, %bb.gq, %bb.go, %bb.gn, %bb.gm
  %i.ahi = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 1
  br label %bb.gm, !llvm.loop !85

bb.gu:                                            ; preds = %bb.gk
  %i.ahj = add i64 %.0.i.i, 1
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i

bb.gv:                                            ; preds = %.preheader, %bb.gv
  %.pn.i.i.i = phi ptr [ %.042.i.i.i, %bb.gv ], [ %.031.i.i, %.preheader ] ; 2 uses
  %.042.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1 ; 3 uses
  %i.ahk = load i8, ptr %.042.i.i.i, align 1, !noalias !62 ; 2 uses
  %.not51.i.i.i = icmp eq i8 %i.ahk, 0            ; 2 uses
  %.not52.i.i.i = icmp eq i8 %i.ahk, %i.agk
  %or.cond.i.i38.i = or i1 %.not51.i.i.i, %.not52.i.i.i
  br i1 %or.cond.i.i38.i, label %.critedge.i.i39.i, label %bb.gv, !llvm.loop !86

.critedge.i.i39.i:                                ; preds = %bb.gv
  br i1 %.not51.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.gw

bb.gw:                                            ; preds = %.critedge.i.i39.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 2
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i

bb.gx:                                            ; preds = %bb.gj
  %i.ahm = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 2
  br label %bb.gy

bb.gy:                                            ; preds = %.critedge55.i.i.i, %bb.gx
  %.2.i.i40.i = phi ptr [ %i.ahm, %bb.gx ], [ %i.ahq, %.critedge55.i.i.i ] ; 5 uses
  %i.ahn = load i8, ptr %.2.i.i40.i, align 1, !noalias !62
  switch i8 %i.ahn, label %.critedge55.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 63, label %bb.gz
  ]

bb.gz:                                            ; preds = %bb.gy
  %i.aho = getelementptr inbounds nuw i8, ptr %.2.i.i40.i, i64 1
  %i.ahp = load i8, ptr %i.aho, align 1, !noalias !62
  %.not60.i.i.i = icmp eq i8 %i.ahp, 62
  br i1 %.not60.i.i.i, label %.critedge2.i.i41.i, label %.critedge55.i.i.i

.critedge55.i.i.i:                                ; preds = %bb.gz, %bb.gy
  %i.ahq = getelementptr inbounds nuw i8, ptr %.2.i.i40.i, i64 1
  br label %bb.gy, !llvm.loop !87

.critedge2.i.i41.i:                               ; preds = %bb.gz
  %i.ahr = getelementptr inbounds nuw i8, ptr %.2.i.i40.i, i64 2
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i

.thread46.thread.i.i:                             ; preds = %bb.gk
  %i.ahs = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 3
  %i.aht = load i8, ptr %i.ahs, align 1, !noalias !62
  %i.ahu = icmp eq i8 %i.aht, 45
  br i1 %i.ahu, label %bb.ha, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.ha:                                            ; preds = %.thread46.thread.i.i
  %i.ahv = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 4
  br label %bb.hb

bb.hb:                                            ; preds = %.critedge57.i.i.i, %bb.ha
  %.3.i.i43.i = phi ptr [ %i.ahv, %bb.ha ], [ %i.aic, %.critedge57.i.i.i ] ; 6 uses
  %i.ahw = load i8, ptr %.3.i.i43.i, align 1, !noalias !62
  switch i8 %i.ahw, label %.critedge57.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 45, label %bb.hc
  ]

bb.hc:                                            ; preds = %bb.hb
  %i.ahx = getelementptr inbounds nuw i8, ptr %.3.i.i43.i, i64 1
  %i.ahy = load i8, ptr %i.ahx, align 1, !noalias !62
  %i.ahz = icmp eq i8 %i.ahy, 45
  br i1 %i.ahz, label %bb.hd, label %.critedge57.i.i.i

bb.hd:                                            ; preds = %bb.hc
  %i.aia = getelementptr inbounds nuw i8, ptr %.3.i.i43.i, i64 2
  %i.aib = load i8, ptr %i.aia, align 1, !noalias !62
  %.not.i.i44.i = icmp eq i8 %i.aib, 62
  br i1 %.not.i.i44.i, label %.critedge4.i.i45.i, label %.critedge57.i.i.i

.critedge57.i.i.i:                                ; preds = %bb.hd, %bb.hc, %bb.hb
  %i.aic = getelementptr inbounds nuw i8, ptr %.3.i.i43.i, i64 1
  br label %bb.hb, !llvm.loop !88

.critedge4.i.i45.i:                               ; preds = %bb.hd
  %i.aid = getelementptr inbounds nuw i8, ptr %.3.i.i43.i, i64 3
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i

bb.he:                                            ; preds = %bb.gi
  %i.aie = icmp eq i64 %.0.i.i, 0
  br i1 %i.aie, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aif = add i64 %.0.i.i, -1
  %i.aig = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 1
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i

bb.hg:                                            ; preds = %bb.gi
  %i.aih = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 1
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i: ; preds = %bb.gs, %bb.hg, %bb.hf, %.critedge4.i.i45.i, %.critedge2.i.i41.i, %bb.gw, %bb.gu
  %.132.i.i = phi ptr [ %i.aih, %bb.hg ], [ %i.agn, %bb.gu ], [ %i.ahr, %.critedge2.i.i41.i ], [ %i.aig, %bb.hf ], [ %i.ahl, %bb.gw ], [ %i.aid, %.critedge4.i.i45.i ], [ %i.ahf, %bb.gs ] ; 2 uses
  %.1.i.i = phi i64 [ %.0.i.i, %bb.hg ], [ %i.ahj, %bb.gu ], [ %.0.i.i, %.critedge2.i.i41.i ], [ %i.aif, %bb.hf ], [ %.0.i.i, %bb.gw ], [ %.0.i.i, %.critedge4.i.i45.i ], [ %.0.i.i, %bb.gs ]
  %.pre.i = load i8, ptr %.132.i.i, align 1, !noalias !62
  br label %bb.gi, !llvm.loop !89

bb.hh:                                            ; preds = %bb.gi
  %i.aii = icmp ne i64 %.0.i.i, 0
  %or.cond.i46.i = or i1 %i.qz, %i.aii
  br i1 %or.cond.i46.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread58.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.i: ; preds = %bb.he
  %i.aij = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 1
  store i8 0, ptr %.031.i.i, align 1, !noalias !62
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread58.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread58.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.i, %bb.hh
  %.5.i306.i.i = phi ptr [ %i.aij, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.i ], [ %.031.i.i, %bb.hh ] ; 3 uses
  br i1 %.not144.i.i.i, label %.outer.i.i.backedge, label %.preheader186.i.i.i

.preheader186.i.i.i:                              ; preds = %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread58.i, %.preheader186.i.i.i
  %.0122.i.i.i = phi ptr [ %i.aip, %.preheader186.i.i.i ], [ %i.agj, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread58.i ] ; 3 uses
  %i.aik = load i8, ptr %.0122.i.i.i, align 1, !noalias !62
  %i.ail = zext i8 %i.aik to i64
  %i.aim = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ail
  %i.ain = load i8, ptr %i.aim, align 1, !noalias !62
  %i.aio = and i8 %i.ain, 8
  %.not145.i.i.i = icmp eq i8 %i.aio, 0
  %i.aip = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 1
  br i1 %.not145.i.i.i, label %.noexc59, label %.preheader186.i.i.i, !llvm.loop !90

.noexc59:                                         ; preds = %.preheader186.i.i.i
  %i.aiq = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_115append_new_nodeEPNS_15xml_node_structERNS1_13xml_allocatorENS_13xml_node_typeE(ptr noundef nonnull %.0.ph.i.fr.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pr, i32 noundef 8) ; 2 uses
  %.not146.i.i.i = icmp eq ptr %i.aiq, null
  br i1 %.not146.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.hi

bb.hi:                                            ; preds = %.noexc59
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 16
  store ptr %.0122.i.i.i, ptr %i.air, align 8, !noalias !62
  br label %.outer.i.i.backedge

.outer.i.i.backedge:                              ; preds = %bb.hi, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread58.i, %bb.fz, %bb.fg, %_ZN4pugi4impl12_GLOBAL__N_115strconv_commentEPcc.exit.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i, %bb.dt, %bb.ds, %bb.di, %bb.dh, %bb.de, %bb.dd, %bb.db, %bb.cz, %select.unfold.i.i
  %.0.ph.i.i.be = phi ptr [ %i.rk, %bb.di ], [ %.2.i.i, %bb.de ], [ %i.vd, %bb.db ], [ %i.vh, %bb.dd ], [ %.0.ph.i.fr.i, %bb.hi ], [ %.9329.i.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i ], [ %.2.i.i, %bb.cz ], [ %i.rk, %select.unfold.i.i ], [ %i.vn, %bb.dh ], [ %i.wi, %bb.dt ], [ %.0.ph.i.fr.i, %_ZN4pugi4impl12_GLOBAL__N_115strconv_commentEPcc.exit.i.i.i ], [ %.0.ph.i.fr.i, %bb.fg ], [ %.0.ph.i.fr.i, %bb.fz ], [ %.0.ph.i.fr.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread58.i ], [ %i.wi, %bb.ds ]
  %.0197.ph.i.i.be = phi ptr [ %.3200.ph.i.i, %bb.di ], [ %.6203.i.i, %bb.de ], [ %i.ve, %bb.db ], [ %i.sx, %bb.dd ], [ %.5.i306.i.i, %bb.hi ], [ %.2.i.i.i49, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i ], [ %i.sx, %bb.cz ], [ %i.sp, %select.unfold.i.i ], [ %i.vp, %bb.dh ], [ %.14.i.i, %bb.dt ], [ %i.acr, %_ZN4pugi4impl12_GLOBAL__N_115strconv_commentEPcc.exit.i.i.i ], [ %i.ade, %bb.fg ], [ %i.afn, %bb.fz ], [ %.5.i306.i.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread58.i ], [ %i.wo, %bb.ds ]
  br label %.outer.i.i, !llvm.loop !91

bb.hj:                                            ; preds = %bb.el
  %i.ais = icmp eq i8 %i.zt, 0                    ; 2 uses
  %i.ait = icmp eq i8 %i.pu, 45
  %or.cond9.i.i.i = and i1 %i.ait, %i.ais
  br i1 %or.cond9.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %.thread182.i.i.i

.thread182.i.i.i:                                 ; preds = %bb.hj
  %i.aiu = icmp eq i8 %i.pu, 91
  %or.cond12.i.i.i = and i1 %i.aiu, %i.ais
  %spec.select66.i = select i1 %or.cond12.i.i.i, i32 8, i32 5
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.hk:                                            ; preds = %bb.dj
  %i.aiv = icmp eq i8 %i.rg, 0
  %i.aiw = icmp eq i8 %i.pu, 63
  %or.cond13.i.i = and i1 %i.aiw, %i.aiv
  %spec.select67.i = select i1 %or.cond13.i.i, i32 6, i32 5
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader384.i.i, %.lr.ph.i.i
  %.17681.i.i = phi ptr [ %i.aix, %.lr.ph.i.i ], [ %.0197.i.i, %.preheader384.i.i ]
  %i.aix = getelementptr inbounds nuw i8, ptr %.17681.i.i, i64 1 ; 3 uses
  %.pr.i.i = load i8, ptr %i.aix, align 1, !noalias !62 ; 2 uses
  %i.aiy = zext i8 %.pr.i.i to i64
  %i.aiz = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.aiy
  %i.aja = load i8, ptr %i.aiz, align 1, !noalias !62
  %i.ajb = and i8 %i.aja, 8
  %.not241.i.i = icmp eq i8 %i.ajb, 0
  br i1 %.not241.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !92

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader384.i.i
  %i.ajc = phi i8 [ %i.rb, %.preheader384.i.i ], [ %.pr.i.i, %.lr.ph.i.i ] ; 3 uses
  %.17.lcssa.i.i = phi ptr [ %.0197.i.i, %.preheader384.i.i ], [ %i.aix, %.lr.ph.i.i ] ; 3 uses
  switch i8 %i.ajc, label %bb.hq [
    i8 60, label %bb.hl
    i8 0, label %bb.hl
  ]

bb.hl:                                            ; preds = %._crit_edge.i.i, %._crit_edge.i.i
  br i1 %or.cond295.i.i, label %bb.hm, label %.backedge.i.i.backedge

bb.hm:                                            ; preds = %bb.hl
  br i1 %.not245.i.i, label %bb.hq, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %.not246.i.i = icmp eq i8 %i.ajc, 60
  br i1 %.not246.i.i, label %bb.ho, label %.backedge.i.i.backedge

bb.ho:                                            ; preds = %bb.hn
  %i.ajd = getelementptr inbounds nuw i8, ptr %.17.lcssa.i.i, i64 1
  %i.aje = load i8, ptr %i.ajd, align 1, !noalias !62
  %.not247.i.i = icmp eq i8 %i.aje, 47
  br i1 %.not247.i.i, label %bb.hp, label %.backedge.i.i.backedge

bb.hp:                                            ; preds = %bb.ho
  %i.ajf = load ptr, ptr %i.ra, align 8
  %.not248.i.i = icmp eq ptr %i.ajf, null
  br i1 %.not248.i.i, label %bb.hq, label %.backedge.i.i.backedge

.backedge.i.i.backedge:                           ; preds = %bb.hp, %bb.ho, %bb.hn, %bb.hl
  br label %.backedge.i.i, !llvm.loop !91

bb.hq:                                            ; preds = %bb.hp, %bb.hm, %._crit_edge.i.i
  %spec.select.i35.i = select i1 %.not244.i.i, ptr %.0197.i.i, ptr %.17.lcssa.i.i ; 7 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %.0.ph.i.fr.i, i64 24 ; 2 uses
  %i.ajh = load ptr, ptr %i.ajg, align 8
  %.not250.i.i = icmp eq ptr %i.ajh, null
  %or.cond296.i.i = and i1 %.not251.i.i, %.not250.i.i
  br i1 %or.cond296.i.i, label %.preheader383.i.i, label %.noexc60

.noexc60:                                         ; preds = %bb.hq
  %i.aji = tail call noundef ptr %switch.load1451(ptr noundef nonnull %spec.select.i35.i), !inline_history !71 ; 4 uses
  br i1 %.not255.i.i, label %bb.hv, label %bb.hr

bb.hr:                                            ; preds = %.noexc60
  %i.ajj = load ptr, ptr %i.ajg, align 8
  %.not256.i.i = icmp eq ptr %i.ajj, null
  br i1 %.not256.i.i, label %bb.hv, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ajk = load ptr, ptr %i.ra, align 8
  %.not257.i.i = icmp eq ptr %i.ajk, null
  br i1 %.not257.i.i, label %bb.ht, label %bb.hv

bb.ht:                                            ; preds = %bb.hs
  %i.ajl = getelementptr inbounds nuw i8, ptr %.0.ph.i.fr.i, i64 16 ; 2 uses
  %i.ajm = load ptr, ptr %i.ajl, align 8
  %.not258.i.i = icmp eq ptr %i.ajm, null
  br i1 %.not258.i.i, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  store ptr %spec.select.i35.i, ptr %i.ajl, align 8
  br label %bb.ia

bb.hv:                                            ; preds = %bb.ht, %bb.hs, %bb.hr, %.noexc60
  br i1 %.not259.i.i, label %.noexc61, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.ajn = load ptr, ptr %i.ra, align 8           ; 2 uses
  %.not260.i.i = icmp eq ptr %i.ajn, null
  br i1 %.not260.i.i, label %.noexc61, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 40
  %i.ajp = load ptr, ptr %i.ajo, align 8, !noalias !62
  %i.ajq = load i64, ptr %i.ajp, align 8, !noalias !62
  %i.ajr = and i64 %i.ajq, 15
  %i.ajs = icmp eq i64 %i.ajr, 3
  br i1 %i.ajs, label %bb.hy, label %.noexc61

bb.hy:                                            ; preds = %bb.hx
  %i.ajt = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0215.ph.i.i) #51, !noalias !62
  %i.aju = getelementptr inbounds nuw i8, ptr %.0215.ph.i.i, i64 %i.ajt ; 2 uses
  %i.ajv = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.select.i35.i) #51, !noalias !62 ; 2 uses
  %i.ajw = add i64 %i.ajv, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aju, ptr nonnull align 1 %spec.select.i35.i, i64 %i.ajw, i1 false), !noalias !62
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aju, i64 %i.ajv
  br label %bb.ia

.noexc61:                                         ; preds = %bb.hx, %bb.hw, %bb.hv
  %i.ajy = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_115append_new_nodeEPNS_15xml_node_structERNS1_13xml_allocatorENS_13xml_node_typeE(ptr noundef nonnull %.0.ph.i.fr.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pr, i32 noundef 3) ; 2 uses
  %.not261.not.i.i = icmp eq ptr %i.ajy, null
  br i1 %.not261.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.hz

bb.hz:                                            ; preds = %.noexc61
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 16
  store ptr %spec.select.i35.i, ptr %i.ajz, align 8, !noalias !62
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy, %bb.hu
  %.3218.i.i = phi ptr [ %i.ajx, %bb.hy ], [ %spec.select.i35.i, %bb.hz ], [ %.0215.ph.i.i, %bb.hu ]
  %i.aka = load i8, ptr %i.aji, align 1, !noalias !62
  %.fr.i.i = freeze i8 %i.aka                     ; 2 uses
  %.not262.i.i = icmp eq i8 %.fr.i.i, 0
  br i1 %.not262.i.i, label %.loopexit.i.i, label %.thread363.i.i

.preheader383.i.i:                                ; preds = %bb.hq, %bb.ib
  %.19.i.i = phi ptr [ %i.akc, %bb.ib ], [ %spec.select.i35.i, %bb.hq ] ; 4 uses
  %i.akb = load i8, ptr %.19.i.i, align 1, !noalias !62
  switch i8 %i.akb, label %bb.ib [
    i8 0, label %.loopexit.i.i
    i8 60, label %thread-pre-split.i.i
  ]

bb.ib:                                            ; preds = %.preheader383.i.i
  %i.akc = getelementptr inbounds nuw i8, ptr %.19.i.i, i64 1
  br label %.preheader383.i.i, !llvm.loop !93

.loopexit.i.i:                                    ; preds = %bb.ia, %.backedge.i.i, %.preheader383.i.i
  %.21.i.i = phi ptr [ %.19.i.i, %.preheader383.i.i ], [ %.0197.i.i, %.backedge.i.i ], [ %i.aji, %bb.ia ]
  %.not263.i.i = icmp eq ptr %.0.ph.i.fr.i, %2    ; 2 uses
  %spec.select = select i1 %.not263.i.i, ptr null, ptr %.21.i.i
  %spec.select1121 = select i1 %.not263.i.i, i32 0, i32 14
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.loopexit91.split.loop.exit368.i: ; preds = %bb.gg
  %i.akd = getelementptr inbounds i8, ptr %.1198.i.i, i64 -1
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit: ; preds = %bb.em
  %i.ake = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 2
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1015: ; preds = %bb.fm
  %i.akf = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 7
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1018: ; preds = %bb.fl
  %i.akg = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 6
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1021: ; preds = %bb.fk
  %i.akh = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 5
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1024: ; preds = %bb.fj
  %i.aki = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 4
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1027: ; preds = %bb.fi
  %i.akj = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 3
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1030: ; preds = %bb.fh
  %i.akk = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 2
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i: ; preds = %.noexc61, %.noexc59, %bb.hh, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %.noexc58, %.noexc57, %bb.ef, %bb.ed, %.thread122.i.i.i, %.noexc55, %bb.eb, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dk, %bb.di, %bb.dg, %bb.df, %bb.de, %bb.dc, %.noexc52, %.thread46.thread.i.i, %.critedge.i.i39.i, %bb.gj, %.preheader185.split.us.i.i.i, %.preheader185.split.i.i.i, %.preheader184.split.us.i.i.i, %.preheader184.split.i.i.i, %.preheader.split.us.i312.i.i, %.preheader.split.i313.i.i, %.preheader131.split.us.i.i.i, %.preheader131.split.i.i.i, %.preheader.split.us.i.i.i, %.preheader.split.i.i.i, %bb.cy, %bb.cw, %.loopexit1081.i.i, %.noexc53, %bb.dl, %bb.gy, %bb.gm, %bb.hb, %.loopexit.i.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1015, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1018, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1021, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1024, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1027, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1030, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.loopexit91.split.loop.exit368.i, %bb.hk, %.thread182.i.i.i, %bb.hj, %bb.fu, %bb.fc, %bb.dp, %bb.do, %bb.cx
  %.sroa.11.2.i = phi ptr [ %.0124.us.i.i.i, %.preheader.split.us.i312.i.i ], [ %i.vq, %bb.dl ], [ %.1198.i.i, %bb.hk ], [ %.5.us.i.i.i, %.preheader.split.us.i.i.i ], [ %i.zs, %bb.hj ], [ %i.zs, %.thread182.i.i.i ], [ %.13.i.i, %bb.do ], [ %i.akj, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1027 ], [ %i.vq, %bb.dp ], [ %i.act, %bb.fc ], [ %.1125.us.i.i.i, %.preheader185.split.us.i.i.i ], [ %.017.i.i.i, %bb.gm ], [ %.5.i.i.i, %.preheader.split.i.i.i ], [ %.0124.i.i.i, %.preheader.split.i313.i.i ], [ %.1125.i.i.i, %.preheader185.split.i.i.i ], [ %i.aki, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1024 ], [ %i.akf, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1015 ], [ %i.uv, %bb.cx ], [ %.042.i.i.i, %.critedge.i.i39.i ], [ %i.akh, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1021 ], [ %i.aes, %bb.fu ], [ %.284.i.i.i, %.preheader131.split.i.i.i ], [ %.10.i.i, %.loopexit1081.i.i ], [ %.2.i.i40.i, %bb.gy ], [ %spec.select, %.loopexit.i.i ], [ %i.akd, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.loopexit91.split.loop.exit368.i ], [ %.284.us.i.i.i, %.preheader131.split.us.i.i.i ], [ %i.akg, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1018 ], [ %i.akk, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1030 ], [ %.3.i.i43.i, %bb.hb ], [ %i.ake, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit ], [ %.2.i310.i.i, %.preheader184.split.i.i.i ], [ %.2.us.i.i.i, %.preheader184.split.us.i.i.i ], [ %i.ut, %bb.cy ], [ %.6203.i.i, %.noexc53 ], [ %.11.i.i, %bb.cw ], [ %.031.i.i, %.thread46.thread.i.i ], [ %.031.i.i, %bb.gj ], [ %i.sp, %bb.df ], [ %.ptr97.i.i.i, %bb.du ], [ %i.xx, %bb.ef ], [ %i.zs, %bb.gf ], [ %i.aji, %.noexc61 ], [ %.082.ptr.i.i.i.le, %bb.eb ], [ %.082.ptr.i.i.i.le, %.thread122.i.i.i ], [ %i.xx, %bb.ed ], [ %.082.ptr.i.i.i.le, %bb.dv ], [ %.082.ptr.i.i.i.le, %.noexc55 ], [ %i.zx, %.noexc57 ], [ %i.adx, %.noexc58 ], [ %.5.i306.i.i, %.noexc59 ], [ %.3200.ph.i.i, %bb.di ], [ %.6203.i.i, %bb.de ], [ %i.sp, %bb.dg ], [ %i.vq, %bb.dk ], [ %i.zs, %bb.gc ], [ %i.zs, %bb.gb ], [ %.14.i.i, %bb.ds ], [ %i.sx, %bb.dc ], [ %.14.i.i, %bb.dt ], [ %i.zs, %bb.ga ], [ %i.zs, %bb.gd ], [ %.1198.i.i, %.noexc52 ], [ %.031.i.i, %bb.hh ], [ %i.zs, %bb.ge ] ; 2 uses
  %.sroa.57.2.i = phi i32 [ 7, %.preheader.split.us.i312.i.i ], [ 14, %bb.dl ], [ %spec.select67.i, %bb.hk ], [ 6, %.preheader.split.us.i.i.i ], [ 7, %bb.hj ], [ %spec.select66.i, %.thread182.i.i.i ], [ 13, %bb.do ], [ 8, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1027 ], [ 14, %bb.dp ], [ 7, %bb.fc ], [ 8, %.preheader185.split.us.i.i.i ], [ 9, %bb.gm ], [ 6, %.preheader.split.i.i.i ], [ 7, %.preheader.split.i313.i.i ], [ 8, %.preheader185.split.i.i.i ], [ 8, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1024 ], [ 8, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1015 ], [ 12, %bb.cx ], [ 9, %.thread46.thread.i.i ], [ 8, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1021 ], [ 8, %bb.fu ], [ 6, %.preheader131.split.i.i.i ], [ 12, %.loopexit1081.i.i ], [ 9, %bb.gy ], [ %spec.select1121, %.loopexit.i.i ], [ 9, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.loopexit91.split.loop.exit368.i ], [ 6, %.preheader131.split.us.i.i.i ], [ 8, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1018 ], [ 8, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit1030 ], [ 9, %bb.hb ], [ 7, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit793.split.loop.exit ], [ 8, %.preheader184.split.i.i.i ], [ 8, %.preheader184.split.us.i.i.i ], [ 12, %bb.cy ], [ 3, %.noexc53 ], [ 12, %bb.cw ], [ 9, %bb.gj ], [ 9, %.critedge.i.i39.i ], [ 11, %bb.df ], [ 6, %bb.du ], [ 6, %bb.ef ], [ 5, %bb.gf ], [ 3, %.noexc61 ], [ 6, %bb.eb ], [ 3, %.thread122.i.i.i ], [ 6, %bb.ed ], [ 6, %bb.dv ], [ 3, %.noexc55 ], [ 3, %.noexc57 ], [ 3, %.noexc58 ], [ 3, %.noexc59 ], [ 11, %bb.di ], [ 11, %bb.de ], [ 11, %bb.dg ], [ 14, %bb.dk ], [ 5, %bb.gc ], [ 5, %bb.gb ], [ 13, %bb.ds ], [ 11, %bb.dc ], [ 13, %bb.dt ], [ 5, %bb.ga ], [ 5, %bb.gd ], [ 3, %.noexc52 ], [ 9, %bb.hh ], [ 5, %bb.ge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50, !noalias !62
  %.not31.i = icmp eq ptr %.sroa.11.2.i, null
  %i.akl = ptrtoint ptr %.sroa.11.2.i to i64
  %i.akm = ptrtoint ptr %.070 to i64
  %i.akn = sub i64 %i.akl, %i.akm
  %i.ako = select i1 %.not31.i, i64 0, i64 %i.akn ; 3 uses
  call void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %10)
  store i32 %.sroa.57.2.i, ptr %10, align 8, !alias.scope !94, !noalias !62
  %i.akp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.ako, ptr %i.akp, align 8, !alias.scope !94, !noalias !62
  %i.akq = icmp eq i32 %.sroa.57.2.i, 0
  br i1 %i.akq, label %bb.ic, label %bb.ig

bb.ic:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
  %i.akr = icmp eq i8 %i.pu, 60
  br i1 %i.akr, label %.noexc63, label %bb.id

.noexc63:                                         ; preds = %bb.ic
  call void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
  store i32 5, ptr %0, align 8, !alias.scope !97
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ps, ptr %i.aks, align 8, !alias.scope !97
  br label %bb.ij

bb.id:                                            ; preds = %bb.ic
  br i1 %.not251.i.i, label %bb.ie, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser25has_element_node_siblingsEPNS_15xml_node_structE.exit.i

bb.ie:                                            ; preds = %bb.id
  %.not32.i = icmp eq ptr %i.pq, null
  %i.akt = getelementptr inbounds nuw i8, ptr %i.pq, i64 48
  %.in.i = select i1 %.not32.i, ptr %i.pm, ptr %i.akt
  %i.aku = load ptr, ptr %.in.i, align 8, !noalias !62 ; 2 uses
  %.not5.not.i.i = icmp eq ptr %i.aku, null
  br i1 %.not5.not.i.i, label %.critedge.i, label %.lr.ph.i36.i

.lr.ph.i36.i:                                     ; preds = %bb.ie, %bb.if
  %.06.i.i = phi ptr [ %i.akz, %bb.if ], [ %i.aku, %bb.ie ] ; 2 uses
  %i.akv = load i64, ptr %.06.i.i, align 8, !noalias !62
  %i.akw = and i64 %i.akv, 15
  %i.akx = icmp eq i64 %i.akw, 2
  br i1 %i.akx, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser25has_element_node_siblingsEPNS_15xml_node_structE.exit.i, label %bb.if

bb.if:                                            ; preds = %.lr.ph.i36.i
  %i.aky = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  %i.akz = load ptr, ptr %i.aky, align 8, !noalias !62 ; 2 uses
  %.not.not.i.i45 = icmp eq ptr %i.akz, null
  br i1 %.not.not.i.i45, label %.critedge.i, label %.lr.ph.i36.i, !llvm.loop !100

.critedge.i:                                      ; preds = %bb.if, %bb.ie
  call void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
  store i32 16, ptr %0, align 8, !alias.scope !101
  %i.ala = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ps, ptr %i.ala, align 8, !alias.scope !101
  br label %bb.ij

bb.ig:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
  %i.alb = icmp sgt i64 %i.ako, 0
  br i1 %i.alb, label %bb.ih, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser25has_element_node_siblingsEPNS_15xml_node_structE.exit.i

bb.ih:                                            ; preds = %bb.ig
  %i.alc = icmp eq i64 %i.ako, %i.ps
  %i.ald = icmp eq i8 %i.pu, 0
  %or.cond.i44 = select i1 %i.alc, i1 %i.ald, i1 false
  br i1 %or.cond.i44, label %bb.ii, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser25has_element_node_siblingsEPNS_15xml_node_structE.exit.i

bb.ii:                                            ; preds = %bb.ih
  %i.ale = add i64 %.0, -2
  store i64 %i.ale, ptr %i.akp, align 8, !noalias !62
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser25has_element_node_siblingsEPNS_15xml_node_structE.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser25has_element_node_siblingsEPNS_15xml_node_structE.exit.i: ; preds = %.lr.ph.i36.i, %bb.ii, %bb.ih, %bb.ig, %bb.id
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %bb.ij

bb.ij:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_110xml_parser25has_element_node_siblingsEPNS_15xml_node_structE.exit.i, %.critedge.i, %.noexc63
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #50, !noalias !62
  br label %.thread78

.thread78:                                        ; preds = %.noexc51, %bb.ij
  %i.alf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.d, ptr %i.alf, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit66

bb.ik:                                            ; preds = %bb.bv
  store i32 3, ptr %0, align 8, !alias.scope !104
  %i.alg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.alg, align 8, !alias.scope !104
  %.not.i65 = icmp eq ptr %i.e, null
  br i1 %.not.i65, label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit66, label %bb.il

bb.il:                                            ; preds = %bb.ik
  invoke void %i.f(ptr noundef nonnull %3)
          to label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit66 unwind label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.alh = landingpad { ptr, i32 }
          catch ptr null
  %i.ali = extractvalue { ptr, i32 } %i.alh, 0
  tail call void @__clang_call_terminate(ptr %i.ali) #49
  unreachable

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit66: ; preds = %bb.il, %bb.ik, %.thread78, %bb.b
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define ptr @_ZNK4pugi8xml_node23find_child_by_attributeEPKcS2_S2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.048 = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not3149 = icmp eq ptr %.048, null
  br i1 %.not3149, label %._crit_edge, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.c, %.thread
  %.050 = phi ptr [ %.0, %.thread ], [ %.048, %bb.c ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.050, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not32 = icmp eq ptr %i.d, null
  br i1 %.not32, label %.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph52
  %i.e = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.d) #51
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.050, i64 56
  %.02745 = load ptr, ptr %i.g, align 8           ; 2 uses
  %.not3346 = icmp eq ptr %.02745, null
  br i1 %.not3346, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.critedge37
  %.02747 = phi ptr [ %.027, %.critedge37 ], [ %.02745, %bb.e ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02747, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not34 = icmp eq ptr %i.i, null
  br i1 %.not34, label %.critedge37, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.j = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %i.i) #51
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %.critedge37

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.02747, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not35 = icmp eq ptr %i.m, null
  %i.n = select i1 %.not35, ptr @.str, ptr %i.m
  %i.o = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull readonly dereferenceable(1) %i.n) #51
end_hunk_0
begin_hunk_1_@_ZN4pugi4impl12_GLOBAL__N_126parse_declaration_encodingEPKhmRS3_Rm:bb.a
bb.f:                                             ; preds = %bb.e
  %i.t = add nuw i64 %.0105160, 2                 ; 2 uses
  %.not126 = icmp ult i64 %i.t, %1
  br i1 %.not126, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %.not127 = icmp eq i8 %i.v, 99
  br i1 %.not127, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw i64 %.0105160, 3                 ; 2 uses
  %.not128 = icmp ult i64 %i.w, %1
  br i1 %.not128, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1
  %.not129 = icmp eq i8 %i.y, 111
  br i1 %.not129, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.z = add nuw i64 %.0105160, 4                 ; 2 uses
  %.not130 = icmp ult i64 %i.z, %1
  br i1 %.not130, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %.not131 = icmp eq i8 %i.ab, 100
  br i1 %.not131, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ac = add nuw i64 %.0105160, 5                ; 2 uses
  %.not132 = icmp ult i64 %i.ac, %1
  br i1 %.not132, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1
  %.not133 = icmp eq i8 %i.ae, 105
  br i1 %.not133, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.af = add nuw i64 %.0105160, 6                ; 2 uses
  %.not134 = icmp ult i64 %i.af, %1
  br i1 %.not134, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %.not135 = icmp eq i8 %i.ah, 110
  br i1 %.not135, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.ai = add nuw i64 %.0105160, 7                ; 2 uses
  %.not136 = icmp ult i64 %i.ai, %1
  br i1 %.not136, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %.not137 = icmp eq i8 %i.ak, 103
  %i.al = add nuw i64 %.0105160, 8                ; 2 uses
  %i.am = icmp ult i64 %i.al, %1
  %or.cond167 = select i1 %.not137, i1 %i.am, i1 false
  br i1 %or.cond167, label %.lr.ph163, label %.critedge

.lr.ph163:                                        ; preds = %bb.q, %bb.r
  %.0106162 = phi i64 [ %i.at, %bb.r ], [ %i.al, %bb.q ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.0106162
  %i.ao = load i8, ptr %i.an, align 1             ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = and i8 %i.ar, 8
  %.not138 = icmp eq i8 %i.as, 0
  br i1 %.not138, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph163
  %i.at = add i64 %.0106162, 1                    ; 2 uses
  %exitcond176.not = icmp eq i64 %i.at, %1
  br i1 %exitcond176.not, label %.critedge, label %.lr.ph163, !llvm.loop !319

bb.s:                                             ; preds = %.lr.ph163
  %.not140 = icmp eq i8 %i.ao, 61
  %.1107209 = add nuw i64 %.0106162, 1            ; 2 uses
  %i.au = icmp ult i64 %.1107209, %1
  %or.cond213 = select i1 %.not140, i1 %i.au, i1 false
  br i1 %or.cond213, label %.lr.ph212, label %.critedge

.preheader:                                       ; preds = %.lr.ph212
  %.1107 = add nuw i64 %.1107211, 1               ; 2 uses
  %i.av = icmp ult i64 %.1107, %1
  br i1 %i.av, label %.lr.ph212, label %.critedge, !llvm.loop !320

.lr.ph212:                                        ; preds = %bb.s, %.preheader
  %.1107211 = phi i64 [ %.1107, %.preheader ], [ %.1107209, %bb.s ] ; 3 uses
  %.1107.in210 = phi i64 [ %.1107211, %.preheader ], [ %.0106162, %bb.s ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.1107211
  %i.ax = load i8, ptr %i.aw, align 1             ; 3 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = and i8 %i.ba, 8
  %.not141 = icmp eq i8 %i.bb, 0
  br i1 %.not141, label %bb.t, label %.preheader, !llvm.loop !320

bb.t:                                             ; preds = %.lr.ph212
  %i.bc = icmp eq i8 %i.ax, 34
  %i.bd = select i1 %i.bc, i32 34, i32 39         ; 2 uses
  %i.be = zext i8 %i.ax to i32
  %.not143 = icmp eq i32 %i.bd, %i.be
  br i1 %.not143, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.bf = add nuw i64 %.1107.in210, 2             ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store ptr %i.bg, ptr %2, align 8
  %i.bh = icmp ult i64 %i.bf, %1
  br i1 %i.bh, label %.lr.ph165, label %.critedge4

.lr.ph165:                                        ; preds = %bb.u, %bb.v
  %.2108164 = phi i64 [ %i.bo, %bb.v ], [ %i.bf, %bb.u ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.2108164
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = and i8 %i.bm, 64
  %.not144 = icmp eq i8 %i.bn, 0
  br i1 %.not144, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph165
  %i.bo = add i64 %.2108164, 1                    ; 2 uses
  %exitcond177.not = icmp eq i64 %i.bo, %1
  br i1 %exitcond177.not, label %.critedge4, label %.lr.ph165, !llvm.loop !321

.critedge4:                                       ; preds = %bb.v, %bb.u
  %.2108.lcssa = phi i64 [ %i.bf, %bb.u ], [ %1, %bb.v ]
  %i.bp = sub i64 %.2108.lcssa, %i.bf
  store i64 %i.bp, ptr %3, align 8
  br label %.critedge

bb.w:                                             ; preds = %.lr.ph165
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %.2108164
  %i.br = sub i64 %.2108164, %i.bf
  store i64 %i.br, ptr %3, align 8
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = zext i8 %i.bs to i32
  %.not146 = icmp eq i32 %i.bd, %i.bt
  br label %.critedge

bb.x:                                             ; preds = %.lr.ph, %bb.d
  %i.bu = add nuw i64 %i.n, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !322

.critedge:                                        ; preds = %bb.x, %.lr.ph, %bb.r, %.preheader, %bb.f, %bb.i, %bb.h, %bb.k, %bb.j, %bb.m, %bb.l, %bb.o, %bb.n, %bb.q, %bb.p, %bb.s, %bb.g, %bb.e, %bb.w, %.critedge4, %bb.t, %bb.a, %bb.b, %bb.c
  %.4 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ %.not146, %bb.w ], [ false, %bb.r ], [ false, %bb.t ], [ false, %.preheader ], [ false, %bb.s ], [ false, %bb.q ], [ false, %bb.o ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %.critedge4 ], [ false, %bb.e ], [ false, %.lr.ph ], [ false, %bb.x ]
  ret i1 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_9opt_falseEE12parse_simpleEPcc(ptr noundef captures(ret: address, provenance) %0, i8 noundef signext %1) unnamed_addr #26 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.1.be, %.backedge ] ; 9 uses
  %i.a = load i8, ptr %.1, align 1                ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 2
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %.split.loop.exit, !prof !80

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 2
  %.not21 = icmp eq i8 %i.k, 0
  br i1 %.not21, label %bb.d, label %.split.loop.exit.loopexit.split.loop.exit, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 2
  %.not22 = icmp eq i8 %i.q, 0
  br i1 %.not22, label %bb.e, label %.split.loop.exit.loopexit.split.loop.exit44, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %.fr30 = freeze i8 %i.v
  %i.w = and i8 %.fr30, 2
  %.not23 = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br i1 %.not23, label %.backedge, label %..split.loop.exit.loopexit_crit_edge, !prof !80

.backedge:                                        ; preds = %bb.e, %bb.g
  %.1.be = phi ptr [ %i.x, %bb.e ], [ %i.ae, %bb.g ]
  br label %bb.b, !llvm.loop !323

..split.loop.exit.loopexit_crit_edge:             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 2 uses
  %.pre.pre = load i8, ptr %i.y, align 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit:        ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit44:      ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %.split.loop.exit.loopexit.split.loop.exit, %.split.loop.exit.loopexit.split.loop.exit44, %..split.loop.exit.loopexit_crit_edge
  %i.ab = phi i8 [ %.pre.pre, %..split.loop.exit.loopexit_crit_edge ], [ %i.m, %.split.loop.exit.loopexit.split.loop.exit44 ], [ %i.g, %.split.loop.exit.loopexit.split.loop.exit ], [ %i.a, %bb.b ] ; 2 uses
  %.2.ph = phi ptr [ %i.y, %..split.loop.exit.loopexit_crit_edge ], [ %i.aa, %.split.loop.exit.loopexit.split.loop.exit44 ], [ %i.z, %.split.loop.exit.loopexit.split.loop.exit ], [ %.1, %bb.b ] ; 3 uses
  %i.ac = icmp eq i8 %i.ab, %1
  br i1 %i.ac, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit, label %bb.f

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit:    ; preds = %.split.loop.exit
  store i8 0, ptr %.2.ph, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %.loopexit

bb.f:                                             ; preds = %.split.loop.exit
  %.not24 = icmp eq i8 %i.ab, 0
  br i1 %.not24, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %.backedge

.loopexit:                                        ; preds = %bb.f, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit
  %.019 = phi ptr [ %i.ad, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit ], [ null, %bb.f ]
  ret ptr %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_8opt_trueEE12parse_simpleEPcc(ptr noundef %0, i8 noundef signext %1) unnamed_addr #19 align 2 {
bb.a:
  %2 = alloca %"struct.pugi::impl::(anonymous namespace)::gap", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.1.be, %.backedge ] ; 9 uses
  %i.a = load i8, ptr %.1, align 1                ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 2
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %.split.loop.exit, !prof !80

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 2
  %.not24 = icmp eq i8 %i.k, 0
  br i1 %.not24, label %bb.d, label %.split.loop.exit.loopexit.split.loop.exit, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 2
  %.not25 = icmp eq i8 %i.q, 0
  br i1 %.not25, label %bb.e, label %.split.loop.exit.loopexit.split.loop.exit47, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %.fr32 = freeze i8 %i.v
  %i.w = and i8 %.fr32, 2
  %.not26 = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br i1 %.not26, label %.backedge, label %..split.loop.exit.loopexit_crit_edge, !prof !80

.backedge:                                        ; preds = %bb.e, %bb.i, %bb.j
  %.1.be = phi ptr [ %i.x, %bb.e ], [ %i.an, %bb.i ], [ %i.ao, %bb.j ]
  br label %bb.b, !llvm.loop !324

..split.loop.exit.loopexit_crit_edge:             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 2 uses
  %.pre.pre = load i8, ptr %i.y, align 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit:        ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit47:      ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %.split.loop.exit.loopexit.split.loop.exit, %.split.loop.exit.loopexit.split.loop.exit47, %..split.loop.exit.loopexit_crit_edge
  %i.ab = phi i8 [ %.pre.pre, %..split.loop.exit.loopexit_crit_edge ], [ %i.m, %.split.loop.exit.loopexit.split.loop.exit47 ], [ %i.g, %.split.loop.exit.loopexit.split.loop.exit ], [ %i.a, %bb.b ] ; 2 uses
  %.2.ph = phi ptr [ %i.y, %..split.loop.exit.loopexit_crit_edge ], [ %i.aa, %.split.loop.exit.loopexit.split.loop.exit47 ], [ %i.z, %.split.loop.exit.loopexit.split.loop.exit ], [ %.1, %bb.b ] ; 6 uses
  %i.ac = icmp eq i8 %i.ab, %1
  br i1 %i.ac, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.split.loop.exit
  %i.ad = load ptr, ptr %2, align 8               ; 4 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = sub i64 0, %i.af                        ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = ptrtoint ptr %.2.ph to i64
  %i.aj = ptrtoint ptr %i.ad to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %i.ad, i64 %i.ak, i1 false)
  %i.al = getelementptr inbounds i8, ptr %.2.ph, i64 %i.ag
  br label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit:    ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.al, %bb.g ], [ %.2.ph, %bb.f ]
  store i8 0, ptr %.0.i, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %.loopexit

bb.h:                                             ; preds = %.split.loop.exit
  switch i8 %i.ab, label %bb.j [
    i8 38, label %bb.i
    i8 0, label %.loopexit
  ]

bb.i:                                             ; preds = %bb.h
  %i.an = call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_114strconv_escapeEPcRNS1_3gapE(ptr noundef nonnull %.2.ph, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %.backedge

bb.j:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %.backedge

.loopexit:                                        ; preds = %bb.h, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit
  %.021 = phi ptr [ %i.am, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  ret ptr %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_9opt_falseEE9parse_eolEPcc(ptr noundef %0, i8 noundef signext %1) unnamed_addr #19 align 2 {
bb.a:
  br label %.outer

.outer:                                           ; preds = %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit, %bb.a
  %.022.ph = phi ptr [ %i.ax, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit ], [ %0, %bb.a ]
  %.sroa.0.0.ph = phi ptr [ %i.ax, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit ], [ null, %bb.a ] ; 8 uses
  %.sroa.6.0.ph = phi i64 [ %i.ay, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit ], [ 0, %bb.a ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %.022 = phi ptr [ %.022.ph, %.outer ], [ %.022.be, %.backedge ] ; 3 uses
  %i.a = load i8, ptr %.022, align 1              ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 2
  %.not37 = icmp eq i8 %i.e, 0
  br i1 %.not37, label %.lr.ph, label %.split.loop.exit, !prof !79

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.138 = phi ptr [ %i.x, %bb.e ], [ %.022, %bb.b ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.138, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 2
  %.not8 = icmp eq i8 %i.k, 0
  br i1 %.not8, label %bb.c, label %.split.loop.exit.loopexit.split.loop.exit, !prof !80

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.138, i64 2
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 2
  %.not9 = icmp eq i8 %i.q, 0
  br i1 %.not9, label %bb.d, label %.split.loop.exit.loopexit.split.loop.exit48, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.138, i64 3
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 2
  %.not10 = icmp eq i8 %i.w, 0
  br i1 %.not10, label %bb.e, label %.split.loop.exit.loopexit.split.loop.exit51, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.138, i64 4 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 2
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %.lr.ph, label %.split.loop.exit, !prof !81

.split.loop.exit.loopexit.split.loop.exit:        ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.138, i64 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit48:      ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.138, i64 2
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit51:      ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.138, i64 3
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.e, %.split.loop.exit.loopexit.split.loop.exit, %.split.loop.exit.loopexit.split.loop.exit48, %.split.loop.exit.loopexit.split.loop.exit51, %bb.b
  %i.ag = phi i8 [ %i.a, %bb.b ], [ %i.s, %.split.loop.exit.loopexit.split.loop.exit51 ], [ %i.g, %.split.loop.exit.loopexit.split.loop.exit ], [ %i.m, %.split.loop.exit.loopexit.split.loop.exit48 ], [ %i.y, %bb.e ] ; 2 uses
  %.2.ph = phi ptr [ %.022, %bb.b ], [ %i.af, %.split.loop.exit.loopexit.split.loop.exit51 ], [ %i.ad, %.split.loop.exit.loopexit.split.loop.exit ], [ %i.ae, %.split.loop.exit.loopexit.split.loop.exit48 ], [ %i.x, %bb.e ] ; 8 uses
  %i.ah = icmp eq i8 %i.ag, %1
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.split.loop.exit
  %.not.i = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = sub i64 0, %.sroa.6.0.ph                ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.sroa.0.0.ph, i64 %i.ai
  %i.ak = ptrtoint ptr %.2.ph to i64
  %i.al = ptrtoint ptr %.sroa.0.0.ph to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %.sroa.0.0.ph, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds i8, ptr %.2.ph, i64 %i.ai
  br label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit:    ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.an, %bb.g ], [ %.2.ph, %bb.f ]
  store i8 0, ptr %.0.i, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %.loopexit

bb.h:                                             ; preds = %.split.loop.exit
  switch i8 %i.ag, label %bb.l [
    i8 13, label %bb.i
    i8 0, label %.loopexit
  ]

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1 ; 3 uses
  store i8 10, ptr %.2.ph, align 1
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp eq i8 %i.aq, 10
  br i1 %i.ar, label %bb.j, label %.backedge

bb.j:                                             ; preds = %bb.i
  %.not.i12 = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not.i12, label %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = sub i64 0, %.sroa.6.0.ph
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.0.ph, i64 %i.as
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %.sroa.0.0.ph to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 1 %.sroa.0.0.ph, i64 %i.aw, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit

_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit:   ; preds = %bb.j, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.2.ph, i64 2 ; 2 uses
  %i.ay = add i64 %.sroa.6.0.ph, 1
  br label %.outer, !llvm.loop !325

bb.l:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.i
  %.022.be = phi ptr [ %i.ap, %bb.i ], [ %i.az, %bb.l ]
  br label %bb.b, !llvm.loop !325

.loopexit:                                        ; preds = %bb.h, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit
  %.06 = phi ptr [ %i.ao, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit ], [ null, %bb.h ]
  ret ptr %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN4pugi4impl12_GLOBAL__N_122strconv_attribute_implINS1_8opt_trueEE9parse_eolEPcc(ptr noundef %0, i8 noundef signext %1) unnamed_addr #19 align 2 {
bb.a:
  %2 = alloca %"struct.pugi::impl::(anonymous namespace)::gap", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
end_hunk_1
begin_hunk_2_@_ZN4pugi4impl12_GLOBAL__N_114strconv_escapeEPcRNS1_3gapE:bb.a
  br i1 %.not.i89, label %.thread.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = sub i64 0, %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 %i.cm
  %i.co = ptrtoint ptr %i.a to i64
  %i.cp = ptrtoint ptr %i.cj to i64
  %i.cq = sub i64 %i.co, %i.cp
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr nonnull align 1 %i.cj, i64 %i.cq, i1 false)
  br label %.thread.sink.split

bb.v:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = icmp eq i8 %i.cs, 111
  br i1 %i.ct, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = icmp eq i8 %i.cv, 115
  br i1 %i.cw, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = icmp eq i8 %i.cy, 59
  br i1 %i.cz, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  store i8 39, ptr %0, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 4 uses
  %i.db = load ptr, ptr %1, align 8               ; 4 uses
  %.not.i91 = icmp eq ptr %i.db, null
  br i1 %.not.i91, label %.thread.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = sub i64 0, %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 %i.de
  %i.dg = ptrtoint ptr %i.a to i64
  %i.dh = ptrtoint ptr %i.db to i64
  %i.di = sub i64 %i.dg, %i.dh
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull align 1 %i.db, i64 %i.di, i1 false)
  br label %.thread.sink.split

bb.aa:                                            ; preds = %bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = icmp eq i8 %i.dk, 116
  br i1 %i.dl, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = icmp eq i8 %i.dn, 59
  br i1 %i.do, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  store i8 62, ptr %0, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.dq = load ptr, ptr %1, align 8               ; 4 uses
  %.not.i93 = icmp eq ptr %i.dq, null
  br i1 %.not.i93, label %.thread.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = sub i64 0, %i.ds
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 %i.dt
  %i.dv = ptrtoint ptr %i.a to i64
  %i.dw = ptrtoint ptr %i.dq to i64
  %i.dx = sub i64 %i.dv, %i.dw
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull align 1 %i.dq, i64 %i.dx, i1 false)
  br label %.thread.sink.split

bb.ae:                                            ; preds = %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = icmp eq i8 %i.dz, 116
  br i1 %i.ea, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = icmp eq i8 %i.ec, 59
  br i1 %i.ed, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  store i8 60, ptr %0, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ef = load ptr, ptr %1, align 8               ; 4 uses
  %.not.i95 = icmp eq ptr %i.ef, null
  br i1 %.not.i95, label %.thread.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = sub i64 0, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei
  %i.ek = ptrtoint ptr %i.a to i64
  %i.el = ptrtoint ptr %i.ef to i64
  %i.em = sub i64 %i.ek, %i.el
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ej, ptr nonnull align 1 %i.ef, i64 %i.em, i1 false)
  br label %.thread.sink.split

bb.ai:                                            ; preds = %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = icmp eq i8 %i.eo, 117
  br i1 %i.ep, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = icmp eq i8 %i.er, 111
  br i1 %i.es, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = icmp eq i8 %i.eu, 116
  br i1 %i.ev, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = icmp eq i8 %i.ex, 59
  br i1 %i.ey, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  store i8 34, ptr %0, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 4 uses
  %i.fa = load ptr, ptr %1, align 8               ; 4 uses
  %.not.i97 = icmp eq ptr %i.fa, null
  br i1 %.not.i97, label %.thread.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = sub i64 0, %i.fc
  %i.fe = getelementptr inbounds i8, ptr %i.fa, i64 %i.fd
  %i.ff = ptrtoint ptr %i.a to i64
  %i.fg = ptrtoint ptr %i.fa to i64
  %i.fh = sub i64 %i.ff, %i.fg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fe, ptr nonnull align 1 %i.fa, i64 %i.fh, i1 false)
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.an, %bb.am, %bb.ah, %bb.ag, %bb.ad, %bb.ac, %bb.z, %bb.y, %bb.u, %bb.t, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit
  %.sink = phi ptr [ %i.bz, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit ], [ %i.ee, %bb.ah ], [ %i.dp, %bb.ad ], [ %i.da, %bb.z ], [ %i.ci, %bb.u ], [ %i.ci, %bb.t ], [ %i.da, %bb.y ], [ %i.dp, %bb.ac ], [ %i.ee, %bb.ag ], [ %i.ez, %bb.am ], [ %i.ez, %bb.an ]
  %.sink143 = phi i64 [ %i.br, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit ], [ 3, %bb.ah ], [ 3, %bb.ad ], [ 5, %bb.z ], [ 4, %bb.u ], [ 4, %bb.t ], [ 5, %bb.y ], [ 3, %bb.ac ], [ 3, %bb.ag ], [ 5, %bb.am ], [ 5, %bb.an ]
  %.383.ph = phi ptr [ %.478, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit ], [ %i.ee, %bb.ah ], [ %i.dp, %bb.ad ], [ %i.da, %bb.z ], [ %i.ci, %bb.u ], [ %i.ci, %bb.t ], [ %i.da, %bb.y ], [ %i.dp, %bb.ac ], [ %i.ee, %bb.ag ], [ %i.ez, %bb.am ], [ %i.ez, %bb.an ]
  store ptr %.sink, ptr %1, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = add i64 %i.fj, %.sink143
  store i64 %i.fk, ptr %i.fi, align 8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.preheader, %._crit_edge, %bb.b, %bb.g, %bb.c, %bb.x, %bb.w, %bb.v, %bb.r, %bb.s, %bb.ab, %bb.aa, %bb.af, %bb.ae, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.a, %bb.q
  %.383 = phi ptr [ %i.h, %bb.c ], [ %i.et, %bb.ak ], [ %i.eq, %bb.aj ], [ %.074, %bb.g ], [ %i.ab, %._crit_edge ], [ %i.c, %bb.b ], [ %i.c, %.preheader ], [ %i.en, %bb.ai ], [ %i.a, %bb.a ], [ %i.cf, %bb.s ], [ %i.cc, %bb.r ], [ %i.cx, %bb.x ], [ %i.cu, %bb.w ], [ %i.cr, %bb.v ], [ %i.ca, %bb.q ], [ %i.dm, %bb.ab ], [ %i.dj, %bb.aa ], [ %i.eb, %bb.af ], [ %i.dy, %bb.ae ], [ %i.ew, %bb.al ], [ %.383.ph, %.thread.sink.split ]
  ret ptr %.383
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_9opt_falseES3_S3_E5parseEPc(ptr noundef captures(ret: address, provenance) %0) unnamed_addr #26 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.1.be, %.backedge ] ; 9 uses
  %i.a = load i8, ptr %.1, align 1                ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %.split.loop.exit, !prof !80

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 1
  %.not26 = icmp eq i8 %i.k, 0
  br i1 %.not26, label %bb.d, label %.split.loop.exit.loopexit.split.loop.exit, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 1
  %.not27 = icmp eq i8 %i.q, 0
  br i1 %.not27, label %bb.e, label %.split.loop.exit.loopexit.split.loop.exit54, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %.fr40 = freeze i8 %i.v
  %i.w = and i8 %.fr40, 1
  %.not28 = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br i1 %.not28, label %.backedge, label %..split.loop.exit.loopexit_crit_edge, !prof !80

.backedge:                                        ; preds = %bb.e, %bb.f
  %.1.be = phi ptr [ %i.x, %bb.e ], [ %i.ad, %bb.f ]
  br label %bb.b, !llvm.loop !339

..split.loop.exit.loopexit_crit_edge:             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 2 uses
  %.pre.pre = load i8, ptr %i.y, align 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit:        ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit54:      ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %.split.loop.exit.loopexit.split.loop.exit, %.split.loop.exit.loopexit.split.loop.exit54, %..split.loop.exit.loopexit_crit_edge
  %i.ab = phi i8 [ %.pre.pre, %..split.loop.exit.loopexit_crit_edge ], [ %i.m, %.split.loop.exit.loopexit.split.loop.exit54 ], [ %i.g, %.split.loop.exit.loopexit.split.loop.exit ], [ %i.a, %bb.b ]
  %.2.ph = phi ptr [ %i.y, %..split.loop.exit.loopexit_crit_edge ], [ %i.aa, %.split.loop.exit.loopexit.split.loop.exit54 ], [ %i.z, %.split.loop.exit.loopexit.split.loop.exit ], [ %.1, %bb.b ] ; 5 uses
  switch i8 %i.ab, label %bb.f [
    i8 60, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit32
  ]

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit:    ; preds = %.split.loop.exit
  store i8 0, ptr %.2.ph, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %bb.g

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit32:  ; preds = %.split.loop.exit
  store i8 0, ptr %.2.ph, align 1
  br label %bb.g

bb.f:                                             ; preds = %.split.loop.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %.backedge

bb.g:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit32, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit
  %.0 = phi ptr [ %i.ac, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit ], [ %.2.ph, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit32 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_9opt_falseES3_NS1_8opt_trueEE5parseEPc(ptr noundef %0) unnamed_addr #19 align 2 {
bb.a:
  %1 = alloca %"struct.pugi::impl::(anonymous namespace)::gap", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.1.be, %.backedge ] ; 9 uses
  %i.a = load i8, ptr %.1, align 1                ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %.split.loop.exit, !prof !80

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 1
  %.not28 = icmp eq i8 %i.k, 0
  br i1 %.not28, label %bb.d, label %.split.loop.exit.loopexit.split.loop.exit, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 1
  %.not29 = icmp eq i8 %i.q, 0
  br i1 %.not29, label %bb.e, label %.split.loop.exit.loopexit.split.loop.exit54, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %.fr38 = freeze i8 %i.v
  %i.w = and i8 %.fr38, 1
  %.not30 = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br i1 %.not30, label %.backedge, label %..split.loop.exit.loopexit_crit_edge, !prof !80

.backedge:                                        ; preds = %bb.e, %bb.h, %bb.k
  %.1.be = phi ptr [ %i.x, %bb.e ], [ %i.am, %bb.h ], [ %i.aw, %bb.k ]
  br label %bb.b, !llvm.loop !340

..split.loop.exit.loopexit_crit_edge:             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 2 uses
  %.pre.pre = load i8, ptr %i.y, align 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit:        ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit54:      ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %.split.loop.exit.loopexit.split.loop.exit, %.split.loop.exit.loopexit.split.loop.exit54, %..split.loop.exit.loopexit_crit_edge
  %i.ab = phi i8 [ %.pre.pre, %..split.loop.exit.loopexit_crit_edge ], [ %i.m, %.split.loop.exit.loopexit.split.loop.exit54 ], [ %i.g, %.split.loop.exit.loopexit.split.loop.exit ], [ %i.a, %bb.b ]
  %.2.ph = phi ptr [ %i.y, %..split.loop.exit.loopexit_crit_edge ], [ %i.aa, %.split.loop.exit.loopexit.split.loop.exit54 ], [ %i.z, %.split.loop.exit.loopexit.split.loop.exit ], [ %.1, %bb.b ] ; 10 uses
  switch i8 %i.ab, label %bb.k [
    i8 60, label %bb.f
    i8 38, label %bb.h
    i8 0, label %bb.i
  ]

bb.f:                                             ; preds = %.split.loop.exit
  %i.ac = load ptr, ptr %1, align 8               ; 4 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = sub i64 0, %i.ae                        ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  %i.ah = ptrtoint ptr %.2.ph to i64
  %i.ai = ptrtoint ptr %i.ac to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.ac, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %.2.ph, i64 %i.af
  br label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit:    ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.ak, %bb.g ], [ %.2.ph, %bb.f ]
  store i8 0, ptr %.0.i, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %bb.l

bb.h:                                             ; preds = %.split.loop.exit
  %i.am = call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_114strconv_escapeEPcRNS1_3gapE(ptr noundef nonnull %.2.ph, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %.backedge

bb.i:                                             ; preds = %.split.loop.exit
  %i.an = load ptr, ptr %1, align 8               ; 4 uses
  %.not.i32 = icmp eq ptr %i.an, null
  br i1 %.not.i32, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit34, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = sub i64 0, %i.ap                        ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = ptrtoint ptr %.2.ph to i64
  %i.at = ptrtoint ptr %i.an to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 1 %i.an, i64 %i.au, i1 false)
  %i.av = getelementptr inbounds i8, ptr %.2.ph, i64 %i.aq
  br label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit34

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit34:  ; preds = %bb.i, %bb.j
  %.0.i33 = phi ptr [ %i.av, %bb.j ], [ %.2.ph, %bb.i ]
  store i8 0, ptr %.0.i33, align 1
  br label %bb.l

bb.k:                                             ; preds = %.split.loop.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %.backedge

bb.l:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit34, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit
  %.0 = phi ptr [ %i.al, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit ], [ %.2.ph, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_9opt_falseENS1_8opt_trueES3_E5parseEPc(ptr noundef %0) unnamed_addr #19 align 2 {
bb.a:
  br label %.outer

.outer:                                           ; preds = %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit, %bb.a
  %.029.ph = phi ptr [ %i.aw, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit ], [ %0, %bb.a ]
  %.sroa.0.0.ph = phi ptr [ %i.aw, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit ], [ null, %bb.a ] ; 12 uses
  %.sroa.7.0.ph = phi i64 [ %i.ax, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit ], [ 0, %bb.a ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %.029 = phi ptr [ %.029.ph, %.outer ], [ %.029.be, %.backedge ] ; 3 uses
  %i.a = load i8, ptr %.029, align 1              ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %.not44 = icmp eq i8 %i.e, 0
  br i1 %.not44, label %.lr.ph, label %.split.loop.exit, !prof !79

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.145 = phi ptr [ %i.x, %bb.e ], [ %.029, %bb.b ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.145, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 1
  %.not9 = icmp eq i8 %i.k, 0
  br i1 %.not9, label %bb.c, label %.split.loop.exit.loopexit.split.loop.exit, !prof !80

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.145, i64 2
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 1
  %.not10 = icmp eq i8 %i.q, 0
  br i1 %.not10, label %bb.d, label %.split.loop.exit.loopexit.split.loop.exit55, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.145, i64 3
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not11 = icmp eq i8 %i.w, 0
  br i1 %.not11, label %bb.e, label %.split.loop.exit.loopexit.split.loop.exit58, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.145, i64 4 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 1
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %.lr.ph, label %.split.loop.exit, !prof !81

.split.loop.exit.loopexit.split.loop.exit:        ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.145, i64 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit55:      ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.145, i64 2
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit58:      ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.145, i64 3
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.e, %.split.loop.exit.loopexit.split.loop.exit, %.split.loop.exit.loopexit.split.loop.exit55, %.split.loop.exit.loopexit.split.loop.exit58, %bb.b
  %i.ag = phi i8 [ %i.a, %bb.b ], [ %i.s, %.split.loop.exit.loopexit.split.loop.exit58 ], [ %i.g, %.split.loop.exit.loopexit.split.loop.exit ], [ %i.m, %.split.loop.exit.loopexit.split.loop.exit55 ], [ %i.y, %bb.e ]
  %.2.ph = phi ptr [ %.029, %bb.b ], [ %i.af, %.split.loop.exit.loopexit.split.loop.exit58 ], [ %i.ad, %.split.loop.exit.loopexit.split.loop.exit ], [ %i.ae, %.split.loop.exit.loopexit.split.loop.exit55 ], [ %i.x, %bb.e ] ; 12 uses
  switch i8 %i.ag, label %bb.m [
    i8 60, label %bb.f
    i8 13, label %bb.h
    i8 0, label %bb.k
  ]

bb.f:                                             ; preds = %.split.loop.exit
  %.not.i = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = sub i64 0, %.sroa.7.0.ph                ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.0.0.ph, i64 %i.ah
  %i.aj = ptrtoint ptr %.2.ph to i64
  %i.ak = ptrtoint ptr %.sroa.0.0.ph to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull align 1 %.sroa.0.0.ph, i64 %i.al, i1 false)
  %i.am = getelementptr inbounds i8, ptr %.2.ph, i64 %i.ah
  br label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit:    ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.am, %bb.g ], [ %.2.ph, %bb.f ]
  store i8 0, ptr %.0.i, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %bb.n

bb.h:                                             ; preds = %.split.loop.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1 ; 3 uses
  store i8 10, ptr %.2.ph, align 1
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.ap, 10
  br i1 %i.aq, label %bb.i, label %.backedge

bb.i:                                             ; preds = %bb.h
  %.not.i12 = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not.i12, label %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = sub i64 0, %.sroa.7.0.ph
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.0.ph, i64 %i.ar
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = ptrtoint ptr %.sroa.0.0.ph to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 1 %.sroa.0.0.ph, i64 %i.av, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit

_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit:   ; preds = %bb.i, %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %.2.ph, i64 2 ; 2 uses
  %i.ax = add i64 %.sroa.7.0.ph, 1
  br label %.outer, !llvm.loop !341

bb.k:                                             ; preds = %.split.loop.exit
  %.not.i13 = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not.i13, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit15, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = sub i64 0, %.sroa.7.0.ph                ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.ph, i64 %i.ay
end_hunk_2
begin_hunk_3_@_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_9opt_falseENS1_8opt_trueES4_E5parseEPc:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.022 = phi ptr [ %0, %bb.a ], [ %.022.be, %.backedge ] ; 3 uses
  %i.b = load i8, ptr %.022, align 1              ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 1
  %.not35 = icmp eq i8 %i.f, 0
  br i1 %.not35, label %.lr.ph, label %.split.loop.exit, !prof !79

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.136 = phi ptr [ %i.y, %bb.e ], [ %.022, %bb.b ] ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.136, i64 1
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = and i8 %i.k, 1
  %.not9 = icmp eq i8 %i.l, 0
  br i1 %.not9, label %bb.c, label %.split.loop.exit.loopexit.split.loop.exit, !prof !80

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.136, i64 2
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1
  %i.r = and i8 %i.q, 1
  %.not10 = icmp eq i8 %i.r, 0
  br i1 %.not10, label %bb.d, label %.split.loop.exit.loopexit.split.loop.exit45, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.136, i64 3
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1
  %i.x = and i8 %i.w, 1
  %.not11 = icmp eq i8 %i.x, 0
  br i1 %.not11, label %bb.e, label %.split.loop.exit.loopexit.split.loop.exit48, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.136, i64 4 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1               ; 2 uses
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = and i8 %i.ac, 1
  %.not = icmp eq i8 %i.ad, 0
  br i1 %.not, label %.lr.ph, label %.split.loop.exit, !prof !81

.split.loop.exit.loopexit.split.loop.exit:        ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.136, i64 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit45:      ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.136, i64 2
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit48:      ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.136, i64 3
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.e, %.split.loop.exit.loopexit.split.loop.exit, %.split.loop.exit.loopexit.split.loop.exit45, %.split.loop.exit.loopexit.split.loop.exit48, %bb.b
  %i.ah = phi i8 [ %i.b, %bb.b ], [ %i.t, %.split.loop.exit.loopexit.split.loop.exit48 ], [ %i.h, %.split.loop.exit.loopexit.split.loop.exit ], [ %i.n, %.split.loop.exit.loopexit.split.loop.exit45 ], [ %i.z, %bb.e ]
  %.2.ph = phi ptr [ %.022, %bb.b ], [ %i.ag, %.split.loop.exit.loopexit.split.loop.exit48 ], [ %i.ae, %.split.loop.exit.loopexit.split.loop.exit ], [ %i.af, %.split.loop.exit.loopexit.split.loop.exit45 ], [ %i.y, %bb.e ] ; 13 uses
  switch i8 %i.ah, label %bb.n [
    i8 60, label %bb.f
    i8 13, label %bb.h
    i8 38, label %bb.k
    i8 0, label %bb.l
  ]

bb.f:                                             ; preds = %.split.loop.exit
  %i.ai = load ptr, ptr %1, align 8               ; 4 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i64, ptr %i.a, align 8
  %i.ak = sub i64 0, %i.aj                        ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  %i.am = ptrtoint ptr %.2.ph to i64
  %i.an = ptrtoint ptr %i.ai to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 1 %i.ai, i64 %i.ao, i1 false)
  %i.ap = getelementptr inbounds i8, ptr %.2.ph, i64 %i.ak
  br label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit:    ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.ap, %bb.g ], [ %.2.ph, %bb.f ]
  store i8 0, ptr %.0.i, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %bb.o

bb.h:                                             ; preds = %.split.loop.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1 ; 3 uses
  store i8 10, ptr %.2.ph, align 1
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp eq i8 %i.as, 10
  br i1 %i.at, label %bb.i, label %.backedge

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %1, align 8               ; 4 uses
  %.not.i12 = icmp eq ptr %i.au, null
  %.pre = load i64, ptr %i.a, align 8             ; 2 uses
  br i1 %.not.i12, label %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = sub i64 0, %.pre
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr nonnull align 1 %i.au, i64 %i.az, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit

_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit:   ; preds = %bb.i, %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.2.ph, i64 2 ; 2 uses
  store ptr %i.ba, ptr %1, align 8
  %i.bb = add i64 %.pre, 1
  store i64 %i.bb, ptr %i.a, align 8
  br label %.backedge

.backedge:                                        ; preds = %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit, %bb.h, %bb.n, %bb.k
  %.022.be = phi ptr [ %i.bl, %bb.n ], [ %i.ba, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit ], [ %i.ar, %bb.h ], [ %i.bc, %bb.k ]
  br label %bb.b, !llvm.loop !342

bb.k:                                             ; preds = %.split.loop.exit
  %i.bc = call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_114strconv_escapeEPcRNS1_3gapE(ptr noundef nonnull %.2.ph, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %.backedge

bb.l:                                             ; preds = %.split.loop.exit
  %i.bd = load ptr, ptr %1, align 8               ; 4 uses
  %.not.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i13, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit15, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i64, ptr %i.a, align 8
  %i.bf = sub i64 0, %i.be                        ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 %i.bf
  %i.bh = ptrtoint ptr %.2.ph to i64
  %i.bi = ptrtoint ptr %i.bd to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull align 1 %i.bd, i64 %i.bj, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %.2.ph, i64 %i.bf
  br label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit15

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit15:  ; preds = %bb.l, %bb.m
  %.0.i14 = phi ptr [ %i.bk, %bb.m ], [ %.2.ph, %bb.l ]
  store i8 0, ptr %.0.i14, align 1
  br label %bb.o

bb.n:                                             ; preds = %.split.loop.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %.backedge

bb.o:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit15, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit
  %.0 = phi ptr [ %i.aq, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit ], [ %.2.ph, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_8opt_trueENS1_9opt_falseES4_E5parseEPc(ptr noundef captures(address, ret: address, provenance) %0) unnamed_addr #26 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.1.be, %.backedge ] ; 9 uses
  %i.a = load i8, ptr %.1, align 1                ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %.split.loop.exit, !prof !80

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 1
  %.not38 = icmp eq i8 %i.k, 0
  br i1 %.not38, label %bb.d, label %.split.loop.exit.loopexit.split.loop.exit, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 1
  %.not39 = icmp eq i8 %i.q, 0
  br i1 %.not39, label %bb.e, label %.split.loop.exit.loopexit.split.loop.exit68, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %.fr54 = freeze i8 %i.v
  %i.w = and i8 %.fr54, 1
  %.not40 = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br i1 %.not40, label %.backedge, label %..split.loop.exit.loopexit_crit_edge, !prof !80

.backedge:                                        ; preds = %bb.e, %bb.f
  %.1.be = phi ptr [ %i.x, %bb.e ], [ %i.at, %bb.f ]
  br label %bb.b, !llvm.loop !343

..split.loop.exit.loopexit_crit_edge:             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 2 uses
  %.pre.pre = load i8, ptr %i.y, align 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit:        ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit68:      ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %.split.loop.exit.loopexit.split.loop.exit, %.split.loop.exit.loopexit.split.loop.exit68, %..split.loop.exit.loopexit_crit_edge
  %i.ab = phi i8 [ %.pre.pre, %..split.loop.exit.loopexit_crit_edge ], [ %i.m, %.split.loop.exit.loopexit.split.loop.exit68 ], [ %i.g, %.split.loop.exit.loopexit.split.loop.exit ], [ %i.a, %bb.b ]
  %.2.ph = phi ptr [ %i.y, %..split.loop.exit.loopexit_crit_edge ], [ %i.aa, %.split.loop.exit.loopexit.split.loop.exit68 ], [ %i.z, %.split.loop.exit.loopexit.split.loop.exit ], [ %.1, %bb.b ] ; 9 uses
  switch i8 %i.ab, label %bb.f [
    i8 60, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit.preheader
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit46.preheader
  ]

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit46.preheader: ; preds = %.split.loop.exit
  %i.ac = icmp ugt ptr %.2.ph, %0
  br i1 %i.ac, label %.lr.ph, label %.critedge2

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit.preheader: ; preds = %.split.loop.exit
  %i.ad = icmp ugt ptr %.2.ph, %0
  br i1 %i.ad, label %.lr.ph91, label %.critedge

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit:    ; preds = %.lr.ph91
  %i.ae = icmp ugt ptr %i.af, %0
  br i1 %i.ae, label %.lr.ph91, label %.critedge, !llvm.loop !344

.lr.ph91:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit.preheader, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit
  %.03390 = phi ptr [ %i.af, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit ], [ %.2.ph, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit.preheader ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.03390, i64 -1 ; 4 uses
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = and i8 %i.aj, 8
  %.not42 = icmp eq i8 %i.ak, 0
  br i1 %.not42, label %..critedge_crit_edge, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit, !llvm.loop !344

..critedge_crit_edge:                             ; preds = %.lr.ph91
  br label %.critedge, !llvm.loop !344

.critedge:                                        ; preds = %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit, %..critedge_crit_edge, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit.preheader
  %.033.lcssa = phi ptr [ %.2.ph, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit.preheader ], [ %.03390, %..critedge_crit_edge ], [ %i.af, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit ]
  store i8 0, ptr %.033.lcssa, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %bb.g

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit46:  ; preds = %.lr.ph
  %i.am = icmp ugt ptr %i.an, %0
  br i1 %i.am, label %.lr.ph, label %.critedge2, !llvm.loop !345

.lr.ph:                                           ; preds = %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit46.preheader, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit46
  %.088 = phi ptr [ %i.an, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit46 ], [ %.2.ph, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit46.preheader ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.088, i64 -1 ; 4 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = and i8 %i.ar, 8
  %.not41 = icmp eq i8 %i.as, 0
  br i1 %.not41, label %..critedge2_crit_edge, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit46, !llvm.loop !345

..critedge2_crit_edge:                            ; preds = %.lr.ph
  br label %.critedge2, !llvm.loop !345

.critedge2:                                       ; preds = %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit46, %..critedge2_crit_edge, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit46.preheader
  %.0.lcssa = phi ptr [ %.2.ph, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit46.preheader ], [ %.088, %..critedge2_crit_edge ], [ %i.an, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit46 ]
  store i8 0, ptr %.0.lcssa, align 1
  br label %bb.g

bb.f:                                             ; preds = %.split.loop.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %.backedge

bb.g:                                             ; preds = %.critedge2, %.critedge
  %.035 = phi ptr [ %i.al, %.critedge ], [ %.2.ph, %.critedge2 ]
  ret ptr %.035
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_8opt_trueENS1_9opt_falseES3_E5parseEPc(ptr noundef %0) unnamed_addr #19 align 2 {
bb.a:
  %1 = alloca %"struct.pugi::impl::(anonymous namespace)::gap", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ %.1.be, %.backedge ] ; 9 uses
  %i.a = load i8, ptr %.1, align 1                ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %.split.loop.exit, !prof !80

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 1
  %.not40 = icmp eq i8 %i.k, 0
  br i1 %.not40, label %bb.d, label %.split.loop.exit.loopexit.split.loop.exit, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 1
  %.not41 = icmp eq i8 %i.q, 0
  br i1 %.not41, label %bb.e, label %.split.loop.exit.loopexit.split.loop.exit68, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %.fr52 = freeze i8 %i.v
  %i.w = and i8 %.fr52, 1
  %.not42 = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br i1 %.not42, label %.backedge, label %..split.loop.exit.loopexit_crit_edge, !prof !80

.backedge:                                        ; preds = %bb.e, %bb.i, %bb.m
  %.1.be = phi ptr [ %i.x, %bb.e ], [ %i.au, %bb.i ], [ %i.bm, %bb.m ]
  br label %bb.b, !llvm.loop !346

..split.loop.exit.loopexit_crit_edge:             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 2 uses
  %.pre.pre = load i8, ptr %i.y, align 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit:        ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit68:      ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %.split.loop.exit.loopexit.split.loop.exit, %.split.loop.exit.loopexit.split.loop.exit68, %..split.loop.exit.loopexit_crit_edge
  %i.ab = phi i8 [ %.pre.pre, %..split.loop.exit.loopexit_crit_edge ], [ %i.m, %.split.loop.exit.loopexit.split.loop.exit68 ], [ %i.g, %.split.loop.exit.loopexit.split.loop.exit ], [ %i.a, %bb.b ]
  %.2.ph = phi ptr [ %i.y, %..split.loop.exit.loopexit_crit_edge ], [ %i.aa, %.split.loop.exit.loopexit.split.loop.exit68 ], [ %i.z, %.split.loop.exit.loopexit.split.loop.exit ], [ %.1, %bb.b ] ; 10 uses
  switch i8 %i.ab, label %bb.m [
    i8 60, label %bb.f
    i8 38, label %bb.i
    i8 0, label %bb.j
  ]

bb.f:                                             ; preds = %.split.loop.exit
  %i.ac = load ptr, ptr %1, align 8               ; 4 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = sub i64 0, %i.ae                        ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  %i.ah = ptrtoint ptr %.2.ph to i64
  %i.ai = ptrtoint ptr %i.ac to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.ac, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %.2.ph, i64 %i.af
  br label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit:    ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.ak, %bb.g ], [ %.2.ph, %bb.f ] ; 3 uses
  %i.al = icmp ugt ptr %.0.i, %0
  br i1 %i.al, label %.lr.ph92, label %.critedge

bb.h:                                             ; preds = %.lr.ph92
  %i.am = icmp ugt ptr %i.an, %0
  br i1 %i.am, label %.lr.ph92, label %.critedge, !llvm.loop !347

.lr.ph92:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit, %bb.h
  %.03591 = phi ptr [ %i.an, %bb.h ], [ %.0.i, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.03591, i64 -1 ; 4 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = and i8 %i.ar, 8
  %.not44 = icmp eq i8 %i.as, 0
  br i1 %.not44, label %..critedge_crit_edge94, label %bb.h, !llvm.loop !347

..critedge_crit_edge94:                           ; preds = %.lr.ph92
  br label %.critedge, !llvm.loop !347

.critedge:                                        ; preds = %bb.h, %..critedge_crit_edge94, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit
  %.035.lcssa = phi ptr [ %.0.i, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit ], [ %.03591, %..critedge_crit_edge94 ], [ %i.an, %bb.h ]
  store i8 0, ptr %.035.lcssa, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %bb.n

bb.i:                                             ; preds = %.split.loop.exit
  %i.au = call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_114strconv_escapeEPcRNS1_3gapE(ptr noundef nonnull %.2.ph, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %.backedge

bb.j:                                             ; preds = %.split.loop.exit
  %i.av = load ptr, ptr %1, align 8               ; 4 uses
  %.not.i46 = icmp eq ptr %i.av, null
  br i1 %.not.i46, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit48, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = sub i64 0, %i.ax                        ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %i.ay
  %i.ba = ptrtoint ptr %.2.ph to i64
  %i.bb = ptrtoint ptr %i.av to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull align 1 %i.av, i64 %i.bc, i1 false)
  %i.bd = getelementptr inbounds i8, ptr %.2.ph, i64 %i.ay
  br label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit48

_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit48:  ; preds = %bb.j, %bb.k
  %.0.i47 = phi ptr [ %i.bd, %bb.k ], [ %.2.ph, %bb.j ] ; 3 uses
  %i.be = icmp ugt ptr %.0.i47, %0
  br i1 %i.be, label %.lr.ph, label %.critedge2

bb.l:                                             ; preds = %.lr.ph
  %i.bf = icmp ugt ptr %i.bg, %0
  br i1 %i.bf, label %.lr.ph, label %.critedge2, !llvm.loop !348

.lr.ph:                                           ; preds = %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit48, %bb.l
  %.088 = phi ptr [ %i.bg, %bb.l ], [ %.0.i47, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit48 ] ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.088, i64 -1 ; 4 uses
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = and i8 %i.bk, 8
  %.not43 = icmp eq i8 %i.bl, 0
  br i1 %.not43, label %..critedge2_crit_edge89, label %bb.l, !llvm.loop !348

..critedge2_crit_edge89:                          ; preds = %.lr.ph
  br label %.critedge2, !llvm.loop !348

.critedge2:                                       ; preds = %bb.l, %..critedge2_crit_edge89, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit48
  %.0.lcssa = phi ptr [ %.0.i47, %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit48 ], [ %.088, %..critedge2_crit_edge89 ], [ %i.bg, %bb.l ]
  store i8 0, ptr %.0.lcssa, align 1
  br label %bb.n

bb.m:                                             ; preds = %.split.loop.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  br label %.backedge

bb.n:                                             ; preds = %.critedge2, %.critedge
  %.037 = phi ptr [ %i.at, %.critedge ], [ %.2.ph, %.critedge2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  ret ptr %.037
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZN4pugi4impl12_GLOBAL__N_119strconv_pcdata_implINS1_8opt_trueES3_NS1_9opt_falseEE5parseEPc(ptr noundef %0) unnamed_addr #19 align 2 {
bb.a:
  br label %.outer

.outer:                                           ; preds = %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit, %bb.a
  %.044.ph = phi ptr [ %i.be, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit ], [ %0, %bb.a ]
  %.sroa.0.0.ph = phi ptr [ %i.be, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit ], [ null, %bb.a ] ; 12 uses
  %.sroa.7.0.ph = phi i64 [ %i.bf, %_ZN4pugi4impl12_GLOBAL__N_13gap4pushERPcm.exit ], [ 0, %bb.a ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %.044 = phi ptr [ %.044.ph, %.outer ], [ %.044.be, %.backedge ] ; 3 uses
  %i.a = load i8, ptr %.044, align 1              ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %.not59 = icmp eq i8 %i.e, 0
  br i1 %.not59, label %.lr.ph, label %.split.loop.exit, !prof !79

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.160 = phi ptr [ %i.x, %bb.e ], [ %.044, %bb.b ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.160, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 1
  %.not21 = icmp eq i8 %i.k, 0
  br i1 %.not21, label %bb.c, label %.split.loop.exit.loopexit.split.loop.exit, !prof !80

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.160, i64 2
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 1
  %.not22 = icmp eq i8 %i.q, 0
  br i1 %.not22, label %bb.d, label %.split.loop.exit.loopexit.split.loop.exit70, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.160, i64 3
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not23 = icmp eq i8 %i.w, 0
  br i1 %.not23, label %bb.e, label %.split.loop.exit.loopexit.split.loop.exit73, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.160, i64 4 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 1
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %.lr.ph, label %.split.loop.exit, !prof !81

.split.loop.exit.loopexit.split.loop.exit:        ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.160, i64 1
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit70:      ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.160, i64 2
  br label %.split.loop.exit

.split.loop.exit.loopexit.split.loop.exit73:      ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.160, i64 3
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.e, %.split.loop.exit.loopexit.split.loop.exit, %.split.loop.exit.loopexit.split.loop.exit70, %.split.loop.exit.loopexit.split.loop.exit73, %bb.b
  %i.ag = phi i8 [ %i.a, %bb.b ], [ %i.s, %.split.loop.exit.loopexit.split.loop.exit73 ], [ %i.g, %.split.loop.exit.loopexit.split.loop.exit ], [ %i.m, %.split.loop.exit.loopexit.split.loop.exit70 ], [ %i.y, %bb.e ]
  %.2.ph = phi ptr [ %.044, %bb.b ], [ %i.af, %.split.loop.exit.loopexit.split.loop.exit73 ], [ %i.ad, %.split.loop.exit.loopexit.split.loop.exit ], [ %i.ae, %.split.loop.exit.loopexit.split.loop.exit70 ], [ %i.x, %bb.e ] ; 12 uses
  switch i8 %i.ag, label %bb.o [
    i8 60, label %bb.f
    i8 13, label %bb.i
    i8 0, label %bb.l
  ]

bb.f:                                             ; preds = %.split.loop.exit
  %.not.i = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_13gap5flushEPc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = sub i64 0, %.sroa.7.0.ph                ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4pugi4impl12_GLOBAL__N_118text_output_indentERNS1_19xml_buffered_writerEPKcmj:bb.a
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit: ; preds = %bb.d, %bb.e
  %.0.i36 = phi i64 [ 0, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i36 ; 2 uses
  store i8 %i.s, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.t, ptr %i.w, align 1
  %i.x = add nuw nsw i64 %.0.i36, 2               ; 2 uses
  store i64 %i.x, ptr %i.f, align 8
  %i.y = add nuw i32 %.03451, 1                   ; 2 uses
  %exitcond67.not = icmp eq i32 %i.y, %3
  br i1 %exitcond67.not, label %.loopexit, label %bb.d, !llvm.loop !366

bb.f:                                             ; preds = %.lr.ph50, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit
  %i.z = phi i64 [ %.pre70, %.lr.ph50 ], [ %i.ah, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit ] ; 3 uses
  %.03349 = phi i32 [ 0, %.lr.ph50 ], [ %i.ai, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit ]
  %i.aa = load i8, ptr %1, align 1
  %i.ab = load i8, ptr %i.b, align 1
  %i.ac = load i8, ptr %i.c, align 1
  %i.ad = icmp ugt i64 %i.z, 2045
  br i1 %i.ad, label %bb.g, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.z)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit: ; preds = %bb.f, %bb.g
  %.0.i37 = phi i64 [ 0, %bb.g ], [ %i.z, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i37 ; 3 uses
  store i8 %i.aa, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.ab, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 %i.ac, ptr %i.ag, align 1
  %i.ah = add nuw nsw i64 %.0.i37, 3              ; 2 uses
  store i64 %i.ah, ptr %i.d, align 8
  %i.ai = add nuw i32 %.03349, 1                  ; 2 uses
  %exitcond66.not = icmp eq i32 %i.ai, %3
  br i1 %exitcond66.not, label %.loopexit, label %bb.f, !llvm.loop !367

bb.h:                                             ; preds = %.lr.ph, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit
  %i.aj = phi i64 [ %.pre, %.lr.ph ], [ %i.an, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit ] ; 3 uses
  %.03248 = phi i32 [ 0, %.lr.ph ], [ %i.ao, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit ]
  %i.ak = load <4 x i8>, ptr %1, align 1
  %i.al = icmp ugt i64 %i.aj, 2044
  br i1 %i.al, label %bb.i, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.aj)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit: ; preds = %bb.h, %bb.i
  %.0.i38 = phi i64 [ 0, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i38
  store <4 x i8> %i.ak, ptr %i.am, align 1
  %i.an = add nuw nsw i64 %.0.i38, 4              ; 2 uses
  store i64 %i.an, ptr %i.a, align 8
  %i.ao = add nuw i32 %.03248, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !368

bb.j:                                             ; preds = %.lr.ph56, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit
  %.055 = phi i32 [ 0, %.lr.ph56 ], [ %i.bm, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit ]
  %i.ap = load i64, ptr %i.h, align 8             ; 3 uses
  %i.aq = add i64 %i.ap, %2                       ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 2049
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %1, i64 %2, i1 false)
  store i64 %i.aq, ptr %i.h, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit

bb.l:                                             ; preds = %bb.j
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ap)
  store i64 0, ptr %i.h, align 8
  br i1 %i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.j, align 8
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.n, label %.lr.ph.i.i

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.k, align 8, !nonnull !22, !align !121 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %1, i64 noundef %2), !inline_history !369
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit

.lr.ph.i.i:                                       ; preds = %bb.m, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i
  %.019.i.i = phi ptr [ %i.bh, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i ], [ %1, %bb.m ] ; 6 uses
  %.01418.i.i = phi i64 [ %i.bi, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i ], [ %2, %bb.m ]
  %i.az = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2047
  %i.ba = load i8, ptr %i.az, align 1
  %.not.i.i.i = icmp slt i8 %i.ba, -64
  br i1 %.not.i.i.i, label %.preheader.1.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

.preheader.1.i.i.i:                               ; preds = %.lr.ph.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2046
  %i.bc = load i8, ptr %i.bb, align 1
  %.not.1.i.i.i = icmp slt i8 %i.bc, -64
  br i1 %.not.1.i.i.i, label %.preheader.2.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

.preheader.2.i.i.i:                               ; preds = %.preheader.1.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2045
  %i.be = load i8, ptr %i.bd, align 1
  %.not.2.i.i.i = icmp slt i8 %i.be, -64
  br i1 %.not.2.i.i.i, label %.preheader.3.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

.preheader.3.i.i.i:                               ; preds = %.preheader.2.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2044
  %i.bg = load i8, ptr %i.bf, align 1
  %.not.3.i.i.i = icmp slt i8 %i.bg, -64
  %spec.select.i.i.i = select i1 %.not.3.i.i.i, i64 2048, i64 2044
  br label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i: ; preds = %.preheader.3.i.i.i, %.preheader.2.i.i.i, %.preheader.1.i.i.i, %.lr.ph.i.i
  %.3.i.i.i = phi i64 [ %spec.select.i.i.i, %.preheader.3.i.i.i ], [ 2047, %.lr.ph.i.i ], [ 2045, %.preheader.2.i.i.i ], [ 2046, %.preheader.1.i.i.i ] ; 3 uses
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.019.i.i, i64 noundef %.3.i.i.i)
  %i.bh = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 %.3.i.i.i ; 2 uses
  %i.bi = sub nuw i64 %.01418.i.i, %.3.i.i.i      ; 3 uses
  %i.bj = icmp ugt i64 %i.bi, 2048
  br i1 %i.bj, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !123

._crit_edge.i.i:                                  ; preds = %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i
  store i64 0, ptr %i.h, align 8
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i, %bb.l
  %.115.i.i = phi i64 [ %i.bi, %._crit_edge.i.i ], [ %2, %bb.l ] ; 2 uses
  %.1.i.i = phi ptr [ %i.bh, %._crit_edge.i.i ], [ %1, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(10260) %0, ptr align 1 %.1.i.i, i64 %.115.i.i, i1 false)
  %i.bk = load i64, ptr %i.h, align 8
  %i.bl = add i64 %i.bk, %.115.i.i
  store i64 %i.bl, ptr %i.h, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit: ; preds = %bb.k, %bb.n, %bb.o
  %i.bm = add nuw i32 %.055, 1                    ; 2 uses
  %exitcond69.not = icmp eq i32 %i.bm, %3
  br i1 %exitcond69.not, label %.loopexit, label %bb.j, !llvm.loop !370

.loopexit:                                        ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit, %.preheader45, %.preheader43, %.preheader41, %.preheader39, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_111text_outputERNS1_19xml_buffered_writerEPKcNS1_11chartypex_tEj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %1, i32 noundef range(i32 1, 3) %2, i32 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = and i32 %3, 16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %1)
  br label %_ZN4pugi4impl12_GLOBAL__N_119text_output_escapedERNS1_19xml_buffered_writerEPKcNS1_11chartypex_tEj.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1
  %.not75.i = icmp eq i8 %i.b, 0
  br i1 %.not75.i, label %_ZN4pugi4impl12_GLOBAL__N_119text_output_escapedERNS1_19xml_buffered_writerEPKcNS1_11chartypex_tEj.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10248 ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10256
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10240
  %i.f = and i32 %3, 512
  %.not47.i = icmp eq i32 %i.f, 0                 ; 2 uses
  %i.g = and i32 %3, 256
  %.not49.i = icmp eq i32 %i.g, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.af, %.preheader.lr.ph.i
  %.076.i = phi ptr [ %1, %.preheader.lr.ph.i ], [ %.3.ph.i, %bb.af ] ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.preheader.i
  %.1.i = phi ptr [ %i.ai, %bb.g ], [ %.076.i, %.preheader.i ] ; 9 uses
  %i.h = load i8, ptr %.1.i, align 1
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = and i32 %2, %i.l
  %.not43.i = icmp eq i32 %i.m, 0
  br i1 %.not43.i, label %bb.e, label %.split.loop.exit.i, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = and i32 %2, %i.s
  %.not44.i = icmp eq i32 %i.t, 0
  br i1 %.not44.i, label %bb.f, label %.split.loop.exit.i.split.loop.exit41, !prof !80

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = and i32 %2, %i.z
  %.not45.i = icmp eq i32 %i.aa, 0
  br i1 %.not45.i, label %bb.g, label %.split.loop.exit.i.split.loop.exit39, !prof !80

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i, i64 3
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %.fr.i = freeze i8 %i.af
  %i.ag = zext i8 %.fr.i to i32
  %i.ah = and i32 %2, %i.ag
  %.not46.i = icmp eq i32 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  br i1 %.not46.i, label %bb.d, label %.split.loop.exit.i.split.loop.exit37, !prof !80

.split.loop.exit.i.split.loop.exit37:             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.i, i64 3
  br label %.split.loop.exit.i

.split.loop.exit.i.split.loop.exit39:             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  br label %.split.loop.exit.i

.split.loop.exit.i.split.loop.exit41:             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %.split.loop.exit.i

.split.loop.exit.i:                               ; preds = %bb.d, %.split.loop.exit.i.split.loop.exit41, %.split.loop.exit.i.split.loop.exit39, %.split.loop.exit.i.split.loop.exit37
  %.2.ph.i = phi ptr [ %i.aj, %.split.loop.exit.i.split.loop.exit37 ], [ %i.ak, %.split.loop.exit.i.split.loop.exit39 ], [ %i.al, %.split.loop.exit.i.split.loop.exit41 ], [ %.1.i, %bb.d ] ; 3 uses
  %i.am = ptrtoint ptr %.2.ph.i to i64
  %i.an = ptrtoint ptr %.076.i to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = load i64, ptr %i.c, align 8             ; 3 uses
  %i.aq = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 2049
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split.loop.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 1 %.076.i, i64 %i.ao, i1 false)
  store i64 %i.aq, ptr %i.c, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i

bb.i:                                             ; preds = %.split.loop.exit.i
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ap)
  store i64 0, ptr %i.c, align 8
  %i.at = icmp ugt i64 %i.ao, 2048
  br i1 %i.at, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.au = load i32, ptr %i.d, align 8
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.k, label %.lr.ph.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.e, align 8, !nonnull !22, !align !121 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %.076.i, i64 noundef %i.ao), !inline_history !371
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i
  %.019.i.i.i = phi ptr [ %i.bi, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i ], [ %.076.i, %bb.j ] ; 6 uses
  %.01418.i.i.i = phi i64 [ %i.bj, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i ], [ %i.ao, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 2047
  %i.bb = load i8, ptr %i.ba, align 1
  %.not.i.i.i.i = icmp slt i8 %i.bb, -64
  br i1 %.not.i.i.i.i, label %.preheader.1.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i

.preheader.1.i.i.i.i:                             ; preds = %.lr.ph.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 2046
  %i.bd = load i8, ptr %i.bc, align 1
  %.not.1.i.i.i.i = icmp slt i8 %i.bd, -64
  br i1 %.not.1.i.i.i.i, label %.preheader.2.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i

.preheader.2.i.i.i.i:                             ; preds = %.preheader.1.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 2045
  %i.bf = load i8, ptr %i.be, align 1
  %.not.2.i.i.i.i = icmp slt i8 %i.bf, -64
  br i1 %.not.2.i.i.i.i, label %.preheader.3.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i

.preheader.3.i.i.i.i:                             ; preds = %.preheader.2.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 2044
  %i.bh = load i8, ptr %i.bg, align 1
  %.not.3.i.i.i.i = icmp slt i8 %i.bh, -64
  %spec.select.i.i.i.i = select i1 %.not.3.i.i.i.i, i64 2048, i64 2044
  br label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i

_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i: ; preds = %.preheader.3.i.i.i.i, %.preheader.2.i.i.i.i, %.preheader.1.i.i.i.i, %.lr.ph.i.i.i
  %.3.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.preheader.3.i.i.i.i ], [ 2047, %.lr.ph.i.i.i ], [ 2045, %.preheader.2.i.i.i.i ], [ 2046, %.preheader.1.i.i.i.i ] ; 3 uses
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.019.i.i.i, i64 noundef %.3.i.i.i.i)
  %i.bi = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 %.3.i.i.i.i ; 2 uses
  %i.bj = sub nuw i64 %.01418.i.i.i, %.3.i.i.i.i  ; 3 uses
  %i.bk = icmp ugt i64 %i.bj, 2048
  br i1 %i.bk, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !123

._crit_edge.i.i.i:                                ; preds = %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i.i
  store i64 0, ptr %i.c, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i, %bb.i
  %.115.i.i.i = phi i64 [ %i.bj, %._crit_edge.i.i.i ], [ %i.ao, %bb.i ] ; 2 uses
  %.1.i.i.i = phi ptr [ %i.bi, %._crit_edge.i.i.i ], [ %.076.i, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(10260) %0, ptr align 1 %.1.i.i.i, i64 %.115.i.i.i, i1 false)
  %i.bl = load i64, ptr %i.c, align 8
  %i.bm = add i64 %i.bl, %.115.i.i.i
  store i64 %i.bm, ptr %i.c, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.h
  %i.bn = load i8, ptr %.2.ph.i, align 1          ; 2 uses
  %i.bo = sext i8 %i.bn to i32                    ; 2 uses
  switch i8 %i.bn, label %bb.ac [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_119text_output_escapedERNS1_19xml_buffered_writerEPKcNS1_11chartypex_tEj.exit
    i8 38, label %bb.m
    i8 60, label %bb.o
    i8 62, label %bb.q
    i8 34, label %bb.s
    i8 39, label %bb.x
  ]

bb.m:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i
  %i.bp = load i64, ptr %i.c, align 8             ; 3 uses
  %i.bq = icmp ugt i64 %i.bp, 2043
  br i1 %i.bq, label %bb.n, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccccc.exit.i

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.bp)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccccc.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccccc.exit.i: ; preds = %bb.n, %bb.m
  %.0.i.i = phi i64 [ 0, %bb.n ], [ %i.bp, %bb.m ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i.i ; 2 uses
  store <4 x i8> <i8 38, i8 97, i8 109, i8 112>, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i8 59, ptr %i.bs, align 1
  %i.bt = add nuw nsw i64 %.0.i.i, 5
  br label %.sink.split

bb.o:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i
  %i.bu = load i64, ptr %i.c, align 8             ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 2044
  br i1 %i.bv, label %bb.p, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit.i

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.bu)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit.i: ; preds = %bb.p, %bb.o
  %.0.i51.i = phi i64 [ 0, %bb.p ], [ %i.bu, %bb.o ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i51.i
  store <4 x i8> <i8 38, i8 108, i8 116, i8 59>, ptr %i.bw, align 1
  %i.bx = add nuw nsw i64 %.0.i51.i, 4
  br label %.sink.split

bb.q:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i
  %i.by = load i64, ptr %i.c, align 8             ; 3 uses
  %i.bz = icmp ugt i64 %i.by, 2044
  br i1 %i.bz, label %bb.r, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit53.i

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.by)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit53.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccc.exit53.i: ; preds = %bb.r, %bb.q
  %.0.i52.i = phi i64 [ 0, %bb.r ], [ %i.by, %bb.q ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i52.i
  store <4 x i8> <i8 38, i8 103, i8 116, i8 59>, ptr %i.ca, align 1
  %i.cb = add nuw nsw i64 %.0.i52.i, 4
  br label %.sink.split

bb.s:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i
  %i.cc = load i64, ptr %i.c, align 8             ; 6 uses
  br i1 %.not47.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = icmp ugt i64 %i.cc, 2047
  br i1 %i.cd, label %bb.u, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.cc)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i: ; preds = %bb.u, %bb.t
  %.0.i54.i = phi i64 [ 0, %bb.u ], [ %i.cc, %bb.t ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i54.i
  store i8 34, ptr %i.ce, align 1
  %i.cf = add nuw nsw i64 %.0.i54.i, 1
  br label %.sink.split

bb.v:                                             ; preds = %bb.s
  %i.cg = icmp ugt i64 %i.cc, 2042
  br i1 %i.cg, label %bb.w, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit.i

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.cc)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit.i: ; preds = %bb.w, %bb.v
  %.0.i55.i = phi i64 [ 0, %bb.w ], [ %i.cc, %bb.v ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i55.i ; 3 uses
  store <4 x i8> <i8 38, i8 113, i8 117, i8 111>, ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i8 116, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 5
  store i8 59, ptr %i.cj, align 1
  %i.ck = add nuw nsw i64 %.0.i55.i, 6
  br label %.sink.split

bb.x:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_bufferEPKcm.exit.i
  %i.cl = load i64, ptr %i.c, align 8             ; 6 uses
  br i1 %.not47.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = icmp ugt i64 %i.cl, 2042
  br i1 %i.cm, label %bb.z, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit57.i

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.cl)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit57.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcccccc.exit57.i: ; preds = %bb.z, %bb.y
  %.0.i56.i = phi i64 [ 0, %bb.z ], [ %i.cl, %bb.y ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i56.i ; 3 uses
  store <4 x i8> <i8 38, i8 97, i8 112, i8 111>, ptr %i.cn, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i8 115, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 5
end_hunk_4
