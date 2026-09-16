Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/json?download=true
inline.NumInlined: 4901
inline.NumDeleted: 1765
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E_clES7_:bb.a
  %i.bu = icmp eq i32 %i.bq, 1
  br i1 %i.bu, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.bq, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1, %.lr.ph.i.new
  %.sroa.714.0 = phi i64 [ %.sroa.3.0.copyload, %.lr.ph.i.new ], [ %i.bz, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1 ] ; 3 uses
  %.sroa.0.0.copyload45.i = phi ptr [ %.sroa.0.0.copyload.pre, %.lr.ph.i.new ], [ %.sroa.0.0.copyload3.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1 ]
  %i.bv = add i64 %.sroa.714.0, 1
  %i.bw = icmp ult i64 %.sroa.714.0, %.sroa.2.0.copyload
  br i1 %i.bw, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i: ; preds = %bb.k
  %i.bx = load i8, ptr %i.bt, align 4, !tbaa !37, !noalias !680
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i, i64 1
  store i8 %i.bx, ptr %.sroa.0.0.copyload45.i, align 1, !tbaa !37, !noalias !680
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, %bb.k
  %.sroa.0.0.copyload3.i = phi ptr [ %.sroa.0.0.copyload45.i, %bb.k ], [ %i.by, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i ] ; 3 uses
  %i.bz = add i64 %.sroa.714.0, 2                 ; 2 uses
  %i.ca = icmp ult i64 %i.bv, %.sroa.2.0.copyload
  br i1 %i.ca, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %i.cb = load i8, ptr %i.bt, align 4, !tbaa !37, !noalias !680
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i, i64 1
  store i8 %i.cb, ptr %.sroa.0.0.copyload3.i, align 1, !tbaa !37, !noalias !680
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %.sroa.0.0.copyload3.i.1 = phi ptr [ %.sroa.0.0.copyload3.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i ], [ %i.cc, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1 ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.unr-lcssa, label %bb.k, !llvm.loop !10

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.unr-lcssa: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.unr-lcssa, %.lr.ph.i
  %.sroa.714.0.epil.init = phi i64 [ %.sroa.3.0.copyload, %.lr.ph.i ], [ %i.bz, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.unr-lcssa ]
  %.sroa.0.0.copyload45.i.epil.init = phi ptr [ %.sroa.0.0.copyload.pre, %.lr.ph.i ], [ %.sroa.0.0.copyload3.i.1, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.unr-lcssa ] ; 3 uses
  %lcmp.mod73 = trunc i32 %i.bq to i1
  call void @llvm.assume(i1 %lcmp.mod73)
  %i.cd = icmp ult i64 %.sroa.714.0.epil.init, %.sroa.2.0.copyload
  br i1 %i.cd, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil: ; preds = %.epil.preheader
  %i.ce = load i8, ptr %i.bt, align 4, !tbaa !37, !noalias !680
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i.epil.init, i64 1
  store i8 %i.ce, ptr %.sroa.0.0.copyload45.i.epil.init, align 1, !tbaa !37, !noalias !680
  br label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit: ; preds = %.epil.preheader, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.unr-lcssa
  %.sroa.0.0.copyload3.i.lcssa = phi ptr [ %.sroa.0.0.copyload3.i.1, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.unr-lcssa ], [ %.sroa.0.0.copyload45.i.epil.init, %.epil.preheader ], [ %i.cf, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil ]
  %i.cg = add nsw i32 %i.bq, -1
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = add i64 %.sroa.3.0.copyload, %i.ch
  %i.cj = add i64 %i.ci, 1
  %.sroa.623.sroa.0.0.extract.trunc = trunc i64 %i.bs to i8
  store i8 %.sroa.623.sroa.0.0.extract.trunc, ptr %.sroa.419.0..sroa_idx, align 8
  br label %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit._crit_edge

_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit._crit_edge: ; preds = %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit
  %.sroa.5.0.copyload = phi i64 [ %i.cj, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit ], [ %.sroa.3.0.copyload, %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit ] ; 4 uses
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload3.i.lcssa, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit ], [ %.sroa.0.0.copyload.pre, %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit ] ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ck = add i64 %.sroa.5.0.copyload, 1
  %i.cl = icmp ult i64 %.sroa.5.0.copyload, %.sroa.2.0.copyload
  br i1 %i.cl, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.then, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.cont

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.then: ; preds = %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !265
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  store ptr %i.co, ptr %2, align 8, !tbaa !74, !noalias !681
  store i8 %i.cn, ptr %.sroa.0.0.copyload, align 1, !tbaa !37
  %.sroa.031.0.copyload.pre = load ptr, ptr %2, align 8
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.cont

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.cont: ; preds = %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit._crit_edge, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.then
  %.sroa.031.0.copyload = phi ptr [ %.sroa.0.0.copyload, %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit._crit_edge ], [ %.sroa.031.0.copyload.pre, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.then ] ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !266 ; 4 uses
  %i.cr = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %i.cs = icmp slt i32 %i.cq, 0
  %i.ct = add i64 %.sroa.5.0.copyload, 2          ; 3 uses
  %i.cu = icmp ult i64 %i.ck, %.sroa.2.0.copyload ; 2 uses
  br i1 %i.cs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.cont
  br i1 %i.cu, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i3, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i2

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i3: ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 1
  store i8 45, ptr %.sroa.031.0.copyload, align 1, !tbaa !37, !noalias !682
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i2

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i2: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i3, %bb.l
  %.sroa.024.5 = phi ptr [ %i.cv, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i3 ], [ %.sroa.031.0.copyload, %bb.l ]
  %i.cw = sub nsw i32 0, %i.cq
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i

