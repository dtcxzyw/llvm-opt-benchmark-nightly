inline.NumInlined: 1048
inline.NumDeleted: 522
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__cxx_global_var_init.90:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.91() #0 section ".text.startup" comdat($_ZN4Luau7CstRttiINS_15CstTypeFunctionEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7CstRttiINS_15CstTypeFunctionEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7CstRttiINS_15CstTypeFunctionEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  store i32 %i.d, ptr @_ZN4Luau7CstRttiINS_15CstTypeFunctionEE5valueE, align 4, !tbaa !9
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7CstRttiINS_15CstTypeFunctionEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.92() #0 section ".text.startup" comdat($_ZN4Luau7CstRttiINS_13CstTypeTypeofEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7CstRttiINS_13CstTypeTypeofEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7CstRttiINS_13CstTypeTypeofEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  store i32 %i.d, ptr @_ZN4Luau7CstRttiINS_13CstTypeTypeofEE5valueE, align 4, !tbaa !9
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7CstRttiINS_13CstTypeTypeofEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.93() #0 section ".text.startup" comdat($_ZN4Luau7CstRttiINS_12CstTypeUnionEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7CstRttiINS_12CstTypeUnionEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7CstRttiINS_12CstTypeUnionEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  store i32 %i.d, ptr @_ZN4Luau7CstRttiINS_12CstTypeUnionEE5valueE, align 4, !tbaa !9
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7CstRttiINS_12CstTypeUnionEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.94() #0 section ".text.startup" comdat($_ZN4Luau7CstRttiINS_19CstTypeIntersectionEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7CstRttiINS_19CstTypeIntersectionEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7CstRttiINS_19CstTypeIntersectionEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  store i32 %i.d, ptr @_ZN4Luau7CstRttiINS_19CstTypeIntersectionEE5valueE, align 4, !tbaa !9
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7CstRttiINS_19CstTypeIntersectionEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.95() #0 section ".text.startup" comdat($_ZN4Luau7CstRttiINS_22CstTypeSingletonStringEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7CstRttiINS_22CstTypeSingletonStringEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7CstRttiINS_22CstTypeSingletonStringEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  store i32 %i.d, ptr @_ZN4Luau7CstRttiINS_22CstTypeSingletonStringEE5valueE, align 4, !tbaa !9
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7CstRttiINS_22CstTypeSingletonStringEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.96() #0 section ".text.startup" comdat($_ZN4Luau7CstRttiINS_12CstTypeGroupEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7CstRttiINS_12CstTypeGroupEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7CstRttiINS_12CstTypeGroupEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  store i32 %i.d, ptr @_ZN4Luau7CstRttiINS_12CstTypeGroupEE5valueE, align 4, !tbaa !9
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7CstRttiINS_12CstTypeGroupEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.97() #0 section ".text.startup" comdat($_ZN4Luau7CstRttiINS_19CstTypePackExplicitEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7CstRttiINS_19CstTypePackExplicitEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7CstRttiINS_19CstTypePackExplicitEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  store i32 %i.d, ptr @_ZN4Luau7CstRttiINS_19CstTypePackExplicitEE5valueE, align 4, !tbaa !9
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7CstRttiINS_19CstTypePackExplicitEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.98() #0 section ".text.startup" comdat($_ZN4Luau7CstRttiINS_18CstTypePackGenericEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7CstRttiINS_18CstTypePackGenericEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7CstRttiINS_18CstTypePackGenericEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gCstRttiIndexE, align 4, !tbaa !9
  store i32 %i.d, ptr @_ZN4Luau7CstRttiINS_18CstTypePackGenericEE5valueE, align 4, !tbaa !9
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7CstRttiINS_18CstTypePackGenericEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: cold mustprogress nofree noreturn nounwind uwtable
define dso_local void @_Z4helpRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %i.c) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #23
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector", align 8       ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::optional", align 8     ; 11 uses
  %7 = alloca %struct.Reducer, align 8            ; 24 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.d = sext i32 %0 to i64                       ; 4 uses
  %.idx88 = shl nsw i64 %i.d, 3
  %i.e = getelementptr inbounds i8, ptr %1, i64 %.idx88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.d, 4
  %i.f = icmp slt i32 %0, 0
  br i1 %i.f, label %.noexc.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #25
  unreachable

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %0, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.g = getelementptr inbounds nuw [16 x i8], ptr null, i64 %i.d ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !18
  br label %.loopexit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #26 ; 4 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.d ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !18
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.lr.ph.i.i.i.i.preheader.i.i ] ; 3 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.l = load ptr, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #24
  store i64 %i.m, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.e
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !21

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i
  %i.q = phi ptr [ %i.g, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.r = phi ptr [ null, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i ], [ %i.i, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.s, align 8, !tbaa !23
  %i.t = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i to i64
  %i.u = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4
  %.not = icmp eq i64 %i.v, 64
  br i1 %.not, label %.lr.ph, label %bb.b

bb.b:                                             ; preds = %.loopexit
  call void @_Z4helpRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %2) #25
  unreachable

._crit_edge:                                      ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !24
  %i.aa = icmp eq ptr %i.y, null
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.115) #25
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %._crit_edge
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !26
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i30, label %._crit_edge.i.i

