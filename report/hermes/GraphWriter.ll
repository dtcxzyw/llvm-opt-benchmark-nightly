inline.NumInlined: 399
inline.NumDeleted: 182
begin_hunk_0_@_ZN12_GLOBAL__N_112GraphSession14TryFindProgramEN4llvh9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL15ExecGraphViewerN4llvh9StringRefERSt6vectorIS0_SaIS0_EES0_bRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %0, i64 %1, ptr %.0.val, ptr %.8.val, ptr %2, i64 %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #1 {
bb.a:
  %6 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %7 = alloca %"class.llvh::Optional", align 8    ; 2 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvh::Optional", align 8    ; 2 uses
  store ptr %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %3, ptr %i.a, align 8
  %i.b = ptrtoint ptr %.8.val to i64
  %i.c = ptrtoint ptr %.0.val to i64
end_hunk_0
begin_hunk_1_@_ZL15ExecGraphViewerN4llvh9StringRefERSt6vectorIS0_SaIS0_EES0_bRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZN4llvh11raw_ostreamlsEPKc.exit25:               ; preds = %bb.l, %bb.m
  %i.bi = phi ptr [ %.pre, %bb.l ], [ %i.bh, %bb.m ] ; 3 uses
  %.0.i.i24 = phi ptr [ %i.bf, %bb.l ], [ %i.aw, %bb.m ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i24, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i24, i64 24 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ugt i64 %3, %i.bo
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit25
  %i.bq = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i24, ptr noundef %2, i64 noundef %3) #16 ; 2 uses
  %.phi.trans.insert6 = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.pre7 = load ptr, ptr %.phi.trans.insert6, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit25
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %2, i64 %3, i1 false)
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %3 ; 2 uses
  store ptr %i.bs, ptr %i.bl, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

end_hunk_1
