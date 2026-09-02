Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm:bb.a
  %i.dy = shl i64 %n.vec41, 1
  %i.dz = getelementptr i8, ptr %.ptr13, i64 %i.dy
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 2 uses
  %i.ea = shl i64 %index42, 1
  %next.gep43 = getelementptr i8, ptr %.ptr13, i64 %i.ea ; 2 uses
  %wide.load44 = load <8 x i16>, ptr %next.gep43, align 8, !tbaa !135
  %i.eb = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load44)
  store <8 x i16> %i.eb, ptr %next.gep43, align 8, !tbaa !135
  %index.next45 = add nuw i64 %index42, 8         ; 2 uses
  %i.ec = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.ec, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !637

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %i.dp, %n.vec41
  br i1 %cmp.n46, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.ph = phi ptr [ %.ptr13, %iter.check ], [ %i.ds, %vec.epilog.iter.check ], [ %i.dz, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.ee, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ed = load i16, ptr %.012.i.i, align 2, !tbaa !135
  %rev.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.ed)
  store i16 %rev.i.i.i, ptr %.012.i.i, align 2, !tbaa !135
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 2 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ee, %.2.i.i.i.ptr.le
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i.i, !llvm.loop !638

_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i: ; preds = %.lr.ph.i.i, %middle.block38, %vec.epilog.middle.block, %_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf16_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i
  %gepdiff = add nsw i64 %.2.i.i.i.idx, -2048
  br label %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit

bb.t:                                             ; preds = %bb.d
  %i.ef = add i32 %i.c, -5
  %or.cond3.i = icmp ult i32 %i.ef, 2
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eg = icmp ne i32 %i.c, 5
  %i.eh = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf32_writerEEENT_10value_typeEPKhmS6_S5_(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef nonnull %.ptr13) ; 4 uses
  %.not11.i22.i = icmp ne ptr %.ptr13, %i.eh
  %or.cond.not.i23.i = and i1 %i.eg, %.not11.i22.i
  br i1 %or.cond.not.i23.i, label %.lr.ph.i24.i.preheader, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i

.lr.ph.i24.i.preheader:                           ; preds = %bb.u
  %i.ei = ptrtoaddr ptr %i.eh to i64
  %i.ej = ptrtoaddr ptr %0 to i64
  %i.ek = add i64 %i.ei, -2052
  %i.el = sub i64 %i.ek, %i.ej                    ; 2 uses
  %i.em = lshr i64 %i.el, 2
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.el, 28
  br i1 %min.iters.check, label %.lr.ph.i24.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i24.i.preheader
  %n.vec = and i64 %i.en, 9223372036854775800     ; 3 uses
  %i.eo = shl i64 %n.vec, 2
  %i.ep = getelementptr i8, ptr %.ptr13, i64 %i.eo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.ptr13, i64 %i.eq ; 3 uses
  %i.er = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 8, !tbaa !136
  %wide.load26 = load <4 x i32>, ptr %i.er, align 8, !tbaa !136
  %i.es = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.et = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load26)
  store <4 x i32> %i.es, ptr %next.gep, align 8, !tbaa !136
  store <4 x i32> %i.et, ptr %i.er, align 8, !tbaa !136
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !639

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.en, %n.vec
  br i1 %cmp.n, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i24.i.preheader48

