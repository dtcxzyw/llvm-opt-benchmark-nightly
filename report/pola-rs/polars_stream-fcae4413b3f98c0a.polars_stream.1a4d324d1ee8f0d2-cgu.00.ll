Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.00?download=true
inline.NumInlined: 20395
inline.NumDeleted: 5965
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB4_15RowGroupDecoder20row_group_data_to_df0Bc_:bb.a

bb.ev:                                            ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i
  %i.afk = add nuw nsw i64 %i.qz, 2, !dbg !101447 ; 2 uses
  %i.afl = icmp eq i64 %i.afc, 0, !dbg !101448
  br i1 %i.afl, label %bb.ew, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.1, !dbg !101448

bb.ew:                                            ; preds = %bb.ev
  %i.afm = icmp eq i64 %i.aew, 0, !dbg !101449
  br i1 %i.afm, label %.invoke.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.1, !dbg !101449

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.1: ; preds = %bb.ew
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.1 = call noundef i64 @llvm.umin.i64(i64 %i.aew, i64 64), !dbg !101450 ; 2 uses
  %i.afn = sub nuw i64 %i.aew, %.sroa.0.0.i.i.i.i.i.i.i.i.i.1, !dbg !101451
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.aex, align 1, !dbg !101452, !noalias !100773
  %i.afo = getelementptr inbounds nuw i8, ptr %i.aex, i64 8, !dbg !101453
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.1, !dbg !101454

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.1: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.1, %bb.ev
  %i.afp = phi i64 [ %i.afn, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.1 ], [ %i.aew, %bb.ev ] ; 5 uses
  %i.afq = phi ptr [ %i.afo, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.1 ], [ %i.aex, %bb.ev ] ; 4 uses
  %i.afr = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.1, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.1 ], [ %i.afc, %bb.ev ], !dbg !101455
  %i.afs = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.1, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.1 ], [ %i.afb, %bb.ev ], !dbg !101456 ; 2 uses
  %i.aft = trunc i64 %i.afs to i8, !dbg !101456
  %i.afu = lshr i64 %i.afs, 1, !dbg !101457       ; 2 uses
  %i.afv = add i64 %i.afr, -1, !dbg !101455       ; 3 uses
  %i.afw = and i8 %i.aft, 1, !dbg !101458
  %i.afx = trunc nuw nsw i64 %i.aer to i8, !dbg !101459 ; 2 uses
  %i.afy = shl nuw i8 1, %i.afx, !dbg !101459
  %i.afz = xor i8 %i.afy, -1, !dbg !101460
  %i.aga = shl nuw i8 %i.afw, %i.afx, !dbg !101461
  %i.agb = and i8 %i.afj, %i.afz, !dbg !101462
  %i.agc = or i8 %i.aga, %i.agb, !dbg !101462     ; 2 uses
  store i8 %i.agc, ptr %i.aeq, align 1, !dbg !101463, !alias.scope !100767, !noalias !100769
  %exitcond.not.i23.i.i.i.i.1 = icmp eq i64 %i.afk, 8, !dbg !101464
  br i1 %exitcond.not.i23.i.i.i.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB24_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB26_5utils8iterator10BitmapIterE0E0ECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, label %bb.ex, !dbg !101465

bb.ex:                                            ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.1
  %i.agd = add nuw nsw i64 %i.qz, 3, !dbg !101447 ; 2 uses
  %i.age = icmp eq i64 %i.afv, 0, !dbg !101448
  br i1 %i.age, label %bb.ey, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.2, !dbg !101448

