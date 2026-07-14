inline.NumInlined: 7873
inline.NumDeleted: 3418
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6duckdb14PlanEnumerator27SolveJoinOrderApproximatelyEv:bb.a
  br i1 %i.l, label %.preheader325.lr.ph, label %._crit_edge514

.preheader325.lr.ph:                              ; preds = %.preheader326
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  br label %.preheader325

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit
  %i.t = phi ptr [ %i.bh, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ %i.c, %bb.a ]
  %.0461 = phi i64 [ %i.bg, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0259.0460 = phi ptr [ %.sroa.0259.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 12 uses
  %.sroa.24.0459 = phi ptr [ %.sroa.24.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 6 uses
  %.sroa.48.0458 = phi ptr [ %.sroa.48.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.u = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #30
          to label %.noexc unwind label %.loopexit331 ; 2 uses

.noexc:                                           ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  store i64 %.0461, ptr %i.u, align 8, !tbaa !19
  %i.w = ptrtoint ptr %i.u to i64
  store i64 %i.w, ptr %7, align 8, !tbaa !68
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull %7, i64 noundef 1)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %7, align 8, !tbaa !68     ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #27
  br label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %7, align 8, !tbaa !68    ; 2 uses
  %.not.i7.i = icmp eq ptr %i.aa, null
  br i1 %.not.i7.i, label %.body, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #27
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.not.i.i81 = icmp eq ptr %.sroa.24.0459, %.sroa.48.0458
  br i1 %.not.i.i81, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.x to i64
  store i64 %i.ab, ptr %.sroa.24.0459, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = ptrtoint ptr %.sroa.24.0459 to i64      ; 2 uses
  %i.ad = ptrtoint ptr %.sroa.0259.0460 to i64    ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.g, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc82 unwind label %.loopexit.split-lp332

.noexc82:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #30
          to label %.noexc83 unwind label %.loopexit331 ; 8 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ao = ptrtoint ptr %i.x to i64
  store i64 %i.ao, ptr %i.an, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0259.0460, %.sroa.24.0459
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc83
  %i.ap = ptrtoaddr ptr %i.am to i64
  %i.aq = sub i64 %i.ac, %i.ad
  %i.ar = add i64 %i.aq, -8                       ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 24
  %i.au = sub i64 %i.ad, %i.ap
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond812.a = or i1 %min.iters.check, %diff.check
  br i1 %or.cond812.a, label %.lr.ph.i.i.i.i.i.i.i.preheader871, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %.sroa.0259.0460, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.ay ; 2 uses
  %next.gep789 = getelementptr i8, ptr %.sroa.0259.0460, i64 %i.ay ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.az = getelementptr i8, ptr %next.gep789, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep789, align 8, !alias.scope !726, !noalias !723
  %wide.load790 = load <2 x i64>, ptr %i.az, align 8, !alias.scope !726, !noalias !723
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !723, !noalias !726
  store <2 x i64> %wide.load790, ptr %i.ba, align 8, !alias.scope !723, !noalias !726
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !728

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader871

.lr.ph.i.i.i.i.i.i.i.preheader871:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0259.0460, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader871, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader871 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader871 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !726, !noalias !723
  store i64 %i.bc, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !723, !noalias !726
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %.sroa.24.0459
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !729

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc83
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.am, %.noexc83 ], [ %i.aw, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0259.0460, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.0460) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.e
  %.sroa.48.2 = phi ptr [ %i.bf, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.48.0458, %bb.e ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.24.0459, %bb.e ]
  %.sroa.0259.3 = phi ptr [ %i.am, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0259.0460, %bb.e ] ; 2 uses
  %.sroa.24.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.bg = add nuw i64 %.0461, 1                   ; 2 uses
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !450, !nonnull !362, !align !363 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !443
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !444
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3
  %i.bq = icmp ult i64 %i.bg, %i.bp
  br i1 %i.bq, label %.lr.ph, label %.preheader326, !llvm.loop !730

.loopexit331:                                     ; preds = %.lr.ph, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit333 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp332:                            ; preds = %bb.g
  %lpad.loopexit.split-lp334 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader325:                                    ; preds = %.preheader325.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165
  %i.br = phi i64 [ %i.k, %.preheader325.lr.ph ], [ %i.mc, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 8 uses
  %i.bs = phi i64 [ %i.i, %.preheader325.lr.ph ], [ %i.ma, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ]
  %i.bt = phi i64 [ %i.h, %.preheader325.lr.ph ], [ %i.lz, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ]
  %.sroa.0259.1512 = phi ptr [ %.sroa.0259.0.lcssa, %.preheader325.lr.ph ], [ %.sroa.0259.4, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 21 uses
  %.sroa.24.1511 = phi ptr [ %.sroa.24.0.lcssa, %.preheader325.lr.ph ], [ %.sroa.24.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 3 uses
  %.sroa.48.1510 = phi ptr [ %.sroa.48.0.lcssa, %.preheader325.lr.ph ], [ %.sroa.48.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 5 uses
  %.sroa.0259.1512793 = ptrtoaddr ptr %.sroa.0259.1512 to i64
  br label %bb.j

.loopexit324:                                     ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104, %bb.j
  %.sroa.0248.1.lcssa = phi ptr [ %.sroa.0248.0473, %bb.j ], [ %.sroa.0248.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %.1302.lcssa = phi i64 [ %.0301474, %bb.j ], [ %.2303, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0300475, %bb.j ], [ %.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %exitcond588.not = icmp eq i64 %i.bx, %i.br
  br i1 %exitcond588.not, label %bb.i, label %bb.j, !llvm.loop !731

bb.i:                                             ; preds = %.loopexit324
  %.not = icmp eq ptr %.sroa.0248.1.lcssa, null
  br i1 %.not, label %.split, label %bb.bp

bb.j:                                             ; preds = %.preheader325, %.loopexit324
  %.054476 = phi i64 [ 0, %.preheader325 ], [ %i.bx, %.loopexit324 ] ; 3 uses
  %.0300475 = phi i64 [ 0, %.preheader325 ], [ %.1.lcssa, %.loopexit324 ] ; 2 uses
  %.0301474 = phi i64 [ 0, %.preheader325 ], [ %.1302.lcssa, %.loopexit324 ] ; 2 uses
  %.sroa.0248.0473 = phi ptr [ null, %.preheader325 ], [ %.sroa.0248.1.lcssa, %.loopexit324 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1512, i64 %.054476
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = inttoptr i64 %i.bv to ptr               ; 5 uses
  %i.bx = add nuw i64 %.054476, 1                 ; 4 uses
  %i.by = icmp ult i64 %i.bx, %i.br
  br i1 %i.by, label %.lr.ph469, label %.loopexit324

.lr.ph469:                                        ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph469, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104
  %.060467 = phi i64 [ %i.bx, %.lr.ph469 ], [ %i.er, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 3 uses
  %.1466 = phi i64 [ %.0300475, %.lr.ph469 ], [ %.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %.1302465 = phi i64 [ %.0301474, %.lr.ph469 ], [ %.2303, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %.sroa.0248.1464 = phi ptr [ %.sroa.0248.0473, %.lr.ph469 ], [ %.sroa.0248.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1512, i64 %.060467
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = inttoptr i64 %i.cb to ptr               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.cd = load ptr, ptr %0, align 8, !tbaa !679, !nonnull !362, !align !363 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !alias.scope !732
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !732
  store ptr %i.cc, ptr %6, align 8, !tbaa !132, !noalias !732
  store ptr %8, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !169, !noalias !732
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFbRN6duckdb12NeighborInfoEEZNKS0_15QueryGraphEdges14GetConnectionsERNS0_15JoinRelationSetES6_E3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFbRN6duckdb12NeighborInfoEEZNKS0_15QueryGraphEdges14GetConnectionsERNS0_15JoinRelationSetES6_E3$_0E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.m, align 8, !tbaa !619, !noalias !732
  %i.ce = load i64, ptr %i.bz, align 8, !tbaa !59, !noalias !732 ; 2 uses
  %.not.i.i96 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i96, label %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i, %.lr.ph.i.i
  %i.cj = phi i64 [ %i.ce, %.lr.ph.i.i ], [ %i.ds, %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i ] ; 4 uses
  %.017.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dt, %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i ] ; 3 uses
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !68, !noalias !732
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.017.i.i
  %i.cm = load i64, ptr %i.cf, align 8, !tbaa !69, !noalias !732
  %.not.not.i.i.i.i = icmp eq i64 %i.cm, 0
  %i.cn = load i64, ptr %i.cl, align 8            ; 4 uses
  br i1 %.not.not.i.i.i.i, label %.preheader.i, label %bb.n

.preheader.i:                                     ; preds = %bb.l, %bb.m
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.m ], [ %i.ci, %bb.l ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !33 ; 4 uses
  %.not.i.i.i.i98 = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i98, label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %.preheader.i
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !19
  %i.cq = icmp eq i64 %i.cn, %i.cp
  br i1 %i.cq, label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i, label %.preheader.i, !llvm.loop !160

bb.n:                                             ; preds = %bb.l
  %i.cr = load i64, ptr %i.ch, align 8, !tbaa !76, !noalias !732 ; 2 uses
  %i.cs = urem i64 %i.cn, %i.cr                   ; 2 uses
  %i.ct = load ptr, ptr %i.cg, align 8, !tbaa !77, !noalias !732
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cs
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !33 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !19
  %i.cz = icmp eq i64 %i.cn, %i.cy
  br i1 %i.cz, label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.q
  %i.da = icmp eq i64 %i.cn, %i.dd
  br i1 %i.da, label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !79

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %bb.p
  %.020.i.i.i.i.i.i = phi ptr [ %i.db, %bb.p ], [ %i.cw, %bb.o ]
  %i.db = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !33 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not18.i.i.i.i.i.i, label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !19 ; 2 uses
  %i.de = urem i64 %i.dd, %i.cr
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.de, %i.cs
  br i1 %.not19.i.i.i.i.i.i, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !79

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.q
  br label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i, !llvm.loop !79

_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i: ; preds = %bb.p, %bb.m, %bb.o
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.m ], [ %i.cw, %bb.o ], [ %i.db, %bb.p ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !53 ; 2 uses
  %.not.i = icmp eq ptr %i.dg, null
  br i1 %.not.i, label %.noexc.i227, label %.noexc.i, !prof !51

.noexc.i227:                                      ; preds = %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i
  %i.dh = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.di, ptr %5, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 49, ptr %i.a, align 8, !tbaa !19
  %i.dj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc228 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc228:                                        ; preds = %.noexc.i227
  store ptr %i.dj, ptr %5, align 8, !tbaa !25
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.dj, ptr noundef nonnull align 1 dereferenceable(49) @.str.33, i64 49, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  store i8 0, ptr %i.dm, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc228
  invoke void @__cxa_throw(ptr nonnull %i.dh, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.u unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i227
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %.noexc228
  %.0.i.i = phi i1 [ false, %bb.r ], [ true, %.noexc228 ] ; 2 uses
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dp = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.di
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.dp) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i.i, label %bb.t, label %.body175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i.i, label %bb.t, label %.body175

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.dh) #28
  br label %.body175

bb.u:                                             ; preds = %bb.r
  unreachable

.noexc.i:                                         ; preds = %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i
  %i.dr = add nuw i64 %.017.i.i, 1
  invoke void @_ZNK6duckdb15QueryGraphEdges21EnumerateNeighborsDFSERNS_15JoinRelationSetESt17reference_wrapperINS0_9QueryEdgeEEmRKSt8functionIFbRNS_12NeighborInfoEEE(ptr noundef nonnull readonly align 8 dereferenceable(80) %i.cd, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bw, ptr nonnull %i.dg, i64 noundef %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc5.i unwind label %bb.w

.noexc5.i:                                        ; preds = %.noexc.i
  %.pre.i.i = load i64, ptr %i.bz, align 8, !tbaa !59, !noalias !732
  br label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i

_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.preheader.i, %.noexc5.i, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.n
  %i.ds = phi i64 [ %i.cj, %.preheader.i ], [ %.pre.i.i, %.noexc5.i ], [ %i.cj, %bb.n ], [ %i.cj, %..loopexit_crit_edge21.i.i.i.i.i.i ], [ %i.cj, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.dt = add nuw i64 %.017.i.i, 1                ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  br i1 %i.du, label %bb.l, label %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.i, !llvm.loop !161

_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.i: ; preds = %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i
  %.pr.i = load ptr, ptr %i.m, align 8, !tbaa !154, !noalias !732 ; 2 uses
  %.not.i6.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i6.i, label %bb.z, label %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.thread.i

end_hunk_0
begin_hunk_1_@_ZN6duckdb14PlanEnumerator27SolveJoinOrderApproximatelyEv:bb.a
  %i.jo = load ptr, ptr %i.b, align 8, !tbaa !450, !nonnull !362, !align !363
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 272 ; 2 uses
  invoke void @_ZN6duckdb15QueryGraphEdges10CreateEdgeERNS_15JoinRelationSetES2_NS_12optional_ptrINS_10FilterInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr null)
          to label %.noexc136 unwind label %bb.bk

.noexc136:                                        ; preds = %bb.bg
  invoke void @_ZN6duckdb15QueryGraphEdges10CreateEdgeERNS_15JoinRelationSetES2_NS_12optional_ptrINS_10FilterInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr null)
          to label %_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit unwind label %bb.bk

_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit: ; preds = %.noexc136
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.jq = load ptr, ptr %0, align 8, !tbaa !679, !nonnull !362, !align !363
  invoke void @_ZNK6duckdb15QueryGraphEdges14GetConnectionsERNS_15JoinRelationSetES2_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.63") align 8 %12, ptr noundef nonnull align 8 dereferenceable(80) %i.jq, ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr noundef nonnull align 8 dereferenceable(16) %i.jn)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit
  %i.jr = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb14PlanEnumerator8EmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.bi unwind label %bb.bm     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %.sroa.0.0..sroa.0.0. = load i64, ptr %.sroa.0, align 16, !tbaa !19 ; 2 uses
  %.sroa.8.0..sroa.8.8. = load i64, ptr %.sroa.8, align 8, !tbaa !19 ; 2 uses
  %spec.select = call i64 @llvm.umax.i64(i64 %.sroa.0.0..sroa.0.0., i64 %.sroa.8.0..sroa.8.8.)
  %spec.select315 = call i64 @llvm.umin.i64(i64 %.sroa.0.0..sroa.0.0., i64 %.sroa.8.0..sroa.8.8.)
  %i.js = load ptr, ptr %12, align 8, !tbaa !171  ; 2 uses
  %.not.i.i.i140 = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141, label %bb.bo

bb.bj:                                            ; preds = %bb.be
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %.body112

bb.bk:                                            ; preds = %.noexc136, %bb.bg, %bb.bf
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body112

bb.bl:                                            ; preds = %_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139

bb.bm:                                            ; preds = %bb.bh
  %i.jw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jx = load ptr, ptr %12, align 8, !tbaa !171  ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef nonnull %i.jx) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139

bb.bo:                                            ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef nonnull %i.js) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141: ; preds = %bb.bi, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bp

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139: ; preds = %bb.bn, %bb.bm, %bb.bl
  %.pn63 = phi { ptr, i32 } [ %i.jv, %bb.bl ], [ %i.jw, %bb.bm ], [ %i.jw, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.body112

.body112:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.at, %bb.as, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221, %bb.ak, %bb.ao, %bb.bj, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bd
  %.pn69 = phi { ptr, i32 } [ %i.ju, %bb.bk ], [ %i.fu, %bb.ak ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn308, %bb.bd ], [ %i.jt, %bb.bj ], [ %.pn63, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139 ], [ %i.iu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221 ], [ %.pn9.i218, %bb.ax ], [ %i.iu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222 ], [ %i.hd, %bb.ao ], [ %i.ij, %bb.as ], [ %i.in, %bb.at ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.body

bb.bp:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141, %bb.i
  %.4305 = phi i64 [ %.1302.lcssa, %bb.i ], [ %spec.select, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141 ] ; 3 uses
  %.4 = phi i64 [ %.1.lcssa, %bb.i ], [ %spec.select315, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141 ] ; 3 uses
  %i.jy = load ptr, ptr %i.b, align 8, !tbaa !450, !nonnull !362, !align !363
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 144
  %.not.i.i142 = icmp ult i64 %.4, %i.br
  br i1 %.not.i.i142, label %bb.bq, label %.invoke

.invoke:                                          ; preds = %bb.bq, %bb.bp
  %i.ka = phi i64 [ %.4, %bb.bp ], [ %.4305, %bb.bq ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.ka, i64 noundef %i.br) #29
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bq:                                            ; preds = %bb.bp
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1512, i64 %.4 ; 4 uses
  %.not.i.i144 = icmp ult i64 %.4305, %i.br
  br i1 %.not.i.i144, label %bb.br, label %.invoke

bb.br:                                            ; preds = %bb.bq
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !456
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1512, i64 %.4305 ; 4 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !456
  %i.kf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %i.jz, ptr noundef nonnull align 8 dereferenceable(16) %i.kc, ptr noundef nonnull align 8 dereferenceable(16) %i.ke)
          to label %bb.bs unwind label %.body.thread640 ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 4 uses
  %.not.i.i147 = icmp eq ptr %i.kg, %.sroa.24.1511
  br i1 %.not.i.i147, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = sub i64 %i.bt, %i.kh                    ; 3 uses
  %i.kj = icmp sgt i64 %i.ki, 8
  br i1 %i.kj, label %bb.bu, label %bb.bv, !prof !153

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kd, ptr nonnull align 8 %i.kg, i64 %i.ki, i1 false)
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bt
  %i.kk = icmp eq i64 %i.ki, 8
  br i1 %i.kk, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kl = load i64, ptr %i.kg, align 8
  store i64 %i.kl, ptr %i.kd, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bs
  %i.km = getelementptr inbounds i8, ptr %.sroa.24.1511, i64 -8 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 4 uses
  %.not.i.i148 = icmp eq ptr %i.kn, %i.km
  br i1 %.not.i.i148, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp                    ; 3 uses
  %i.kr = icmp sgt i64 %i.kq, 8
  br i1 %i.kr, label %bb.bz, label %bb.ca, !prof !153

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kb, ptr nonnull align 8 %i.kn, i64 %i.kq, i1 false)
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.ks = icmp eq i64 %i.kq, 8
  br i1 %i.ks, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.kt = load i64, ptr %i.kn, align 8
  store i64 %i.kt, ptr %i.kb, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx
  %i.ku = getelementptr inbounds i8, ptr %.sroa.24.1511, i64 -16 ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.ku, %.sroa.48.1510
  br i1 %.not.i.i150, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kv = ptrtoint ptr %i.kf to i64
  store i64 %i.kv, ptr %i.ku, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165

bb.ce:                                            ; preds = %bb.cc
  %i.kw = ptrtoint ptr %.sroa.48.1510 to i64      ; 2 uses
  %i.kx = sub i64 %i.kw, %i.bs                    ; 3 uses
  %i.ky = icmp eq i64 %i.kx, 9223372036854775800
  br i1 %i.ky, label %bb.cf, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc163 unwind label %.body.thread.loopexit.split-lp

.noexc163:                                        ; preds = %bb.cf
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151: ; preds = %bb.ce
  %i.kz = ashr exact i64 %i.kx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i152 = call i64 @llvm.umax.i64(i64 %i.kz, i64 1)
  %i.la = add nsw i64 %.sroa.speculated.i.i.i.i152, %i.kz ; 2 uses
  %i.lb = icmp ult i64 %i.la, %i.kz
  %i.lc = call i64 @llvm.umin.i64(i64 %i.la, i64 1152921504606846975)
  %i.ld = select i1 %i.lb, i64 1152921504606846975, i64 %i.lc ; 3 uses
  %.not.i.i.i.i153 = icmp ne i64 %i.ld, 0
  call void @llvm.assume(i1 %.not.i.i.i.i153)
  %i.le = shl nuw nsw i64 %i.ld, 3
  %i.lf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.le) #30
          to label %.noexc164 unwind label %.body.thread.loopexit ; 8 uses

.noexc164:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.kx
  %i.lh = ptrtoint ptr %i.kf to i64
  store i64 %i.lh, ptr %i.lg, align 8
  %.not10.i.i.i.i.i.i.i154 = icmp eq ptr %.sroa.0259.1512, %.sroa.48.1510
  br i1 %.not10.i.i.i.i.i.i.i154, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162, label %.lr.ph.i.i.i.i.i.i.i155.preheader

.lr.ph.i.i.i.i.i.i.i155.preheader:                ; preds = %.noexc164
  %i.li = ptrtoaddr ptr %i.lf to i64
  %13 = ptrtoint ptr %.sroa.0259.1512 to i64
  %i.lj = sub i64 %i.kw, %13
  %14 = add i64 %i.lj, -8                         ; 2 uses
  %i.lk = lshr i64 %14, 3
  %i.ll = add nuw nsw i64 %i.lk, 1                ; 2 uses
  %min.iters.check797 = icmp ult i64 %14, 24
  %i.lm = sub i64 %.sroa.0259.1512793, %i.li
  %diff.check794 = icmp ugt i64 %i.lm, -32
  %or.cond813 = or i1 %min.iters.check797, %diff.check794
  br i1 %or.cond813, label %.lr.ph.i.i.i.i.i.i.i155.preheader816, label %vector.ph798

vector.ph798:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i155.preheader
  %n.vec800 = and i64 %i.ll, 4611686018427387900  ; 3 uses
  %i.ln = shl i64 %n.vec800, 3                    ; 2 uses
  %i.lo = getelementptr i8, ptr %i.lf, i64 %i.ln  ; 2 uses
  %i.lp = getelementptr i8, ptr %.sroa.0259.1512, i64 %i.ln
  br label %vector.body801

vector.body801:                                   ; preds = %vector.body801, %vector.ph798
  %index802 = phi i64 [ 0, %vector.ph798 ], [ %index.next807, %vector.body801 ] ; 2 uses
  %i.lq = shl i64 %index802, 3                    ; 2 uses
  %next.gep803.a = getelementptr i8, ptr %i.lf, i64 %i.lq ; 2 uses
  %next.gep804 = getelementptr i8, ptr %.sroa.0259.1512, i64 %i.lq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.lr = getelementptr i8, ptr %next.gep804, i64 16
  %wide.load805.a = load <2 x i64>, ptr %next.gep804, align 8, !alias.scope !749, !noalias !746
  %wide.load806 = load <2 x i64>, ptr %i.lr, align 8, !alias.scope !749, !noalias !746
  %i.ls = getelementptr i8, ptr %next.gep803.a, i64 16
  store <2 x i64> %wide.load805.a, ptr %next.gep803.a, align 8, !alias.scope !746, !noalias !749
  store <2 x i64> %wide.load806, ptr %i.ls, align 8, !alias.scope !746, !noalias !749
  %index.next807 = add nuw i64 %index802, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next807, %n.vec800
  br i1 %i.lt, label %middle.block808, label %vector.body801, !llvm.loop !751

middle.block808:                                  ; preds = %vector.body801
  %cmp.n809 = icmp eq i64 %i.ll, %n.vec800
  br i1 %cmp.n809, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162, label %.lr.ph.i.i.i.i.i.i.i155.preheader816

.lr.ph.i.i.i.i.i.i.i155.preheader816:             ; preds = %.lr.ph.i.i.i.i.i.i.i155.preheader, %middle.block808
  %.012.i.i.i.i.i.i.i156.ph = phi ptr [ %i.lf, %.lr.ph.i.i.i.i.i.i.i155.preheader ], [ %i.lo, %middle.block808 ]
  %.0911.i.i.i.i.i.i.i157.ph = phi ptr [ %.sroa.0259.1512, %.lr.ph.i.i.i.i.i.i.i155.preheader ], [ %i.lp, %middle.block808 ]
  br label %.lr.ph.i.i.i.i.i.i.i155

.lr.ph.i.i.i.i.i.i.i155:                          ; preds = %.lr.ph.i.i.i.i.i.i.i155.preheader816, %.lr.ph.i.i.i.i.i.i.i155
  %.012.i.i.i.i.i.i.i156 = phi ptr [ %i.lw, %.lr.ph.i.i.i.i.i.i.i155 ], [ %.012.i.i.i.i.i.i.i156.ph, %.lr.ph.i.i.i.i.i.i.i155.preheader816 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i157 = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i.i.i155 ], [ %.0911.i.i.i.i.i.i.i157.ph, %.lr.ph.i.i.i.i.i.i.i155.preheader816 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.lu = load i64, ptr %.0911.i.i.i.i.i.i.i157, align 8, !alias.scope !749, !noalias !746
  store i64 %i.lu, ptr %.012.i.i.i.i.i.i.i156, align 8, !alias.scope !746, !noalias !749
  %i.lv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i157, i64 8 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i156, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i158 = icmp eq ptr %i.lv, %.sroa.48.1510
  br i1 %.not.i.i.i.i.i.i.i158, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162, label %.lr.ph.i.i.i.i.i.i.i155, !llvm.loop !752

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162: ; preds = %.lr.ph.i.i.i.i.i.i.i155, %middle.block808, %.noexc164
  %.0.lcssa.i.i.i.i.i.i.i160 = phi ptr [ %i.lf, %.noexc164 ], [ %i.lo, %middle.block808 ], [ %i.lw, %.lr.ph.i.i.i.i.i.i.i155 ]
  %i.lx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i160, i64 8
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.1512) #27
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.ld
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162, %bb.cd
  %.sroa.48.3 = phi ptr [ %i.ly, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162 ], [ %.sroa.48.1510, %bb.cd ]
  %.sroa.24.3 = phi ptr [ %i.lx, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162 ], [ %i.km, %bb.cd ] ; 2 uses
  %.sroa.0259.4 = phi ptr [ %i.lf, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162 ], [ %.sroa.0259.1512, %bb.cd ] ; 3 uses
  %i.lz = ptrtoint ptr %.sroa.24.3 to i64         ; 2 uses
  %i.ma = ptrtoint ptr %.sroa.0259.4 to i64       ; 2 uses
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = ashr exact i64 %i.mb, 3                 ; 2 uses
  %i.md = icmp ugt i64 %i.mc, 1
  br i1 %i.md, label %.preheader325, label %._crit_edge514.thread, !llvm.loop !753

.body.thread640:                                  ; preds = %bb.br
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body.thread.loopexit:                            ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread.loopexit.split-lp:                   ; preds = %bb.cf
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

._crit_edge514:                                   ; preds = %.preheader326
  %.not.i.i.i166 = icmp eq ptr %.sroa.0259.0.lcssa, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit, label %._crit_edge514.thread

._crit_edge514.thread:                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165, %._crit_edge514
  %.sroa.0259.1.lcssa639 = phi ptr [ %.sroa.0259.0.lcssa, %._crit_edge514 ], [ %.sroa.0259.4, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.1.lcssa639) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit: ; preds = %._crit_edge514, %._crit_edge514.thread
  ret void

.body:                                            ; preds = %.loopexit.split-lp, %.loopexit331, %.loopexit.split-lp332, %.body112, %.body99, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i, %bb.c
  %.sroa.0259.2 = phi ptr [ %.sroa.0259.1512, %.body99 ], [ %.sroa.0259.0460, %bb.c ], [ %.sroa.0259.0460, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i ], [ %.sroa.0259.1512, %.body112 ], [ %.sroa.0259.0460, %.loopexit.split-lp332 ], [ %.sroa.0259.0460, %.loopexit331 ], [ %.sroa.0259.1512, %.loopexit.split-lp ] ; 2 uses
  %.pn79 = phi { ptr, i32 } [ %.pn73.pn, %.body99 ], [ %i.z, %bb.c ], [ %i.z, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i ], [ %.pn69, %.body112 ], [ %lpad.loopexit.split-lp334, %.loopexit.split-lp332 ], [ %lpad.loopexit333, %.loopexit331 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i167 = icmp eq ptr %.sroa.0259.2, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit168, label %.body.thread

.body.thread:                                     ; preds = %.body.thread640, %.body.thread.loopexit, %.body.thread.loopexit.split-lp, %.body
  %.pn79313 = phi { ptr, i32 } [ %.pn79, %.body ], [ %lpad.loopexit328, %.body.thread.loopexit ], [ %lpad.loopexit.split-lp329, %.body.thread.loopexit.split-lp ], [ %lpad.loopexit, %.body.thread640 ]
  %.sroa.0259.2312 = phi ptr [ %.sroa.0259.2, %.body ], [ %.sroa.0259.1512, %.body.thread.loopexit ], [ %.sroa.0259.1512, %.body.thread.loopexit.split-lp ], [ %.sroa.0259.1512, %.body.thread640 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.2312) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit168

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit168: ; preds = %.body, %.body.thread
  %.pn79314 = phi { ptr, i32 } [ %.pn79, %.body ], [ %.pn79313, %.body.thread ]
  resume { ptr, i32 } %.pn79314

bb.cg:                                            ; preds = %bb.bb
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb17QueryGraphManager17GetFilterBindingsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(352) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb8Settings3GetINS_31DebugForceNoCrossProductSettingENS_13ClientContextEEENSt9enable_ifIXsr3std7is_sameINT_11RETURN_TYPEEbEE5valueEbE4typeERKT0_(ptr noundef nonnull align 8 dereferenceable(512) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::Value", align 8     ; 9 uses
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  %i.a = invoke noundef zeroext i1 @_ZN6duckdb8Settings21TryGetSettingInternalERKNS_13ClientContextEmRNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(512) %0, i64 noundef 21, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not = xor i1 %i.a, true
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !434
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noundef zeroext i1 @_ZN6duckdb12BooleanValue3GetERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.h = icmp eq ptr @.str.47, @.str.48
  br label %_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit

_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit:        ; preds = %bb.g, %bb.d
  %.04 = phi i1 [ %i.e, %bb.d ], [ %i.h, %bb.g ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i1 %.04

bb.h:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.f, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_18SingleJoinRelationESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !443
  %i.e = load ptr, ptr %0, align 8, !tbaa !444    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_1
begin_hunk_2_@_ZN6duckdb15RelationManager20ExtractJoinRelationsERNS_18JoinOrderOptimizerERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS3_ELb1ESaIS7_EEENS_12optional_ptrIS3_Lb1EEE:bb.a

_ZNKSt14default_deleteIN6duckdb16LogicalAggregateEEclEPS1_.exit.i981: ; preds = %bb.pb
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !352
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 8
  %i.axu = load ptr, ptr %i.axt, align 8
  call void %i.axu(ptr noundef nonnull align 8 dereferenceable(225) %i.axr) #28, !inline_history !918
  br label %_ZNSt10unique_ptrIN6duckdb16LogicalAggregateESt14default_deleteIS1_EED2Ev.exit982

_ZNSt10unique_ptrIN6duckdb16LogicalAggregateESt14default_deleteIS1_EED2Ev.exit982: ; preds = %_ZNKSt14default_deleteIN6duckdb16LogicalAggregateEEclEPS1_.exit.i981, %bb.pb, %.body855
  %.pn204.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body856, %.body855 ], [ %.pn204.pn.pn, %bb.pb ], [ %.pn204.pn.pn, %_ZNKSt14default_deleteIN6duckdb16LogicalAggregateEEclEPS1_.exit.i981 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #28
  br label %bb.pc

bb.pc:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16LogicalAggregateESt14default_deleteIS1_EED2Ev.exit982, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit866
  %.pn204.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn204.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb16LogicalAggregateESt14default_deleteIS1_EED2Ev.exit982 ], [ %.pn192.pn, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit866 ]
  call void @_ZN6duckdb18JoinOrderOptimizerD2Ev(ptr noundef nonnull align 8 dead_on_return(816) dereferenceable(816) %55) #28
  br label %.body832

.body832:                                         ; preds = %bb.ms, %bb.mf, %bb.pc
  %.pn204.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn204.pn.pn.pn.pn, %bb.pc ], [ %i.aoy, %bb.ms ], [ %i.ana, %bb.mf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #28
  call void @_ZN6duckdb13RelationStatsD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %54) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28
  br label %.loopexit.split-lp1064thread-pre-split

bb.pd:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #28
  invoke void @_ZN6duckdb18JoinOrderOptimizer17GetDelimScanStatsEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::RelationStats") align 8 %69, ptr noundef nonnull align 8 dereferenceable(816) %1)
          to label %bb.pe unwind label %bb.pl

bb.pe:                                            ; preds = %bb.pd
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.pf unwind label %bb.pm

bb.pf:                                            ; preds = %bb.pe
  %i.axv = load ptr, ptr %11, align 8, !tbaa !476
  %i.axw = getelementptr inbounds nuw i8, ptr %69, i64 24
  %i.axx = load i64, ptr %i.axw, align 8, !tbaa !402
  invoke void @_ZN6duckdb15LogicalOperator23SetEstimatedCardinalityEm(ptr noundef nonnull align 8 dereferenceable(97) %i.axv, i64 noundef %i.axx)
          to label %bb.pg unwind label %bb.pm

bb.pg:                                            ; preds = %bb.pf
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ph unwind label %bb.pm

bb.ph:                                            ; preds = %bb.pg
  invoke void @_ZN6duckdb15RelationManager28AddAggregateOrWindowRelationERNS_15LogicalOperatorENS_12optional_ptrIS1_Lb1EEERKNS_13RelationStatsENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(97) %2, ptr %4, ptr noundef nonnull align 8 dereferenceable(104) %69, i8 zeroext poison)
          to label %bb.pi unwind label %bb.pm

bb.pi:                                            ; preds = %bb.ph
  %i.axy = getelementptr inbounds nuw i8, ptr %69, i64 72
  %i.axz = load ptr, ptr %i.axy, align 8, !tbaa !25 ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %69, i64 88
  %i.ayb = icmp eq ptr %i.axz, %i.aya
  br i1 %i.ayb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i988, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i987

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i987: ; preds = %bb.pi
  call void @_ZdlPv(ptr noundef %i.axz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i988

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i988: ; preds = %bb.pi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i987
  %i.ayc = getelementptr inbounds nuw i8, ptr %69, i64 48 ; 2 uses
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !435 ; 3 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %69, i64 56
  %i.ayf = load ptr, ptr %i.aye, align 8, !tbaa !436 ; 2 uses
  %.not4.i.i.i.i989 = icmp eq ptr %i.ayd, %i.ayf
  br i1 %.not4.i.i.i.i989, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i997, label %.lr.ph.i.i.i.i990

.lr.ph.i.i.i.i990:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i988, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i993
  %.05.i.i.i.i991 = phi ptr [ %i.ayj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i993 ], [ %i.ayd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i988 ] ; 3 uses
  %i.ayg = load ptr, ptr %.05.i.i.i.i991, align 8, !tbaa !25 ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i991, i64 16
  %i.ayi = icmp eq ptr %i.ayg, %i.ayh
  br i1 %i.ayi, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i993, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i992

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i992: ; preds = %.lr.ph.i.i.i.i990
  call void @_ZdlPv(ptr noundef %i.ayg) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i993

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i993: ; preds = %.lr.ph.i.i.i.i990, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i992
  %i.ayj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i991, i64 32 ; 2 uses
  %.not.i.i.i.i994 = icmp eq ptr %i.ayj, %i.ayf
  br i1 %.not.i.i.i.i994, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i995, label %.lr.ph.i.i.i.i990, !llvm.loop !437

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i995: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i993
  %.pr.i.i996 = load ptr, ptr %i.ayc, align 8, !tbaa !435
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i997

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i997: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i995, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i988
  %i.ayk = phi ptr [ %.pr.i.i996, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i995 ], [ %i.ayd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i988 ] ; 2 uses
  %.not.i.i1.i.i998 = icmp eq ptr %i.ayk, null
  br i1 %.not.i.i1.i.i998, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i999, label %bb.pj

bb.pj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i997
  call void @_ZdlPv(ptr noundef nonnull %i.ayk) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i999

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i999: ; preds = %bb.pj, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i997
  %i.ayl = load ptr, ptr %69, align 8, !tbaa !438 ; 2 uses
  %.not.i.i.i1.i1000 = icmp eq ptr %i.ayl, null
  br i1 %.not.i.i.i1.i1000, label %_ZN6duckdb13RelationStatsD2Ev.exit1003, label %bb.pk

bb.pk:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i999
  call void @_ZdlPv(ptr noundef nonnull %i.ayl) #27
  br label %_ZN6duckdb13RelationStatsD2Ev.exit1003

_ZN6duckdb13RelationStatsD2Ev.exit1003:           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i999, %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28
  br label %bb.po

bb.pl:                                            ; preds = %bb.pd
  %i.aym = landingpad { ptr, i32 }
          cleanup
  br label %bb.pn

bb.pm:                                            ; preds = %bb.pg, %bb.pe, %bb.ph, %bb.pf
  %i.ayn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13RelationStatsD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %69) #28
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.pl
  %.pn = phi { ptr, i32 } [ %i.ayn, %bb.pm ], [ %i.aym, %bb.pl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28
  br label %.loopexit.split-lp1064thread-pre-split

bb.po:                                            ; preds = %bb.bn, %bb.hn, %bb.hy, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, %bb.fy, %_ZN6duckdb13RelationStatsD2Ev.exit1003, %_ZN6duckdb13RelationStatsD2Ev.exit979, %_ZN6duckdb13RelationStatsD2Ev.exit828, %_ZN6duckdb13RelationStatsD2Ev.exit802, %_ZN6duckdb13RelationStatsD2Ev.exit706, %_ZN6duckdb13RelationStatsD2Ev.exit681, %_ZN6duckdb13RelationStatsD2Ev.exit617, %_ZN6duckdb13RelationStatsD2Ev.exit598, %bb.gi, %_ZN6duckdb13RelationStatsD2Ev.exit538, %_ZN6duckdb13RelationStatsD2Ev.exit519, %_ZN6duckdb13RelationStatsD2Ev.exit453, %_ZN6duckdb13RelationStatsD2Ev.exit386
  %.2 = phi i1 [ true, %_ZN6duckdb13RelationStatsD2Ev.exit386 ], [ true, %bb.hn ], [ true, %_ZN6duckdb13RelationStatsD2Ev.exit453 ], [ true, %_ZN6duckdb13RelationStatsD2Ev.exit519 ], [ true, %_ZN6duckdb13RelationStatsD2Ev.exit538 ], [ true, %_ZN6duckdb13RelationStatsD2Ev.exit1003 ], [ %i.xp, %bb.gi ], [ true, %_ZN6duckdb13RelationStatsD2Ev.exit598 ], [ true, %_ZN6duckdb13RelationStatsD2Ev.exit617 ], [ %i.xd, %bb.fy ], [ true, %_ZN6duckdb13RelationStatsD2Ev.exit681 ], [ true, %_ZN6duckdb13RelationStatsD2Ev.exit706 ], [ false, %_ZN6duckdb13RelationStatsD2Ev.exit802 ], [ %.not1052, %_ZN6duckdb13RelationStatsD2Ev.exit828 ], [ false, %_ZN6duckdb13RelationStatsD2Ev.exit979 ], [ %i.sy, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit ], [ true, %bb.hy ], [ false, %bb.bn ]
  %i.ayo = load ptr, ptr %12, align 8, !tbaa !356 ; 2 uses
  %.not.i.i.i1004 = icmp eq ptr %i.ayo, null
  br i1 %.not.i.i.i1004, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EED2Ev.exit, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  call void @_ZdlPv(ptr noundef nonnull %i.ayo) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EED2Ev.exit: ; preds = %bb.po, %bb.pp
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  ret i1 %.2

.loopexit.split-lp1064thread-pre-split:           ; preds = %bb.mr, %.body832, %bb.ly, %bb.mb, %bb.jl, %bb.jo, %bb.ho, %bb.hp, %bb.hz, %bb.hd, %bb.hg, %bb.gs, %bb.gv, %bb.gj, %bb.gk, %bb.fd, %bb.ft, %bb.fz, %bb.fe, %bb.pn, %.body708, %.body625, %bb.ef, %.body455, %.body390, %bb.bl, %bb.ak, %.loopexit.split-lp1059, %.loopexit1058
  %.pn285.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp1061, %.loopexit.split-lp1059 ], [ %lpad.loopexit1060, %.loopexit1058 ], [ %.pn204.pn.pn.pn.pn.pn, %.body832 ], [ %.pn212.pn, %bb.mb ], [ %.pn229, %bb.jo ], [ %i.aaa, %bb.hp ], [ %.pn240, %bb.hz ], [ %.pn243, %bb.hg ], [ %.pn246, %bb.gv ], [ %i.xr, %bb.gk ], [ %.pn254.pn.pn, %bb.ft ], [ %i.ve, %bb.fe ], [ %i.vd, %bb.fd ], [ %.pn, %bb.pn ], [ %i.amg, %bb.ly ], [ %i.aer, %bb.jl ], [ %.pn222.pn.pn.pn.pn.pn, %.body708 ], [ %i.zz, %bb.ho ], [ %.pn235.pn.pn.pn, %.body625 ], [ %i.zf, %bb.hd ], [ %i.yk, %bb.gs ], [ %i.xq, %bb.gj ], [ %i.xe, %bb.fz ], [ %i.hd, %bb.ak ], [ %i.ss, %bb.ef ], [ %.pn264.pn.pn.pn, %.body455 ], [ %.pn272.pn.pn.pn, %.body390 ], [ %.pn279.pn.pn.pn, %bb.bl ], [ %i.aox, %bb.mr ]
  %.pr1418 = load ptr, ptr %12, align 8, !tbaa !356
  br label %.loopexit.split-lp1064

.loopexit.split-lp1064:                           ; preds = %.loopexit.split-lp1064thread-pre-split, %.loopexit1077, %.loopexit.split-lp1078, %.loopexit1072, %.loopexit.split-lp1073, %.loopexit1063, %.loopexit.split-lp1064.loopexit.split-lp, %.loopexit.split-lp1064.loopexit, %bb.y
  %i.ayp = phi ptr [ %.pr1418, %.loopexit.split-lp1064thread-pre-split ], [ %i.cv, %.loopexit1077 ], [ %i.cv, %.loopexit.split-lp1078 ], [ %i.h, %.loopexit1072 ], [ %i.h, %.loopexit.split-lp1073 ], [ %i.h, %.loopexit1063 ], [ %i.ct, %.loopexit.split-lp1064.loopexit.split-lp ], [ %i.h, %.loopexit.split-lp1064.loopexit ], [ %i.ej, %bb.y ] ; 2 uses
  %.pn285 = phi { ptr, i32 } [ %.pn285.ph, %.loopexit.split-lp1064thread-pre-split ], [ %lpad.loopexit1079, %.loopexit1077 ], [ %lpad.loopexit.split-lp1080, %.loopexit.split-lp1078 ], [ %lpad.loopexit1074, %.loopexit1072 ], [ %lpad.loopexit.split-lp1075, %.loopexit.split-lp1073 ], [ %lpad.loopexit1065, %.loopexit1063 ], [ %lpad.loopexit.split-lp1070, %.loopexit.split-lp1064.loopexit.split-lp ], [ %lpad.loopexit1069, %.loopexit.split-lp1064.loopexit ], [ %i.et, %bb.y ]
  %.not.i.i.i1005 = icmp eq ptr %i.ayp, null
  br i1 %.not.i.i.i1005, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EED2Ev.exit1006, label %bb.pq

bb.pq:                                            ; preds = %.loopexit.split-lp1064
  call void @_ZdlPv(ptr noundef nonnull %i.ayp) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EED2Ev.exit1006

_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EED2Ev.exit1006: ; preds = %.loopexit.split-lp1064, %bb.pq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  resume { ptr, i32 } %.pn285

bb.pr:                                            ; preds = %bb.oi
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24RelationStatisticsHelper36CombineStatsOfNonReorderableOperatorERNS_15LogicalOperatorERKNS_6vectorINS_13RelationStatsELb1ESaIS4_EEE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::RelationStats") align 8 initializes((0, 24), (32, 41), (48, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.duckdb::vector", align 8    ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !502
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !433
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store i64 0, ptr %i.h, align 8, !tbaa !14
  store i8 0, ptr %i.g, align 8, !tbaa !17
  store i64 0, ptr %i.b, align 8, !tbaa !402
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.i = load ptr, ptr %2, align 8, !tbaa !503    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !503  ; 2 uses
  %.not87 = icmp eq ptr %i.i, %i.k
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.a
  %i.n = phi ptr [ null, %bb.a ], [ %i.at, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 4 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !442
  switch i8 %i.q, label %.loopexit81 [
    i8 52, label %bb.h
    i8 75, label %bb.n
    i8 77, label %bb.p
    i8 76, label %bb.t
  ]

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.as, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.at, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %.sroa.068.088 = phi ptr [ %i.i, %.lr.ph ], [ %i.av, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.au, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.068.088, i64 40
  %i.v = load i8, ptr %i.u, align 8, !tbaa !433, !range !434, !noundef !362
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.068.088, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = select i1 %i.w, i64 %i.y, i64 0          ; 3 uses
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !402
  %i.ab = tail call noundef i64 @llvm.umax.i64(i64 %i.aa, i64 %i.z)
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !402
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.z, ptr %i.s, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !18
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = ptrtoint ptr %i.r to i64
  %i.ae = ptrtoint ptr %i.t to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc unwind label %.loopexit.split-lp83

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #30
          to label %.noexc33 unwind label %.loopexit82 ; 5 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  store i64 %i.z, ptr %i.ao, align 8, !tbaa !19
  %i.ap = icmp sgt i64 %i.af, 0
  br i1 %i.ap, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %.noexc33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.t, i64 %i.af, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %.noexc33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.an, ptr %3, align 8, !tbaa !7
  store ptr %i.aq, ptr %i.l, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al ; 2 uses
  store ptr %i.ar, ptr %i.m, align 8, !tbaa !55
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.c
  %i.as = phi ptr [ %i.ar, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.r, %bb.c ]
  %i.at = phi ptr [ %i.aq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.ac, %bb.c ] ; 2 uses
  %i.au = phi ptr [ %i.an, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.t, %bb.c ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.068.088, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit82:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit84 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp83:                             ; preds = %bb.e
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.h:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !783
  switch i8 %i.ax, label %.loopexit81 [
    i8 10, label %bb.j
    i8 9, label %bb.j
    i8 6, label %bb.l
    i8 5, label %bb.l
    i8 8, label %bb.l
    i8 7, label %bb.l
  ]

bb.i:                                             ; preds = %bb.l, %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19
  br label %.loopexit81.sink.split

bb.l:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !19
  br label %.loopexit81.sink.split

bb.n:                                             ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !919, !range !434, !noundef !362
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.o, label %.loopexit81

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %i.b, align 8, !tbaa !402
  %i.bg = load ptr, ptr %3, align 8, !tbaa !68    ; 9 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %.not7192 = icmp eq ptr %i.bg, %i.n
  br i1 %.not7192, label %.loopexit81, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %bb.o
  %5 = ptrtoint ptr %i.n to i64
  %6 = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %5, %6
  %7 = add i64 %i.bi, -8                          ; 2 uses
  %i.bj = lshr i64 %7, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 152
  br i1 %min.iters.check, label %.lr.ph95.preheader142, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph95.preheader
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bl = add i64 %i.o, -8
  %i.bm = sub i64 %i.bl, %i.bh
  %i.bn = and i64 %i.bm, -8
  %i.bo = getelementptr i8, ptr %i.bg, i64 %i.bn
  %scevgep139 = getelementptr i8, ptr %i.bo, i64 8
  %bound0 = icmp ult ptr %i.b, %scevgep139
  %bound1 = icmp ult ptr %i.bg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph95.preheader142, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, 4611686018427387900     ; 3 uses
  %i.bp = shl i64 %n.vec, 3
  %i.bq = getelementptr i8, ptr %i.bg, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bt, %vector.body ]
  %vec.phi140 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bu, %vector.body ]
  %i.br = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !19, !alias.scope !921
  %wide.load141 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !19, !alias.scope !921
  %i.bt = add <2 x i64> %vec.phi, %wide.load      ; 2 uses
  %i.bu = add <2 x i64> %vec.phi140, %wide.load141 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !924

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.bw, ptr %i.b, align 8, !tbaa !402, !alias.scope !925, !noalias !921
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %.loopexit81, label %.lr.ph95.preheader142

.lr.ph95.preheader142:                            ; preds = %vector.memcheck, %.lr.ph95.preheader, %middle.block
  %.sroa.063.093.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph95.preheader ], [ %i.bq, %middle.block ]
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph95.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader142, %.lr.ph95
  %.sroa.063.093 = phi ptr [ %i.ca, %.lr.ph95 ], [ %.sroa.063.093.ph, %.lr.ph95.preheader142 ] ; 2 uses
  %i.bx = phi i64 [ %i.bz, %.lr.ph95 ], [ %.ph, %.lr.ph95.preheader142 ]
  %i.by = load i64, ptr %.sroa.063.093, align 8, !tbaa !19
  %i.bz = add i64 %i.bx, %i.by                    ; 2 uses
  store i64 %i.bz, ptr %i.b, align 8, !tbaa !402
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.063.093, i64 8 ; 2 uses
  %.not71 = icmp eq ptr %i.ca, %i.n
  br i1 %.not71, label %.loopexit81, label %.lr.ph95, !llvm.loop !927

bb.p:                                             ; preds = %._crit_edge
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !19
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !19
  %i.cf = call noundef i64 @llvm.umin.i64(i64 %i.cc, i64 %i.ce)
  br label %.loopexit81.sink.split

bb.s:                                             ; preds = %bb.t, %bb.q, %bb.p
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.t:                                             ; preds = %._crit_edge
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !19
  br label %.loopexit81.sink.split

.loopexit81.sink.split:                           ; preds = %bb.r, %bb.u, %bb.m, %bb.k
  %.sink = phi i64 [ %i.ba, %bb.k ], [ %i.bc, %bb.m ], [ %i.ci, %bb.u ], [ %i.cf, %bb.r ]
  store i64 %.sink, ptr %i.b, align 8, !tbaa !402
  br label %.loopexit81

.loopexit81:                                      ; preds = %.lr.ph95, %middle.block, %.loopexit81.sink.split, %bb.o, %bb.n, %bb.h, %._crit_edge
  store i8 1, ptr %i.d, align 8, !tbaa !433
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !502
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.cj, ptr %4, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.cj, align 8, !tbaa !17
  %.not21.i = icmp eq ptr %4, %i.f
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, !prof !51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %.loopexit81
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !25
  store i64 0, ptr %i.h, align 8, !tbaa !14
  store i8 0, ptr %i.cl, align 1, !tbaa !17
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %.loopexit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.cm = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.cj, %.loopexit81 ]
  store i64 0, ptr %i.ck, align 8, !tbaa !14
  store i8 0, ptr %i.cm, align 1, !tbaa !17
  %i.cn = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.cj
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.cn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.cp = load ptr, ptr %2, align 8, !tbaa !503   ; 2 uses
  %i.cq = load ptr, ptr %i.j, align 8, !tbaa !503 ; 2 uses
  %.not72105 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not72105, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.w

._crit_edge108:                                   ; preds = %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cv = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge108
  call void @_ZdlPv(ptr noundef nonnull %i.cv) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge108, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.w:                                             ; preds = %.lr.ph107, %.loopexit
  %.sroa.059.0106 = phi ptr [ %i.cp, %.lr.ph107 ], [ %i.fi, %.loopexit ] ; 8 uses
  %i.cw = load i64, ptr %i.h, align 8, !tbaa !14  ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = add i64 %i.cw, -4611686018427387891
  %i.cz = icmp ult i64 %i.cy, 13
  br i1 %i.cz, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.invoke:                                          ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #29
          to label %.cont unwind label %.loopexit.split-lp77

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.x
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull @.str.20, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge unwind label %.loopexit76 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %.pre = load i64, ptr %i.h, align 8, !tbaa !14
  %i.db = sub i64 4611686018427387903, %.pre
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

.loopexit76:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit78 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp77:                             ; preds = %.invoke
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge, %bb.w
  %i.dc = phi i64 [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge ], [ 4611686018427387903, %bb.w ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.059.0106, i64 80
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !14 ; 2 uses
  %i.df = icmp ult i64 %i.dc, %i.de
  br i1 %i.df, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.059.0106, i64 72
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !25
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef %i.dh, i64 noundef %i.de)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit76 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.059.0106, i64 40
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !433, !range !434, !noundef !362
  %i.dl = trunc nuw i8 %i.dk to i1
end_hunk_2
begin_hunk_3_@_ZN6duckdb15RelationManager12ExtractEdgesERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEERNS_22JoinRelationSetManagerE:bb.a
.body338.loopexit.split-lp.loopexit:              ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i
  %lpad.loopexit952 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426

.body338.loopexit.split-lp.loopexit.split-lp:     ; preds = %bb.fw
  %lpad.loopexit.split-lp953 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426

.loopexit940:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i
  %lpad.loopexit942 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426

.loopexit.split-lp941.loopexit:                   ; preds = %bb.ga
  %lpad.loopexit945 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426

.loopexit.split-lp941.loopexit.split-lp:          ; preds = %.critedge.i, %.thread.i
  %lpad.loopexit.split-lp946 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426

.body363:                                         ; preds = %.loopexit948
  %i.anj = landingpad { ptr, i32 }
          cleanup
  br label %.body352.thread900

bb.he:                                            ; preds = %bb.gg
  %i.ank = landingpad { ptr, i32 }
          cleanup
  br label %.body352.thread900

.body352.thread904.loopexit:                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i396
  %lpad.loopexit969 = landingpad { ptr, i32 }
          cleanup
  br label %.body352.thread904

.body352.thread904.loopexit.split-lp:             ; preds = %bb.ha
  %lpad.loopexit.split-lp970 = landingpad { ptr, i32 }
          cleanup
  br label %.body352.thread904

.body352.thread904:                               ; preds = %.body352.thread904.loopexit.split-lp, %.body352.thread904.loopexit
  %lpad.phi971 = phi { ptr, i32 } [ %lpad.loopexit969, %.body352.thread904.loopexit ], [ %lpad.loopexit.split-lp970, %.body352.thread904.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %39) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %.body328

bb.hf:                                            ; preds = %bb.hc, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i420
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424

_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i423: ; preds = %.noexc342, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit
  %i.anl = load ptr, ptr %i.aeu, align 8, !tbaa !352
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 8
  %i.ann = load ptr, ptr %i.anm, align 8
  call void %i.ann(ptr noundef nonnull align 8 dereferenceable(104) %i.aeu) #28, !inline_history !1130
  br label %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424

_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424: ; preds = %bb.hf, %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i423
  %i.ano = phi ptr [ %i.amy, %bb.hf ], [ %i.aer, %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i423 ] ; 2 uses
  %i.anp = phi ptr [ %i.amz, %bb.hf ], [ %i.aes, %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i423 ] ; 2 uses
  %i.anq = phi ptr [ %i.ana, %bb.hf ], [ %i.aet, %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i423 ] ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %.sroa.0838.01073, i64 24 ; 2 uses
  %.not913 = icmp eq ptr %i.anr, %i.aeq
  br i1 %.not913, label %.loopexit968, label %.lr.ph

.body352.thread900:                               ; preds = %.body363, %bb.gw, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i378, %bb.he
  %.pn85.pn.pn.ph = phi { ptr, i32 } [ %.pn35.ph.i380, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i378 ], [ %i.alc, %bb.gw ], [ %i.ank, %bb.he ], [ %i.anj, %.body363 ]
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426

.body352:                                         ; preds = %bb.gx
  %i.ans = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426

_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426: ; preds = %.loopexit940, %.loopexit.split-lp941.loopexit.split-lp, %.loopexit.split-lp941.loopexit, %.body338.loopexit, %.body338.loopexit.split-lp.loopexit.split-lp, %.body338.loopexit.split-lp.loopexit, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i, %.body352, %.body352.thread900
  %.pn85.pn.pn.pn897 = phi { ptr, i32 } [ %.pn85.pn.pn.ph, %.body352.thread900 ], [ %i.ans, %.body352 ], [ %i.aih, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ], [ %lpad.loopexit.split-lp953, %.body338.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit950, %.body338.loopexit ], [ %lpad.loopexit952, %.body338.loopexit.split-lp.loopexit ], [ %lpad.loopexit942, %.loopexit940 ], [ %lpad.loopexit945, %.loopexit.split-lp941.loopexit ], [ %lpad.loopexit.split-lp946, %.loopexit.split-lp941.loopexit.split-lp ]
  %i.ant = load ptr, ptr %i.aeu, align 8, !tbaa !352
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 8
  %i.anv = load ptr, ptr %i.anu, align 8
  call void %i.anv(ptr noundef nonnull align 8 dereferenceable(104) %i.aeu) #28, !inline_history !1130
  br label %.body328

.loopexit968:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424, %bb.fr, %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.anw = phi ptr [ %i.adz, %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.ay, %bb.fr ], [ %i.ano, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424 ] ; 2 uses
  %i.anx = phi ptr [ %i.aea, %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.az, %bb.fr ], [ %i.anp, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424 ] ; 2 uses
  %i.any = phi ptr [ %i.aeb, %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.ba, %bb.fr ], [ %i.anq, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424 ] ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.bb, i64 184
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !1211 ; 3 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.bb, i64 192 ; 2 uses
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !1213 ; 2 uses
  %.not.i.i.i428 = icmp eq ptr %i.aoc, %i.aoa
  br i1 %.not.i.i.i428, label %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit968, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aom, %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i ], [ %i.aoa, %.loopexit968 ] ; 3 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !350 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aoe, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !352
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 8
  %i.aoh = load ptr, ptr %i.aog, align 8
  call void %i.aoh(ptr noundef nonnull align 8 dereferenceable(88) %i.aoe) #28, !inline_history !1214
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.aoi = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !350 ; 3 uses
  %.not.i1.i.i.i.i.i.i.i = icmp eq ptr %i.aoi, null
  br i1 %.not.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !352
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8
  %i.aol = load ptr, ptr %i.aok, align 8
  call void %i.aol(ptr noundef nonnull align 8 dereferenceable(88) %i.aoi) #28, !inline_history !1214
  br label %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i
  %i.aom = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aom, %i.aoc
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1215

_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb13JoinConditionEEvPT_.exit.i.i.i.i.i
  store ptr %i.aoa, ptr %i.aob, align 8, !tbaa !1213
  br label %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EE5clearEv.exit

bb.hg:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %i.aon = getelementptr inbounds nuw i8, ptr %i.bb, i64 40 ; 4 uses
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !899 ; 3 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !899 ; 2 uses
  %.not9191082 = icmp eq ptr %i.aoo, %i.aoq
  br i1 %.not9191082, label %._crit_edge1086.thread, label %.lr.ph1085

._crit_edge1086.thread:                           ; preds = %bb.hg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aon, i8 0, i64 24, i1 false)
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

._crit_edge1086:                                  ; preds = %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread909
  %.pre = load ptr, ptr %i.aon, align 8, !tbaa !372 ; 4 uses
  %.pre1210 = load ptr, ptr %i.aop, align 8, !tbaa !373 ; 2 uses
  %.pre1213 = load ptr, ptr %i.ar, align 16, !tbaa !902
  %i.aor = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.aos = load <2 x ptr>, ptr %40, align 16, !tbaa !899
  store <2 x ptr> %i.aos, ptr %i.aon, align 8, !tbaa !899
  store ptr %.pre1213, ptr %i.aor, align 8, !tbaa !902
  %.not4.i.i.i.i.i.i = icmp eq ptr %.pre, %.pre1210
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge1086, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.aox, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ], [ %.pre, %._crit_edge1086 ] ; 2 uses
  %i.aot = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !350 ; 3 uses
  %.not.i.i.i.i.i.i.i.i429 = icmp eq ptr %i.aot, null
  br i1 %.not.i.i.i.i.i.i.i.i429, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i430

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i430: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !352
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 8
  %i.aow = load ptr, ptr %i.aov, align 8
  call void %i.aow(ptr noundef nonnull align 8 dereferenceable(88) %i.aot) #28, !inline_history !1216
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i430, %.lr.ph.i.i.i.i.i.i
  %i.aox = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aox, %.pre1210
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !375

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i, %._crit_edge1086.thread, %._crit_edge1086
  %i.aoy = phi ptr [ %i.ba, %._crit_edge1086.thread ], [ %i.axu, %._crit_edge1086 ], [ %i.axu, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ]
  %i.aoz = phi ptr [ %i.az, %._crit_edge1086.thread ], [ %i.axt, %._crit_edge1086 ], [ %i.axt, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ]
  %i.apa = phi ptr [ %i.ay, %._crit_edge1086.thread ], [ %i.axs, %._crit_edge1086 ], [ %i.axs, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ]
  %i.apb = phi ptr [ %i.aoo, %._crit_edge1086.thread ], [ %.pre, %._crit_edge1086 ], [ %.pre, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.apb, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.hh

bb.hh:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.apb) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EE5clearEv.exit

.lr.ph1085:                                       ; preds = %bb.hg, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread909
  %i.apc = phi ptr [ %i.axs, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread909 ], [ %i.ay, %bb.hg ] ; 10 uses
  %i.apd = phi ptr [ %i.axt, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread909 ], [ %i.az, %bb.hg ] ; 15 uses
  %i.ape = phi ptr [ %i.axu, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread909 ], [ %i.ba, %bb.hg ] ; 8 uses
  %.sroa.0819.01083 = phi ptr [ %i.axv, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread909 ], [ %i.aoo, %bb.hg ] ; 10 uses
  %i.apf = ptrtoint ptr %i.apc to i64
  %i.apg = load ptr, ptr %.sroa.0819.01083, align 8, !tbaa !350 ; 7 uses
  %.not.i433 = icmp eq ptr %i.apg, null
  br i1 %.not.i433, label %.noexc.i770, label %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit442, !prof !51

.noexc.i770:                                      ; preds = %.lr.ph1085
  %i.aph = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.api = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.api, ptr %12, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 49, ptr %i.c, align 8, !tbaa !19
  %i.apj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc771 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i434 ; 3 uses

.noexc771:                                        ; preds = %.noexc.i770
  store ptr %i.apj, ptr %12, align 8, !tbaa !25
  %i.apk = load i64, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  store i64 %i.apk, ptr %i.api, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.apj, ptr noundef nonnull align 1 dereferenceable(49) @.str.33, i64 49, i1 false)
  %i.apl = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.apk, ptr %i.apl, align 8, !tbaa !14
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apj, i64 %i.apk
  store i8 0, ptr %i.apm, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aph, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.hi unwind label %bb.hj

bb.hi:                                            ; preds = %.noexc771
  invoke void @__cxa_throw(ptr nonnull %i.aph, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.hl unwind label %bb.hj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i434: ; preds = %.noexc.i770
  %i.apn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.hk

bb.hj:                                            ; preds = %bb.hi, %.noexc771
  %.0.i.i437 = phi i1 [ false, %bb.hi ], [ true, %.noexc771 ] ; 2 uses
  %i.apo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.app = load ptr, ptr %12, align 8, !tbaa !25  ; 2 uses
  %i.apq = icmp eq ptr %i.app, %i.api
  br i1 %i.apq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i438: ; preds = %bb.hj
  call void @_ZdlPv(ptr noundef %i.app) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br i1 %.0.i.i437, label %bb.hk, label %.body440

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i439: ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br i1 %.0.i.i437, label %bb.hk, label %.body440

bb.hk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i438, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i434
  %.pn9.i.i435 = phi { ptr, i32 } [ %i.apn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i434 ], [ %i.apo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i439 ], [ %i.apo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i438 ]
  call void @__cxa_free_exception(ptr %i.aph) #28
  br label %.body440

bb.hl:                                            ; preds = %bb.hi
  unreachable

_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit442: ; preds = %.lr.ph1085
  %i.apr = load i64, ptr %i.p, align 8, !tbaa !1184
  %.not.not.i.i443 = icmp eq i64 %i.apr, 0
  br i1 %.not.not.i.i443, label %.preheader924, label %bb.hn

.preheader924:                                    ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit442, %.noexc458
  %.sroa.06.0.in.i.i455 = phi ptr [ %.sroa.06.0.i.i456, %.noexc458 ], [ %i.j, %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit442 ]
  %.sroa.06.0.i.i456 = load ptr, ptr %.sroa.06.0.in.i.i455, align 8, !tbaa !33 ; 3 uses
  %.not.i.i457 = icmp eq ptr %.sroa.06.0.i.i456, null
  br i1 %.not.i.i457, label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread, label %bb.hm

bb.hm:                                            ; preds = %.preheader924
  %i.aps = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i456, i64 8
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !1185
  %i.apu = load ptr, ptr %i.apg, align 8, !tbaa !352
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 80
  %i.apw = load ptr, ptr %i.apv, align 8
  %i.apx = invoke noundef zeroext i1 %i.apw(ptr noundef nonnull align 8 dereferenceable(88) %i.apg, ptr noundef nonnull align 8 dereferenceable(56) %i.apt)
          to label %.noexc458 unwind label %.loopexit925, !inline_history !1187

.noexc458:                                        ; preds = %bb.hm
  br i1 %i.apx, label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread909, label %.preheader924, !llvm.loop !1188

bb.hn:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit442
  %i.apy = load ptr, ptr %i.apg, align 8, !tbaa !352
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 72
  %i.aqa = load ptr, ptr %i.apz, align 8
  %i.aqb = invoke noundef i64 %i.aqa(ptr noundef nonnull align 8 dereferenceable(88) %i.apg)
          to label %.noexc459 unwind label %.loopexit.split-lp926.loopexit.split-lp, !inline_history !1187 ; 2 uses

.noexc459:                                        ; preds = %bb.hn
  %i.aqc = load i64, ptr %i.i, align 8, !tbaa !1104
  %i.aqd = urem i64 %i.aqb, %i.aqc                ; 2 uses
  %i.aqe = load ptr, ptr %30, align 8, !tbaa !1102
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %i.aqe, i64 %i.aqd
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !78 ; 3 uses
  %.not.i.i.i.i444 = icmp eq ptr %i.aqg, null
  br i1 %.not.i.i.i.i444, label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread, label %bb.ho

bb.ho:                                            ; preds = %.noexc459
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert.i.i.i.i445 = getelementptr inbounds nuw i8, ptr %i.aqh, i64 16
  %.pre.i.i.i.i446 = load i64, ptr %.phi.trans.insert.i.i.i.i445, align 8, !tbaa !465
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hq, %bb.ho
  %i.aqi = phi i64 [ %.pre.i.i.i.i446, %bb.ho ], [ %i.aqt, %bb.hq ]
  %.015.i.i.i.i447 = phi ptr [ %i.aqg, %bb.ho ], [ %.0.i.i.i.i448, %bb.hq ]
  %.0.i.i.i.i448 = phi ptr [ %i.aqh, %bb.ho ], [ %i.aqq, %bb.hq ] ; 3 uses
  %i.aqj = icmp eq i64 %i.aqb, %i.aqi
  br i1 %i.aqj, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i453, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i449

_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i453: ; preds = %bb.hp
  %i.aqk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i448, i64 8
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !1185
  %i.aqm = load ptr, ptr %i.apg, align 8, !tbaa !352
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 80
  %i.aqo = load ptr, ptr %i.aqn, align 8
  %i.aqp = invoke noundef zeroext i1 %i.aqo(ptr noundef nonnull align 8 dereferenceable(88) %i.apg, ptr noundef nonnull align 8 dereferenceable(56) %i.aql)
          to label %.noexc460 unwind label %.loopexit.split-lp926.loopexit, !inline_history !1187

.noexc460:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i453
  br i1 %i.aqp, label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i449

_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i449: ; preds = %.noexc460, %bb.hp
  %i.aqq = load ptr, ptr %.0.i.i.i.i448, align 8, !tbaa !33 ; 3 uses
  %.not18.i.i.i.i450 = icmp eq ptr %i.aqq, null
  br i1 %.not18.i.i.i.i450, label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread, label %bb.hq

bb.hq:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i449
  %i.aqr = load i64, ptr %i.i, align 8, !tbaa !1104
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqq, i64 16
  %i.aqt = load i64, ptr %i.aqs, align 8, !tbaa !465 ; 2 uses
  %i.aqu = urem i64 %i.aqt, %i.aqr
  %.not19.i.i.i.i451 = icmp eq i64 %i.aqu, %i.aqd
  br i1 %.not19.i.i.i.i451, label %bb.hp, label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread, !llvm.loop !1189

_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461: ; preds = %.noexc460
  %i.aqv = load ptr, ptr %.015.i.i.i.i447, align 8, !tbaa !33
  %i.aqw = icmp eq ptr %i.aqv, null
  br i1 %i.aqw, label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread, label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread909

_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i.i449, %bb.hq, %.preheader924, %.noexc459, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461
  %i.aqx = load ptr, ptr %.sroa.0819.01083, align 8, !tbaa !350 ; 8 uses
  %.not.i462 = icmp eq ptr %i.aqx, null
  br i1 %.not.i462, label %.noexc.i774, label %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit471, !prof !51

.noexc.i774:                                      ; preds = %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread
  %i.aqy = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.aqz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.aqz, ptr %11, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 49, ptr %i.b, align 8, !tbaa !19
  %i.ara = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc775 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i463 ; 3 uses

.noexc775:                                        ; preds = %.noexc.i774
  store ptr %i.ara, ptr %11, align 8, !tbaa !25
  %i.arb = load i64, ptr %i.b, align 8, !tbaa !19 ; 3 uses
  store i64 %i.arb, ptr %i.aqz, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ara, ptr noundef nonnull align 1 dereferenceable(49) @.str.33, i64 49, i1 false)
  %i.arc = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.arb, ptr %i.arc, align 8, !tbaa !14
  %i.ard = getelementptr inbounds nuw i8, ptr %i.ara, i64 %i.arb
  store i8 0, ptr %i.ard, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aqy, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.hr unwind label %bb.hs

bb.hr:                                            ; preds = %.noexc775
  invoke void @__cxa_throw(ptr nonnull %i.aqy, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.hu unwind label %bb.hs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i463: ; preds = %.noexc.i774
  %i.are = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hr, %.noexc775
  %.0.i.i466 = phi i1 [ false, %bb.hr ], [ true, %.noexc775 ] ; 2 uses
  %i.arf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.arg = load ptr, ptr %11, align 8, !tbaa !25  ; 2 uses
  %i.arh = icmp eq ptr %i.arg, %i.aqz
  br i1 %i.arh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i468, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i467

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i467: ; preds = %bb.hs
  call void @_ZdlPv(ptr noundef %i.arg) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br i1 %.0.i.i466, label %bb.ht, label %.body440

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i468: ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br i1 %.0.i.i466, label %bb.ht, label %.body440

bb.ht:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i468, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i467, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i463
end_hunk_3
begin_hunk_4_@_ZN6duckdb15RelationManager12ExtractEdgesERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEERNS_22JoinRelationSetManagerE:bb.a
  %.0.lcssa.i.i.i.i.i.i.i494 = phi ptr [ %i.atw, %.noexc498 ], [ %i.auh, %middle.block ], [ %i.auq, %.lr.ph.i.i.i.i.i.i.i489 ]
  %i.aur = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i494, i64 8
  %.not.i23.i.i.i495 = icmp eq ptr %i.atl, null
  br i1 %.not.i23.i.i.i495, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i496, label %bb.ij

bb.ij:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493
  call void @_ZdlPv(ptr noundef nonnull %i.atl) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i496

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i496: ; preds = %bb.ij, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493
  store ptr %i.atw, ptr %40, align 16, !tbaa !372
  store ptr %i.aur, ptr %i.aq, align 8, !tbaa !373
  %i.aus = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %i.atu
  store ptr %i.aus, ptr %i.ar, align 16, !tbaa !902
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit499

.loopexit925:                                     ; preds = %bb.hm
  %lpad.loopexit927 = landingpad { ptr, i32 }
          cleanup
  br label %.body440

.loopexit.split-lp926.loopexit:                   ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i453
  %lpad.loopexit929 = landingpad { ptr, i32 }
          cleanup
  br label %.body440

.loopexit.split-lp926.loopexit.split-lp:          ; preds = %bb.hn
  %lpad.loopexit.split-lp930 = landingpad { ptr, i32 }
          cleanup
  br label %.body440

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i794
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body440

.loopexit.split-lp.loopexit:                      ; preds = %bb.hv
  %lpad.loopexit920 = landingpad { ptr, i32 }
          cleanup
  br label %.body440

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.critedge.i788, %.thread.i778
  %lpad.loopexit.split-lp921 = landingpad { ptr, i32 }
          cleanup
  br label %.body440

.loopexit956:                                     ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit483, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i485
  %lpad.loopexit958 = landingpad { ptr, i32 }
          cleanup
  br label %.body481

.loopexit.split-lp957:                            ; preds = %bb.ii
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body481

bb.ik:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.aut = icmp ugt i64 %i.atf, 2305843009213693951
  %i.auu = shl nuw i64 %i.atf, 3
  %i.auv = select i1 %i.aut, i64 -1, i64 %i.auu   ; 2 uses
  %i.auw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.auv) #30
          to label %bb.il unwind label %bb.iw     ; 7 uses

bb.il:                                            ; preds = %bb.ik
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.auw, i8 0, i64 %i.auv, i1 false), !noalias !1229
  %.sroa.024.036.i501 = load ptr, ptr %i.am, align 8, !tbaa !33 ; 2 uses
  %.not37.i502 = icmp eq ptr %.sroa.024.036.i501, null
  br i1 %.not37.i502, label %_ZSt4sortIPmEvT_S1_.exit.i518, label %.lr.ph.i503

._crit_edge.i508:                                 ; preds = %.lr.ph.i503
  %.idx.i509 = shl nuw nsw i64 %i.avd, 3
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 %.idx.i509 ; 2 uses
  %.not.i.i.i510 = icmp eq i64 %i.avd, 0
  br i1 %.not.i.i.i510, label %_ZSt4sortIPmEvT_S1_.exit.i518, label %bb.im

bb.im:                                            ; preds = %._crit_edge.i508
  %i.auy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.avd, i1 true)
  %i.auz = shl nuw nsw i64 %i.auy, 1
  %i.ava = xor i64 %i.auz, 126
  invoke void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.auw, ptr noundef nonnull %i.aux, i64 noundef %i.ava)
          to label %.noexc.i517 unwind label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i511

