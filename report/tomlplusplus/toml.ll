Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4toml2v35array19preinsertion_resizeEmm:bb.a
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !208 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #50, !inline_history !357
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !262

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  store ptr %i.m, ptr %i.c, align 8, !tbaa !205
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.s = icmp ugt i64 %i.i, %1
  br i1 %i.s, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit
  %.0.in19 = phi i64 [ %.0, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit ], [ %i.j, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit ]
  %.01418 = phi i64 [ %i.t, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit ], [ %i.i, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit ]
  %i.t = add i64 %.01418, -1                      ; 3 uses
  %.0 = add i64 %.0.in19, -1                      ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !207  ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 2 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !208
  store ptr null, ptr %i.v, align 8, !tbaa !208
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !208  ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !208
  %.not.i.i.i.i17 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i17, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #50, !inline_history !358
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i
  %i.ac = icmp ugt i64 %i.t, %1
  br i1 %i.ac, label %.lr.ph, label %.loopexit, !llvm.loop !359

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v35array14insert_at_backEOSt10unique_ptrINS0_4nodeESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !263
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !208
  store i64 %i.e, ptr %i.b, align 8, !tbaa !208
  store ptr null, ptr %1, align 8, !tbaa !208
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !205
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define ptr @_ZN4toml2v35array9insert_atEN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrINS0_4nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEOS8_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !205  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !263
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %1, %i.g
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %2, align 8, !tbaa !208
  store i64 %i.k, ptr %i.g, align 8, !tbaa !208
  store ptr null, ptr %2, align 8, !tbaa !208
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.f, align 8, !tbaa !205
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !208
  store i64 %i.o, ptr %i.g, align 8, !tbaa !208
  store ptr null, ptr %i.n, align 8, !tbaa !208
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.f, align 8, !tbaa !205
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.c
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i = phi i64 [ %i.ab, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i ], [ %i.g, %bb.d ]
  %.078.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i ], [ %i.n, %bb.d ]
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !208
  store ptr null, ptr %i.u, align 8, !tbaa !208
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !208  ; 3 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !208
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #50, !inline_history !360
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ab = add nsw i64 %.010.i.i.i.i.i.i.i.i, -1
  %i.ac = icmp sgt i64 %.010.i.i.i.i.i.i.i.i, 1
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i.i.i, !llvm.loop !361

_ZSt13move_backwardIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.ad = load ptr, ptr %2, align 8, !tbaa !208
  store ptr null, ptr %2, align 8, !tbaa !208
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !208 ; 3 uses
  store ptr %i.ad, ptr %i.m, align 8, !tbaa !208
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #50, !inline_history !362
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_.exit

