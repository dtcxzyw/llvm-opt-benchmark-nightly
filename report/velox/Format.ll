begin_hunk_0
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i
  store ptr %i.j, ptr %1, align 8, !tbaa !50
  %2 = add i32 %i.h, -1
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  store i8 0, ptr %i.l, align 1, !tbaa !48
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.02145.in = phi i32 [ %2, %bb.a ], [ %3, %bb.f ] ; 5 uses
  %.02443 = phi i32 [ %i.f, %bb.a ], [ %.lcssa49, %bb.f ] ; 4 uses
  %.03842 = phi i32 [ %i.e, %bb.a ], [ %i.ak, %bb.f ] ; 4 uses
  %i.m = tail call i32 @llvm.umax.i32(i32 %.03842, i32 1)
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.m, i32 3)
  %i.n = add i32 %.02443, -1                      ; 2 uses
  %i.o = zext i32 %.02443 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !48
  %i.r = add i32 %.02145.in, -1                   ; 3 uses
  %i.s = zext i32 %.02145.in to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  store i8 %i.q, ptr %i.t, align 1, !tbaa !48
  %exitcond.not = icmp ult i32 %.03842, 2
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.140.lcssa = phi i32 [ %.02145.in, %bb.b ], [ %i.r, %bb.d ], [ %i.y, %bb.e ] ; 2 uses
  %.lcssa49 = phi i32 [ %i.n, %bb.b ], [ %i.u, %bb.d ], [ %i.ab, %bb.e ]
  %.lcssa = phi i32 [ %i.r, %bb.b ], [ %i.y, %bb.d ], [ %i.af, %bb.e ]
  %.not = icmp eq i32 %.140.lcssa, 0
  br i1 %.not, label %.critedge, label %bb.f

end_hunk_0
begin_hunk_1
  %i.v = zext i32 %i.n to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !48
  %i.y = add i32 %.02145.in, -2                   ; 3 uses
  %i.z = zext i32 %i.r to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  store i8 %i.x, ptr %i.aa, align 1, !tbaa !48
end_hunk_1
begin_hunk_2
  %i.ac = zext i32 %i.u to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !48
  %i.af = add i32 %.02145.in, -3
  %i.ag = zext i32 %i.y to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  store i8 %i.ae, ptr %i.ah, align 1, !tbaa !48
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %3 = add i32 %.140.lcssa, -2
  %i.ai = zext i32 %.lcssa to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  store i8 44, ptr %i.aj, align 1, !tbaa !48
  %i.ak = sub i32 %.03842, %.sroa.speculated
  br label %bb.b, !llvm.loop !143

.critedge:                                        ; preds = %bb.c
  ret void
end_hunk_2
begin_hunk_3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(23) ptr @_Znwm(i64 noundef 23) #34 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !57, !alias.scope !144
  store i64 22, ptr %i.a, align 8, !tbaa !48, !alias.scope !144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.b, ptr noundef nonnull align 1 dereferenceable(22) @.str.27, i64 22, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 22, ptr %i.c, align 8, !tbaa !63, !alias.scope !144
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i8 0, ptr %i.d, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
end_hunk_3
begin_hunk_4
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !62, !alias.scope !149
  %i.i = icmp eq ptr %1, null
  %i.j = icmp ne ptr %2, null
  %or.cond.i.i.i = and i1 %i.i, %i.j
end_hunk_4
begin_hunk_5
          to label %.noexc8 unwind label %bb.j    ; 2 uses

.noexc8:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.o, ptr %5, align 8, !tbaa !57, !alias.scope !149
  store i64 %i.g, ptr %i.h, align 8, !tbaa !48, !alias.scope !149
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc8, %bb.b
end_hunk_5
begin_hunk_6

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.g, ptr %i.r, align 8, !tbaa !63, !alias.scope !149
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.s, align 1, !tbaa !48
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
end_hunk_6
begin_hunk_7
!140 = !{!"_ZTSN5folly15expected_detail5WhichE", !9, i64 0}
!141 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!142 = !{!132, !132, i64 0}
!143 = distinct !{!143, !88}
!144 = !{!145, !147}
!145 = distinct !{!145, !146, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_: argument 0"}
!146 = distinct !{!146, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_"}
!147 = distinct !{!147, !148, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev: argument 0"}
!148 = distinct !{!148, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev"}
!149 = !{!150, !152}
!150 = distinct !{!150, !151, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_: argument 0"}
!151 = distinct !{!151, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_"}
!152 = distinct !{!152, !153, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev: argument 0"}
!153 = distinct !{!153, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev"}
end_hunk_7
