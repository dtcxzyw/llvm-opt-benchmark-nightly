inline.NumInlined: 1495
inline.NumDeleted: 233
begin_hunk_0_@_ZN4llvh5APIntmLEm:bb.a

bb.b:                                             ; preds = %.lr.ph.split.split.i
  %i.w = and i64 %i.u, 4294967295                 ; 2 uses
  %i.x = mul nuw i64 %i.w, %i.p                   ; 2 uses
  %i.y = lshr i64 %i.u, 32                        ; 2 uses
  %i.z = mul nuw i64 %i.y, %i.q
  %i.aa = mul nuw i64 %i.w, %i.q                  ; 2 uses
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = add nuw i64 %i.ab, %i.z
  %i.ad = shl i64 %i.aa, 32
  %i.ae = add i64 %i.ad, %i.x                     ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.x
  %i.ag = zext i1 %i.af to i64
  %i.ah = mul nuw i64 %i.y, %i.p                  ; 2 uses
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = shl i64 %i.ah, 32
  %i.ak = add i64 %i.ae, %i.aj                    ; 3 uses
  %i.al = icmp ult i64 %i.ak, %i.ae
  %i.am = zext i1 %i.al to i64
  %i.an = add i64 %i.ak, %.06985.i                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb:bb.a

bb.b:                                             ; preds = %.lr.ph.split.split.us
  %i.ac = and i64 %i.aa, 4294967295               ; 2 uses
  %i.ad = mul nuw i64 %i.ac, %i.c                 ; 2 uses
  %i.ae = lshr i64 %i.aa, 32                      ; 2 uses
  %i.af = mul nuw i64 %i.ae, %i.d
  %i.ag = mul nuw i64 %i.ac, %i.d                 ; 2 uses
  %i.ah = lshr i64 %i.ag, 32
  %i.ai = add nuw i64 %i.ah, %i.af
  %i.aj = shl i64 %i.ag, 32
  %i.ak = add i64 %i.aj, %i.ad                    ; 3 uses
  %i.al = icmp ult i64 %i.ak, %i.ad
  %i.am = zext i1 %i.al to i64
  %i.an = mul nuw i64 %i.ae, %i.c                 ; 2 uses
  %i.ao = lshr i64 %i.an, 32
  %i.ap = shl i64 %i.an, 32
  %i.aq = add i64 %i.ak, %i.ap                    ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ak
  %i.as = zext i1 %i.ar to i64
  %i.at = add i64 %i.aq, %.06985.us88             ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb:bb.a

bb.d:                                             ; preds = %.lr.ph.split.split
  %i.bm = and i64 %i.bk, 4294967295               ; 2 uses
  %i.bn = mul nuw i64 %i.bm, %i.c                 ; 2 uses
  %i.bo = lshr i64 %i.bk, 32                      ; 2 uses
  %i.bp = mul nuw i64 %i.bo, %i.d
  %i.bq = mul nuw i64 %i.bm, %i.d                 ; 2 uses
  %i.br = lshr i64 %i.bq, 32
  %i.bs = add nuw i64 %i.br, %i.bp
  %i.bt = shl i64 %i.bq, 32
  %i.bu = add i64 %i.bt, %i.bn                    ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %i.bn
  %i.bw = zext i1 %i.bv to i64
  %i.bx = mul nuw i64 %i.bo, %i.c                 ; 2 uses
  %i.by = lshr i64 %i.bx, 32
  %i.bz = shl i64 %i.bx, 32
  %i.ca = add i64 %i.bu, %i.bz                    ; 3 uses
  %i.cb = icmp ult i64 %i.ca, %i.bu
  %i.cc = zext i1 %i.cb to i64
  %i.cd = add i64 %i.ca, %.06985                  ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK4llvh5APInt21multiplicativeInverseERKS0_:bb.a

bb.g:                                             ; preds = %.lr.ph.split.split.us.i
  %i.dw = and i64 %i.du, 4294967295               ; 2 uses
  %i.dx = mul nuw i64 %i.dw, %i.dd                ; 2 uses
  %i.dy = lshr i64 %i.du, 32                      ; 2 uses
  %i.dz = mul nuw i64 %i.dy, %i.de
  %i.ea = mul nuw i64 %i.dw, %i.de                ; 2 uses
  %i.eb = lshr i64 %i.ea, 32
  %i.ec = add nuw i64 %i.eb, %i.dz
  %i.ed = shl i64 %i.ea, 32
  %i.ee = add i64 %i.ed, %i.dx                    ; 3 uses
  %i.ef = icmp ult i64 %i.ee, %i.dx
  %i.eg = zext i1 %i.ef to i64
  %i.eh = mul nuw i64 %i.dy, %i.dd                ; 2 uses
  %i.ei = lshr i64 %i.eh, 32
  %i.ej = shl i64 %i.eh, 32
  %i.ek = add i64 %i.ee, %i.ej                    ; 3 uses
  %i.el = icmp ult i64 %i.ek, %i.ee
  %i.em = zext i1 %i.el to i64
  %i.en = add i64 %i.ek, %.06985.us88.i           ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4llvh7hashing6detail23hash_combine_range_implImEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS4_S8_:bb.a
  br label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit

_ZN4llvh7hashing6detail18get_execution_seedEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !10 ; 8 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 6 uses
end_hunk_4
begin_hunk_5_@_ZN4llvh7hashing6detail23hash_combine_range_implImEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS4_S8_:bb.a
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
end_hunk_5
begin_hunk_6_@_ZN4llvh7hashing6detail23hash_combine_range_implImEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS4_S8_:bb.a
  %i.bl = add i64 %i.bk, %i.bc
  %i.bm = add i64 %i.bl, %i.bg                    ; 2 uses
  %i.bn = add i64 %i.bj, %.0.copyload.i15.i.i.i   ; 2 uses
  %i.bo = add i64 %i.az, %i.ai
  %i.bp = add i64 %i.aw, %.0.copyload.i17.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.bq, align 1, !noalias !780
end_hunk_6
