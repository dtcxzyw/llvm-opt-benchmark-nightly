Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/unigram_model?download=true
inline.NumInlined: 4081
inline.NumDeleted: 1860
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK13sentencepiece7unigram5Model9PieceToIdESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.k = load i64, ptr %3, align 8, !tbaa !69     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !177  ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !128  ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.preheader48.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.o = load i8, ptr %i.j, align 1, !tbaa !80    ; 2 uses
  %.not3258.i.i = icmp eq i8 %i.o, 0
  br i1 %.not3258.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %.preheader48.i.i
  %i.p = add nuw i64 %.02457.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.p, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.preheader48.i.i, !llvm.loop !417

.preheader48.i.i:                                 ; preds = %bb.c, %bb.d
  %.02457.i.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.02556.i.i = phi i64 [ %i.z, %bb.d ], [ 0, %bb.c ]
  %.sroa.0.055.i.i = phi i32 [ %i.ab, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.q = lshr i32 %.sroa.0.055.i.i, 10
  %i.r = lshr i32 %.sroa.0.055.i.i, 6
  %i.s = and i32 %i.r, 8
  %i.t = shl nuw nsw i32 %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.02457.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !80
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = xor i32 %i.t, %i.w
  %i.y = zext nneg i32 %i.x to i64
  %i.z = xor i64 %.02556.i.i, %i.y                ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !128 ; 3 uses
  %i.ac = and i32 %i.ab, -2147483393
  %.not34.i.i = icmp eq i32 %i.ac, %i.w
  br i1 %.not34.i.i, label %bb.d, label %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit.thread

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ad = add i64 %.02660.i.i, 1                  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !80  ; 2 uses
  %.not32.i.i = icmp eq i8 %i.af, 0
  br i1 %.not32.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !418

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.e
  %i.ag = phi i8 [ %i.af, %bb.e ], [ %i.o, %.preheader.i.i ]
  %.261.i.i = phi i64 [ %i.ao, %bb.e ], [ 0, %.preheader.i.i ]
  %.02660.i.i = phi i64 [ %i.ad, %bb.e ], [ 0, %.preheader.i.i ]
  %.sroa.0.259.i.i = phi i32 [ %i.aq, %bb.e ], [ %i.n, %.preheader.i.i ] ; 2 uses
  %i.ah = lshr i32 %.sroa.0.259.i.i, 10
  %i.ai = lshr i32 %.sroa.0.259.i.i, 6
  %i.aj = and i32 %i.ai, 8
  %i.ak = shl nuw nsw i32 %i.ah, %i.aj
  %i.al = zext i8 %i.ag to i32                    ; 2 uses
  %i.am = xor i32 %i.ak, %i.al
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = xor i64 %.261.i.i, %i.an                ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !128 ; 3 uses
  %i.ar = and i32 %i.aq, -2147483393
  %.not33.i.i = icmp eq i32 %i.ar, %i.al
  br i1 %.not33.i.i, label %bb.e, label %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit.thread

.loopexit.i.i:                                    ; preds = %bb.d, %bb.e, %.preheader.i.i
  %.sroa.0.3.i.i = phi i32 [ %i.aq, %bb.e ], [ %i.n, %.preheader.i.i ], [ %i.ab, %bb.d ] ; 3 uses
  %.3.i.i = phi i64 [ %i.ao, %bb.e ], [ 0, %.preheader.i.i ], [ %i.z, %bb.d ]
  %i.as = and i32 %.sroa.0.3.i.i, 256
  %.not47.i.i = icmp eq i32 %i.as, 0
  br i1 %.not47.i.i, label %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit.thread, label %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit

_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit: ; preds = %.loopexit.i.i
  %i.at = lshr i32 %.sroa.0.3.i.i, 10
  %i.au = lshr i32 %.sroa.0.3.i.i, 6
  %i.av = and i32 %i.au, 8
  %i.aw = shl nuw nsw i32 %i.at, %i.av
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = xor i64 %.3.i.i, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !128
  %i.bb = and i32 %i.ba, 2147483647
  br label %bb.f

_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit.thread: ; preds = %.preheader48.i.i, %.lr.ph.i.i, %.loopexit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !202
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit, %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit.thread, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.bd, %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit.thread ], [ %i.bb, %_ZNK5Darts15DoubleArrayImplIvvivE16exactMatchSearchIiEEvPKcRT_mm.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN13sentencepiece7unigram5Model9BuildTrieEPSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::Status", align 8 ; 4 uses
  %3 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %5 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = load ptr, ptr %0, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.d = load i64, ptr %2, align 8, !tbaa !203    ; 3 uses
  %i.e = icmp eq i64 %i.d, 1
  %i.f = trunc i64 %i.d to i1
  br i1 %i.f, label %_ZN4absl12lts_202605266StatusD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.d to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #36
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %i.e, label %bb.d, label %bb.ay

bb.d:                                             ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit
  %i.j = load ptr, ptr %1, align 8, !tbaa !205    ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !205  ; 4 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.e, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN4absl12lts_2026052615status_internal13MakeErrorImplILi13EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %3, i64 21, ptr nonnull @.str.13, i64 643, ptr nonnull @.str.1)
  %i.n = load i64, ptr %3, align 8, !tbaa !203, !alias.scope !437 ; 4 uses
  %i.o = icmp ne i64 %i.n, 1
  call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !203  ; 3 uses
  %.not.i = icmp eq i64 %i.n, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_202605266StatusaSEOS1_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.n, ptr %i.p, align 8, !tbaa !203
  store i64 55, ptr %3, align 8, !tbaa !203
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %_ZN4absl12lts_202605266StatusD2Ev.exit47, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = inttoptr i64 %i.q to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge unwind label %bb.h

._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge: ; preds = %bb.g
  %.pre226 = load i64, ptr %3, align 8, !tbaa !203
  br label %_ZN4absl12lts_202605266StatusaSEOS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #36
  unreachable

_ZN4absl12lts_202605266StatusaSEOS1_.exit:        ; preds = %._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge, %bb.e
  %i.v = phi i64 [ %.pre226, %._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge ], [ %i.n, %bb.e ] ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZN4absl12lts_202605266StatusD2Ev.exit47, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_202605266StatusaSEOS1_.exit
  %i.x = inttoptr i64 %i.v to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.x)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit47 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #36
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit47:         ; preds = %bb.f, %_ZN4absl12lts_202605266StatusaSEOS1_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.ay

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit: ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.l to i64
  %i.ab = ptrtoint ptr %i.j to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = shl nuw nsw i64 %i.ae, 1
  %i.ag = xor i64 %i.af, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %i.j, ptr %i.l, i64 noundef %i.ag)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %i.j, ptr %i.l)
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !207 ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !208   ; 5 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = sdiv exact i64 %i.al, 24                ; 10 uses
  %6 = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %6, label %.noexc, label %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #33
  unreachable

_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.noexc48

.noexc48:                                         ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  %i.ao = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #32 ; 9 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 3 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !71
  %i.aq = getelementptr i8, ptr %i.ao, i64 8      ; 3 uses
  %i.ar = add nsw i64 %i.am, -1                   ; 4 uses
  %i.as = icmp eq i64 %i.ar, 0                    ; 3 uses
  br i1 %i.as, label %bb.k, label %_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc48
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ar, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !71
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.k

bb.k:                                             ; preds = %.noexc48, %_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.aq, %.noexc48 ], [ %i.at, %_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #32
          to label %.noexc53 unwind label %_ZNSt6vectorImSaImEED2Ev.exit84.thread ; 8 uses

.noexc53:                                         ; preds = %bb.k
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.am ; 2 uses
  store i64 0, ptr %i.au, align 8, !tbaa !79
  br i1 %i.as, label %bb.l, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc53
  %i.aw = getelementptr i8, ptr %i.au, i64 8
  %.idx.i.i.i.i.i.i.i50 = shl nuw nsw i64 %i.ar, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %.idx.i.i.i.i.i.i.i50, i1 false), !tbaa !79
  br label %bb.l

bb.l:                                             ; preds = %.noexc53, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.ax = shl nuw nsw i64 %i.am, 2
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #32
          to label %.noexc58 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit82.thread ; 7 uses

.noexc58:                                         ; preds = %bb.l
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.am
  store i32 0, ptr %i.ay, align 4, !tbaa !128
  br i1 %i.as, label %.lr.ph.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc58
  %xtraiter = and i64 %i.am, 1
  %i.ba = icmp eq i64 %i.al, 24
  br i1 %i.ba, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, 1152921504606846974
  br label %.lr.ph

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc58
  %i.bb = getelementptr i8, ptr %i.ay, i64 4
  %.idx.i.i.i.i.i.i.i55 = shl nuw nsw i64 %i.ar, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bb, i8 0, i64 %.idx.i.i.i.i.i.i.i55, i1 false), !tbaa !128
  br label %.lr.ph.preheader

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.038215.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cj, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod293 = trunc i64 %i.am to i1
  call void @llvm.assume(i1 %lcmp.mod293)
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.038215.epil.init ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !70
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.038215.epil.init
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !71
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !69
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.038215.epil.init
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !79
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !210
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.038215.epil.init
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !128
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %i.bl = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.bm = ptrtoint ptr %i.az to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sroa.11107.0284 = phi i64 [ 0, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.bm, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0103.0280 = phi ptr [ null, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.ay, %._crit_edge.loopexit ] ; 6 uses
  %.0.i.i.i.i.i146153278 = phi i64 [ 0, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.bl, %._crit_edge.loopexit ]
  %.sroa.0118.0143155273 = phi ptr [ null, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.ao, %._crit_edge.loopexit ] ; 5 uses
  %.sroa.13.0135157268 = phi ptr [ null, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.ap, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.11115.0163263 = phi ptr [ null, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.av, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0110.0170258 = phi ptr [ null, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.au, %._crit_edge.loopexit ] ; 5 uses
  %i.bn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32
          to label %bb.m unwind label %bb.v       ; 4 uses

_ZNSt6vectorImSaImEED2Ev.exit84.thread:           ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_ZNSt6vectorIiSaIiEED2Ev.exit82.thread:           ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.038215 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cj, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.038215 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !70
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.038215
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !71
  %i.bu = load i64, ptr %i.bq, align 8, !tbaa !69
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.038215
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !79
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !210
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.038215
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !128
  %i.bz = or disjoint i64 %.038215, 1             ; 4 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !70
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bz
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !71
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !69
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bz
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !79
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !210
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bz
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !128
  %i.cj = add nuw i64 %.038215, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !425

bb.m:                                             ; preds = %._crit_edge
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Darts15DoubleArrayImplIvvivEE, i64 16), ptr %i.bn, align 8, !tbaa !35, !noalias !438
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false), !noalias !438
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !174 ; 3 uses
  store ptr %i.bn, ptr %i.cl, align 8, !tbaa !174
  %.not.i.i.i.i60 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i60, label %_ZNSt10unique_ptrIN5Darts15DoubleArrayImplIvvivEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5Darts15DoubleArrayImplIvvivEEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN5Darts15DoubleArrayImplIvvivEEEclEPS2_.exit.i.i.i.i: ; preds = %bb.m
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !35
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %i.cm) #31, !inline_history !428
  %.pre = load ptr, ptr %i.cl, align 8, !tbaa !174
  br label %_ZNSt10unique_ptrIN5Darts15DoubleArrayImplIvvivEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5Darts15DoubleArrayImplIvvivEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5Darts15DoubleArrayImplIvvivEEEclEPS2_.exit.i.i.i.i, %bb.m
  %i.cq = phi ptr [ %.pre, %_ZNKSt14default_deleteIN5Darts15DoubleArrayImplIvvivEEEclEPS2_.exit.i.i.i.i ], [ %i.bn, %bb.m ]
  %i.cr = ptrtoint ptr %.sroa.0118.0143155273 to i64 ; 2 uses
  %i.cs = sub i64 %.0.i.i.i.i.i146153278, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3
  %i.cu = invoke noundef i32 @_ZN5Darts15DoubleArrayImplIvvivE5buildEmPKPKcPKmPKiPFimmE(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, i64 noundef %i.ct, ptr noundef nonnull %.sroa.0118.0143155273, ptr noundef nonnull %.sroa.0110.0170258, ptr noundef nonnull %.sroa.0103.0280, ptr noundef null)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN5Darts15DoubleArrayImplIvvivEESt14default_deleteIS2_EED2Ev.exit
  %.not = icmp eq i32 %i.cu, 0
  br i1 %.not, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZN4absl12lts_2026052615status_internal13MakeErrorImplILi13EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %4, i64 26, ptr nonnull @.str.14, i64 664, ptr nonnull @.str.1)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.cv = load i64, ptr %4, align 8, !tbaa !203, !alias.scope !439 ; 4 uses
  %i.cw = icmp ne i64 %i.cv, 1
  call void @llvm.assume(i1 %i.cw)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !203 ; 3 uses
  %.not.i63 = icmp eq i64 %i.cv, %i.cy
  br i1 %.not.i63, label %_ZN4absl12lts_202605266StatusaSEOS1_.exit64, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %i.cv, ptr %i.cx, align 8, !tbaa !203
  store i64 55, ptr %4, align 8, !tbaa !203
  %i.cz = trunc i64 %i.cy to i1
  br i1 %i.cz, label %_ZN4absl12lts_202605266StatusD2Ev.exit65, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = inttoptr i64 %i.cy to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.da)
          to label %._ZN4absl12lts_202605266StatusaSEOS1_.exit64_crit_edge unwind label %bb.s

