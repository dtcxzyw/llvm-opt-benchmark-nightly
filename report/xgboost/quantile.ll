Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/quantile?download=true
inline.NumInlined: 5688
inline.NumDeleted: 1647
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEm:bb.a

.lr.ph:                                           ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit69
  %i.ab = phi ptr [ %.promoted179, %.lr.ph ], [ %i.ba, %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit69 ] ; 6 uses
  %.037165 = phi i64 [ %.0.lcssa.i, %.lr.ph ], [ %.0.lcssa.i62, %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit69 ] ; 3 uses
  %i.ac = phi ptr [ %.promoted167, %.lr.ph ], [ %i.bc, %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit69 ] ; 5 uses
  %i.ad = phi ptr [ %.promoted179, %.lr.ph ], [ %i.bb, %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit69 ] ; 10 uses
  %i.ae = load i64, ptr %1, align 8, !tbaa !288
  %i.af = icmp ult i64 %.037165, %i.ae
  br i1 %i.af, label %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit59, label %bb.i, !prof !75

bb.i:                                             ; preds = %bb.h
  store ptr %i.ac, ptr %i.k, align 8
  store ptr %i.ad, ptr %0, align 8
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit59: ; preds = %bb.h
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !287
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.037165
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !293 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit59
  store float %i.aj, ptr %i.ab, align 4, !tbaa !77
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !71
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit59
  %i.al = ptrtoint ptr %i.ab to i64
  %i.am = ptrtoint ptr %i.ad to i64
  %i.an = sub i64 %i.al, %i.am                    ; 6 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775804
  br i1 %i.ao, label %bb.l, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  store ptr %i.ac, ptr %i.k, align 8
  store ptr %i.ad, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #29
          to label %.noexc60 unwind label %.loopexit.split-lp148

.noexc60:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ap = ashr exact i64 %i.an, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 2305843009213693951)
  %i.at = select i1 %i.ar, i64 2305843009213693951, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #30
          to label %.noexc61 unwind label %.loopexit147 ; 4 uses

.noexc61:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  store float %i.aj, ptr %i.aw, align 4, !tbaa !77
  %i.ax = icmp sgt i64 %i.an, 0
  br i1 %i.ax, label %bb.m, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %.noexc61
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr align 4 %i.ad, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %.noexc61
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.an) #31
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.ay, ptr %i.aa, align 8, !tbaa !71
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.at
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.j
  %i.ba = phi ptr [ %i.ay, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.ak, %bb.j ] ; 3 uses
  %i.bb = phi ptr [ %i.av, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.ad, %bb.j ] ; 4 uses
  %i.bc = phi ptr [ %i.az, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.ac, %bb.j ] ; 4 uses
  %i.bd = add nuw i64 %.037165, 1                 ; 4 uses
  %i.be = icmp ult i64 %i.bd, %i.b
  br i1 %i.be, label %.lr.ph.i63, label %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit69

.lr.ph.i63:                                       ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.bf = load i64, ptr %1, align 8, !tbaa !288
  %umax.i64 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.bd)
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i63
  %.06.i65 = phi i64 [ %i.bd, %.lr.ph.i63 ], [ %i.bl, %bb.q ] ; 4 uses
  %exitcond.not.i66 = icmp eq i64 %.06.i65, %umax.i64
  br i1 %exitcond.not.i66, label %bb.p, label %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i67, !prof !73

bb.p:                                             ; preds = %bb.o
  store ptr %i.bc, ptr %i.k, align 8
  store ptr %i.bb, ptr %0, align 8
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i67: ; preds = %bb.o
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !287
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.06.i65
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !293
  %i.bk = fcmp ugt float %i.bj, %i.aj
  br i1 %i.bk, label %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit69, label %bb.q

bb.q:                                             ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i67
  %i.bl = add i64 %.06.i65, 1                     ; 2 uses
  %exitcond8.not.i68 = icmp eq i64 %i.bl, %i.b
  br i1 %exitcond8.not.i68, label %.critedge57.loopexit146, label %bb.o, !llvm.loop !832

_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit69: ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i67, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.0.lcssa.i62 = phi i64 [ %i.bd, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %.06.i65, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i67 ] ; 2 uses
  %i.bm = icmp ult i64 %.0.lcssa.i62, %i.b
  br i1 %i.bm, label %bb.h, label %.critedge57.loopexit146, !llvm.loop !833

