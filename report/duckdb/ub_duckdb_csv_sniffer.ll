inline.NumInlined: 6648
inline.NumDeleted: 2471
begin_hunk_0_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a

bb.bh:                                            ; preds = %bb.bg
  %i.ky = zext nneg i8 %i.kw to i64               ; 2 uses
  %32 = xor i64 %i.ky, 9223372036854775806
  %i.kz = udiv i64 %32, 10
  %i.la = icmp sgt i64 %i.kt, %i.kz
  br i1 %i.la, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb1ELb1EEEbRT_h.exit.i.i.i, label %bb.bi, !prof !157
end_hunk_0
begin_hunk_1_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a
bb.cf:                                            ; preds = %bb.ce, %bb.cc, %.lr.ph.i
  %.128.i.i21.i = phi i64 [ %i.ot, %bb.ce ], [ %i.op, %bb.cc ], [ %i.nt, %.lr.ph.i ] ; 3 uses
  %i.pc = zext i8 %.0.i.i20.i to i64              ; 2 uses
  %33 = lshr i64 %i.pc, 4
  %34 = xor i64 %33, 576460752303423487
  %.not41.i.i.i = icmp sgt i64 %i.on, %34
  br i1 %.not41.i.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIaEELb0EEEbRT_h.exit.i.i.i, !prof !157

end_hunk_1
begin_hunk_2_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a

bb.ct:                                            ; preds = %bb.cs
  %i.sf = zext nneg i8 %i.sd to i64               ; 2 uses
  %35 = xor i64 %i.sf, 9223372036854775806
  %i.sg = udiv i64 %35, 10
  %i.sh = icmp sgt i64 %i.sa, %i.sg
  br i1 %i.sh, label %_ZN6duckdb27IntegerDecimalCastOperation13HandleDecimalINS_22IntegerDecimalCastDataIaEELb0ELb1EEEbRT_h.exit.i.i.i, label %bb.cu, !prof !157
end_hunk_2
begin_hunk_3_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a
bb.dg:                                            ; preds = %.lr.ph.i80.i.i
  %i.tt = add nuw i64 %.089138.i.i.i, 1           ; 3 uses
  %i.tu = zext nneg i8 %i.rp to i64               ; 2 uses
  %36 = xor i64 %i.tu, 9223372036854775806
  %i.tv = udiv i64 %36, 10
  %.not.i86.i.i = icmp sgt i64 %i.rm, %i.tv
  br i1 %.not.i86.i.i, label %_ZN6duckdbL14TryIntegerCastINS_22IntegerDecimalCastDataIaEELb1ELb1ENS_27IntegerDecimalCastOperationELb1ELc46EEEbPKcmRT_b.exit.thread.i, label %bb.dh, !prof !157
end_hunk_3
begin_hunk_4_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a
bb.dy:                                            ; preds = %bb.dx, %bb.dv, %bb.du
  %.128.i.i.i165 = phi i64 [ %i.wo, %bb.dx ], [ %i.wk, %bb.dv ], [ %i.vx, %bb.du ] ; 2 uses
  %i.wx = sext i16 %i.vz to i32
  %37 = lshr i8 %.0.i.i.i163, 4
  %.lhs.trunc.i.i.i.i166 = zext nneg i8 %37 to i32
  %.zext.i.i.i.i = xor i32 %.lhs.trunc.i.i.i.i166, 2047
  %.not40.i.i.i167 = icmp slt i32 %.zext.i.i.i.i, %i.wx
  br i1 %.not40.i.i.i167, label %.lr.ph.i8.i133.preheader, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.i.i.i, !prof !157

end_hunk_4
begin_hunk_5_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a

bb.ei:                                            ; preds = %.lr.ph.split.us.i50.i.i
  %i.yb = zext nneg i8 %i.xz to i16               ; 2 uses
  %.lhs.trunc.i.us.i53.i.i = xor i16 %i.yb, 32766
  %i.yc = udiv i16 %.lhs.trunc.i.us.i53.i.i, 10
  %.not.us.i54.i.i = icmp slt i16 %i.yc, %.sroa.034.0.i
  br i1 %.not.us.i54.i.i, label %.lr.ph.i8.i133.preheader, label %_ZN6duckdb20IntegerCastOperation11HandleDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.us.i.i.i, !prof !157
