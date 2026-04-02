begin_hunk_0
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN7NCrypto6NWzAes8CDecoder23CheckPasswordVerifyCodeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(600) %0) local_unnamed_addr #6 align 2 {
_ZN7NCrypto6NWzAesL13CompareArraysEPKhS2_j.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %1 = load i16, ptr %i.a, align 1
  %2 = load i16, ptr %i.b, align 1
  %3 = icmp ne i16 %1, %2
  %4 = zext i1 %3 to i32
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress uwtable
end_hunk_0