.loopexit147:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit149 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %i.k, align 8
  store ptr %i.ad, ptr %0, align 8
  br label %bb.aw

.loopexit.split-lp148:                            ; preds = %bb.l
  %lpad.loopexit.split-lp150 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.r:                                             ; preds = %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit.thread, %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit
  %.0.lcssa.i279 = phi i64 [ 1, %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit.thread ], [ %.0.lcssa.i, %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit ]
  %i.bn = add i64 %i.b, -1                        ; 4 uses
  %i.bo = icmp ult i64 %i.bn, %i.p
  br i1 %i.bo, label %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit70, label %bb.s, !prof !75

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit70: ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !294
  %i.bs = fpext float %i.br to double
  %i.bt = icmp ugt i64 %2, 1
  br i1 %i.bt, label %.lr.ph195, label %.critedge57.loopexit145

.lr.ph195:                                        ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit70
  %i.bu = uitofp i64 %2 to double
  %i.bv = add i64 %i.b, -2                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph195, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit104
  %i.bx = phi ptr [ %.promoted179, %.lr.ph195 ], [ %i.es, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit104 ] ; 8 uses
  %.035194 = phi i64 [ 1, %.lr.ph195 ], [ %i.ev, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit104 ] ; 2 uses
  %.036193 = phi i64 [ 0, %.lr.ph195 ], [ %.1.lcssa, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit104 ] ; 3 uses
  %.138192 = phi i64 [ %.0.lcssa.i279, %.lr.ph195 ], [ %.2, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit104 ] ; 9 uses
  %.039191 = phi float [ %i.t, %.lr.ph195 ], [ %.0, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit104 ] ; 2 uses
  %i.by = phi ptr [ %.promoted167, %.lr.ph195 ], [ %i.eu, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit104 ] ; 14 uses
  %i.bz = phi ptr [ %.promoted179, %.lr.ph195 ], [ %i.et, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit104 ] ; 19 uses
  %i.ca = uitofp i64 %.035194 to double
  %i.cb = fmul double %i.bs, %i.ca
  %i.cc = fdiv double %i.cb, %i.bu
  %i.cd = fmul double %i.cc, 2.000000e+00         ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.036193, i64 %i.bv) ; 3 uses
  %.pre.pre = load i64, ptr %1, align 8, !tbaa !288 ; 7 uses
  %exitcond.not415.not = icmp ult i64 %.036193, %i.bv
  br i1 %exitcond.not415.not, label %.lr.ph417, label %.critedge

bb.u:                                             ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit72
  %exitcond.not = icmp eq i64 %i.ce, %umax
  br i1 %exitcond.not, label %.critedge, label %.lr.ph417, !llvm.loop !834

.lr.ph417:                                        ; preds = %bb.t, %bb.u
  %.1416 = phi i64 [ %i.ce, %bb.u ], [ %.036193, %bb.t ] ; 2 uses
  %i.ce = add i64 %.1416, 1                       ; 4 uses
  %i.cf = icmp ult i64 %i.ce, %.pre.pre
  br i1 %i.cf, label %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit72, label %bb.v, !prof !75

bb.v:                                             ; preds = %.lr.ph417
  store ptr %i.by, ptr %i.k, align 8
  store ptr %i.bz, ptr %0, align 8
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit72: ; preds = %.lr.ph417
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !287
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.ce ; 2 uses
  %3 = load float, ptr %i.ch, align 4, !tbaa !295
  %4 = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %5 = load float, ptr %4, align 4, !tbaa !294
  %6 = fadd float %3, %5
  %i.ci = fpext float %6 to double
  %i.cj = fcmp ult double %i.cd, %i.ci
  br i1 %i.cj, label %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit72..critedge_crit_edge, label %bb.u, !llvm.loop !834

_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit72..critedge_crit_edge: ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit72
  br label %.critedge, !llvm.loop !834

.critedge:                                        ; preds = %bb.u, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit72..critedge_crit_edge, %bb.t
  %.1.lcssa = phi i64 [ %umax, %bb.t ], [ %.1416, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit72..critedge_crit_edge ], [ %umax, %bb.u ] ; 4 uses
  %i.ck = icmp ult i64 %.1.lcssa, %.pre.pre
  br i1 %i.ck, label %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit73, label %bb.w, !prof !75

