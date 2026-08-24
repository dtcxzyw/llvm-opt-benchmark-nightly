Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Def?download=true
inline.NumInlined: 248
inline.NumDeleted: 131
begin_hunk_0_@__cxx_global_var_init.57:bb.a

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !9
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !9
  store i32 %i.d, ptr @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 4, !tbaa !9
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.58() #0 section ".text.startup" comdat($_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !9
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !9
  store i32 %i.d, ptr @_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 4, !tbaa !9
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.59() #0 section ".text.startup" comdat($_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !9
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !9
  store i32 %i.d, ptr @_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 4, !tbaa !9
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Luau29containsSubscriptedDefinitionENS_7NotNullIKNS_3DefEEE(ptr nofree readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !10
  switch i32 %i.a, label %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit.thread [
    i32 0, label %_ZN4Luau3getINS_4CellEEEPKT_NS_7NotNullIKNS_3DefEEE.exit
    i32 1, label %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit
  ]

_ZN4Luau3getINS_4CellEEEPKT_NS_7NotNullIKNS_3DefEEE.exit: ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12, !range !15, !noundef !16
  %i.d = trunc nuw i8 %i.c to i1
  br label %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit.thread

_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 4 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = ashr i64 %i.k, 5                         ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit
  %i.n = and i64 %i.k, -32
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.n ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.f
  %.058.i.i.i.i.i = phi i64 [ %i.w, %bb.f ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.038.057.i.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.f, %.lr.ph.i.i.i.i.i.preheader ] ; 9 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.038.057.i.i.i.i.i, align 8, !tbaa !20
  %i.o = tail call noundef zeroext i1 @_ZN4Luau29containsSubscriptedDefinitionENS_7NotNullIKNS_3DefEEE(ptr %.sroa.0.0.copyload.i.i.i.i.i.i), !inline_history !22
  br i1 %i.o, label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i16.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.q = tail call noundef zeroext i1 @_ZN4Luau29containsSubscriptedDefinitionENS_7NotNullIKNS_3DefEEE(ptr %.sroa.0.0.copyload.i16.i.i.i.i.i), !inline_history !22
  br i1 %i.q, label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 16
  %.sroa.0.0.copyload.i17.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.s = tail call noundef zeroext i1 @_ZN4Luau29containsSubscriptedDefinitionENS_7NotNullIKNS_3DefEEE(ptr %.sroa.0.0.copyload.i17.i.i.i.i.i), !inline_history !22
  br i1 %i.s, label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit.loopexit.split.loop.exit31, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 24
  %.sroa.0.0.copyload.i18.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.u = tail call noundef zeroext i1 @_ZN4Luau29containsSubscriptedDefinitionENS_7NotNullIKNS_3DefEEE(ptr %.sroa.0.0.copyload.i18.i.i.i.i.i), !inline_history !22
  br i1 %i.u, label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit.loopexit.split.loop.exit33, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 32
  %i.w = add nsw i64 %.058.i.i.i.i.i, -1
  %i.x = icmp sgt i64 %.058.i.i.i.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !23

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.f
  %.pre.i.i.i.i.i = ptrtoint ptr %scevgep to i64
  %.pre63.i.i.i.i.i = sub i64 %i.i, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit
  %.pre-phi64.i.i.i.i.i = phi i64 [ %.pre63.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.k, %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit ]
  %.sroa.038.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.f, %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit ] ; 5 uses
  %i.y = ashr exact i64 %.pre-phi64.i.i.i.i.i, 3
  switch i64 %i.y, label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.sroa.0.0.copyload.i19.i.i.i.i.i = load ptr, ptr %.sroa.038.0.lcssa.i.i.i.i.i, align 8, !tbaa !20
  %i.z = tail call noundef zeroext i1 @_ZN4Luau29containsSubscriptedDefinitionENS_7NotNullIKNS_3DefEEE(ptr %.sroa.0.0.copyload.i19.i.i.i.i.i), !inline_history !22
  br i1 %i.z, label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i
  %.sroa.038.1.i.i.i.i.i = phi ptr [ %i.aa, %bb.h ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.copyload.i20.i.i.i.i.i = load ptr, ptr %.sroa.038.1.i.i.i.i.i, align 8, !tbaa !20
  %i.ab = tail call noundef zeroext i1 @_ZN4Luau29containsSubscriptedDefinitionENS_7NotNullIKNS_3DefEEE(ptr %.sroa.0.0.copyload.i20.i.i.i.i.i), !inline_history !22
  br i1 %i.ab, label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  %.sroa.038.2.i.i.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i21.i.i.i.i.i = load ptr, ptr %.sroa.038.2.i.i.i.i.i, align 8, !tbaa !20
  %i.ad = tail call noundef zeroext i1 @_ZN4Luau29containsSubscriptedDefinitionENS_7NotNullIKNS_3DefEEE(ptr %.sroa.0.0.copyload.i21.i.i.i.i.i), !inline_history !22
  %spec.select.i.i.i.i.i = select i1 %i.ad, ptr %.sroa.038.2.i.i.i.i.i, ptr %i.h
  br label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit

_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 8
  br label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit

_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit.loopexit.split.loop.exit31: ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 16
  br label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit

_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit.loopexit.split.loop.exit33: ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 24
  br label %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit

_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit.loopexit.split.loop.exit, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit.loopexit.split.loop.exit31, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit.loopexit.split.loop.exit33, %._crit_edge.i.i.i.i.i, %bb.g, %bb.i, %bb.k
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.038.1.i.i.i.i.i, %bb.i ], [ %spec.select.i.i.i.i.i, %bb.k ], [ %i.h, %._crit_edge.i.i.i.i.i ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %bb.g ], [ %i.ag, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit.loopexit.split.loop.exit33 ], [ %i.af, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit.loopexit.split.loop.exit31 ], [ %i.ae, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit.loopexit.split.loop.exit ], [ %.sroa.038.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ah = icmp ne ptr %i.h, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  br label %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit.thread

_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit.thread: ; preds = %bb.b, %bb.a, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit, %_ZN4Luau3getINS_4CellEEEPKT_NS_7NotNullIKNS_3DefEEE.exit
  %.1 = phi i1 [ %i.d, %_ZN4Luau3getINS_4CellEEEPKT_NS_7NotNullIKNS_3DefEEE.exit ], [ %i.ah, %_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEEPFbS6_EEbT_SF_T0_.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau15collectOperandsENS_7NotNullIKNS_3DefEEEPSt6vectorIS3_SaIS3_EE(ptr %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17     ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 13 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = ashr i64 %i.f, 5                         ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.i = and i64 %i.f, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.a, i64 %i.i ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.058.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ %i.v, %bb.f ] ; 2 uses
  %.sroa.038.057.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %i.u, %bb.f ] ; 9 uses
  %i.j = load ptr, ptr %.sroa.038.057.i.i.i, align 8, !tbaa !25
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = icmp eq ptr %i.p, %0
  br i1 %i.q, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit71, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.t = icmp eq ptr %i.s, %0
  br i1 %i.t, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit73, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 32
  %i.v = add nsw i64 %.058.i.i.i, -1
  %i.w = icmp sgt i64 %.058.i.i.i, 1
  br i1 %i.w, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !27

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre66.i.i.i = sub i64 %i.d, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi67.i.i.i = phi i64 [ %.pre66.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.f, %bb.a ]
  %.sroa.038.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.x = ashr exact i64 %.pre-phi67.i.i.i, 3
  switch i64 %i.x, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge64.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load ptr, ptr %.sroa.038.0.lcssa.i.i.i, align 8, !tbaa !25
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.h
  %.sroa.038.1.i.i.i = phi ptr [ %i.aa, %bb.h ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ab = load ptr, ptr %.sroa.038.1.i.i.i, align 8, !tbaa !25
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge64.i.i.i

._crit_edge._crit_edge64.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.i
  %.sroa.038.2.i.i.i = phi ptr [ %i.ad, %bb.i ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.038.2.i.i.i, align 8, !tbaa !25
  %i.af = icmp eq ptr %i.ae, %0
  %spec.select.i.i.i = select i1 %i.af, ptr %.sroa.038.2.i.i.i, ptr %i.c
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit71: ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit73: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit: ; preds = %bb.b, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit71, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit73, %bb.g, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge64.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.038.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge64.i.i.i ], [ %.sroa.038.0.lcssa.i.i.i, %bb.g ], [ %i.ai, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit73 ], [ %i.ah, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit71 ], [ %i.ag, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.038.057.i.i.i, %bb.b ]
  %i.aj = icmp ne ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.c
  %.not.i.i = icmp eq ptr %0, null
  %or.cond = select i1 %i.aj, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit, label %bb.j

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i
  %.not.i.i.old = icmp eq ptr %0, null
  br i1 %.not.i.i.old, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.thread
  %i.ak = load i32, ptr %0, align 8, !tbaa !10
  switch i32 %i.ak, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit [
    i32 0, label %_ZN4Luau3getINS_4CellEEEPKT_NS_7NotNullIKNS_3DefEEE.exit
    i32 1, label %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit
  ]

_ZN4Luau3getINS_4CellEEEPKT_NS_7NotNullIKNS_3DefEEE.exit: ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %.not.i = icmp eq ptr %i.c, %i.am
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4Luau3getINS_4CellEEEPKT_NS_7NotNullIKNS_3DefEEE.exit
  %i.an = ptrtoint ptr %0 to i64
  store i64 %i.an, ptr %i.c, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !30
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit

bb.l:                                             ; preds = %_ZN4Luau3getINS_4CellEEEPKT_NS_7NotNullIKNS_3DefEEE.exit
  %i.ap = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.ap, label %bb.m, label %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.aq = ashr exact i64 %i.f, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #18 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.f
  %i.ay = ptrtoint ptr %0 to i64
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !20
  %.not10.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = ptrtoaddr ptr %i.aw to i64
  %i.ba = add i64 %i.d, -8
  %i.bb = sub i64 %i.ba, %i.e                     ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check90 = icmp ult i64 %i.bb, 72
  %i.be = sub i64 %i.e, %i.az
  %diff.check88 = icmp ugt i64 %i.be, -32
  %or.cond104 = or i1 %min.iters.check90, %diff.check88
  br i1 %or.cond104, label %.lr.ph.i.i.i.i.i.preheader106, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec92 = and i64 %i.bd, 4611686018427387900   ; 3 uses
  %i.bf = shl i64 %n.vec92, 3                     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.aw, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.a, i64 %i.bf
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph91
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next99, %vector.body93 ] ; 2 uses
  %i.bi = shl i64 %index94, 3                     ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aw, i64 %i.bi ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.a, i64 %i.bi ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.bj = getelementptr i8, ptr %next.gep96, i64 16
  %wide.load97 = load <2 x i64>, ptr %next.gep96, align 8, !tbaa !20, !alias.scope !34, !noalias !31
  %wide.load98 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !20, !alias.scope !34, !noalias !31
  %i.bk = getelementptr i8, ptr %next.gep95, i64 16
  store <2 x i64> %wide.load97, ptr %next.gep95, align 8, !tbaa !20, !alias.scope !31, !noalias !34
  store <2 x i64> %wide.load98, ptr %i.bk, align 8, !tbaa !20, !alias.scope !31, !noalias !34
  %index.next99 = add nuw i64 %index94, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next99, %n.vec92
  br i1 %i.bl, label %middle.block100, label %vector.body93, !llvm.loop !36

middle.block100:                                  ; preds = %vector.body93
  %cmp.n101 = icmp eq i64 %i.bd, %n.vec92
  br i1 %cmp.n101, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader106

.lr.ph.i.i.i.i.i.preheader106:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block100
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bg, %middle.block100 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bh, %middle.block100 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader106, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader106 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader106 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.bm = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !20, !alias.scope !34, !noalias !31
  store i64 %i.bm, ptr %.012.i.i.i.i.i, align 8, !tbaa !20, !alias.scope !31, !noalias !34
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bn, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block100, %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aw, %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bg, %middle.block100 ], [ %i.bo, %.lr.ph.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %2 = load ptr, ptr %i.al, align 8, !tbaa !28
  %3 = ptrtoint ptr %2 to i64
  %4 = sub i64 %3, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %4) #19
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.aw, ptr %1, align 8, !tbaa !40
  store ptr %i.bp, ptr %i.b, align 8, !tbaa !30
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bq, ptr %i.al, align 8, !tbaa !28
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit

_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit: ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !17 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !17 ; 2 uses
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.o, label %.preheader

bb.o:                                             ; preds = %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !28
  %.not.i17 = icmp eq ptr %i.c, %i.bx
  br i1 %.not.i17, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = ptrtoint ptr %0 to i64
  store i64 %i.by, ptr %i.c, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bz, ptr %i.b, align 8, !tbaa !30
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit

bb.q:                                             ; preds = %bb.o
  %i.ca = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.ca, label %bb.r, label %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i18

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i18: ; preds = %bb.q
  %i.cb = ashr exact i64 %i.f, 3                  ; 3 uses
  %.sroa.speculated.i.i.i19 = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i19, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i.i20 = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i20)
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #18 ; 8 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.f
  %i.cj = ptrtoint ptr %0 to i64
  store i64 %i.cj, ptr %i.ci, align 8, !tbaa !20
  %.not10.i.i.i.i.i21 = icmp eq ptr %i.a, %i.c
  br i1 %.not10.i.i.i.i.i21, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i26, label %.lr.ph.i.i.i.i.i22.preheader

.lr.ph.i.i.i.i.i22.preheader:                     ; preds = %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i18
  %i.ck = ptrtoaddr ptr %i.ch to i64
  %i.cl = add i64 %i.d, -8
  %i.cm = sub i64 %i.cl, %i.e                     ; 2 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cm, 72
  %i.cp = sub i64 %i.e, %i.ck
  %diff.check = icmp ugt i64 %i.cp, -32
  %or.cond105 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond105, label %.lr.ph.i.i.i.i.i22.preheader107, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i22.preheader
  %n.vec = and i64 %i.co, 4611686018427387900     ; 3 uses
  %i.cq = shl i64 %n.vec, 3                       ; 2 uses
  %i.cr = getelementptr i8, ptr %i.ch, i64 %i.cq  ; 2 uses
  %i.cs = getelementptr i8, ptr %i.a, i64 %i.cq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ch, i64 %i.ct ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.a, i64 %i.ct ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.cu = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep84, align 8, !tbaa !20, !alias.scope !44, !noalias !41
  %wide.load85 = load <2 x i64>, ptr %i.cu, align 8, !tbaa !20, !alias.scope !44, !noalias !41
  %i.cv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !20, !alias.scope !41, !noalias !44
  store <2 x i64> %wide.load85, ptr %i.cv, align 8, !tbaa !20, !alias.scope !41, !noalias !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i26, label %.lr.ph.i.i.i.i.i22.preheader107