._ZN4absl12lts_202605266StatusaSEOS1_.exit64_crit_edge: ; preds = %bb.r
  %.pre223 = load i64, ptr %4, align 8, !tbaa !203
  br label %_ZN4absl12lts_202605266StatusaSEOS1_.exit64

bb.s:                                             ; preds = %bb.r
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #36
  unreachable

_ZN4absl12lts_202605266StatusaSEOS1_.exit64:      ; preds = %._ZN4absl12lts_202605266StatusaSEOS1_.exit64_crit_edge, %bb.p
  %i.dd = phi i64 [ %.pre223, %._ZN4absl12lts_202605266StatusaSEOS1_.exit64_crit_edge ], [ %i.cv, %bb.p ] ; 2 uses
  %i.de = trunc i64 %i.dd to i1
  br i1 %i.de, label %_ZN4absl12lts_202605266StatusD2Ev.exit65, label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_202605266StatusaSEOS1_.exit64
  %i.df = inttoptr i64 %i.dd to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.df)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit65 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #36
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit65:         ; preds = %bb.q, %_ZN4absl12lts_202605266StatusaSEOS1_.exit64, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit

bb.v:                                             ; preds = %._crit_edge
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN5Darts15DoubleArrayImplIvvivEESt14default_deleteIS2_EED2Ev.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.x:                                             ; preds = %bb.o
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.thread

bb.y:                                             ; preds = %bb.n
  %i.dl = invoke noalias noundef nonnull dereferenceable(16384) ptr @_Znwm(i64 noundef 16384) #32
          to label %.noexc67 unwind label %bb.ad  ; 11 uses

.noexc67:                                         ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZNK13sentencepiece7unigram5Model11NBestEncodeESt17basic_string_viewIcSt11char_traitsIcEEi:bb.a
  %i.az = load ptr, ptr %0, align 8, !tbaa !237   ; 3 uses
  %.not.i.i5.i48 = icmp eq ptr %i.az, null
  br i1 %.not.i.i5.i48, label %.body51, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !238
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #30
  br label %.body51

bb.o:                                             ; preds = %_ZNSt12_Vector_baseISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfESaIS9_EE11_M_allocateEm.exit.i.i50
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.bf, align 8, !tbaa !239
  %i.bg = load ptr, ptr %7, align 16, !tbaa !208  ; 3 uses
  %.not.i.i.i.i54 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i54, label %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfED2Ev.exit55, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !234
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #30
  br label %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfED2Ev.exit55

_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfED2Ev.exit55: ; preds = %bb.o, %bb.p
  %i.bm = load ptr, ptr %8, align 16, !tbaa !208  ; 3 uses
  %.not.i.i.i56 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit57, label %bb.q

bb.q:                                             ; preds = %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfED2Ev.exit55
  %i.bn = load ptr, ptr %i.aq, align 16, !tbaa !234
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #30
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit57

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit57: ; preds = %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfED2Ev.exit55, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ap

bb.r:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit61

.body51:                                          ; preds = %bb.m, %bb.n
  %i.bs = load ptr, ptr %7, align 16, !tbaa !208  ; 3 uses
  %.not.i.i.i.i58 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i58, label %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfED2Ev.exit59, label %bb.s

bb.s:                                             ; preds = %.body51
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !234
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #30
  br label %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfED2Ev.exit59

_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfED2Ev.exit59: ; preds = %.body51, %bb.s
  %i.by = load ptr, ptr %8, align 16, !tbaa !208  ; 3 uses
  %.not.i.i.i60 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit61, label %bb.t

bb.t:                                             ; preds = %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfED2Ev.exit59
  %i.bz = load ptr, ptr %i.aq, align 16, !tbaa !234
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cc) #30
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit61

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit61: ; preds = %bb.t, %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfED2Ev.exit59, %bb.r
  %.pn36 = phi { ptr, i32 } [ %i.br, %bb.r ], [ %i.ay, %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfED2Ev.exit59 ], [ %i.ay, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.aq

bb.u:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @_ZN13sentencepiece7unigram7LatticeC1Ev(ptr noundef nonnull align 8 dereferenceable(152) %9)
  invoke void @_ZN13sentencepiece7unigram7Lattice11SetSentenceESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(152) %9, i64 %2, ptr %3)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNK13sentencepiece7unigram5Model13PopulateNodesEPNS0_7LatticeE(ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull %9)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.cd = zext nneg i32 %i.aj to i64
  invoke void @_ZN13sentencepiece7unigram7Lattice5NBestEmbf(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.23") align 8 %10, ptr noundef nonnull align 8 dereferenceable(152) %9, i64 noundef %i.cd, i1 noundef zeroext false, float noundef 0.000000e+00)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ce = load ptr, ptr %10, align 8, !tbaa !120  ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !120 ; 2 uses
  %.not114 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not114, label %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ac

._crit_edge118:                                   ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit73
  %.pre120 = load ptr, ptr %10, align 8, !tbaa !102 ; 4 uses
  %.pre121 = load ptr, ptr %i.cf, align 8, !tbaa !104 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre120, %.pre121
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge118, %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cr, %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i ], [ %.pre120, %._crit_edge118 ] ; 3 uses
  %i.cl = load ptr, ptr %.05.i.i.i, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !53
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #30
  br label %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i: ; preds = %bb.y, %.lr.ph.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.cr, %.pre121
  br i1 %.not.i.i.i62, label %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i, %bb.x, %._crit_edge118
  %.pr.i152 = phi ptr [ %i.ce, %bb.x ], [ %.pre120, %._crit_edge118 ], [ %.pre120, %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %.pr.i152, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !103
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %.pr.i152 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i152, i64 noundef %i.cw) #30
  br label %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EED2Ev.exit

_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @_ZN13sentencepiece7unigram7LatticeD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.ap

bb.aa:                                            ; preds = %bb.v, %bb.u
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ab:                                            ; preds = %bb.w
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ac:                                            ; preds = %.lr.ph117, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit73
  %.sroa.080.0115 = phi ptr [ %i.ce, %.lr.ph117 ], [ %i.fg, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit73 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.cz = load ptr, ptr %.sroa.080.0115, align 8, !tbaa !85 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.080.0115, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !85 ; 2 uses
  %.not105112 = icmp eq ptr %i.cz, %i.db
  br i1 %.not105112, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit, %bb.ac
  %i.dc = phi ptr [ null, %bb.ac ], [ %i.ez, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.080.0115, i64 24 ; 2 uses
  %i.de = load ptr, ptr %i.cj, align 8, !tbaa !239 ; 7 uses
  %i.df = load ptr, ptr %i.ck, align 8, !tbaa !238
  %.not.i = icmp eq ptr %i.de, %i.df
  br i1 %.not.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.dg = load ptr, ptr %11, align 8, !tbaa !208  ; 2 uses
  %i.dh = ptrtoint ptr %i.dc to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.de, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i63 = icmp eq ptr %i.dc, %i.dg
  br i1 %.not.i.i.i.i.i.i63, label %.noexc65, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %12 = sdiv exact i64 %i.dj, 24
  %i.dk = icmp ugt i64 %12, 384307168202282325
  br i1 %i.dk, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !88

.noexc.i.i.i.i:                                   ; preds = %bb.ae
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc64 unwind label %.loopexit.split-lp107

.noexc64:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.ae
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #32
          to label %.noexc65 unwind label %.loopexit106

.noexc65:                                         ; preds = %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.ad
  %i.dm = phi ptr [ null, %bb.ad ], [ %i.dl, %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.dm, ptr %i.de, align 8, !tbaa !208
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !207
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !234
  %i.dq = load ptr, ptr %11, align 8, !tbaa !205  ; 3 uses
  %i.dr = load ptr, ptr %i.ch, align 8, !tbaa !205 ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.dq, %i.dr
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_RKfTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc65, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dm, %.noexc65 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dq, %.noexc65 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ds, %i.dr
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_RKfTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !11

_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_RKfTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc65
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dm, %.noexc65 ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.dn, align 8, !tbaa !207
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dv = load float, ptr %i.dd, align 8, !tbaa !98
  store float %i.dv, ptr %i.du, align 8, !tbaa !244
  %i.dw = load ptr, ptr %i.cj, align 8, !tbaa !239
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store ptr %i.dx, ptr %i.cj, align 8, !tbaa !239
  br label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_RKfEEERS8_DpOT_.exit

bb.af:                                            ; preds = %._crit_edge
  invoke void @_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE17_M_realloc_insertIJRS7_RKfEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.de, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.dd)
          to label %._ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_RKfEEERS8_DpOT_.exit_crit_edge unwind label %.loopexit106

._ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_RKfEEERS8_DpOT_.exit_crit_edge: ; preds = %bb.af
  %.pre = load ptr, ptr %11, align 8, !tbaa !208
  br label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_RKfEEERS8_DpOT_.exit

.lr.ph:                                           ; preds = %bb.ac, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit
  %i.dy = phi ptr [ %i.ez, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit ], [ null, %bb.ac ] ; 6 uses
  %.sroa.076.0113 = phi ptr [ %i.fa, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit ], [ %i.cz, %bb.ac ] ; 2 uses
  %i.dz = load ptr, ptr %.sroa.076.0113, align 8, !tbaa !59 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 28 ; 2 uses
  %i.eb = load ptr, ptr %i.ci, align 8, !tbaa !234
  %.not.i67 = icmp eq ptr %i.dy, %i.eb
  br i1 %.not.i67, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !233
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ed = load i32, ptr %i.ea, align 4, !tbaa !128
  store i32 %i.ed, ptr %i.ec, align 8, !tbaa !210
  %i.ee = load ptr, ptr %i.ch, align 8, !tbaa !207
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24 ; 2 uses
  store ptr %i.ef, ptr %i.ch, align 8, !tbaa !207
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit

bb.ah:                                            ; preds = %.lr.ph
  %i.eg = load ptr, ptr %11, align 8, !tbaa !208  ; 5 uses
  %i.eh = ptrtoint ptr %i.dy to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei                    ; 4 uses
  %i.ek = icmp eq i64 %i.ej, 9223372036854775800
  br i1 %i.ek, label %bb.ai, label %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #33
          to label %.noexc70 unwind label %.loopexit.split-lp

.noexc70:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ah
  %i.el = sdiv exact i64 %i.ej, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.el, i64 1)
  %i.em = add nsw i64 %.sroa.speculated.i.i.i, %i.el ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.el
  %i.eo = call i64 @llvm.umin.i64(i64 %i.em, i64 384307168202282325)
  %i.ep = select i1 %i.en, i64 384307168202282325, i64 %i.eo ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.ep, 0
  call void @llvm.assume(i1 %.not.i.i.i68)
  %i.eq = mul nuw nsw i64 %i.ep, 24
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #32
          to label %.noexc71 unwind label %.loopexit ; 5 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ej ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !233
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load i32, ptr %i.ea, align 4, !tbaa !128
  store i32 %i.eu, ptr %i.et, align 8, !tbaa !210
  %.not10.i.i.i.i.i = icmp eq ptr %i.eg, %i.dy
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc71, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i ], [ %i.er, %.noexc71 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i ], [ %i.eg, %.noexc71 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !474
  %i.ev = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i69 = icmp eq ptr %i.ev, %i.dy
  br i1 %.not.i.i.i.i.i69, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc71
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.er, %.noexc71 ], [ %i.ew, %.lr.ph.i.i.i.i.i ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ej) #30
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i
  store ptr %i.er, ptr %11, align 8, !tbaa !208
  store ptr %i.ex, ptr %i.ch, align 8, !tbaa !207
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.ep
  store ptr %i.ey, ptr %i.ci, align 8, !tbaa !234
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.ag
  %i.ez = phi ptr [ %i.ex, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.ef, %bb.ag ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.076.0113, i64 8 ; 2 uses
  %.not105 = icmp eq ptr %i.fa, %i.db
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_RKfEEERS8_DpOT_.exit: ; preds = %._ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_RKfEEERS8_DpOT_.exit_crit_edge, %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_RKfTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i
  %i.fb = phi ptr [ %.pre, %._ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_RKfEEERS8_DpOT_.exit_crit_edge ], [ %i.dq, %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_RKfTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit.i ] ; 3 uses
  %.not.i.i.i72 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i72, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit73, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_RKfEEERS8_DpOT_.exit
  %i.fc = load ptr, ptr %i.ci, align 8, !tbaa !234
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fb to i64
  %i.ff = sub i64 %i.fd, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.ff) #30
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit73

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit73: ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_RKfEEERS8_DpOT_.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.080.0115, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.fg, %i.cg
  br i1 %.not, label %._crit_edge118, label %bb.ac