end_hunk_5
begin_hunk_6_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a
bb.ev:                                            ; preds = %bb.eu, %bb.es, %bb.er
  %.128.i.i22.i = phi i64 [ %i.aae, %bb.eu ], [ %i.aaa, %bb.es ], [ %i.zn, %bb.er ] ; 2 uses
  %i.aan = zext i8 %.0.i.i21.i to i64             ; 2 uses
  %38 = lshr i64 %i.aan, 4
  %39 = xor i64 %38, 576460752303423487
  %.not41.i.i.i143 = icmp sgt i64 %i.zp, %39
  br i1 %.not41.i.i.i143, label %_ZN6duckdbL17TryCastStringBoolEPKcmRbb.exit, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIsEELb0EEEbRT_h.exit.i.i.i, !prof !157

end_hunk_6
begin_hunk_7_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a

bb.fg:                                            ; preds = %.preheader.i.i.i
  %i.aca = zext nneg i8 %i.abs to i64             ; 2 uses
  %40 = xor i64 %i.aca, 9223372036854775806
  %i.acb = udiv i64 %40, 10
  %.not.i82.i.i = icmp sgt i64 %.sroa.0.0.i136, %i.acb
  br i1 %.not.i82.i.i, label %_ZN6duckdbL17TryCastStringBoolEPKcmRbb.exit, label %bb.fh, !prof !157
end_hunk_7
begin_hunk_8_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a
bb.fw:                                            ; preds = %bb.fv, %bb.ft, %bb.fs
  %.128.i.i.i248 = phi i64 [ %i.adu, %bb.fv ], [ %i.adq, %bb.ft ], [ %i.add, %bb.fs ] ; 2 uses
  %i.aed = zext i8 %.0.i.i.i246 to i32            ; 2 uses
  %41 = lshr i32 %i.aed, 4
  %42 = xor i32 %41, 134217727
  %.not40.i.i.i249 = icmp sgt i32 %i.adf, %42
  br i1 %.not40.i.i.i249, label %.lr.ph.i8.i181.preheader, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIiEELb0EEEbRT_h.exit.i.i.i, !prof !157

end_hunk_8
begin_hunk_9_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a

bb.gh:                                            ; preds = %.preheader.i.i.i233
  %i.afm = zext nneg i8 %i.afe to i32             ; 2 uses
  %43 = xor i32 %i.afm, 2147483646
  %i.afn = udiv i32 %43, 10
  %.not.not.i.not.i.i = icmp sgt i32 %.sroa.035.0.i, %i.afn
  br i1 %.not.not.i.not.i.i, label %.lr.ph.i8.i181.preheader, label %bb.gi, !prof !157
end_hunk_9
begin_hunk_10_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a
bb.gv:                                            ; preds = %bb.gu, %bb.gs, %bb.gr
  %.128.i.i21.i213 = phi i64 [ %i.ahj, %bb.gu ], [ %i.ahf, %bb.gs ], [ %i.ags, %bb.gr ] ; 2 uses
  %i.ahs = zext i8 %.0.i.i20.i211 to i64          ; 2 uses
  %44 = lshr i64 %i.ahs, 4
  %45 = xor i64 %44, 576460752303423487
  %.not41.i.i.i214 = icmp sgt i64 %i.agu, %45
  br i1 %.not41.i.i.i214, label %_ZN6duckdbL17TryCastStringBoolEPKcmRbb.exit, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIiEELb0EEEbRT_h.exit.i.i.i, !prof !157

end_hunk_10
begin_hunk_11_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a

bb.hg:                                            ; preds = %.preheader.i.i13.i
  %i.ajf = zext nneg i8 %i.aix to i64             ; 2 uses
  %46 = xor i64 %i.ajf, 9223372036854775806
  %i.ajg = udiv i64 %46, 10
  %.not.i82.i.i194 = icmp sgt i64 %.sroa.0.0.i187, %i.ajg
  br i1 %.not.i82.i.i194, label %_ZN6duckdbL17TryCastStringBoolEPKcmRbb.exit, label %bb.hh, !prof !157
