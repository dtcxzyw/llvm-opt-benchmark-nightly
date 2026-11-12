Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/rep_set_iterator?download=true
inline.NumInlined: 1200
inline.NumDeleted: 497
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt6vectorIS_IN4cvc58internal12NodeTemplateILb1EEESaIS3_EESaIS5_EED2Ev:bb.a
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.r = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #23
  br label %_ZSt8_DestroyISt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EEEvPT_.exit.i.i: ; preds = %bb.e, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !83

_ZSt8_DestroyIPSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !53
  br label %_ZSt8_DestroyIPSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.y = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESaIS6_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EES6_EvT_S8_RSaIT0_E.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #23
  br label %_ZNSt12_Vector_baseISt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EES6_EvT_S8_RSaIT0_E.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !66 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i, label %bb.b, !prof !59

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = add i64 %i.e, 1152920405095219200
  %i.h = and i64 %i.g, 1152920405095219200        ; 2 uses
  %i.i = and i64 %i.e, -1152920405095219201
  %i.j = or disjoint i64 %i.h, %i.i
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i, !prof !59

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZNSt12_Vector_baseIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 -1152921504606846976, 1152921504606846976) i64 @_ZNK4cvc58internal6theory14RepSetIterator10domainSizeEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(169) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %1
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.d ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  ret i64 %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6theory14RepSetIterator9getTypeOfEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cvc5::internal::TypeNode") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(169) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %2
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66   ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !66
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i64 %i.e, 40
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %i.g, 1048575                    ; 3 uses
  %i.i = icmp samesign ult i32 %i.h, 1048574
  br i1 %i.i, label %bb.b, label %bb.c, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i32 %i.h, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 40
  %i.m = and i64 %i.e, -1152920405095219201
  %i.n = or i64 %i.l, %i.m
  store i64 %i.n, ptr %i.d, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %i.h, 1048574
  br i1 %i.o, label %bb.d, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !59

bb.d:                                             ; preds = %bb.c
  %i.p = or i64 %i.e, 1152920405095219200
  store i64 %i.p, ptr %i.d, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory14RepSetIterator13setQuantifierENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %4 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.a = load ptr, ptr %1, align 8, !tbaa !49, !noalias !88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noalias !88
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g), !noalias !88
  %i.i = icmp eq i32 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = zext i1 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47, !noalias !88 ; 11 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !49, !alias.scope !88
  %i.n = load i64, ptr %i.m, align 8, !noalias !88 ; 3 uses
  %i.o = lshr i64 %i.n, 40
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i32 %i.p, 1048575                    ; 3 uses
  %i.r = icmp samesign ult i32 %i.q, 1048574
  br i1 %i.r, label %bb.b, label %bb.c, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.s = add nuw nsw i32 %i.q, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 40
  %i.v = and i64 %i.n, -1152920405095219201
  %i.w = or i64 %i.u, %i.v
  store i64 %i.w, ptr %i.m, align 8, !noalias !88
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.c:                                             ; preds = %bb.a
  %i.x = icmp eq i32 %i.q, 1048574
  br i1 %i.x, label %bb.d, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !59

bb.d:                                             ; preds = %bb.c
  %i.y = or i64 %i.n, 1152920405095219200
  store i64 %i.y, ptr %i.m, align 8, !noalias !88
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !88
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.b, %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 1023                     ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 1023
  %i.ae = select i1 %i.ad, i32 -1, i32 %i.ac
  %i.af = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ae)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.ag = icmp eq i32 %i.af, 2
  %spec.select.v.i.i = select i1 %i.ag, i64 32, i64 24 ; 2 uses
  %5 = load i64, ptr %i.z, align 8
  %6 = lshr i64 %5, 29
  %.idx = and i64 %6, 536870904
  %7 = add nuw nsw i64 %.idx, 24                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %7
  %.not28 = icmp samesign eq i64 %spec.select.v.i.i, %7
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %spec.select.v.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit23, %bb.e
  %i.al = load i64, ptr %i.m, align 8             ; 3 uses
  %i.am = and i64 %i.al, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.am, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.f, !prof !59