bb.m:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.cont
  br i1 %i.cu, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.then.i: ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 1
  store i8 43, ptr %.sroa.031.0.copyload, align 1, !tbaa !37, !noalias !682
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.then.i, %bb.m, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i2
  %.sroa.024.0 = phi ptr [ %.sroa.024.5, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i2 ], [ %i.cx, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.then.i ], [ %.sroa.031.0.copyload, %bb.m ] ; 5 uses
  %.0.i = phi i32 [ %i.cw, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i2 ], [ %i.cq, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.then.i ], [ %i.cq, %bb.m ] ; 5 uses
  %i.cy = icmp samesign ugt i32 %.0.i, 99
  br i1 %i.cy, label %bb.n, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i

bb.n:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i
  %i.cz = udiv i32 %.0.i, 100
  %i.da = urem i32 %.0.i, 100                     ; 2 uses
  %i.db = shl nuw nsw i32 %i.cz, 1
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.dc ; 2 uses
  %i.de = icmp samesign ugt i32 %.0.i, 999
  br i1 %i.de, label %bb.o, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i

bb.o:                                             ; preds = %bb.n
  %i.df = add i64 %.sroa.5.0.copyload, 3          ; 2 uses
  %i.dg = icmp ult i64 %i.ct, %.sroa.2.0.copyload
  br i1 %i.dg, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i: ; preds = %bb.o
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !37, !noalias !682
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 1
  store i8 %i.dh, ptr %.sroa.024.0, align 1, !tbaa !37, !noalias !682
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i, %bb.o, %bb.n
  %.sroa.526.0.copyload.i = phi i64 [ %i.df, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i ], [ %i.df, %bb.o ], [ %i.ct, %bb.n ] ; 2 uses
  %.sroa.024.0.copyload.i = phi ptr [ %i.di, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i ], [ %.sroa.024.0, %bb.o ], [ %.sroa.024.0, %bb.n ] ; 3 uses
  %i.dj = add i64 %.sroa.526.0.copyload.i, 1      ; 2 uses
  %i.dk = icmp ult i64 %.sroa.526.0.copyload.i, %.sroa.2.0.copyload
  br i1 %i.dk, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !37, !noalias !682
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.024.0.copyload.i, i64 1
  store i8 %i.dm, ptr %.sroa.024.0.copyload.i, align 1, !tbaa !37, !noalias !682
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i
  %.sroa.521.0.copyload.i = phi i64 [ %i.ct, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i ], [ %i.dj, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i ], [ %i.dj, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i ] ; 3 uses
  %.sroa.019.0.copyload.i = phi ptr [ %.sroa.024.0, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i ], [ %i.dn, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i ], [ %.sroa.024.0.copyload.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i ] ; 3 uses
  %.1.i = phi i32 [ %.0.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i ], [ %i.da, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i ], [ %i.da, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i ]
  %i.do = shl nuw nsw i32 %.1.i, 1
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.dp ; 2 uses
  %i.dr = add i64 %.sroa.521.0.copyload.i, 1
  %i.ds = icmp ult i64 %.sroa.521.0.copyload.i, %.sroa.2.0.copyload
  br i1 %i.ds, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.then.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i
  %i.dt = load i8, ptr %i.dq, align 1, !tbaa !37, !noalias !682
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload.i, i64 1
  store i8 %i.dt, ptr %.sroa.019.0.copyload.i, align 1, !tbaa !37, !noalias !682
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.then.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i
  %.sroa.024.2 = phi ptr [ %i.du, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.then.i ], [ %.sroa.019.0.copyload.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i ] ; 3 uses
  %i.dv = icmp ult i64 %i.dr, %.sroa.2.0.copyload
  br i1 %i.dv, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit18.then.i, label %_ZN3fmt2v96detail14write_exponentIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEEET0_iS8_.exit

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit18.then.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !37, !noalias !682
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.024.2, i64 1
  store i8 %i.dx, ptr %.sroa.024.2, align 1, !tbaa !37, !noalias !682
  br label %_ZN3fmt2v96detail14write_exponentIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEEET0_iS8_.exit

