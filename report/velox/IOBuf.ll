inline.NumInlined: 545
inline.NumDeleted: 270
begin_hunk_0_@_ZNSt11logic_errorC2EOS_
declare void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define noundef signext i8 @_ZNK5folly12IOBufCompare4implERKNS_5IOBufES3_(ptr noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::io::Cursor", align 8 ; 11 uses
  %4 = alloca %"class.folly::io::Cursor", align 8 ; 11 uses
end_hunk_0
begin_hunk_1_@_ZNK5folly12IOBufCompare4implERKNS_5IOBufES3_:bb.a
bb.f:                                             ; preds = %.noexc16, %bb.d
  %i.ah = phi ptr [ %.pre.i15, %.noexc16 ], [ %i.ac, %bb.d ] ; 2 uses
  %.0.i12 = phi i64 [ %i.ag, %.noexc16 ], [ %i.af, %bb.d ] ; 2 uses
  %i.ai = icmp samesign eq i64 %.0.i, 0           ; 3 uses
  %i.aj = icmp samesign eq i64 %.0.i12, 0         ; 3 uses
  %or.cond = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %5 = xor i1 %i.aj, true
  %6 = and i1 %i.ai, %5
  %isnotnull.i = xor i1 %i.ai, %i.aj
  %7 = zext i1 %isnotnull.i to i8
  %8 = select i1 %6, i8 -1, i8 %7
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.0.i12, i64 %.0.i) ; 7 uses
  %i.ak = call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.ah, i64 noundef %.sroa.speculated) #43 ; 2 uses
  %.lobit.neg.i18 = ashr i32 %i.ak, 31
  %isnotnull.i19 = icmp ne i32 %i.ak, 0
  %isnotnull.zext.i20 = zext i1 %isnotnull.i19 to i32
  %9 = or i32 %.lobit.neg.i18, %isnotnull.zext.i20 ; 2 uses
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
end_hunk_1
begin_hunk_2_@_ZNK5folly12IOBufCompare4implERKNS_5IOBufES3_:bb.a
  br label %bb.b, !llvm.loop !3983

.loopexit:                                        ; preds = %bb.h
  %10 = trunc nsw i32 %9 to i8
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.g
  %.2.ph = phi i8 [ %8, %bb.g ], [ %10, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret i8 %.2.ph
end_hunk_2
begin_hunk_3_@memcmp
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

end_hunk_3
