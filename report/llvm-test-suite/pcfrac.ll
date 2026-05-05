inline.NumInlined: 12
begin_hunk_0_@pfactorbase:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %lsr.iv = phi ptr [ %scevgep, %bb.f ], [ getelementptr (i8, ptr @primes, i64 2), %bb.d ] ; 3 uses
  %i.ac = phi i16 [ %.pre, %bb.d ], [ %i.ae, %bb.f ]
  %.0 = phi ptr [ @primes, %bb.d ], [ %4, %bb.f ]
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 3 uses
  %i.ad = zext i16 %i.ac to i32
  %.not53 = icmp ult i32 %i.ad, %i.ab
  br i1 %.not53, label %bb.f, label %._crit_edge
end_hunk_0
begin_hunk_1_@pfactorbase:bb.a
  br i1 %.not54, label %split.a, label %bb.e, !llvm.loop !37

split.a:                                          ; preds = %bb.f
  %lsr.iv.lcssa66 = phi ptr [ %4, %bb.f ]
  br label %bb.g

._crit_edge:                                      ; preds = %bb.e
  %lsr.iv.lcssa = phi ptr [ %lsr.iv, %bb.e ]
  %split = phi ptr [ %4, %bb.e ]                  ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %split.a, %._crit_edge
end_hunk_1