bb.f:                                             ; preds = %._crit_edge
  %i.an = add i64 %i.al, 1152920405095219200
  %i.ao = and i64 %i.an, 1152920405095219200      ; 2 uses
  %i.ap = and i64 %i.al, -1152920405095219201
  %i.aq = or disjoint i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %i.m, align 8
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !59

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %._crit_edge, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !49 ; 4 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !49
  %.not.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i14, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.i, !prof !59

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ax = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ay = and i64 %i.ax, 1152920405095219200
  %.not.i.i15 = icmp eq i64 %i.ay, 1152920405095219200
  br i1 %.not.i.i15, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.j, !prof !59

bb.j:                                             ; preds = %bb.i
  %i.az = add i64 %i.ax, 1152920405095219200
  %i.ba = and i64 %i.az, 1152920405095219200      ; 2 uses
  %i.bb = and i64 %i.ax, -1152920405095219201
  %i.bc = or disjoint i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.av, align 8
  %i.bd = icmp eq i64 %i.ba, 0
  br i1 %i.bd, label %bb.k, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !59

bb.k:                                             ; preds = %bb.j
  call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.k, %bb.j, %bb.i
  %i.be = load ptr, ptr %1, align 8, !tbaa !49    ; 5 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !49
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = lshr i64 %i.bf, 40
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 1048575                  ; 3 uses
  %i.bj = icmp samesign ult i32 %i.bi, 1048574
  br i1 %i.bj, label %bb.l, label %bb.m, !prof !71

bb.l:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.bk = add nuw nsw i32 %i.bi, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 40
  %i.bn = and i64 %i.bf, -1152920405095219201
  %i.bo = or i64 %i.bm, %i.bn
  store i64 %i.bo, ptr %i.be, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.m:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.bp = icmp eq i32 %i.bi, 1048574
  br i1 %i.bp, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.bq = or i64 %i.bf, 1152920405095219200
  store i64 %i.bq, ptr %i.be, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.be)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.l, %bb.m, %bb.n
  %i.br = call noundef zeroext i1 @_ZN4cvc58internal6theory14RepSetIterator10initializeEv(ptr noundef nonnull align 8 dereferenceable(169) %0)
  ret i1 %i.br

bb.o:                                             ; preds = %.lr.ph, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit23
  %.sroa.024.029 = phi ptr [ %spec.select.i.i, %.lr.ph ], [ %i.dq, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit23 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.bs = load ptr, ptr %.sroa.024.029, align 8, !tbaa !47, !noalias !89 ; 5 uses
  store ptr %i.bs, ptr %3, align 8, !tbaa !49, !alias.scope !89
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !89 ; 3 uses
  %i.bu = lshr i64 %i.bt, 40
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = and i32 %i.bv, 1048575                  ; 3 uses
  %i.bx = icmp samesign ult i32 %i.bw, 1048574
  br i1 %i.bx, label %bb.p, label %bb.q, !prof !71

bb.p:                                             ; preds = %bb.o
  %i.by = add nuw nsw i32 %i.bw, 1
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 40
  %i.cb = and i64 %i.bt, -1152920405095219201
  %i.cc = or i64 %i.ca, %i.cb
  store i64 %i.cc, ptr %i.bs, align 8, !noalias !89
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

bb.q:                                             ; preds = %bb.o
  %i.cd = icmp eq i32 %i.bw, 1048574
  br i1 %i.cd, label %bb.r, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, !prof !59

bb.r:                                             ; preds = %bb.q
  %i.ce = or i64 %i.bt, 1152920405095219200
  store i64 %i.ce, ptr %i.bs, align 8, !noalias !89
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit: ; preds = %bb.q, %bb.p, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false)
          to label %bb.s unwind label %bb.ae

bb.s:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.cf = load ptr, ptr %i.ai, align 8, !tbaa !64 ; 3 uses
  %i.cg = load ptr, ptr %i.aj, align 8, !tbaa !67
  %.not.i.i16 = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i.i16, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = load ptr, ptr %4, align 8, !tbaa !66    ; 5 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !66
  %i.ci = load i64, ptr %i.ch, align 8            ; 3 uses
  %i.cj = lshr i64 %i.ci, 40
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 1048575                  ; 3 uses
  %i.cm = icmp samesign ult i32 %i.cl, 1048574
  br i1 %i.cm, label %bb.u, label %bb.v, !prof !71

