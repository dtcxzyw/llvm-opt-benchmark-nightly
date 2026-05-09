inline.NumInlined: 36272
inline.NumDeleted: 7699
begin_hunk_0_@_ZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.bo = zext i1 %i.bm to i64
  %i.bp = add nuw i64 %i.bo, %i.bf                ; 3 uses
  %i.bq = icmp ne i64 %i.bn, 0                    ; 4 uses
  %i.br = icmp ugt i64 %i.bp, 999999999999999999  ; 3 uses
  %i.bs = mul nuw i64 %i.bp, 10
  %.0112 = select i1 %i.br, i32 19, i32 18        ; 4 uses
  %.0111 = select i1 %i.br, i64 %i.bp, i64 %i.bs  ; 3 uses
  br i1 %i.d, label %bb.k, label %bb.o

end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  br label %bb.au

.thread217:                                       ; preds = %bb.o
  %6 = select i1 %i.br, i32 18, i32 17
  %i.ja = add nsw i32 %.neg125, %6
  store i32 %i.ja, ptr %i.a, align 4, !tbaa !3
  br i1 %3, label %bb.av, label %bb.aw

end_hunk_1
