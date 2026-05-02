inline.NumInlined: 51
inline.NumDeleted: 3
begin_hunk_0_@d2i_PUBKEY_int:bb.a
  %i.d = icmp ne ptr %3, null
  %i.e = icmp ne ptr %4, null
  %or.cond = or i1 %i.d, %i.e
  %6 = trunc nuw i32 %5 to i1
  %or.cond3 = select i1 %or.cond, i1 true, i1 %6
  br i1 %or.cond3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@d2i_PUBKEY_ex:bb.a

; Function Attrs: nounwind uwtable
define dso_local ptr @d2i_PUBKEY(ptr noundef captures(address_is_null) %0, ptr noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
d2i_PUBKEY_int.exit:
  %3 = tail call fastcc ptr @d2i_PUBKEY_int(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef null, i32 noundef 0)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
end_hunk_1