.noexc.i517:                                      ; preds = %bb.im
  invoke void @_ZSt22__final_insertion_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.auw, ptr noundef nonnull %i.aux)
          to label %_ZSt4sortIPmEvT_S1_.exit.i518 unwind label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i511

.lr.ph.i503:                                      ; preds = %bb.il, %.lr.ph.i503
  %.sroa.024.039.i504 = phi ptr [ %.sroa.024.0.i506, %.lr.ph.i503 ], [ %.sroa.024.036.i501, %bb.il ] ; 2 uses
  %.01238.i505 = phi i64 [ %i.avd, %.lr.ph.i503 ], [ 0, %bb.il ] ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %.sroa.024.039.i504, i64 8
  %i.avc = load i64, ptr %i.avb, align 8, !tbaa !19
  %i.avd = add i64 %.01238.i505, 1                ; 5 uses
  %i.ave = getelementptr inbounds nuw [8 x i8], ptr %i.auw, i64 %.01238.i505
  store i64 %i.avc, ptr %i.ave, align 8, !tbaa !19
  %.sroa.024.0.i506 = load ptr, ptr %.sroa.024.039.i504, align 8, !tbaa !33 ; 2 uses
  %.not.i507 = icmp eq ptr %.sroa.024.0.i506, null
  br i1 %.not.i507, label %._crit_edge.i508, label %.lr.ph.i503