_ZN3fmt2v96detail14write_exponentIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEEET0_iS8_.exit: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit18.then.i
  %.sroa.024.6 = phi ptr [ %i.dy, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit18.then.i ], [ %.sroa.024.2, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i ]
  %i.dz = add i64 %.sroa.521.0.copyload.i, 2
  store ptr %.sroa.024.6, ptr %0, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dz, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cr, ptr %.sroa.23.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN3fmt2v96detail17copy_str_noinlineIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_(ptr dead_on_unwind noalias writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.sroa.08.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 6 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.a = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.not5.i = icmp eq ptr %1, %2
  br i1 %.not5.i, label %_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %4 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %5 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.b = sub i64 %4, %5
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol
  %.sroa.7.0.prol = phi i64 [ %i.d, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ], [ %.sroa.3.0.copyload, %.lr.ph.i.preheader ] ; 2 uses
  %.07.i.prol = phi ptr [ %i.c, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.0.0.copyload46.i.prol = phi ptr [ %.sroa.0.0.copyload3.i.prol, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ], [ %.sroa.08.0.copyload, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 1 ; 2 uses
  %i.d = add i64 %.sroa.7.0.prol, 1               ; 2 uses
  %i.e = icmp ult i64 %.sroa.7.0.prol, %.sroa.2.0.copyload
  br i1 %i.e, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.prol, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.prol: ; preds = %.lr.ph.i.prol
  %i.f = load i8, ptr %.07.i.prol, align 1, !tbaa !37, !noalias !687
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload46.i.prol, i64 1
  store i8 %i.f, ptr %.sroa.0.0.copyload46.i.prol, align 1, !tbaa !37, !noalias !687
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.prol, %.lr.ph.i.prol
  %.sroa.0.0.copyload3.i.prol = phi ptr [ %.sroa.0.0.copyload46.i.prol, %.lr.ph.i.prol ], [ %i.g, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.prol ] ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !685

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol, %.lr.ph.i.preheader
  %.sroa.0.0.copyload3.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.0.0.copyload3.i.prol, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ]
  %.sroa.7.0.unr = phi i64 [ %.sroa.3.0.copyload, %.lr.ph.i.preheader ], [ %i.d, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ]
  %.07.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.c, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ]
  %.sroa.0.0.copyload46.i.unr = phi ptr [ %.sroa.08.0.copyload, %.lr.ph.i.preheader ], [ %.sroa.0.0.copyload3.i.prol, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ]
  %i.h = sub i64 %5, %4
  %i.i = icmp ugt i64 %i.h, -4
  br i1 %i.i, label %_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3
  %.sroa.7.0 = phi i64 [ %i.z, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3 ], [ %.sroa.7.0.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.07.i = phi ptr [ %i.y, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3 ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.sroa.0.0.copyload46.i = phi ptr [ %.sroa.0.0.copyload3.i.3, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3 ], [ %.sroa.0.0.copyload46.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.07.i, i64 1
  %i.k = add i64 %.sroa.7.0, 1
  %i.l = icmp ult i64 %.sroa.7.0, %.sroa.2.0.copyload
  br i1 %i.l, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i: ; preds = %.lr.ph.i
  %i.m = load i8, ptr %.07.i, align 1, !tbaa !37, !noalias !687
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload46.i, i64 1
  store i8 %i.m, ptr %.sroa.0.0.copyload46.i, align 1, !tbaa !37, !noalias !687
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, %.lr.ph.i
  %.sroa.0.0.copyload3.i = phi ptr [ %.sroa.0.0.copyload46.i, %.lr.ph.i ], [ %i.n, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i, i64 2
  %i.p = add i64 %.sroa.7.0, 2
  %i.q = icmp ult i64 %i.k, %.sroa.2.0.copyload
  br i1 %i.q, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %i.r = load i8, ptr %i.j, align 1, !tbaa !37, !noalias !687
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i, i64 1
  store i8 %i.r, ptr %.sroa.0.0.copyload3.i, align 1, !tbaa !37, !noalias !687
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %.sroa.0.0.copyload3.i.1 = phi ptr [ %.sroa.0.0.copyload3.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i ], [ %i.s, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1 ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i, i64 3
  %i.u = add i64 %.sroa.7.0, 3
  %i.v = icmp ult i64 %i.p, %.sroa.2.0.copyload
  br i1 %i.v, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1
  %i.w = load i8, ptr %i.o, align 1, !tbaa !37, !noalias !687
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.1, i64 1
  store i8 %i.w, ptr %.sroa.0.0.copyload3.i.1, align 1, !tbaa !37, !noalias !687
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1
  %.sroa.0.0.copyload3.i.2 = phi ptr [ %.sroa.0.0.copyload3.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1 ], [ %i.x, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2 ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 2 uses
  %i.z = add i64 %.sroa.7.0, 4
  %i.aa = icmp ult i64 %i.u, %.sroa.2.0.copyload
  br i1 %i.aa, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !37, !noalias !687
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.2, i64 1
  store i8 %i.ab, ptr %.sroa.0.0.copyload3.i.2, align 1, !tbaa !37, !noalias !687
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2
  %.sroa.0.0.copyload3.i.3 = phi ptr [ %.sroa.0.0.copyload3.i.2, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2 ], [ %i.ac, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3 ] ; 2 uses
  %.not.i.3 = icmp eq ptr %i.y, %2
  br i1 %.not.i.3, label %_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit.loopexit, label %.lr.ph.i, !llvm.loop !686

_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit.loopexit: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3, %.lr.ph.i.prol.loopexit
  %.sroa.0.0.copyload3.i.lcssa = phi ptr [ %.sroa.0.0.copyload3.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.0.0.copyload3.i.3, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3 ]
  %6 = ptrtoaddr ptr %2 to i64
  %7 = ptrtoaddr ptr %1 to i64
  %i.ad = add i64 %.sroa.3.0.copyload, %6
  %i.ae = sub i64 %i.ad, %7
  br label %_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit

_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit: ; preds = %_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit.loopexit, %bb.a
  %.sroa.7.1 = phi i64 [ %.sroa.3.0.copyload, %bb.a ], [ %i.ae, %_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit.loopexit ]
  %.sroa.0.0.copyload4.lcssa.i = phi ptr [ %.sroa.08.0.copyload, %bb.a ], [ %.sroa.0.0.copyload3.i.lcssa, %_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit.loopexit ]
  store ptr %.sroa.0.0.copyload4.lcssa.i, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.a, ptr %.sroa.9.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ENS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcRZNS1_14do_write_floatIS9_NS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SG_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlS9_E0_EESH_SH_SO_mmOT2_(ptr dead_on_unwind noalias writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %0, ptr noundef byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(72) %5) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.13 = alloca [7 x i8], align 1            ; 3 uses
  %6 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 4 uses
  %7 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 11 uses
  %8 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 7 uses
  %9 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 6 uses
  %10 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 7 uses
  %11 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 6 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !151
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %4) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.e = load i16, ptr %i.d, align 1
  %i.f = and i16 %i.e, 15
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @.str.36, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37
  %i.j = sext i8 %i.i to i64
  %i.k = and i64 %i.j, 4294967295
  %i.l = lshr i64 %i.c, %i.k                      ; 4 uses
  %i.m = sub nuw nsw i64 %i.c, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %.sroa.034.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store ptr %.sroa.034.0.copyload, ptr %9, align 8
  %.sroa.10.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx41, align 8
  %.sroa.11.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx53, align 8
  %.sroa.12.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx65, align 8
  %.sroa.13.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %9, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx77, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  call void @_ZN3fmt2v96detail4fillINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcEET_S8_mRKNS1_6fill_tIT0_EE(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %8, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %9, i64 noundef %i.l, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  %.sroa.034.0.copyload39 = load ptr, ptr %8, align 8
  %.sroa.10.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.10.0.copyload50 = load i64, ptr %.sroa.10.0..sroa_idx49, align 8
  %.sroa.11.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.11.0.copyload62 = load i64, ptr %.sroa.11.0..sroa_idx61, align 8
  %.sroa.12.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.12.0.copyload74 = load i8, ptr %.sroa.12.0..sroa_idx73, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.12.0 = phi i8 [ %.sroa.12.0.copyload, %bb.a ], [ %.sroa.12.0.copyload74, %bb.b ]
  %.sroa.11.0 = phi i64 [ %.sroa.11.0.copyload, %bb.a ], [ %.sroa.11.0.copyload62, %bb.b ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %.sroa.10.0.copyload, %bb.a ], [ %.sroa.10.0.copyload50, %bb.b ] ; 2 uses
  %.sroa.034.0 = phi ptr [ %.sroa.034.0.copyload, %bb.a ], [ %.sroa.034.0.copyload39, %bb.b ] ; 3 uses
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.586.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  store ptr %.sroa.034.0, ptr %7, align 8
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.10.0, ptr %.sroa.283.0..sroa_idx, align 8
  %.sroa.384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i64 %.sroa.11.0, ptr %.sroa.384.0..sroa_idx, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i8 %.sroa.12.0, ptr %.sroa.485.0..sroa_idx, align 8
  %i.o = load ptr, ptr %5, align 8, !tbaa !695, !noalias !696, !nonnull !52
  %i.p = load i8, ptr %i.o, align 1, !tbaa !156, !noalias !696 ; 2 uses
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @.str.35, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !37, !noalias !696
  %i.t = add i64 %.sroa.11.0, 1
  store i64 %i.t, ptr %.sroa.384.0..sroa_idx, align 8, !tbaa !267, !noalias !697
  %i.u = icmp ult i64 %.sroa.11.0, %.sroa.10.0
  br i1 %i.u, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 1
  store ptr %i.v, ptr %7, align 8, !tbaa !74, !noalias !697
  store i8 %i.s, ptr %.sroa.034.0, align 1, !tbaa !37, !noalias !696
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !696
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !698, !noalias !696, !nonnull !52, !align !71
  %i.y = load i64, ptr %i.x, align 8, !tbaa !39, !noalias !696
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !699, !noalias !696, !nonnull !52, !align !180
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !76, !noalias !696
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !700, !noalias !696, !nonnull !52, !align !71
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !157, !noalias !696
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !701, !noalias !696, !nonnull !52, !align !71
  call void @_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmNS1_14digit_groupingIcEEEET0_SA_T1_iiRKT2_(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %6, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %7, i64 noundef %i.y, i32 noundef %i.ab, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ah), !noalias !696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef nonnull align 8 dereferenceable(25) %6, i64 25, i1 false), !noalias !696
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !696
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !702, !noalias !696, !nonnull !52, !align !180
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !noalias !696
  %i.am = and i32 %i.al, 524288
  %.not1.i = icmp eq i32 %i.am, 0
  %.sroa.0.0.copyload21 = load ptr, ptr %7, align 8 ; 4 uses
  %.sroa.6.0.copyload24 = load i64, ptr %.sroa.283.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0.copyload28 = load i64, ptr %.sroa.384.0..sroa_idx, align 8 ; 4 uses
  br i1 %.not1.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %.sroa.8.0.copyload32 = load i64, ptr %.sroa.485.0..sroa_idx, align 8
  br label %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit

bb.f:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %i.an = add i64 %.sroa.7.0.copyload28, 1        ; 3 uses
  %i.ao = icmp ult i64 %.sroa.7.0.copyload28, %.sroa.6.0.copyload24
  br i1 %i.ao, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.then.i: ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !703, !noalias !696, !nonnull !52
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !37, !noalias !696
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload21, i64 1
  store i8 %i.ar, ptr %.sroa.0.0.copyload21, align 1, !tbaa !37, !noalias !696
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.then.i, %bb.f
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload21, %bb.f ], [ %i.as, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.then.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !704, !noalias !696, !nonnull !52, !align !180
  %i.av = load i32, ptr %i.au, align 4, !tbaa !76, !noalias !696 ; 6 uses
  %i.aw = icmp sgt i32 %i.av, 0
  %i.ax = load i64, ptr %.sroa.485.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit

.lr.ph.i.i:                                       ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !705, !noalias !696, !nonnull !52 ; 3 uses
  %xtraiter = and i32 %i.av, 1
  %i.ba = icmp eq i32 %i.av, 1
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.av, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1, %.lr.ph.i.i.new
  %.sroa.713.0.i = phi i64 [ %i.an, %.lr.ph.i.i.new ], [ %i.bf, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ] ; 3 uses
  %.sroa.0.0.copyload45.i.i = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i.i.new ], [ %.sroa.0.0.copyload3.i.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ]
  %i.bb = add i64 %.sroa.713.0.i, 1
  %i.bc = icmp ult i64 %.sroa.713.0.i, %.sroa.6.0.copyload24
  br i1 %i.bc, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i: ; preds = %bb.g
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !37, !noalias !706
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i.i, i64 1
  store i8 %i.bd, ptr %.sroa.0.0.copyload45.i.i, align 1, !tbaa !37, !noalias !706
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i, %bb.g
  %.sroa.0.0.copyload3.i.i = phi ptr [ %.sroa.0.0.copyload45.i.i, %bb.g ], [ %i.be, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i ] ; 3 uses
  %i.bf = add i64 %.sroa.713.0.i, 2               ; 2 uses
  %i.bg = icmp ult i64 %i.bb, %.sroa.6.0.copyload24
  br i1 %i.bg, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i
  %i.bh = load i8, ptr %i.az, align 1, !tbaa !37, !noalias !706
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.i, i64 1
  store i8 %i.bh, ptr %.sroa.0.0.copyload3.i.i, align 1, !tbaa !37, !noalias !706
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i
end_hunk_0
begin_hunk_1_@_ZN3fmt2v96detail6bigint12assign_pow10Ei:bb.a
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ax, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod31 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.013.i.i.epil.init ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !76
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, 5
  %i.af = add nuw nsw i64 %i.ae, %.01112.i.i.epil.init ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !76
  %i.ah = lshr i64 %i.af, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ax, %._crit_edge.i.i.unr-lcssa ], [ %i.ah, %.epil.preheader ] ; 2 uses
  %i.ai = trunc nuw nsw i64 %.lcssa to i32
  %.not.i.i22 = icmp eq i64 %.lcssa, 0
  br i1 %.not.i.i22, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ay, %bb.g ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ax, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.g ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.013.i.i ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !76
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nuw nsw i64 %i.al, 5
  %i.an = add nuw nsw i64 %i.am, %.01112.i.i      ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %i.aj, align 4, !tbaa !76
  %i.ap = lshr i64 %i.an, 32
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.013.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !76
  %i.at = zext i32 %i.as to i64
  %i.au = mul nuw nsw i64 %i.at, 5
  %i.av = add nuw nsw i64 %i.au, %i.ap            ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  store i32 %i.aw, ptr %i.ar, align 4, !tbaa !76
  %i.ax = lshr i64 %i.av, 32                      ; 3 uses
  %i.ay = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.g, !llvm.loop !15

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.az = add i64 %i.y, 1                         ; 3 uses
  %i.ba = load i64, ptr %i.o, align 8, !tbaa !316
  %i.bb = icmp ugt i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.i, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %0, align 8, !tbaa !69
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.az), !call_target !325, !inline_history !959
  %.pre.i.i.i = load i64, ptr %i.u, align 8, !tbaa !321 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !315
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.i, %bb.h
  %i.be = phi ptr [ %i.z, %bb.h ], [ %.pre.i, %bb.i ]
  %.pre-phi.i.i.i = phi i64 [ %i.az, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.bf = phi i64 [ %i.y, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  store i64 %.pre-phi.i.i.i, ptr %i.u, align 8, !tbaa !321
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  store i32 %i.ai, ptr %i.bg, align 4, !tbaa !76
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit:        ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i, %._crit_edge.i.i, %bb.f, %.lr.ph
  %i.bh = ashr i32 %.124, 1                       ; 2 uses
  %.not13 = icmp eq i32 %i.bh, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !960

._crit_edge:                                      ; preds = %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit, %_ZN3fmt2v96detail6bigintaSIiEEvT_.exit21
  %i.bi = tail call noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt2v96detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %0, i32 noundef %1) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %_ZN3fmt2v96detail6bigintaSIiEEvT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3fmt2v96detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(172) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !321  ; 6 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !320  ; 3 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !321  ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !320  ; 2 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not.i = icmp eq i32 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %select.unfold, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.c, %i.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %smin = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i, i32 %i.c)
  %i.s = trunc i64 %i.b to i32
  %.not35.not.i98 = icmp slt i32 %spec.store.select.i, %i.s
  br i1 %.not35.not.i98, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.t = and i64 %i.b, 4294967295
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.u = trunc nuw i64 %i.v to i32
  %.not35.not.i = icmp slt i32 %spec.store.select.i, %i.u
  br i1 %.not35.not.i, label %bb.e, label %._crit_edge, !llvm.loop !16

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.0.in.i100 = phi i32 [ %i.i, %.lr.ph ], [ %.0.i, %bb.d ]
  %indvars.iv.i99 = phi i64 [ %i.t, %.lr.ph ], [ %i.v, %bb.d ]
  %i.v = add nsw i64 %indvars.iv.i99, -1          ; 3 uses
  %.0.i = add nsw i32 %.0.in.i100, -1             ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !76   ; 2 uses
  %i.y = zext i32 %.0.i to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !76  ; 2 uses
  %.not37.i = icmp eq i32 %i.x, %i.aa
  br i1 %.not37.i, label %bb.d, label %.loopexit.i, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.0.in.i.lcssa = phi i32 [ %i.i, %bb.c ], [ %.0.i, %bb.d ]
  %or.cond.not = icmp sgt i32 %.0.in.i.lcssa, %smin
  br i1 %or.cond.not, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit, label %select.unfold

.loopexit.i:                                      ; preds = %bb.e
  %i.ab = icmp ugt i32 %i.x, %i.aa
  br i1 %i.ab, label %select.unfold, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

select.unfold:                                    ; preds = %.loopexit.i, %bb.b, %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ad = sub nsw i32 %i.e, %i.k                  ; 5 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %_ZN3fmt2v96detail6bigint5alignERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %select.unfold
  %i.af = add nsw i32 %i.ad, %i.c
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !316 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  br i1 %i.aj, label %bb.g, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %0, align 8, !tbaa !69
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ag), !call_target !325, !inline_history !961
  %.pre.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !316
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i: ; preds = %bb.g, %bb.f
  %i.am = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i.i, %bb.g ]
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.am) ; 2 uses
  store i64 %..i.i.i, ptr %i.a, align 8, !tbaa !321
  %i.an = icmp sgt i32 %i.c, 0
  br i1 %i.an, label %.lr.ph.i, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.._crit_edge_crit_edge.i

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.._crit_edge_crit_edge.i: ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !315
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i
  %i.ao = add nsw i32 %i.c, -1                    ; 2 uses
  %i.ap = add i32 %i.ad, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !315 ; 15 uses
  %i.as = sext i32 %i.ap to i64                   ; 5 uses
  %i.at = zext i32 %i.ao to i64                   ; 5 uses
  %i.au = and i64 %i.b, 2147483647                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.au, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.av = sub nsw i64 %i.at, %i.as
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = add nsw i64 %i.aw, -1
  %diff.check = icmp ult i64 %i.ax, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = sub i64 %i.at, %index
  %i.az = sub i64 %i.as, %index
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ay ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -12
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -28
  %wide.load = load <4 x i32>, ptr %i.bb, align 4, !tbaa !76
  %wide.load113 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !76
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.az ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -12
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -28
  store <4 x i32> %wide.load, ptr %i.be, align 4, !tbaa !76
  store <4 x i32> %wide.load113, ptr %i.bf, align 4, !tbaa !76
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !962