bb.u:                                             ; preds = %bb.t
  %i.cn = add nuw nsw i32 %i.cl, 1
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 40
  %i.cq = and i64 %i.ci, -1152920405095219201
  %i.cr = or i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %i.ch, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.cs = icmp eq i32 %i.cl, 1048574
  br i1 %i.cs, label %bb.w, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i.i, !prof !59

bb.w:                                             ; preds = %bb.v
  %i.ct = or i64 %i.ci, 1152920405095219200
  store i64 %i.ct, ptr %i.ch, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i.i unwind label %bb.af

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i.i:      ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cv, ptr %i.ai, align 8, !tbaa !64
  br label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backEOS2_.exit

bb.x:                                             ; preds = %bb.s
  invoke void @_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backEOS2_.exit unwind label %bb.af

_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i.i, %bb.x
  %i.cw = load ptr, ptr %4, align 8, !tbaa !66    ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8            ; 3 uses
  %i.cy = and i64 %i.cx, 1152920405095219200
  %.not.i.i19 = icmp eq i64 %i.cy, 1152920405095219200
  br i1 %.not.i.i19, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.y, !prof !59

bb.y:                                             ; preds = %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backEOS2_.exit
  %i.cz = add i64 %i.cx, 1152920405095219200
  %i.da = and i64 %i.cz, 1152920405095219200      ; 2 uses
  %i.db = and i64 %i.cx, -1152920405095219201
  %i.dc = or disjoint i64 %i.da, %i.db
  store i64 %i.dc, ptr %i.cw, align 8
  %i.dd = icmp eq i64 %i.da, 0
  br i1 %i.dd, label %bb.z, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !59

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory14RepSetIterator10initializeEv:bb.a
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = ashr exact i64 %i.nx, 3                 ; 3 uses
  %i.nz = load ptr, ptr %i.i, align 8, !tbaa !68  ; 5 uses
  %xtraiter503 = and i64 %i.ny, 3                 ; 3 uses
  %i.oa = icmp ult i64 %i.ny, 4
  br i1 %i.oa, label %.epil.preheader502, label %.lr.ph.i208.new

.lr.ph.i208.new:                                  ; preds = %.lr.ph.i208
  %unroll_iter507 = and i64 %i.ny, -4
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %.lr.ph.i208.new
  %.010.i = phi i64 [ 0, %.lr.ph.i208.new ], [ %i.oq, %bb.cn ] ; 6 uses
  %niter508 = phi i64 [ 0, %.lr.ph.i208.new ], [ %niter508.next.3, %bb.cn ]
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %.010.i
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !70
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.oc
  store i64 %.010.i, ptr %i.od, align 8, !tbaa !70
  %i.oe = or disjoint i64 %.010.i, 1              ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.oe
  %i.og = load i64, ptr %i.of, align 8, !tbaa !70
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.og
  store i64 %i.oe, ptr %i.oh, align 8, !tbaa !70
  %i.oi = or disjoint i64 %.010.i, 2              ; 2 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.oi
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !70
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.ok
  store i64 %i.oi, ptr %i.ol, align 8, !tbaa !70
  %i.om = or disjoint i64 %.010.i, 3              ; 2 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.om
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !70
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.oo
  store i64 %i.om, ptr %i.op, align 8, !tbaa !70
  %i.oq = add nuw i64 %.010.i, 4                  ; 2 uses
  %niter508.next.3 = add i64 %niter508, 4         ; 2 uses
  %niter508.ncmp.3 = icmp eq i64 %niter508.next.3, %unroll_iter507
  br i1 %niter508.ncmp.3, label %_ZN4cvc58internal6theory14RepSetIterator13setIndexOrderERSt6vectorImSaImEE.exit.loopexit.unr-lcssa, label %bb.cn, !llvm.loop !2

