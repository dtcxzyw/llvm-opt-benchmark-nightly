Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ObjC?download=true
inline.NumInlined: 2720
inline.NumDeleted: 1383
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPN3lld5macho18ConcatInputSectionEj:bb.a
  %.val1.i23.i.i.i.i.i.i = load i32, ptr %i.p, align 4, !tbaa !85
  %i.q = icmp eq i32 %.val1.i23.i.i.i.i.i.i, %1
  br i1 %i.q, label %.loopexit.split.loop.exit56.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %.sroa.044.063.i.i.i.i.i.i, i64 76
  %.val1.i24.i.i.i.i.i.i = load i32, ptr %i.r, align 4, !tbaa !85
  %i.s = icmp eq i32 %.val1.i24.i.i.i.i.i.i, %1
  br i1 %i.s, label %.loopexit.split.loop.exit58.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i.i.i, i64 96
  %i.u = add nsw i64 %.064.i.i.i.i.i.i, -1
  %i.v = icmp sgt i64 %.064.i.i.i.i.i.i, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !695

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %.pre.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i to i64
  %.pre69.i.i.i.i.i.i = sub i64 %i.e, %.pre.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.b
  %.pre-phi70.i.i.i.i.i.i = phi i64 [ %.pre69.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.g, %bb.b ]
  %.sroa.044.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.val.i, %bb.b ] ; 5 uses
  %i.w = sdiv exact i64 %.pre-phi70.i.i.i.i.i.i, 24
  switch i64 %i.w, label %"_ZN4llvm8erase_ifISt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEvRT_T0_.exit" [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.x = getelementptr i8, ptr %.sroa.044.0.lcssa.i.i.i.i.i.i, i64 4
  %.val1.i25.i.i.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !85
  %i.y = icmp eq i32 %.val1.i25.i.i.i.i.i.i, %1
  br i1 %i.y, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEET_SI_SI_T0_.exit.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.044.0.lcssa.i.i.i.i.i.i, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.sroa.044.1.i.i.i.i.i.i = phi ptr [ %i.z, %bb.h ], [ %.sroa.044.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.aa = getelementptr i8, ptr %.sroa.044.1.i.i.i.i.i.i, i64 4
  %.val1.i26.i.i.i.i.i.i = load i32, ptr %i.aa, align 4, !tbaa !85
  %i.ab = icmp eq i32 %.val1.i26.i.i.i.i.i.i, %1
  br i1 %i.ab, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEET_SI_SI_T0_.exit.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.044.1.i.i.i.i.i.i, i64 24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i
  %.sroa.044.2.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.sroa.044.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.sroa.044.2.i.i.i.i.i.i, i64 4
  %.val1.i27.i.i.i.i.i.i = load i32, ptr %i.ad, align 4, !tbaa !85
  %i.ae = icmp eq i32 %.val1.i27.i.i.i.i.i.i, %1
  %spec.select.i.i.i.i.i.i = select i1 %i.ae, ptr %.sroa.044.2.i.i.i.i.i.i, ptr %.val5.i
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEET_SI_SI_T0_.exit.i.i.i.i"

.loopexit.split.loop.exit54.i.i.i.i.i.i:          ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i.i.i, i64 24
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEET_SI_SI_T0_.exit.i.i.i.i"

.loopexit.split.loop.exit56.i.i.i.i.i.i:          ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i.i.i, i64 48
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEET_SI_SI_T0_.exit.i.i.i.i"

.loopexit.split.loop.exit58.i.i.i.i.i.i:          ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.044.063.i.i.i.i.i.i, i64 72
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEET_SI_SI_T0_.exit.i.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEET_SI_SI_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %.loopexit.split.loop.exit58.i.i.i.i.i.i, %.loopexit.split.loop.exit56.i.i.i.i.i.i, %.loopexit.split.loop.exit54.i.i.i.i.i.i, %bb.k, %bb.i, %bb.g
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.044.1.i.i.i.i.i.i, %bb.i ], [ %spec.select.i.i.i.i.i.i, %bb.k ], [ %i.ah, %.loopexit.split.loop.exit58.i.i.i.i.i.i ], [ %.sroa.044.0.lcssa.i.i.i.i.i.i, %bb.g ], [ %i.ag, %.loopexit.split.loop.exit56.i.i.i.i.i.i ], [ %i.af, %.loopexit.split.loop.exit54.i.i.i.i.i.i ], [ %.sroa.044.063.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %i.ai = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %.val5.i
  %.sroa.07.022.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.sroa.07.022.i.i.i.i, %.val5.i
  %or.cond.i.i.i.i = select i1 %i.ai, i1 true, i1 %.not23.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %"_ZN4llvm9remove_ifIRSt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEDaOT_T0_.exit.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEET_SI_SI_T0_.exit.i.i.i.i", %bb.m
  %.sroa.07.026.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i, %bb.m ], [ %.sroa.07.022.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEET_SI_SI_T0_.exit.i.i.i.i" ] ; 3 uses
  %.sroa.013.025.i.i.i.i = phi ptr [ %.sroa.013.1.i.i.i.i, %bb.m ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEET_SI_SI_T0_.exit.i.i.i.i" ] ; 3 uses
  %.sroa.08.0.in.sroa.speculated.i.i.pn24.i.i.i.i = phi ptr [ %.sroa.07.026.i.i.i.i, %bb.m ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEET_SI_SI_T0_.exit.i.i.i.i" ]
  %i.aj = getelementptr i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn24.i.i.i.i, i64 28
  %.val1.i.i.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !85
  %i.ak = icmp eq i32 %.val1.i.i.i.i.i, %1
  br i1 %i.ak, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.025.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.026.i.i.i.i, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i.i.i.i, i64 24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.sroa.013.1.i.i.i.i = phi ptr [ %.sroa.013.025.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.al, %bb.l ] ; 2 uses
  %.sroa.07.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.026.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.07.0.i.i.i.i, %.val5.i
  br i1 %.not.i.i.i.i, label %"_ZN4llvm9remove_ifIRSt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEDaOT_T0_.exit.loopexit.i", label %.lr.ph.i.i.i.i, !llvm.loop !696

"_ZN4llvm9remove_ifIRSt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEDaOT_T0_.exit.loopexit.i": ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !78
  br label %"_ZN4llvm9remove_ifIRSt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEDaOT_T0_.exit.i"

"_ZN4llvm9remove_ifIRSt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEDaOT_T0_.exit.i": ; preds = %"_ZN4llvm9remove_ifIRSt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEDaOT_T0_.exit.loopexit.i", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEET_SI_SI_T0_.exit.i.i.i.i"
  %i.am = phi ptr [ %.pre.i, %"_ZN4llvm9remove_ifIRSt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEDaOT_T0_.exit.loopexit.i" ], [ %.val5.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEET_SI_SI_T0_.exit.i.i.i.i" ]
  %.sroa.013.2.i.i.i.i = phi ptr [ %.sroa.013.1.i.i.i.i, %"_ZN4llvm9remove_ifIRSt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEDaOT_T0_.exit.loopexit.i" ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEET_SI_SI_T0_.exit.i.i.i.i" ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.013.2.i.i.i.i, %i.am
  br i1 %.not.i.i.i, label %"_ZN4llvm8erase_ifISt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEvRT_T0_.exit", label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i: ; preds = %"_ZN4llvm9remove_ifIRSt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEDaOT_T0_.exit.i"
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !78  ; 2 uses
  %i.ao = ptrtoint ptr %.sroa.013.2.i.i.i.i to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !178
  br label %"_ZN4llvm8erase_ifISt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEvRT_T0_.exit"

"_ZN4llvm8erase_ifISt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEvRT_T0_.exit": ; preds = %._crit_edge.i.i.i.i.i.i, %"_ZN4llvm9remove_ifIRSt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEDaOT_T0_.exit.i", %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3lld5macho10RelocationESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i
  %i.as = tail call noundef ptr @_ZNK3lld5macho7Defined4isecEv(ptr noundef nonnull align 8 dereferenceable(88) %i.a) #23 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i8, ptr %i.at, align 8, !tbaa !164
  %i.av = icmp ne i8 %i.au, 0
  %.not141 = icmp eq ptr %i.as, null
  %.not14 = or i1 %.not141, %i.av
  br i1 %.not14, label %_ZN12_GLOBAL__N_118ObjcCategoryMerger9eraseISecEPN3lld5macho18ConcatInputSectionE.exit, label %bb.n

bb.n:                                             ; preds = %"_ZN4llvm8erase_ifISt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEvRT_T0_.exit"
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !165
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !172
  %i.ba = icmp eq i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.o, label %_ZN12_GLOBAL__N_118ObjcCategoryMerger9eraseISecEPN3lld5macho18ConcatInputSectionE.exit

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 97
  store i8 0, ptr %i.bb, align 1, !tbaa !234
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bc, align 8 ; 3 uses
  %i.bd = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZN4llvm13TinyPtrVectorIPN3lld5macho7DefinedEE5beginEv.exit.i.i, label %bb.p

_ZN4llvm13TinyPtrVectorIPN3lld5macho7DefinedEE5beginEv.exit.i.i: ; preds = %bb.o
  %i.bf = icmp ugt i64 %.0.copyload.i.i.i.i.i.i.i, 7
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bg
  br label %_ZN4llvm13TinyPtrVectorIPN3lld5macho7DefinedEE3endEv.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bi = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !131 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !132
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bn
  br label %_ZN4llvm13TinyPtrVectorIPN3lld5macho7DefinedEE3endEv.exit.i

_ZN4llvm13TinyPtrVectorIPN3lld5macho7DefinedEE3endEv.exit.i: ; preds = %bb.p, %_ZN4llvm13TinyPtrVectorIPN3lld5macho7DefinedEE5beginEv.exit.i.i
  %.0.i2.i = phi ptr [ %i.bc, %_ZN4llvm13TinyPtrVectorIPN3lld5macho7DefinedEE5beginEv.exit.i.i ], [ %i.bk, %bb.p ] ; 2 uses
  %.0.i10.i = phi ptr [ %i.bh, %_ZN4llvm13TinyPtrVectorIPN3lld5macho7DefinedEE5beginEv.exit.i.i ], [ %i.bo, %bb.p ] ; 2 uses
  %.not4.i = icmp eq ptr %.0.i2.i, %.0.i10.i
  br i1 %.not4.i, label %_ZN12_GLOBAL__N_118ObjcCategoryMerger9eraseISecEPN3lld5macho18ConcatInputSectionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm13TinyPtrVectorIPN3lld5macho7DefinedEE3endEv.exit.i, %.lr.ph.i
  %.05.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.0.i2.i, %_ZN4llvm13TinyPtrVectorIPN3lld5macho7DefinedEE3endEv.exit.i ] ; 2 uses
  %i.bp = load ptr, ptr %.05.i, align 8, !tbaa !171
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 52 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 4
  %i.bs = and i8 %i.br, -3
  store i8 %i.bs, ptr %i.bq, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bt, %.0.i10.i
  br i1 %.not.i, label %_ZN12_GLOBAL__N_118ObjcCategoryMerger9eraseISecEPN3lld5macho18ConcatInputSectionE.exit, label %.lr.ph.i

_ZN12_GLOBAL__N_118ObjcCategoryMerger9eraseISecEPN3lld5macho18ConcatInputSectionE.exit: ; preds = %.lr.ph.i, %_ZN4llvm13TinyPtrVectorIPN3lld5macho7DefinedEE3endEv.exit.i, %"_ZN4llvm8erase_ifISt6vectorIN3lld5macho10RelocationESaIS4_EEZN12_GLOBAL__N_118ObjcCategoryMerger23eraseSymbolAtIsecOffsetEPNS3_18ConcatInputSectionEjE3$_0EEvRT_T0_.exit", %bb.n, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_118ObjcCategoryMerger23emitAndLinkProtocolListEPN3lld5macho7DefinedEjRKNS0_18ClassExtensionInfoERKNS0_15PointerListInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(384) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !262
  %i.i = load ptr, ptr @_ZN3lld5macho6targetE, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load i64, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !272
  %9 = add i32 %i.h, 1
  %10 = trunc i64 %i.k to i32
  %11 = mul i32 %9, %10
  %i.o = add i32 %11, %i.n
  %i.p = tail call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN12_GLOBAL__N_118ObjcCategoryMerger14newSectionDataEj(i32 noundef %i.o) ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !136  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !199  ; 2 uses
  %i.t = load i32, ptr %i.l, align 4, !tbaa !705
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !237
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !239
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  store i32 %i.ac, ptr %i.v, align 4, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !276
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ag = tail call noundef ptr @_ZN3lld17SpecificAllocBase11getOrCreateEPvmmRFPS0_S1_E(ptr noundef nonnull @_ZN3lld13SpecificAllocINS_5macho18ConcatInputSectionEE3tagE, i64 noundef 88, i64 noundef 8, ptr noundef nonnull @_ZN3lld13SpecificAllocINS_5macho18ConcatInputSectionEE6createEPv) #23 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !226 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = add i64 %i.aj, 112                      ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !227
  %i.an = icmp ult i64 %i.ak, %i.am
  br i1 %i.an, label %bb.c, label %bb.d, !prof !69

bb.c:                                             ; preds = %bb.b
  %i.ao = inttoptr i64 %i.ak to ptr
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !226
  br label %_ZN3lld4makeINS_5macho18ConcatInputSectionEJRNS1_7SectionERN4llvm8ArrayRefIhEERjEEEPT_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.ap = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, i64 noundef 112, i64 noundef 112, i8 0)
  br label %_ZN3lld4makeINS_5macho18ConcatInputSectionEJRNS1_7SectionERN4llvm8ArrayRefIhEERjEEEPT_DpOT0_.exit

_ZN3lld4makeINS_5macho18ConcatInputSectionEJRNS1_7SectionERN4llvm8ArrayRefIhEERjEEEPT_DpOT0_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.ai, %bb.c ], [ %i.ap, %bb.d ] ; 15 uses
  %i.aq = load i32, ptr %i.af, align 4, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i8 0, ptr %i.ar, align 8, !tbaa !164
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 9
  store i8 0, ptr %i.as, align 1, !tbaa !228
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 10 ; 2 uses
  %i.au = load i8, ptr %i.at, align 2
  %i.av = and i8 %i.au, -8
  store i8 %i.av, ptr %i.at, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !176
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %i.q, ptr %i.ay, align 8, !tbaa !20
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store i64 %i.s, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 0, i64 32, i1 false)
  store ptr %i.ae, ptr %i.ba, align 8, !tbaa !229
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3lld5macho18ConcatInputSectionE, i64 16), ptr %.0.i.i.i, align 8, !tbaa !231
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bb, i8 0, i64 17, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 104
  store i64 0, ptr %i.bd, align 8, !tbaa !233
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !277
  store i8 1, ptr %i.bc, align 1, !tbaa !234
  store ptr %i.bf, ptr %i.ax, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bg = load ptr, ptr %4, align 8, !tbaa !260   ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.bh, ptr %5, align 8, !tbaa !235
  %i.bi = icmp eq ptr %i.bg, null
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3lld4makeINS_5macho18ConcatInputSectionEJRNS1_7SectionERN4llvm8ArrayRefIhEERjEEEPT_DpOT0_.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #25
  unreachable

bb.f:                                             ; preds = %_ZN3lld4makeINS_5macho18ConcatInputSectionEJRNS1_7SectionERN4llvm8ArrayRefIhEERjEEEPT_DpOT0_.exit
  %i.bj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !22
  %i.bk = icmp ugt i64 %i.bj, 15
  br i1 %i.bk, label %bb.g, label %._crit_edge.i.i

bb.g:                                             ; preds = %bb.f
  %i.bl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.bl, ptr %5, align 8, !tbaa !125
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.bm, ptr %i.bh, align 8, !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %i.bn = phi ptr [ %i.bl, %bb.g ], [ %i.bh, %bb.f ] ; 2 uses
  switch i64 %i.bj, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.bo = load i8, ptr %i.bg, align 1, !tbaa !37
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr nonnull align 1 %i.bg, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !236
  %i.br = load ptr, ptr %5, align 8, !tbaa !125
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !125, !noalias !706
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !236, !noalias !706 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.bx, ptr %8, align 8, !tbaa !235, !alias.scope !707
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 0, ptr %i.by, align 8, !tbaa !236, !alias.scope !707
  store i8 0, ptr %i.bx, align 8, !tbaa !37, !alias.scope !707
  %i.bz = add i64 %i.bw, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bz) #23
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !236, !alias.scope !707
  %i.cb = sub i64 4611686018427387903, %i.ca
  %i.cc = icmp ult i64 %i.cb, %i.bw
  br i1 %i.cc, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.cd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.bu, i64 noundef %i.bw) #23 ; 0 uses
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !236, !alias.scope !707
  %i.cf = icmp eq i64 %i.ce, 4611686018427387903
  br i1 %i.cf, label %bb.k, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.21, i64 noundef 1) #23 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !236, !noalias !708 ; 2 uses
  %i.cj = load i64, ptr %i.by, align 8, !tbaa !236, !noalias !708
  %i.ck = sub i64 4611686018427387903, %i.cj
  %i.cl = icmp ult i64 %i.ck, %i.ci
  br i1 %i.cl, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25, !noalias !708
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.cm = load ptr, ptr %3, align 8, !tbaa !125, !noalias !708
  %i.cn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.cm, i64 noundef %i.ci) #23, !noalias !708 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.co, ptr %7, align 8, !tbaa !235, !alias.scope !708
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !125 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 5 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !236 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %i.cv = add nuw nsw i64 %i.ct, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull align 8 dereferenceable(1) %i.cq, i64 %i.cv, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.cp, ptr %7, align 8, !tbaa !125, !alias.scope !708
  %i.cw = load i64, ptr %i.cq, align 8, !tbaa !37
  store i64 %i.cw, ptr %i.co, align 8, !tbaa !37, !alias.scope !708
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !236
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cx = phi i64 [ %i.ct, %bb.m ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.cx, ptr %i.cz, align 8, !tbaa !236, !alias.scope !708
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !125
  store i64 0, ptr %i.cy, align 8, !tbaa !236
end_hunk_0
