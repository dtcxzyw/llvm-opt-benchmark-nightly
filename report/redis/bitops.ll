inline.NumInlined: 24
inline.NumDeleted: 2
begin_hunk_0_@bitopCommand:bb.a
  br label %bb.bz

.thread524:                                       ; preds = %bb.f, %bb.d, %bb.b, %bb.p, %bb.r, %bb.t
  %i.z = phi i1 [ false, %bb.t ], [ true, %bb.r ], [ false, %bb.p ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ] ; 2 uses
  %or.cond521530 = phi i1 [ true, %bb.t ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ]
  %or.cond5522529 = phi i1 [ false, %bb.t ], [ true, %bb.r ], [ true, %bb.p ], [ true, %bb.b ], [ true, %bb.d ], [ true, %bb.f ]
  %i.aa = phi i1 [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.p ], [ true, %bb.b ], [ false, %bb.d ], [ false, %bb.f ]
end_hunk_0
begin_hunk_1_@bitopCommand:bb.a
  br i1 %i.nk, label %.lr.ph702, label %.loopexit

.lr.ph702:                                        ; preds = %.loopexit570
  %1 = sext i1 %i.z to i8                         ; 2 uses
  %.not829 = icmp eq i32 %i.ag, 1
  %umax758 = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 2)
  br label %bb.bg
end_hunk_1