_ZN4cvc58internal6theory14RepSetIterator13setIndexOrderERSt6vectorImSaImEE.exit.loopexit.unr-lcssa: ; preds = %bb.cn
  %lcmp.mod505.not = icmp eq i64 %xtraiter503, 0
  br i1 %lcmp.mod505.not, label %_ZN4cvc58internal6theory14RepSetIterator13setIndexOrderERSt6vectorImSaImEE.exit, label %.epil.preheader502

.epil.preheader502:                               ; preds = %_ZN4cvc58internal6theory14RepSetIterator13setIndexOrderERSt6vectorImSaImEE.exit.loopexit.unr-lcssa, %.lr.ph.i208
  %.010.i.epil.init = phi i64 [ 0, %.lr.ph.i208 ], [ %i.oq, %_ZN4cvc58internal6theory14RepSetIterator13setIndexOrderERSt6vectorImSaImEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod506 = icmp ne i64 %xtraiter503, 0
  call void @llvm.assume(i1 %lcmp.mod506)
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.epil.preheader502
  %.010.i.epil = phi i64 [ %.010.i.epil.init, %.epil.preheader502 ], [ %i.ou, %bb.co ] ; 3 uses
  %epil.iter504 = phi i64 [ 0, %.epil.preheader502 ], [ %epil.iter504.next, %bb.co ]
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %.010.i.epil
  %i.os = load i64, ptr %i.or, align 8, !tbaa !70
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.os
  store i64 %.010.i.epil, ptr %i.ot, align 8, !tbaa !70
  %i.ou = add nuw i64 %.010.i.epil, 1
  %epil.iter504.next = add i64 %epil.iter504, 1   ; 2 uses
  %epil.iter504.cmp.not = icmp eq i64 %epil.iter504.next, %xtraiter503
  br i1 %epil.iter504.cmp.not, label %_ZN4cvc58internal6theory14RepSetIterator13setIndexOrderERSt6vectorImSaImEE.exit, label %bb.co, !llvm.loop !101

_ZN4cvc58internal6theory14RepSetIterator13setIndexOrderERSt6vectorImSaImEE.exit: ; preds = %_ZN4cvc58internal6theory14RepSetIterator13setIndexOrderERSt6vectorImSaImEE.exit.loopexit.unr-lcssa, %bb.co, %.noexc210
  %.not.i.i.i211 = icmp eq ptr %.sroa.0272.2454, null
  br i1 %.not.i.i.i211, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZN4cvc58internal6theory14RepSetIterator13setIndexOrderERSt6vectorImSaImEE.exit
  %i.ov = ptrtoint ptr %.sroa.13.0455 to i64
  %i.ow = ptrtoint ptr %.sroa.0272.2454 to i64
  %i.ox = sub i64 %i.ov, %i.ow
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0272.2454, i64 noundef %i.ox) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.cq:                                            ; preds = %bb.ck
  %i.oy = ptrtoint ptr %.sroa.13.0455 to i64
  %i.oz = ptrtoint ptr %.sroa.0272.2454 to i64
  %i.pa = sub i64 %i.oy, %i.oz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0272.2454, i64 noundef %i.pa) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit213

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.cp, %_ZN4cvc58internal6theory14RepSetIterator13setIndexOrderERSt6vectorImSaImEE.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit154
  %i.pb = load ptr, ptr %6, align 8, !tbaa !68    ; 3 uses
  %.not.i.i.i214 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i.i214, label %_ZNSt6vectorImSaImEED2Ev.exit215, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.pc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !75
  %i.pe = ptrtoint ptr %i.pd to i64
  %i.pf = ptrtoint ptr %i.pb to i64
  %i.pg = sub i64 %i.pe, %i.pf
  call void @_ZdlPvm(ptr noundef nonnull %i.pb, i64 noundef %i.pg) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit215

_ZNSt6vectorImSaImEED2Ev.exit215:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ct

