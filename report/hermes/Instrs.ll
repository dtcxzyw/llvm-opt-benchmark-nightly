inline.NumInlined: 908
inline.NumDeleted: 597
begin_hunk_0_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataImEEPcRmS4_S4_T_:bb.a

bb.b:                                             ; preds = %_ZN4llvh7hashing6detail17store_and_advanceImEEbRPcS3_RKT_m.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64   ; 7 uses
  %i.j = xor i64 %i.i, -5435081209227447693       ; 3 uses
  %i.k = mul i64 %i.j, -7070675565921424023       ; 2 uses
  %i.l = lshr i64 %i.k, 47
end_hunk_0
begin_hunk_1_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataImEEPcRmS4_S4_T_:bb.a
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
begin_hunk_2_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataImEEPcRmS4_S4_T_:bb.a
  %i.bk = add i64 %i.as, %.0.copyload.i17.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.bl, align 8, !noalias !68
  %i.bm = add i64 %i.ae, %.0.copyload.i.i10.i.i
  %i.bn = add i64 %i.bm, %i.av                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload.i15.i11.i.i = load i64, ptr %i.bo, align 8, !noalias !68 ; 2 uses
  %i.bp = add i64 %i.bk, %.0.copyload.i15.i11.i.i
end_hunk_2
begin_hunk_3_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataIjEEPcRmS4_S4_T_:bb.a

bb.b:                                             ; preds = %_ZN4llvh7hashing6detail17store_and_advanceIjEEbRPcS3_RKT_m.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64   ; 7 uses
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
  %.0.copyload.i.i10.i.i = load i64, ptr %i.bl, align 8, !noalias !78
  %i.bm = add i64 %i.ae, %.0.copyload.i.i10.i.i
  %i.bn = add i64 %i.bm, %i.av                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload.i15.i11.i.i = load i64, ptr %i.bo, align 8, !noalias !78 ; 2 uses
  %i.bp = add i64 %i.bk, %.0.copyload.i15.i11.i.i
end_hunk_5
