inline.NumInlined: 25585
inline.NumDeleted: 11329
begin_hunk_0_@_ZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS_14TableFilterSetE:bb.a

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.t
  unreachable

_ZNKSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.az = ashr exact i64 %i.ax, 4                 ; 3 uses
  %i.ba = icmp eq ptr %.sroa.11.059, %.sroa.043.060
  %.sroa.speculated.i.i.i = select i1 %i.ba, i64 1, i64 %i.az
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.az ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 576460752303423487)
  %i.be = select i1 %i.bc, i64 576460752303423487, i64 %i.bd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 4
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #36
          to label %.noexc25 unwind label %.loopexit ; 4 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ax ; 3 uses
  store i64 %.01261, ptr %i.bh, align 8, !tbaa !66
  %.sroa.6.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.au, ptr %.sroa.6.0..sroa_idx37, align 8, !tbaa !66
  %i.bi = icmp sgt i64 %i.ax, 0
  br i1 %i.bi, label %bb.u, label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i

bb.u:                                             ; preds = %.noexc25
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %.sroa.043.060, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i

_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i: ; preds = %bb.u, %.noexc25
  %.not.i21.i.i = icmp eq ptr %.sroa.043.060, null
  br i1 %.not.i21.i.i, label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.043.060) #34
  br label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.be
  br label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.r
  %.sroa.18.1 = phi ptr [ %i.bj, %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.18.058, %bb.r ]
  %.pn45 = phi ptr [ %i.bh, %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.11.059, %bb.r ] ; 4 uses
  %.sroa.043.1 = phi ptr [ %i.bg, %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.043.060, %bb.r ] ; 23 uses
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.pn45, i64 16 ; 5 uses
  %i.bk = add i64 %.01261, 1
  %i.bl = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.040.057) #38 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.p, %_ZNKSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit47 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp48 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit

.lr.ph66:                                         ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_.exit.i.i.i, %.preheader.i20.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph66, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.bo = phi ptr [ null, %.lr.ph66 ], [ %i.ck, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.bp = phi ptr [ null, %.lr.ph66 ], [ %i.cl, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %.065 = phi i64 [ 0, %.lr.ph66 ], [ %i.cn, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %i.bq = phi ptr [ null, %.lr.ph66 ], [ %i.cm, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.sroa.043.1, i64 %.065 ; 2 uses
  %.not.i27 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i27, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !66
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !66
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bm, align 8, !tbaa !227
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.y:                                             ; preds = %bb.w
  %i.bu = ptrtoint ptr %i.bo to i64
  %i.bv = ptrtoint ptr %i.bq to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 5 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.z, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  store ptr %i.bq, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
          to label %.noexc30 unwind label %.body.loopexit.split-lp

.noexc30:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i28 = tail call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i28, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i29 = icmp ne i64 %i.cc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i29)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #36
          to label %.noexc31 unwind label %.body.loopexit ; 4 uses

.noexc31:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.bw ; 2 uses
  %i.cg = load i64, ptr %i.br, align 8, !tbaa !66
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !66
  %i.ch = icmp sgt i64 %i.bw, 0
  br i1 %i.ch, label %bb.aa, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.aa:                                            ; preds = %.noexc31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr align 8 %i.bq, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.aa, %.noexc31
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bq) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ci, ptr %i.bm, align 8, !tbaa !227
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc ; 2 uses
  store ptr %i.cj, ptr %i.bn, align 8, !tbaa !211
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.x
  %i.ck = phi ptr [ %i.cj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.bo, %bb.x ]
  %i.cl = phi ptr [ %i.ci, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.bt, %bb.x ]
  %i.cm = phi ptr [ %i.ce, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.bq, %bb.x ] ; 2 uses
  %i.cn = add nuw i64 %.065, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.h
  br i1 %exitcond.not, label %._crit_edge67.thread, label %bb.w, !llvm.loop !1462

._crit_edge67.thread:                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  store ptr %i.cm, ptr %0, align 8
  br label %bb.ad

.body.loopexit:                                   ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bq, ptr %0, align 8
  br label %.body

.body.loopexit.split-lp:                          ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.loopexit.split-lp, %.body.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.body.loopexit ], [ %lpad.loopexit.split-lp, %.body.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %.body
  tail call void @_ZdlPv(ptr noundef nonnull %i.bq) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.ad:                                            ; preds = %._crit_edge67.thread, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEEEvT_SD_.exit.thread
  %.sroa.043.0.lcssa101108118 = phi ptr [ %.sroa.043.1, %._crit_edge67.thread ], [ %.sroa.043.0.lcssa102, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEEEvT_SD_.exit.thread ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.043.0.lcssa101108118) #34
  br label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EED2Ev.exit

_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EED2Ev.exit: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEEEvT_SD_.exit.thread, %bb.ad
  ret void

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.loopexit, %.loopexit.split-lp, %bb.ac, %.body
  %.sroa.043.052 = phi ptr [ %.sroa.043.1, %.body ], [ %.sroa.043.1, %bb.ac ], [ %.sroa.043.060, %.loopexit ], [ %.sroa.043.060, %.loopexit.split-lp ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.body ], [ %lpad.phi, %bb.ac ], [ %lpad.loopexit47, %.loopexit ], [ %lpad.loopexit.split-lp48, %.loopexit.split-lp ]
  %.not.i.i.i34 = icmp eq ptr %.sroa.043.052, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EED2Ev.exit35, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.043.052) #34
  br label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EED2Ev.exit35

_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EED2Ev.exit35: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.ae
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ExpressionRewriter10ApplyRulesERNS_15LogicalOperatorERKNS_6vectorISt17reference_wrapperINS_4RuleEELb1ESaIS6_EEENS_10unique_ptrINS_10ExpressionESt14default_deleteISC_ELb1EEERbb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.141") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(97) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.duckdb::vector.1097", align 8 ; 8 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 10 uses
  %9 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 4 uses
  %10 = alloca %"class.std::function.740", align 8 ; 12 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !1463   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1463 ; 2 uses
  %.not65 = icmp eq ptr %i.c, %i.e
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.af
  %.sroa.052.066 = phi ptr [ %i.c, %.lr.ph ], [ %i.ch, %bb.af ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %.sroa.052.066, align 8, !tbaa !1464
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17ExpressionMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.c unwind label %bb.u       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.e unwind label %bb.u

bb.e:                                             ; preds = %bb.d
  br i1 %i.o, label %bb.f, label %bb.ad

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i8 0, ptr %i.b, align 1, !tbaa !794
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.p = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.v       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.f, ptr %7, align 8, !tbaa !387
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !124  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !388  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.t, ptr %i.a, align 8, !tbaa !66
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.v     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.v, ptr %7, align 8, !tbaa !124
  %i.w = load i64, ptr %i.a, align 8, !tbaa !66
  store i64 %i.w, ptr %i.f, align 8, !tbaa !241
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.g
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.f, %bb.g ] ; 2 uses
  switch i64 %i.t, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.y = load i8, ptr %i.r, align 1, !tbaa !241
  store i8 %i.y, ptr %i.x, align 1, !tbaa !241
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  store i64 %i.z, ptr %i.g, align 8, !tbaa !388
  %i.aa = load ptr, ptr %7, align 8, !tbaa !124
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 0, ptr %i.ab, align 1, !tbaa !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.ac = load ptr, ptr %.sroa.052.066, align 8, !tbaa !1464 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.141") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(97) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.b, i1 noundef zeroext %5)
          to label %bb.k unwind label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %8, align 8               ; 2 uses
  %.not59 = icmp eq ptr %i.ag, null
  br i1 %.not59, label %bb.ab, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = ptrtoint ptr %i.ag to i64
  store i8 1, ptr %4, align 1, !tbaa !794
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !388
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.y, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.n unwind label %bb.x       ; 5 uses

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !124 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  %i.ap = load ptr, ptr %7, align 8, !tbaa !124   ; 6 uses
  %i.aq = icmp eq ptr %i.ap, %i.f                 ; 2 uses
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.n
  br i1 %i.aq, label %bb.o, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.n
  br i1 %i.aq, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ar = load i64, ptr %i.g, align 8, !tbaa !388 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %.not21.i = icmp eq ptr %7, %i.al
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.p, !prof !117

bb.p:                                             ; preds = %bb.o
  switch i64 %i.ar, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !241
  store i8 %i.at, ptr %i.am, align 1, !tbaa !241
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ap, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.au = load i64, ptr %i.g, align 8, !tbaa !388 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 %i.au, ptr %i.av, align 8, !tbaa !388
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !124
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !241
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !124
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !124
  %i.az = load <2 x i64>, ptr %i.g, align 8, !tbaa !241
  store <2 x i64> %i.az, ptr %i.ay, align 8, !tbaa !241
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ba = load i64, ptr %i.an, align 8, !tbaa !241
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !124
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.bc = load <2 x i64>, ptr %i.g, align 8, !tbaa !241
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !tbaa !241
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.am, ptr %7, align 8, !tbaa !124
  store i64 %i.ba, ptr %i.f, align 8, !tbaa !241
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.f, ptr %7, align 8, !tbaa !124
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.s, %bb.t
  %i.bd = phi ptr [ %i.am, %bb.s ], [ %i.f, %bb.t ], [ %i.ap, %bb.o ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.g, align 8, !tbaa !388
  store i8 0, ptr %i.bd, align 1, !tbaa !241
  %.pre = load i64, ptr %8, align 8, !tbaa !199
  br label %bb.y

bb.u:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %.noexc.i, %bb.f
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.w:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit42

bb.x:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit36

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.l
  %i.bi = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %i.ah, %bb.l ]
  store i64 %i.bi, ptr %9, align 8, !tbaa !199
  store ptr null, ptr %8, align 8, !tbaa !199
  invoke void @_ZN6duckdb18ExpressionRewriter10ApplyRulesERNS_15LogicalOperatorERKNS_6vectorISt17reference_wrapperINS_4RuleEELb1ESaIS6_EEENS_10unique_ptrINS_10ExpressionESt14default_deleteISC_ELb1EEERbb(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.141") align 8 %0, ptr noundef nonnull align 8 dereferenceable(97) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %9, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bj = load ptr, ptr %9, align 8, !tbaa !199   ; 3 uses
  %.not.i33 = icmp eq ptr %i.bj, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %bb.z
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(88) %i.bj) #33, !inline_history !364
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %9, align 8, !tbaa !199   ; 3 uses
  %.not.i34 = icmp eq ptr %i.bo, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit36, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i35

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i35: ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(88) %i.bo) #33, !inline_history !364
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit36

