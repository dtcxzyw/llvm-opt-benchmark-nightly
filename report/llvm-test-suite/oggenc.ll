inline.NumInlined: 676
inline.NumDeleted: 90
begin_hunk_0_@push:bb.a
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %i.cb = sdiv i64 %i.ca, %i.w
  %i.cc = add i64 %i.cb, %.080.lcssa              ; 6 uses
  %i.cd = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = icmp ult i64 %i.cc, %i.ce
end_hunk_0
begin_hunk_1_@push:bb.a
  %i.cp = sub i64 %i.co, %i.ci                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cp, 44
  %9 = mul i64 %i.cc, -4
  %diff.check = icmp ult i64 %9, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph105.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph105.preheader
  %n.vec = and i64 %i.cr, 9223372036854775800     ; 4 uses
end_hunk_1
begin_hunk_2_@llvm.umul.with.overflow.i64
!137 = distinct !{!137, !6}
!138 = distinct !{!138, !6}
!139 = distinct !{!139, !6, !61, !103}
!140 = distinct !{!140, !6, !61}
!141 = distinct !{!141, !6}
!142 = distinct !{!142, !6}
!143 = distinct !{!143, !6}
end_hunk_2
