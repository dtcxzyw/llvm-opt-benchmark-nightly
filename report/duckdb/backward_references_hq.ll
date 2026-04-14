inline.NumInlined: 29
inline.NumDeleted: 13
begin_hunk_0_@_ZN13duckdb_brotli26BrotliZopfliCreateCommandsEmmPKNS_10ZopfliNodeEPiPmPK19BrotliEncoderParamsPNS_7CommandES4_:bb.a
  %i.bu = xor i32 %notmask.i, -1
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = and i64 %i.bp, %i.bv
  %i.bx = lshr i64 %i.bp, %i.bt
  %i.by = and i64 %i.bx, 1                        ; 2 uses
  %i.bz = or disjoint i64 %i.by, 2
  %i.ca = shl i64 %i.bz, %i.bt
  %i.cb = sub nsw i64 %i.bt, %i.bl                ; 2 uses
  %i.cc = shl nsw i64 %i.cb, 10
  %i.cd = shl nsw i64 %i.cb, 1
  %8 = add nsw i64 %i.cd, 65534
  %9 = or disjoint i64 %8, %i.by
  %i.ce = shl i64 %9, %i.bl
  %i.cf = add nuw nsw i64 %i.bw, %i.bh
  %i.cg = add i64 %i.cf, %i.ce
end_hunk_0
begin_hunk_1_@_ZL11UpdateNodesmmmPKhmPK19BrotliEncoderParamsmPKimPKN13duckdb_brotli13BackwardMatchEPK15ZopfliCostModelP13StartPosQueuePNS6_10ZopfliNodeE:bb.a
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = and i64 %i.jk, %i.jq
  %i.js = lshr i64 %i.jk, %i.jo
  %13 = and i64 %i.js, 1
  %i.jt = sub nsw i64 %i.jo, %i.jg                ; 2 uses
  %i.ju = shl nsw i64 %i.jt, 10
  %i.jv = shl nsw i64 %i.jt, 1
  %14 = add nsw i64 %i.jv, -2
  %15 = or disjoint i64 %14, %13
  %i.jw = shl i64 %15, %i.jg
  %i.jx = add nuw nsw i64 %i.jr, %i.jd
  %i.jy = add i64 %i.jx, %i.jw
  %i.jz = or i64 %i.jy, %i.ju
end_hunk_1