.loopexit106:                                     ; preds = %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.af
  %lpad.loopexit108 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp107:                            ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit106, %.loopexit.split-lp107, %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit108, %.loopexit106 ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp107 ]
  %i.fh = load ptr, ptr %11, align 8, !tbaa !208  ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit75, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fi = load ptr, ptr %i.ci, align 8, !tbaa !234
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fl) #30
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit75

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit75: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.an
end_hunk_1
begin_hunk_2_@_ZNK13sentencepiece7unigram5Model12SampleEncodeESt17basic_string_viewIcSt11char_traitsIcEEf:bb.a

; Function Attrs: mustprogress uwtable
define void @_ZNK13sentencepiece7unigram5Model20SampleEncodeAndScoreESt17basic_string_viewIcSt11char_traitsIcEEfibb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.104") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i64 %2, ptr %3, float noundef %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.absl::lts_20260526::Status", align 8 ; 5 uses
  %9 = alloca %"class.std::vector.104", align 16  ; 29 uses
  %10 = alloca %"class.sentencepiece::unigram::Lattice", align 8 ; 15 uses
  %11 = alloca %"class.std::vector.17", align 8   ; 9 uses
  %12 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 8 uses
  %13 = alloca %"class.std::vector.85", align 8   ; 16 uses
  %14 = alloca %"struct.std::pair", align 8       ; 8 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %15 = alloca %"class.std::vector.23", align 8   ; 17 uses
  %16 = alloca %"class.std::vector.0", align 8    ; 8 uses
  %17 = alloca %"struct.std::pair", align 8       ; 9 uses
  %18 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 8 uses
  %19 = alloca %"class.std::vector.85", align 8   ; 13 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %20 = alloca %"class.sentencepiece::unigram::Lattice", align 8 ; 9 uses
  %21 = alloca %"class.std::vector.85", align 8   ; 13 uses
  %22 = alloca %"class.std::vector.10", align 8   ; 7 uses
  %i.c = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.d = load ptr, ptr %1, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.g = load i64, ptr %8, align 8, !tbaa !203    ; 3 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %_ZN4absl12lts_202605266StatusD2Ev.exit, label %.critedge

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %bb.a
  %i.i = icmp eq i64 %2, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br i1 %i.i, label %bb.d, label %bb.e

.critedge:                                        ; preds = %bb.a
  %i.j = trunc i64 %i.g to i1
  br i1 %i.j, label %_ZN4absl12lts_202605266StatusD2Ev.exit116, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.k = inttoptr i64 %i.g to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit116 unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #36
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit116:        ; preds = %.critedge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit116, %_ZN4absl12lts_202605266StatusD2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.do

bb.e:                                             ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  invoke void @_ZN13sentencepiece7unigram7LatticeC1Ev(ptr noundef nonnull align 8 dereferenceable(152) %10)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN13sentencepiece7unigram7Lattice11SetSentenceESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(152) %10, i64 %2, ptr %3)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK13sentencepiece7unigram5Model13PopulateNodesEPNS0_7LatticeE(ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull %10)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  invoke void @_ZNK13sentencepiece7unigram7Lattice16ForwardAlgorithmEf(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.17") align 8 %11, ptr noundef nonnull align 8 dereferenceable(152) %10, float noundef %4)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 3
  %i.w = trunc i64 %i.v to i32
  %i.x = add i32 %i.w, -1
  %.sroa.speculated.i.i = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.x, i32 0)
  %i.y = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !76
  %i.af = zext i32 %i.ae to i64
  %i.ag = load ptr, ptr %11, align 8, !tbaa !96
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !98 ; 2 uses
  br i1 %7, label %bb.j, label %bb.aj

bb.j:                                             ; preds = %bb.i
  br i1 %6, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str.1, i32 noundef 776) #34
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 40, ptr nonnull @.str.17)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit unwind label %bb.q

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit: ; preds = %bb.l
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.q

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %.sink.split

bb.m:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.n:                                             ; preds = %bb.g, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.o:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit232

bb.p:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit, %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #35
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.an, %bb.q ], [ %i.am, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.dk

bb.s:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  invoke void @_ZN13sentencepiece7unigram7Lattice7ViterbiEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %14, ptr noundef nonnull align 8 dereferenceable(152) %10)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ao = load ptr, ptr %14, align 8, !tbaa !85   ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !85 ; 2 uses
  %.not263303 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not263303, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !207
  br label %bb.y

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !122
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !239 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !238
  %.not.i = icmp eq ptr %i.au, %i.aw
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !207 ; 2 uses
  %i.az = load ptr, ptr %13, align 8, !tbaa !208  ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i.i.i, label %.noexc117, label %bb.v

bb.v:                                             ; preds = %bb.u
  %23 = sdiv exact i64 %i.bc, 24
  %i.bd = icmp ugt i64 %23, 384307168202282325
  br i1 %i.bd, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !88

.noexc.i.i.i.i:                                   ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #32
          to label %.noexc117 unwind label %bb.af

.noexc117:                                        ; preds = %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.u
  %i.bf = phi ptr [ null, %bb.u ], [ %i.be, %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.bf, ptr %i.au, align 8, !tbaa !208
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !207
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !234
  %i.bj = load ptr, ptr %13, align 8, !tbaa !205  ; 2 uses
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !205 ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_dTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc117, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bf, %.noexc117 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bj, %.noexc117 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bk
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_dTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !11

_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_dTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc117
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.noexc117 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.bg, align 8, !tbaa !207
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store float 0.000000e+00, ptr %i.bn, align 8, !tbaa !244
  %i.bo = load ptr, ptr %i.at, align 8, !tbaa !239
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.bp, ptr %i.at, align 8, !tbaa !239
  br label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_dEEERS8_DpOT_.exit

bb.w:                                             ; preds = %._crit_edge
  invoke void @_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE17_M_realloc_insertIJRS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.au, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_dEEERS8_DpOT_.exit unwind label %bb.af

bb.x:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit124

bb.y:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit
  %i.br = phi ptr [ %.pre, %.lr.ph ], [ %i.cs, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit ] ; 6 uses
  %.sroa.0256.0304 = phi ptr [ %i.ao, %.lr.ph ], [ %i.ct, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit ] ; 2 uses
  %i.bs = load ptr, ptr %.sroa.0256.0304, align 8, !tbaa !59 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 28 ; 2 uses
  %i.bu = load ptr, ptr %i.as, align 8, !tbaa !234
  %.not.i119 = icmp eq ptr %i.br, %i.bu
  br i1 %.not.i119, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !233
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !128
  store i32 %i.bw, ptr %i.bv, align 8, !tbaa !210
  %i.bx = load ptr, ptr %i.ar, align 8, !tbaa !207
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  store ptr %i.by, ptr %i.ar, align 8, !tbaa !207
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load ptr, ptr %13, align 8, !tbaa !208  ; 5 uses
  %i.ca = ptrtoint ptr %i.br to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 4 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.ab, label %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #33
          to label %.noexc120 unwind label %.loopexit.split-lp286

.noexc120:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %i.ce = sdiv exact i64 %i.cc, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 384307168202282325)
  %i.ci = select i1 %i.cg, i64 384307168202282325, i64 %i.ch ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cj = mul nuw nsw i64 %i.ci, 24
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #32
          to label %.noexc121 unwind label %.loopexit285 ; 5 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !233
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i32, ptr %i.bt, align 4, !tbaa !128
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !210
  %.not10.i.i.i.i.i = icmp eq ptr %i.bz, %i.br
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc121, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i ], [ %i.ck, %.noexc121 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i ], [ %i.bz, %.noexc121 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !490
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.co, %i.br
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc121
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ck, %.noexc121 ], [ %i.cp, %.lr.ph.i.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cc) #30
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i
  store ptr %i.ck, ptr %13, align 8, !tbaa !208
  store ptr %i.cq, ptr %i.ar, align 8, !tbaa !207
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.cr, ptr %i.as, align 8, !tbaa !234
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.z
  %i.cs = phi ptr [ %i.cq, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.by, %bb.z ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0256.0304, i64 8 ; 2 uses
  %.not263 = icmp eq ptr %i.ct, %i.aq
  br i1 %.not263, label %._crit_edge, label %bb.y

.loopexit285:                                     ; preds = %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit287 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp286:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp288 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_dEEERS8_DpOT_.exit: ; preds = %bb.w, %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_dTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_dEEERS8_DpOT_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !53
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ao to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.cy) #30
  br label %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit

_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_dEEERS8_DpOT_.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  %i.cz = load ptr, ptr %13, align 8, !tbaa !208  ; 3 uses
  %.not.i.i.i122 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i122, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !234
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #30
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit: ; preds = %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.aj

bb.af:                                            ; preds = %bb.w, %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit285, %.loopexit.split-lp286, %bb.af
  %.pn108 = phi { ptr, i32 } [ %i.df, %bb.af ], [ %lpad.loopexit287, %.loopexit285 ], [ %lpad.loopexit.split-lp288, %.loopexit.split-lp286 ] ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i123, label %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit124, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !53
  %i.di = ptrtoint ptr %i.dh to i64
end_hunk_2
begin_hunk_3_@_ZNK13sentencepiece7unigram5Model20SampleEncodeAndScoreESt17basic_string_viewIcSt11char_traitsIcEEfibb:bb.a
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn96 = phi { ptr, i32 } [ %i.gd, %bb.ay ], [ %i.gc, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %bb.bg

bb.ba:                                            ; preds = %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit134
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bb:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EES2_IS9_SaIS9_EEEES9_ET_SE_SE_RKT0_.exit
  %i.gf = getelementptr inbounds i8, ptr %i.fr, i64 -32 ; 2 uses
  store ptr %i.gf, ptr %i.eh, align 8, !tbaa !104
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i.i135 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i.i135, label %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE8pop_backEv.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gh = getelementptr inbounds i8, ptr %i.fr, i64 -16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !53
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gl) #30
  br label %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE8pop_backEv.exit

_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE8pop_backEv.exit: ; preds = %bb.bc, %bb.bb, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit134
  %i.gm = load ptr, ptr %17, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i136 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i136, label %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit137, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE8pop_backEv.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !53
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gm to i64
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.gr) #30
  br label %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit137

_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit137: ; preds = %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE8pop_backEv.exit, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  %.not4.i.i.i = icmp eq ptr %.pr.i433, %i.eu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit137, %_ZSt8_DestroyISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gy, %_ZSt8_DestroyISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEEvPT_.exit.i.i.i ], [ %.pr.i433, %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit137 ] ; 3 uses
  %i.gs = load ptr, ptr %.05.i.i.i, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i.i.i.i138 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i.i.i.i.i138, label %_ZSt8_DestroyISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEEvPT_.exit.i.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !53
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gs to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gx) #30
  br label %_ZSt8_DestroyISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEEvPT_.exit.i.i.i: ; preds = %bb.be, %.lr.ph.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i139 = icmp eq ptr %i.gy, %i.eu
  br i1 %.not.i.i.i139, label %_ZSt8_DestroyIPSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEEvPT_.exit.i.i.i, %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit137
  %.not.i.i1.i = icmp eq ptr %.pr.i433, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.gz = sub i64 %i.ev, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i433, i64 noundef %i.gz) #30
  br label %_ZNSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EED2Ev.exit

_ZNSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  %.pre345 = load ptr, ptr %15, align 8, !tbaa !120
  br label %bb.bk

bb.bg:                                            ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn98 = phi { ptr, i32 } [ %i.ge, %bb.ba ], [ %.pn96, %bb.az ], [ %i.gb, %bb.aw ] ; 2 uses
  %i.ha = load ptr, ptr %17, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i140 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i140, label %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit141, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hb = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !53
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #30
  br label %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit141

