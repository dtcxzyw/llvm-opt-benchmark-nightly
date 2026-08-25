Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3AstNodes?download=true
inline.NumInlined: 27718
inline.NumDeleted: 2557
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK21AstWildcardArrayDType13virtRefDTypepEv:bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN21AstWildcardArrayDType13virtRefDTypepEP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %1, ptr %i.a, align 8, !tbaa !499
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17AstPackArrayDTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN17AstPackArrayDType5cloneEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #37 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.d, ptr noundef nonnull align 8 dereferenceable(10) %i.e, i64 10, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !393
  store ptr %i.h, ptr %i.f, align 8, !tbaa !393
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV17AstPackArrayDType, i64 16), ptr %i.a, align 8, !tbaa !36
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN17AstPackArrayDType6acceptER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2736
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK17AstPackArrayDType10isCompoundEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19AstUnpackArrayDTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN19AstUnpackArrayDType5cloneEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #37 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.d, ptr noundef nonnull align 8 dereferenceable(10) %i.e, i64 10, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !393
  store ptr %i.h, ptr %i.f, align 8, !tbaa !393
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV19AstUnpackArrayDType, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load i8, ptr %i.j, align 8, !tbaa !898, !range !123, !noundef !124
  store i8 %i.k, ptr %i.i, align 8, !tbaa !898
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK19AstUnpackArrayDType8sameNodeEPK7AstNode(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i8, ptr %i.a, align 8, !tbaa !898, !range !123, !noundef !124
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = load i8, ptr %i.c, align 8, !tbaa !898, !range !123, !noundef !124
  %i.e = icmp eq i8 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN19AstUnpackArrayDType6acceptER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4008
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK19AstUnpackArrayDType18isIntegralOrPackedEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK19AstUnpackArrayDType15isAggregateTypeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14AstStructDTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV21AstNodeUOrStructDType, i64 16), ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN21AstNodeUOrStructDTypeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !34
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34, !inline_history !1611
  br label %_ZN21AstNodeUOrStructDTypeD2Ev.exit

_ZN21AstNodeUOrStructDTypeD2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN14AstStructDType5cloneEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #37 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 144, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.f, i64 10, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV21AstNodeUOrStructDType, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !28
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.l, ptr %i.a, align 8, !tbaa !62
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e, !inline_history !1612 ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.n, ptr %i.g, align 8, !tbaa !35
  %i.o = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.o, ptr %i.i, align 8, !tbaa !34
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !34
  store i8 %i.q, ptr %i.p, align 1, !tbaa !34
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i64 %i.r, ptr %i.s, align 8, !tbaa !31
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.w = load i32, ptr @_ZN12AstNodeDType11s_uniqueNumE, align 4, !tbaa !73
  %i.x = add nsw i32 %i.w, 1                      ; 2 uses
  store i32 %i.x, ptr @_ZN12AstNodeDType11s_uniqueNumE, align 4, !tbaa !73
  store i32 %i.x, ptr %i.v, align 8, !tbaa !1613
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 204
  %1 = load <4 x i8>, ptr %i.z, align 4
  %i.aa = shufflevector <4 x i8> %1, <4 x i8> <i8 poison, i8 poison, i8 0, i8 0>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i8> %i.aa, ptr %i.y, align 4, !tbaa !562
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr null, ptr %i.ab, align 8, !tbaa !398
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV14AstStructDType, i64 16), ptr %i.b, align 8, !tbaa !36
  ret ptr %i.b

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 216) #34
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK14AstStructDType10verilogKwdB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.2443, i64 6, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.c, align 2, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN14AstStructDType6acceptER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3664
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21AstNodeUOrStructDTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV21AstNodeUOrStructDType, i64 16), ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !34
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13AstUnionDTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV21AstNodeUOrStructDType, i64 16), ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN21AstNodeUOrStructDTypeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !34
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34, !inline_history !1611
  br label %_ZN21AstNodeUOrStructDTypeD2Ev.exit

_ZN21AstNodeUOrStructDTypeD2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN13AstUnionDType5cloneEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #37 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 144, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(10) %i.f, i64 10, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV21AstNodeUOrStructDType, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !28
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.l, ptr %i.a, align 8, !tbaa !62
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e, !inline_history !1614 ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.n, ptr %i.g, align 8, !tbaa !35
  %i.o = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.o, ptr %i.i, align 8, !tbaa !34
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !34
  store i8 %i.q, ptr %i.p, align 1, !tbaa !34
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i64 %i.r, ptr %i.s, align 8, !tbaa !31
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.w = load i32, ptr @_ZN12AstNodeDType11s_uniqueNumE, align 4, !tbaa !73
  %i.x = add nsw i32 %i.w, 1                      ; 2 uses
  store i32 %i.x, ptr @_ZN12AstNodeDType11s_uniqueNumE, align 4, !tbaa !73
  store i32 %i.x, ptr %i.v, align 8, !tbaa !1613
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 204
  %1 = load <4 x i8>, ptr %i.z, align 4
  %i.aa = shufflevector <4 x i8> %1, <4 x i8> <i8 poison, i8 poison, i8 0, i8 0>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i8> %i.aa, ptr %i.y, align 4, !tbaa !562
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr null, ptr %i.ab, align 8, !tbaa !398
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV13AstUnionDType, i64 16), ptr %i.b, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = load i16, ptr %i.ad, align 8
  store i16 %i.ae, ptr %i.ac, align 8
  ret ptr %i.b

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 224) #34
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK13AstUnionDType10verilogKwdB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.2444, i64 5, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.c, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13AstUnionDType6acceptER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3992
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16AstNodeCoverDeclD0Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16AstNodeCoverDecl8sameNodeEPK7AstNode(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !514
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !514
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !35
  %bcmp.i = tail call i32 @bcmp(ptr %i.o, ptr %i.n, i64 %i.i)
  %i.p = icmp eq i32 %bcmp.i, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.x = icmp eq i64 %i.t, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit7.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit7: ; preds = %bb.d
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !35
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !35
  %bcmp.i6 = tail call i32 @bcmp(ptr %i.z, ptr %i.y, i64 %i.t)
  %i.aa = icmp eq i32 %bcmp.i6, 0
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit7.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit7.thread: ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit7.thread
  %i.ai = icmp eq i64 %i.ae, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !35
  %bcmp.i8 = tail call i32 @bcmp(ptr %i.ak, ptr %i.aj, i64 %i.ae)
  %i.al = icmp eq i32 %bcmp.i8, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit9: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.b, %bb.f, %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit7.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.a
  %i.am = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit7 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.e ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit7.thread ], [ %i.al, %bb.f ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ]
  ret i1 %i.am
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16AstNodeCoverDecl20isPredictOptimizableEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16AstNodeCoverDecl10instrCountEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16AstNodeCoverDecl14maybePointedToEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12AstNodeFTaskD0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK12AstNodeFTask4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !28
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load i64, ptr %i.e, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.f, ptr %i.a, align 8, !tbaa !62
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !35
  %i.i = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.i, ptr %i.c, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !34
  store i8 %i.k, ptr %i.j, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !31
  %i.n = load ptr, ptr %0, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