bb.w:                                             ; preds = %.critedge
  store ptr %i.by, ptr %i.k, align 8
  store ptr %i.bz, ptr %0, align 8
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit73: ; preds = %.critedge
  %i.cl = load ptr, ptr %i.q, align 8, !tbaa !287 ; 6 uses
  %i.cm = add nuw i64 %.1.lcssa, 1                ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %.pre.pre
  br i1 %i.cn, label %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit74, label %bb.x, !prof !75

bb.x:                                             ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit73
  store ptr %i.by, ptr %i.k, align 8
  store ptr %i.bz, ptr %0, align 8
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit74: ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit73
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.1.lcssa ; 3 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !295
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !296
  %i.cs = fadd float %i.cp, %i.cr
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cm ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !294
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !296
  %i.cy = fsub float %i.cv, %i.cx
  %i.cz = fadd float %i.cs, %i.cy
  %i.da = fpext float %i.cz to double
  %i.db = fcmp olt double %i.cd, %i.da
  %spec.select = select i1 %i.db, ptr %i.co, ptr %i.ct
  %i.dc = getelementptr inbounds nuw i8, ptr %spec.select, i64 12
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !293 ; 8 uses
  %i.de = fcmp ugt float %i.dd, %.039191
  %i.df = icmp ult i64 %.138192, %i.b             ; 2 uses
  br i1 %i.de, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit74
  br i1 %i.df, label %.lr.ph.i78, label %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit84

.lr.ph.i78:                                       ; preds = %bb.y
  %umax.i79 = tail call i64 @llvm.umax.i64(i64 %.pre.pre, i64 %.138192)
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph.i78
  %.06.i80 = phi i64 [ %.138192, %.lr.ph.i78 ], [ %i.dk, %bb.ab ] ; 4 uses
  %exitcond.not.i81 = icmp eq i64 %.06.i80, %umax.i79
  br i1 %exitcond.not.i81, label %bb.aa, label %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i82, !prof !73

bb.aa:                                            ; preds = %bb.z
  store ptr %i.by, ptr %i.k, align 8
  store ptr %i.bz, ptr %0, align 8
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i82: ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.06.i80
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.di = load float, ptr %i.dh, align 4, !tbaa !293
  %i.dj = fcmp ugt float %i.di, %.039191
  br i1 %i.dj, label %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit84, label %bb.ab

bb.ab:                                            ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i82
  %i.dk = add i64 %.06.i80, 1                     ; 2 uses
  %exitcond8.not.i83 = icmp eq i64 %i.dk, %i.b
  br i1 %exitcond8.not.i83, label %.critedge57.loopexit, label %bb.z, !llvm.loop !832

_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit84: ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i82, %bb.y
  %.0.lcssa.i77 = phi i64 [ %.138192, %bb.y ], [ %.06.i80, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i82 ] ; 4 uses
  %i.dl = icmp eq i64 %.0.lcssa.i77, %i.b
  br i1 %i.dl, label %.critedge57.loopexit145, label %bb.ac

.loopexit:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i96
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.by, ptr %i.k, align 8
  store ptr %i.bz, ptr %0, align 8
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ac:                                            ; preds = %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit84
  %i.dm = icmp ult i64 %.0.lcssa.i77, %.pre.pre
  br i1 %i.dm, label %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit85, label %bb.ad, !prof !75

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.by, ptr %i.k, align 8
  store ptr %i.bz, ptr %0, align 8
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit85: ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.0.lcssa.i77
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.dp = load float, ptr %i.do, align 4, !tbaa !293
  br label %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit94

bb.ae:                                            ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit74
  br i1 %i.df, label %bb.af, label %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit94

bb.af:                                            ; preds = %bb.ae
  %i.dq = icmp ult i64 %.138192, %.pre.pre
  br i1 %i.dq, label %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit86, label %bb.ag, !prof !75

bb.ag:                                            ; preds = %bb.af
  store ptr %i.by, ptr %i.k, align 8
  store ptr %i.bz, ptr %0, align 8
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit86: ; preds = %bb.af
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.138192
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !293
  %i.du = fcmp ugt float %i.dt, %i.dd
  br i1 %i.du, label %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit94, label %bb.ah

