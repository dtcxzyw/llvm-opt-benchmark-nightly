Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/assertion_tracker?download=true
inline.NumInlined: 839
inline.NumDeleted: 440
begin_hunk_0_@_ZN4bzla9backtrack13unordered_mapINS_4NodeESt6vectorIS2_SaIS2_EEE7emplaceIJRKS2_S5_EEEDaDpOT_:bb.a
  %.fca.1.extract5 = extractvalue { ptr, i8 } %i.b, 1
  %i.c = trunc nuw i8 %.fca.1.extract5 to i1
  br i1 %i.c, label %bb.b, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12emplace_backIJRS3_EEERS4_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract4 = extractvalue { ptr, i8 } %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.fca.0.extract4, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %i.g, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !44
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12emplace_backIJRS3_EEERS4_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !34   ; 7 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 4 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #17 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.e, ptr %i.w, align 8, !tbaa !46
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = ptrtoaddr ptr %i.v to i64
  %i.y = add i64 %i.l, -8
  %i.z = sub i64 %i.y, %i.m                       ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 72
  %i.ac = sub i64 %i.m, %i.x
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.k, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.k, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.ah = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep16, align 8, !alias.scope !96, !noalias !95
  %wide.load17 = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !96, !noalias !95
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !95, !noalias !96
  store <2 x i64> %wide.load17, ptr %i.ai, align 8, !alias.scope !95, !noalias !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader19

.lr.ph.i.i.i.i.i.preheader19:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader19, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader19 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader19 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !96, !noalias !95
  store i64 %i.ak, ptr %.012.i.i.i.i.i, align 8, !alias.scope !95, !noalias !96
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !94

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.aq) #16
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.v, ptr %i.d, align 8, !tbaa !34
  store ptr %i.an, ptr %i.f, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !35
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12emplace_backIJRS3_EEERS4_DpOT_.exit

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12emplace_backIJRS3_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.c, %bb.a
  ret { ptr, i8 } %i.b
}

declare void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #15
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #16
  br label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZNK4bzla10preprocess16AssertionTracker13find_originalERKSt6vectorINS_4NodeESaIS3_EERKSt13unordered_setIS3_St4hashIS3_ESt8equal_toIS3_ES4_ERS5_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  %6 = alloca %"class.std::vector.30", align 8    ; 12 uses
  %7 = alloca %"class.bzla::Node", align 8        ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt6vectorIN4bzla4NodeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.preheader unwind label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %i.h = load ptr, ptr %6, align 8, !tbaa !41     ; 3 uses
  %.not81 = icmp eq ptr %i.g, %i.h
  br i1 %.not81, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit, %.preheader
  %.lcssa69 = phi ptr [ %i.g, %.preheader ], [ %i.co, %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.lcssa = phi ptr [ %i.h, %.preheader ], [ %i.cp, %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.lcssa, %.lcssa69
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %.lcssa, %._crit_edge ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #15
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %.lcssa69
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %8 = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %8, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %8 to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef %i.x) #16
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.y, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit ] ; 3 uses
  %i.z = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #15
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #16
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit
  %i.ab = load ptr, ptr %5, align 8, !tbaa !50
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !51
  %i.ad = shl i64 %i.ac, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.ad, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !51
  %i.ah = shl i64 %i.ag, 3
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #16
  br label %_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