bb.ab:                                            ; preds = %bb.k
  %i.bs = load i8, ptr %i.b, align 1, !tbaa !794, !range !60, !noundef !61
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.ac, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit39

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %4, align 1, !tbaa !794
  %i.bu = load i64, ptr %3, align 8, !tbaa !199
  store i64 %i.bu, ptr %0, align 8, !tbaa !199
  store ptr null, ptr %3, align 8, !tbaa !199
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i, %bb.z, %bb.ac
  %.pr = load ptr, ptr %8, align 8, !tbaa !199    ; 3 uses
  %.not.i37 = icmp eq ptr %.pr, null
  br i1 %.not.i37, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit39, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i38

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i38: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bv = load ptr, ptr %.pr, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #33, !inline_history !364
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit39

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit39: ; preds = %bb.ab, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i38
  %.02457 = phi i32 [ 1, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i38 ], [ 1, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ], [ 3, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.by = load ptr, ptr %7, align 8, !tbaa !124   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.f
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit39
  call void @_ZdlPv(ptr noundef %i.by) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.ad

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit36: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i35, %bb.aa, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.x ], [ %i.bn, %bb.aa ], [ %i.bn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i35 ] ; 2 uses
  %i.ca = load ptr, ptr %8, align 8, !tbaa !199   ; 3 uses
  %.not.i40 = icmp eq ptr %i.ca, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit42, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i41

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i41: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit36
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(88) %i.ca) #33, !inline_history !364
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit42

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit42: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i41, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit36, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.w ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit36 ], [ %.pn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i41 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.ce = load ptr, ptr %7, align 8, !tbaa !124   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.f
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit42
  call void @_ZdlPv(ptr noundef %i.ce) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.v ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %.pn.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.ag

bb.ad:                                            ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.125 = phi i32 [ %.02457, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.e ]
  %i.cg = load ptr, ptr %6, align 8, !tbaa !1467  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef nonnull %i.cg) #34
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  switch i32 %.125, label %.loopexit [
    i32 0, label %bb.af
    i32 3, label %bb.af
  ]

bb.af:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.052.066, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ch, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.be, %bb.u ]
  %i.ci = load ptr, ptr %6, align 8, !tbaa !1467  ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit47, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef nonnull %i.ci) #34
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit47

_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit47: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.ao