_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit141: ; preds = %bb.bh, %bb.bg, %bb.av
  %.pn98.pn = phi { ptr, i32 } [ %i.ga, %bb.av ], [ %.pn98, %bb.bg ], [ %.pn98, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit141, %bb.ar
  %.pn103 = phi { ptr, i32 } [ %i.fk, %bb.ar ], [ %.pn98.pn, %_ZNSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfED2Ev.exit141 ]
  call void @_ZNSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #31
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.ap
  %.pn103.pn = phi { ptr, i32 } [ %.pn103, %bb.bi ], [ %i.ex, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.ch

bb.bk:                                            ; preds = %_ZNSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EED2Ev.exit, %bb.al
  %i.hg = phi ptr [ %.pre345, %_ZNSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EED2Ev.exit ], [ %.pre346, %bb.al ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !120 ; 4 uses
  %i.hj = icmp eq ptr %i.hg, %i.hi                ; 2 uses
  br i1 %i.hj, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hk = load <2 x ptr>, ptr %9, align 16, !tbaa !491
  store <2 x ptr> %i.hk, ptr %0, align 8, !tbaa !491
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hn = load ptr, ptr %i.hm, align 16, !tbaa !238
  store ptr %i.hn, ptr %i.hl, align 8, !tbaa !238
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.bm:                                            ; preds = %bb.bk
  %i.ho = getelementptr inbounds i8, ptr %i.hi, i64 -32 ; 3 uses
  %i.hp = getelementptr inbounds i8, ptr %i.hi, i64 -8
  %i.hq = load float, ptr %i.hp, align 8, !tbaa !93
  %i.hr = fpext float %i.hq to double
  store ptr %i.ho, ptr %i.hh, align 8, !tbaa !104
  %i.hs = load ptr, ptr %i.ho, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i.i142 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i.i142, label %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE8pop_backEv.exit143, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ht = getelementptr inbounds i8, ptr %i.hi, i64 -16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !53
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = ptrtoint ptr %i.hs to i64
  %i.hx = sub i64 %i.hv, %i.hw
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %i.hx) #30
  %.pre347 = load ptr, ptr %15, align 8, !tbaa !120
  %.pre348 = load ptr, ptr %i.hh, align 8, !tbaa !120
  br label %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE8pop_backEv.exit143

_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE8pop_backEv.exit143: ; preds = %bb.bm, %bb.bn
  %i.hy = phi ptr [ %i.ho, %bb.bm ], [ %.pre348, %bb.bn ] ; 2 uses
  %i.hz = phi ptr [ %i.hg, %bb.bm ], [ %.pre347, %bb.bn ] ; 2 uses
  %.not265323 = icmp eq ptr %i.hz, %i.hy
  br i1 %.not265323, label %._crit_edge326, label %.lr.ph325

.lr.ph325:                                        ; preds = %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE8pop_backEv.exit143
  %i.ia = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.bo

._crit_edge326:                                   ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit175, %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EE8pop_backEv.exit143
  %i.ie = load ptr, ptr %9, align 16, !tbaa !491  ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !491 ; 2 uses
  %.not266327 = icmp eq ptr %i.ie, %i.ig
  br i1 %.not266327, label %.loopexit, label %.lr.ph330

bb.bo:                                            ; preds = %.lr.ph325, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit175
  %.sroa.0245.0324 = phi ptr [ %i.hz, %.lr.ph325 ], [ %i.kq, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit175 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.ih = load ptr, ptr %.sroa.0245.0324, align 8, !tbaa !85 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0245.0324, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 2 uses
  %.not267316 = icmp eq ptr %i.ih, %i.ij
  br i1 %.not267316, label %._crit_edge321, label %.lr.ph320

._crit_edge321:                                   ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit173, %bb.bo
  %i.ik = phi ptr [ null, %bb.bo ], [ %i.ki, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit173 ] ; 2 uses
  %.084.lcssa = phi float [ 0.000000e+00, %bb.bo ], [ %i.kj, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit173 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.il = fsub float %.084.lcssa, %i.ai           ; 2 uses
  store float %i.il, ptr %i.b, align 4, !tbaa !98
  %i.im = load ptr, ptr %i.ic, align 8, !tbaa !239 ; 7 uses
  %i.in = load ptr, ptr %i.id, align 16, !tbaa !238
  %.not.i144 = icmp eq ptr %i.im, %i.in
  br i1 %.not.i144, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge321
  %i.io = load ptr, ptr %19, align 8, !tbaa !208  ; 2 uses
  %i.ip = ptrtoint ptr %i.ik to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.im, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i145 = icmp eq ptr %i.ik, %i.io
  br i1 %.not.i.i.i.i.i.i145, label %.noexc156, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %24 = sdiv exact i64 %i.ir, 24
  %i.is = icmp ugt i64 %24, 384307168202282325
  br i1 %i.is, label %.noexc.i.i.i.i153, label %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i146, !prof !88

.noexc.i.i.i.i153:                                ; preds = %bb.bq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc155 unwind label %.loopexit.split-lp270

.noexc155:                                        ; preds = %.noexc.i.i.i.i153
  unreachable

_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i146: ; preds = %bb.bq
  %i.it = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ir) #32
          to label %.noexc156 unwind label %.loopexit269

.noexc156:                                        ; preds = %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i146, %bb.bp
  %i.iu = phi ptr [ null, %bb.bp ], [ %i.it, %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i146 ] ; 5 uses
  store ptr %i.iu, ptr %i.im, align 8, !tbaa !208
  %i.iv = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !207
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.ir
  %i.ix = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store ptr %i.iw, ptr %i.ix, align 8, !tbaa !234
  %i.iy = load ptr, ptr %19, align 8, !tbaa !205  ; 3 uses
  %i.iz = load ptr, ptr %i.ia, align 8, !tbaa !205 ; 2 uses
  %.not7.i.i.i.i.i.i.i147 = icmp eq ptr %i.iy, %i.iz
  br i1 %.not7.i.i.i.i.i.i.i147, label %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_fTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit.i, label %.lr.ph.i.i.i.i.i.i.i148

.lr.ph.i.i.i.i.i.i.i148:                          ; preds = %.noexc156, %.lr.ph.i.i.i.i.i.i.i148
  %.09.i.i.i.i.i.i.i149 = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i.i.i148 ], [ %i.iu, %.noexc156 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i150 = phi ptr [ %i.ja, %.lr.ph.i.i.i.i.i.i.i148 ], [ %i.iy, %.noexc156 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i149, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i150, i64 24, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i150, i64 24 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i149, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i151 = icmp eq ptr %i.ja, %i.iz
  br i1 %.not.i.i.i.i.i.i.i151, label %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_fTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit.i, label %.lr.ph.i.i.i.i.i.i.i148, !llvm.loop !11

_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_fTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i148, %.noexc156
  %.0.lcssa.i.i.i.i.i.i.i152 = phi ptr [ %i.iu, %.noexc156 ], [ %i.jb, %.lr.ph.i.i.i.i.i.i.i148 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i152, ptr %i.iv, align 8, !tbaa !207
  %i.jc = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  store float %i.il, ptr %i.jc, align 8, !tbaa !244
  %i.jd = load ptr, ptr %i.ic, align 8, !tbaa !239
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  store ptr %i.je, ptr %i.ic, align 8, !tbaa !239
  br label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_fEEERS8_DpOT_.exit

bb.br:                                            ; preds = %._crit_edge321
  invoke void @_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE17_M_realloc_insertIJRS7_fEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.im, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %._ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_fEEERS8_DpOT_.exit_crit_edge unwind label %.loopexit269

._ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_fEEERS8_DpOT_.exit_crit_edge: ; preds = %bb.br
  %.pre349 = load ptr, ptr %19, align 8, !tbaa !208
  br label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_fEEERS8_DpOT_.exit

.lr.ph320:                                        ; preds = %bb.bo, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit173
  %i.jf = phi ptr [ %i.ki, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit173 ], [ null, %bb.bo ] ; 6 uses
  %.084318 = phi float [ %i.kj, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit173 ], [ 0.000000e+00, %bb.bo ]
  %.sroa.0241.0317 = phi ptr [ %i.kk, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit173 ], [ %i.ih, %bb.bo ] ; 2 uses
  %i.jg = load ptr, ptr %.sroa.0241.0317, align 8, !tbaa !59 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.ji = load float, ptr %i.jh, align 8, !tbaa !86
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 28 ; 2 uses
  %i.jk = load ptr, ptr %i.ib, align 8, !tbaa !234
  %.not.i158 = icmp eq ptr %i.jf, %i.jk
  br i1 %.not.i158, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jf, ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i64 16, i1 false), !tbaa.struct !233
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jm = load i32, ptr %i.jj, align 4, !tbaa !128
  store i32 %i.jm, ptr %i.jl, align 8, !tbaa !210
  %i.jn = load ptr, ptr %i.ia, align 8, !tbaa !207
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24 ; 2 uses
  store ptr %i.jo, ptr %i.ia, align 8, !tbaa !207
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit173

bb.bt:                                            ; preds = %.lr.ph320
  %i.jp = load ptr, ptr %19, align 8, !tbaa !208  ; 5 uses
  %i.jq = ptrtoint ptr %i.jf to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr                    ; 4 uses
  %i.jt = icmp eq i64 %i.js, 9223372036854775800
  br i1 %i.jt, label %bb.bu, label %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i159

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #33
          to label %.noexc171 unwind label %.loopexit.split-lp

.noexc171:                                        ; preds = %bb.bu
  unreachable

_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i159: ; preds = %bb.bt
  %i.ju = sdiv exact i64 %i.js, 24                ; 3 uses
  %.sroa.speculated.i.i.i160 = call i64 @llvm.umax.i64(i64 %i.ju, i64 1)
  %i.jv = add nsw i64 %.sroa.speculated.i.i.i160, %i.ju ; 2 uses
  %i.jw = icmp ult i64 %i.jv, %i.ju
  %i.jx = call i64 @llvm.umin.i64(i64 %i.jv, i64 384307168202282325)
  %i.jy = select i1 %i.jw, i64 384307168202282325, i64 %i.jx ; 3 uses
  %.not.i.i.i161 = icmp ne i64 %i.jy, 0
  call void @llvm.assume(i1 %.not.i.i.i161)
  %i.jz = mul nuw nsw i64 %i.jy, 24
  %i.ka = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jz) #32
          to label %.noexc172 unwind label %.loopexit268 ; 5 uses

.noexc172:                                        ; preds = %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i159
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.js ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.kb, ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i64 16, i1 false), !tbaa.struct !233
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load i32, ptr %i.jj, align 4, !tbaa !128
  store i32 %i.kd, ptr %i.kc, align 8, !tbaa !210
  %.not10.i.i.i.i.i162 = icmp eq ptr %i.jp, %i.jf
  br i1 %.not10.i.i.i.i.i162, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i167, label %.lr.ph.i.i.i.i.i163

.lr.ph.i.i.i.i.i163:                              ; preds = %.noexc172, %.lr.ph.i.i.i.i.i163
  %.012.i.i.i.i.i164 = phi ptr [ %i.kf, %.lr.ph.i.i.i.i.i163 ], [ %i.ka, %.noexc172 ] ; 2 uses
  %.0911.i.i.i.i.i165 = phi ptr [ %i.ke, %.lr.ph.i.i.i.i.i163 ], [ %i.jp, %.noexc172 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i164, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i165, i64 24, i1 false), !alias.scope !492
  %i.ke = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i165, i64 24 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i164, i64 24 ; 2 uses
  %.not.i.i.i.i.i166 = icmp eq ptr %i.ke, %i.jf
  br i1 %.not.i.i.i.i.i166, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i167, label %.lr.ph.i.i.i.i.i163, !llvm.loop !9

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i167: ; preds = %.lr.ph.i.i.i.i.i163, %.noexc172
  %.0.lcssa.i.i.i.i.i168 = phi ptr [ %i.ka, %.noexc172 ], [ %i.kf, %.lr.ph.i.i.i.i.i163 ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i168, i64 24 ; 2 uses
  %.not.i34.i.i169 = icmp eq ptr %i.jp, null
  br i1 %.not.i34.i.i169, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i170, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i167
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.js) #30
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i170

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i170: ; preds = %bb.bv, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i167
  store ptr %i.ka, ptr %19, align 8, !tbaa !208
  store ptr %i.kg, ptr %i.ia, align 8, !tbaa !207
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.ka, i64 %i.jy
  store ptr %i.kh, ptr %i.ib, align 8, !tbaa !234
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit173

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit173: ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i170, %bb.bs
  %i.ki = phi ptr [ %i.kg, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i170 ], [ %i.jo, %bb.bs ] ; 2 uses
  %i.kj = call float @llvm.fmuladd.f32(float %4, float %i.ji, float %.084318) ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0241.0317, i64 8 ; 2 uses
  %.not267 = icmp eq ptr %i.kk, %i.ij
  br i1 %.not267, label %._crit_edge321, label %.lr.ph320

.loopexit268:                                     ; preds = %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i159
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit.split-lp:                               ; preds = %bb.bu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_fEEERS8_DpOT_.exit: ; preds = %._ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_fEEERS8_DpOT_.exit_crit_edge, %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_fTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit.i
  %i.kl = phi ptr [ %.pre349, %._ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_fEEERS8_DpOT_.exit_crit_edge ], [ %i.iy, %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_fTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %.not.i.i.i174 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i174, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit175, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_fEEERS8_DpOT_.exit
  %i.km = load ptr, ptr %i.ib, align 8, !tbaa !234
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = ptrtoint ptr %i.kl to i64
  %i.kp = sub i64 %i.kn, %i.ko
  call void @_ZdlPvm(ptr noundef nonnull %i.kl, i64 noundef %i.kp) #30
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit175

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit175: ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_fEEERS8_DpOT_.exit, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0245.0324, i64 32 ; 2 uses
  %.not265 = icmp eq ptr %i.kq, %i.hy
  br i1 %.not265, label %._crit_edge326, label %bb.bo

.loopexit269:                                     ; preds = %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i146, %bb.br
  %lpad.loopexit271 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp270:                            ; preds = %.noexc.i.i.i.i153
  %lpad.loopexit.split-lp272 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit.split-lp270, %.loopexit269
  %lpad.phi273 = phi { ptr, i32 } [ %lpad.loopexit271, %.loopexit269 ], [ %lpad.loopexit.split-lp272, %.loopexit.split-lp270 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.by

bb.by:                                            ; preds = %.loopexit268, %.loopexit.split-lp, %bb.bx
  %.pn101 = phi { ptr, i32 } [ %lpad.phi273, %bb.bx ], [ %lpad.loopexit, %.loopexit268 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.kr = load ptr, ptr %19, align 8, !tbaa !208  ; 3 uses
  %.not.i.i.i176 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit177, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ks = load ptr, ptr %i.ib, align 8, !tbaa !234
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = ptrtoint ptr %i.kr to i64
  %i.kv = sub i64 %i.kt, %i.ku
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef %i.kv) #30
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit177

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit177: ; preds = %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %bb.ch

.lr.ph330:                                        ; preds = %._crit_edge326, %bb.ce
  %.sroa.0237.0328 = phi ptr [ %i.lt, %bb.ce ], [ %i.ie, %._crit_edge326 ] ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0237.0328, i64 24 ; 2 uses
  %i.kx = load float, ptr %i.kw, align 8, !tbaa !244 ; 2 uses
  %i.ky = fcmp une float %i.kx, 0.000000e+00
  br i1 %i.ky, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %.lr.ph330
  %i.kz = fpext float %i.kx to double
  %i.la = fsub double %i.kz, %i.hr                ; 3 uses
  %i.lb = call double @exp(double noundef %i.la) #31 ; 4 uses
  %i.lc = fcmp ugt double %i.la, -1.000000e+01
  br i1 %i.lc, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ld = fmul double %i.lb, 5.000000e-01
  %i.le = fsub double %i.la, %i.ld
  %i.lf = call noundef double @pow(double noundef %i.lb, double noundef 2.000000e+00) #31
  %i.lg = call noundef double @pow(double noundef %i.lb, double noundef 4.000000e+00) #31
  %i.lh = insertelement <2 x double> poison, double %i.lf, i64 0
  %i.li = insertelement <2 x double> %i.lh, double %i.lg, i64 1
  %i.lj = fdiv <2 x double> %i.li, <double 2.400000e+01, double 2.880000e+03> ; 2 uses
  %i.lk = extractelement <2 x double> %i.lj, i64 0
  %i.ll = fadd double %i.le, %i.lk
  %i.lm = extractelement <2 x double> %i.lj, i64 1
  %i.ln = fsub double %i.ll, %i.lm
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.lo = fneg double %i.lb
  %i.lp = call double @expm1(double noundef %i.lo) #31
  %i.lq = fneg double %i.lp
  %i.lr = call double @log(double noundef %i.lq) #31
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.083 = phi double [ %i.ln, %bb.cb ], [ %i.lr, %bb.cc ]
  %i.ls = fptrunc double %.083 to float
  store float %i.ls, ptr %i.kw, align 8, !tbaa !244
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph330
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0237.0328, i64 32 ; 2 uses
  %.not266 = icmp eq ptr %i.lt, %i.ig
  br i1 %.not266, label %.loopexit, label %.lr.ph330

.loopexit:                                        ; preds = %bb.ce, %._crit_edge326, %bb.bl
  %i.lu = load ptr, ptr %15, align 8, !tbaa !102  ; 3 uses
  %i.lv = load ptr, ptr %i.hh, align 8, !tbaa !104 ; 2 uses
  %.not4.i.i.i178 = icmp eq ptr %i.lu, %i.lv
  br i1 %.not4.i.i.i178, label %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i179

.lr.ph.i.i.i179:                                  ; preds = %.loopexit, %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i
  %.05.i.i.i180 = phi ptr [ %i.mc, %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i ], [ %i.lu, %.loopexit ] ; 3 uses
  %i.lw = load ptr, ptr %.05.i.i.i180, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i.i179
  %i.lx = getelementptr inbounds nuw i8, ptr %.05.i.i.i180, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !53
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lw to i64
  %i.mb = sub i64 %i.lz, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.mb) #30
  br label %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i: ; preds = %bb.cf, %.lr.ph.i.i.i179
  %i.mc = getelementptr inbounds nuw i8, ptr %.05.i.i.i180, i64 32 ; 2 uses
  %.not.i.i.i181 = icmp eq ptr %i.mc, %i.lv
  br i1 %.not.i.i.i181, label %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i179, !llvm.loop !4

_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfEEvPT_.exit.i.i.i
  %.pr.i182 = load ptr, ptr %15, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.md = phi ptr [ %.pr.i182, %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.lu, %.loopexit ] ; 3 uses
  %.not.i.i1.i183 = icmp eq ptr %i.md, null
  br i1 %.not.i.i1.i183, label %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i
  %i.me = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !103
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = ptrtoint ptr %i.md to i64
  %i.mi = sub i64 %i.mg, %i.mh
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef %i.mi) #30
  br label %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EED2Ev.exit

_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairISt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS6_EEfES9_EvT_SB_RSaIT0_E.exit.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br i1 %i.hj, label %bb.dg, label %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EED2Ev.exit..loopexit279_crit_edge

_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EED2Ev.exit..loopexit279_crit_edge: ; preds = %_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EED2Ev.exit
  %.pre350 = load ptr, ptr %9, align 16, !tbaa !237
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre351 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !239
  br label %.loopexit279

bb.ch:                                            ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit177, %bb.bj
  %.pn103.pn.pn = phi { ptr, i32 } [ %.pn103.pn, %bb.bj ], [ %.pn101, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit177 ]
  call void @_ZNSt6vectorISt4pairIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEfESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #31
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ao
  %.pn103.pn.pn.pn = phi { ptr, i32 } [ %.pn103.pn.pn, %bb.ch ], [ %i.ew, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %bb.dk

bb.cj:                                            ; preds = %.lr.ph311, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit218
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  invoke void @_ZN13sentencepiece7unigram7LatticeC1Ev(ptr noundef nonnull align 8 dereferenceable(152) %20)
          to label %bb.ck unwind label %bb.cr

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN13sentencepiece7unigram7Lattice11SetSentenceESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(152) %20, i64 %2, ptr %3)
          to label %bb.cl unwind label %bb.cs

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZNK13sentencepiece7unigram5Model13PopulateNodesEPNS0_7LatticeE(ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull %20)
          to label %bb.cm unwind label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  invoke void @_ZN13sentencepiece7unigram7Lattice6SampleEf(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.10") align 8 %22, ptr noundef nonnull align 8 dereferenceable(152) %20, float noundef %4)
          to label %bb.cn unwind label %bb.ct

bb.cn:                                            ; preds = %bb.cm
  %i.mj = load ptr, ptr %22, align 8, !tbaa !85   ; 8 uses
  %i.mk = load ptr, ptr %i.ea, align 8, !tbaa !85 ; 2 uses
  %.not264305 = icmp eq ptr %i.mj, %i.mk
  br i1 %.not264305, label %._crit_edge310, label %.lr.ph309.preheader

.lr.ph309.preheader:                              ; preds = %bb.cn
  %.pre344 = load ptr, ptr %i.eb, align 8, !tbaa !207
  br label %.lr.ph309

._crit_edge310:                                   ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit215, %bb.cn
  %.0.lcssa = phi float [ 0.000000e+00, %bb.cn ], [ %i.on, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit215 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.ml = fsub float %.0.lcssa, %i.ai             ; 2 uses
  store float %i.ml, ptr %i.c, align 4, !tbaa !98
  %i.mm = load ptr, ptr %i.dr, align 8, !tbaa !239 ; 7 uses
  %i.mn = load ptr, ptr %i.ed, align 16, !tbaa !238
  %.not.i184 = icmp eq ptr %i.mm, %i.mn
  br i1 %.not.i184, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %._crit_edge310
  %i.mo = load ptr, ptr %i.eb, align 8, !tbaa !207 ; 2 uses
  %i.mp = load ptr, ptr %21, align 8, !tbaa !208  ; 2 uses
  %i.mq = ptrtoint ptr %i.mo to i64
  %i.mr = ptrtoint ptr %i.mp to i64
  %i.ms = sub i64 %i.mq, %i.mr                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.mm, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i185 = icmp eq ptr %i.mo, %i.mp
  br i1 %.not.i.i.i.i.i.i185, label %.noexc197, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %25 = sdiv exact i64 %i.ms, 24
  %i.mt = icmp ugt i64 %25, 384307168202282325
  br i1 %i.mt, label %.noexc.i.i.i.i194, label %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i186, !prof !88

.noexc.i.i.i.i194:                                ; preds = %bb.cp
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc196 unwind label %.loopexit.split-lp281

.noexc196:                                        ; preds = %.noexc.i.i.i.i194
  unreachable

_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i186: ; preds = %bb.cp
  %i.mu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ms) #32
          to label %.noexc197 unwind label %.loopexit280

.noexc197:                                        ; preds = %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i186, %bb.co
  %i.mv = phi ptr [ null, %bb.co ], [ %i.mu, %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i186 ] ; 5 uses
  store ptr %i.mv, ptr %i.mm, align 8, !tbaa !208
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 2 uses
  store ptr %i.mv, ptr %i.mw, align 8, !tbaa !207
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.ms
  %i.my = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  store ptr %i.mx, ptr %i.my, align 8, !tbaa !234
  %i.mz = load ptr, ptr %21, align 8, !tbaa !205  ; 2 uses
  %i.na = load ptr, ptr %i.eb, align 8, !tbaa !205 ; 2 uses
  %.not7.i.i.i.i.i.i.i187 = icmp eq ptr %i.mz, %i.na
  br i1 %.not7.i.i.i.i.i.i.i187, label %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_fTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit.i192, label %.lr.ph.i.i.i.i.i.i.i188

.lr.ph.i.i.i.i.i.i.i188:                          ; preds = %.noexc197, %.lr.ph.i.i.i.i.i.i.i188
  %.09.i.i.i.i.i.i.i189 = phi ptr [ %i.nc, %.lr.ph.i.i.i.i.i.i.i188 ], [ %i.mv, %.noexc197 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i190 = phi ptr [ %i.nb, %.lr.ph.i.i.i.i.i.i.i188 ], [ %i.mz, %.noexc197 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i189, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i190, i64 24, i1 false)
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i190, i64 24 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i189, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i191 = icmp eq ptr %i.nb, %i.na
  br i1 %.not.i.i.i.i.i.i.i191, label %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_fTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit.i192, label %.lr.ph.i.i.i.i.i.i.i188, !llvm.loop !11

_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_fTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit.i192: ; preds = %.lr.ph.i.i.i.i.i.i.i188, %.noexc197
  %.0.lcssa.i.i.i.i.i.i.i193 = phi ptr [ %i.mv, %.noexc197 ], [ %i.nc, %.lr.ph.i.i.i.i.i.i.i188 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i193, ptr %i.mw, align 8, !tbaa !207
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  store float %i.ml, ptr %i.nd, align 8, !tbaa !244
  %i.ne = load ptr, ptr %i.dr, align 8, !tbaa !239
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  store ptr %i.nf, ptr %i.dr, align 8, !tbaa !239
  br label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_fEEERS8_DpOT_.exit199

bb.cq:                                            ; preds = %._crit_edge310
  invoke void @_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE17_M_realloc_insertIJRS7_fEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.mm, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_fEEERS8_DpOT_.exit199 unwind label %.loopexit280

bb.cr:                                            ; preds = %bb.cj
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.cs:                                            ; preds = %bb.cl, %bb.ck
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.ct:                                            ; preds = %bb.cm
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EED2Ev.exit220

.lr.ph309:                                        ; preds = %.lr.ph309.preheader, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit215
  %i.nj = phi ptr [ %i.ok, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit215 ], [ %.pre344, %.lr.ph309.preheader ] ; 6 uses
  %.0307 = phi float [ %i.on, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit215 ], [ 0.000000e+00, %.lr.ph309.preheader ]
  %.sroa.0233.0306 = phi ptr [ %i.oo, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit215 ], [ %i.mj, %.lr.ph309.preheader ] ; 2 uses
  %i.nk = load ptr, ptr %.sroa.0233.0306, align 8, !tbaa !59 ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 28 ; 2 uses
  %i.nm = load ptr, ptr %i.ec, align 8, !tbaa !234
  %.not.i200 = icmp eq ptr %i.nj, %i.nm
  br i1 %.not.i200, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.nj, ptr noundef nonnull align 8 dereferenceable(16) %i.nk, i64 16, i1 false), !tbaa.struct !233
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.no = load i32, ptr %i.nl, align 4, !tbaa !128
  store i32 %i.no, ptr %i.nn, align 8, !tbaa !210
  %i.np = load ptr, ptr %i.eb, align 8, !tbaa !207
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 24 ; 2 uses
  store ptr %i.nq, ptr %i.eb, align 8, !tbaa !207
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit215

bb.cv:                                            ; preds = %.lr.ph309
  %i.nr = load ptr, ptr %21, align 8, !tbaa !208  ; 5 uses
  %i.ns = ptrtoint ptr %i.nj to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt                    ; 4 uses
  %i.nv = icmp eq i64 %i.nu, 9223372036854775800
  br i1 %i.nv, label %bb.cw, label %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i201

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #33
          to label %.noexc213 unwind label %.loopexit.split-lp275

.noexc213:                                        ; preds = %bb.cw
  unreachable

_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i201: ; preds = %bb.cv
  %i.nw = sdiv exact i64 %i.nu, 24                ; 3 uses
  %.sroa.speculated.i.i.i202 = call i64 @llvm.umax.i64(i64 %i.nw, i64 1)
  %i.nx = add nsw i64 %.sroa.speculated.i.i.i202, %i.nw ; 2 uses
  %i.ny = icmp ult i64 %i.nx, %i.nw
  %i.nz = call i64 @llvm.umin.i64(i64 %i.nx, i64 384307168202282325)
  %i.oa = select i1 %i.ny, i64 384307168202282325, i64 %i.nz ; 3 uses
  %.not.i.i.i203 = icmp ne i64 %i.oa, 0
  call void @llvm.assume(i1 %.not.i.i.i203)
  %i.ob = mul nuw nsw i64 %i.oa, 24
  %i.oc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ob) #32
          to label %.noexc214 unwind label %.loopexit274 ; 5 uses

.noexc214:                                        ; preds = %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i201
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.od, ptr noundef nonnull align 8 dereferenceable(16) %i.nk, i64 16, i1 false), !tbaa.struct !233
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.of = load i32, ptr %i.nl, align 4, !tbaa !128
  store i32 %i.of, ptr %i.oe, align 8, !tbaa !210
  %.not10.i.i.i.i.i204 = icmp eq ptr %i.nr, %i.nj
  br i1 %.not10.i.i.i.i.i204, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i209, label %.lr.ph.i.i.i.i.i205

.lr.ph.i.i.i.i.i205:                              ; preds = %.noexc214, %.lr.ph.i.i.i.i.i205
  %.012.i.i.i.i.i206 = phi ptr [ %i.oh, %.lr.ph.i.i.i.i.i205 ], [ %i.oc, %.noexc214 ] ; 2 uses
  %.0911.i.i.i.i.i207 = phi ptr [ %i.og, %.lr.ph.i.i.i.i.i205 ], [ %i.nr, %.noexc214 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i206, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i207, i64 24, i1 false), !alias.scope !493
  %i.og = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i207, i64 24 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i206, i64 24 ; 2 uses
  %.not.i.i.i.i.i208 = icmp eq ptr %i.og, %i.nj
  br i1 %.not.i.i.i.i.i208, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i209, label %.lr.ph.i.i.i.i.i205, !llvm.loop !9

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i209: ; preds = %.lr.ph.i.i.i.i.i205, %.noexc214
  %.0.lcssa.i.i.i.i.i210 = phi ptr [ %i.oc, %.noexc214 ], [ %i.oh, %.lr.ph.i.i.i.i.i205 ]
  %i.oi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i210, i64 24 ; 2 uses
  %.not.i34.i.i211 = icmp eq ptr %i.nr, null
  br i1 %.not.i34.i.i211, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i212, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i209
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef %i.nu) #30
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i212

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i212: ; preds = %bb.cx, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i209
  store ptr %i.oc, ptr %21, align 8, !tbaa !208
  store ptr %i.oi, ptr %i.eb, align 8, !tbaa !207
  %i.oj = getelementptr inbounds nuw [24 x i8], ptr %i.oc, i64 %i.oa
  store ptr %i.oj, ptr %i.ec, align 8, !tbaa !234
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit215

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RKiEEERS5_DpOT_.exit215: ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i212, %bb.cu
  %i.ok = phi ptr [ %i.oi, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i212 ], [ %i.nq, %bb.cu ]
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.om = load float, ptr %i.ol, align 8, !tbaa !86
  %i.on = call float @llvm.fmuladd.f32(float %4, float %i.om, float %.0307) ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.0233.0306, i64 8 ; 2 uses
  %.not264 = icmp eq ptr %i.oo, %i.mk
  br i1 %.not264, label %._crit_edge310, label %.lr.ph309

.loopexit274:                                     ; preds = %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12_M_check_lenEmPKc.exit.i.i201
  %lpad.loopexit276 = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.loopexit.split-lp275:                            ; preds = %bb.cw
  %lpad.loopexit.split-lp277 = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_fEEERS8_DpOT_.exit199: ; preds = %bb.cq, %_ZNSt4pairISt6vectorIS_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfEC2IRS7_fTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %.not.i.i.i216 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i216, label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EED2Ev.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_fEEERS8_DpOT_.exit199
  %i.op = load ptr, ptr %i.ee, align 8, !tbaa !53
  %i.oq = ptrtoint ptr %i.op to i64
  %i.or = ptrtoint ptr %i.mj to i64
  %i.os = sub i64 %i.oq, %i.or
  call void @_ZdlPvm(ptr noundef nonnull %i.mj, i64 noundef %i.os) #30
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12emplace_backIJRS7_fEEERS8_DpOT_.exit199, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  %i.ot = load ptr, ptr %21, align 8, !tbaa !208  ; 3 uses
  %.not.i.i.i217 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i217, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit218, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EED2Ev.exit
  %i.ou = load ptr, ptr %i.ec, align 8, !tbaa !234
  %i.ov = ptrtoint ptr %i.ou to i64
  %i.ow = ptrtoint ptr %i.ot to i64
  %i.ox = sub i64 %i.ov, %i.ow
  call void @_ZdlPvm(ptr noundef nonnull %i.ot, i64 noundef %i.ox) #30
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit218

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EED2Ev.exit218: ; preds = %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EED2Ev.exit, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @_ZN13sentencepiece7unigram7LatticeD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  %i.oy = load ptr, ptr %i.dr, align 8, !tbaa !239 ; 2 uses
  %i.oz = load ptr, ptr %9, align 16, !tbaa !237  ; 2 uses
  %i.pa = ptrtoint ptr %i.oy to i64
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSI_PFvSI_hmmE:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #26, !srcloc !131 ; 2 uses
  %.not62 = icmp eq i32 %i.r, 65535
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04964, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !520

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.054.063 = phi i32 [ %i.bg, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.054.063, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04964, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %.val53 = load ptr, ptr %i.y, align 8, !tbaa !117
  %i.ac = ptrtoint ptr %.val53 to i64
  %i.ad = xor i64 %i.ac, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw nsw i128 %i.ae, 8779197792823184629 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
  %i.ai = trunc i128 %i.ah to i64                 ; 2 uses
  %i.aj = xor i64 %i.ab, %i.ai                    ; 5 uses
  %i.ak = lshr i64 %i.ai, 57
  %i.al = trunc nuw nsw i64 %i.ak to i8           ; 2 uses
  %i.am = sub i64 %i.x, %i.aj                     ; 2 uses
  %i.an = and i64 %i.i, %i.am
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.d, label %bb.e, !prof !132

bb.d:                                             ; preds = %.lr.ph
  %i.ap = and i64 %i.am, 15
  %i.aq = add i64 %i.ap, %i.aj
  %i.ar = and i64 %i.aq, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.as = and i64 %i.aj, %i.d
  %.not.i = icmp ult i64 %i.as, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !132

bb.f:                                             ; preds = %bb.e
  %i.at = and i64 %i.aj, %i.c                     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.at
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !80
  %i.aw = icmp slt <16 x i8> %i.av, zeroinitializer
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = zext i16 %i.ax to i32
  %i.az = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ay) #26, !srcloc !131 ; 2 uses
  %.not26.i = icmp eq i32 %i.az, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !88

bb.g:                                             ; preds = %bb.f
  %i.ba = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.az, i1 true)
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = add nuw i64 %i.at, %i.bb
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.al, i64 noundef %i.x, i64 noundef %i.aj)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.bc, %bb.g ], [ %i.ar, %bb.d ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.al, ptr %i.bd, align 1, !tbaa !232
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sink27.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bf = add i32 %.sroa.054.063, -1
  %i.bg = and i32 %i.bf, %.sroa.054.063           ; 2 uses
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_6HashEqIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEvE4HashESB_Lb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, i64 noundef %1) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !522
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !117
  %i.b = ptrtoint ptr %.val.val to i64
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw nsw i128 %i.d, 8779197792823184629 ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  %i.i = xor i64 %1, %i.h
  ret i64 %i.i
}