bb.d:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit
  %i.aj = phi ptr [ %i.h, %.lr.ph ], [ %i.cp, %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit ]
  %.01379 = phi i64 [ 0, %.lr.ph ], [ %i.cn, %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.01379
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %5, ptr %4, align 8, !tbaa !54
  %i.al = invoke { ptr, i8 } @_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SH_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.fca.1.extract = extractvalue { ptr, i8 } %i.al, 1
  %i.am = trunc i8 %.fca.1.extract to i1
  br i1 %i.am, label %bb.j, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.i:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp47

bb.j:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %i.i, align 8, !tbaa !55
  %.not.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.not.i.i, label %.preheader84, label %bb.l

.preheader84:                                     ; preds = %bb.j, %.noexc
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %.noexc ], [ %i.k, %bb.j ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, label %bb.k

bb.k:                                             ; preds = %.preheader84
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.ar = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %.noexc unwind label %.loopexit46

.noexc:                                           ; preds = %bb.k
  br i1 %i.ar, label %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread35, label %.preheader84, !llvm.loop !97

bb.l:                                             ; preds = %bb.j
  %i.as = invoke noundef i64 @_ZNKSt4hashIN4bzla4NodeEEclERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc18 unwind label %.loopexit.split-lp47.loopexit.split-lp ; 2 uses

.noexc18:                                         ; preds = %bb.l
  %i.at = load i64, ptr %i.j, align 8, !tbaa !51
  %i.au = urem i64 %i.as, %i.at                   ; 2 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !50
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i17, label %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, label %bb.m

bb.m:                                             ; preds = %.noexc18
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !37 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !58
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.az = phi i64 [ %.pre.i.i.i.i, %bb.m ], [ %i.bg, %bb.o ]
  %.015.i.i.i.i = phi ptr [ %i.ax, %bb.m ], [ %.0.i.i.i.i, %bb.o ]
  %.0.i.i.i.i = phi ptr [ %i.ay, %bb.m ], [ %i.bd, %bb.o ] ; 3 uses
  %i.ba = icmp eq i64 %i.as, %i.az
  br i1 %i.ba, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i: ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.bc = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bb)
          to label %.noexc19 unwind label %.loopexit.split-lp47.loopexit

.noexc19:                                         ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i
  br i1 %i.bc, label %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i: ; preds = %.noexc19, %bb.n
  %i.bd = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not18.i.i.i.i, label %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i
  %i.be = load i64, ptr %i.j, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !58 ; 2 uses
  %i.bh = urem i64 %i.bg, %i.be
  %.not19.i.i.i.i = icmp eq i64 %i.bh, %i.au
  br i1 %.not19.i.i.i.i, label %bb.n, label %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, !llvm.loop !98

_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit: ; preds = %.noexc19
  %i.bi = load ptr, ptr %.015.i.i.i.i, align 8, !tbaa !37
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, label %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread35

_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread35: ; preds = %.noexc, %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !43  ; 3 uses
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread35
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc20 unwind label %bb.r

.noexc20:                                         ; preds = %bb.p
  %i.bl = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bm, ptr %i.l, align 8, !tbaa !43
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit

bb.q:                                             ; preds = %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread35
  invoke void @_ZNSt6vectorIN4bzla4NodeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit unwind label %bb.r

.loopexit46:                                      ; preds = %bb.k
  %lpad.loopexit48 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp47

.loopexit.split-lp47.loopexit:                    ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i
  %lpad.loopexit50 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp47

.loopexit.split-lp47.loopexit.split-lp:           ; preds = %bb.l
  %lpad.loopexit.split-lp51 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp47

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp47

_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i, %bb.o, %.preheader84, %.noexc18, %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit
  %i.bo = load i64, ptr %i.n, align 8, !tbaa !59
  %.not.not.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.not.i.i.i, label %.preheader82, label %bb.t

