inline.NumInlined: 424
inline.NumDeleted: 209
begin_hunk_0_@_ZN22photos_editing_formats8image_io7XmlRule29AddOptionalWhitespaceTerminalEv:bb.a

declare void @_ZN22photos_editing_formats8image_io11DataScanner31CreateOptionalWhitespaceScannerEv(ptr dead_on_unwind writable sret(%"class.photos_editing_formats::image_io::DataScanner") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK22photos_editing_formats8image_io7XmlRule24GetTerminalIndexFromNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
begin_hunk_1_@_ZNK22photos_editing_formats8image_io7XmlRule24GetTerminalIndexFromNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8
  %.0611 = phi i64 [ %i.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw [168 x i8], ptr %i.g, i64 %.0611 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16
  %i.o = icmp eq i64 %i.n, %i.b
end_hunk_1
begin_hunk_2_@_ZN22photos_editing_formats8image_io7XmlRule21ResetTerminalScannersEv:bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN22photos_editing_formats8image_io11DataScanner5ResetEv(ptr noundef nonnull align 8 dereferenceable(100) %.sroa.04.08)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 168 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.d
end_hunk_2
begin_hunk_3_@_ZN22photos_editing_formats8image_io7XmlRule5ParseENS0_17XmlHandlerContextE:bb.a
  br i1 %i.aw, label %bb.h, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_141MaybeUpdateTokenLengthForReentrantScannerEPNS0_11DataScannerERKNS0_9DataRangeE.exit

bb.h:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataContext17GetBytesAvailableEv.exit
  %i.ax = getelementptr inbounds nuw [168 x i8], ptr %i.ar, i64 %i.an ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !66
  %.not.i = icmp eq i64 %i.az, 0
end_hunk_3
begin_hunk_4_@_ZN22photos_editing_formats8image_io7XmlRule5ParseENS0_17XmlHandlerContextE:bb.a

bb.m:                                             ; preds = %bb.l
  store i64 %.021101, ptr %i.am, align 8, !tbaa !27
  %i.cj = getelementptr inbounds nuw [168 x i8], ptr %i.cc, i64 %.021101 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN22photos_editing_formats8image_io11DataScanner4ScanERKNS0_11DataContextE(ptr dead_on_unwind nonnull writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %4, ptr noundef nonnull align 8 dereferenceable(100) %i.cj, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.n unwind label %bb.x
end_hunk_4
begin_hunk_5_@llvm.experimental.noalias.scope.decl
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22
end_hunk_5
begin_hunk_6_@bcmp
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_6