.lr.ph.i24.i.preheader48:                         ; preds = %.lr.ph.i24.i.preheader, %middle.block
  %.012.i25.i.ph = phi ptr [ %.ptr13, %.lr.ph.i24.i.preheader ], [ %i.ep, %middle.block ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader48, %.lr.ph.i24.i
  %.012.i25.i = phi ptr [ %i.ex, %.lr.ph.i24.i ], [ %.012.i25.i.ph, %.lr.ph.i24.i.preheader48 ] ; 3 uses
  %i.ev = load i32, ptr %.012.i25.i, align 4, !tbaa !136
  %i.ew = tail call noundef i32 @llvm.bswap.i32(i32 %i.ev)
  store i32 %i.ew, ptr %.012.i25.i, align 4, !tbaa !136
  %i.ex = getelementptr inbounds nuw i8, ptr %.012.i25.i, i64 4 ; 2 uses
  %.not.i26.i = icmp eq ptr %i.ex, %i.eh
  br i1 %.not.i26.i, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i24.i, !llvm.loop !640

_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i: ; preds = %.lr.ph.i24.i, %middle.block, %bb.u
  %i.ey = ptrtoint ptr %i.eh to i64
  %i.ez = ptrtoint ptr %.ptr13 to i64
  %i.fa = sub i64 %i.ey, %i.ez
  br label %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit

bb.v:                                             ; preds = %bb.t
  %i.fb = icmp eq i32 %i.c, 9
  br i1 %i.fb, label %.preheader.i, label %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit

.preheader.i:                                     ; preds = %bb.v, %.critedge.i.i30.i
  %.074.i.i.i = phi ptr [ %.2.i.i33.i, %.critedge.i.i30.i ], [ %.ptr13, %bb.v ] ; 9 uses
  %.06073.i.i.i = phi i64 [ %.262.i.i32.i, %.critedge.i.i30.i ], [ %2, %bb.v ] ; 8 uses
  %.06372.i.i.i = phi ptr [ %.265.i.i31.i, %.critedge.i.i30.i ], [ %1, %bb.v ] ; 12 uses
  %i.fc = load i8, ptr %.06372.i.i.i, align 1, !tbaa !86 ; 4 uses
  %i.fd = zext i8 %i.fc to i32                    ; 5 uses
  %i.fe = icmp sgt i8 %i.fc, -1
  br i1 %i.fe, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.preheader.i
  store i8 %i.fc, ptr %.074.i.i.i, align 1, !tbaa !86
  %i.ff = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1 ; 3 uses
  %i.fh = add i64 %.06073.i.i.i, -1               ; 3 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = and i64 %i.fi, 3
  %i.fk = icmp eq i64 %i.fj, 0
  %i.fl = icmp ugt i64 %i.fh, 3
  %or.cond7.i.i35.i = and i1 %i.fl, %i.fk
  br i1 %or.cond7.i.i35.i, label %.preheader.i.i36.i, label %.critedge.i.i30.i

.preheader.i.i36.i:                               ; preds = %bb.w, %bb.x
  %.164.i.i37.i = phi ptr [ %i.ga, %bb.x ], [ %i.fg, %bb.w ] ; 6 uses
  %.161.i.i38.i = phi i64 [ %i.gb, %bb.x ], [ %i.fh, %bb.w ] ; 2 uses
  %.1.i.i39.i = phi ptr [ %i.fz, %bb.x ], [ %i.ff, %bb.w ] ; 6 uses
  %i.fm = load i32, ptr %.164.i.i37.i, align 4    ; 2 uses
  %i.fn = and i32 %i.fm, -2139062144
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.x, label %.critedge.i.i30.i

bb.x:                                             ; preds = %.preheader.i.i36.i
  %i.fp = trunc i32 %i.fm to i8
  store i8 %i.fp, ptr %.1.i.i39.i, align 1, !tbaa !86
  %i.fq = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !86
  store i8 %i.fs, ptr %i.fq, align 1, !tbaa !86
  %i.ft = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 2
  %i.fu = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 2
  %i.fv = load i8, ptr %i.fu, align 2, !tbaa !86
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !86
  %i.fw = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 3
  %i.fx = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 3
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !86
  store i8 %i.fy, ptr %i.fw, align 1, !tbaa !86
  %i.fz = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 4 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 4 ; 2 uses
  %i.gb = add i64 %.161.i.i38.i, -4               ; 3 uses
  %.old6.i.i40.i = icmp ugt i64 %i.gb, 3
  br i1 %.old6.i.i40.i, label %.preheader.i.i36.i, label %.critedge.i.i30.i

bb.y:                                             ; preds = %.preheader.i
  %i.gc = and i32 %i.fd, 224
  %i.gd = icmp eq i32 %i.gc, 192
  %i.ge = icmp ne i64 %.06073.i.i.i, 1
  %or.cond.i.i27.i = and i1 %i.ge, %i.gd
  br i1 %or.cond.i.i27.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.gf = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !86  ; 2 uses
  %i.gh = icmp slt i8 %i.gg, -64
  br i1 %i.gh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gi = shl i8 %i.fc, 6
  %i.gj = and i8 %i.gg, 63
  %i.gk = or disjoint i8 %i.gj, %i.gi
  %i.gl = and i32 %i.fd, 28
  %.not71.i.i.i = icmp eq i32 %i.gl, 0
  %i.gm = select i1 %.not71.i.i.i, i8 %i.gk, i8 63
  store i8 %i.gm, ptr %.074.i.i.i, align 1, !tbaa !86
  %i.gn = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 1
  %i.go = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 2
  %i.gp = add i64 %.06073.i.i.i, -2
  br label %.critedge.i.i30.i

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.gq = and i32 %i.fd, 240
  %i.gr = icmp eq i32 %i.gq, 224
  %i.gs = icmp ugt i64 %.06073.i.i.i, 2
  %or.cond3.i.i28.i = and i1 %i.gs, %i.gr
  br i1 %or.cond3.i.i28.i, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !86
  %i.gv = zext i8 %i.gu to i32                    ; 2 uses
  %i.gw = and i32 %i.gv, 192
  %i.gx = icmp eq i32 %i.gw, 128
  br i1 %i.gx, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gy = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 2
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !86  ; 2 uses
  %3 = icmp slt i8 %i.gz, -64
  br i1 %3, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ha = shl nuw nsw i32 %i.fd, 12
  %i.hb = and i32 %i.ha, 61440
  %i.hc = shl nuw nsw i32 %i.gv, 6                ; 2 uses
  %i.hd = and i32 %i.hc, 3840
  %i.he = or disjoint i32 %i.hd, %i.hb
  %4 = and i8 %i.gz, 63
  %.not75.i.i.i = icmp eq i32 %i.he, 0
  %5 = trunc i32 %i.hc to i8
  %6 = or disjoint i8 %4, %5
  %i.hf = select i1 %.not75.i.i.i, i8 %6, i8 63
  store i8 %i.hf, ptr %.074.i.i.i, align 1, !tbaa !86
  %i.hg = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 3
  %i.hi = add i64 %.06073.i.i.i, -3
  br label %.critedge.i.i30.i

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.hj = and i32 %i.fd, 248
  %i.hk = icmp eq i32 %i.hj, 240
  %i.hl = icmp ugt i64 %.06073.i.i.i, 3
  %or.cond5.i.i29.i = and i1 %i.hl, %i.hk
  br i1 %or.cond5.i.i29.i, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.hm = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !86
  %i.ho = icmp slt i8 %i.hn, -64
  br i1 %i.ho, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.hp = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 2
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !86
  %i.hr = icmp slt i8 %i.hq, -64
  br i1 %i.hr, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.hs = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 3
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !86
  %i.hu = icmp slt i8 %i.ht, -64
  br i1 %i.hu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i8 63, ptr %.074.i.i.i, align 1, !tbaa !86
  %i.hv = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 1
  %i.hw = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 4
  %i.hx = add i64 %.06073.i.i.i, -4
  br label %.critedge.i.i30.i

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.hy = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1
  %i.hz = add i64 %.06073.i.i.i, -1
  br label %.critedge.i.i30.i

.critedge.i.i30.i:                                ; preds = %bb.x, %.preheader.i.i36.i, %bb.ak, %bb.aj, %bb.ae, %bb.aa, %bb.w
  %.265.i.i31.i = phi ptr [ %i.hw, %bb.aj ], [ %i.hy, %bb.ak ], [ %i.fg, %bb.w ], [ %i.go, %bb.aa ], [ %i.hh, %bb.ae ], [ %i.ga, %bb.x ], [ %.164.i.i37.i, %.preheader.i.i36.i ]
  %.262.i.i32.i = phi i64 [ %i.hx, %bb.aj ], [ %i.hz, %bb.ak ], [ %i.fh, %bb.w ], [ %i.gp, %bb.aa ], [ %i.hi, %bb.ae ], [ %i.gb, %bb.x ], [ %.161.i.i38.i, %.preheader.i.i36.i ] ; 2 uses
  %.2.i.i33.i = phi ptr [ %i.hv, %bb.aj ], [ %.074.i.i.i, %bb.ak ], [ %i.ff, %bb.w ], [ %i.gn, %bb.aa ], [ %i.hg, %bb.ae ], [ %i.fz, %bb.x ], [ %.1.i.i39.i, %.preheader.i.i36.i ] ; 2 uses
  %.not.i.i34.i = icmp eq i64 %.262.i.i32.i, 0
  br i1 %.not.i.i34.i, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_13latin1_writerEEEmNT0_10value_typeEPKcmT_S5_.exit.i, label %.preheader.i, !llvm.loop !641

_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_13latin1_writerEEEmNT0_10value_typeEPKcmT_S5_.exit.i: ; preds = %.critedge.i.i30.i
  %i.ia = ptrtoint ptr %.2.i.i33.i to i64
  %i.ib = ptrtoint ptr %.ptr13 to i64
  %i.ic = sub i64 %i.ia, %i.ib
  br label %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit

_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, %bb.v, %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_13latin1_writerEEEmNT0_10value_typeEPKcmT_S5_.exit.i
  %.0.i = phi i64 [ %gepdiff, %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i ], [ %i.fa, %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i ], [ %i.ic, %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_13latin1_writerEEEmNT0_10value_typeEPKcmT_S5_.exit.i ], [ 0, %bb.v ]
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 10240
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !153, !nonnull !123, !align !154 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !65
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8
  tail call void %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, ptr noundef nonnull %.ptr13, i64 noundef %.0.i)
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf32_writerEEENT_10value_typeEPKhmS6_S5_(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull writeonly captures(ret: address, provenance) %2) unnamed_addr #31 align 2 {
bb.a:
  %.not71 = icmp eq i64 %1, 0
  br i1 %.not71, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.074 = phi ptr [ %.2, %.critedge ], [ %2, %bb.a ] ; 9 uses
  %.06073 = phi i64 [ %.262, %.critedge ], [ %1, %bb.a ] ; 8 uses
  %.06372 = phi ptr [ %.265, %.critedge ], [ %0, %bb.a ] ; 12 uses
  %i.a = load i8, ptr %.06372, align 1, !tbaa !86 ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 7 uses
  %i.c = icmp sgt i8 %i.a, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  store i32 %i.b, ptr %.074, align 4, !tbaa !136
  %i.d = getelementptr inbounds nuw i8, ptr %.074, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06372, i64 1 ; 3 uses
  %i.f = add i64 %.06073, -1                      ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = and i64 %i.g, 3
  %i.i = icmp eq i64 %i.h, 0
  %i.j = icmp ugt i64 %i.f, 3
  %or.cond7 = and i1 %i.j, %i.i
  br i1 %or.cond7, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b, %bb.c
  %.164 = phi ptr [ %i.ab, %bb.c ], [ %i.e, %bb.b ] ; 6 uses
  %.161 = phi i64 [ %i.ac, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %i.aa, %bb.c ], [ %i.d, %bb.b ] ; 6 uses
  %i.k = load i32, ptr %.164, align 4             ; 2 uses
  %i.l = and i32 %i.k, -2139062144
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader
  %i.n = and i32 %i.k, 127
  store i32 %i.n, ptr %.1, align 4, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %.164, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !86
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.o, align 4, !tbaa !136
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.164, i64 2
  %i.u = load i8, ptr %i.t, align 2, !tbaa !86
  %i.v = zext i8 %i.u to i32
  store i32 %i.v, ptr %i.s, align 4, !tbaa !136
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %.164, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !86
  %i.z = zext i8 %i.y to i32
  store i32 %i.z, ptr %i.w, align 4, !tbaa !136
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.164, i64 4 ; 2 uses
  %i.ac = add i64 %.161, -4                       ; 3 uses
  %.old6 = icmp ugt i64 %i.ac, 3
  br i1 %.old6, label %.preheader, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.ad = and i32 %i.b, 224
  %i.ae = icmp eq i32 %i.ad, 192
  %i.af = icmp ne i64 %.06073, 1
  %or.cond = and i1 %i.af, %i.ae
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.06372, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !86
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = and i32 %i.ai, 192
  %i.ak = icmp eq i32 %i.aj, 128
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = shl nuw nsw i32 %i.b, 6
  %i.am = and i32 %i.al, 1984
  %i.an = and i32 %i.ai, 63
  %i.ao = or disjoint i32 %i.an, %i.am
  store i32 %i.ao, ptr %.074, align 4, !tbaa !136
  %i.ap = getelementptr inbounds nuw i8, ptr %.074, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.06372, i64 2
  %i.ar = add i64 %.06073, -2
  br label %.critedge

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.as = and i32 %i.b, 240
  %i.at = icmp eq i32 %i.as, 224
  %i.au = icmp ugt i64 %.06073, 2
  %or.cond3 = and i1 %i.au, %i.at
  br i1 %or.cond3, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.06372, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !86
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = and i32 %i.ax, 192
  %i.az = icmp eq i32 %i.ay, 128
  br i1 %i.az, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.06372, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !86
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = and i32 %i.bc, 192
  %i.be = icmp eq i32 %i.bd, 128
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = shl nuw nsw i32 %i.b, 12
  %i.bg = and i32 %i.bf, 61440
  %i.bh = shl nuw nsw i32 %i.ax, 6
  %i.bi = and i32 %i.bh, 4032
  %i.bj = or disjoint i32 %i.bi, %i.bg
  %i.bk = and i32 %i.bc, 63
  %i.bl = or disjoint i32 %i.bj, %i.bk
  store i32 %i.bl, ptr %.074, align 4, !tbaa !136
  %i.bm = getelementptr inbounds nuw i8, ptr %.074, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.06372, i64 3
  %i.bo = add i64 %.06073, -3
  br label %.critedge

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bp = and i32 %i.b, 248
  %i.bq = icmp eq i32 %i.bp, 240
  %i.br = icmp ugt i64 %.06073, 3
  %or.cond5 = and i1 %i.br, %i.bq
  br i1 %or.cond5, label %bb.l, label %bb.p

end_hunk_0