_ZNSt6vectorImSaImEED2Ev.exit213:                 ; preds = %.thread, %bb.cq, %bb.ck, %bb.ch
  %.pn93 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.cq ], [ %i.mf, %bb.ch ], [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.ck ]
  %i.ph = load ptr, ptr %6, align 8, !tbaa !68    ; 3 uses
  %.not.i.i.i216 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i216, label %_ZNSt6vectorImSaImEED2Ev.exit217, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit213
  %i.pi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !75
  %i.pk = ptrtoint ptr %i.pj to i64
  %i.pl = ptrtoint ptr %i.ph to i64
  %i.pm = sub i64 %i.pk, %i.pl
  call void @_ZdlPvm(ptr noundef nonnull %i.ph, i64 noundef %i.pm) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit217

_ZNSt6vectorImSaImEED2Ev.exit217:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit213, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.cz

bb.ct:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit215, %.critedge97
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !73
  %i.pq = load ptr, ptr %i.pn, align 8, !tbaa !48
  %.not323 = icmp eq ptr %i.pp, %i.pq
  br i1 %.not323, label %_ZN4cvc58internal6theory14RepSetIterator16doResetIncrementEib.exit, label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %bb.ct, %_ZNSt6vectorIiSaIiEE5clearEv.exit43.i
  %storemerge98.i = phi i64 [ %i.pz, %_ZNSt6vectorIiSaIiEE5clearEv.exit43.i ], [ 0, %bb.ct ] ; 4 uses
  %i.pr = call noundef i32 @_ZN4cvc58internal6theory14RepSetIterator10resetIndexEmb(ptr noundef nonnull align 8 dereferenceable(169) %0, i64 noundef %storemerge98.i, i1 noundef zeroext true), !inline_history !111
  switch i32 %i.pr, label %_ZNSt6vectorIiSaIiEE5clearEv.exit43.i [
    i32 -1, label %bb.cu
    i32 0, label %bb.cv
  ]

bb.cu:                                            ; preds = %.lr.ph.i218
  %i.ps = load ptr, ptr %i.pn, align 8, !tbaa !48 ; 2 uses
  %i.pt = load ptr, ptr %i.po, align 8, !tbaa !73
  %.not.i.i.i220 = icmp eq ptr %i.pt, %i.ps
  br i1 %.not.i.i.i220, label %bb.cy, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.cu
  store ptr %i.ps, ptr %i.po, align 8, !tbaa !73
  br label %bb.cy

bb.cv:                                            ; preds = %.lr.ph.i218
  %.not.i219 = icmp eq i64 %storemerge98.i, 0
  br i1 %.not.i219, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.pu = trunc i64 %storemerge98.i to i32
  %i.pv = add i32 %i.pu, -1
  %i.pw = call noundef i32 @_ZN4cvc58internal6theory14RepSetIterator16incrementAtIndexEi(ptr noundef nonnull align 8 dereferenceable(169) %0, i32 noundef %i.pv) #26, !inline_history !111 ; 0 uses
  br label %_ZN4cvc58internal6theory14RepSetIterator16doResetIncrementEib.exit

bb.cx:                                            ; preds = %bb.cv
  %i.px = load ptr, ptr %i.pn, align 8, !tbaa !48 ; 2 uses
  %i.py = load ptr, ptr %i.po, align 8, !tbaa !73
  %.not.i.i41.i = icmp eq ptr %i.py, %i.px
  br i1 %.not.i.i41.i, label %_ZN4cvc58internal6theory14RepSetIterator16doResetIncrementEib.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i42.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i42.i:    ; preds = %bb.cx
  store ptr %i.px, ptr %i.po, align 8, !tbaa !73
  br label %_ZN4cvc58internal6theory14RepSetIterator16doResetIncrementEib.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit43.i:            ; preds = %.lr.ph.i218
  %i.pz = add nuw i64 %storemerge98.i, 1          ; 2 uses
  %i.qa = load ptr, ptr %i.po, align 8, !tbaa !73
  %i.qb = load ptr, ptr %i.pn, align 8, !tbaa !48
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = sub i64 %i.qc, %i.qd
  %i.qf = ashr exact i64 %i.qe, 2
  %i.qg = icmp ult i64 %i.pz, %i.qf
  br i1 %i.qg, label %.lr.ph.i218, label %_ZN4cvc58internal6theory14RepSetIterator16doResetIncrementEib.exit, !llvm.loop !3