_ZSt4sortIPmEvT_S1_.exit.i518:                    ; preds = %.noexc.i517, %._crit_edge.i508, %bb.il
  %.012.lcssa45.i519 = phi i64 [ %i.avd, %.noexc.i517 ], [ 0, %._crit_edge.i508 ], [ 0, %bb.il ]
  %i.avf = ptrtoint ptr %i.auw to i64
  store i64 %i.avf, ptr %9, align 8, !tbaa !68
  %i.avg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %9, i64 noundef %.012.lcssa45.i519)
          to label %bb.in unwind label %bb.io

bb.in:                                            ; preds = %_ZSt4sortIPmEvT_S1_.exit.i518
  %i.avh = load ptr, ptr %9, align 8, !tbaa !68   ; 2 uses
  %.not.i.i521 = icmp eq ptr %i.avh, null
  br i1 %.not.i.i521, label %bb.ip, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i522

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i522: ; preds = %bb.in
  call void @_ZdaPv(ptr noundef nonnull %i.avh) #27
  br label %bb.ip

bb.io:                                            ; preds = %_ZSt4sortIPmEvT_S1_.exit.i518
  %i.avi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.avj = load ptr, ptr %9, align 8, !tbaa !68   ; 2 uses
  %.not.i18.i520 = icmp eq ptr %i.avj, null
  br i1 %.not.i18.i520, label %.body481, label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i512

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i511: ; preds = %.noexc.i517, %bb.im
  %i.avk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i512

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i512: ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i511, %bb.io
  %.sink.i513 = phi ptr [ %i.auw, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i511 ], [ %i.avj, %bb.io ]
  %.pn35.ph.i514 = phi { ptr, i32 } [ %i.avk, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i511 ], [ %i.avi, %bb.io ]
  call void @_ZdaPv(ptr noundef nonnull %.sink.i513) #27
  br label %.body481