bb.e:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  tail call void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_.exit: ; preds = %bb.c, %_ZSt13move_backwardIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i.i.i, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i, %bb.e
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !207
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.e
  ret ptr %i.ak
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_ZNK4toml2v35array14is_homogeneousENS0_9node_typeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i8 noundef zeroext %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %1, 0
  br i1 %i.f, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !208  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i8 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #52
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  %.08 = phi i8 [ %i.k, %bb.c ], [ %1, %bb.b ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.012.017 = phi ptr [ %i.q, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.012.017, align 8, !tbaa !208 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #52
  %.not = icmp eq i8 %i.p, %.08                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 8 ; 2 uses
  %.not15 = icmp ne ptr %i.q, %i.d
  %or.cond.not = select i1 %.not, i1 %.not15, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind memory(read, argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4toml2v35array14is_homogeneousENS0_9node_typeERPNS0_4nodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i8 noundef zeroext %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %1, 0
  br i1 %i.f, label %bb.c, label %.critedge.preheader

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !208  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i8 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #52
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.b, %bb.c
  %.013 = phi i8 [ %i.k, %bb.c ], [ %1, %bb.b ]
  br label %.critedge

bb.d:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 8 ; 2 uses
  %.not18 = icmp eq ptr %i.l, %i.d
  br i1 %.not18, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %bb.d
  %.sroa.015.021 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.preheader ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.015.021, align 8, !tbaa !208 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #52
  %.not = icmp eq i8 %i.q, %.013
  br i1 %.not, label %bb.d, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.critedge, %bb.a
  %.lcssa.sink = phi ptr [ null, %bb.a ], [ %i.m, %.critedge ]
  store ptr %.lcssa.sink, ptr %2, align 8, !tbaa !208
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.sink.split
  %.3 = phi i1 [ false, %.loopexit.sink.split ], [ true, %bb.d ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind memory(read, argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK4toml2v35array14is_homogeneousENS0_9node_typeERPKNS0_4nodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i8 noundef zeroext %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN4toml2v35array14is_homogeneousENS0_9node_typeERPNS0_4nodeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %1, 0
  br i1 %i.f, label %bb.c, label %.critedge.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !208  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i8 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #52, !inline_history !363
  br label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %bb.c, %bb.b
  %.013.i = phi i8 [ %i.k, %bb.c ], [ %1, %bb.b ]
  br label %.critedge.i

bb.d:                                             ; preds = %.critedge.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 8 ; 2 uses
  %.not18.i = icmp eq ptr %i.l, %i.d
  br i1 %.not18.i, label %_ZN4toml2v35array14is_homogeneousENS0_9node_typeERPNS0_4nodeE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.critedge.preheader.i
  %.sroa.015.021.i = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.preheader.i ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.015.021.i, align 8, !tbaa !208 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #52, !inline_history !363
  %.not.i = icmp eq i8 %i.q, %.013.i              ; 3 uses
  br i1 %.not.i, label %bb.d, label %_ZN4toml2v35array14is_homogeneousENS0_9node_typeERPNS0_4nodeE.exit

_ZN4toml2v35array14is_homogeneousENS0_9node_typeERPNS0_4nodeE.exit: ; preds = %.critedge.i, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.m, %.critedge.i ], [ null, %bb.d ]
  %.3.i = phi i1 [ false, %bb.a ], [ %.not.i, %bb.d ], [ %.not.i, %.critedge.i ]
  store ptr %.0, ptr %2, align 8, !tbaa !208
  ret i1 %.3.i
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN4toml2v35array2atEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !205
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !207  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %.not.i.i = icmp ult i64 %1, %i.h
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.218, i64 noundef %1, i64 noundef %i.h) #54
  unreachable

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE2atEm.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !208
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v35array7reserveEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !263
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !207
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = icmp ult i64 %i.i, %1
  br i1 %i.j, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !205
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.g
  %i.o = shl nuw nsw i64 %1, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #55 ; 9 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !207  ; 11 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !205  ; 3 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.u = add i64 %i.t, -8
  %i.v = sub i64 %i.u, %i.r                       ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.y = add i64 %i.t, -8
  %i.z = sub i64 %i.y, %i.r
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.ab
  %scevgep3 = getelementptr i8, ptr %i.q, i64 %i.ab
  %bound0 = icmp ult ptr %i.p, %scevgep3
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.af ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.q, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.ag = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !tbaa !208, !alias.scope !369, !noalias !364
  %wide.load5 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !208, !alias.scope !369, !noalias !364
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
end_hunk_0
begin_hunk_1_@_ZN4toml2v35table5equalERKS1_S3_:bb.a
  %i.ax = getelementptr i8, ptr %i.v, i64 40
  %.val28.i = load i8, ptr %i.ax, align 8, !tbaa !234, !range !120, !noundef !121
  %i.ay = getelementptr i8, ptr %i.ab, i64 40
  %.val27.val.i = load i8, ptr %i.ay, align 8, !tbaa !234, !range !120, !noundef !121
  %i.az = icmp eq i8 %.val28.i, %.val27.val.i
  br i1 %i.az, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.i:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !101
  %i.bd = load i16, ptr %i.ba, align 8, !tbaa !101
  %i.be = icmp eq i16 %i.bc, %i.bd
  br i1 %i.be, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 42
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !105
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 42
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !105
  %i.bj = icmp eq i8 %i.bg, %i.bi
  br i1 %i.bj, label %.split35, label %.critedge

.split35:                                         ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 43
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !106
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 43
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !106
  %i.bo = icmp eq i8 %i.bl, %i.bn
  br i1 %i.bo, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.k:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !107
  %i.bs = load i8, ptr %i.bp, align 8, !tbaa !107
  %i.bt = icmp eq i8 %i.br, %i.bs
  br i1 %i.bt, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 41
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !109
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ab, i64 41
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !109
  %i.by = icmp eq i8 %i.bv, %i.bx
  br i1 %i.by, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 42
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !110
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 42
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !110
  %i.cd = icmp eq i8 %i.ca, %i.cc
  br i1 %i.cd, label %.split40, label %.critedge

.split40:                                         ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !111
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !111
  %i.ci = icmp eq i32 %i.cf, %i.ch
  br i1 %i.ci, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.n:                                             ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.cl = load i16, ptr %i.ck, align 8, !tbaa !101
  %i.cm = load i16, ptr %i.cj, align 8, !tbaa !101
  %i.cn = icmp eq i16 %i.cl, %i.cm
  br i1 %i.cn, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %i.v, i64 42
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !105
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ab, i64 42
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !105
  %i.cs = icmp eq i8 %i.cp, %i.cr
  br i1 %i.cs, label %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i, label %.critedge

_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i:     ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 43
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !106
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ab, i64 43
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !106
  %i.cx = icmp eq i8 %i.cu, %i.cw
  br i1 %i.cx, label %bb.p, label %.critedge

bb.p:                                             ; preds = %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.da = load i8, ptr %i.cy, align 4, !tbaa !107
  %i.db = load i8, ptr %i.cz, align 4, !tbaa !107
  %i.dc = icmp eq i8 %i.da, %i.db
  br i1 %i.dc, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.v, i64 45
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !109
  %i.df = getelementptr inbounds nuw i8, ptr %i.ab, i64 45
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !109
  %i.dh = icmp eq i8 %i.de, %i.dg
  br i1 %i.dh, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.v, i64 46
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !110
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ab, i64 46
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !110
  %i.dm = icmp eq i8 %i.dj, %i.dl
  br i1 %i.dm, label %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i, label %.critedge

_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i:     ; preds = %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !111
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !111
  %i.dr = icmp eq i32 %i.do, %i.dq
  br i1 %i.dr, label %.split38, label %.critedge

.split38:                                         ; preds = %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 54
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !117, !range !120, !noundef !121 ; 2 uses
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ab, i64 54
  %i.dy = load i8, ptr %i.dx, align 2, !tbaa !117, !range !120, !noundef !121
  %i.dz = icmp eq i8 %i.dv, %i.dy                 ; 2 uses
  %brmerge.not.i.i.i.i.i.i = and i1 %i.dz, %i.dw
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i16, ptr %i.ds, align 4
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.dt, align 4
  %i.ea = icmp eq i16 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.eb = select i1 %brmerge.not.i.i.i.i.i.i, i1 %i.ea, i1 %i.dz
  br i1 %i.eb, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

bb.s:                                             ; preds = %bb.e
  unreachable

"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit": ; preds = %bb.e
  %i.ec = tail call noundef zeroext i1 @_ZN4toml2v35array5equalERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #50, !inline_history !456
  br i1 %i.ec, label %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", label %.critedge

"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33": ; preds = %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i, %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i, %.split40, %.split39, %.split38, %.split37, %.split35, %.split, %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit"
  %i.ed = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.026.046) #52 ; 2 uses
  %i.ee = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.024.047) #52
  %.not41 = icmp eq ptr %i.ed, %i.h
  br i1 %.not41, label %.critedge, label %.lr.ph, !llvm.loop !457

.critedge:                                        ; preds = %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i, %bb.p, %bb.q, %bb.r, %bb.o, %bb.n, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i, %bb.k, %bb.l, %bb.m, %bb.i, %bb.j, %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph, %.split40, %.split39, %.split38, %.split37, %.split35, %.split, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread30, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33", %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit", %bb.c, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.c ], [ false, %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i ], [ false, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.o ], [ false, %bb.n ], [ false, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i ], [ false, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ false, %.lr.ph ], [ false, %.split40 ], [ false, %.split39 ], [ false, %.split38 ], [ false, %.split37 ], [ false, %.split35 ], [ false, %.split ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread30 ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ true, %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit.thread33" ], [ false, %"_ZN4toml2v34node8do_visitIZNS0_5table5equalERKS3_S5_E3$_0RS1_EEDcOT_OT0_.exit" ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4toml2v34impl8is_asciiEPKcm(ptr nofree noundef nonnull readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = and i64 %1, -16                          ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.e = bitcast <2 x i64> %i.i to <16 x i8>
  %i.f = icmp slt <16 x i8> %i.e, zeroinitializer
  %i.g = bitcast <16 x i1> %i.f to i16
  %.not32 = icmp eq i16 %i.g, 0
  br i1 %.not32, label %._crit_edge._crit_edge, label %.critedge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = ptrtoaddr ptr %i.j to i64
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02634 = phi <2 x i64> [ %i.i, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %.02733 = phi ptr [ %i.j, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %i.h = load <2 x i64>, ptr %.02733, align 1, !tbaa !17
  %i.i = or <2 x i64> %i.h, %.02634               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02733, i64 16 ; 4 uses
  %i.k = icmp ult ptr %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !458

bb.b:                                             ; preds = %._crit_edge._crit_edge, %bb.a
  %.22943.pre-phi = phi i64 [ %.pre, %._crit_edge._crit_edge ], [ %i.a, %bb.a ]
  %.229 = phi ptr [ %i.j, %._crit_edge._crit_edge ], [ %0, %bb.a ] ; 3 uses
  %i.l = icmp ult ptr %.229, %i.b
  br i1 %i.l, label %.lr.ph38.preheader, label %.critedge

.lr.ph38.preheader:                               ; preds = %bb.b
  %i.m = add i64 %1, %i.a
  %i.n = sub i64 %i.m, %.22943.pre-phi
  %scevgep = getelementptr i8, ptr %.229, i64 %i.n
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38, %.lr.ph38.preheader
  %.33036 = phi ptr [ %i.p, %.lr.ph38 ], [ %.229, %.lr.ph38.preheader ] ; 2 uses
  %i.o = load i8, ptr %.33036, align 1, !tbaa !17
  %2 = icmp sgt i8 %i.o, -1                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.33036, i64 1 ; 2 uses
  %exitcond.not = icmp ne ptr %i.p, %scevgep
  %or.cond.not = select i1 %2, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph38, label %.critedge, !llvm.loop !459

.critedge:                                        ; preds = %.lr.ph38, %bb.b, %._crit_edge
  %.3 = phi i1 [ false, %._crit_edge ], [ true, %bb.b ], [ %2, %.lr.ph38 ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl7impl_ex6parser11parse_arrayEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(3496) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %5 = alloca %"struct.(anonymous namespace)::escaped_codepoint", align 8 ; 3 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %.sroa.6.i = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %12 = alloca %"struct.(anonymous namespace)::escaped_codepoint", align 8 ; 3 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3192 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3472 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !460
  store i64 5, ptr %i.b, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3480 ; 2 uses
  store ptr @.str.12, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140
  %.sink172.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sink172.sroa.gep282 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sink174.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sink174.sroa.gep283 = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !461
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.g, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #50
  store i64 23, ptr %14, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.13, ptr %i.d, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %14) #54
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.g, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35

bb.g:                                             ; preds = %bb.b
  %i.g = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #55
          to label %bb.h unwind label %bb.e       ; 7 uses

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4toml2v35arrayC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #50
  store ptr %i.g, ptr %0, align 8, !tbaa !208
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 5 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.h
  %i.k = phi i1 [ false, %bb.h ], [ %.be, %.backedge.backedge ] ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.backedge
  %i.l = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.i unwind label %.loopexit59

bb.i:                                             ; preds = %.critedge
  br i1 %i.l, label %.critedge.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !461  ; 4 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %.thread, label %bb.k, !prof !173

bb.k:                                             ; preds = %bb.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !488  ; 5 uses
  %i.o = add i32 %i.n, -11
  %i.p = icmp ult i32 %i.o, 2
  br i1 %i.p, label %bb.l, label %bb.m, !prof !490

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  store i64 72, ptr %9, align 8
  br label %.invoke170

bb.m:                                             ; preds = %bb.k
  switch i32 %i.n, label %bb.at [
    i32 13, label %bb.n
    i32 10, label %bb.r
    i32 35, label %bb.s
    i32 44, label %bb.aj
    i32 93, label %bb.as
  ]

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %.noexc21 unwind label %.loopexit59

.noexc21:                                         ; preds = %bb.n
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !461  ; 3 uses
  %.not4.i = icmp eq ptr %i.q, null
  br i1 %.not4.i, label %bb.o, label %bb.p, !prof !173

bb.o:                                             ; preds = %.noexc21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  store i64 33, ptr %10, align 8
  br label %.invoke170

.invoke170:                                       ; preds = %bb.l, %bb.o
  %.sink172.sroa.phi = phi ptr [ %.sink172.sroa.gep, %bb.l ], [ %.sink172.sroa.gep282, %bb.o ]
  %.sink172 = phi ptr [ %9, %bb.l ], [ %10, %bb.o ]
  %.str.68.sink = phi ptr [ @.str.68, %bb.l ], [ @.str.69, %bb.o ]
  store ptr %.str.68.sink, ptr %.sink172.sroa.phi, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sink172) #54
          to label %.cont171 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont171:                                         ; preds = %.invoke170
  unreachable

bb.p:                                             ; preds = %.noexc21
  %i.r = load i32, ptr %i.q, align 4, !tbaa !488
  %.not5.i = icmp eq i32 %i.r, 10
  br i1 %.not5.i, label %bb.r, label %bb.q, !prof !200

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #50
  store i64 31, ptr %11, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.70, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #50
  store ptr %i.q, ptr %12, align 8, !tbaa !491
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #50
  store i64 1, ptr %13, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.16, ptr %i.t, align 8
  invoke fastcc void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEN12_GLOBAL__N_117escaped_codepointES8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(16) %13) #54
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.m, %bb.p
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %.critedge.backedge unwind label %.loopexit59

bb.s:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !460
  store i64 7, ptr %i.b, align 8, !tbaa !139
  store ptr @.str.71, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %.preheader.i unwind label %.loopexit.split-lp.i

.preheader.i:                                     ; preds = %bb.s, %bb.ag
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !461  ; 2 uses
  %.not6.i = icmp eq ptr %i.u, null
  br i1 %.not6.i, label %_ZN4toml2v34impl7impl_ex6parser15consume_commentEv.exit, label %bb.t

bb.t:                                             ; preds = %.preheader.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !488  ; 7 uses
  %i.w = add i32 %i.v, -11
  %i.x = icmp ult i32 %i.w, 2
  br i1 %i.x, label %bb.u, label %bb.v, !prof !490

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 72, ptr %2, align 8
  br label %.invoke

bb.v:                                             ; preds = %bb.t
  switch i32 %i.v, label %_ZN4toml2v34impl7impl_ex6parser18consume_line_breakEv.exit45 [
    i32 13, label %bb.w
    i32 10, label %.loopexit
  ]

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
end_hunk_1
begin_hunk_2_@_ZN4toml2v314yaml_formatter5printERKNS0_5tableEb:bb.a

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN4toml2v314yaml_formatter17print_yaml_stringERKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(74) %i.v)
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  tail call void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 noundef zeroext %i.as)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.au = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.021.025) #52 ; 2 uses
  %.not = icmp eq ptr %i.au, %i.m
  br i1 %.not, label %._crit_edge.loopexit, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit

bb.n:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314yaml_formatter5printERKNS0_5arrayEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !146
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.46, i64 noundef 2) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.i, align 4, !tbaa !145
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !144
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

bb.d:                                             ; preds = %bb.l
  %i.p = load i32, ptr %i.j, align 8, !tbaa !144
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %i.j, align 8, !tbaa !144
  br label %bb.m

bb.e:                                             ; preds = %bb.c, %bb.l
  %.019 = phi i1 [ %2, %bb.c ], [ false, %bb.l ]
  %.sroa.015.018 = phi ptr [ %i.b, %bb.c ], [ %i.ak, %bb.l ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.015.018, align 8, !tbaa !208 ; 6 uses
  br i1 %.019, label %_ZN4toml2v34impl9formatter12print_indentEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.m, align 4, !tbaa !145, !range !120, !noundef !121
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4toml2v34impl9formatter13print_newlineEb.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !146
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.m, align 4, !tbaa !145
  br label %_ZN4toml2v34impl9formatter13print_newlineEb.exit

_ZN4toml2v34impl9formatter13print_newlineEb.exit: ; preds = %bb.f, %bb.g
  %i.w = load i32, ptr %i.j, align 8, !tbaa !144
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %_ZN4toml2v34impl9formatter12print_indentEv.exit

.lr.ph.i:                                         ; preds = %_ZN4toml2v34impl9formatter13print_newlineEb.exit, %.lr.ph.i
  %.02.i = phi i32 [ %i.aa, %.lr.ph.i ], [ 0, %_ZN4toml2v34impl9formatter13print_newlineEb.exit ]
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !146
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !139
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) ; 0 uses
  store i8 0, ptr %i.m, align 4, !tbaa !145
  %i.aa = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %i.ab = load i32, ptr %i.j, align 8, !tbaa !144
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph.i, label %_ZN4toml2v34impl9formatter12print_indentEv.exit, !llvm.loop !660