bb.cy:                                            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %bb.cu
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.qh, align 8, !tbaa !78
  br label %_ZN4cvc58internal6theory14RepSetIterator16doResetIncrementEib.exit

_ZN4cvc58internal6theory14RepSetIterator16doResetIncrementEib.exit: ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit43.i, %bb.cy, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i42.i, %bb.cx, %bb.cw, %bb.ct, %_ZN4cvc58internal8TypeNodeD2Ev.exit150
  %.not85342 = phi i1 [ false, %_ZN4cvc58internal8TypeNodeD2Ev.exit150 ], [ true, %bb.cy ], [ true, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i42.i ], [ true, %bb.cx ], [ true, %bb.cw ], [ true, %bb.ct ], [ true, %_ZNSt6vectorIiSaIiEE5clearEv.exit43.i ]
  ret i1 %.not85342

bb.cz:                                            ; preds = %bb.ar, %bb.bv, %_ZNSt6vectorImSaImEED2Ev.exit217
  %.pn93.pn = phi { ptr, i32 } [ %.pn93, %_ZNSt6vectorImSaImEED2Ev.exit217 ], [ %.pn80.pn.pn, %bb.bv ], [ %i.go, %bb.ar ]
  resume { ptr, i32 } %.pn93.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory14RepSetIterator17setFunctionDomainENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr noundef nonnull align 8 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 8 uses
  %3 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %bb.a
  %.08 = phi i64 [ 0, %bb.a ], [ %i.cm, %_ZN4cvc58internal8TypeNodeD2Ev.exit ] ; 3 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 1023                       ; 2 uses
  %i.i = icmp eq i32 %i.h, 1023
  %i.j = select i1 %i.i, i32 -1, i32 %i.h
  %i.k = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.j)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %i.k, 2
  %4 = load i64, ptr %i.e, align 8
  %5 = lshr i64 %4, 32
  %6 = and i64 %5, 67108863
  %7 = sext i1 %i.l to i64
  %8 = add nsw i64 %6, %7
  %9 = and i64 %8, 4294967295
  %i.m = add nsw i64 %9, -1
  %i.n = icmp ult i64 %.08, %i.m
  br i1 %i.n, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49   ; 4 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !49
  %.not.i13 = icmp eq ptr %i.p, %i.q
  br i1 %.not.i13, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.e, !prof !59

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8              ; 3 uses
  %i.s = and i64 %i.r, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.s, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.f, !prof !59

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %i.r, 1152920405095219200
  %i.u = and i64 %i.t, 1152920405095219200        ; 2 uses
  %i.v = and i64 %i.r, -1152920405095219201
  %i.w = or disjoint i64 %i.u, %i.v
  store i64 %i.w, ptr %i.p, align 8
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %bb.g, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !59

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.g, %bb.f, %bb.e
  %i.y = load ptr, ptr %1, align 8, !tbaa !49     ; 5 uses
  store ptr %i.y, ptr %i.o, align 8, !tbaa !49
  %i.z = load i64, ptr %i.y, align 8              ; 3 uses
  %i.aa = lshr i64 %i.z, 40
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 1048575                  ; 3 uses
  %i.ad = icmp samesign ult i32 %i.ac, 1048574
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !71

bb.h:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ae = add nuw nsw i32 %i.ac, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 40
  %i.ah = and i64 %i.z, -1152920405095219201
  %i.ai = or i64 %i.ag, %i.ah
  store i64 %i.ai, ptr %i.y, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.i:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.aj = icmp eq i32 %i.ac, 1048574
  br i1 %i.aj, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !59

