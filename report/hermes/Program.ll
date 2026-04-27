inline.NumInlined: 478
inline.NumDeleted: 202
begin_hunk_0_@_ZL7ExecuteRN4llvh3sys11ProcessInfoENS_9StringRefENS_8ArrayRefIS3_EENS_8OptionalIS5_EENS4_INS6_IS3_EEEEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.gs = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 39 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 15 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !71, !range !67, !noundef !68
  %i.gw = trunc nuw i8 %i.gv to i1
end_hunk_0
begin_hunk_1_@_ZL7ExecuteRN4llvh3sys11ProcessInfoENS_9StringRefENS_8ArrayRefIS3_EENS_8OptionalIS5_EENS4_INS6_IS3_EEEEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.pi, label %bb.cu, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.pj = call fastcc noundef zeroext i1 @_ZN4llvhL10RedirectIOENS_8OptionalINS_9StringRefEEEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull byval(%"class.llvh::Optional.32") align 8 %.0.val, i32 noundef 0, ptr noundef %7)
  br i1 %i.pj, label %bb.cz, label %bb.co

end_hunk_1