declare noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i32, i64, i64) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN13sentencepiece5model8FreeListINS_7unigram12_GLOBAL__N_110HypothesisEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN13sentencepiece5model8FreeListINS_7unigram12_GLOBAL__N_110HypothesisEEE, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.0.val.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !117 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.0.val.i.i.i.i) #30, !inline_history !134
  br label %_ZSt8_DestroyISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i
  %.val.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %.val.i.i = phi ptr [ %.val.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i2.i.i, label %_ZN13sentencepiece5model8FreeListINS_7unigram12_GLOBAL__N_110HypothesisEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.f, align 8, !tbaa !126
  %i.g = ptrtoint ptr %.val1.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.i) #30, !inline_history !134
  br label %_ZN13sentencepiece5model8FreeListINS_7unigram12_GLOBAL__N_110HypothesisEED2Ev.exit

_ZN13sentencepiece5model8FreeListINS_7unigram12_GLOBAL__N_110HypothesisEED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #30
  ret void
}

declare void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #13

declare void @_ZN4absl12lts_2026052615status_internal13MakeErrorImplILi13EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8, i64, ptr, i64, ptr) local_unnamed_addr #13

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIfEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #19

declare void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfEPS9_ET0_T_SE_SD_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not18 = icmp eq ptr %0, %1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.020 = phi ptr [ %i.u, %.loopexit ], [ %2, %bb.a ] ; 7 uses
  %.01219 = phi ptr [ %i.t, %.loopexit ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01219, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207  ; 2 uses
  %i.c = load ptr, ptr %.01219, align 8, !tbaa !208 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.020, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %3 = sdiv exact i64 %i.f, 24
  %i.g = icmp ugt i64 %3, 384307168202282325
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !88

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32
          to label %.noexc13 unwind label %.loopexit14

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.020, align 8, !tbaa !208
  %i.j = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !207
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.020, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !234
  %i.m = load ptr, ptr %.01219, align 8, !tbaa !205 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc13, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i ], [ %i.i, %.noexc13 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %.noexc13 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc13
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc13 ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !207
  %i.q = getelementptr inbounds nuw i8, ptr %.020, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.01219, i64 24
  %i.s = load float, ptr %i.r, align 8, !tbaa !244
  store float %i.s, ptr %i.q, align 8, !tbaa !244
  %i.t = getelementptr inbounds nuw i8, ptr %.01219, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.020, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.t, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !523

.loopexit14:                                      ; preds = %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit14
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit14 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.v = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #31 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfEEvT_SB_(ptr noundef %2, ptr noundef nonnull %.020)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #33
          to label %bb.h unwind label %bb.e

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %.loopexit ]
  ret ptr %.0.lcssa

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #36
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfEEvT_SB_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #25 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairISt6vectorIS2_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS8_EEfEEEvT_SD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !208 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !234
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #30
  br label %_ZSt8_DestroyISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfEEvPT_.exit.i