bb.ey:                                            ; preds = %bb.ex
  %i.agf = icmp eq i64 %i.afp, 0, !dbg !101449
  br i1 %i.agf, label %.invoke.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.2, !dbg !101449

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.2: ; preds = %bb.ey
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.2 = call noundef i64 @llvm.umin.i64(i64 %i.afp, i64 64), !dbg !101450 ; 2 uses
  %i.agg = sub nuw i64 %i.afp, %.sroa.0.0.i.i.i.i.i.i.i.i.i.2, !dbg !101451
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.2 = load i64, ptr %i.afq, align 1, !dbg !101452, !noalias !100773
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afq, i64 8, !dbg !101453
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.2, !dbg !101454

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.2: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.2, %bb.ex
  %i.agi = phi i64 [ %i.agg, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.2 ], [ %i.afp, %bb.ex ] ; 5 uses
  %i.agj = phi ptr [ %i.agh, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.2 ], [ %i.afq, %bb.ex ] ; 4 uses
  %i.agk = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.2, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.2 ], [ %i.afv, %bb.ex ], !dbg !101455
  %i.agl = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.2, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.2 ], [ %i.afu, %bb.ex ], !dbg !101456 ; 2 uses
  %i.agm = trunc i64 %i.agl to i8, !dbg !101456
  %i.agn = lshr i64 %i.agl, 1, !dbg !101457       ; 2 uses
  %i.ago = add i64 %i.agk, -1, !dbg !101455       ; 3 uses
  %i.agp = and i8 %i.agm, 1, !dbg !101458
  %i.agq = trunc nuw nsw i64 %i.afk to i8, !dbg !101459 ; 2 uses
  %i.agr = shl nuw i8 1, %i.agq, !dbg !101459
  %i.ags = xor i8 %i.agr, -1, !dbg !101460
  %i.agt = shl nuw i8 %i.agp, %i.agq, !dbg !101461
  %i.agu = and i8 %i.agc, %i.ags, !dbg !101462
  %i.agv = or i8 %i.agt, %i.agu, !dbg !101462     ; 2 uses
  store i8 %i.agv, ptr %i.aeq, align 1, !dbg !101463, !alias.scope !100767, !noalias !100769
  %exitcond.not.i23.i.i.i.i.2 = icmp eq i64 %i.agd, 8, !dbg !101464
  br i1 %exitcond.not.i23.i.i.i.i.2, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB24_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB26_5utils8iterator10BitmapIterE0E0ECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, label %bb.ez, !dbg !101465

bb.ez:                                            ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.2
  %i.agw = add nuw nsw i64 %i.qz, 4, !dbg !101447 ; 2 uses
  %i.agx = icmp eq i64 %i.ago, 0, !dbg !101448
  br i1 %i.agx, label %bb.fa, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.3, !dbg !101448

bb.fa:                                            ; preds = %bb.ez
  %i.agy = icmp eq i64 %i.agi, 0, !dbg !101449
  br i1 %i.agy, label %.invoke.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.3, !dbg !101449

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.3: ; preds = %bb.fa
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.3 = call noundef i64 @llvm.umin.i64(i64 %i.agi, i64 64), !dbg !101450 ; 2 uses
  %i.agz = sub nuw i64 %i.agi, %.sroa.0.0.i.i.i.i.i.i.i.i.i.3, !dbg !101451
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.3 = load i64, ptr %i.agj, align 1, !dbg !101452, !noalias !100773
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agj, i64 8, !dbg !101453
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.3, !dbg !101454

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.3: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.3, %bb.ez
  %i.ahb = phi i64 [ %i.agz, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.3 ], [ %i.agi, %bb.ez ] ; 5 uses
  %i.ahc = phi ptr [ %i.aha, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.3 ], [ %i.agj, %bb.ez ] ; 4 uses
  %i.ahd = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.3, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.3 ], [ %i.ago, %bb.ez ], !dbg !101455
  %i.ahe = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.3, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.3 ], [ %i.agn, %bb.ez ], !dbg !101456 ; 2 uses
  %i.ahf = trunc i64 %i.ahe to i8, !dbg !101456
  %i.ahg = lshr i64 %i.ahe, 1, !dbg !101457       ; 2 uses
  %i.ahh = add i64 %i.ahd, -1, !dbg !101455       ; 3 uses
  %i.ahi = and i8 %i.ahf, 1, !dbg !101458
  %i.ahj = trunc nuw nsw i64 %i.agd to i8, !dbg !101459 ; 2 uses
  %i.ahk = shl nuw i8 1, %i.ahj, !dbg !101459
  %i.ahl = xor i8 %i.ahk, -1, !dbg !101460
  %i.ahm = shl nuw i8 %i.ahi, %i.ahj, !dbg !101461
  %i.ahn = and i8 %i.agv, %i.ahl, !dbg !101462
  %i.aho = or i8 %i.ahm, %i.ahn, !dbg !101462     ; 2 uses
  store i8 %i.aho, ptr %i.aeq, align 1, !dbg !101463, !alias.scope !100767, !noalias !100769
  %exitcond.not.i23.i.i.i.i.3 = icmp eq i64 %i.agw, 8, !dbg !101464
  br i1 %exitcond.not.i23.i.i.i.i.3, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB24_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB26_5utils8iterator10BitmapIterE0E0ECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, label %bb.fb, !dbg !101465

