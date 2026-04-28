inline.NumInlined: 2176
inline.NumDeleted: 448
begin_hunk_0_@_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_safeIcEENS_11full_resultEPcmPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
bb.w:                                             ; preds = %bb.v
  %i.eh = load i8, ptr %i.a, align 1, !noalias !1367
  %i.ei = zext i8 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 18
  %i.ek = load i8, ptr %i.o, align 1, !noalias !1367
  %i.el = zext i8 %i.ek to i32                    ; 2 uses
  %i.em = shl nuw nsw i32 %i.el, 12
  %i.en = add nuw nsw i32 %i.em, %i.ej
  %i.eo = and i32 %i.el, 15
  %.not307.i = icmp ne i32 %i.eo, 0
end_hunk_0
begin_hunk_1_@_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_safeIcEENS_11full_resultEPcmPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  br i1 %i.et, label %_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_implILb1EcEENS_11full_resultEPcmPKT0_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = lshr i32 %i.en, 16
  %storemerge308.i = trunc i32 %i.eu to i8
  store i8 %storemerge308.i, ptr %.1.lcssa.i, align 1, !noalias !1367
  %i.ev = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 1
end_hunk_1
begin_hunk_2_@_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_safeIDsEENS_11full_resultEPcmPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.fp = load i8, ptr %i.a, align 1, !noalias !1378
  %i.fq = zext i8 %i.fp to i32
  %i.fr = shl nuw nsw i32 %i.fq, 18
  %i.fs = load i8, ptr %i.n, align 1, !noalias !1378
  %i.ft = zext i8 %i.fs to i32                    ; 2 uses
  %i.fu = shl nuw nsw i32 %i.ft, 12
  %i.fv = add nuw nsw i32 %i.fu, %i.fr
  %i.fw = and i32 %i.ft, 15
  %.not307.i = icmp ne i32 %i.fw, 0
end_hunk_2
begin_hunk_3_@_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_safeIDsEENS_11full_resultEPcmPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  br label %_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_implILb1EDsEENS_11full_resultEPcmPKT0_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE.exit

bb.ae:                                            ; preds = %bb.ac
  %i.gh = lshr i32 %i.fv, 16
  %storemerge308.i = trunc i32 %i.gh to i8
  store i8 %storemerge308.i, ptr %.1.lcssa.i, align 1, !noalias !1378
  %i.gi = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 1
end_hunk_3
begin_hunk_4_@_ZN7simdutf6scalar12_GLOBAL__N_16base6418base64_tail_decodeIcEENS_11full_resultEPcPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
.thread301.i:                                     ; preds = %bb.u
  %i.dz = load i8, ptr %i.a, align 1, !noalias !1385
  %i.ea = zext i8 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 18
  %i.ec = shl nuw nsw i32 %i.dx, 12
  %i.ed = add nuw nsw i32 %i.eb, %i.ec
  %i.ee = lshr i32 %i.ed, 16
  %storemerge284.i = trunc i32 %i.ee to i8
  store i8 %storemerge284.i, ptr %.1.lcssa.i, align 1, !noalias !1385
  %i.ef = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 1
end_hunk_4
begin_hunk_5_@_ZN7simdutf6scalar12_GLOBAL__N_16base6418base64_tail_decodeIDsEENS_11full_resultEPcPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
.thread300.i:                                     ; preds = %bb.v
  %i.eq = load i8, ptr %i.a, align 1, !noalias !1392
  %i.er = zext i8 %i.eq to i32
  %i.es = shl nuw nsw i32 %i.er, 18
  %i.et = shl nuw nsw i32 %i.eo, 12
  %i.eu = add nuw nsw i32 %i.es, %i.et
  %i.ev = lshr i32 %i.eu, 16
  %storemerge284.i = trunc i32 %i.ev to i8
  store i8 %storemerge284.i, ptr %.1.lcssa.i, align 1, !noalias !1392
  %i.ew = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 1
end_hunk_5