bb.ip:                                            ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i522, %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  %i.avl = ptrtoint ptr %i.ape to i64
  %i.avm = ptrtoint ptr %i.apd to i64             ; 3 uses
  %i.avn = sub i64 %i.avl, %i.avm                 ; 3 uses
  %i.avo = ashr exact i64 %i.avn, 3               ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.avp = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30
          to label %bb.iq unwind label %bb.ix     ; 8 uses

bb.iq:                                            ; preds = %bb.ip
  %i.avq = load i64, ptr %.sroa.0819.01083, align 8, !tbaa !350, !noalias !1232
  store ptr null, ptr %.sroa.0819.01083, align 8, !tbaa !350, !noalias !1232
  store i64 %i.avq, ptr %i.avp, align 8, !tbaa !350, !noalias !1232
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avp, i64 8
  store ptr %i.avg, ptr %i.avr, align 8, !tbaa !456, !noalias !1232
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avp, i64 16
  store i64 %i.avo, ptr %i.avs, align 8, !tbaa !1166, !noalias !1232
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avp, i64 24
  store i8 3, ptr %i.avt, align 8, !tbaa !562, !noalias !1232
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avp, i64 32
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avp, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.avu, i8 0, i64 16, i1 false), !noalias !1232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.avv, i8 -1, i64 32, i1 false), !noalias !1232
  store ptr %i.avp, ptr %42, align 8, !tbaa !117, !alias.scope !1232
  %.not.i.i529 = icmp eq ptr %i.ape, %i.apc
  %i.avw = ptrtoint ptr %i.avp to i64             ; 2 uses
  br i1 %.not.i.i529, label %bb.ir, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit544.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit544.thread: ; preds = %bb.iq
  store i64 %i.avw, ptr %i.ape, align 8, !tbaa !117
  %i.avx = getelementptr inbounds nuw i8, ptr %i.ape, i64 8 ; 2 uses
  store ptr %i.avx, ptr %i.w, align 8, !tbaa !349
  br label %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit549