bb.fb:                                            ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.3
  %i.ahp = add nuw nsw i64 %i.qz, 5, !dbg !101447 ; 2 uses
  %i.ahq = icmp eq i64 %i.ahh, 0, !dbg !101448
  br i1 %i.ahq, label %bb.fc, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.4, !dbg !101448

bb.fc:                                            ; preds = %bb.fb
  %i.ahr = icmp eq i64 %i.ahb, 0, !dbg !101449
  br i1 %i.ahr, label %.invoke.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.4, !dbg !101449

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.4: ; preds = %bb.fc
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.4 = call noundef i64 @llvm.umin.i64(i64 %i.ahb, i64 64), !dbg !101450 ; 2 uses
  %i.ahs = sub nuw i64 %i.ahb, %.sroa.0.0.i.i.i.i.i.i.i.i.i.4, !dbg !101451
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.4 = load i64, ptr %i.ahc, align 1, !dbg !101452, !noalias !100773
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahc, i64 8, !dbg !101453
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.4, !dbg !101454

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.4: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.4, %bb.fb
  %i.ahu = phi i64 [ %i.ahs, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.4 ], [ %i.ahb, %bb.fb ] ; 5 uses
  %i.ahv = phi ptr [ %i.aht, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.4 ], [ %i.ahc, %bb.fb ] ; 4 uses
  %i.ahw = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.4, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.4 ], [ %i.ahh, %bb.fb ], !dbg !101455
  %i.ahx = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.4, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.4 ], [ %i.ahg, %bb.fb ], !dbg !101456 ; 2 uses
  %i.ahy = trunc i64 %i.ahx to i8, !dbg !101456
  %i.ahz = lshr i64 %i.ahx, 1, !dbg !101457       ; 2 uses
  %i.aia = add i64 %i.ahw, -1, !dbg !101455       ; 3 uses
  %i.aib = and i8 %i.ahy, 1, !dbg !101458
  %i.aic = trunc nuw nsw i64 %i.agw to i8, !dbg !101459 ; 2 uses
  %i.aid = shl nuw i8 1, %i.aic, !dbg !101459
  %i.aie = xor i8 %i.aid, -1, !dbg !101460
  %i.aif = shl nuw i8 %i.aib, %i.aic, !dbg !101461
  %i.aig = and i8 %i.aho, %i.aie, !dbg !101462
  %i.aih = or i8 %i.aif, %i.aig, !dbg !101462     ; 2 uses
  store i8 %i.aih, ptr %i.aeq, align 1, !dbg !101463, !alias.scope !100767, !noalias !100769
  %exitcond.not.i23.i.i.i.i.4 = icmp eq i64 %i.ahp, 8, !dbg !101464
  br i1 %exitcond.not.i23.i.i.i.i.4, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB24_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB26_5utils8iterator10BitmapIterE0E0ECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, label %bb.fd, !dbg !101465

bb.fd:                                            ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.4
  %i.aii = add nuw nsw i64 %i.qz, 6, !dbg !101447 ; 2 uses
  %i.aij = icmp eq i64 %i.aia, 0, !dbg !101448
  br i1 %i.aij, label %bb.fe, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.5, !dbg !101448

