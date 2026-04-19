inline.NumInlined: 254
inline.NumDeleted: 175
begin_hunk_0_@_ZN5arrow8internal13ParseUnsignedEPKcmPj:bb.a

bb.s:                                             ; preds = %bb.r
  %.not144 = icmp eq i64 %i.bg, 0
  br i1 %.not144, label %bb.v, label %3

3:                                                ; preds = %bb.s
  %4 = icmp samesign ugt i32 %i.bj, 429496729
  br i1 %4, label %.thread, label %bb.t, !prof !32

bb.t:                                             ; preds = %3
  %5 = load i8, ptr %i.bc, align 1, !tbaa !31
  %6 = add i8 %5, -48                             ; 2 uses
  %.not145 = icmp ne i64 %i.bg, 1
  %i.bk = icmp ugt i8 %6, 9
  %or.cond = or i1 %.not145, %i.bk
  br i1 %or.cond, label %.thread, label %bb.u, !prof !90

bb.u:                                             ; preds = %bb.t
  %i.bl = mul nuw i32 %i.bj, 10                   ; 3 uses
  %i.bm = zext nneg i8 %6 to i32
  %i.bn = add i32 %i.bl, %i.bm                    ; 2 uses
  %.not149 = icmp ult i32 %i.bn, %i.bl
  %.146 = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %i.bl)
  br i1 %.not149, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.10105 = phi i32 [ %.146, %bb.u ], [ %i.bj, %bb.s ], [ %i.bb, %bb.q ], [ %i.au, %bb.o ], [ %i.an, %bb.m ], [ %i.ag, %bb.k ], [ %i.z, %bb.i ], [ %i.s, %bb.g ], [ %i.l, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  store i32 %.10105, ptr %2, align 4, !tbaa !3
  br label %.thread

.thread:                                          ; preds = %bb.t, %3, %bb.u, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.v
  %.10 = phi i1 [ false, %bb.b ], [ true, %bb.v ], [ false, %bb.u ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %3 ], [ false, %bb.t ]
  ret i1 %.10
}

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@llvm.umax.i32
!87 = !{!"branch_weights", i32 2146410443, i32 1073205}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"branch_weights", i32 4001, i32 4000000}
!91 = !{!92, !100, i64 8}
!92 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !93, i64 0, !100, i64 8}
!93 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !94, i64 0}
end_hunk_1
