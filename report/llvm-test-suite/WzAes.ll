begin_hunk_0
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN7NCrypto6NWzAes8CDecoder23CheckPasswordVerifyCodeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(600) %0) local_unnamed_addr #6 align 2 {
_ZN7NCrypto6NWzAesL13CompareArraysEPKhS2_j.exit:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %2 = load i8, ptr %i.a, align 4, !tbaa !17
  %3 = load i8, ptr %1, align 8, !tbaa !17
  %.not.i = icmp eq i8 %2, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 45
  %4 = load i8, ptr %i.b, align 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 281
  %6 = load i8, ptr %5, align 1
  %.not.i.1 = icmp eq i8 %4, %6
  %.not.i.lcssa = select i1 %.not.i, i1 %.not.i.1, i1 false
  ret i1 %.not.i.lcssa
}

; Function Attrs: mustprogress uwtable
end_hunk_0
