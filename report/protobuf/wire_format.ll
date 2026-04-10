inline.NumInlined: 2614
inline.NumDeleted: 870
begin_hunk_0_@_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
bb.j:                                             ; preds = %bb.i
  %i.by = icmp ult i32 %i.bv, 2097152
  %i.bz = icmp ult i32 %i.bv, 268435456
  %i.ca = select i1 %i.bz, i64 4, i64 5
  %i.cb = select i1 %i.by, i64 3, i64 %i.ca
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit

_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.cc = phi i64 [ 1, %bb.h ], [ %i.cb, %bb.j ], [ 2, %bb.i ]
  %3 = add i64 %i.bt, 16
  %i.cd = add i64 %i.cc, %i.bu
  %4 = xor i64 %i.cd, -1
  %i.ce = add i64 %3, %4
  %i.cf = icmp slt i64 %i.ce, %i.bq
  br i1 %i.cf, label %.critedge.i, label %bb.k, !prof !47

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal10WireFormat22InternalSerializeFieldEPKNS0_15FieldDescriptorERKNS0_7MessageEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
bb.jo:                                            ; preds = %bb.jn
  %i.axs = icmp ult i32 %i.axp, 2097152
  %i.axt = icmp ult i32 %i.axp, 268435456
  %i.axu = select i1 %i.axt, i64 4, i64 5
  %i.axv = select i1 %i.axs, i64 3, i64 %i.axu
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit

_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit: ; preds = %bb.jm, %bb.jn, %bb.jo
  %i.axw = phi i64 [ 1, %bb.jm ], [ %i.axv, %bb.jo ], [ 2, %bb.jn ]
  %27 = add i64 %i.axn, 16
  %i.axx = add i64 %i.axw, %i.axo
  %28 = xor i64 %i.axx, -1
  %i.axy = add i64 %27, %28
  %i.axz = icmp slt i64 %i.axy, %i.axk
  br i1 %i.axz, label %.critedge.i511, label %bb.jp, !prof !47

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal10WireFormat22InternalSerializeFieldEPKNS0_15FieldDescriptorERKNS0_7MessageEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
bb.kf:                                            ; preds = %bb.ke
  %i.bag = icmp ult i32 %i.bad, 2097152
  %i.bah = icmp ult i32 %i.bad, 268435456
  %i.bai = select i1 %i.bah, i64 4, i64 5
  %i.baj = select i1 %i.bag, i64 3, i64 %i.bai
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit971

_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit971: ; preds = %bb.kd, %bb.ke, %bb.kf
  %i.bak = phi i64 [ 1, %bb.kd ], [ %i.baj, %bb.kf ], [ 2, %bb.ke ]
  %29 = add i64 %i.bab, 16
  %i.bal = add i64 %i.bak, %i.bac
  %30 = xor i64 %i.bal, -1
  %i.bam = add i64 %29, %30
  %i.ban = icmp slt i64 %i.bam, %i.azy
  br i1 %i.ban, label %.critedge.i, label %bb.kg, !prof !47

end_hunk_2
