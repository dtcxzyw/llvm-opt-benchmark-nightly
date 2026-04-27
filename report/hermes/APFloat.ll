inline.NumInlined: 1814
inline.NumDeleted: 298
begin_hunk_0_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataIhEEPcRmS4_S4_T_:bb.a

bb.b:                                             ; preds = %_ZN4llvh7hashing6detail17store_and_advanceIhEEbRPcS3_RKT_m.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !100  ; 7 uses
  %i.j = xor i64 %i.i, -5435081209227447693       ; 3 uses
  %i.k = mul i64 %i.j, -7070675565921424023       ; 2 uses
  %i.l = lshr i64 %i.k, 47
end_hunk_0
begin_hunk_1_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataIhEEPcRmS4_S4_T_:bb.a
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 15) ; 2 uses
  %i.t = mul i64 %i.i, -5435081209227447693
  %i.u = lshr i64 %i.i, 47
  %i.v = xor i64 %i.u, %i.i                       ; 4 uses
  %i.w = xor i64 %i.v, %i.t
  %i.x = mul i64 %i.w, -7070675565921424023       ; 2 uses
  %i.y = lshr i64 %i.x, 47
  %i.z = xor i64 %i.v, %i.y
  %i.aa = xor i64 %i.z, %i.x
  %i.ab = mul i64 %i.aa, -7070675565921424023     ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
end_hunk_1
begin_hunk_2_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataIhEEPcRmS4_S4_T_:bb.a
  %i.bk = add i64 %i.as, %.0.copyload.i17.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.bl, align 8, !noalias !287
  %i.bm = add i64 %i.ae, %.0.copyload.i.i10.i.i
  %i.bn = add i64 %i.bm, %i.av                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload.i15.i11.i.i = load i64, ptr %i.bo, align 8, !noalias !287 ; 2 uses
  %i.bp = add i64 %i.bk, %.0.copyload.i15.i11.i.i
end_hunk_2
begin_hunk_3_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataIjEEPcRmS4_S4_T_:bb.a

bb.b:                                             ; preds = %_ZN4llvh7hashing6detail17store_and_advanceIjEEbRPcS3_RKT_m.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !100  ; 7 uses
  %i.j = xor i64 %i.i, -5435081209227447693       ; 3 uses
  %i.k = mul i64 %i.j, -7070675565921424023       ; 2 uses
  %i.l = lshr i64 %i.k, 47
end_hunk_3
begin_hunk_4_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataIjEEPcRmS4_S4_T_:bb.a
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 15) ; 2 uses
  %i.t = mul i64 %i.i, -5435081209227447693
  %i.u = lshr i64 %i.i, 47
  %i.v = xor i64 %i.u, %i.i                       ; 4 uses
  %i.w = xor i64 %i.v, %i.t
  %i.x = mul i64 %i.w, -7070675565921424023       ; 2 uses
  %i.y = lshr i64 %i.x, 47
  %i.z = xor i64 %i.v, %i.y
  %i.aa = xor i64 %i.z, %i.x
  %i.ab = mul i64 %i.aa, -7070675565921424023     ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
end_hunk_4
begin_hunk_5_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataIjEEPcRmS4_S4_T_:bb.a
  %i.bk = add i64 %i.as, %.0.copyload.i17.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.bl, align 8, !noalias !297
  %i.bm = add i64 %i.ae, %.0.copyload.i.i10.i.i
  %i.bn = add i64 %i.bm, %i.av                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload.i15.i11.i.i = load i64, ptr %i.bo, align 8, !noalias !297 ; 2 uses
  %i.bp = add i64 %i.bk, %.0.copyload.i15.i11.i.i
end_hunk_5
begin_hunk_6_@_ZN4llvh7hashing6detail23hash_combine_range_implIKmEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  br label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit

_ZN4llvh7hashing6detail18get_execution_seedEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !22 ; 8 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 6 uses
end_hunk_6
begin_hunk_7_@_ZN4llvh7hashing6detail23hash_combine_range_implIKmEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.w = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 15) ; 2 uses
  %i.x = mul i64 %i.f, -5435081209227447693
  %i.y = lshr i64 %i.f, 47
  %i.z = xor i64 %i.y, %i.f                       ; 4 uses
  %i.aa = xor i64 %i.z, %i.x
  %i.ab = mul i64 %i.aa, -7070675565921424023     ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
  %i.ad = xor i64 %i.z, %i.ac
  %i.ae = xor i64 %i.ad, %i.ab
  %i.af = mul i64 %i.ae, -7070675565921424023     ; 2 uses
  %i.ag = lshr i64 %i.af, 47