middle.block:                                     ; preds = %vector.body
  %2 = sub nsw i64 %i.at, %n.vec
  %3 = sub nsw i64 %i.as, %n.vec
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i ], [ %2, %middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i ], [ %3, %middle.block ] ; 2 uses
  %i.bh = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %scalar.ph.prol ], [ %indvars.iv18.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i11.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv18.i.prol
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !76
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv.i11.prol
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !76
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !963

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.bl = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bl, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.._crit_edge_crit_edge.i
  %i.bm = phi ptr [ %.pre.i, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.._crit_edge_crit_edge.i ], [ %i.ar, %middle.block ], [ %i.ar, %scalar.ph ], [ %i.ar, %scalar.ph.prol.loopexit ]
  %i.bn = zext nneg i32 %i.ad to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bn, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bm, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !76
  %i.bo = load i32, ptr %i.d, align 8, !tbaa !320
  %i.bp = sub nsw i32 %i.bo, %i.ad                ; 2 uses
  store i32 %i.bp, ptr %i.d, align 8, !tbaa !320
  %.pre.pre = load i64, ptr %i.g, align 8, !tbaa !321
  br label %_ZN3fmt2v96detail6bigint5alignERKS2_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %scalar.ph ], [ %indvars.iv18.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i11.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv18.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !76
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv.i11
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !76
  %i.bt = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv18.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !76
  %i.bw = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv.i11
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !76
  %i.by = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv18.i
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !76
  %i.cb = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv.i11
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !76
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next19.i.2
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !76
  %i.cf = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv.i11
  %i.cg = getelementptr i8, ptr %i.cf, i64 -12
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !76
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i12.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i12.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !964

_ZN3fmt2v96detail6bigint5alignERKS2_.exit:        ; preds = %select.unfold, %._crit_edge.i
  %.pre = phi i64 [ %i.h, %select.unfold ], [ %.pre.pre, %._crit_edge.i ]
  %i.ch = phi i32 [ %i.e, %select.unfold ], [ %i.bp, %._crit_edge.i ]
  %i.ci = phi i64 [ %i.b, %select.unfold ], [ %..i.i.i, %._crit_edge.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26

_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26: ; preds = %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge, %_ZN3fmt2v96detail6bigint5alignERKS2_.exit
  %i.cl = phi i32 [ %i.ch, %_ZN3fmt2v96detail6bigint5alignERKS2_.exit ], [ %i.fg, %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge ]
  %i.cm = phi i64 [ %.pre, %_ZN3fmt2v96detail6bigint5alignERKS2_.exit ], [ %i.fi, %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge ] ; 5 uses
  %i.cn = phi i64 [ %i.ci, %_ZN3fmt2v96detail6bigint5alignERKS2_.exit ], [ %..i.i.i.i, %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt2v96detail6bigint5alignERKS2_.exit ], [ %i.fe, %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge ]
  %i.co = trunc i64 %i.cn to i32
  %.not20.i = icmp eq i64 %i.cm, 0
  br i1 %.not20.i, label %.preheader.thread.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26
  %i.cp = load i32, ptr %i.j, align 8, !tbaa !320
  %i.cq = sub nsw i32 %i.cp, %i.cl                ; 2 uses
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !315 ; 3 uses
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !315 ; 4 uses
  %xtraiter130 = and i64 %i.cm, 1
  %i.ct = icmp eq i64 %i.cm, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i13.new

.lr.ph.i13.new:                                   ; preds = %.lr.ph.i13
  %unroll_iter = and i64 %i.cm, -2
  br label %bb.h

.preheader.i.unr-lcssa:                           ; preds = %bb.h
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i13
  %.023.i.epil.init = phi i64 [ 0, %.lr.ph.i13 ], [ %i.eh, %.preheader.i.unr-lcssa ]
  %.01222.i.epil.init = phi i32 [ %i.cq, %.lr.ph.i13 ], [ %i.eg, %.preheader.i.unr-lcssa ] ; 2 uses
  %.01721.i.epil.init = phi i64 [ 0, %.lr.ph.i13 ], [ %i.ef, %.preheader.i.unr-lcssa ]
  %lcmp.mod134 = trunc i64 %i.cm to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.023.i.epil.init
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !76
  %i.cw = zext i32 %.01222.i.epil.init to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !76
  %i.cz = zext i32 %i.cy to i64
  %i.da = zext i32 %i.cv to i64
  %i.db = add nuw nsw i64 %.01721.i.epil.init, %i.da
  %i.dc = sub nsw i64 %i.cz, %i.db                ; 2 uses
  %i.dd = trunc i64 %i.dc to i32
  store i32 %i.dd, ptr %i.cx, align 4, !tbaa !76
  %i.de = add nsw i32 %.01222.i.epil.init, 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.lcssa115 = phi i64 [ %i.ed, %.preheader.i.unr-lcssa ], [ %i.dc, %.epil.preheader ]
  %.lcssa = phi i32 [ %i.eg, %.preheader.i.unr-lcssa ], [ %i.de, %.epil.preheader ]
  %i.df = icmp sgt i64 %.lcssa115, -1
  br i1 %i.df, label %.preheader.thread.i, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %.preheader.i
  %i.dg = zext i32 %.lcssa to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.dg ; 2 uses
  %.promoted.i = load i32, ptr %i.dh, align 4, !tbaa !76
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i13.new
  %.023.i = phi i64 [ 0, %.lr.ph.i13.new ], [ %i.eh, %bb.h ] ; 3 uses
  %.01222.i = phi i32 [ %i.cq, %.lr.ph.i13.new ], [ %i.eg, %bb.h ] ; 3 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i13.new ], [ %i.ef, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i13.new ], [ %niter.next.1, %bb.h ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.023.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !76
  %i.dk = zext i32 %.01222.i to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !76
  %i.dn = zext i32 %i.dm to i64
  %i.do = zext i32 %i.dj to i64
  %i.dp = add nuw nsw i64 %.01721.i, %i.do
  %i.dq = sub nsw i64 %i.dn, %i.dp                ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  store i32 %i.dr, ptr %i.dl, align 4, !tbaa !76
  %i.ds = lshr i64 %i.dq, 63
  %i.dt = add nsw i32 %.01222.i, 1
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.023.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !76
  %i.dx = zext i32 %i.dt to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !76
  %i.ea = zext i32 %i.dz to i64
  %i.eb = zext i32 %i.dw to i64
  %i.ec = add nuw nsw i64 %i.ds, %i.eb
  %i.ed = sub nsw i64 %i.ea, %i.ec                ; 3 uses
  %i.ee = trunc i64 %i.ed to i32
  store i32 %i.ee, ptr %i.dy, align 4, !tbaa !76
  %i.ef = lshr i64 %i.ed, 63                      ; 2 uses
  %i.eg = add nsw i32 %.01222.i, 2                ; 3 uses
  %i.eh = add nuw i64 %.023.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.h, !llvm.loop !965

bb.i:                                             ; preds = %bb.i, %.lr.ph27.i
  %i.ei = phi i32 [ %.promoted.i, %.lr.ph27.i ], [ %i.el, %bb.i ]
  %.126.i = phi i64 [ 1, %.lr.ph27.i ], [ %i.em, %bb.i ]
  %i.ej = zext i32 %i.ei to i64
  %i.ek = sub nsw i64 %i.ej, %.126.i              ; 3 uses
  %i.el = trunc i64 %i.ek to i32                  ; 2 uses
  %i.em = lshr i64 %i.ek, 63
  %.not13.i = icmp sgt i64 %i.ek, -1
  br i1 %.not13.i, label %._crit_edge.i15, label %bb.i, !llvm.loop !966

._crit_edge.i15:                                  ; preds = %bb.i
  store i32 %i.el, ptr %i.dh, align 4, !tbaa !76
  br label %.preheader.thread.i

.preheader.thread.i:                              ; preds = %._crit_edge.i15, %.preheader.i, %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26
  %i.en = load ptr, ptr %i.cj, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.co, i32 1) ; 2 uses
  %i.eo = trunc i64 %i.cn to i32                  ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %.lr.ph102, label %.critedge.i.i

.lr.ph102:                                        ; preds = %.preheader.thread.i
  %i.eq = and i64 %i.cn, 2147483647
  br label %bb.k

end_hunk_1
