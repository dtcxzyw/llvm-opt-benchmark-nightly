inline.NumInlined: 3767
inline.NumDeleted: 1292
begin_hunk_0_@_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.on = icmp ult i32 %i.oj, 268435456
  %i.oo = or disjoint i32 %i.oj, 2                ; 2 uses
  %i.op = icmp ugt i32 %i.oj, 127
  %i.oq = select i1 %i.on, i64 -5, i64 -6
  %i.or = select i1 %i.om, i64 -4, i64 %i.oq
  %i.os = select i1 %i.ol, i64 -3, i64 %i.or
  %i.ot = select i1 %i.ok, i64 -2, i64 %i.os
  br label %bb.bb

.preheader930:                                    ; preds = %bb.v
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.pc = icmp ult i32 %i.oy, 268435456
  %i.pd = or disjoint i32 %i.oy, 2                ; 2 uses
  %i.pe = icmp ugt i32 %i.oy, 127
  %i.pf = select i1 %i.pc, i64 -5, i64 -6
  %i.pg = select i1 %i.pb, i64 -4, i64 %i.pf
  %i.ph = select i1 %i.pa, i64 -3, i64 %i.pg
  %i.pi = select i1 %i.oz, i64 -2, i64 %i.ph
  br label %bb.ay

.preheader928:                                    ; preds = %bb.v
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.aio = load ptr, ptr %5, align 8, !tbaa !357
  %i.aip = ptrtoint ptr %i.aio to i64
  %i.aiq = ptrtoint ptr %.0.i674 to i64
  %7 = add i64 %i.aip, 16
  %i.air = sub i64 %i.pi, %i.aiq
  %i.ais = add i64 %7, %i.air
  %i.ait = icmp slt i64 %i.ais, %i.aim
  br i1 %i.ait, label %.critedge.i345, label %bb.ba, !prof !35

end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.akc = load ptr, ptr %5, align 8, !tbaa !357
  %i.akd = ptrtoint ptr %i.akc to i64
  %i.ake = ptrtoint ptr %.0.i677 to i64
  %8 = add i64 %i.akd, 16
  %i.akf = sub i64 %i.ot, %i.ake
  %i.akg = add i64 %8, %i.akf
  %i.akh = icmp slt i64 %i.akg, %i.aka
  br i1 %i.akh, label %.critedge.i342, label %bb.bd, !prof !35

end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE:bb.a
bb.cn:                                            ; preds = %bb.cm
  %i.awm = icmp ult i32 %i.awj, 2097152
  %i.awn = icmp ult i32 %i.awj, 268435456
  %i.awo = select i1 %i.awn, i64 4, i64 5
  %i.awp = select i1 %i.awm, i64 3, i64 %i.awo
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit864

_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit864: ; preds = %bb.cl, %bb.cm, %bb.cn
  %i.awq = phi i64 [ 1, %bb.cl ], [ %i.awp, %bb.cn ], [ 2, %bb.cm ]
  %9 = add i64 %i.awh, 16
  %i.awr = add i64 %i.awq, %i.awi
  %10 = xor i64 %i.awr, -1
  %i.aws = add i64 %9, %10
  %i.awt = icmp slt i64 %i.aws, %i.awe
  br i1 %i.awt, label %.critedge.i339, label %bb.co, !prof !35

end_hunk_4
begin_hunk_5_@_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE:bb.a
bb.ct:                                            ; preds = %bb.cs
  %i.axv = icmp ult i32 %i.axs, 2097152
  %i.axw = icmp ult i32 %i.axs, 268435456
  %i.axx = select i1 %i.axw, i64 4, i64 5
  %i.axy = select i1 %i.axv, i64 3, i64 %i.axx
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit870

_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit870: ; preds = %bb.cr, %bb.cs, %bb.ct
  %i.axz = phi i64 [ 1, %bb.cr ], [ %i.axy, %bb.ct ], [ 2, %bb.cs ]
  %11 = add i64 %i.axq, 16
  %i.aya = add i64 %i.axz, %i.axr
  %12 = xor i64 %i.aya, -1
  %i.ayb = add i64 %11, %12
  %i.ayc = icmp slt i64 %i.ayb, %i.axn
  br i1 %i.ayc, label %.critedge.i, label %bb.cu, !prof !35

end_hunk_5