bb.ah:                                            ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit86
  %i.dv = add nuw i64 %.138192, 1                 ; 3 uses
  %i.dw = icmp ult i64 %i.dv, %i.b
  br i1 %i.dw, label %.lr.ph.i88, label %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit94

.lr.ph.i88:                                       ; preds = %bb.ah, %bb.aj
  %.06.i90 = phi i64 [ %i.eb, %bb.aj ], [ %i.dv, %bb.ah ] ; 4 uses
  %exitcond.not.i91 = icmp eq i64 %.06.i90, %.pre.pre
  br i1 %exitcond.not.i91, label %bb.ai, label %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i92, !prof !73

bb.ai:                                            ; preds = %.lr.ph.i88
  store ptr %i.by, ptr %i.k, align 8
  store ptr %i.bz, ptr %0, align 8
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i92: ; preds = %.lr.ph.i88
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.06.i90
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !293
  %i.ea = fcmp ugt float %i.dz, %i.dd
  br i1 %i.ea, label %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit94, label %bb.aj

bb.aj:                                            ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i92
  %i.eb = add i64 %.06.i90, 1                     ; 2 uses
  %exitcond8.not.i93 = icmp eq i64 %i.eb, %i.b
  br i1 %exitcond8.not.i93, label %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit94, label %.lr.ph.i88, !llvm.loop !832

_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit94: ; preds = %bb.aj, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i92, %bb.ah, %bb.ae, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit86, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit85
  %.0 = phi float [ %i.dd, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit86 ], [ %i.dp, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit85 ], [ %i.dd, %bb.ae ], [ %i.dd, %bb.ah ], [ %i.dd, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i92 ], [ %i.dd, %bb.aj ] ; 3 uses
  %.2 = phi i64 [ %.138192, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit86 ], [ %.0.lcssa.i77, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit85 ], [ %.138192, %bb.ae ], [ %i.dv, %bb.ah ], [ %i.b, %bb.aj ], [ %.06.i90, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit.i92 ]
  %.not.i95 = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i95, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit94
  store float %.0, ptr %i.bx, align 4, !tbaa !77
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  store ptr %i.ec, ptr %i.bw, align 8, !tbaa !71
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit104

bb.al:                                            ; preds = %_ZZNK7xgboost6common9WQSummaryIffE14QueryCutValuesEmENKUlmfE_clEmf.exit94
  %i.ed = ptrtoint ptr %i.bx to i64
  %i.ee = ptrtoint ptr %i.bz to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 6 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775804
  br i1 %i.eg, label %bb.am, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i96

bb.am:                                            ; preds = %bb.al
  store ptr %i.by, ptr %i.k, align 8
  store ptr %i.bz, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #29
          to label %.noexc102 unwind label %.loopexit.split-lp

.noexc102:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i96: ; preds = %bb.al
  %i.eh = ashr exact i64 %i.ef, 2                 ; 3 uses
  %.sroa.speculated.i.i.i97 = tail call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i97, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = tail call i64 @llvm.umin.i64(i64 %i.ei, i64 2305843009213693951)
  %i.el = select i1 %i.ej, i64 2305843009213693951, i64 %i.ek ; 3 uses
  %.not.i.i.i98 = icmp ne i64 %i.el, 0
  tail call void @llvm.assume(i1 %.not.i.i.i98)
  %i.em = shl nuw nsw i64 %i.el, 2
end_hunk_0
begin_hunk_1_@_ZN7xgboost6common9WQSummaryIffE14SetPruneSortedENS0_4SpanIKNS_5EntryELm18446744073709551615EEERKSt6vectorIfSaIfEEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %i.iy = load i64, ptr %i.as, align 8, !tbaa !286 ; 4 uses
  store i64 %i.iy, ptr %i.g, align 8, !tbaa !78
  %i.iz = fadd double %.4120, %.4115
  %i.ja = icmp eq i64 %i.iy, 0
  br i1 %i.ja, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %._crit_edge336
  %i.jb = add i64 %i.iy, -1                       ; 2 uses
  %i.jc = load i64, ptr %0, align 8, !tbaa !288
  %i.jd = icmp ult i64 %i.jb, %i.jc
  br i1 %i.jd, label %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit224, label %bb.aw, !prof !75

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit224: ; preds = %bb.av
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !287
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.jf, i64 %i.jb
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !293
  %i.jj = fcmp ogt float %.4110, %i.ji
  br i1 %i.jj, label %bb.ax, label %bb.bf

