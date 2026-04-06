begin_hunk_0
inline.NumInlined: 756
inline.NumDeleted: 214
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011613cord_internal12CordRepBtree4DumpEPKNS1_7CordRepESt17basic_string_viewIcSt11char_traitsIcEERSo:bb.a

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011613cord_internal12CordRepBtree4DumpEPKNS1_7CordRepERSo(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 36) ; 0 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_17DumpAllEPKNS1_7CordRepEbRSom(ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0)
  br label %bb.a

5:                                                ; preds = %2
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 5) ; 0 uses
  br label %bb.a

bb.a:                                             ; preds = %4, %5
  ret void
}

end_hunk_1
