inline.NumInlined: 6274
inline.NumDeleted: 2547
begin_hunk_0_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE21_M_bracket_expressionEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE:bb.a
  br i1 %.not.i.i.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.012.0.copyload = load <2 x i64>, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.copyload.i.i.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.012.0.copyload, %bb.b ]
  store i32 11, ptr %2, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %.sroa.411.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.f, align 8
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %i.e, align 8
  store ptr %i.d, ptr %i.g, align 8
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

end_hunk_1
begin_hunk_2_@_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE:bb.a
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.m = load i32, ptr %2, align 8
  %i.n = icmp eq i32 %i.m, 11
  br i1 %i.n, label %bb.f, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false)
  %i.r = load ptr, ptr %i.q, align 8
  store ptr %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 16, i1 false)
  store ptr %i.t, ptr %i.v, align 8
end_hunk_2
begin_hunk_3_@_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE:bb.a
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.h:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre.i = load ptr, ptr %i.i, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

end_hunk_3
begin_hunk_4_@_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE:bb.a
  unreachable

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit: ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.af = load i32, ptr %2, align 8
  %i.ag = icmp eq i32 %i.af, 11
  br i1 %i.ag, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit5

bb.j:                                             ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i3, label %_ZNSt8__detail6_StateIcED2Ev.exit5, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i32 noundef 3) #24, !inline_history !209 ; 0 uses
  br label %_ZNSt8__detail6_StateIcED2Ev.exit5

_ZNSt8__detail6_StateIcED2Ev.exit5:               ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit, %bb.j, %bb.k
  %i.al = add nsw i64 %i.ad, -1
  ret i64 %i.al
}

end_hunk_4