end_hunk_11
begin_hunk_12_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a
bb.hw:                                            ; preds = %bb.hv, %bb.ht, %bb.hs
  %.128.i.i.i352 = phi i64 [ %i.akz, %bb.hv ], [ %i.akv, %bb.ht ], [ %i.aki, %bb.hs ] ; 2 uses
  %i.ali = zext i8 %.0.i.i.i350 to i64            ; 2 uses
  %47 = lshr i64 %i.ali, 4
  %48 = xor i64 %47, 576460752303423487
  %.not40.i.i.i353 = icmp sgt i64 %i.akk, %48
  br i1 %.not40.i.i.i353, label %.lr.ph.i8.i273.preheader, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_15IntegerCastDataIlEELb0EEEbRT_h.exit.i.i.i, !prof !157

end_hunk_12
begin_hunk_13_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a

bb.ih:                                            ; preds = %.preheader.i.i.i329
  %i.amr = zext nneg i8 %i.amj to i64             ; 2 uses
  %49 = xor i64 %i.amr, 9223372036854775806
  %i.ams = udiv i64 %49, 10
  %.not.not.i.not.i.i336 = icmp sgt i64 %.sroa.035.0.i330, %i.ams
  br i1 %.not.not.i.not.i.i336, label %.lr.ph.i8.i273.preheader, label %bb.ii, !prof !157
end_hunk_13
begin_hunk_14_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a
bb.iv:                                            ; preds = %bb.iu, %bb.is, %bb.ir
  %.128.i.i21.i306 = phi i64 [ %i.aoo, %bb.iu ], [ %i.aok, %bb.is ], [ %i.anx, %bb.ir ] ; 2 uses
  %i.aox = zext i8 %.0.i.i20.i304 to i64          ; 2 uses
  %50 = lshr i64 %i.aox, 4
  %51 = xor i64 %50, 576460752303423487
  %.not41.i.i.i307 = icmp sgt i64 %i.anz, %51
  br i1 %.not41.i.i.i307, label %_ZN6duckdbL17TryCastStringBoolEPKcmRbb.exit, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIlEELb0EEEbRT_h.exit.i.i.i, !prof !157

end_hunk_14
begin_hunk_15_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a

bb.jg:                                            ; preds = %.preheader.i.i13.i279
  %i.aqk = zext nneg i8 %i.aqc to i64             ; 2 uses
  %52 = xor i64 %i.aqk, 9223372036854775806
  %i.aql = udiv i64 %52, 10
  %.not.i82.i.i287 = icmp sgt i64 %.sroa.0.0.i280, %i.aql
  br i1 %.not.i82.i.i287, label %_ZN6duckdbL17TryCastStringBoolEPKcmRbb.exit, label %bb.jh, !prof !157
end_hunk_15
begin_hunk_16_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a
bb.ku:                                            ; preds = %bb.kt, %bb.kr, %bb.kq
  %.128.i.i21.i403 = phi i64 [ %i.avo, %bb.kt ], [ %i.avk, %bb.kr ], [ %i.aux, %bb.kq ] ; 2 uses
  %i.avx = zext i8 %.0.i.i20.i401 to i64          ; 2 uses
  %53 = lshr i64 %i.avx, 4
  %54 = xor i64 %53, 576460752303423487
  %.not41.i.i.i404 = icmp sgt i64 %i.auz, %54
  br i1 %.not41.i.i.i404, label %_ZN6duckdbL17TryCastStringBoolEPKcmRbb.exit, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIhEELb0EEEbRT_h.exit.i.i.i, !prof !157

end_hunk_16
begin_hunk_17_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a

bb.lf:                                            ; preds = %.preheader.i.i13.i376
  %i.axk = zext nneg i8 %i.axc to i64             ; 2 uses
  %55 = xor i64 %i.axk, 9223372036854775806
  %i.axl = udiv i64 %55, 10
  %.not.i82.i.i384 = icmp sgt i64 %.sroa.0.0.i377, %i.axl
  br i1 %.not.i82.i.i384, label %_ZN6duckdbL17TryCastStringBoolEPKcmRbb.exit, label %bb.lg, !prof !157
end_hunk_17
begin_hunk_18_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a
bb.mt:                                            ; preds = %bb.ms, %bb.mq, %bb.mp
  %.128.i.i21.i500 = phi i64 [ %i.bcr, %bb.ms ], [ %i.bcn, %bb.mq ], [ %i.bca, %bb.mp ] ; 2 uses
  %i.bda = zext i8 %.0.i.i20.i498 to i64          ; 2 uses
  %56 = lshr i64 %i.bda, 4
  %57 = xor i64 %56, 576460752303423487
  %.not41.i.i.i501 = icmp sgt i64 %i.bcc, %57
  br i1 %.not41.i.i.i501, label %_ZN6duckdbL17TryCastStringBoolEPKcmRbb.exit, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataItEELb0EEEbRT_h.exit.i.i.i, !prof !157