_ZN4toml2v34impl9formatter12print_indentEv.exit:  ; preds = %.lr.ph.i, %_ZN4toml2v34impl9formatter13print_newlineEb.exit, %bb.e
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !146
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.55, i64 noundef 2) ; 0 uses
  store i8 0, ptr %i.m, align 4, !tbaa !145
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef zeroext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #52 ; 3 uses
  %i.aj = icmp ne i8 %i.ai, 0
  tail call void @llvm.assume(i1 %i.aj)
  switch i8 %i.ai, label %bb.k [
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
  ]

bb.h:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  tail call void @_ZN4toml2v314yaml_formatter5printERKNS0_5tableEb(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.r, i1 noundef zeroext true)
  br label %bb.l

bb.i:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  tail call void @_ZN4toml2v314yaml_formatter5printERKNS0_5arrayEb(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i1 noundef zeroext true)
  br label %bb.l

bb.j:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  tail call void @_ZN4toml2v314yaml_formatter17print_yaml_stringERKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(74) %i.r)
  br label %bb.l

bb.k:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  tail call void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i8 noundef zeroext %i.ai)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.015.018, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.d
  br i1 %.not, label %bb.d, label %bb.e

bb.m:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314yaml_formatter5printEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !130    ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i8 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #52 ; 2 uses
  switch i8 %i.e, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !144
  %i.h = add nsw i32 %i.g, -1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !144
  tail call void @_ZN4toml2v314yaml_formatter5printERKNS0_5tableEb(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.a, i1 noundef zeroext false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v314yaml_formatter5printERKNS0_5arrayEb(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i1 noundef zeroext false)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v314yaml_formatter17print_yaml_stringERKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(74) %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 noundef zeroext %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i8 @_ZNK4toml2v35array4typeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i8 2
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array8is_tableEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array8is_arrayEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array18is_array_of_tablesEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNK4toml2v35array14is_homogeneousENS0_9node_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.012.017.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.012.017.i, align 8, !tbaa !208 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i8 %i.i(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #52, !inline_history !702
  %.not.i = icmp eq i8 %i.j, 1                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i, i64 8 ; 2 uses
  %.not15.i = icmp ne ptr %i.k, %i.d
  %or.cond.not = select i1 %.not.i, i1 %.not15.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZNK4toml2v35array14is_homogeneousENS0_9node_typeE.exit

_ZNK4toml2v35array14is_homogeneousENS0_9node_typeE.exit: ; preds = %.lr.ph.i, %bb.a
  %.3.i = phi i1 [ false, %bb.a ], [ %.not.i, %.lr.ph.i ]
  ret i1 %.3.i
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array8is_valueEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array9is_stringEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array10is_integerEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array17is_floating_pointEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array9is_numberEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array10is_booleanEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array7is_dateEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array7is_timeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35array12is_date_timeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35array8as_tableEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35array8as_arrayEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35array9as_stringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35array10as_integerEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35array17as_floating_pointEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35array10as_booleanEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35array7as_dateEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35array7as_timeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZN4toml2v35array12as_date_timeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35array8as_tableEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35array8as_arrayEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35array9as_stringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35array10as_integerEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35array17as_floating_pointEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35array10as_booleanEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35array7as_dateEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35array7as_timeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef ptr @_ZNK4toml2v35array12as_date_timeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i8 @_ZNK4toml2v35table4typeEv(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35table8is_tableEv(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35table8is_arrayEv(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35table18is_array_of_tablesEv(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35table8is_valueEv(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4toml2v35table9is_stringEv(ptr noundef nonnull align 8 dereferenceable(89) %0) unnamed_addr #28 comdat align 2 {
bb.a:
  ret i1 false
}
end_hunk_2
begin_hunk_3_@_ZN4toml2v34impl7impl_ex6parser18update_region_endsERNS0_4nodeE:bb.a

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.sroa.6.1 = phi i32 [ %.sroa.6.0.extract.trunc29, %bb.f ], [ %.sroa.6.043, %.lr.ph ] ; 2 uses
  %.sroa.025.1 = phi i32 [ %.sroa.025.0.extract.trunc27, %bb.f ], [ %.sroa.025.044, %.lr.ph ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.022.045, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.u
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

.critedge:                                        ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit, %bb.d, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116parse_key_bufferD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(104) dereferenceable(104) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !593  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !809
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #51
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !593  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !809
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #51
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2: ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !584  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !803
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #51
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2, %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !17
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN4toml2v34impl7impl_ex6parser18parse_table_headerEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6431 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %23 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %24 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %25 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %27 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %28 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %29 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %30 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %31 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %32 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %33 = alloca %"class.toml::v3::impl::table_iterator", align 8 ; 5 uses
  %34 = alloca %"class.toml::v3::impl::table_iterator.42", align 8 ; 3 uses
  %35 = alloca %"class.toml::v3::key", align 8    ; 9 uses
  %36 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %37 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %38 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %39 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %40 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %41 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %42 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %43 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %44 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %45 = alloca %"class.toml::v3::key", align 8    ; 10 uses
  %46 = alloca %"class.toml::v3::impl::table_iterator", align 8 ; 5 uses
  %47 = alloca %"class.toml::v3::impl::table_iterator.42", align 8 ; 3 uses
  %48 = alloca %"class.toml::v3::impl::table_iterator", align 8 ; 5 uses
  %49 = alloca %"class.toml::v3::impl::table_iterator.42", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !461, !nonnull !121, !noundef !121
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6431)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6431, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !460
  store i64 12, ptr %i.c, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.172, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.093.0.copyload = load i64, ptr %i.d, align 8 ; 8 uses
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !461
  %.not143 = icmp eq ptr %i.e, null
  br i1 %.not143, label %bb.c, label %bb.g, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 23, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.13, ptr %i.f, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %bb.gz

bb.g:                                             ; preds = %bb.b
  %i.i = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !461  ; 3 uses
  %.not144 = icmp eq ptr %i.j, null
  br i1 %.not144, label %bb.i, label %bb.m, !prof !173

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 23, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.13, ptr %i.k, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.bz, %bb.bx, %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit, %bb.bs, %bb.bg, %_ZN4toml2v34impl7impl_ex6parser14stop_recordingEm.exit, %_ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit, %bb.w, %bb.r, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.gz

bb.m:                                             ; preds = %bb.h
  %i.n = load i32, ptr %i.j, align 4, !tbaa !488  ; 2 uses
  %i.o = icmp eq i32 %i.n, 91                     ; 9 uses
  br i1 %i.o, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  br i1 %i.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 80, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.173, ptr %i.p, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %bb.gz

bb.r:                                             ; preds = %bb.n
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.s unwind label %bb.k

bb.s:                                             ; preds = %bb.r
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !461
  %.not145 = icmp eq ptr %i.r, null
  br i1 %.not145, label %bb.t, label %bb.w, !prof !173

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 23, ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.13, ptr %i.s, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %4) #54
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.gz

bb.w:                                             ; preds = %bb.s
  %i.u = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.x unwind label %bb.k       ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !461  ; 3 uses
  %.not146 = icmp eq ptr %i.v, null
  br i1 %.not146, label %bb.y, label %._crit_edge506, !prof !173

._crit_edge506:                                   ; preds = %bb.x
  %.pre = load i32, ptr %i.v, align 4, !tbaa !488
  br label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 23, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.13, ptr %i.w, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #54
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %bb.gz

bb.ab:                                            ; preds = %._crit_edge506, %bb.m
  %i.y = phi i32 [ %.pre, %._crit_edge506 ], [ %i.n, %bb.m ] ; 8 uses
  %i.z = phi ptr [ %i.v, %._crit_edge506 ], [ %i.j, %bb.m ] ; 2 uses
  %i.aa = icmp eq i32 %i.y, 93
  br i1 %i.aa, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  store i64 53, ptr %6, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.174, ptr %i.ab, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %6) #54
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %bb.gz

bb.af:                                            ; preds = %bb.ab
  %i.ad = add i32 %i.y, -123
  %or.cond.i.i = icmp ult i32 %i.ad, -78
  br i1 %or.cond.i.i, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit

_ZN4toml2v34impl21is_bare_key_characterEDi.exit:  ; preds = %bb.af
  %i.ae = zext nneg i32 %i.y to i64
  %i.af = add nsw i64 %i.ae, -45
  %.not.i.i = icmp samesign ugt i32 %i.y, 108
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = and i64 %i.ag, -3307330977390599
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = select i1 %.not.i.i, i1 true, i1 %i.ai
  br i1 %i.aj, label %bb.am, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread

_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread: ; preds = %bb.af, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit
  switch i32 %i.y, label %bb.ag [
    i32 39, label %bb.am
    i32 34, label %bb.am
  ]

bb.ag:                                            ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  store i64 63, ptr %7, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.163, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  %i.al = icmp ult i32 %i.y, 32
  br i1 %i.al, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.am = zext nneg i32 %i.y to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 16, !tbaa !139
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !140
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ao = icmp eq i32 %i.y, 127
  br i1 %i.ao, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !495
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.ah ], [ %i.ap, %bb.aj ], [ @.str.29, %bb.ai ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.ah ], [ %i.ar, %bb.aj ], [ 6, %bb.ai ]
  store i64 %.sroa.0.0.i, ptr %8, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.4.0.i, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  store i64 1, ptr %9, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.16, ptr %i.at, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9) #54
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.al:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %bb.gz

bb.am:                                            ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  store i8 1, ptr %i.av, align 8, !tbaa !529
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3465
  store i8 1, ptr %i.aw, align 1, !tbaa !530
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3432 ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 9 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !14
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !8
  store i8 0, ptr %i.az, align 1, !tbaa !17
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !461 ; 3 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %_ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !495 ; 2 uses
  %i.bd = load i64, ptr %i.ay, align 8, !tbaa !14
  %i.be = sub i64 4611686018427387903, %i.bd
  %i.bf = icmp ult i64 %i.be, %i.bc
  br i1 %i.bf, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #54
          to label %.noexc.i unwind label %bb.ap

.noexc.i:                                         ; preds = %bb.ao
end_hunk_3
begin_hunk_4_@_ZN4toml2v34impl7impl_ex6parser18parse_table_headerEv:bb.a

bb.dt:                                            ; preds = %.noexc258
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kr, ptr align 8 %i.kg, i64 %i.kj, i1 false)
  br label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.dt, %.noexc258
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.kg, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.kv = load ptr, ptr %i.eo, align 8, !tbaa !577
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = sub i64 %i.kw, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kx) #51
  br label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.du, %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.kr, ptr %i.em, align 8, !tbaa !580
  store ptr %i.ku, ptr %i.en, align 8, !tbaa !576
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.kp
  store ptr %i.ky, ptr %i.eo, align 8, !tbaa !577
  br label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5tableESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit

bb.dv:                                            ; preds = %.critedge
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dw:                                            ; preds = %bb.cz
  %i.la = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4toml2v33keyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %35) #50
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.pn162 = phi { ptr, i32 } [ %i.la, %bb.dw ], [ %i.kz, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #50
  br label %bb.gz

.loopexit471:                                     ; preds = %_ZNKSt6vectorIPN4toml2v35tableESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

.loopexit.split-lp:                               ; preds = %bb.ds
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5tableESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit: ; preds = %.lr.ph.i, %bb.dq, %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit, %bb.cl
  %.2138 = phi ptr [ %i.gl, %bb.cl ], [ %i.hj, %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit ], [ %i.ix, %bb.dq ], [ %i.ix, %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.gl, %.lr.ph.i ] ; 2 uses
  %i.lb = add nuw i64 %.0139488, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.lb, %i.ee
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.cj, !llvm.loop !826

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit259: ; preds = %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.lc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 32
  %i.ld = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 96
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !208 ; 5 uses
  %i.lf = load ptr, ptr %i.lc, align 8, !tbaa !8
  %i.lg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 40
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !14
  %i.li = icmp eq i64 %i.lh, %i.ev
  br i1 %i.li, label %bb.dy, label %.critedge6

bb.dy:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit259
  %i.lj = icmp eq i64 %i.ev, 0
  br i1 %i.lj, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit266, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i262

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i262: ; preds = %bb.dy
  %bcmp.i263 = call i32 @bcmp(ptr %i.lf, ptr %i.et, i64 %i.ev)
  %i.lk = icmp eq i32 %bcmp.i263, 0
  br i1 %i.lk, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit266, label %.critedge6

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit266: ; preds = %bb.dy, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i262
  %i.ll = load ptr, ptr %i.le, align 8, !tbaa !70 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 152
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = call noundef ptr %i.ln(ptr noundef nonnull align 8 dereferenceable(40) %i.le) #52 ; 3 uses
  %i.lp = icmp ne ptr %i.lo, null
  %or.cond = and i1 %i.o, %i.lp
  br i1 %or.cond, label %bb.dz, label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272.thread

bb.dz:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit266
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 3272
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !822 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !822 ; 2 uses
  %.not6.i267 = icmp eq ptr %i.lr, %i.lt
  br i1 %.not6.i267, label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272.thread, label %.lr.ph.i268

.lr.ph.i268:                                      ; preds = %bb.dz, %bb.ea
  %.sroa.02.07.i269 = phi ptr [ %i.lw, %bb.ea ], [ %i.lr, %bb.dz ] ; 2 uses
  %i.lu = load ptr, ptr %.sroa.02.07.i269, align 8, !tbaa !823
  %i.lv = icmp eq ptr %i.lu, %i.lo
  br i1 %i.lv, label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i268
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i269, i64 8 ; 2 uses
  %.not.i270 = icmp eq ptr %i.lw, %i.lt
  br i1 %.not.i270, label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272.thread, label %.lr.ph.i268, !llvm.loop !825

_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272: ; preds = %.lr.ph.i268
  %i.lx = invoke noundef nonnull align 8 dereferenceable(89) ptr @_ZN4toml2v35array12emplace_backINS0_5tableEJEEEDcDpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.lo)
          to label %bb.eb unwind label %bb.el     ; 8 uses