._crit_edge:                                      ; preds = %bb.af, %bb.a
  %i.cj = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.cm, align 8
  %i.cn = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36, !inline_history !1470 ; 4 uses
  store ptr %1, ptr %i.cn, align 16, !tbaa !156
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1471
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %4, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !1473
  store ptr %i.cn, ptr %10, align 8, !tbaa !120
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionRewriter10ApplyRulesERNS0_15LogicalOperatorERKNS0_6vectorISt17reference_wrapperINS0_4RuleEELb1ESaISE_EEES5_RbbE3$_0E9_M_invokeERKSt9_Any_dataS6_", ptr %i.cl, align 8, !tbaa !1067
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionRewriter10ApplyRulesERNS0_15LogicalOperatorERKNS0_6vectorISt17reference_wrapperINS0_4RuleEELb1ESaISE_EEES5_RbbE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation", ptr %i.ck, align 8, !tbaa !266
  invoke void @_ZN6duckdb18ExpressionIterator17EnumerateChildrenERNS_10ExpressionERKSt8functionIFvRNS_10unique_ptrIS1_St14default_deleteIS1_ELb1EEEEE(ptr noundef nonnull align 8 dereferenceable(88) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %._crit_edge
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !266 ; 2 uses
  %.not.i48 = icmp eq ptr %i.co, null
  br i1 %.not.i48, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.cs = load i64, ptr %3, align 8, !tbaa !199
  store i64 %i.cs, ptr %0, align 8, !tbaa !199
  store ptr null, ptr %3, align 8, !tbaa !199
  br label %.loopexit

bb.al:                                            ; preds = %._crit_edge
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = load ptr, ptr %i.ck, align 8, !tbaa !266 ; 2 uses
  %.not.i49 = icmp eq ptr %i.cu, null
  br i1 %.not.i49, label %_ZNSt14_Function_baseD2Ev.exit50, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit50 unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit50:                 ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit, %_ZNSt14_Function_baseD2Ev.exit
  ret void

bb.ao:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit50, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit47
  %.pn31 = phi { ptr, i32 } [ %i.ct, %_ZNSt14_Function_baseD2Ev.exit50 ], [ %.pn.pn.pn.pn, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit47 ]
  resume { ptr, i32 } %.pn31
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_17ExpressionMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.6", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1475   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_17ExpressionMatcherESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !117

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.64, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_17ExpressionMatcherESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ExpressionRewriter14ConstantOrNullENS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEENS_5ValueE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.141") align 8 captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %4 = alloca %"class.duckdb::vector.74", align 8 ; 9 uses
  %5 = alloca %"class.duckdb::vector.74", align 8 ; 7 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #36
          to label %.noexc unwind label %bb.h     ; 5 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.b unwind label %bb.c, !noalias !1477

bb.b:                                             ; preds = %.noexc
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull %3)
          to label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i unwind label %bb.d, !noalias !1477

bb.c:                                             ; preds = %.noexc
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #33, !noalias !1477
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.b, %bb.c ]
  call void @_ZdlPv(ptr noundef nonnull %i.a) #34, !noalias !1477
  br label %.body

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.b
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #33, !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.d = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36
          to label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i10 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit42 ; 6 uses

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i10: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = ptrtoint ptr %i.a to i64
  store i64 %i.g, ptr %i.d, align 8, !tbaa !199
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !325
  store ptr %i.h, ptr %i.f, align 8, !tbaa !326
  store ptr %i.h, ptr %i.e, align 8, !tbaa !327
  %i.i = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36
          to label %.lr.ph.i.i.i.i.i.i.i14.preheader unwind label %bb.i ; 5 uses

.lr.ph.i.i.i.i.i.i.i14.preheader:                 ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %1, align 8, !tbaa !199
  store i64 %i.k, ptr %i.j, align 8, !tbaa !199
  store ptr null, ptr %1, align 8, !tbaa !199
  call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  %i.l = load i64, ptr %i.d, align 8, !tbaa !199, !alias.scope !1483, !noalias !1480
  store i64 %i.l, ptr %i.i, align 8, !tbaa !199, !alias.scope !1480, !noalias !1483
  store ptr null, ptr %i.d, align 8, !tbaa !199, !alias.scope !1483, !noalias !1480
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @_ZdlPv(ptr noundef nonnull %i.d) #34
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.i, ptr %5, align 8, !tbaa !325
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !326
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.n, ptr %i.p, align 8, !tbaa !327
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %2) #33
  invoke void @_ZN6duckdb18ExpressionRewriter14ConstantOrNullENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEENS_5ValueE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.141") align 8 %0, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i14.preheader
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #33
  %i.q = load ptr, ptr %5, align 8, !tbaa !325    ; 3 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !326  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !199 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(88) %i.s) #33, !inline_history !384
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !355

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !325
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.q, %bb.f ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit36, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.x) #34
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit36

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit36: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

bb.h:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit42: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_0
