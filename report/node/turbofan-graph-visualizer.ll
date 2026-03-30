begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 7 uses
  %.sroa.6 = alloca %struct.anon.1027, align 8    ; 5 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
end_hunk_0
begin_hunk_1
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i32 11, ptr %3, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %.sroa.514.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  store ptr %i.d, ptr %i.g, align 8
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit.critedge:    ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i32 11, ptr %3, align 8
  %.sroa.514.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %.sroa.514.0..sroa_idx15, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.i, align 8
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit
end_hunk_1
begin_hunk_2
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.o = load i32, ptr %3, align 8
  %i.p = icmp eq i32 %i.o, 11
  br i1 %i.p, label %bb.d, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 24, i1 false)
  %i.t = load ptr, ptr %i.s, align 8
  store ptr %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 16, i1 false)
  store ptr %i.v, ptr %i.x, align 8
end_hunk_2
begin_hunk_3
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.f:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %.pre.i = load ptr, ptr %i.k, align 8
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

end_hunk_3
begin_hunk_4
  unreachable

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit: ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ah = load i32, ptr %3, align 8
  %i.ai = icmp eq i32 %i.ah, 11
  br i1 %i.ai, label %bb.h, label %_ZNSt8__detail6_StateIcED2Ev.exit5

bb.h:                                             ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i3, label %_ZNSt8__detail6_StateIcED2Ev.exit5, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i32 noundef 3) #25 ; 0 uses
  br label %_ZNSt8__detail6_StateIcED2Ev.exit5

_ZNSt8__detail6_StateIcED2Ev.exit5:               ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit, %bb.h, %bb.i
  %i.an = add nsw i64 %i.af, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret i64 %i.an
}

end_hunk_4