end_hunk_7
begin_hunk_8_@_ZN4llvh7hashing6detail23hash_combine_range_implIKmEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.bl = add i64 %i.bk, %i.bc
  %i.bm = add i64 %i.bl, %i.bg                    ; 2 uses
  %i.bn = add i64 %i.bj, %.0.copyload.i15.i.i.i   ; 2 uses
  %i.bo = add i64 %i.az, %i.ai
  %i.bp = add i64 %i.aw, %.0.copyload.i17.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.bq, align 1, !noalias !330
end_hunk_8
begin_hunk_9_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataIsEEPcRmS4_S4_T_:bb.a

bb.b:                                             ; preds = %_ZN4llvh7hashing6detail17store_and_advanceIsEEbRPcS3_RKT_m.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !100  ; 7 uses
  %i.j = xor i64 %i.i, -5435081209227447693       ; 3 uses
  %i.k = mul i64 %i.j, -7070675565921424023       ; 2 uses
  %i.l = lshr i64 %i.k, 47
end_hunk_9
begin_hunk_10_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataIsEEPcRmS4_S4_T_:bb.a
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 15) ; 2 uses
  %i.t = mul i64 %i.i, -5435081209227447693
  %i.u = lshr i64 %i.i, 47
  %i.v = xor i64 %i.u, %i.i                       ; 4 uses
  %i.w = xor i64 %i.v, %i.t
  %i.x = mul i64 %i.w, -7070675565921424023       ; 2 uses
  %i.y = lshr i64 %i.x, 47
  %i.z = xor i64 %i.v, %i.y
  %i.aa = xor i64 %i.z, %i.x
  %i.ab = mul i64 %i.aa, -7070675565921424023     ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
end_hunk_10
begin_hunk_11_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataIsEEPcRmS4_S4_T_:bb.a
  %i.bk = add i64 %i.as, %.0.copyload.i17.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.bl, align 8, !noalias !334
  %i.bm = add i64 %i.ae, %.0.copyload.i.i10.i.i
  %i.bn = add i64 %i.bm, %i.av                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload.i15.i11.i.i = load i64, ptr %i.bo, align 8, !noalias !334 ; 2 uses
  %i.bp = add i64 %i.bk, %.0.copyload.i15.i11.i.i
end_hunk_11
begin_hunk_12_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataImEEPcRmS4_S4_T_:bb.a

bb.b:                                             ; preds = %_ZN4llvh7hashing6detail17store_and_advanceImEEbRPcS3_RKT_m.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !100  ; 7 uses
  %i.j = xor i64 %i.i, -5435081209227447693       ; 3 uses
  %i.k = mul i64 %i.j, -7070675565921424023       ; 2 uses
  %i.l = lshr i64 %i.k, 47
end_hunk_12
begin_hunk_13_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataImEEPcRmS4_S4_T_:bb.a
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 15) ; 2 uses
  %i.t = mul i64 %i.i, -5435081209227447693
  %i.u = lshr i64 %i.i, 47
  %i.v = xor i64 %i.u, %i.i                       ; 4 uses
  %i.w = xor i64 %i.v, %i.t
  %i.x = mul i64 %i.w, -7070675565921424023       ; 2 uses
  %i.y = lshr i64 %i.x, 47
  %i.z = xor i64 %i.v, %i.y
  %i.aa = xor i64 %i.z, %i.x
  %i.ab = mul i64 %i.aa, -7070675565921424023     ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
end_hunk_13
begin_hunk_14_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataImEEPcRmS4_S4_T_:bb.a
  %i.bk = add i64 %i.as, %.0.copyload.i17.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.bl, align 8, !noalias !337
  %i.bm = add i64 %i.ae, %.0.copyload.i.i10.i.i
  %i.bn = add i64 %i.bm, %i.av                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload.i15.i11.i.i = load i64, ptr %i.bo, align 8, !noalias !337 ; 2 uses
  %i.bp = add i64 %i.bk, %.0.copyload.i15.i11.i.i
end_hunk_14
