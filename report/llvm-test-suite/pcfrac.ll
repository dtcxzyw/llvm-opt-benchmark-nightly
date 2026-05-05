inline.NumInlined: 12
begin_hunk_0_@pfactorbase:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %lsr.iv = phi ptr [ %scevgep, %bb.f ], [ getelementptr (i8, ptr @primes, i64 2), %bb.d ] ; 4 uses
  %i.ac = phi i16 [ %.pre, %bb.d ], [ %i.ae, %bb.f ]
  %i.ad = zext i16 %i.ac to i32
  %.not53 = icmp ult i32 %i.ad, %i.ab
  br i1 %.not53, label %bb.f, label %._crit_edge
end_hunk_0
begin_hunk_1_@pfactorbase:bb.a
  br i1 %.not54, label %split.a, label %bb.e, !llvm.loop !37

split.a:                                          ; preds = %bb.f
  %lsr.iv.lcssa66 = phi ptr [ %lsr.iv, %bb.f ]
  br label %bb.g

._crit_edge:                                      ; preds = %bb.e
  %lsr.iv.lcssa = phi ptr [ %lsr.iv, %bb.e ]
  br label %bb.g

bb.g:                                             ; preds = %split.a, %._crit_edge
end_hunk_1