.lr.ph.i.i.i.i.i22.preheader107:                  ; preds = %.lr.ph.i.i.i.i.i22.preheader, %middle.block
  %.012.i.i.i.i.i23.ph = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i22.preheader ], [ %i.cr, %middle.block ]
  %.0911.i.i.i.i.i24.ph = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i22.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph.i.i.i.i.i22

.lr.ph.i.i.i.i.i22:                               ; preds = %.lr.ph.i.i.i.i.i22.preheader107, %.lr.ph.i.i.i.i.i22
  %.012.i.i.i.i.i23 = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i22 ], [ %.012.i.i.i.i.i23.ph, %.lr.ph.i.i.i.i.i22.preheader107 ] ; 2 uses
  %.0911.i.i.i.i.i24 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i22 ], [ %.0911.i.i.i.i.i24.ph, %.lr.ph.i.i.i.i.i22.preheader107 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.cx = load i64, ptr %.0911.i.i.i.i.i24, align 8, !tbaa !20, !alias.scope !44, !noalias !41
  store i64 %i.cx, ptr %.012.i.i.i.i.i23, align 8, !tbaa !20, !alias.scope !41, !noalias !44
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i24, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i23, i64 8 ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.cy, %i.c
  br i1 %.not.i.i.i.i.i25, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i26, label %.lr.ph.i.i.i.i.i22, !llvm.loop !47

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i26: ; preds = %.lr.ph.i.i.i.i.i22, %middle.block, %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i18
  %.0.lcssa.i.i.i.i.i27 = phi ptr [ %i.ch, %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i18 ], [ %i.cr, %middle.block ], [ %i.cz, %.lr.ph.i.i.i.i.i22 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i27, i64 8
  %.not.i23.i.i28 = icmp eq ptr %i.a, null
  br i1 %.not.i23.i.i28, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i29, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i26
  %5 = load ptr, ptr %i.bw, align 8, !tbaa !28
  %6 = ptrtoint ptr %5 to i64
  %7 = sub i64 %6, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %7) #19
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i29

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i29: ; preds = %bb.s, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i26
  store ptr %i.ch, ptr %1, align 8, !tbaa !40
  store ptr %i.da, ptr %i.b, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.db, ptr %i.bw, align 8, !tbaa !28
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit

.preheader:                                       ; preds = %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit, %.preheader
  %.sroa.032.054 = phi ptr [ %i.dd, %.preheader ], [ %i.bs, %_ZN4Luau3getINS_3PhiEEEPKT_NS_7NotNullIKNS_3DefEEE.exit ] ; 2 uses
  %i.dc = load ptr, ptr %.sroa.032.054, align 8, !tbaa !25
  tail call void @_ZN4Luau15collectOperandsENS_7NotNullIKNS_3DefEEEPSt6vectorIS3_SaIS3_EE(ptr %i.dc, ptr noundef nonnull %1)
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.032.054, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dd, %i.bu
  br i1 %.not, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit, label %.preheader

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit: ; preds = %.preheader, %bb.j, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit.thread, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i29, %bb.p, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.k, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4Luau7NotNullIKNS2_3DefEEESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau8DefArena9freshCellENS_6SymbolENS_8LocationEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2, i64 %3, i64 %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Luau::Def", align 8        ; 13 uses
  %i.a = zext i1 %5 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i32 0, ptr %6, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i8 %i.a, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !49
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %2, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 %3, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = icmp ugt i64 %i.f, 511
  br i1 %i.g, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %i.f ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %call.0.i.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4Luau14TypedAllocatorINS_3DefEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !53
  %.pre = load i32, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %.pre.i ; 5 uses
  store i32 %.pre, ptr %i.r, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = icmp eq i32 %.pre, 0
  br i1 %i.t, label %call.0.i.i.i, label %call.1.i.i.i

call.0.i.i.i:                                     ; preds = %.thread, %bb.c
  %i.u = phi ptr [ %i.m, %.thread ], [ %i.s, %bb.c ]
  %i.v = phi ptr [ %i.l, %.thread ], [ %i.r, %bb.c ]
  %i.w = load i8, ptr %i.b, align 8, !tbaa !48
  store i8 %i.w, ptr %i.u, align 1, !tbaa !48
  br label %bb.d

call.1.i.i.i:                                     ; preds = %bb.c
  %i.x = load <2 x ptr>, ptr %i.b, align 8, !tbaa !17
  store <2 x ptr> %i.x, ptr %i.s, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %call.1.i.i.i, %call.0.i.i.i
  %i.ab = phi ptr [ %i.r, %call.1.i.i.i ], [ %i.v, %call.0.i.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !53
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !53
  %i.af = load i32, ptr %6, align 8, !tbaa !10
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_4CellENS_3PhiEEE9tableDtorE, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63
  invoke void %i.ai(ptr noundef nonnull %i.b)
          to label %_ZN4Luau3DefD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #21
  unreachable

_ZN4Luau3DefD2Ev.exit:                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret ptr %i.ab

bb.f:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load i32, ptr %6, align 8, !tbaa !10
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_4CellENS_3PhiEEE9tableDtorE, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !63
  invoke void %i.ap(ptr noundef nonnull %i.b)
          to label %_ZN4Luau3DefD2Ev.exit5 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #21
  unreachable

_ZN4Luau3DefD2Ev.exit5:                           ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %i.al
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local ptr @_ZN4Luau8DefArena3phiENS_7NotNullIKNS_3DefEEES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !28
  store ptr %1, ptr %i.a, align 8, !tbaa !20
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !30
  %i.e = invoke ptr @_ZN4Luau8DefArena3phiERKSt6vectorINS_7NotNullIKNS_3DefEEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit unwind label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit8

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret ptr %i.e

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit8: ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local ptr @_ZN4Luau8DefArena3phiERKSt6vectorINS_7NotNullIKNS_3DefEEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 11 uses
  %3 = alloca %"struct.Luau::Def", align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not26 = icmp eq ptr %i.a, %i.c
  br i1 %.not26, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30 ; 2 uses
  %.pre28 = load ptr, ptr %2, align 8, !tbaa !40  ; 5 uses
  %i.d = ptrtoint ptr %.pre to i64
  %i.e = ptrtoint ptr %.pre28 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp eq i64 %i.f, 8
  br i1 %i.g, label %bb.i, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.022.027 = phi ptr [ %i.h, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %.sroa.022.027, align 8, !tbaa !20
  invoke void @_ZN4Luau15collectOperandsENS_7NotNullIKNS_3DefEEEPSt6vectorIS3_SaIS3_EE(ptr %.sroa.01.0.copyload, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.027, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN4Luau8DefArena3phiERKSt6vectorINS_7NotNullIKNS_3DefEEESaIS5_EE:bb.a
  store ptr %i.l, ptr %i.o, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  %i.r = load i64, ptr %i.q, align 8, !tbaa !53   ; 2 uses
  %i.s = icmp ugt i64 %i.r, 511
  br i1 %i.s, label %bb.c, label %.thread

.thread:                                          ; preds = %._crit_edge.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %i.r ; 3 uses
  store i32 1, ptr %i.x, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  br label %call.1.i.i.i

bb.c:                                             ; preds = %._crit_edge.thread
  invoke void @_ZN4Luau14TypedAllocatorINS_3DefEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %.pre.i = load i64, ptr %i.q, align 8, !tbaa !53
  %.pre30 = load i32, ptr %3, align 8, !tbaa !10  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %.pre.i ; 4 uses
  store i32 %.pre30, ptr %i.ad, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = icmp eq i32 %.pre30, 0
  br i1 %i.af, label %call.0.i.i.i, label %call.1.i.i.i

call.0.i.i.i:                                     ; preds = %bb.d
  %i.ag = load i8, ptr %i.m, align 8, !tbaa !48
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !48
  br label %bb.e

call.1.i.i.i:                                     ; preds = %.thread, %bb.d
  %i.ah = phi ptr [ %i.y, %.thread ], [ %i.ae, %bb.d ]
  %i.ai = phi ptr [ %i.x, %.thread ], [ %i.ad, %bb.d ] ; 2 uses
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !40
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.al = load <2 x ptr>, ptr %i.n, align 8, !tbaa !17
  store <2 x ptr> %i.al, ptr %i.ak, align 8, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %call.1.i.i.i, %call.0.i.i.i
  %i.am = phi ptr [ %i.ai, %call.1.i.i.i ], [ %i.ad, %call.0.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !53
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.q, align 8, !tbaa !53
  %i.aq = load i32, ptr %3, align 8, !tbaa !10
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_4CellENS_3PhiEEE9tableDtorE, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !63
  invoke void %i.at(ptr noundef nonnull %i.m)
          to label %.thread36 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #21
  unreachable

.thread36:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load i32, ptr %3, align 8, !tbaa !10
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_4CellENS_3PhiEEE9tableDtorE, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !63
  invoke void %i.ba(ptr noundef nonnull %i.m)
          to label %.thread42 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #21
  unreachable

.thread42:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit15

bb.i:                                             ; preds = %._crit_edge
  %i.bd = load i64, ptr %.pre28, align 8, !tbaa !20
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %.pre28 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre28, i64 noundef %i.bj) #19
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit: ; preds = %.thread36, %bb.i
  %.sroa.025.039 = phi ptr [ %i.am, %.thread36 ], [ %i.be, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %.sroa.025.039

bb.j:                                             ; preds = %.lr.ph
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre29 = load ptr, ptr %2, align 8, !tbaa !40  ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %.pre29, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit15, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !28
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %.pre29 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre29, i64 noundef %i.bp) #19
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit15

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit15: ; preds = %.thread42, %bb.j, %bb.k
  %.pn945 = phi { ptr, i32 } [ %i.aw, %.thread42 ], [ %i.bk, %bb.j ], [ %i.bk, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn945
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_4CellENS_3PhiEEE6fnDtorIS1_EEvPv(ptr noundef %0) #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_4CellENS_3PhiEEE6fnDtorIS2_EEvPv(ptr noundef %0) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau3PhiD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #19
  br label %_ZN4Luau3PhiD2Ev.exit

_ZN4Luau3PhiD2Ev.exit:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau14TypedAllocatorINS_3DefEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4Luau13pagedAllocateEm(i64 noundef 32768) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.b, align 8, !tbaa !64
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.a, ptr %i.e, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.d, align 8, !tbaa !66
  br label %_ZNSt6vectorIPN4Luau3DefESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !68   ; 4 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.f, label %_ZNKSt6vectorIPN4Luau3DefESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZNKSt6vectorIPN4Luau3DefESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store ptr %i.a, ptr %i.u, align 8, !tbaa !20
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.g, label %_ZNSt6vectorIPN4Luau3DefESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN4Luau3DefESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN4Luau3DefESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4Luau3DefESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN4Luau3DefESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4Luau3DefESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4Luau3DefESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %1 = load ptr, ptr %i.f, align 8, !tbaa !67
  %2 = ptrtoint ptr %1 to i64
  %3 = sub i64 %2, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %3) #19
  br label %_ZNSt6vectorIPN4Luau3DefESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4Luau3DefESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN4Luau3DefESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.t, ptr %i.c, align 8, !tbaa !68
  store ptr %i.w, ptr %i.d, align 8, !tbaa !66
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.x, ptr %i.f, align 8, !tbaa !67
  br label %_ZNSt6vectorIPN4Luau3DefESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIPN4Luau3DefESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorIPN4Luau3DefESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.y, align 8, !tbaa !53
  ret void
}

declare noundef ptr @_ZN4Luau13pagedAllocateEm(i64 noundef) local_unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !6, i64 0}
!11 = !{!"_ZTSN4Luau7VariantIJNS_4CellENS_3PhiEEEE", !6, i64 0, !7, i64 8}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSN4Luau4CellE", !14, i64 0}
!14 = !{!"bool", !7, i64 0}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTSN4Luau7NotNullIKNS_3DefEEE", !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTSN4Luau3DefE", !19, i64 0}
!22 = distinct !{null, null, null, null, null, null}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!26, !21, i64 0}
!26 = !{!"_ZTSN4Luau7NotNullIKNS_3DefEEE", !21, i64 0}
!27 = distinct !{!27, !24}
!28 = !{!29, !18, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!30 = !{!29, !18, i64 8}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZSt19__relocate_object_aIN4Luau7NotNullIKNS0_3DefEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!33 = distinct !{!33, !"_ZSt19__relocate_object_aIN4Luau7NotNullIKNS0_3DefEEES4_SaIS4_EEvPT_PT0_RT1_"}
!34 = !{!35}
!35 = distinct !{!35, !33, !"_ZSt19__relocate_object_aIN4Luau7NotNullIKNS0_3DefEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!36 = distinct !{!36, !24, !37, !38}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = distinct !{!39, !24, !37}
!40 = !{!29, !18, i64 0}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZSt19__relocate_object_aIN4Luau7NotNullIKNS0_3DefEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!43 = distinct !{!43, !"_ZSt19__relocate_object_aIN4Luau7NotNullIKNS0_3DefEEES4_SaIS4_EEvPT_PT0_RT1_"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_ZSt19__relocate_object_aIN4Luau7NotNullIKNS0_3DefEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!46 = distinct !{!46, !24, !37, !38}
!47 = distinct !{!47, !24, !37}
!48 = !{!14, !14, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTSN4Luau8AstLocalE", !19, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"p1 omnipotent char", !19, i64 0}
!53 = !{!54, !61, i64 32}
!54 = !{!"_ZTSN4Luau14TypedAllocatorINS_3DefEEE", !14, i64 0, !55, i64 8, !61, i64 32}
!55 = !{!"_ZTSSt6vectorIPN4Luau3DefESaIS2_EE", !56, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIPN4Luau3DefESaIS2_EE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIPN4Luau3DefESaIS2_EE12_Vector_implE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIPN4Luau3DefESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"p2 _ZTSN4Luau3DefE", !60, i64 0}
!60 = !{!"any p2 pointer", !19, i64 0}
!61 = !{!"long", !7, i64 0}
!62 = !{!59, !59, i64 0}
!63 = !{!19, !19, i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"vtable pointer", !8, i64 0}
!66 = !{!58, !59, i64 8}
!67 = !{!58, !59, i64 16}
!68 = !{!58, !59, i64 0}
end_hunk_1