_ZSt8_DestroyISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairISt6vectorIS2_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS8_EEfEEEvT_SD_.exit, label %.lr.ph.i, !llvm.loop !12

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairISt6vectorIS2_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS8_EEfEEEvT_SD_.exit: ; preds = %_ZSt8_DestroyISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !47     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEmS7_ET_S9_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS5_EEmS7_ET_S9_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !48
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #33
  unreachable

_ZNKSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !85, !alias.scope !529, !noalias !528
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !85, !alias.scope !528, !noalias !529
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53, !alias.scope !529, !noalias !528
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !53, !alias.scope !528, !noalias !529
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !529, !noalias !528
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !527

_ZNSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IPN13sentencepiece7unigram7Lattice4NodeESaIS4_EESaIS6_EE12_M_check_lenEmPKc.exit
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEiEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSF_PFvSF_hmmE:bb.a
  %i.aj = zext i32 %.0.copyload.i4.i.i.i to i64
  %i.ak = or disjoint i64 %i.ag, %i.aj
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 1, !tbaa !80
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 16
  %i.ao = getelementptr i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !80
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.an, %i.ar
  %i.at = lshr i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !80
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 8
  %i.ay = or disjoint i64 %i.as, %i.ax
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i

_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i = phi i64 [ %i.ak, %bb.e ], [ %i.ay, %bb.g ], [ 87, %bb.f ]
  %i.az = xor i64 %.0.copyload.i.i.i.i, %.0.i.i.i
  %i.ba = xor i64 %i.az, %i.ab
  %i.bb = zext i64 %i.ba to i128
  %i.bc = mul nuw nsw i128 %i.bb, 8779197792823184629 ; 2 uses
  %i.bd = lshr i128 %i.bc, 64
  %i.be = xor i128 %i.bd, %i.bc
  %i.bf = trunc i128 %i.be to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bg = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 17
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %.sroa.0.0.copyload.i.i.i.i.i.i
  %.0.copyload.i.i30.i.i = load i64, ptr %i.bh, align 1
  %.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %.0.copyload.i.i2.i.i.i = load i64, ptr %i.bj, align 1
  %i.bk = xor i64 %.0.copyload.i.i30.i.i, %.0.copyload.i.i.i.i.i
  %i.bl = xor i64 %i.bk, %i.ab
  %i.bm = xor i64 %.0.copyload.i.i2.i.i.i, 8779197792823184629
  %i.bn = zext i64 %i.bl to i128
  %i.bo = zext i64 %i.bm to i128
  %i.bp = mul nuw i128 %i.bn, %i.bo               ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = xor i128 %i.bq, %i.bp
  %i.bs = trunc i128 %i.br to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.j:                                             ; preds = %bb.h
  %i.bt = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 33
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %.sroa.0.0.copyload.i.i.i.i.i.i
  %.0.copyload.i.i34.i.i = load i64, ptr %i.bu, align 1
  %i.bv = xor i64 %.0.copyload.i.i34.i.i, %i.ab   ; 2 uses
  %.0.copyload.i.i35.i.i = load i64, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 1
  %i.bw = xor i64 %.0.copyload.i.i35.i.i, 1376283091369227076
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i36.i.i = load i64, ptr %i.bx, align 1
  %i.by = xor i64 %.0.copyload.i.i36.i.i, %i.bv
  %i.bz = zext i64 %i.bw to i128
  %i.ca = zext i64 %i.by to i128
  %i.cb = mul nuw i128 %i.ca, %i.bz               ; 2 uses
  %i.cc = getelementptr i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 -16
  %.0.copyload.i.i40.i.i = load i64, ptr %i.cd, align 1
  %i.ce = xor i64 %.0.copyload.i.i40.i.i, 589684135938649225
  %i.cf = getelementptr i8, ptr %i.cc, i64 -8
  %.0.copyload.i.i41.i.i = load i64, ptr %i.cf, align 1
  %i.cg = xor i64 %.0.copyload.i.i41.i.i, %i.bv
  %i.ch = zext i64 %i.ce to i128
  %i.ci = zext i64 %i.cg to i128
  %i.cj = mul nuw i128 %i.ci, %i.ch               ; 2 uses
  %i.ck = xor i128 %i.cj, %i.cb
  %i.cl = lshr i128 %i.ck, 64
  %i.cm = xor i128 %i.cb, %i.cl
  %i.cn = xor i128 %i.cm, %i.cj
  %i.co = trunc i128 %i.cn to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.l:                                             ; preds = %bb.j
  %i.cp = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef %i.ab, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i)
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit: ; preds = %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i, %bb.i, %bb.k, %bb.l
  %.0.i.i = phi i64 [ %i.bf, %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i ], [ %i.bs, %bb.i ], [ %i.co, %bb.k ], [ %i.cp, %bb.l ] ; 6 uses
  %i.cq = lshr i64 %.0.i.i, 57
  %i.cr = trunc nuw nsw i64 %i.cq to i8           ; 2 uses
  %i.cs = sub i64 %i.x, %.0.i.i                   ; 2 uses
  %i.ct = and i64 %i.i, %i.cs
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.m, label %bb.n, !prof !132