bb.eb:                                            ; preds = %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272
  %i.ly = load ptr, ptr %0, align 8, !tbaa !526, !nonnull !121, !align !527 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !70
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = call noundef nonnull align 8 dereferenceable(16) ptr %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %i.ly) #50, !inline_history !575 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !167 ; 2 uses
  %i.me = load <2 x ptr>, ptr %i.mb, align 8, !tbaa !180
  %.not.i.i.i273 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i273, label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 3 uses
  %i.mg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i274 = icmp eq i8 %i.mg, 0
  br i1 %.not.i.i.i.i274, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.mh = load i32, ptr %i.mf, align 4, !tbaa !172
  %i.mi = add nsw i32 %i.mh, 1
  store i32 %i.mi, ptr %i.mf, align 4, !tbaa !172
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275

bb.ee:                                            ; preds = %bb.ec
  %i.mj = atomicrmw volatile add ptr %i.mf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275

_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275: ; preds = %bb.eb, %bb.ed, %bb.ee
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store i64 %.sroa.093.0.copyload, ptr %i.mk, align 8
  %.sroa.4383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store i64 %.sroa.0.0.insert.insert.i, ptr %.sroa.4383.0..sroa_idx, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !167 ; 8 uses
  store <2 x ptr> %i.me, ptr %i.ml, align 8, !tbaa !180
  %.not.i.i.i.i.i276 = icmp eq ptr %i.mn, null
  br i1 %.not.i.i.i.i.i276, label %_ZN4toml2v313source_regionD2Ev.exit285.thread, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 4 uses
  %i.mp = load atomic i64, ptr %i.mo acquire, align 8 ; 2 uses
  %i.mq = icmp eq i64 %i.mp, 4294967297
  %i.mr = trunc i64 %i.mp to i32                  ; 2 uses
  br i1 %i.mq, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.mo, align 8, !tbaa !168
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 12
  store i32 0, ptr %i.ms, align 4, !tbaa !170
  %i.mt = load ptr, ptr %i.mn, align 8, !tbaa !70
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(16) %i.mn) #50, !inline_history !182
  %i.mw = load ptr, ptr %i.mn, align 8, !tbaa !70
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(16) %i.mn) #50, !inline_history !182
  br label %_ZN4toml2v313source_regionD2Ev.exit285.thread

