begin_hunk_0
  unreachable

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %235
  %.pre.i = load i64, ptr %13, align 8, !alias.scope !70 ; [#uses=3 type=i64]
  %.pre13.i = add i64 %.pre.i, 1                  ; [#uses=1 type=i64]
  %239 = lshr i64 %.pre13.i, 3                    ; [#uses=1 type=i64]
  %240 = mul nuw i64 %239, 7                      ; [#uses=1 type=i64]
  %241 = icmp ult i64 %.pre.i, 8                  ; [#uses=1 type=i1]
  %spec.select = select i1 %241, i64 %.pre.i, i64 %240 ; [#uses=1 type=i64]
  %.pre = load i64, ptr %8, align 8, !alias.scope !70 ; [#uses=1 type=i64]
  br label %242

end_hunk_0
