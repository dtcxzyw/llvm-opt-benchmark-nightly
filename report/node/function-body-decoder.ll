inline.NumInlined: 6125
inline.NumDeleted: 1092
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %i.cge = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cgf = load ptr, ptr %i.cge, align 8          ; 2 uses
  %i.cgg = getelementptr inbounds i8, ptr %i.cgf, i64 -88
  %i.cgh = load i32, ptr %i.cgg, align 8          ; 4 uses
  %i.cgi = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cgj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 7 uses
  %i.cgk = load ptr, ptr %i.cgj, align 8          ; 4 uses
  %i.cgl = load ptr, ptr %i.cgi, align 8
  %i.cgm = ptrtoint ptr %i.cgk to i64
  %i.cgn = ptrtoint ptr %i.cgl to i64
  %i.cgo = sub i64 %i.cgm, %i.cgn
  %i.cgp = lshr exact i64 %i.cgo, 4
  %i.cgq = trunc i64 %i.cgp to i32                ; 4 uses
  %.not.i749 = icmp ult i32 %i.cgh, %i.cgq
  br i1 %.not.i749, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit754, label %bb.lf, !prof !6

end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %.sroa.3.0..sroa_idx.i752 = getelementptr inbounds i8, ptr %i.cgk, i64 -8
  %.sroa.3.0.copyload.i753 = load i32, ptr %.sroa.3.0..sroa_idx.i752, align 8
  %.sroa.3.0.copyload.i753.fr = freeze i32 %.sroa.3.0.copyload.i753
  %i.cgv = and i32 %.sroa.3.0.copyload.i753.fr, 16 ; 2 uses
  %62 = icmp ne i32 %i.cgv, 0
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit754.thread

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit754.thread: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit754, %bb.lg, %bb.lf
  %.pn24262803 = phi i1 [ false, %bb.lg ], [ %62, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit754 ], [ false, %bb.lf ]
  %63 = phi i32 [ %.pre2499, %bb.lg ], [ %i.cgh, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit754 ], [ %i.cgh, %bb.lf ]
  %64 = phi ptr [ %.pre2500, %bb.lg ], [ %i.cgk, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit754 ], [ %i.cgk, %bb.lf ]
  %.pre-phi26062802 = phi i32 [ %.pre2605, %bb.lg ], [ %i.cgq, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit754 ], [ %i.cgq, %bb.lf ]
  %65 = phi i32 [ 0, %bb.lg ], [ %i.cgv, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit754 ], [ 0, %bb.lf ] ; 2 uses
  %66 = or disjoint i32 %65, 3845                 ; 3 uses
  %i.cgw = add i32 %63, 1
  %.not.i.i781 = icmp ugt i32 %i.cgw, %.pre-phi26062802
  br i1 %.not.i.i781, label %bb.lh, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit784, !prof !12

bb.lh:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit754.thread
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %i.chh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.chi = load i8, ptr %i.chh, align 8, !range !8, !noundef !9
  %i.chj = trunc nuw i8 %i.chi to i1
  %.not2421 = xor i1 %i.chj, true
  %brmerge = or i1 %.pn24262803, %.not2421
  br i1 %brmerge, label %.critedge.i616, label %bb.lj, !prof !39

bb.lj:                                            ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1570
  %i.chk = tail call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.chg)
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %i.chm = and i32 %.sroa.24.0.copyload.i1567, 5
  %i.chn = icmp eq i32 %i.chm, 5
  %i.cho = select i1 %i.chn, i32 2565, i32 2561
  %i.chp = or disjoint i32 %i.cho, %65
  store ptr %i.chg, ptr %i.chl, align 8
  store i32 %i.chp, ptr %.sroa.24.0..sroa_idx.i1566, align 8
  %i.chq = load ptr, ptr %i.cgj, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %i.chs = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cht = load ptr, ptr %i.chs, align 8          ; 2 uses
  %i.chu = getelementptr inbounds i8, ptr %i.cht, i64 -88
  %i.chv = load i32, ptr %i.chu, align 8          ; 4 uses
  %i.chw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.chx = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 7 uses
  %i.chy = load ptr, ptr %i.chx, align 8          ; 4 uses
  %i.chz = load ptr, ptr %i.chw, align 8
  %i.cia = ptrtoint ptr %i.chy to i64
  %i.cib = ptrtoint ptr %i.chz to i64
  %i.cic = sub i64 %i.cia, %i.cib
  %i.cid = lshr exact i64 %i.cic, 4
  %i.cie = trunc i64 %i.cid to i32                ; 4 uses
  %.not.i = icmp ult i32 %i.chv, %i.cie
  br i1 %.not.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit, label %bb.ll, !prof !6

end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.chy, i64 -8
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.3.0.copyload.i.fr = freeze i32 %.sroa.3.0.copyload.i
  %i.cij = and i32 %.sroa.3.0.copyload.i.fr, 16   ; 2 uses
  %67 = icmp ne i32 %i.cij, 0
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit.thread

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit.thread: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit, %bb.lm, %bb.ll
  %.pn2811 = phi i1 [ false, %bb.lm ], [ %67, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit ], [ false, %bb.ll ]
  %68 = phi i32 [ %.pre2493, %bb.lm ], [ %i.chv, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit ], [ %i.chv, %bb.ll ]
  %69 = phi ptr [ %.pre2494, %bb.lm ], [ %i.chy, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit ], [ %i.chy, %bb.ll ]
  %.pre-phi26162810 = phi i32 [ %.pre2615, %bb.lm ], [ %i.cie, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit ], [ %i.cie, %bb.ll ]
  %70 = phi i32 [ 0, %bb.lm ], [ %i.cij, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit ], [ 0, %bb.ll ] ; 2 uses
  %71 = or disjoint i32 %70, 2565                 ; 3 uses
  %i.cik = add i32 %68, 1
  %.not.i.i778 = icmp ugt i32 %i.cik, %.pre-phi26162810
  br i1 %.not.i.i778, label %bb.ln, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit, !prof !12

bb.ln:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE4PeekEi.exit.thread
end_hunk_5
begin_hunk_6_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %i.civ = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ciw = load i8, ptr %i.civ, align 8, !range !8, !noundef !9
  %i.cix = trunc nuw i8 %i.ciw to i1
  %.not2422 = xor i1 %i.cix, true
  %brmerge2423 = or i1 %.pn2811, %.not2422
  br i1 %brmerge2423, label %.critedge.i621, label %bb.lp, !prof !39

bb.lp:                                            ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit1589
  %i.ciy = tail call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.ciu)
end_hunk_6
begin_hunk_7_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %i.cja = and i32 %.sroa.24.0.copyload.i1586, 5
  %i.cjb = icmp eq i32 %i.cja, 5
  %i.cjc = select i1 %i.cjb, i32 3845, i32 3841
  %i.cjd = or disjoint i32 %i.cjc, %70
  store ptr %i.ciu, ptr %i.ciz, align 8
  store i32 %i.cjd, ptr %.sroa.24.0..sroa_idx.i1585, align 8
  %i.cje = load ptr, ptr %i.chx, align 8
end_hunk_7