bb.eh:                                            ; preds = %bb.ef
  %i.mz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i277 = icmp eq i8 %i.mz, 0
  br i1 %.not.i.i.i.i.i.i277, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.na = add nsw i32 %i.mr, -1
  store i32 %i.na, ptr %i.mo, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278

bb.ej:                                            ; preds = %bb.eh
  %i.nb = atomicrmw volatile add ptr %i.mo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278: ; preds = %bb.ej, %bb.ei
  %.0.i.i.i.i.i.i.i279 = phi i32 [ %i.mr, %bb.ei ], [ %i.nb, %bb.ej ]
  %i.nc = icmp eq i32 %.0.i.i.i.i.i.i.i279, 1
  br i1 %i.nc, label %bb.ek, label %_ZN4toml2v313source_regionD2Ev.exit285.thread, !prof !173

bb.ek:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mn) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit285.thread

bb.el:                                            ; preds = %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272.thread: ; preds = %bb.ea, %bb.dz, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit266
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ll, i64 144
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = call noundef ptr %i.nf(ptr noundef nonnull align 8 dereferenceable(40) %i.le) #52 ; 8 uses
  %50 = icmp eq ptr %i.ng, null
  %or.cond9.not = or i1 %i.o, %50
  br i1 %or.cond9.not, label %_ZN4toml2v313source_regionD2Ev.exit285, label %bb.em

bb.em:                                            ; preds = %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272.thread
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !591 ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 3 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !591 ; 7 uses
  %i.nl = icmp eq ptr %i.ni, %i.nk
  br i1 %i.nl, label %_ZN4toml2v313source_regionD2Ev.exit285.thread464, label %.lr.ph.i287

.lr.ph.i287:                                      ; preds = %bb.em, %bb.en
  %.sroa.02.07.i288 = phi ptr [ %i.no, %bb.en ], [ %i.ni, %bb.em ] ; 3 uses
  %i.nm = load ptr, ptr %.sroa.02.07.i288, align 8, !tbaa !578
  %i.nn = icmp eq ptr %i.nm, %i.ng
  br i1 %i.nn, label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5tableESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit291, label %bb.en

bb.en:                                            ; preds = %.lr.ph.i287
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i288, i64 8 ; 2 uses
  %.not.i289 = icmp eq ptr %i.no, %i.nk
  br i1 %.not.i289, label %_ZN4toml2v313source_regionD2Ev.exit285, label %.lr.ph.i287, !llvm.loop !592

_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5tableESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit291: ; preds = %.lr.ph.i287
  %i.np = getelementptr inbounds nuw i8, ptr %i.ng, i64 80
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !188
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %.thread454, label %bb.eo

bb.eo:                                            ; preds = %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5tableESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit291
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ng, i64 64
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !400, !noalias !827 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ng, i64 48 ; 2 uses
  %.not466490 = icmp eq ptr %i.nt, %i.nu
  br i1 %.not466490, label %.thread454, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit292

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit292: ; preds = %bb.eo, %bb.eq
  %.sroa.0375.0491 = phi ptr [ %i.oe, %bb.eq ], [ %i.nt, %bb.eo ] ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.0375.0491, i64 96
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !208 ; 3 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !70 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 48
  %i.nz = load ptr, ptr %i.ny, align 8
  %i.oa = call noundef zeroext i1 %i.nz(ptr noundef nonnull align 8 dereferenceable(40) %i.nw) #52
  br i1 %i.oa, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit292
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 64
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = call noundef zeroext i1 %i.oc(ptr noundef nonnull align 8 dereferenceable(40) %i.nw) #52
  br i1 %i.od, label %bb.eq, label %_ZN4toml2v313source_regionD2Ev.exit285

bb.eq:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit292, %bb.ep
  %i.oe = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0375.0491) #52 ; 2 uses
  %.not466 = icmp eq ptr %i.oe, %i.nu
  br i1 %.not466, label %.thread454, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit292

.thread454:                                       ; preds = %bb.eq, %bb.eo, %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5tableESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit291
  %i.of = ptrtoint ptr %.sroa.02.07.i288 to i64
  %i.og = ptrtoint ptr %i.ni to i64
  %i.oh = sub i64 %i.of, %i.og
  %i.oi = getelementptr inbounds i8, ptr %i.ni, i64 %i.oh ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8 ; 4 uses
  %.not.i.i293 = icmp eq ptr %i.oj, %i.nk
  br i1 %.not.i.i293, label %bb.ev, label %bb.er