bb.fe:                                            ; preds = %bb.fd
  %i.aik = icmp eq i64 %i.ahu, 0, !dbg !101449
  br i1 %i.aik, label %.invoke.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.5, !dbg !101449

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.5: ; preds = %bb.fe
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.5 = call noundef i64 @llvm.umin.i64(i64 %i.ahu, i64 64), !dbg !101450 ; 2 uses
  %i.ail = sub nuw i64 %i.ahu, %.sroa.0.0.i.i.i.i.i.i.i.i.i.5, !dbg !101451
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.5 = load i64, ptr %i.ahv, align 1, !dbg !101452, !noalias !100773
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8, !dbg !101453
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.5, !dbg !101454

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.5: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.5, %bb.fd
  %i.ain = phi i64 [ %i.ail, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.5 ], [ %i.ahu, %bb.fd ] ; 5 uses
  %i.aio = phi ptr [ %i.aim, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.5 ], [ %i.ahv, %bb.fd ] ; 4 uses
  %i.aip = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.5, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.5 ], [ %i.aia, %bb.fd ], !dbg !101455
  %i.aiq = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.5, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.5 ], [ %i.ahz, %bb.fd ], !dbg !101456 ; 2 uses
  %i.air = trunc i64 %i.aiq to i8, !dbg !101456
  %i.ais = lshr i64 %i.aiq, 1, !dbg !101457       ; 2 uses
  %i.ait = add i64 %i.aip, -1, !dbg !101455       ; 3 uses
  %i.aiu = and i8 %i.air, 1, !dbg !101458
  %i.aiv = trunc nuw nsw i64 %i.ahp to i8, !dbg !101459 ; 2 uses
  %i.aiw = shl nuw i8 1, %i.aiv, !dbg !101459
  %i.aix = xor i8 %i.aiw, -1, !dbg !101460
  %i.aiy = shl nuw i8 %i.aiu, %i.aiv, !dbg !101461
  %i.aiz = and i8 %i.aih, %i.aix, !dbg !101462
  %i.aja = or i8 %i.aiy, %i.aiz, !dbg !101462     ; 2 uses
  store i8 %i.aja, ptr %i.aeq, align 1, !dbg !101463, !alias.scope !100767, !noalias !100769
  %exitcond.not.i23.i.i.i.i.5 = icmp eq i64 %i.aii, 8, !dbg !101464
  br i1 %exitcond.not.i23.i.i.i.i.5, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB24_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB26_5utils8iterator10BitmapIterE0E0ECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, label %bb.ff, !dbg !101465

bb.ff:                                            ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.5
  %i.ajb = icmp eq i64 %i.ait, 0, !dbg !101448
  br i1 %i.ajb, label %bb.fg, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.6, !dbg !101448

bb.fg:                                            ; preds = %bb.ff
  %i.ajc = icmp eq i64 %i.ain, 0, !dbg !101449
  br i1 %i.ajc, label %.invoke.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.6, !dbg !101449

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.6: ; preds = %bb.fg
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.6 = call noundef i64 @llvm.umin.i64(i64 %i.ain, i64 64), !dbg !101450 ; 2 uses
  %i.ajd = sub nuw i64 %i.ain, %.sroa.0.0.i.i.i.i.i.i.i.i.i.6, !dbg !101451
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.6 = load i64, ptr %i.aio, align 1, !dbg !101452, !noalias !100773
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aio, i64 8, !dbg !101453
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.6, !dbg !101454

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.6: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.6, %bb.ff
  %i.ajf = phi i64 [ %i.ajd, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.6 ], [ %i.ain, %bb.ff ]
  %i.ajg = phi ptr [ %i.aje, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.6 ], [ %i.aio, %bb.ff ]
  %i.ajh = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.6, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.6 ], [ %i.ait, %bb.ff ], !dbg !101455
  %i.aji = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.6, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.i.i.i.6 ], [ %i.ais, %bb.ff ], !dbg !101456 ; 2 uses
  %i.ajj = trunc i64 %i.aji to i8, !dbg !101456
  %i.ajk = lshr i64 %i.aji, 1, !dbg !101457
  %i.ajl = add i64 %i.ajh, -1, !dbg !101455
  %i.ajm = and i8 %i.ajj, 1, !dbg !101458
  %i.ajn = trunc nuw nsw i64 %i.aii to i8, !dbg !101459
  %i.ajo = xor i8 -128, -1, !dbg !101460
  %i.ajp = shl nuw i8 %i.ajm, %i.ajn, !dbg !101461
  %i.ajq = and i8 %i.aja, %i.ajo, !dbg !101462
  %i.ajr = or i8 %i.ajp, %i.ajq, !dbg !101462
  store i8 %i.ajr, ptr %i.aeq, align 1, !dbg !101463, !alias.scope !100767, !noalias !100769
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB24_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB26_5utils8iterator10BitmapIterE0E0ECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !101465

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB24_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB26_5utils8iterator10BitmapIterE0E0ECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.6, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.5, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.4, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.3, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.2, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.1, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i
  %.lcssa339 = phi i64 [ %i.aew, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i ], [ %i.afp, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.1 ], [ %i.agi, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.2 ], [ %i.ahb, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.3 ], [ %i.ahu, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.4 ], [ %i.ain, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.5 ], [ %i.ajf, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.6 ] ; 2 uses
  %.lcssa338 = phi ptr [ %i.aex, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i ], [ %i.afq, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.1 ], [ %i.agj, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.2 ], [ %i.ahc, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.3 ], [ %i.ahv, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.4 ], [ %i.aio, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.5 ], [ %i.ajg, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.6 ]
  %.lcssa337 = phi i64 [ %i.afb, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i ], [ %i.afu, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.1 ], [ %i.agn, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.2 ], [ %i.ahg, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.3 ], [ %i.ahz, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.4 ], [ %i.ais, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.5 ], [ %i.ajk, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.6 ], !dbg !101457
  %.lcssa336 = phi i64 [ %i.afc, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i ], [ %i.afv, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.1 ], [ %i.ago, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.2 ], [ %i.ahh, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.3 ], [ %i.aia, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.4 ], [ %i.ait, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.5 ], [ %i.ajl, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i.6 ], !dbg !101455 ; 2 uses
  %i.ajs = load i64, ptr %i.qt, align 8, !dbg !101466, !alias.scope !100721, !noalias !100621, !noundef !5424
  %i.ajt = add i64 %i.ajs, %i.ra, !dbg !101466
  store i64 %i.ajt, ptr %i.qt, align 8, !dbg !101466, !alias.scope !100721, !noalias !100621
  %i.aju = sub nuw i64 %i.qx, %i.ra, !dbg !101467
  %.pre56.i.i.i.i = add i64 %.lcssa336, %.lcssa339, !dbg !101331
  br label %bb.ec, !dbg !101468

