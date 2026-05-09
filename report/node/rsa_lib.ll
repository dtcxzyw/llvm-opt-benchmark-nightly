inline.NumInlined: 84
inline.NumDeleted: 21
begin_hunk_0_@ossl_ifc_ffc_compute_security_bits:bb.a
  %i.bu = lshr i64 %i.bt, 18
  %i.bv = mul i64 %i.bu, %i.bs                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 18
  %.not.not.6.not.i = icmp slt i64 %i.bv, 0       ; 3 uses
  %i.bx = select i1 %.not.not.6.not.i, i64 -35184372088832, i64 0
  %.1.6.i = add nsw i64 %i.bx, %i.bw              ; 2 uses
  %i.by = select i1 %.not.not.6.not.i, i64 2, i64 0 ; 2 uses
  %i.bz = select i1 %.not.not.6.not.i, i64 6, i64 0
  %1 = or disjoint i64 %i.by, 1                   ; 2 uses
  %2 = mul nuw nsw i64 %1, %i.bz                  ; 2 uses
  %i.ca = lshr i64 %.1.6.i, 42
  %.not.not.7.i = icmp samesign ugt i64 %i.ca, %2 ; 2 uses
  %.neg.7.i = xor i64 %2, -1
  %.neg17.7.i = shl nsw i64 %.neg.7.i, 42
  %.115.7.i = select i1 %.not.not.7.i, i64 %1, i64 %i.by ; 2 uses
  %i.cb = select i1 %.not.not.7.i, i64 %.neg17.7.i, i64 0
  %.1.7.i = add nsw i64 %i.cb, %.1.6.i            ; 2 uses
  %i.cc = shl nuw nsw i64 %.115.7.i, 1            ; 2 uses
  %i.cd = mul nuw nsw i64 %.115.7.i, 6
end_hunk_0