bb.ir:                                            ; preds = %bb.iq
  %i.avy = icmp eq i64 %i.avn, 9223372036854775800
  br i1 %i.avy, label %bb.is, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i530

bb.is:                                            ; preds = %bb.ir
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc542 unwind label %.loopexit.split-lp961

.noexc542:                                        ; preds = %bb.is
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i530: ; preds = %bb.ir
  %.sroa.speculated.i.i.i.i531 = call i64 @llvm.umax.i64(i64 %i.avo, i64 1)
  %i.avz = add nsw i64 %.sroa.speculated.i.i.i.i531, %i.avo ; 2 uses
  %i.awa = icmp ult i64 %i.avz, %i.avo
  %i.awb = call i64 @llvm.umin.i64(i64 %i.avz, i64 1152921504606846975)
  %i.awc = select i1 %i.awa, i64 1152921504606846975, i64 %i.awb ; 3 uses
  %.not.i.i.i.i532 = icmp ne i64 %i.awc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i532)
  %i.awd = shl nuw nsw i64 %i.awc, 3
  %i.awe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.awd) #30
          to label %.noexc543 unwind label %.loopexit960 ; 12 uses

.noexc543:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i530
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.avn
  store i64 %i.avw, ptr %i.awf, align 8, !tbaa !117
  store ptr null, ptr %42, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i.i533 = icmp eq ptr %i.apd, %i.apc
  br i1 %.not10.i.i.i.i.i.i.i533, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i538, label %.lr.ph.i.i.i.i.i.i.i534.preheader