bb.fh:                                            ; preds = %bb.eb
  %i.ajv = load i64, ptr %i.bj, align 8, !dbg !101469, !range !5502, !alias.scope !100774, !noalias !100621, !noundef !5424
  %i.ajw = icmp eq i64 %i.rd, %i.ajv, !dbg !101470
  br i1 %i.ajw, label %bb.fi, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !101470

bb.fi:                                            ; preds = %bb.fh
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !101471, !noalias !100622

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.fi, %bb.fh
  %i.ajx = load ptr, ptr %.sroa.4.0..sroa_idx.i222.i, align 8, !dbg !101472, !alias.scope !100774, !noalias !100621, !nonnull !5424, !noundef !5424
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 %i.rd, !dbg !101473
  store i8 0, ptr %i.ajy, align 1, !dbg !101474, !noalias !100769
  %i.ajz = add i64 %i.rd, 1, !dbg !101475         ; 2 uses
  store i64 %i.ajz, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !101475, !alias.scope !100774, !noalias !100621
  br label %._crit_edge55.i.i.i.i, !dbg !101476

._crit_edge55.i.i.i.i:                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, %bb.eb
  %i.aka = phi i64 [ %i.ajz, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i ], [ %i.rd, %bb.eb ], !dbg !101477 ; 2 uses
  %.not19.i.i.i.i = icmp eq i64 %i.aka, 0, !dbg !101478
  br i1 %.not19.i.i.i.i, label %.invoke842.i, label %bb.fj, !dbg !101478, !prof !5433

bb.fj:                                            ; preds = %._crit_edge55.i.i.i.i
  %i.akb = load ptr, ptr %.sroa.4.0..sroa_idx.i222.i, align 8, !dbg !101479, !alias.scope !100721, !noalias !100621, !nonnull !5424, !noundef !5424
  %i.akc = getelementptr i8, ptr %i.akb, i64 %i.aka, !dbg !101480
  %i.akd = getelementptr i8, ptr %i.akc, i64 -1, !dbg !101480 ; 2 uses
  %.sroa.035.0.copyload.i.i.i.i = load ptr, ptr %i.ak, align 8, !dbg !101481, !alias.scope !100719, !noalias !100717
  %.sroa.536.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !101481
  %.sroa.536.0.copyload.i.i.i.i = load i64, ptr %.sroa.536.0..sroa_idx.i.i.i.i, align 8, !dbg !101481, !alias.scope !100719, !noalias !100717
  br label %bb.fk, !dbg !101482

