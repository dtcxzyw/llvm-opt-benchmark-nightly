inline.NumInlined: 254
inline.NumDeleted: 175
begin_hunk_0_@_ZN5arrow8internal13ParseUnsignedEPKcmPj:bb.a

bb.s:                                             ; preds = %bb.r
  %.not144 = icmp eq i64 %i.bg, 0
  br i1 %.not144, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp samesign ugt i32 %i.bj, 429496729
  br i1 %i.bk, label %.thread, label %bb.u, !prof !32

bb.u:                                             ; preds = %bb.t
  %3 = load i8, ptr %i.bc, align 1, !tbaa !31
  %4 = add i8 %3, -48                             ; 2 uses
  %i.bl = mul nuw i32 %i.bj, 10                   ; 4 uses
  %i.bm = zext i8 %4 to i32
  %i.bn = add i32 %i.bl, %i.bm                    ; 2 uses
  %.not146 = icmp eq i64 %i.bg, 1
  %.not149 = icmp ult i8 %4, 10
  %or.cond.not = and i1 %.not146, %.not149        ; 2 uses
  %5 = icmp uge i32 %i.bn, %i.bl
  %.146 = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %i.bl)
  %.9104 = select i1 %or.cond.not, i32 %.146, i32 %i.bl, !prof !90
  %cond9 = select i1 %or.cond.not, i1 %5, i1 false, !prof !90
  br i1 %cond9, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.10105 = phi i32 [ %.9104, %bb.u ], [ %i.bj, %bb.s ], [ %i.bb, %bb.q ], [ %i.au, %bb.o ], [ %i.an, %bb.m ], [ %i.ag, %bb.k ], [ %i.z, %bb.i ], [ %i.s, %bb.g ], [ %i.l, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  store i32 %.10105, ptr %2, align 4, !tbaa !3
  br label %.thread

.thread:                                          ; preds = %bb.t, %bb.u, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.v
  %.10115 = phi i1 [ false, %bb.b ], [ true, %bb.v ], [ false, %bb.u ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.t ]
  ret i1 %.10115
}

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@llvm.umax.i32
!87 = !{!"branch_weights", i32 2146410443, i32 1073205}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"branch_weights", i32 4000000, i32 4001}
!91 = !{!92, !100, i64 8}
!92 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !93, i64 0, !100, i64 8}
!93 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !94, i64 0}
end_hunk_1
