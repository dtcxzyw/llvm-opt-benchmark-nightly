begin_hunk_0
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.101", align 8 ; 5 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 11 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store i32 11, ptr %3, align 8, !tbaa !329
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !332
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !346  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 3 uses
end_hunk_0
begin_hunk_1
  br i1 %.not.i.i.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !489
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.d, ptr %i.h, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 16, i1 false), !tbaa.struct !432
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  store ptr %i.d, ptr %i.j, align 8, !tbaa !346
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !489
  store ptr %i.f, ptr %i.k, align 8, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
end_hunk_1
begin_hunk_2
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !432
  %i.q = load i32, ptr %4, align 8, !tbaa !329
  %i.r = icmp eq i32 %i.q, 11
  br i1 %i.r, label %bb.f, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !346
  store ptr %i.v, ptr %i.t, align 8, !tbaa !346
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 16, i1 false), !tbaa.struct !489
  store ptr %i.x, ptr %i.z, align 8, !tbaa !40
end_hunk_2
begin_hunk_3
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.h:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
end_hunk_3
begin_hunk_4
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.aj = load i32, ptr %4, align 8, !tbaa !329
  %i.ak = icmp eq i32 %i.aj, 11
  br i1 %i.ak, label %bb.k, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.am, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.m ; 0 uses

end_hunk_4
begin_hunk_5
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.j, %bb.k, %bb.l
  %i.ar = load i32, ptr %3, align 8, !tbaa !329
  %i.as = icmp eq i32 %i.ar, 11
  br i1 %i.as, label %bb.n, label %_ZNSt8__detail6_StateIcED2Ev.exit7

end_hunk_5
begin_hunk_6

_ZNSt8__detail6_StateIcED2Ev.exit7:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.n, %bb.o
  %i.ax = add nsw i64 %i.ah, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret i64 %i.ax

bb.q:                                             ; preds = %bb.i, %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #34
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.ay
}

end_hunk_6