bb.fk:                                            ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, %bb.fj
  %.sroa.13.0.i.i.i.i = phi i64 [ %i.qz, %bb.fj ], [ %i.ake, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i ], !dbg !101483 ; 2 uses
  %.sroa.11.0.i.i.i.i = phi i64 [ %.val22.i.i.i.i, %bb.fj ], [ %.sroa.11.1.i.i.i.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i ], !dbg !101483 ; 4 uses
  %.sroa.9.0.i.i.i.i = phi i64 [ %.val.i.i.i226.i, %bb.fj ], [ %i.akn, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i ], !dbg !101483 ; 2 uses
  %.sroa.7.0.i.i.i.i = phi i64 [ %.sroa.536.0.copyload.i.i.i.i, %bb.fj ], [ %i.akm, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i ], !dbg !101483
  %.sroa.033.0.i.i.i.i = phi ptr [ %.sroa.035.0.copyload.i.i.i.i, %bb.fj ], [ %.sroa.033.1.i.i.i.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i ], !dbg !101483 ; 4 uses
  %i.ake = add i64 %.sroa.13.0.i.i.i.i, 1, !dbg !101484
  %i.akf = icmp eq i64 %.sroa.9.0.i.i.i.i, 0, !dbg !101485
  br i1 %i.akf, label %bb.fl, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !101485

bb.fl:                                            ; preds = %bb.fk
  %i.akg = icmp eq i64 %.sroa.11.0.i.i.i.i, 0, !dbg !101486
  br i1 %i.akg, label %_RINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB8_5utils8iterator10BitmapIterECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i28.i.i.i.i, !dbg !101486

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i28.i.i.i.i: ; preds = %bb.fl
  %.sroa.0.0.i.i.i29.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.11.0.i.i.i.i, i64 64), !dbg !101487 ; 2 uses
  %i.akh = sub nuw i64 %.sroa.11.0.i.i.i.i, %.sroa.0.0.i.i.i29.i.i.i.i, !dbg !101488
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.033.0.i.i.i.i) ]
  %.sroa.02.0.copyload.i.i30.i.i.i.i = load i64, ptr %.sroa.033.0.i.i.i.i, align 1, !dbg !101489, !noalias !100777
  %i.aki = getelementptr inbounds nuw i8, ptr %.sroa.033.0.i.i.i.i, i64 8, !dbg !101490
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !101491

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i28.i.i.i.i, %bb.fk
  %.sroa.11.1.i.i.i.i = phi i64 [ %i.akh, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i28.i.i.i.i ], [ %.sroa.11.0.i.i.i.i, %bb.fk ], !dbg !101483
  %.sroa.033.1.i.i.i.i = phi ptr [ %i.aki, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i28.i.i.i.i ], [ %.sroa.033.0.i.i.i.i, %bb.fk ], !dbg !101483
  %i.akj = phi i64 [ %.sroa.0.0.i.i.i29.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i28.i.i.i.i ], [ %.sroa.9.0.i.i.i.i, %bb.fk ], !dbg !101492
  %i.akk = phi i64 [ %.sroa.02.0.copyload.i.i30.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i.i28.i.i.i.i ], [ %.sroa.7.0.i.i.i.i, %bb.fk ], !dbg !101493 ; 2 uses
  %i.akl = trunc i64 %i.akk to i8, !dbg !101493
  %i.akm = lshr i64 %i.akk, 1, !dbg !101494
  %i.akn = add i64 %i.akj, -1, !dbg !101492
  %i.ako = and i8 %i.akl, 1, !dbg !101495
  %i.akp = load i8, ptr %i.akd, align 1, !dbg !101496, !noalias !100769, !noundef !5424
  %i.akq = trunc i64 %.sroa.13.0.i.i.i.i to i8, !dbg !101497
  %i.akr = and i8 %i.akq, 7, !dbg !101497         ; 2 uses
  %i.aks = shl nuw i8 1, %i.akr, !dbg !101497
  %i.akt = xor i8 %i.aks, -1, !dbg !101498
  %i.aku = shl nuw i8 %i.ako, %i.akr, !dbg !101499
  %i.akv = and i8 %i.akp, %i.akt, !dbg !101500
  %i.akw = or i8 %i.aku, %i.akv, !dbg !101500
  store i8 %i.akw, ptr %i.akd, align 1, !dbg !101501, !noalias !100769
  br label %bb.fk, !dbg !101482

_RINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB8_5utils8iterator10BitmapIterECs2g09Ig8GZd6_13polars_stream.exit.i.i.i: ; preds = %bb.fl, %_RINvNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable37extend_aligned_trusted_iter_uncheckedNtNtNtB4_5utils8iterator10BitmapIterECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %.sink91.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %_RINvNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable37extend_aligned_trusted_iter_uncheckedNtNtNtB4_5utils8iterator10BitmapIterECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i ], [ %i.qx, %bb.fl ]
  %i.akx = load i64, ptr %i.qt, align 8, !dbg !101327, !alias.scope !100721, !noalias !100621, !noundef !5424
  %i.aky = add i64 %i.akx, %.sink91.i.i.i.i, !dbg !101327
  store i64 %i.aky, ptr %i.qt, align 8, !dbg !101327, !alias.scope !100721, !noalias !100621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !101502, !noalias !100717
  br label %_RNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap18extend_from_bitmap.exit.i, !dbg !101502

bb.fm:                                            ; preds = %bb.dy
  invoke void @_RNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14extend_aligned(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.qr, i64 noundef range(i64 0, -9223372036854775808) %i.qg, i64 noundef 0, i64 noundef %i.qd)
          to label %_RNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap18extend_from_bitmap.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !101503, !noalias !100622

_RNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap18extend_from_bitmap.exit.i: ; preds = %bb.fm, %_RINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB8_5utils8iterator10BitmapIterECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, %_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap8as_slice.exit.i.i
  %.val187.i = load i64, ptr %i.pf, align 8, !dbg !101504, !noalias !100621, !noundef !5424 ; 2 uses
  %i.akz = icmp eq i64 %.val187.i, 0, !dbg !101505
  br i1 %i.akz, label %.invoke840.i, label %bb.fn, !dbg !101505, !prof !5433

bb.fn:                                            ; preds = %_RNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap18extend_from_bitmap.exit.i
  %.val186.i = load ptr, ptr %i.pe, align 8, !dbg !101504, !noalias !100621, !nonnull !5424, !noundef !5424 ; 3 uses
  %.idx.i = shl i64 %.val187.i, 5, !dbg !101506   ; 2 uses
  %i.ala = getelementptr i8, ptr %.val186.i, i64 %.idx.i, !dbg !101506
  %i.alb = icmp eq i64 %.idx.i, 32, !dbg !101507
  br i1 %i.alb, label %._crit_edge.i, label %.lr.ph.i, !dbg !101508

.lr.ph.i:                                         ; preds = %bb.fn
  %.sroa.0359.0724.i = getelementptr inbounds nuw i8, ptr %.val186.i, i64 32, !dbg !101509
  %i.alc = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  br label %bb.fo, !dbg !101508

bb.fo:                                            ; preds = %bb.gd, %.lr.ph.i
  %.sroa.0359.0726.i = phi ptr [ %.sroa.0359.0724.i, %.lr.ph.i ], [ %.sroa.0359.0.i, %bb.gd ] ; 5 uses
  %.val186.pn725.i = phi ptr [ %.val186.i, %.lr.ph.i ], [ %.sroa.0359.0726.i, %bb.gd ]
  call void @llvm.experimental.noalias.scope.decl(metadata !100778), !dbg !101510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !101511, !noalias !100621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !101511, !noalias !100621
  %i.ald = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %.sroa.0359.0726.i)
          to label %.noexc242.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !101511, !noalias !100622 ; 0 uses

.noexc242.i:                                      ; preds = %bb.fo
  %i.ale = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %.sroa.0359.0726.i)
          to label %.noexc243.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !101512, !noalias !100622 ; 5 uses

.noexc243.i:                                      ; preds = %.noexc242.i
  %i.alf = getelementptr inbounds nuw i8, ptr %.val186.pn725.i, i64 48, !dbg !101513
  %i.alg = load i64, ptr %i.alf, align 8, !dbg !101513, !noalias !100782, !noundef !5424
  %i.alh = icmp eq i64 %i.ale, %i.alg, !dbg !101514
  br i1 %i.alh, label %bb.fq, label %bb.fp, !dbg !101514