bb.j:                                             ; preds = %bb.i
  %i.ak = or i64 %i.z, 1152920405095219200
  store i64 %i.ak, ptr %i.y, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.j, %bb.g, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %lpad.loopexit.split-lp33 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.al = load ptr, ptr %2, align 8, !tbaa !66, !noalias !115 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noalias !115
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 1023                     ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 1023
  %i.ar = select i1 %i.aq, i32 -1, i32 %i.ap
  %i.as = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ar)
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %bb.k
  %i.at = icmp eq i32 %i.as, 2
  %i.au = zext i1 %i.at to i64
  %spec.select.i.i = add nuw i64 %.08, %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %sext = shl i64 %spec.select.i.i, 32
  %i.aw = ashr exact i64 %sext, 29
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47, !noalias !115 ; 5 uses
  store ptr %i.ay, ptr %3, align 8, !tbaa !66, !alias.scope !115
  %i.az = load i64, ptr %i.ay, align 8, !noalias !115 ; 3 uses
  %i.ba = lshr i64 %i.az, 40
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1048575                  ; 3 uses
  %i.bd = icmp samesign ult i32 %i.bc, 1048574
  br i1 %i.bd, label %bb.l, label %bb.m, !prof !71

bb.l:                                             ; preds = %.noexc15
  %i.be = add nuw nsw i32 %i.bc, 1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 40
  %i.bh = and i64 %i.az, -1152920405095219201
  %i.bi = or i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %i.ay, align 8, !noalias !115
  br label %_ZNK4cvc58internal8TypeNodeixEi.exit

bb.m:                                             ; preds = %.noexc15
  %i.bj = icmp eq i32 %i.bc, 1048574
  br i1 %i.bj, label %bb.n, label %_ZNK4cvc58internal8TypeNodeixEi.exit, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.bk = or i64 %i.az, 1152920405095219200
  store i64 %i.bk, ptr %i.ay, align 8, !noalias !115
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_ZNK4cvc58internal8TypeNodeixEi.exit unwind label %bb.w

_ZNK4cvc58internal8TypeNodeixEi.exit:             ; preds = %bb.m, %bb.l, %bb.n
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !64  ; 3 uses
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !67
  %.not.i.i17 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i17, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNK4cvc58internal8TypeNodeixEi.exit
  %i.bn = load ptr, ptr %3, align 8, !tbaa !66    ; 5 uses
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !66
  %i.bo = load i64, ptr %i.bn, align 8            ; 3 uses
  %i.bp = lshr i64 %i.bo, 40
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = and i32 %i.bq, 1048575                  ; 3 uses
  %i.bs = icmp samesign ult i32 %i.br, 1048574
  br i1 %i.bs, label %bb.p, label %bb.q, !prof !71

bb.p:                                             ; preds = %bb.o
  %i.bt = add nuw nsw i32 %i.br, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 40
  %i.bw = and i64 %i.bo, -1152920405095219201
  %i.bx = or i64 %i.bv, %i.bw
  store i64 %i.bx, ptr %i.bn, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.by = icmp eq i32 %i.br, 1048574
  br i1 %i.by, label %bb.r, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i.i, !prof !59

bb.r:                                             ; preds = %bb.q
  %i.bz = or i64 %i.bo, 1152920405095219200
  store i64 %i.bz, ptr %i.bn, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i.i unwind label %bb.x

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i.i:      ; preds = %bb.r, %bb.q, %bb.p
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !64
  br label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backEOS2_.exit

bb.s:                                             ; preds = %_ZNK4cvc58internal8TypeNodeixEi.exit
  invoke void @_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backEOS2_.exit unwind label %bb.x

_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit.i.i, %bb.s
  %i.cc = load ptr, ptr %3, align 8, !tbaa !66    ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8            ; 3 uses
  %i.ce = and i64 %i.cd, 1152920405095219200
  %.not.i.i20 = icmp eq i64 %i.ce, 1152920405095219200
  br i1 %.not.i.i20, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.t, !prof !59

bb.t:                                             ; preds = %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backEOS2_.exit
  %i.cf = add i64 %i.cd, 1152920405095219200
  %i.cg = and i64 %i.cf, 1152920405095219200      ; 2 uses
  %i.ch = and i64 %i.cd, -1152920405095219201
  %i.ci = or disjoint i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %i.cc, align 8
  %i.cj = icmp eq i64 %i.cg, 0
  br i1 %i.cj, label %bb.u, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !59

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #24
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EE9push_backEOS2_.exit, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.cm = add nuw i64 %.08, 1
  br label %bb.b, !llvm.loop !114

bb.w:                                             ; preds = %bb.n, %bb.k
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s, %bb.r
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  br label %bb.y
end_hunk_1