.preheader82:                                     ; preds = %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, %.noexc23
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %.noexc23 ], [ %i.q, %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !37 ; 4 uses
  %.not.i.i.i22 = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit, label %bb.s

bb.s:                                             ; preds = %.preheader82
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.bq = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %.noexc23 unwind label %.loopexit

.noexc23:                                         ; preds = %bb.s
  br i1 %i.bq, label %_ZNK4bzla9backtrack13unordered_mapINS_4NodeES2_E4findERKS2_.exit.thread38, label %.preheader82, !llvm.loop !99

bb.t:                                             ; preds = %_ZNKSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread
  %i.br = invoke noundef i64 @_ZNKSt4hashIN4bzla4NodeEEclERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc24:                                         ; preds = %bb.t
  %i.bs = load i64, ptr %i.p, align 8, !tbaa !27
  %i.bt = urem i64 %i.br, %i.bs                   ; 2 uses
  %i.bu = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit, label %bb.u

bb.u:                                             ; preds = %.noexc24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !37 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !58
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.by = phi i64 [ %.pre.i.i.i.i.i, %bb.u ], [ %i.cf, %bb.w ]
  %.015.i.i.i.i.i = phi ptr [ %i.bw, %bb.u ], [ %.0.i.i.i.i.i, %bb.w ]
  %.0.i.i.i.i.i = phi ptr [ %i.bx, %bb.u ], [ %i.cc, %bb.w ] ; 3 uses
  %i.bz = icmp eq i64 %i.br, %i.by
  br i1 %i.bz, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  %i.cb = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit

.noexc25:                                         ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i
  br i1 %i.cb, label %_ZNK4bzla9backtrack13unordered_mapINS_4NodeES2_E4findERKS2_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i: ; preds = %.noexc25, %bb.v
  %i.cc = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not18.i.i.i.i.i, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit, label %bb.w

bb.w:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i
  %i.cd = load i64, ptr %i.p, align 8, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !58 ; 2 uses
  %i.cg = urem i64 %i.cf, %i.cd
  %.not19.i.i.i.i.i = icmp eq i64 %i.cg, %i.bt
  br i1 %.not19.i.i.i.i.i, label %bb.v, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit, !llvm.loop !3

_ZNK4bzla9backtrack13unordered_mapINS_4NodeES2_E4findERKS2_.exit: ; preds = %.noexc25
  %i.ch = load ptr, ptr %.015.i.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not41 = icmp eq ptr %i.ch, null
  br i1 %.not41, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit, label %_ZNK4bzla9backtrack13unordered_mapINS_4NodeES2_E4findERKS2_.exit.thread38

_ZNK4bzla9backtrack13unordered_mapINS_4NodeES2_E4findERKS2_.exit.thread38: ; preds = %.noexc23, %_ZNK4bzla9backtrack13unordered_mapINS_4NodeES2_E4findERKS2_.exit
  %.sroa.06.1.i.i.i40 = phi ptr [ %i.ch, %_ZNK4bzla9backtrack13unordered_mapINS_4NodeES2_E4findERKS2_.exit ], [ %.sroa.06.0.i.i.i, %.noexc23 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i40, i64 16 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !43  ; 3 uses
  %i.ck = load ptr, ptr %i.r, align 8, !tbaa !42
  %.not.i26 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i26, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK4bzla9backtrack13unordered_mapINS_4NodeES2_E4findERKS2_.exit.thread38
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc27:                                         ; preds = %bb.x
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cm, ptr %i.f, align 8, !tbaa !43
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit

bb.y:                                             ; preds = %_ZNK4bzla9backtrack13unordered_mapINS_4NodeES2_E4findERKS2_.exit.thread38
  invoke void @_ZNSt6vectorIN4bzla4NodeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp47

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i
  %lpad.loopexit42 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp47

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.y, %bb.x, %bb.t
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp47

_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeESt4pairIKS2_S2_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i, %bb.w, %.preheader82, %.noexc24, %_ZNK4bzla9backtrack13unordered_mapINS_4NodeES2_E4findERKS2_.exit, %bb.y, %.noexc27, %.noexc20, %bb.q, %bb.g
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.cn = add nuw i64 %.01379, 1                  ; 2 uses
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !43  ; 2 uses
  %i.cp = load ptr, ptr %6, align 8, !tbaa !41    ; 3 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3
  %i.cu = icmp ult i64 %i.cn, %i.ct
  br i1 %i.cu, label %bb.e, label %._crit_edge, !llvm.loop !100

.loopexit.split-lp47:                             ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit46, %.loopexit.split-lp47.loopexit.split-lp, %.loopexit.split-lp47.loopexit, %bb.r, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.r ], [ %lpad.loopexit.split-lp51, %.loopexit.split-lp47.loopexit.split-lp ], [ %i.ao, %bb.i ], [ %lpad.loopexit48, %.loopexit46 ], [ %lpad.loopexit50, %.loopexit.split-lp47.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit42, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp43, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #15
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp47, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp47 ], [ %i.an, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.z ], [ %i.ai, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4bzla4NodeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN4bzla4NodeEE8allocateEmPKv.exit.i.i.i, !prof !60

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorIN4bzla4NodeEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4bzla4NodeEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN4bzla4NodeEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !42
  %i.m = load ptr, ptr %1, align 8, !tbaa !61     ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4bzla4NodeESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4bzla4NodeESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #15 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #15
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #18
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #19
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4bzla4NodeESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !43
  ret void

.body:                                            ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !41     ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #16
  br label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.u
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #16
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !51
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !51
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #16
  br label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4bzla10preprocess16AssertionTracker13find_childrenERKNS_4NodeE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.30") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  %5 = alloca %"class.std::vector.30", align 8    ; 14 uses
  %6 = alloca [1 x %"class.bzla::Node"], align 8  ; 7 uses
  %7 = alloca %"class.bzla::Node", align 8        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.f = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %.noexc31 unwind label %bb.f   ; 3 uses
end_hunk_0