end_hunk_18
begin_hunk_19_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a

bb.ne:                                            ; preds = %.preheader.i.i13.i472
  %i.ben = zext nneg i8 %i.bef to i64             ; 2 uses
  %58 = xor i64 %i.ben, 9223372036854775806
  %i.beo = udiv i64 %58, 10
  %.not.i82.i.i481 = icmp sgt i64 %.sroa.0.0.i473, %i.beo
  br i1 %.not.i82.i.i481, label %_ZN6duckdbL17TryCastStringBoolEPKcmRbb.exit, label %bb.nf, !prof !157
end_hunk_19
begin_hunk_20_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a
bb.os:                                            ; preds = %bb.or, %bb.op, %bb.oo
  %.128.i.i21.i602 = phi i64 [ %i.bjv, %bb.or ], [ %i.bjr, %bb.op ], [ %i.bje, %bb.oo ] ; 2 uses
  %i.bke = zext i8 %.0.i.i20.i600 to i64          ; 2 uses
  %59 = lshr i64 %i.bke, 4
  %60 = xor i64 %59, 576460752303423487
  %.not41.i.i.i603 = icmp sgt i64 %i.bjg, %60
  br i1 %.not41.i.i.i603, label %_ZN6duckdbL17TryCastStringBoolEPKcmRbb.exit, label %_ZN6duckdb20IntegerCastOperation14HandleHexDigitINS_22IntegerDecimalCastDataIjEELb0EEEbRT_h.exit.i.i.i, !prof !157

end_hunk_20
begin_hunk_21_@_ZN6duckdb10CSVSniffer12CanYouCastItERNS_13ClientContextENS_8string_tERKNS_11LogicalTypeERKNS_14DialectOptionsEbcc:bb.a

bb.pd:                                            ; preds = %.preheader.i.i13.i574
  %i.blr = zext nneg i8 %i.blj to i64             ; 2 uses
  %61 = xor i64 %i.blr, 9223372036854775806
  %i.bls = udiv i64 %61, 10
  %.not.i82.i.i583 = icmp sgt i64 %.sroa.0.0.i575, %i.bls
  br i1 %.not.i82.i.i583, label %_ZN6duckdbL17TryCastStringBoolEPKcmRbb.exit, label %bb.pe, !prof !157
end_hunk_21
begin_hunk_22_@_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b:bb.a

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.i = zext nneg i8 %i.g to i16                 ; 2 uses
  %.lhs.trunc.i.us = xor i16 %i.i, 32766
  %i.j = udiv i16 %.lhs.trunc.i.us, 10
  %.not.us = icmp slt i16 %i.j, %i.d
  br i1 %.not.us, label %.thread, label %_ZN6duckdb20IntegerCastOperation11HandleDigitINS_15IntegerCastDataIsEELb0EEEbRT_h.exit.us, !prof !157
end_hunk_22
begin_hunk_23_@_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc46EEEbPKcmRT_b:bb.a
bb.f:                                             ; preds = %.lr.ph.split
  %i.ah = add nuw i64 %.065102, 1                 ; 3 uses
  %i.ai = zext nneg i8 %i.q to i16                ; 2 uses
  %.lhs.trunc.i = xor i16 %i.ai, 32766
  %i.aj = udiv i16 %.lhs.trunc.i, 10
  %.not = icmp slt i16 %i.aj, %i.n
  br i1 %.not, label %.thread, label %bb.g, !prof !157
end_hunk_23
begin_hunk_24_@_ZN6duckdbL15IntegerCastLoopINS_15IntegerCastDataIsEELb0ELb0ENS_20IntegerCastOperationELc44EEEbPKcmRT_b:bb.a
bb.e:                                             ; preds = %.lr.ph
  %i.x = add nuw i64 %.065100, 1                  ; 3 uses
  %i.y = zext nneg i8 %i.g to i16                 ; 2 uses
  %.lhs.trunc.i = xor i16 %i.y, 32766
  %i.z = udiv i16 %.lhs.trunc.i, 10
  %.not = icmp slt i16 %i.z, %i.d
  br i1 %.not, label %.thread, label %bb.f, !prof !157
end_hunk_24