bb.er:                                            ; preds = %.thread454
  %i.ok = ptrtoint ptr %i.nk to i64
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = sub i64 %i.ok, %i.ol                    ; 3 uses
  %i.on = icmp sgt i64 %i.om, 8
  br i1 %i.on, label %bb.es, label %bb.et, !prof !200

bb.es:                                            ; preds = %bb.er
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.oi, ptr nonnull align 8 %i.oj, i64 %i.om, i1 false)
  %.pre.i.i = load ptr, ptr %i.nj, align 8, !tbaa !576
  br label %bb.ev

bb.et:                                            ; preds = %bb.er
  %i.oo = icmp eq i64 %i.om, 8
  br i1 %i.oo, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.op = load ptr, ptr %i.oj, align 8, !tbaa !578
  store ptr %i.op, ptr %i.oi, align 8, !tbaa !578
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es, %.thread454
  %i.oq = phi ptr [ %i.nk, %bb.eu ], [ %i.nk, %bb.et ], [ %.pre.i.i, %bb.es ], [ %i.nk, %.thread454 ]
  %i.or = getelementptr inbounds i8, ptr %i.oq, i64 -8
  store ptr %i.or, ptr %i.nj, align 8, !tbaa !576
  %i.os = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  store i64 %.sroa.093.0.copyload, ptr %i.os, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ot, align 8
  br label %_ZN4toml2v313source_regionD2Ev.exit285.thread

_ZN4toml2v313source_regionD2Ev.exit285:           ; preds = %bb.en, %bb.ep, %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272.thread
  br i1 %i.o, label %_ZN4toml2v313source_regionD2Ev.exit285._crit_edge, label %_ZN4toml2v313source_regionD2Ev.exit285.thread464

_ZN4toml2v313source_regionD2Ev.exit285._crit_edge: ; preds = %_ZN4toml2v313source_regionD2Ev.exit285
  %.phi.trans.insert510 = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %.pre511 = load ptr, ptr %.phi.trans.insert510, align 8
  br label %bb.ez

_ZN4toml2v313source_regionD2Ev.exit285.thread464: ; preds = %bb.em, %_ZN4toml2v313source_regionD2Ev.exit285
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %i.ov = load ptr, ptr %i.ou, align 8            ; 2 uses
  %i.ow = call noundef zeroext i8 %i.ov(ptr noundef nonnull align 8 dereferenceable(40) %i.le) #52
  %i.ox = icmp eq i8 %i.ow, 1
  br i1 %i.ox, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %_ZN4toml2v313source_regionD2Ev.exit285.thread464
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #50
  store i64 32, ptr %36, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr @.str.178, ptr %i.oy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #50
  %.val180 = load ptr, ptr %i.ax, align 8, !tbaa !8
  %.val181 = load i64, ptr %i.ay, align 8, !tbaa !14
  store i64 %.val181, ptr %37, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %.val180, ptr %i.oz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #50
  store i64 1, ptr %38, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr @.str.16, ptr %i.pa, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %.sroa.093.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %38) #54
          to label %bb.ex unwind label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  unreachable

bb.ey:                                            ; preds = %bb.ew
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #50
  br label %bb.gz

bb.ez:                                            ; preds = %_ZN4toml2v313source_regionD2Ev.exit285._crit_edge, %_ZN4toml2v313source_regionD2Ev.exit285.thread464
  %i.pc = phi ptr [ %.pre511, %_ZN4toml2v313source_regionD2Ev.exit285._crit_edge ], [ %i.ov, %_ZN4toml2v313source_regionD2Ev.exit285.thread464 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #50
  store i64 25, ptr %39, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr @.str.156, ptr %i.pd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #50
  %i.pe = call noundef zeroext i8 %i.pc(ptr noundef nonnull align 8 dereferenceable(40) %i.le) #52
  %i.pf = zext i8 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl24node_type_friendly_namesE, i64 %i.pf ; 2 uses
  %.sroa.0.0.copyload.i296 = load i64, ptr %i.pg, align 16, !tbaa !139
  %.sroa.2.0..sroa_idx.i297 = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %.sroa.2.0.copyload.i298 = load ptr, ptr %.sroa.2.0..sroa_idx.i297, align 8, !tbaa !140
  store i64 %.sroa.0.0.copyload.i296, ptr %40, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %.sroa.2.0.copyload.i298, ptr %i.ph, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #50
  store i64 2, ptr %41, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr @.str.158, ptr %i.pi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #50
  %.val = load ptr, ptr %i.ax, align 8, !tbaa !8
  %.val179 = load i64, ptr %i.ay, align 8, !tbaa !14
  store i64 %.val179, ptr %42, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %.val, ptr %i.pj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #50
  store i64 5, ptr %43, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr @.str.179, ptr %i.pk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #50
  %spec.select599 = select i1 %i.o, i64 15, i64 5
  %spec.select600 = select i1 %i.o, ptr @.str.180, ptr @.str.167
  store i64 %spec.select599, ptr %44, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %spec.select600, ptr %i.pl, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %.sroa.093.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(16) %44) #54
          to label %bb.fa unwind label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  unreachable

bb.fb:                                            ; preds = %bb.ez
  %i.pm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #50
  br label %bb.gz

.critedge6:                                       ; preds = %._crit_edge, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i262, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit259, %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.0.lcssa.i.i.i.i.i438 = phi ptr [ %.1.i.i.i.i.i, %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.1.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i262 ], [ %.1.i.i.i.i.i, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit259 ], [ %i.ex, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #50
  invoke void @_ZNK4toml2v34impl7impl_ex6parser8make_keyEm(ptr dead_on_unwind nonnull writable sret(%"class.toml::v3::key") align 8 %45, ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 noundef %.pre-phi520)
          to label %bb.fc unwind label %bb.gc

bb.fc:                                            ; preds = %.critedge6
  br i1 %i.o, label %bb.fd, label %bb.gg

end_hunk_4