.lr.ph.i.i.i.i.i.i.i534.preheader:                ; preds = %.noexc543
  %43 = ptrtoint ptr %i.apc to i64
  %i.awg = sub i64 %43, %i.avm
  %44 = add i64 %i.awg, -8                        ; 2 uses
  %i.awh = lshr i64 %44, 3
  %i.awi = add nuw nsw i64 %i.awh, 1              ; 2 uses
  %min.iters.check1651 = icmp ult i64 %44, 56
  br i1 %min.iters.check1651, label %.lr.ph.i.i.i.i.i.i.i534.preheader1810, label %vector.memcheck1642

vector.memcheck1642:                              ; preds = %.lr.ph.i.i.i.i.i.i.i534.preheader
  %scevgep1643 = getelementptr i8, ptr %i.awe, i64 8
  %i.awj = add i64 %i.apf, -8
  %i.awk = sub i64 %i.awj, %i.avm
  %i.awl = and i64 %i.awk, -8                     ; 2 uses
  %scevgep1644 = getelementptr i8, ptr %scevgep1643, i64 %i.awl
  %scevgep1645 = getelementptr i8, ptr %i.apd, i64 8
  %scevgep1646 = getelementptr i8, ptr %scevgep1645, i64 %i.awl
  %bound01647 = icmp ult ptr %i.awe, %scevgep1646
  %bound11648 = icmp ult ptr %i.apd, %scevgep1644
  %found.conflict1649 = and i1 %bound01647, %bound11648
  br i1 %found.conflict1649, label %.lr.ph.i.i.i.i.i.i.i534.preheader1810, label %vector.ph1652