bb.ax:                                            ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit224, %._crit_edge336
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.jk = load i64, ptr %i.b, align 8, !tbaa !78, !noalias !1547
  %.not.i148 = icmp ugt i64 %i.iy, %i.jk
  br i1 %.not.i148, label %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit250

_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.ax
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr278 = load ptr, ptr %13, align 8, !tbaa !80
  %.not285 = icmp eq ptr %.pr278, null
  br i1 %.not285, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit250, label %bb.ay

bb.ay:                                            ; preds = %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.jl = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc225 unwind label %bb.az

.noexc225:                                        ; preds = %bb.ay
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.jl, ptr noundef nonnull @.str.17, i32 noundef 211)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit227 unwind label %bb.az

_ZN4dmlc15LogMessageFatalC2EPKci.exit227:         ; preds = %.noexc225
  %i.jm = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit229 unwind label %bb.ba ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit229: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit227
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit229
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull @.str.115, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231
  %i.jp = load ptr, ptr %13, align 8, !tbaa !80   ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !81
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !82
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef %i.jq, i64 noundef %i.js)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit235 unwind label %bb.ba ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit235: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jt, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit237 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit237: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit235
  %i.jv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jt, ptr noundef nonnull @.str.116, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit237
  %i.jw = load i64, ptr %i.b, align 8, !tbaa !78
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jt, i64 noundef %i.jw)
          to label %_ZNSolsEm.exit241 unwind label %bb.ba ; 2 uses

_ZNSolsEm.exit241:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, ptr noundef nonnull @.str.110, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243: ; preds = %_ZNSolsEm.exit241
  %i.jz = load i64, ptr %i.g, align 8, !tbaa !78
  %i.ka = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, i64 noundef %i.jz)
          to label %_ZNSolsEm.exit245 unwind label %bb.ba ; 0 uses

_ZNSolsEm.exit245:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.bc unwind label %bb.az

bb.az:                                            ; preds = %.noexc225, %bb.ay, %_ZNSolsEm.exit245
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243, %_ZNSolsEm.exit241, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit237, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit235, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit231, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit229, %_ZN4dmlc15LogMessageFatalC2EPKci.exit227
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.bb unwind label %bb.bh

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn135 = phi { ptr, i32 } [ %i.kb, %bb.az ], [ %i.kc, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  br label %bb.bg

bb.bc:                                            ; preds = %_ZNSolsEm.exit245
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %.pr279 = load ptr, ptr %13, align 8, !tbaa !80 ; 4 uses
  %.not.i246 = icmp eq ptr %.pr279, null
  br i1 %.not.i246, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit250, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kd = load ptr, ptr %.pr279, align 8, !tbaa !81 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.pr279, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i247: ; preds = %bb.bd
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !83
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i248

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i248: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i247
  call void @_ZdlPvm(ptr noundef nonnull %.pr279, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit250

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit250: ; preds = %bb.ax, %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.bc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.ki = load i64, ptr %i.g, align 8, !tbaa !78  ; 3 uses
  %i.kj = load i64, ptr %0, align 8, !tbaa !288
  %i.kk = icmp ult i64 %i.ki, %i.kj
  br i1 %i.kk, label %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit251, label %bb.be, !prof !75

bb.be:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit250
  call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit251: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit250
  %i.kl = fptrunc double %.4115 to float
  %i.km = insertelement <2 x double> poison, double %.4120, i64 0
  %i.kn = insertelement <2 x double> %i.km, double %i.iz, i64 1
  %i.ko = fptrunc <2 x double> %i.kn to <2 x float>
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !287
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.kq, i64 %i.ki ; 3 uses
  store <2 x float> %i.ko, ptr %i.kr, align 4, !tbaa !77
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store float %i.kl, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !77
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kr, i64 12
  store float %.4110, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !77
  %i.ks = add nuw i64 %i.ki, 1                    ; 2 uses
  store i64 %i.ks, ptr %i.g, align 8, !tbaa !78
  call void @_ZN7xgboost6common9WQSummaryIffE7SetSizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ks)
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit251, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  br label %._crit_edge326

._crit_edge326:                                   ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit176, %bb.bf, %_ZNK7xgboost6common4SpanINS0_9WQSummaryIffE5EntryELm18446744073709551615EEixEm.exit177
  ret void

bb.bg:                                            ; preds = %bb.as, %bb.bb, %bb.k, %bb.e
  %.pn141.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.e ], [ %.pn132, %bb.k ], [ %.pn141.pn, %bb.as ], [ %.pn135, %bb.bb ]
  resume { ptr, i32 } %.pn141.pn.pn.pn

