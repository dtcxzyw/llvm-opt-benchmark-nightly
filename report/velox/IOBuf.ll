inline.NumInlined: 545
inline.NumDeleted: 270
begin_hunk_0_@_ZNSt11logic_errorC2EOS_
declare void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define noundef signext range(i8 -1, 2) i8 @_ZNK5folly12IOBufCompare4implERKNS_5IOBufES3_(ptr noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::io::Cursor", align 8 ; 11 uses
  %4 = alloca %"class.folly::io::Cursor", align 8 ; 11 uses
end_hunk_0
begin_hunk_1_@_ZNK5folly12IOBufCompare4implERKNS_5IOBufES3_:bb.a
bb.f:                                             ; preds = %.noexc16, %bb.d
  %i.ah = phi ptr [ %.pre.i15, %.noexc16 ], [ %i.ac, %bb.d ] ; 2 uses
  %.0.i12 = phi i64 [ %i.ag, %.noexc16 ], [ %i.af, %bb.d ] ; 2 uses
  %i.ai = icmp samesign eq i64 %.0.i, 0           ; 2 uses
  %i.aj = icmp samesign eq i64 %.0.i12, 0         ; 2 uses
  %or.cond = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %5 = zext i1 %i.aj to i32
  %.neg = sext i1 %i.ai to i32
  %6 = add nsw i32 %5, %.neg
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.0.i12, i64 %.0.i) ; 7 uses
  %i.ak = call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.ah, i64 noundef %.sroa.speculated) #43 ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
end_hunk_1
begin_hunk_2_@_ZNK5folly12IOBufCompare4implERKNS_5IOBufES3_:bb.a
  br label %bb.b, !llvm.loop !3983

.loopexit:                                        ; preds = %bb.h
  %7 = call i32 @llvm.scmp.i32.i32(i32 %i.ak, i32 0)
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.g
  %.2.ph.in = phi i32 [ %6, %bb.g ], [ %7, %.loopexit ]
  %.2.ph = trunc nsw i32 %.2.ph.in to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret i8 %.2.ph
end_hunk_2
begin_hunk_3_@memcmp
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

end_hunk_3