bb.m:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit
  %i.cv = and i64 %i.cs, 15
  %i.cw = add i64 %i.cv, %.0.i.i
  %i.cx = and i64 %i.cw, %i.c
  br label %bb.r

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit
  %i.cy = and i64 %.0.i.i, %i.d
  %.not.i = icmp ult i64 %i.cy, %i.x
  br i1 %.not.i, label %bb.o, label %bb.q, !prof !132

bb.o:                                             ; preds = %bb.n
  %i.cz = and i64 %.0.i.i, %i.c                   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.cz
  %i.db = load <16 x i8>, ptr %i.da, align 1, !tbaa !80
  %i.dc = icmp slt <16 x i8> %i.db, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16
  %i.de = zext i16 %i.dd to i32
  %i.df = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.de) #26, !srcloc !131 ; 2 uses
  %.not26.i = icmp eq i32 %i.df, 0
  br i1 %.not26.i, label %bb.q, label %bb.p, !prof !88

bb.p:                                             ; preds = %bb.o
  %i.dg = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.df, i1 true)
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = add nuw i64 %i.cz, %i.dh
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.cr, i64 noundef %i.x, i64 noundef %.0.i.i)
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.m
  %.sink27.i = phi i64 [ %i.di, %bb.p ], [ %i.cx, %bb.m ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.cr, ptr %i.dj, align 1, !tbaa !232
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dl = add i32 %.sroa.052.061, -1
  %i.dm = and i32 %i.dl, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i32 %i.dm, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE17_M_realloc_insertIJRS7_RKfEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !237    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #33
  unreachable

_ZNKSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !207  ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !208    ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i, label %.noexc27.thread, label %bb.c

.noexc27.thread:                                  ; preds = %_ZNKSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr null, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !234
  br label %.loopexit

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12_M_check_lenEmPKc.exit
  %4 = sdiv exact i64 %i.w, 24
  %i.aa = icmp ugt i64 %4, 384307168202282325
  br i1 %i.aa, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i, !prof !88

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32
          to label %.noexc27 unwind label %bb.f   ; 4 uses

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !208
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !207
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !234
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc27, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %.noexc27 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %.noexc27 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %i.s
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc27.thread
  %i.ah = phi ptr [ %i.x, %.noexc27.thread ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.noexc27.thread ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !207
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aj = load float, ptr %3, align 4, !tbaa !98
  store float %i.aj, ptr %i.ai, align 8, !tbaa !244
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.p, %.loopexit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.ak = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !205, !alias.scope !634, !noalias !633
  store <2 x ptr> %i.ak, ptr %.012.i.i.i, align 8, !tbaa !205, !alias.scope !633, !noalias !634
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !234, !alias.scope !634, !noalias !633
  store ptr %i.an, ptr %i.al, align 8, !tbaa !234, !alias.scope !633, !noalias !634
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !634, !noalias !633
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !244, !alias.scope !634, !noalias !633
  store float %i.aq, ptr %i.ao, align 8, !tbaa !244, !alias.scope !633, !noalias !634
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !24

_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.as, %.lr.ph.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.bc, %.lr.ph.i.i.i29 ], [ %i.at, %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 4 uses
  %.0911.i.i.i31 = phi ptr [ %i.bb, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.au = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !205, !alias.scope !636, !noalias !635
  store <2 x ptr> %i.au, ptr %.012.i.i.i30, align 8, !tbaa !205, !alias.scope !635, !noalias !636
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !234, !alias.scope !636, !noalias !635
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !234, !alias.scope !635, !noalias !636
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0911.i.i.i31, i8 0, i64 24, i1 false), !alias.scope !636, !noalias !635
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24
  %i.ba = load float, ptr %i.az, align 8, !tbaa !244, !alias.scope !636, !noalias !635
  store float %i.ba, ptr %i.ay, align 8, !tbaa !244, !alias.scope !635, !noalias !636
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bb, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !24

_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.at, %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ], [ %i.bc, %.lr.ph.i.i.i29 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !238
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bg) #30
  br label %_ZNSt12_Vector_baseISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !237
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !239
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !238
  ret void

bb.e:                                             ; preds = %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  %i.bl = tail call ptr @__cxa_begin_catch(ptr %i.bk) #31 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #30
  invoke void @__cxa_rethrow() #33
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.bi

bb.h:                                             ; preds = %bb.e
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #36
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE17_M_realloc_insertIJRS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !237    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #33
  unreachable

_ZNKSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !207  ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !208    ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i, label %.noexc27.thread, label %bb.c

.noexc27.thread:                                  ; preds = %_ZNKSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr null, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !234
  br label %.loopexit

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12_M_check_lenEmPKc.exit
  %4 = sdiv exact i64 %i.w, 24
  %i.aa = icmp ugt i64 %4, 384307168202282325
  br i1 %i.aa, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i, !prof !88

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32
          to label %.noexc27 unwind label %bb.f   ; 4 uses

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !208
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !207
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !234
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc27, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %.noexc27 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %.noexc27 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %i.s
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc27.thread
  %i.ah = phi ptr [ %i.x, %.noexc27.thread ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.noexc27.thread ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !207
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aj = load double, ptr %3, align 8, !tbaa !122
  %i.ak = fptrunc double %i.aj to float
  store float %i.ak, ptr %i.ai, align 8, !tbaa !244
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %i.p, %.loopexit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.al = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !205, !alias.scope !644, !noalias !643
  store <2 x ptr> %i.al, ptr %.012.i.i.i, align 8, !tbaa !205, !alias.scope !643, !noalias !644
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !234, !alias.scope !644, !noalias !643
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !234, !alias.scope !643, !noalias !644
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !644, !noalias !643
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !244, !alias.scope !644, !noalias !643
  store float %i.ar, ptr %i.ap, align 8, !tbaa !244, !alias.scope !643, !noalias !644
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !24

_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.at, %.lr.ph.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.bd, %.lr.ph.i.i.i29 ], [ %i.au, %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 4 uses
  %.0911.i.i.i31 = phi ptr [ %i.bc, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %i.av = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !205, !alias.scope !646, !noalias !645
  store <2 x ptr> %i.av, ptr %.012.i.i.i30, align 8, !tbaa !205, !alias.scope !645, !noalias !646
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !234, !alias.scope !646, !noalias !645
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !234, !alias.scope !645, !noalias !646
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0911.i.i.i31, i8 0, i64 24, i1 false), !alias.scope !646, !noalias !645
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !244, !alias.scope !646, !noalias !645
  store float %i.bb, ptr %i.az, align 8, !tbaa !244, !alias.scope !645, !noalias !646
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bc, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !24

_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.au, %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ], [ %i.bd, %.lr.ph.i.i.i29 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !238
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bh) #30
  br label %_ZNSt12_Vector_baseISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !237
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !239
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !238
  ret void

bb.e:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  %i.bm = tail call ptr @__cxa_begin_catch(ptr %i.bl) #31 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #30
  invoke void @__cxa_rethrow() #33
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.bj

bb.h:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #36
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EES2_IS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIKS9_EEET_SI_SI_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 24
  %i.e = ashr i64 %i.d, 2                         ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.i = load ptr, ptr %2, align 8, !tbaa !52     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 8 uses
  %i.m = mul nuw nsw i64 %i.e, 96
  %scevgep = getelementptr i8, ptr %0, i64 %i.m   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit27.thread61
  %.087 = phi i64 [ %i.e, %.lr.ph ], [ %i.at, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit27.thread61 ] ; 2 uses
  %.sroa.049.086 = phi ptr [ %0, %.lr.ph ], [ %i.as, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit27.thread61 ] ; 17 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.049.086, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83   ; 2 uses
  %i.p = load ptr, ptr %.sroa.049.086, align 8, !tbaa !52 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp eq i64 %i.s, %i.l
  br i1 %i.t, label %bb.c, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread58

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.i, i64 %i.l)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread58

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread58: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.049.086, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.049.086, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83   ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !52   ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp eq i64 %i.aa, %i.l
  br i1 %i.ab, label %bb.d, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit19.thread59

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread58
  %.not.not.i.i.i.i.i.i16 = icmp eq ptr %i.w, %i.x
  br i1 %.not.not.i.i.i.i.i.i16, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit130, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit19

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit19: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i17 = tail call i32 @bcmp(ptr %i.x, ptr %i.i, i64 %i.l)
  %.not9.i.i.i.i.i.i18 = icmp eq i32 %bcmp.i.i.i.i.i.i17, 0