vector.ph1652:                                    ; preds = %vector.memcheck1642
  %n.vec1654 = and i64 %i.awi, 4611686018427387900 ; 3 uses
  %i.awm = shl i64 %n.vec1654, 3                  ; 2 uses
  %i.awn = getelementptr i8, ptr %i.awe, i64 %i.awm ; 2 uses
  %i.awo = getelementptr i8, ptr %i.apd, i64 %i.awm
  br label %vector.body1655

vector.body1655:                                  ; preds = %vector.body1655, %vector.ph1652
  %index1656 = phi i64 [ 0, %vector.ph1652 ], [ %index.next1661, %vector.body1655 ] ; 2 uses
  %i.awp = shl i64 %index1656, 3                  ; 2 uses
  %next.gep1657 = getelementptr i8, ptr %i.awe, i64 %i.awp ; 2 uses
  %next.gep1658 = getelementptr i8, ptr %i.apd, i64 %i.awp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  %i.awq = getelementptr i8, ptr %next.gep1658, i64 16
  %wide.load1659 = load <2 x i64>, ptr %next.gep1658, align 8, !tbaa !117, !alias.scope !1240, !noalias !1235
  %wide.load1660 = load <2 x i64>, ptr %i.awq, align 8, !tbaa !117, !alias.scope !1240, !noalias !1235
  %i.awr = getelementptr i8, ptr %next.gep1657, i64 16
  store <2 x i64> %wide.load1659, ptr %next.gep1657, align 8, !tbaa !117, !alias.scope !1243, !noalias !1240
  store <2 x i64> %wide.load1660, ptr %i.awr, align 8, !tbaa !117, !alias.scope !1243, !noalias !1240
  %i.aws = getelementptr i8, ptr %next.gep1658, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1658, align 8, !tbaa !117, !alias.scope !1240, !noalias !1235
  store <2 x ptr> splat (ptr null), ptr %i.aws, align 8, !tbaa !117, !alias.scope !1240, !noalias !1235
  %index.next1661 = add nuw i64 %index1656, 4     ; 2 uses
  %i.awt = icmp eq i64 %index.next1661, %n.vec1654
  br i1 %i.awt, label %middle.block1662, label %vector.body1655, !llvm.loop !1245

middle.block1662:                                 ; preds = %vector.body1655
  %cmp.n1663 = icmp eq i64 %i.awi, %n.vec1654
  br i1 %cmp.n1663, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i538, label %.lr.ph.i.i.i.i.i.i.i534.preheader1810

.lr.ph.i.i.i.i.i.i.i534.preheader1810:            ; preds = %vector.memcheck1642, %.lr.ph.i.i.i.i.i.i.i534.preheader, %middle.block1662
  %.012.i.i.i.i.i.i.i535.ph = phi ptr [ %i.awe, %vector.memcheck1642 ], [ %i.awe, %.lr.ph.i.i.i.i.i.i.i534.preheader ], [ %i.awn, %middle.block1662 ]
  %.0911.i.i.i.i.i.i.i536.ph = phi ptr [ %i.apd, %vector.memcheck1642 ], [ %i.apd, %.lr.ph.i.i.i.i.i.i.i534.preheader ], [ %i.awo, %middle.block1662 ]
  br label %.lr.ph.i.i.i.i.i.i.i534

.lr.ph.i.i.i.i.i.i.i534:                          ; preds = %.lr.ph.i.i.i.i.i.i.i534.preheader1810, %.lr.ph.i.i.i.i.i.i.i534
  %.012.i.i.i.i.i.i.i535 = phi ptr [ %i.aww, %.lr.ph.i.i.i.i.i.i.i534 ], [ %.012.i.i.i.i.i.i.i535.ph, %.lr.ph.i.i.i.i.i.i.i534.preheader1810 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i536 = phi ptr [ %i.awv, %.lr.ph.i.i.i.i.i.i.i534 ], [ %.0911.i.i.i.i.i.i.i536.ph, %.lr.ph.i.i.i.i.i.i.i534.preheader1810 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  %i.awu = load i64, ptr %.0911.i.i.i.i.i.i.i536, align 8, !tbaa !117, !alias.scope !1238, !noalias !1235
  store i64 %i.awu, ptr %.012.i.i.i.i.i.i.i535, align 8, !tbaa !117, !alias.scope !1235, !noalias !1238
  store ptr null, ptr %.0911.i.i.i.i.i.i.i536, align 8, !tbaa !117, !alias.scope !1238, !noalias !1235
  %i.awv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i536, i64 8 ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i535, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i537 = icmp eq ptr %i.awv, %i.apc
  br i1 %.not.i.i.i.i.i.i.i537, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i538, label %.lr.ph.i.i.i.i.i.i.i534, !llvm.loop !1246

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i538: ; preds = %.lr.ph.i.i.i.i.i.i.i534, %middle.block1662, %.noexc543
  %.0.lcssa.i.i.i.i.i.i.i539 = phi ptr [ %i.awe, %.noexc543 ], [ %i.awn, %middle.block1662 ], [ %i.aww, %.lr.ph.i.i.i.i.i.i.i534 ]
  %i.awx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i539, i64 8 ; 3 uses
  %.not.i23.i.i.i540 = icmp eq ptr %i.apd, null
  br i1 %.not.i23.i.i.i540, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit544, label %bb.it

bb.it:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i538
  call void @_ZdlPv(ptr noundef nonnull %i.apd) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit544

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit544: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i538, %bb.it
  store ptr %i.awe, ptr %0, align 8, !tbaa !348
  store ptr %i.awx, ptr %i.w, align 8, !tbaa !349
  %i.awy = getelementptr inbounds nuw [8 x i8], ptr %i.awe, i64 %i.awc ; 3 uses
  store ptr %i.awy, ptr %i.x, align 8, !tbaa !446
  %.pr911 = load ptr, ptr %42, align 8, !tbaa !117 ; 3 uses
  %.not.i545 = icmp eq ptr %.pr911, null
  br i1 %.not.i545, label %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit549, label %bb.iu

bb.iu:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit544
  %i.awz = load ptr, ptr %.pr911, align 8, !tbaa !350 ; 3 uses
  %.not.i.i.i.i546 = icmp eq ptr %i.awz, null
  br i1 %.not.i.i.i.i546, label %_ZNKSt14default_deleteIN6duckdb10FilterInfoEEclEPS1_.exit.i548, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i547

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i547: ; preds = %bb.iu
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !352
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 8
  %i.axc = load ptr, ptr %i.axb, align 8
  call void %i.axc(ptr noundef nonnull align 8 dereferenceable(88) %i.awz) #28, !inline_history !1179
  br label %_ZNKSt14default_deleteIN6duckdb10FilterInfoEEclEPS1_.exit.i548

_ZNKSt14default_deleteIN6duckdb10FilterInfoEEclEPS1_.exit.i548: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i547, %bb.iu
  call void @_ZdlPv(ptr noundef nonnull %.pr911) #27
  br label %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit549

_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit549: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit544.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit544, %_ZNKSt14default_deleteIN6duckdb10FilterInfoEEclEPS1_.exit.i548
  %i.axd = phi ptr [ %i.apc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit544.thread ], [ %i.awy, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit544 ], [ %i.awy, %_ZNKSt14default_deleteIN6duckdb10FilterInfoEEclEPS1_.exit.i548 ]
  %i.axe = phi ptr [ %i.apd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit544.thread ], [ %i.awe, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit544 ], [ %i.awe, %_ZNKSt14default_deleteIN6duckdb10FilterInfoEEclEPS1_.exit.i548 ]
  %i.axf = phi ptr [ %i.avx, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit544.thread ], [ %i.awx, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit544 ], [ %i.awx, %_ZNKSt14default_deleteIN6duckdb10FilterInfoEEclEPS1_.exit.i548 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit499

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit499: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i496, %bb.ig, %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit549
  %i.axg = phi ptr [ %i.apc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i496 ], [ %i.apc, %bb.ig ], [ %i.axd, %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit549 ]
  %i.axh = phi ptr [ %i.apd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i496 ], [ %i.apd, %bb.ig ], [ %i.axe, %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit549 ]
  %i.axi = phi ptr [ %i.ape, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i496 ], [ %i.ape, %bb.ig ], [ %i.axf, %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit549 ]
  %i.axj = load ptr, ptr %i.am, align 8, !tbaa !167 ; 2 uses
  %.not5.i.i.i.i550 = icmp eq ptr %i.axj, null
  br i1 %.not5.i.i.i.i550, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i554, label %.lr.ph.i.i.i.i551

.lr.ph.i.i.i.i551:                                ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit499, %.lr.ph.i.i.i.i551
  %.06.i.i.i.i552 = phi ptr [ %i.axk, %.lr.ph.i.i.i.i551 ], [ %i.axj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit499 ] ; 2 uses
  %i.axk = load ptr, ptr %.06.i.i.i.i552, align 8, !tbaa !33 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i552) #27
  %.not.i.i.i.i553 = icmp eq ptr %i.axk, null
  br i1 %.not.i.i.i.i553, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i554, label %.lr.ph.i.i.i.i551, !llvm.loop !168

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i554: ; preds = %.lr.ph.i.i.i.i551, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit499
  %i.axl = load ptr, ptr %41, align 8, !tbaa !162
  %i.axm = load i64, ptr %i.al, align 8, !tbaa !164
  %i.axn = shl i64 %i.axm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.axl, i8 0, i64 %i.axn, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.axo = load ptr, ptr %41, align 8, !tbaa !162 ; 2 uses
  %i.axp = icmp eq ptr %i.axo, %i.ak
  br i1 %i.axp, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit555, label %bb.iv

bb.iv:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i554
  call void @_ZdlPv(ptr noundef %i.axo) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit555

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit555: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i554, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread909

bb.iw:                                            ; preds = %bb.ik
  %i.axq = landingpad { ptr, i32 }
          cleanup
  br label %.body481

bb.ix:                                            ; preds = %bb.ip
  %i.axr = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

.loopexit960:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i530
  %lpad.loopexit962 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

.loopexit.split-lp961:                            ; preds = %bb.is
  %lpad.loopexit.split-lp963 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.iy:                                            ; preds = %.loopexit.split-lp961, %.loopexit960
  %lpad.phi964 = phi { ptr, i32 } [ %lpad.loopexit962, %.loopexit960 ], [ %lpad.loopexit.split-lp963, %.loopexit.split-lp961 ]
  call void @_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %42) #28
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %.pn = phi { ptr, i32 } [ %lpad.phi964, %bb.iy ], [ %i.axr, %bb.ix ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  br label %.body481

.body481:                                         ; preds = %.loopexit956, %.loopexit.split-lp957, %bb.iw, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i512, %bb.io, %bb.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i480, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i479, %bb.iz
  %.pn82 = phi { ptr, i32 } [ %i.atb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i479 ], [ %.pn, %bb.iz ], [ %.pn35.ph.i514, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i512 ], [ %i.atb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i480 ], [ %.pn9.i.i476, %bb.ic ], [ %i.axq, %bb.iw ], [ %i.avi, %bb.io ], [ %lpad.loopexit958, %.loopexit956 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp957 ]
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %41) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %.body440

_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461.thread909: ; preds = %.noexc458, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit555, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461
  %i.axs = phi ptr [ %i.apc, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461 ], [ %i.axg, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit555 ], [ %i.apc, %.noexc458 ] ; 3 uses
  %i.axt = phi ptr [ %i.apd, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461 ], [ %i.axh, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit555 ], [ %i.apd, %.noexc458 ] ; 3 uses
  %i.axu = phi ptr [ %i.ape, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit461 ], [ %i.axi, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit555 ], [ %i.ape, %.noexc458 ] ; 3 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %.sroa.0819.01083, i64 8 ; 2 uses
  %.not919 = icmp eq ptr %i.axv, %i.aoq
  br i1 %.not919, label %._crit_edge1086, label %.lr.ph1085

.body440:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit925, %.loopexit.split-lp926.loopexit.split-lp, %.loopexit.split-lp926.loopexit, %bb.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i468, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i467, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i789, %bb.hk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i438, %.body481
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %.body481 ], [ %i.apo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i438 ], [ %i.ass, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i789 ], [ %i.apo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i439 ], [ %.pn9.i.i435, %bb.hk ], [ %i.arf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i467 ], [ %i.arf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i468 ], [ %.pn9.i.i464, %bb.ht ], [ %lpad.loopexit.split-lp930, %.loopexit.split-lp926.loopexit.split-lp ], [ %lpad.loopexit927, %.loopexit925 ], [ %lpad.loopexit929, %.loopexit.split-lp926.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit920, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp921, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %40) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %.body328

