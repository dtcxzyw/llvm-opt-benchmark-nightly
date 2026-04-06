begin_hunk_0_@_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_safeIcEENS_11full_resultEPcmPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
bb.w:                                             ; preds = %bb.v
  %i.es = load i8, ptr %i.a, align 1, !noalias !1295
  %i.et = zext i8 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 10
  %i.ev = load i8, ptr %i.n, align 1, !noalias !1295
  %i.ew = zext i8 %i.ev to i32                    ; 2 uses
  %i.ex = shl nuw nsw i32 %i.ew, 4
  %i.ey = add nuw nsw i32 %i.ex, %i.eu
  %i.ez = and i32 %i.ew, 15
  %.not307.i = icmp ne i32 %i.ez, 0
end_hunk_0
begin_hunk_1_@_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_safeIcEENS_11full_resultEPcmPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  br label %_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_implILb1EcEENS_11full_resultEPcmPKT0_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE.exit

bb.aa:                                            ; preds = %bb.y
  %i.fk = lshr i32 %i.ey, 8
  %storemerge308.i = trunc i32 %i.fk to i8
  store i8 %storemerge308.i, ptr %.1.lcssa.i, align 1, !noalias !1295
  %i.fl = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 1
end_hunk_1
begin_hunk_2_@_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_safeIDsEENS_11full_resultEPcmPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.fp = load i8, ptr %i.a, align 1, !noalias !1304
  %i.fq = zext i8 %i.fp to i32
  %i.fr = shl nuw nsw i32 %i.fq, 10
  %i.fs = load i8, ptr %i.n, align 1, !noalias !1304
  %i.ft = zext i8 %i.fs to i32                    ; 2 uses
  %i.fu = shl nuw nsw i32 %i.ft, 4
  %i.fv = add nuw nsw i32 %i.fu, %i.fr
  %i.fw = and i32 %i.ft, 15
  %.not307.i = icmp ne i32 %i.fw, 0
end_hunk_2
begin_hunk_3_@_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_safeIDsEENS_11full_resultEPcmPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  br label %_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_implILb1EDsEENS_11full_resultEPcmPKT0_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE.exit

bb.ae:                                            ; preds = %bb.ac
  %i.gh = lshr i32 %i.fv, 8
  %storemerge308.i = trunc i32 %i.gh to i8
  store i8 %storemerge308.i, ptr %.1.lcssa.i, align 1, !noalias !1304
  %i.gi = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 1
end_hunk_3
begin_hunk_4_@_ZN7simdutf6scalar12_GLOBAL__N_16base6418base64_tail_decodeIcEENS_11full_resultEPcPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
.thread301.i:                                     ; preds = %bb.r
  %i.dt = load i8, ptr %i.a, align 1, !noalias !1311
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 10
  %i.dw = shl nuw nsw i32 %i.dr, 4
  %i.dx = add nuw nsw i32 %i.dv, %i.dw
  %i.dy = lshr i32 %i.dx, 8
  %storemerge284.i = trunc i32 %i.dy to i8
  store i8 %storemerge284.i, ptr %.1.lcssa.i, align 1, !noalias !1311
  %i.dz = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 1
end_hunk_4
begin_hunk_5_@_ZN7simdutf6scalar12_GLOBAL__N_16base6418base64_tail_decodeIDsEENS_11full_resultEPcPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
.thread300.i:                                     ; preds = %bb.v
  %i.eq = load i8, ptr %i.a, align 1, !noalias !1318
  %i.er = zext i8 %i.eq to i32
  %i.es = shl nuw nsw i32 %i.er, 10
  %i.et = shl nuw nsw i32 %i.eo, 4
  %i.eu = add nuw nsw i32 %i.es, %i.et
  %i.ev = lshr i32 %i.eu, 8
  %storemerge284.i = trunc i32 %i.ev to i8
  store i8 %storemerge284.i, ptr %.1.lcssa.i, align 1, !noalias !1318
  %i.ew = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 1
end_hunk_5