bb.bh:                                            ; preds = %bb.ba, %bb.ad, %bb.j, %bb.d
  %i.kt = landingpad { ptr, i32 }
          catch ptr null
  %i.ku = extractvalue { ptr, i32 } %i.kt, 0
  call void @__clang_call_terminate(ptr %i.ku) #32
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind memory(none) }
attributes #24 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!18, !19}
!llvm.ident = !{!20}
!llvm.errno.tbaa = !{!25}

!0 = distinct !{!0, !113}
!1 = distinct !{!1, !113}
!2 = distinct !{!2, !113}
!3 = distinct !{null}
!4 = distinct !{null, null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{!7, !113}
!8 = distinct !{!8, !113}
!9 = distinct !{!9, !113}
!10 = distinct !{!10, !113}
!11 = distinct !{!11, !113}
!12 = distinct !{!12, !113}
!13 = distinct !{!13, !113}
!14 = distinct !{!14, !113}
!15 = distinct !{!15, !113}
!16 = distinct !{!16, !113}
!17 = distinct !{null, null}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!21 = !{!"Simple C++ TBAA"}
!22 = !{!"omnipotent char", !21, i64 0}
!23 = !{!"int", !22, i64 0}
!24 = !{!"__libc_errno", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"any pointer", !22, i64 0}
!27 = !{!"p1 _ZTSN7xgboost6common15WQuantileSketchE", !26, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN7xgboost6common15WQuantileSketchESaIS2_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseIN7xgboost6common15WQuantileSketchESaIS2_EE12_Vector_implE", !28, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIN7xgboost6common15WQuantileSketchESaIS2_EE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIN7xgboost6common15WQuantileSketchESaIS2_EE", !30, i64 0}
!32 = !{!"p1 _ZTSSt3setIfSt4lessIfESaIfEE", !26, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseISt3setIfSt4lessIfESaIfEESaIS4_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseISt3setIfSt4lessIfESaIfEESaIS4_EE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseISt3setIfSt4lessIfESaIfEESaIS4_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorISt3setIfSt4lessIfESaIfEESaIS4_EE", !35, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN7xgboost11FeatureTypeESaIS1_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseIN7xgboost11FeatureTypeESaIS1_EE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIN7xgboost11FeatureTypeESaIS1_EE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorIN7xgboost11FeatureTypeESaIS1_EE", !39, i64 0}
!41 = !{!"p1 long", !26, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !42, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseImSaImEE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorImSaImEE", !44, i64 0}
!46 = !{!"bool", !22, i64 0}
!47 = !{!"p1 omnipotent char", !26, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !47, i64 0}
!49 = !{!"long", !22, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !48, i64 0, !49, i64 8, !22, i64 16}
!51 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!52 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !51, i64 0}
!53 = !{!"_ZTSSt14_Rb_tree_color", !22, i64 0}
!54 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !26, i64 0}
!55 = !{!"_ZTSSt18_Rb_tree_node_base", !53, i64 0, !54, i64 8, !54, i64 16, !54, i64 24}
!56 = !{!"_ZTSSt15_Rb_tree_header", !55, i64 0, !49, i64 32}
!57 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost6common7Monitor10StatisticsEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE13_Rb_tree_implISG_Lb1EEE", !52, i64 0, !56, i64 8}
!58 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost6common7Monitor10StatisticsEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !57, i64 0}
!59 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost6common7Monitor10StatisticsESt4lessIS5_ESaISt4pairIKS5_S9_EEE", !58, i64 0}
!60 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !49, i64 0}
!61 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !60, i64 0}
!62 = !{!"_ZTSN7xgboost6common5TimerE", !61, i64 0, !60, i64 8}
!63 = !{!"_ZTSN7xgboost6common7MonitorE", !50, i64 0, !59, i64 32, !62, i64 80}
!64 = !{!"_ZTSN7xgboost6common19HostSketchContainerE", !31, i64 0, !36, i64 24, !40, i64 48, !45, i64 72, !23, i64 96, !46, i64 100, !23, i64 104, !46, i64 108, !63, i64 112}
!65 = !{!64, !46, i64 100}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = !{!"p1 float", !26, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!71 = !{!70, !68, i64 8}
!72 = !{!70, !68, i64 0}
!73 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!74 = !{!70, !68, i64 16}
!75 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!76 = !{!"float", !22, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!49, !49, i64 0}
!79 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!50, !47, i64 0}
!82 = !{!50, !49, i64 8}
!83 = !{!22, !22, i64 0}
!84 = !{!"p1 _ZTSN7xgboost20HostDeviceVectorImplIfEE", !26, i64 0}
!85 = !{!"_ZTSN7xgboost16HostDeviceVectorIfEE", !84, i64 0}
!86 = !{!"_ZTSN7xgboost6linalg5OrderE", !22, i64 0}
!87 = !{!"_ZTSN7xgboost6linalg6TensorIfLi2EEE", !85, i64 0, !22, i64 8, !86, i64 24}
!88 = !{!"p1 int", !26, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !88, i64 0, !88, i64 8, !88, i64 16}
!90 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !89, i64 0}
!91 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !90, i64 0}
!92 = !{!"_ZTSSt6vectorIjSaIjEE", !91, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!94 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !93, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !95, i64 0}
!97 = !{!"p1 _ZTSN7xgboost20HostDeviceVectorImplINS_11FeatureTypeEEE", !26, i64 0}
!98 = !{!"_ZTSN7xgboost16HostDeviceVectorINS_11FeatureTypeEEE", !97, i64 0}
!99 = !{!"p1 _ZTSN7xgboost12CatContainerE", !26, i64 0}
!100 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0}
!101 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !100, i64 0}
!102 = !{!"_ZTSSt12__shared_ptrIN7xgboost12CatContainerELN9__gnu_cxx12_Lock_policyE2EE", !99, i64 0, !101, i64 8}
!103 = !{!"_ZTSSt10shared_ptrIN7xgboost12CatContainerEE", !102, i64 0}
!104 = !{!"_ZTSN7xgboost8MetaInfoE", !49, i64 0, !49, i64 8, !49, i64 16, !87, i64 24, !92, i64 56, !85, i64 80, !87, i64 88, !85, i64 120, !85, i64 128, !96, i64 136, !96, i64 160, !98, i64 184, !85, i64 192, !45, i64 200, !46, i64 224, !103, i64 232}
!105 = !{!104, !49, i64 16}
!106 = !{!104, !49, i64 8}
!107 = !{!104, !49, i64 0}
!108 = !{!41, !41, i64 0}
!109 = !{!89, !88, i64 8}
!110 = !{!89, !88, i64 0}
!111 = !{!23, !23, i64 0}
!112 = !{!88, !88, i64 0}
!113 = !{!"llvm.loop.mustprogress"}
!114 = !{!46, !46, i64 0}
!115 = !{!64, !23, i64 104}
!116 = !{!"p1 _ZTSSt6vectorIjSaIjEE", !26, i64 0}
!117 = !{!116, !116, i64 0}
!118 = !{!"p1 _ZTSN7xgboost4data17ArrayAdapterBatchE", !26, i64 0}
!119 = !{!118, !118, i64 0}
!120 = !{!"p1 _ZTSN7xgboost6common15OptionalWeightsE", !26, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!"p1 bool", !26, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!"p1 _ZTSN7xgboost4data14IsValidFunctorE", !26, i64 0}
!125 = !{!124, !124, i64 0}
!126 = !{!"p1 _ZTSN7xgboost6common19HostSketchContainerE", !26, i64 0}
!127 = !{!"_ZTSZN7xgboost6common19HostSketchContainer15PushRowPageImplINS_4data17ArrayAdapterBatchENS3_14IsValidFunctorEEEvRKT_mNS0_15OptionalWeightsEmmbT0_EUlmE_", !116, i64 0, !41, i64 8, !118, i64 16, !120, i64 24, !41, i64 32, !122, i64 40, !124, i64 48, !126, i64 56}
!128 = !{!127, !126, i64 56}
!129 = !{!89, !88, i64 16}
!130 = !{!"_ZTSN7xgboost4data17DenseAdapterBatchE", !68, i64 0, !49, i64 8, !49, i64 16}
!131 = !{!130, !49, i64 8}
!132 = !{!"p1 _ZTSN7xgboost4data17DenseAdapterBatchE", !26, i64 0}
!133 = !{!132, !132, i64 0}
!134 = !{!"_ZTSZN7xgboost6common19HostSketchContainer15PushRowPageImplINS_4data17DenseAdapterBatchENS3_14IsValidFunctorEEEvRKT_mNS0_15OptionalWeightsEmmbT0_EUlmE_", !116, i64 0, !41, i64 8, !132, i64 16, !120, i64 24, !41, i64 32, !122, i64 40, !124, i64 48, !126, i64 56}
!135 = !{!134, !126, i64 56}
!136 = !{!"p1 _ZTSN7xgboost4data20CSRArrayAdapterBatchE", !26, i64 0}
!137 = !{!136, !136, i64 0}
!138 = !{!"_ZTSZN7xgboost6common19HostSketchContainer15PushRowPageImplINS_4data20CSRArrayAdapterBatchENS3_14IsValidFunctorEEEvRKT_mNS0_15OptionalWeightsEmmbT0_EUlmE_", !116, i64 0, !41, i64 8, !136, i64 16, !120, i64 24, !41, i64 32, !122, i64 40, !124, i64 48, !126, i64 56}
!139 = !{!138, !126, i64 56}
!140 = !{!"_ZTSN7xgboost17BitFieldContainerIhNS_11RBitsPolicyIhEELb0EEE", !47, i64 0, !49, i64 8}
!141 = !{!"_ZTSN7xgboost21ArrayInterfaceHandler4TypeE", !22, i64 0}
!142 = !{!"_ZTSN7xgboost14ArrayInterfaceILi1ELb1EEE", !140, i64 0, !22, i64 16, !22, i64 24, !26, i64 32, !49, i64 40, !46, i64 48, !141, i64 49}
!143 = !{!"_ZTSN7xgboost4data20CSCArrayAdapterBatchE", !142, i64 0, !142, i64 56, !142, i64 112}
!144 = !{!143, !49, i64 40}
!145 = !{!"p1 _ZTSN7xgboost4data20CSCArrayAdapterBatchE", !26, i64 0}
!146 = !{!145, !145, i64 0}
!147 = !{!"_ZTSZN7xgboost6common19HostSketchContainer15PushRowPageImplINS_4data20CSCArrayAdapterBatchENS3_14IsValidFunctorEEEvRKT_mNS0_15OptionalWeightsEmmbT0_EUlmE_", !116, i64 0, !41, i64 8, !145, i64 16, !120, i64 24, !41, i64 32, !122, i64 40, !124, i64 48, !126, i64 56}
!148 = !{!147, !126, i64 56}
!149 = !{!"_ZTSN7xgboost6common4SpanIKmLm18446744073709551615EEE", !49, i64 0, !41, i64 8}
!150 = !{!149, !49, i64 0}
!151 = !{!"p1 _ZTSN7xgboost4data22SparsePageAdapterBatchE", !26, i64 0}
!152 = !{!151, !151, i64 0}
!153 = !{!"_ZTSZN7xgboost6common19HostSketchContainer15PushRowPageImplINS_4data22SparsePageAdapterBatchENS3_14IsValidFunctorEEEvRKT_mNS0_15OptionalWeightsEmmbT0_EUlmE_", !116, i64 0, !41, i64 8, !151, i64 16, !120, i64 24, !41, i64 32, !122, i64 40, !124, i64 48, !126, i64 56}
!154 = !{!153, !126, i64 56}
!155 = !{!"p1 _ZTSN7xgboost14ArrayInterfaceILi1ELb1EEE", !26, i64 0}
!156 = !{!"_ZTSN7xgboost6common4SpanIKNS_14ArrayInterfaceILi1ELb1EEELm18446744073709551615EEE", !49, i64 0, !155, i64 8}
!157 = !{!156, !49, i64 0}
!158 = !{!156, !155, i64 8}
!159 = !{!"p1 _ZTSN7xgboost4data27EncColumnarAdapterBatchImplINS_12NoOpAccessorEEE", !26, i64 0}
end_hunk_1