end_hunk_5
begin_hunk_6_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EES2_IS9_SaIS9_EEEENS0_5__ops16_Iter_equals_valIKS9_EEET_SI_SI_T0_St26random_access_iterator_tag:bb.a
  %.not9.i.i.i.i.i.i26 = icmp eq i32 %bcmp.i.i.i.i.i.i25, 0
  br i1 %.not9.i.i.i.i.i.i26, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit128, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit27.thread61

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit27.thread61: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit23.thread60, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit27
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.049.086, i64 96
  %i.at = add nsw i64 %.087, -1
  %i.au = icmp sgt i64 %.087, 1
  br i1 %i.au, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !647

._crit_edge.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit27.thread61
  %.pre100 = ptrtoint ptr %scevgep to i64
  %.pre101 = sub i64 %i.a, %.pre100
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi102 = phi i64 [ %.pre101, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.049.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 7 uses
  %i.av = sdiv exact i64 %.pre-phi102, 24
  switch i64 %i.av, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge96
  ]

._crit_edge._crit_edge96:                         ; preds = %._crit_edge
  %.phi.trans.insert97 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre98 = load ptr, ptr %.phi.trans.insert97, align 8, !tbaa !83
  %.pre99 = load ptr, ptr %2, align 8, !tbaa !52  ; 2 uses
  %.pre109 = ptrtoint ptr %.pre98 to i64
  %.pre111 = ptrtoint ptr %.pre99 to i64
  %.pre113 = sub i64 %.pre109, %.pre111
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !83
  %.pre95 = load ptr, ptr %2, align 8, !tbaa !52  ; 2 uses
  %.pre103 = ptrtoint ptr %.pre to i64
  %.pre105 = ptrtoint ptr %.pre95 to i64
  %.pre107 = sub i64 %.pre103, %.pre105
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.049.0.lcssa, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !83 ; 2 uses
  %i.ay = load ptr, ptr %.sroa.049.0.lcssa, align 8, !tbaa !52 ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.be = load ptr, ptr %2, align 8, !tbaa !52    ; 3 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = icmp eq i64 %i.bb, %i.bh
  br i1 %i.bi, label %bb.h, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit31.thread62

bb.h:                                             ; preds = %bb.g
  %.not.not.i.i.i.i.i.i28 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.not.i.i.i.i.i.i28, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit31

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit31: ; preds = %bb.h
  %bcmp.i.i.i.i.i.i29 = tail call i32 @bcmp(ptr %i.ay, ptr %i.be, i64 %i.bb)
  %.not9.i.i.i.i.i.i30 = icmp eq i32 %bcmp.i.i.i.i.i.i29, 0
  br i1 %.not9.i.i.i.i.i.i30, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit31.thread62

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit31.thread62: ; preds = %bb.g, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit31
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.049.0.lcssa, i64 24
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit31.thread62
  %.pre-phi108 = phi i64 [ %.pre107, %._crit_edge._crit_edge ], [ %i.bh, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit31.thread62 ] ; 2 uses
  %i.bk = phi ptr [ %.pre95, %._crit_edge._crit_edge ], [ %i.be, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit31.thread62 ] ; 2 uses
  %.sroa.049.1 = phi ptr [ %.sroa.049.0.lcssa, %._crit_edge._crit_edge ], [ %i.bj, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit31.thread62 ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.049.1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !83 ; 2 uses
  %i.bn = load ptr, ptr %.sroa.049.1, align 8, !tbaa !52 ; 3 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = icmp eq i64 %i.bq, %.pre-phi108
  br i1 %i.br, label %bb.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit35.thread63

bb.j:                                             ; preds = %bb.i
  %.not.not.i.i.i.i.i.i32 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.not.i.i.i.i.i.i32, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit35

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit35: ; preds = %bb.j
  %bcmp.i.i.i.i.i.i33 = tail call i32 @bcmp(ptr %i.bn, ptr %i.bk, i64 %i.bq)
  %.not9.i.i.i.i.i.i34 = icmp eq i32 %bcmp.i.i.i.i.i.i33, 0
  br i1 %.not9.i.i.i.i.i.i34, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit35.thread63

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit35.thread63: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit35
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.049.1, i64 24
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge96, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit35.thread63
  %.pre-phi114 = phi i64 [ %.pre113, %._crit_edge._crit_edge96 ], [ %.pre-phi108, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit35.thread63 ]
  %i.bt = phi ptr [ %.pre99, %._crit_edge._crit_edge96 ], [ %i.bk, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit35.thread63 ]
  %.sroa.049.2 = phi ptr [ %.sroa.049.0.lcssa, %._crit_edge._crit_edge96 ], [ %i.bs, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit35.thread63 ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.049.2, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !83 ; 2 uses
  %i.bw = load ptr, ptr %.sroa.049.2, align 8, !tbaa !52 ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %.pre-phi114
  br i1 %i.ca, label %bb.l, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit39.thread64

bb.l:                                             ; preds = %bb.k
  %.not.not.i.i.i.i.i.i36 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.not.i.i.i.i.i.i36, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit39

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit39: ; preds = %bb.l
  %bcmp.i.i.i.i.i.i37 = tail call i32 @bcmp(ptr %i.bw, ptr %i.bt, i64 %i.bz)
  %.not9.i.i.i.i.i.i38 = icmp eq i32 %bcmp.i.i.i.i.i.i37, 0
  br i1 %.not9.i.i.i.i.i.i38, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit39.thread64

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit39.thread64: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit39
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit19
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.049.086, i64 24
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit126: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit23
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.049.086, i64 48
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit128: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit27
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.049.086, i64 72
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit130: ; preds = %bb.d
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.049.086, i64 24
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit132: ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.049.086, i64 48
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit134: ; preds = %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.049.086, i64 72
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit126, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit128, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit130, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit132, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit134, %bb.l, %bb.j, %bb.h, %._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit39.thread64, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit39, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit35, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit31
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.049.1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit35 ], [ %1, %._crit_edge ], [ %.sroa.049.1, %bb.j ], [ %.sroa.049.0.lcssa, %bb.h ], [ %.sroa.049.2, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit39 ], [ %.sroa.049.2, %bb.l ], [ %.sroa.049.0.lcssa, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit31 ], [ %1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit39.thread64 ], [ %i.cc, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit126 ], [ %i.cg, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit134 ], [ %i.cf, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit132 ], [ %i.cd, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit128 ], [ %i.cb, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit ], [ %i.ce, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit.thread.loopexit.split.loop.exit130 ], [ %.sroa.049.086, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS7_EEEclINS_17__normal_iteratorIPS9_S2_IS9_SaIS9_EEEEEEbT_.exit ], [ %.sroa.049.086, %bb.c ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE17_M_realloc_insertIJRS7_fEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !237    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #33
  unreachable

_ZNKSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !207  ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !208    ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i, label %.noexc27.thread, label %bb.c

.noexc27.thread:                                  ; preds = %_ZNKSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr null, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !234
  br label %.loopexit

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE12_M_check_lenEmPKc.exit
  %4 = sdiv exact i64 %i.w, 24
  %i.aa = icmp ugt i64 %4, 384307168202282325
  br i1 %i.aa, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i, !prof !88

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32
          to label %.noexc27 unwind label %bb.f   ; 4 uses

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !208
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !207
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !234
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc27, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %.noexc27 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %.noexc27 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %i.s
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc27.thread
  %i.ah = phi ptr [ %i.x, %.noexc27.thread ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.noexc27.thread ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !207
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aj = load float, ptr %3, align 4, !tbaa !98
  store float %i.aj, ptr %i.ai, align 8, !tbaa !244
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.p, %.loopexit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.ak = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !205, !alias.scope !655, !noalias !654
  store <2 x ptr> %i.ak, ptr %.012.i.i.i, align 8, !tbaa !205, !alias.scope !654, !noalias !655
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !234, !alias.scope !655, !noalias !654
  store ptr %i.an, ptr %i.al, align 8, !tbaa !234, !alias.scope !654, !noalias !655
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !655, !noalias !654
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !244, !alias.scope !655, !noalias !654
  store float %i.aq, ptr %i.ao, align 8, !tbaa !244, !alias.scope !654, !noalias !655
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !24

_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.as, %.lr.ph.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.bc, %.lr.ph.i.i.i29 ], [ %i.at, %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 4 uses
  %.0911.i.i.i31 = phi ptr [ %i.bb, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.au = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !205, !alias.scope !657, !noalias !656
  store <2 x ptr> %i.au, ptr %.012.i.i.i30, align 8, !tbaa !205, !alias.scope !656, !noalias !657
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !234, !alias.scope !657, !noalias !656
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !234, !alias.scope !656, !noalias !657
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0911.i.i.i31, i8 0, i64 24, i1 false), !alias.scope !657, !noalias !656
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24
  %i.ba = load float, ptr %i.az, align 8, !tbaa !244, !alias.scope !657, !noalias !656
  store float %i.ba, ptr %i.ay, align 8, !tbaa !244, !alias.scope !656, !noalias !657
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bb, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !24

_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.at, %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ], [ %i.bc, %.lr.ph.i.i.i29 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !238
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bg) #30
  br label %_ZNSt12_Vector_baseISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseISt4pairISt6vectorIS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS6_EEfESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorISt4pairIS_IS0_ISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EEfESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit34, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !237
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !239
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !238
  ret void

bb.e:                                             ; preds = %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt15__new_allocatorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  %i.bl = tail call ptr @__cxa_begin_catch(ptr %i.bk) #31 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #30
  invoke void @__cxa_rethrow() #33
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.bi

bb.h:                                             ; preds = %bb.e
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #36
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.118") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::array", align 8       ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::strings_internal::SplitIterator", align 8 ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  store i64 0, ptr %4, align 8, !tbaa !669, !alias.scope !663
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.a, align 8, !tbaa !670, !alias.scope !663
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !alias.scope !663
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !671, !alias.scope !663
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !80, !noalias !663
  store i8 %i.f, ptr %i.d, align 8, !tbaa !80, !alias.scope !663
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !79, !noalias !663 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !71, !noalias !663 ; 4 uses
  %i.g = icmp eq ptr %.sroa.2.0.copyload.i.i.i, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.a, align 8, !tbaa !670, !alias.scope !663
  br label %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = invoke { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 %.sroa.0.0.copyload.i.i.i, ptr nonnull %.sroa.2.0.copyload.i.i.i, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 %.sroa.0.0.copyload.i.i.i
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  store i32 1, ptr %i.a, align 8, !tbaa !670, !alias.scope !663
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %i.m = load i64, ptr %4, align 8, !tbaa !669, !alias.scope !663 ; 5 uses
  %i.n = icmp ugt i64 %i.m, %.sroa.0.0.copyload.i.i.i
  br i1 %i.n, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i64 noundef %i.m, i64 noundef %.sroa.0.0.copyload.i.i.i) #33
          to label %.noexc13 unwind label %bb.i

.noexc13:                                         ; preds = %bb.f
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i: ; preds = %bb.e
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 %i.m ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.o, %i.q
end_hunk_6