.noexc.i30:                                       ; preds = %bb.d
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc31 unwind label %bb.u   ; 2 uses

.noexc31:                                         ; preds = %.noexc.i30
  store ptr %i.ad, ptr %3, align 8, !tbaa !27
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !26
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc31, %bb.d
  %i.af = phi ptr [ %i.ad, %.noexc31 ], [ %i.z, %bb.d ] ; 2 uses
  switch i64 %i.ab, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.h
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %i.y, align 1, !tbaa !29
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !29
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.y, i64 %i.ab, i1 false)
  br label %bb.h

.lr.ph:                                           ; preds = %.loopexit, %bb.g
  %.02189 = phi i64 [ %i.at, %bb.g ], [ 1, %.loopexit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.02189 ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.ai = icmp eq i64 %.sroa.01.0.copyload, 6
  br i1 %i.ai, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %bb.g

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %.lr.ph
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.aj = load i32, ptr %.sroa.22.0.copyload, align 1
  %i.ak = xor i32 %i.aj, 1701326125
  %i.al = getelementptr i8, ptr %.sroa.22.0.copyload, i64 4
  %i.am = load i16, ptr %i.al, align 1
  %i.an = zext i16 %i.am to i32
  %i.ao = xor i32 %i.an, 28780
  %i.ap = or i32 %i.ak, %i.ao
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.g

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @_Z4helpRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %2) #25
  unreachable

bb.g:                                             ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.at = add nuw i64 %.02189, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.au = load i64, ptr %i.c, align 8, !tbaa !26  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.au, ptr %i.av, align 8, !tbaa !31
  %i.aw = load ptr, ptr %3, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !19 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !24
  %i.bb = icmp eq ptr %i.az, null
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.115) #25
          to label %.noexc34 unwind label %bb.v

.noexc34:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !26
  %i.bd = icmp ugt i64 %i.bc, 15
  br i1 %i.bd, label %.noexc.i33, label %._crit_edge.i.i32

.noexc.i33:                                       ; preds = %bb.j
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc35 unwind label %bb.v   ; 2 uses

.noexc35:                                         ; preds = %.noexc.i33
  store ptr %i.be, ptr %4, align 8, !tbaa !27
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !26
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !29
  br label %._crit_edge.i.i32

._crit_edge.i.i32:                                ; preds = %.noexc35, %bb.j
  %i.bg = phi ptr [ %i.be, %.noexc35 ], [ %i.ba, %bb.j ] ; 2 uses
  switch i64 %i.bc, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i32
  %i.bh = load i8, ptr %i.az, align 1, !tbaa !29
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !29
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr nonnull align 1 %i.az, i64 %i.bc, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i32
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !26  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !31
  %i.bk = load ptr, ptr %4, align 8, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
end_hunk_0