_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i, %.loopexit968, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.axw = phi ptr [ %i.anw, %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %i.anw, %.loopexit968 ], [ %i.apa, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ]
  %i.axx = phi ptr [ %i.anx, %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %i.anx, %.loopexit968 ], [ %i.aoz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ]
  %i.axy = phi ptr [ %i.any, %_ZSt8_DestroyIPN6duckdb13JoinConditionES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %i.any, %.loopexit968 ], [ %i.aoy, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ]
  %i.axz = getelementptr inbounds nuw i8, ptr %.sroa.0863.01088, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.axz, %i.o
  br i1 %.not, label %._crit_edge1091, label %bb.c

.body328:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i321, %bb.hd, %.body352.thread904, %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426, %.body, %.body440
  %.pn98.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %.body440 ], [ %.pn98.pn.pn.pn, %.body ], [ %i.afi, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i321 ], [ %i.ani, %bb.hd ], [ %lpad.phi971, %.body352.thread904 ], [ %.pn85.pn.pn.pn897, %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426 ]
  call void @_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %30) #28
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb19RelationsSetToStatsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i31
  %.012.i.i.i.i28 = phi ptr [ %i.cp, %_ZSt19__relocate_object_aIN6duckdb19RelationsSetToStatsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i31 ], [ %i.bd, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 13 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.co, %_ZSt19__relocate_object_aIN6duckdb19RelationsSetToStatsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i31 ], [ %1, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %i.be = load ptr, ptr %.0911.i.i.i.i29, align 8, !tbaa !542, !alias.scope !1560, !noalias !1557 ; 3 uses
  store ptr %i.be, ptr %.012.i.i.i.i28, align 8, !tbaa !542, !alias.scope !1557, !noalias !1560
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !541, !alias.scope !1560, !noalias !1557 ; 2 uses
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !541, !alias.scope !1557, !noalias !1560
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !558, !alias.scope !1560, !noalias !1557 ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !33, !alias.scope !1557, !noalias !1560
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !537, !alias.scope !1560, !noalias !1557
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !537, !alias.scope !1557, !noalias !1560
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !544, !alias.scope !1562
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 48 ; 4 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !546, !alias.scope !1557, !noalias !1560
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 48 ; 4 uses
  %i.bs = icmp eq ptr %i.be, %i.br
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i27
  store ptr %i.bq, ptr %.012.i.i.i.i28, align 8, !tbaa !542, !alias.scope !1557, !noalias !1560
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !546, !alias.scope !1560, !noalias !1557
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !546, !alias.scope !1557, !noalias !1560
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i27
  %i.bu = phi ptr [ %i.bq, %bb.f ], [ %i.be, %.lr.ph.i.i.i.i27 ]
  %.not.i.i.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i30, label %_ZSt19__relocate_object_aIN6duckdb19RelationsSetToStatsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i31, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !465, !noalias !1560
  %i.bx = urem i64 %i.bw, %i.bh
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bx
  store ptr %i.bi, ptr %i.by, align 8, !tbaa !78, !noalias !1560
  br label %_ZSt19__relocate_object_aIN6duckdb19RelationsSetToStatsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i31

_ZSt19__relocate_object_aIN6duckdb19RelationsSetToStatsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i31: ; preds = %bb.h, %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 40
  store i64 0, ptr %i.bz, align 8, !tbaa !700, !alias.scope !1560, !noalias !1557
  store i64 1, ptr %i.bg, align 8, !tbaa !541, !alias.scope !1560, !noalias !1557
  store ptr %i.br, ptr %.0911.i.i.i.i29, align 8, !tbaa !542, !alias.scope !1560, !noalias !1557
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 56
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ca, ptr noundef nonnull align 8 dereferenceable(17) %i.cb, i64 17, i1 false), !alias.scope !1562
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 80
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 80 ; 2 uses
  %i.ce = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !597, !alias.scope !1560, !noalias !1557
  store <2 x ptr> %i.ce, ptr %i.cc, align 8, !tbaa !597, !alias.scope !1557, !noalias !1560
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 96
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 96
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !116, !alias.scope !1560, !noalias !1557
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !116, !alias.scope !1557, !noalias !1560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i8 0, i64 24, i1 false), !alias.scope !1560, !noalias !1557
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 104
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 104 ; 2 uses
  %i.ck = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !524, !alias.scope !1560, !noalias !1557
  store <2 x ptr> %i.ck, ptr %i.ci, align 8, !tbaa !524, !alias.scope !1557, !noalias !1560
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 120
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 120
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !514, !alias.scope !1560, !noalias !1557
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !514, !alias.scope !1557, !noalias !1560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false), !alias.scope !1560, !noalias !1557
  store i64 0, ptr %i.br, align 8, !alias.scope !1560, !noalias !1557
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false), !alias.scope !1560, !noalias !1557
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 128 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 128 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.co, %i.b
  br i1 %.not.i.i.i.i32, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, label %.lr.ph.i.i.i.i27, !llvm.loop !1556

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34: ; preds = %_ZSt19__relocate_object_aIN6duckdb19RelationsSetToStatsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i31, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i33 = phi ptr [ %i.bd, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.cp, %_ZSt19__relocate_object_aIN6duckdb19RelationsSetToStatsES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i31 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN6duckdb19RelationsSetToStatsESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #27
  br label %_ZNSt12_Vector_baseIN6duckdb19RelationsSetToStatsESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb19RelationsSetToStatsESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !566
  store ptr %.0.lcssa.i.i.i.i33, ptr %i.a, align 8, !tbaa !560
  %i.cr = getelementptr inbounds nuw [128 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !561
  ret void

bb.j:                                             ; preds = %bb.k
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %_ZNKSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  %i.cv = tail call ptr @__cxa_begin_catch(ptr %i.cu) #28 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.cs

bb.m:                                             ; preds = %bb.j
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  tail call void @__clang_call_terminate(ptr %i.cx) #31
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19RelationsSetToStatsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !542
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !541
  store i64 %i.c, ptr %i.a, align 8, !tbaa !541
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !537
  store i64 %i.g, ptr %i.e, align 8, !tbaa !537
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !544
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.j, align 8, !tbaa !546
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %0, ptr %2, align 8, !tbaa !547
  call void @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSC_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.k, ptr noundef nonnull align 8 dereferenceable(17) %i.l, i64 17, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !115  ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !107  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = icmp ugt i64 %i.t, 9223372036854775800
  br i1 %i.u, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #30
          to label %.noexc8 unwind label %bb.g

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.w = phi ptr [ null, %bb.a ], [ %i.v, %_ZNSt15__new_allocatorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 8 uses
  store ptr %i.w, ptr %i.m, align 8, !tbaa !107
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !115
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.y, ptr %i.z, align 8, !tbaa !116
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !597 ; 6 uses
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !597 ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc8
  %i.ac = ptrtoaddr ptr %i.aa to i64
  %i.ad = ptrtoaddr ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.aa to i64
  %3 = sub i64 %i.ae, %i.af
  %4 = add i64 %3, -8                             ; 2 uses
  %i.ag = lshr i64 %4, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 72
  %i.ai = sub i64 %i.ac, %i.ad
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.w, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.aa, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.am ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.aa, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep18, align 8, !tbaa !117
  %wide.load19 = load <2 x i64>, ptr %i.an, align 8, !tbaa !117
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !117
  store <2 x i64> %wide.load19, ptr %i.ao, align 8, !tbaa !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1563

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader21

.lr.ph.i.i.i.i.i.i.preheader21:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader21, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader21 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader21 ] ; 2 uses
  %i.aq = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !117
  store i64 %i.aq, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !117
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1564

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.w, %.noexc8 ], [ %i.ak, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.x, align 8, !tbaa !115
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !436 ; 2 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !435 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i9 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i.i.i.i.i9, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.bb = icmp ugt i64 %i.ba, 9223372036854775776
  br i1 %i.bb, label %.noexc.i.i.i10, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i10:                                   ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %.noexc.i.i.i10
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #30
          to label %.noexc12 unwind label %bb.h

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.loopexit
  %i.bd = phi ptr [ null, %.loopexit ], [ %i.bc, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.bd, ptr %i.at, align 8, !tbaa !435
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !436
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ba
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !514
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !524
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !524
  %i.bj = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.bh, ptr %i.bi, ptr noundef %i.bd)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc12
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !435 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #27
  br label %.body

bb.f:                                             ; preds = %.noexc12
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !436
  ret void

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EED2Ev.exit

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i10
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bn, %bb.h ], [ %i.bk, %bb.e ], [ %i.bk, %bb.d ] ; 2 uses
  %i.bo = load ptr, ptr %i.m, align 8, !tbaa !107 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #27
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EED2Ev.exit: ; preds = %bb.i, %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.g ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.i ]
  call void @_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !563
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

end_hunk_5