bb.fp:                                            ; preds = %.noexc243.i
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow6bitmap10assign_ops13binary_assignyNCINvB2_10and_assignyE0ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 %.sroa.0359.0726.i)
          to label %bb.gd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !101515, !noalias !100622

bb.fq:                                            ; preds = %.noexc243.i
  %i.ali = load i64, ptr %i.alc, align 8, !dbg !101516, !alias.scope !100778, !noalias !100621, !noundef !5424 ; 2 uses
  store i64 %i.ali, ptr %i.ah, align 8, !dbg !101516, !noalias !100783
  store i64 %i.ale, ptr %i.ag, align 8, !dbg !101517, !noalias !100783
  %i.alj = icmp eq i64 %i.ali, %i.ale, !dbg !101518
  br i1 %i.alj, label %bb.fs, label %bb.fr, !dbg !101518, !prof !5571

bb.fr:                                            ; preds = %bb.fq
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #35
          to label %.noexc245.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !101519, !noalias !100622

.noexc245.i:                                      ; preds = %bb.fr
  unreachable, !dbg !101519

bb.fs:                                            ; preds = %bb.fq
  %i.alk = icmp eq i64 %i.ale, 0, !dbg !101520
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !dbg !101521, !alias.scope !100778, !noalias !100621
  br i1 %i.alk, label %bb.gd, label %bb.ft, !dbg !101520

bb.ft:                                            ; preds = %bb.fs
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap12extend_unset(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.ale)
          to label %bb.gd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !101522, !noalias !100622

._crit_edge.i:                                    ; preds = %bb.gd, %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !101523, !noalias !100621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !101524, !noalias !100621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !dbg !101524, !noalias !100621
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false), !dbg !101524, !noalias !100621
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap6freeze(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.bg)
          to label %bb.fu unwind label %bb.gc, !dbg !101525, !noalias !100622

bb.fu:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !101526, !noalias !100621
  invoke void @_RNvMs1_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB7_12ChunkedArrayNtNtB9_9datatypes11BooleanTypeE11from_bitmap(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.bi, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) @313, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bh)
          to label %bb.fw unwind label %bb.fv, !dbg !101527, !noalias !100622

bb.fv:                                            ; preds = %bb.fu
  %i.all = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit251.sink.split.i, !dbg !101528

bb.fw:                                            ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !101528, !noalias !100621
  %i.alm = getelementptr inbounds nuw i8, ptr %1, i64 909, !dbg !101529
  store i8 0, ptr %i.alm, align 1, !dbg !101529, !noalias !100621
  %i.aln = getelementptr inbounds nuw i8, ptr %1, i64 848, !dbg !101529
  %.sroa.0374.0.copyload.i = load i64, ptr %i.aln, align 8, !dbg !101529, !noalias !100621
  %.sroa.5375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 856, !dbg !101529
  %.sroa.5375.0.copyload.i = load ptr, ptr %.sroa.5375.0..sroa_idx.i, align 8, !dbg !101529, !noalias !100621, !nonnull !5424, !noundef !5424 ; 3 uses
  %.sroa.6376.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 864, !dbg !101529
  %.sroa.6376.0.copyload.i = load i64, ptr %.sroa.6376.0..sroa_idx.i, align 8, !dbg !101529, !noalias !100621 ; 2 uses
  %i.alo = icmp ult i64 %.sroa.6376.0.copyload.i, 57646075230342349, !dbg !101530
  call void @llvm.assume(i1 %i.alo), !dbg !101531
  %i.alp = getelementptr inbounds nuw [160 x i8], ptr %.sroa.5375.0.copyload.i, i64 %.sroa.6376.0.copyload.i, !dbg !101532
  %i.alq = getelementptr inbounds nuw i8, ptr %1, i64 906, !dbg !101533
  store i8 0, ptr %i.alq, align 2, !dbg !101533, !noalias !100621
  %.sroa.0377.0.copyload.i = load i64, ptr %i.pd, align 8, !dbg !101533, !noalias !100621
end_hunk_0
