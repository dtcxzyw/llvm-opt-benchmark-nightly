Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGExprConstant?download=true
inline.NumInlined: 5733
inline.NumDeleted: 2819
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN12_GLOBAL__N_124ConstantAggregateBuilder7splitAtEN5clang9CharUnitsE:bb.a
.lr.ph.i.i.i.i.i:                                 ; preds = %bb.x
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.fw
  %i.fy = sub nsw i64 0, %i.ea
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.fy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fz, ptr nonnull align 8 %i.dy, i64 %gepdiff.i.i.i.i.i, i1 false)
  %i.ga = icmp eq i64 %gepdiff.i.i.i.i.i, 8
  br i1 %i.ga, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter219 = and i64 %i.ea, -2
  br label %bb.y

._crit_edge.i.i.i.i.i.unr-lcssa:                  ; preds = %bb.y
  %i.gb = and i64 %gepdiff.i.i.i.i.i, 8
  %lcmp.mod216.not = icmp eq i64 %i.gb, 0
  br i1 %lcmp.mod216.not, label %._crit_edge.i.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.091.i.i.i.i.i.epil.init = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %i.il, %._crit_edge.i.i.i.i.i.unr-lcssa ]
  %.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i ], [ %i.im, %._crit_edge.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod218 = trunc i64 %i.ea to i1
  call void @llvm.assume(i1 %lcmp.mod218)
  %i.gc = load i32, ptr %i.bg, align 4
  %i.gd = and i32 %i.gc, 268435455
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = sub nsw i64 0, %i.ge
  %i.gg = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.gf
  %i.gh = and i64 %.epil.init, 4294967295
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %i.gg, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !535
  store ptr %i.gj, ptr %.091.i.i.i.i.i.epil.init, align 8, !tbaa !472
  %i.gk = add i64 %.epil.init, 1
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.im, %._crit_edge.i.i.i.i.i.unr-lcssa ], [ %i.gk, %.epil.preheader ] ; 2 uses
  %.pre99.i.i.i.i.i = sub i64 %i.bj, %.lcssa      ; 2 uses
  %i.gl = icmp sgt i64 %.pre99.i.i.i.i.i, 0
  br i1 %i.gl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i, %bb.x
  %.lcssa.i.i.i.i585.i = phi i64 [ %.lcssa, %._crit_edge.i.i.i.i.i ], [ 1, %bb.x ] ; 4 uses
  %.pre-phi100.i.i.i.i584.i = phi i64 [ %.pre99.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ch, %bb.x ] ; 3 uses
  %i.gm = add i64 %.pre-phi100.i.i.i.i584.i, %.lcssa.i.i.i.i585.i
  %xtraiter221 = and i64 %.pre-phi100.i.i.i.i584.i, 1
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gn = load i32, ptr %i.bg, align 4
  %i.go = and i32 %i.gn, 268435455
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.gq
  %i.gs = and i64 %.lcssa.i.i.i.i585.i, 4294967295
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.gr, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !535
  store ptr %i.gu, ptr %i.dz, align 8, !tbaa !472
  %i.gv = add i64 %.lcssa.i.i.i.i585.i, 1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gw, %.prol.loopexit.unr-lcssa ]
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.lcssa.i.i.i.i585.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gv, %.prol.loopexit.unr-lcssa ]
  %i.gx = icmp eq i64 %.pre-phi100.i.i.i.i584.i, 1
  br i1 %i.gx, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new:             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %.044.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new ], [ %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.gy = load i32, ptr %i.bg, align 4
  %i.gz = and i32 %i.gy, 268435455
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = sub nsw i64 0, %i.ha
  %i.hc = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.hb
  %i.hd = and i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.he = getelementptr inbounds nuw [32 x i8], ptr %i.hc, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !535
  store ptr %i.hf, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !472
  %i.hg = add i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.hi = load i32, ptr %i.bg, align 4
  %i.hj = and i32 %i.hi, 268435455
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = sub nsw i64 0, %i.hk
  %i.hm = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.hl
  %i.hn = and i64 %i.hg, 4294967295
  %i.ho = getelementptr inbounds nuw [32 x i8], ptr %i.hm, i64 %i.hn
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !535
  store ptr %i.hp, ptr %i.hh, align 8, !tbaa !472
  %i.hq = add i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %exitcond.not.i.1 = icmp eq i64 %i.hq, %i.gm
  br i1 %exitcond.not.i.1, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new, !llvm.loop !924

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i.i.new
  %.091.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.new ], [ %i.il, %bb.y ] ; 3 uses
  %i.hs = phi i64 [ 1, %.lr.ph.i.i.i.i.i.new ], [ %i.im, %bb.y ] ; 3 uses
  %niter220 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter220.next.1, %bb.y ]
  %i.ht = load i32, ptr %i.bg, align 4
  %i.hu = and i32 %i.ht, 268435455
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = sub nsw i64 0, %i.hv
  %i.hx = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.hw
  %i.hy = and i64 %i.hs, 4294967295
  %i.hz = getelementptr inbounds nuw [32 x i8], ptr %i.hx, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !535
  store ptr %i.ia, ptr %.091.i.i.i.i.i, align 8, !tbaa !472
  %i.ib = getelementptr inbounds nuw i8, ptr %.091.i.i.i.i.i, i64 8
  %i.ic = add i64 %i.hs, 1
  %i.id = load i32, ptr %i.bg, align 4
  %i.ie = and i32 %i.id, 268435455
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = sub nsw i64 0, %i.if
  %i.ih = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.ig
  %i.ii = and i64 %i.ic, 4294967295
  %i.ij = getelementptr inbounds nuw [32 x i8], ptr %i.ih, i64 %i.ii
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !535
  store ptr %i.ik, ptr %i.ib, align 8, !tbaa !472
  %i.il = getelementptr inbounds nuw i8, ptr %.091.i.i.i.i.i, i64 16 ; 2 uses
  %i.im = add i64 %i.hs, 2                        ; 3 uses
  %niter220.next.1 = add i64 %niter220, 2         ; 2 uses
  %niter220.ncmp.1 = icmp eq i64 %niter220.next.1, %unroll_iter219
  br i1 %niter220.ncmp.1, label %._crit_edge.i.i.i.i.i.unr-lcssa, label %bb.y, !llvm.loop !925

.lr.ph.i.i.i.1.i:                                 ; preds = %.lr.ph.i.i.i.preheader.i
  %i.in = add nuw nsw i64 %.idx.i, 8
  %i.io = icmp samesign eq i64 %i.in, %i.ai
  br i1 %i.io, label %bb.k, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.1.i
  %i.ip = load i32, ptr %i.bg, align 4
  %i.iq = and i32 %i.ip, 268435455
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = sub nsw i64 0, %i.ir
  %i.it = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !535
  store ptr %i.iv, ptr %i.bp, align 8, !tbaa !472
  %i.iw = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  br label %._crit_edge.i.i.i.i

"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.sink.split": ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i, %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i"
  %.sink = phi i32 [ %i.dv, %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S2_EEvEEvT_SF_.exit.i.i.i.i.i" ], [ %i.cd, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i.i ]
  store i32 %.sink, ptr %i.i, align 8, !tbaa !458
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i"

"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit209.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit209.unr-lcssa", %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.044.i.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ft, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit209.unr-lcssa" ]
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fs, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit209.unr-lcssa" ]
  %lcmp.mod214 = trunc i64 %i.ex to i1
  call void @llvm.assume(i1 %lcmp.mod214)
  %i.ix = load i32, ptr %i.bg, align 4
  %i.iy = and i32 %i.ix, 268435455
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = sub nsw i64 0, %i.iz
  %i.jb = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.ja
  %i.jc = and i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.epil.init, 4294967295
  %i.jd = getelementptr inbounds nuw [32 x i8], ptr %i.jb, i64 %i.jc
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !535
  store ptr %i.je, ptr %.044.i.i.i.i.i.i.i.i.i.i.epil.init, align 8, !tbaa !472
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i"

"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.loopexit209.unr-lcssa", %.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.new, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i.sink.split", %._crit_edge.i.i.i.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !476 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load i32, ptr %i.jh, align 8            ; 2 uses
  %i.jj = and i32 %i.ji, 255
  %i.jk = icmp eq i32 %i.jj, 17
  %i.jl = and i32 %i.ji, 254
  %spec.select.i.i.i.i.i.i.i.i60.i = icmp eq i32 %i.jl, 18
  %or.cond.i = or i1 %i.jk, %spec.select.i.i.i.i.i.i.i.i60.i
  br i1 %or.cond.i, label %.critedge.i, label %bb.aq

.critedge.i:                                      ; preds = %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorIjLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_0S4_EEEEEEvRT_mmT0_.exit.i"
  %i.jm = call noundef ptr @_ZN4llvm17GetElementPtrInst14getTypeAtIndexEPNS_4TypeEm(ptr noundef nonnull %i.jg, i64 noundef 0) #22
  %.val45.i = load ptr, ptr %0, align 8, !tbaa !561
  %i.jn = getelementptr i8, ptr %.val45.i, i64 200
  %.val45.val.i = load ptr, ptr %i.jn, align 8, !tbaa !453
  %i.jo = getelementptr inbounds nuw i8, ptr %.val45.val.i, i64 296
  %i.jp = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.jo, ptr noundef %i.jm) #22 ; 2 uses
  %.fca.1.extract.i.i5 = extractvalue { i64, i8 } %i.jp, 1
  %i.jq = trunc nuw i8 %.fca.1.extract.i.i5 to i1
  br i1 %i.jq, label %bb.aa, label %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i

bb.aa:                                            ; preds = %.critedge.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #26
  unreachable

_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i: ; preds = %.critedge.i
  %.fca.0.extract.i.i6 = extractvalue { i64, i8 } %i.jp, 0 ; 15 uses
  %i.jr = load i32, ptr %i.bg, align 4
  %i.js = and i32 %i.jr, 268435455                ; 4 uses
  %i.jt = zext nneg i32 %i.js to i64              ; 8 uses
  %i.ju = load ptr, ptr %i.d, align 8, !tbaa !457 ; 6 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %.idx.i ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.ai ; 2 uses
  %i.jx = icmp eq i32 %i.js, 0
  br i1 %i.jx, label %._crit_edge.i.i.i67.i, label %.lr.ph.i.i.i66.preheader.i

.lr.ph.i.i.i66.preheader.i:                       ; preds = %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i
  store i64 %i.bd, ptr %i.jv, align 8, !tbaa !432
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  %i.jz = icmp eq i32 %i.js, 1
  br i1 %i.jz, label %._crit_edge.i.i.i67.i, label %.lr.ph.i.i.i66.1.i

._crit_edge.i.i.i67.i:                            ; preds = %bb.ap, %.lr.ph.i.i.i66.preheader.i, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i
  %.0.lcssa.i.i.i68.i = phi ptr [ %i.jv, %_ZNK12_GLOBAL__N_129ConstantAggregateBuilderUtils7getSizeEPN4llvm4TypeE.exit.i ], [ %i.jy, %.lr.ph.i.i.i66.preheader.i ], [ %i.re, %bb.ap ] ; 3 uses
  %i.ka = load i32, ptr %i.e, align 8, !tbaa !458
  %i.kb = zext i32 %i.ka to i64
  %i.kc = sub nsw i64 %i.kb, %i.aj                ; 3 uses
  %gepdiff.i69.i = shl nsw i64 %i.kc, 3           ; 2 uses
  %i.kd = icmp sgt i64 %i.kc, 1
  br i1 %i.kd, label %bb.ab, label %bb.ac, !prof !506

bb.ab:                                            ; preds = %._crit_edge.i.i.i67.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i.i.i68.i, ptr nonnull align 8 %i.jw, i64 %gepdiff.i69.i, i1 false)
  %.pre.i.i.i.i70.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i.i

bb.ac:                                            ; preds = %._crit_edge.i.i.i67.i
  %i.ke = icmp eq i64 %i.kc, 1
  br i1 %i.ke, label %bb.ad, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.kf = load i64, ptr %i.jw, align 8, !tbaa !432
  store i64 %i.kf, ptr %.0.lcssa.i.i.i68.i, align 8, !tbaa !432
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.kg = phi ptr [ %.pre.i.i.i.i70.i, %bb.ab ], [ %i.ju, %bb.ac ], [ %i.ju, %bb.ad ]
  %i.kh = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i68.i, i64 %gepdiff.i69.i
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.kg to i64
  %i.kk = sub i64 %i.ki, %i.kj
  %i.kl = lshr exact i64 %i.kk, 3
  %i.km = trunc i64 %i.kl to i32                  ; 2 uses
  store i32 %i.km, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit

bb.ae:                                            ; preds = %.lr.ph.i.i.i66.1.i
  %i.kn = load i32, ptr %i.e, align 8, !tbaa !458 ; 3 uses
  %i.ko = zext i32 %i.kn to i64                   ; 3 uses
  %i.kp = icmp samesign eq i64 %i.aj, %i.ko
  %i.kq = add nsw i64 %i.jt, -1                   ; 12 uses
  %i.kr = add nuw nsw i64 %i.kq, %i.ko            ; 3 uses
  %i.ks = load i32, ptr %i.l, align 4, !tbaa !482
  %i.kt = zext i32 %i.ks to i64
  %i.ku = icmp samesign ugt i64 %i.kr, %i.kt      ; 2 uses
  br i1 %i.kp, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ku, label %bb.ag, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.kr, i64 noundef 8) #22
  %.pre.i.i.i.i.i83.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre25.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i83.i to i64
  %.pre107.pre.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i:             ; preds = %bb.ag, %bb.af
  %.pre107.i.i.i.i.i = phi ptr [ %i.ju, %bb.af ], [ %.pre107.pre.i.i.i.i.i, %bb.ag ]
  %.pre-phi.i.i.i.i.i81.i = phi i64 [ %i.aj, %bb.af ], [ %.pre25.i.i.i.i.i.i, %bb.ag ]
  %i.kv = phi i32 [ %i.kn, %bb.af ], [ %.pre.i.i.i.i.i83.i, %bb.ag ]
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %.pre107.i.i.i.i.i, i64 %.pre-phi.i.i.i.i.i81.i ; 2 uses
  %xtraiter238 = and i64 %i.kq, 3                 ; 3 uses
  %i.kx = add nsw i32 %i.js, -2
  %i.ky = icmp ult i32 %i.kx, 3
  br i1 %i.ky, label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new:         ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i
  %unroll_iter241 = and i64 %i.kq, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i82.i

.lr.ph.i.i.i.i.i.i.i.i.i82.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new
  %.04.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kw, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new ], [ %i.ls, %.lr.ph.i.i.i.i.i.i.i.i.i82.i ] ; 5 uses
  %.val13.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new ], [ %i.lr, %.lr.ph.i.i.i.i.i.i.i.i.i82.i ] ; 5 uses
  %niter242 = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.new ], [ %niter242.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i82.i ]
  %i.kz = and i64 %.val13.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.la = mul nsw i64 %i.kz, %.fca.0.extract.i.i6
  %i.lb = add nsw i64 %i.la, %i.bd
  store i64 %i.lb, ptr %.04.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  %i.lc = add nuw nsw i64 %.val13.i.i.i.i.i.i.i.i.i.i, 1
  %i.ld = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.le = and i64 %i.lc, 4294967295
  %i.lf = mul nsw i64 %i.le, %.fca.0.extract.i.i6
  %i.lg = add nsw i64 %i.lf, %i.bd
  store i64 %i.lg, ptr %i.ld, align 8, !tbaa !432
  %i.lh = add nuw nsw i64 %.val13.i.i.i.i.i.i.i.i.i.i, 2
  %i.li = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.lj = and i64 %i.lh, 4294967295
  %i.lk = mul nsw i64 %i.lj, %.fca.0.extract.i.i6
  %i.ll = add nsw i64 %i.lk, %i.bd
  store i64 %i.ll, ptr %i.li, align 8, !tbaa !432
  %i.lm = add i64 %.val13.i.i.i.i.i.i.i.i.i.i, 3
  %i.ln = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.lo = and i64 %i.lm, 4294967295
  %i.lp = mul nsw i64 %i.lo, %.fca.0.extract.i.i6
  %i.lq = add nsw i64 %i.lp, %i.bd
  store i64 %i.lq, ptr %i.ln, align 8, !tbaa !432
  %i.lr = add i64 %.val13.i.i.i.i.i.i.i.i.i.i, 4  ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %niter242.next.3 = add i64 %niter242, 4         ; 2 uses
  %niter242.ncmp.3 = icmp eq i64 %niter242.next.3, %unroll_iter241
  br i1 %niter242.ncmp.3, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa", label %.lr.ph.i.i.i.i.i.i.i.i.i82.i, !llvm.loop !926

"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader:      ; preds = %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa", %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i
  %.04.i.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.kw, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.ls, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa" ]
  %.val13.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.lr, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa" ]
  %lcmp.mod240 = icmp ne i64 %xtraiter238, 0
  call void @llvm.assume(i1 %lcmp.mod240)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader
  %.04.i.i.i.i.i.i.i.i.i.i.epil = phi ptr [ %i.lx, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil ], [ %.04.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader ] ; 2 uses
  %.val13.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.lw, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil ], [ %.val13.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil.preheader ]
  %i.lt = and i64 %.val13.i.i.i.i.i.i.i.i.i.i.epil, 4294967295
  %i.lu = mul nsw i64 %i.lt, %.fca.0.extract.i.i6
  %i.lv = add nsw i64 %i.lu, %i.bd
  store i64 %i.lv, ptr %.04.i.i.i.i.i.i.i.i.i.i.epil, align 8, !tbaa !432
  %i.lw = add i64 %.val13.i.i.i.i.i.i.i.i.i.i.epil, 1
  %i.lx = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter238
  br i1 %epil.iter.cmp.not, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil, !llvm.loop !927

"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i82.i.epil, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_1S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa"
  %i.ly = trunc nuw nsw i64 %i.kq to i32
  %i.lz = add i32 %i.kv, %i.ly                    ; 2 uses
  store i32 %i.lz, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit

bb.ah:                                            ; preds = %bb.ae
  br i1 %i.ku, label %bb.ai, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.kr, i64 noundef 8) #22
  %.pre.i10.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !457
  %.pre105.i.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre109.i.i.i.i.i = zext i32 %.pre105.i.i.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.pre-phi.i.i.i.i71.i = phi i64 [ %i.ko, %bb.ah ], [ %.pre109.i.i.i.i.i, %bb.ai ] ; 3 uses
  %i.ma = phi i32 [ %i.kn, %bb.ah ], [ %.pre105.i.i.i.i.i, %bb.ai ] ; 2 uses
  %i.mb = phi ptr [ %i.ju, %bb.ah ], [ %.pre.i10.i.i.i.i, %bb.ai ] ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.ai ; 9 uses
  %.idx.i.i.i.i72.i = shl nuw nsw i64 %.pre-phi.i.i.i.i71.i, 3 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.idx.i.i.i.i72.i ; 6 uses
  %gepdiff.i.i.i.i73.i = sub nsw i64 %.idx.i.i.i.i72.i, %i.ai ; 2 uses
  %i.me = ashr exact i64 %gepdiff.i.i.i.i73.i, 3  ; 7 uses
  %.not.i.i.i.i74.i = icmp ult i64 %i.me, %i.kq
  br i1 %.not.i.i.i.i74.i, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i.i
  %.neg.i.i.i.i75.i = mul nsw i64 %i.kq, -8       ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %i.md, i64 %.neg.i.i.i.i75.i ; 2 uses
  %i.mg = add nuw nsw i64 %.pre-phi.i.i.i.i71.i, %i.kq ; 2 uses
  %i.mh = load i32, ptr %i.l, align 4, !tbaa !482
  %i.mi = zext i32 %i.mh to i64
  %i.mj = icmp samesign ugt i64 %i.mg, %i.mi
  br i1 %i.mj, label %bb.ak, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.mg, i64 noundef 8) #22
  %.pre.i38.i.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre11.i.i.i.i.i76.i = zext i32 %.pre.i38.i.i.i.i.i to i64
  %.pre63 = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %i.mk = phi ptr [ %i.mb, %bb.aj ], [ %.pre63, %bb.ak ]
  %.pre-phi.i34.i.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i71.i, %bb.aj ], [ %.pre11.i.i.i.i.i76.i, %bb.ak ]
  %i.ml = phi i32 [ %i.ma, %bb.aj ], [ %.pre.i38.i.i.i.i.i, %bb.ak ]
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %.pre-phi.i34.i.i.i.i.i ; 2 uses
  %i.mn = add nuw nsw i64 %i.jt, 2305843009213693950
  %i.mo = and i64 %i.mn, 2305843009213693951
  %i.mp = add nuw nsw i64 %i.jt, 7
  %xtraiter232 = and i64 %i.mp, 7                 ; 2 uses
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol:                ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ms, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ], [ %i.mm, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.mr, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ], [ %i.mf, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ] ; 2 uses
  %prol.iter234 = phi i64 [ %prol.iter234.next, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ], [ 0, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ]
  %i.mq = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !432
  store i64 %i.mq, ptr %.09.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !432
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter234.next = add i64 %prol.iter234, 1   ; 2 uses
  %prol.iter234.cmp.not = icmp eq i64 %prol.iter234.next, %xtraiter232
  br i1 %prol.iter234.cmp.not, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol, !llvm.loop !928

.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.mm, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ], [ %i.ms, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ]
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.mf, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i.i ], [ %i.mr, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol ]
  %i.mt = icmp samesign ult i64 %i.mo, 7
  br i1 %i.mt, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i

.lr.ph.i.i.i.i.i36.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i36.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nr, %.lr.ph.i.i.i.i.i36.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nq, %.lr.ph.i.i.i.i.i36.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.mu = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  store i64 %i.mu, ptr %.09.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !432
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.mx = load i64, ptr %i.mv, align 8, !tbaa !432
  store i64 %i.mx, ptr %i.mw, align 8, !tbaa !432
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.mz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.na = load i64, ptr %i.my, align 8, !tbaa !432
  store i64 %i.na, ptr %i.mz, align 8, !tbaa !432
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.nc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.nd = load i64, ptr %i.nb, align 8, !tbaa !432
  store i64 %i.nd, ptr %i.nc, align 8, !tbaa !432
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.nf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.ng = load i64, ptr %i.ne, align 8, !tbaa !432
  store i64 %i.ng, ptr %i.nf, align 8, !tbaa !432
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.ni = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !432
  store i64 %i.nj, ptr %i.ni, align 8, !tbaa !432
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.nl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.nm = load i64, ptr %i.nk, align 8, !tbaa !432
  store i64 %i.nm, ptr %i.nl, align 8, !tbaa !432
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 56
  %i.no = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 56
  %i.np = load i64, ptr %i.nn, align 8, !tbaa !432
  store i64 %i.np, ptr %i.no, align 8, !tbaa !432
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i37.i.i.i.i.i.7 = icmp eq ptr %i.nq, %i.md
  br i1 %.not.i.i.i.i.i37.i.i.i.i.i.7, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i.i, !llvm.loop !4

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i.i, %.lr.ph.i.i.i.i.i36.i.i.i.i.i.prol.loopexit
  %i.ns = trunc nuw nsw i64 %i.kq to i32
  %i.nt = add i32 %i.ml, %i.ns
  store i32 %i.nt, ptr %i.e, align 8, !tbaa !458
  %i.nu = sub i64 %.neg.i.i.i.i75.i, %i.ai
  %gepdiff97.i.i.i.i.i = add i64 %.idx.i.i.i.i72.i, %i.nu ; 3 uses
  %i.nv = ashr exact i64 %gepdiff97.i.i.i.i.i, 3  ; 2 uses
  %i.nw = icmp sgt i64 %i.nv, 1
  br i1 %i.nw, label %bb.al, label %bb.am, !prof !506

bb.al:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit
  %i.nx = sub nsw i64 0, %i.nv
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.nx
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ny, ptr nonnull align 8 %i.mc, i64 %gepdiff97.i.i.i.i.i, i1 false)
  br label %.lr.ph.i.i.i.i.i40.i.i.i.i.preheader.i

bb.am:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i.i.loopexit
  %i.nz = icmp eq i64 %gepdiff97.i.i.i.i.i, 8
  br i1 %i.nz, label %bb.an, label %.lr.ph.i.i.i.i.i40.i.i.i.i.preheader.i

bb.an:                                            ; preds = %bb.am
  %i.oa = getelementptr inbounds i8, ptr %i.md, i64 -8
  %i.ob = load i64, ptr %i.mc, align 8, !tbaa !432
  store i64 %i.ob, ptr %i.oa, align 8, !tbaa !432
  br label %.lr.ph.i.i.i.i.i40.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i40.i.i.i.i.preheader.i:           ; preds = %bb.an, %bb.am, %bb.al
  %i.oc = icmp ne i64 %i.kq, 0
  %.neg = sext i1 %i.oc to i64
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_124ConstantAggregateBuilder7splitAtEN5clang9CharUnitsE:bb.a
  %.pre98.i.i.i.i190.i = phi ptr [ %i.xq, %bb.bu ], [ %.pre98.pre.i.i.i.i.i, %bb.bv ]
  %.pre-phi.i.i.i.i.i191.i = phi i64 [ %i.xv, %bb.bu ], [ %.pre25.i.i.i.i.i198.i, %bb.bv ]
  %i.yd = phi i32 [ %i.xu, %bb.bu ], [ %.pre.i.i.i.i.i197.i, %bb.bv ]
  %i.ye = icmp sgt i64 %i.xy, 0
  br i1 %i.ye, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i, label %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEvEEvT_SF_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i:     ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i189.i
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %.pre98.i.i.i.i190.i, i64 %.pre-phi.i.i.i.i.i191.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i192.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i192.i:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i192.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.i194.i = phi ptr [ %i.yi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i192.i ], [ %i.yf, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i195.i = phi i64 [ %i.yh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i192.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.yg = call noundef ptr @_ZNK4llvm22ConstantDataSequential20getElementAsConstantEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i64 noundef %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i195.i) #22
  store ptr %i.yg, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i194.i, align 8, !tbaa !472
  %i.yh = add nuw i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.i195.i, 1 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i.i194.i, i64 8
  %exitcond494.not.i = icmp eq i64 %i.yh, %i.wr
  br i1 %exitcond494.not.i, label %"_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE18uninitialized_copyINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEPS2_EEvT_SG_T0_.exit.loopexit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i192.i, !llvm.loop !938

"_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE18uninitialized_copyINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEPS2_EEvT_SG_T0_.exit.loopexit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i192.i
  %.pre24.i.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !458
  br label %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEvEEvT_SF_.exit.i.i.i.i.i"

"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEvEEvT_SF_.exit.i.i.i.i.i": ; preds = %"_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE18uninitialized_copyINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEPS2_EEvT_SG_T0_.exit.loopexit.i.i.i.i.i.i", %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i189.i
  %i.yj = phi i32 [ %.pre24.i.i.i.i.i.i, %"_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE18uninitialized_copyINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEPS2_EEvT_SG_T0_.exit.loopexit.i.i.i.i.i.i" ], [ %i.yd, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i.i189.i ]
  %i.yk = trunc i64 %i.xy to i32
  %i.yl = add i32 %i.yj, %i.yk
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i.sink.split"

bb.bw:                                            ; preds = %bb.bt
  br i1 %i.yc, label %bb.bx, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i157.i

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull %i.k, i64 noundef %i.xz, i64 noundef 8) #22
  %.pre.i12.i.i.i187.i = load ptr, ptr %i.g, align 8, !tbaa !457
  %.pre95.i.i.i.i188.i = load i32, ptr %i.i, align 8, !tbaa !458 ; 2 uses
  %.pre100.i.i.i.i.i = zext i32 %.pre95.i.i.i.i188.i to i64
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i157.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i157.i: ; preds = %bb.bx, %bb.bw
  %.pre-phi.i.i.i.i158.i = phi i64 [ %i.xv, %bb.bw ], [ %.pre100.i.i.i.i.i, %bb.bx ] ; 3 uses
  %i.ym = phi i32 [ %i.xu, %bb.bw ], [ %.pre95.i.i.i.i188.i, %bb.bx ] ; 2 uses
  %i.yn = phi ptr [ %i.xq, %bb.bw ], [ %.pre.i12.i.i.i187.i, %bb.bx ] ; 4 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.xt ; 5 uses
  %.idx.i.i.i.i159.i = shl nuw nsw i64 %.pre-phi.i.i.i.i158.i, 3 ; 4 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 %.idx.i.i.i.i159.i ; 4 uses
  %gepdiff.i.i.i.i160.i = sub nsw i64 %.idx.i.i.i.i159.i, %i.xt ; 2 uses
  %i.yq = ashr exact i64 %gepdiff.i.i.i.i160.i, 3 ; 3 uses
  %.not.i.i.i.i161.i = icmp ult i64 %i.yq, %i.xy
  br i1 %.not.i.i.i.i161.i, label %bb.cg, label %bb.by

bb.by:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i157.i
  %.neg.i.i.i.i162.i = mul i64 %i.xy, -8          ; 2 uses
  %i.yr = getelementptr inbounds i8, ptr %i.yp, i64 %.neg.i.i.i.i162.i ; 2 uses
  %.idx84.neg.i.i.i.i.i = shl nuw nsw i64 %i.xy, 3
  %i.ys = add nsw i64 %.pre-phi.i.i.i.i158.i, %i.xy ; 2 uses
  %i.yt = load i32, ptr %i.j, align 4, !tbaa !482
  %i.yu = zext i32 %i.yt to i64
  %i.yv = icmp ugt i64 %i.ys, %i.yu
  br i1 %i.yv, label %bb.bz, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i163.i

bb.bz:                                            ; preds = %bb.by
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull %i.k, i64 noundef %i.ys, i64 noundef 8) #22
  %.pre.i38.i.i.i.i172.i = load i32, ptr %i.i, align 8, !tbaa !458 ; 2 uses
  %.pre12.i.i.i.i.i173.i = zext i32 %.pre.i38.i.i.i.i172.i to i64
  %.pre96.i.i.i.i174.i = load ptr, ptr %i.g, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i163.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i163.i: ; preds = %bb.bz, %bb.by
  %i.yw = phi ptr [ %i.yn, %bb.by ], [ %.pre96.i.i.i.i174.i, %bb.bz ]
  %.pre-phi.i37.i.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i158.i, %bb.by ], [ %.pre12.i.i.i.i.i173.i, %bb.bz ]
  %i.yx = phi i32 [ %i.ym, %bb.by ], [ %.pre.i38.i.i.i.i172.i, %bb.bz ] ; 2 uses
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %.pre-phi.i37.i.i.i.i.i ; 2 uses
  %i.yz = icmp sgt i64 %i.xy, 1
  br i1 %i.yz, label %bb.ca, label %bb.cb, !prof !506

bb.ca:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i163.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.yy, ptr nonnull align 8 %i.yr, i64 %.idx84.neg.i.i.i.i.i, i1 false)
  %.pre11.i.i.i.i.i171.i = load i32, ptr %i.i, align 8, !tbaa !458
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i164.i

bb.cb:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i36.i.i.i.i163.i
  %i.za = icmp eq i64 %i.xy, 1
  br i1 %i.za, label %bb.cc, label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i164.i

bb.cc:                                            ; preds = %bb.cb
  %i.zb = load ptr, ptr %i.yr, align 8, !tbaa !472
  store ptr %i.zb, ptr %i.yy, align 8, !tbaa !472
  br label %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i164.i

_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i164.i: ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.zc = phi i32 [ %.pre11.i.i.i.i.i171.i, %bb.ca ], [ %i.yx, %bb.cb ], [ %i.yx, %bb.cc ]
  %i.zd = trunc i64 %i.xy to i32
  %i.ze = add i32 %i.zc, %i.zd
  store i32 %i.ze, ptr %i.i, align 8, !tbaa !458
  %i.zf = sub i64 %.neg.i.i.i.i162.i, %i.xt
  %gepdiff87.i.i.i.i.i = add i64 %.idx.i.i.i.i159.i, %i.zf ; 3 uses
  %i.zg = ashr exact i64 %gepdiff87.i.i.i.i.i, 3  ; 2 uses
  %i.zh = icmp sgt i64 %i.zg, 1
  br i1 %i.zh, label %bb.cd, label %bb.ce, !prof !506

bb.cd:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i164.i
  %i.zi = sub nsw i64 0, %i.zg
  %i.zj = getelementptr inbounds [8 x i8], ptr %i.yp, i64 %i.zi
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zj, ptr align 8 %i.yo, i64 %gepdiff87.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i

bb.ce:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i164.i
  %i.zk = icmp eq i64 %gepdiff87.i.i.i.i.i, 8
  br i1 %i.zk, label %bb.cf, label %_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i

bb.cf:                                            ; preds = %bb.ce
  %i.zl = getelementptr inbounds i8, ptr %i.yp, i64 -8
  %i.zm = load ptr, ptr %i.yo, align 8, !tbaa !472
  store ptr %i.zm, ptr %i.zl, align 8, !tbaa !472
  br label %_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i

_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i: ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.zn = icmp sgt i64 %i.xy, 0
  br i1 %i.zn, label %.lr.ph.i.i.i.i.i.i.i.i.i166.i, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i"

.lr.ph.i.i.i.i.i.i.i.i.i166.i:                    ; preds = %_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i, %.lr.ph.i.i.i.i.i.i.i.i.i166.i
  %.044.i.i.i.i.i.i.i.i.i168.i = phi ptr [ %i.zq, %.lr.ph.i.i.i.i.i.i.i.i.i166.i ], [ %i.yo, %_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i ] ; 2 uses
  %.0.allc.03.i.i.i.i.i.i.i.i.i169.i = phi i64 [ %i.zp, %.lr.ph.i.i.i.i.i.i.i.i.i166.i ], [ 1, %_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i ] ; 2 uses
  %i.zo = call noundef ptr @_ZNK4llvm22ConstantDataSequential20getElementAsConstantEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i64 noundef %.0.allc.03.i.i.i.i.i.i.i.i.i169.i) #22
  store ptr %i.zo, ptr %.044.i.i.i.i.i.i.i.i.i168.i, align 8, !tbaa !472
  %i.zp = add nuw i64 %.0.allc.03.i.i.i.i.i.i.i.i.i169.i, 1 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i168.i, i64 8
  %exitcond492.not.i = icmp eq i64 %i.zp, %i.wr
  br i1 %exitcond492.not.i, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i166.i, !llvm.loop !938

bb.cg:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE7reserveEm.exit.i.i.i.i157.i
  %i.zr = trunc i64 %i.xy to i32
  %i.zs = add i32 %i.ym, %i.zr                    ; 2 uses
  store i32 %i.zs, ptr %i.i, align 8, !tbaa !458
  %.not.i.i.i.i.i.i175.i = icmp eq i64 %i.xt, %.idx.i.i.i.i159.i
  br i1 %.not.i.i.i.i.i.i175.i, label %._crit_edge.i.i.i.i180.i, label %.lr.ph.i.i.i.i176.i

.lr.ph.i.i.i.i176.i:                              ; preds = %bb.cg
  %i.zt = zext i32 %i.zs to i64
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %i.zt
  %i.zv = sub nsw i64 0, %i.yq
  %i.zw = getelementptr inbounds [8 x i8], ptr %i.zu, i64 %i.zv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zw, ptr align 8 %i.yo, i64 %gepdiff.i.i.i.i160.i, i1 false)
  br label %bb.ch

._crit_edge.loopexit.i.i.i.i179.i:                ; preds = %bb.ch
  %.pre101.i.i.i.i.i = sub i64 %i.wr, %i.aaf
  br label %._crit_edge.i.i.i.i180.i

._crit_edge.i.i.i.i180.i:                         ; preds = %._crit_edge.loopexit.i.i.i.i179.i, %bb.cg
  %.pre-phi102.i.i.i.i.i = phi i64 [ %.pre101.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i179.i ], [ %i.xy, %bb.cg ] ; 2 uses
  %.lcssa.i.i.i.i181.i = phi i64 [ %i.aaf, %._crit_edge.loopexit.i.i.i.i179.i ], [ 1, %bb.cg ] ; 2 uses
  %i.zx = icmp sgt i64 %.pre-phi102.i.i.i.i.i, 0
  br i1 %i.zx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.preheader.i, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.preheader.i:    ; preds = %._crit_edge.i.i.i.i180.i
  %i.zy = add i64 %.lcssa.i.i.i.i181.i, %.pre-phi102.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.preheader.i
  %.044.i.i.i.i.i.i.i.i.i.i.i.i184.i = phi ptr [ %i.aab, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.i ], [ %i.yp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.preheader.i ] ; 2 uses
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i185.i = phi i64 [ %i.aaa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.i ], [ %.lcssa.i.i.i.i181.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.preheader.i ] ; 2 uses
  %i.zz = call noundef ptr @_ZNK4llvm22ConstantDataSequential20getElementAsConstantEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i64 noundef %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i185.i) #22
  store ptr %i.zz, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i184.i, align 8, !tbaa !472
  %i.aaa = add i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i185.i, 1 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i184.i, i64 8
  %exitcond493.not.i = icmp eq i64 %i.aaa, %i.zy
  br i1 %exitcond493.not.i, label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.i, !llvm.loop !938

bb.ch:                                            ; preds = %bb.ch, %.lr.ph.i.i.i.i176.i
  %.092.i.i.i.i.i = phi ptr [ %i.yo, %.lr.ph.i.i.i.i176.i ], [ %i.aae, %bb.ch ] ; 2 uses
  %.02891.i.i.i.i.i = phi i64 [ %i.yq, %.lr.ph.i.i.i.i176.i ], [ %i.aag, %bb.ch ]
  %i.aac = phi i64 [ 1, %.lr.ph.i.i.i.i176.i ], [ %i.aaf, %bb.ch ] ; 2 uses
  %i.aad = call noundef ptr @_ZNK4llvm22ConstantDataSequential20getElementAsConstantEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i64 noundef %i.aac) #22
  store ptr %i.aad, ptr %.092.i.i.i.i.i, align 8, !tbaa !472
  %i.aae = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8
  %i.aaf = add i64 %i.aac, 1                      ; 3 uses
  %i.aag = add i64 %.02891.i.i.i.i.i, -1          ; 2 uses
  %.not32.i.i.i.i178.i = icmp eq i64 %i.aag, 0
  br i1 %.not32.i.i.i.i178.i, label %._crit_edge.loopexit.i.i.i.i179.i, label %bb.ch, !llvm.loop !939

.lr.ph.i.i.i150.1.i:                              ; preds = %.lr.ph.i.i.i150.preheader.i
  %i.aah = add nuw nsw i64 %.idx.i, 8
  %i.aai = icmp samesign eq i64 %i.aah, %i.ai
  br i1 %i.aai, label %bb.bt, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i.i.i150.1.i
  %i.aaj = call noundef ptr @_ZNK4llvm22ConstantDataSequential20getElementAsConstantEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i64 noundef 1) #22
  store ptr %i.aaj, ptr %i.wx, align 8, !tbaa !472
  %i.aak = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  br label %._crit_edge.i.i.loopexit.i.i

"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i.sink.split": ; preds = %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i155.i, %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEvEEvT_SF_.exit.i.i.i.i.i"
  %.sink145 = phi i32 [ %i.yl, %"_ZN4llvm15SmallVectorImplIPNS_8ConstantEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S2_EEvEEvT_SF_.exit.i.i.i.i.i" ], [ %i.xp, %_ZN4llvm15SmallVectorImplIPNS_8ConstantEE5eraseEPKS2_S5_.exit.i.i.i155.i ]
  store i32 %.sink145, ptr %i.i, align 8, !tbaa !458
  br label %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i"

"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i166.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i182.i, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i.sink.split", %._crit_edge.i.i.i.i180.i, %_ZSt13move_backwardIPPN4llvm8ConstantES3_ET0_T_S5_S4_.exit.i.i.i.i165.i
  %i.aal = call noundef i64 @_ZNK4llvm22ConstantDataSequential14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #22 ; 11 uses
  %i.aam = load ptr, ptr %i.d, align 8, !tbaa !457 ; 6 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 %.idx.i ; 4 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 %i.ai ; 2 uses
  %i.aap = icmp eq i64 %i.aal, 0
  br i1 %i.aap, label %._crit_edge.i.i.i217.i, label %.lr.ph.i.i.i213.preheader.i

.lr.ph.i.i.i213.preheader.i:                      ; preds = %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i"
  store i64 %i.bd, ptr %i.aan, align 8, !tbaa !432
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 8 ; 2 uses
  %i.aar = icmp eq i64 %i.aal, 1
  br i1 %i.aar, label %._crit_edge.i.i.i217.i, label %.lr.ph.i.i.i213.1.i

._crit_edge.i.i.i217.i:                           ; preds = %bb.cx, %.lr.ph.i.i.i213.preheader.i, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i"
  %.0.lcssa.i.i.i218.i = phi ptr [ %i.aan, %"_ZN12_GLOBAL__N_17replaceIN4llvm11SmallVectorIPNS1_8ConstantELj32EEENS1_14iterator_rangeINS1_15mapped_iteratorINS1_6detail15SafeIntIteratorImLb0EEEZNS_24ConstantAggregateBuilder5splitEmN5clang9CharUnitsEE3$_3S4_EEEEEEvRT_mmT0_.exit.i" ], [ %i.aaq, %.lr.ph.i.i.i213.preheader.i ], [ %i.ahg, %bb.cx ] ; 3 uses
  %i.aas = load i32, ptr %i.e, align 8, !tbaa !458
  %i.aat = zext i32 %i.aas to i64
  %i.aau = sub nsw i64 %i.aat, %i.aj              ; 3 uses
  %gepdiff.i219.i = shl nsw i64 %i.aau, 3         ; 2 uses
  %i.aav = icmp sgt i64 %i.aau, 1
  br i1 %i.aav, label %bb.cj, label %bb.ck, !prof !506

bb.cj:                                            ; preds = %._crit_edge.i.i.i217.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i.i.i218.i, ptr nonnull align 8 %i.aao, i64 %gepdiff.i219.i, i1 false)
  %.pre.i.i.i.i221.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i220.i

bb.ck:                                            ; preds = %._crit_edge.i.i.i217.i
  %i.aaw = icmp eq i64 %i.aau, 1
  br i1 %i.aaw, label %bb.cl, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i220.i

bb.cl:                                            ; preds = %bb.ck
  %i.aax = load i64, ptr %i.aao, align 8, !tbaa !432
  store i64 %i.aax, ptr %.0.lcssa.i.i.i218.i, align 8, !tbaa !432
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i220.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE5eraseEPKS2_S5_.exit.i.i.i220.i: ; preds = %bb.cl, %bb.ck, %bb.cj
  %i.aay = phi ptr [ %.pre.i.i.i.i221.i, %bb.cj ], [ %i.aam, %bb.ck ], [ %i.aam, %bb.cl ]
  %i.aaz = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i218.i, i64 %gepdiff.i219.i
  %i.aba = ptrtoint ptr %i.aaz to i64
  %i.abb = ptrtoint ptr %i.aay to i64
  %i.abc = sub i64 %i.aba, %i.abb
  %i.abd = lshr exact i64 %i.abc, 3
  %i.abe = trunc i64 %i.abd to i32                ; 2 uses
  store i32 %i.abe, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit

bb.cm:                                            ; preds = %.lr.ph.i.i.i213.1.i
  %i.abf = load i32, ptr %i.e, align 8, !tbaa !458 ; 3 uses
  %i.abg = zext i32 %i.abf to i64                 ; 3 uses
  %i.abh = icmp samesign eq i64 %i.aj, %i.abg
  %i.abi = add i64 %i.aal, -1                     ; 12 uses
  %i.abj = add i64 %i.abi, %i.abg                 ; 3 uses
  %i.abk = load i32, ptr %i.l, align 4, !tbaa !482
  %i.abl = zext i32 %i.abk to i64
  %i.abm = icmp ugt i64 %i.abj, %i.abl            ; 2 uses
  br i1 %i.abh, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.abm, label %bb.co, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i

bb.co:                                            ; preds = %bb.cn
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.abj, i64 noundef 8) #22
  %.pre.i.i.i.i.i274.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre25.i.i.i.i.i275.i = zext i32 %.pre.i.i.i.i.i274.i to i64
  %.pre107.pre.i.i.i.i276.i = load ptr, ptr %i.d, align 8, !tbaa !457
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i:          ; preds = %bb.co, %bb.cn
  %.pre107.i.i.i.i266.i = phi ptr [ %i.aam, %bb.cn ], [ %.pre107.pre.i.i.i.i276.i, %bb.co ]
  %.pre-phi.i.i.i.i.i267.i = phi i64 [ %i.aj, %bb.cn ], [ %.pre25.i.i.i.i.i275.i, %bb.co ]
  %i.abn = phi i32 [ %i.abf, %bb.cn ], [ %.pre.i.i.i.i.i274.i, %bb.co ]
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %.pre107.i.i.i.i266.i, i64 %.pre-phi.i.i.i.i.i267.i ; 2 uses
  %i.abp = add i64 %i.aal, -2
  %xtraiter257 = and i64 %i.abi, 3                ; 3 uses
  %i.abq = icmp ult i64 %i.abp, 3
  br i1 %i.abq, label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i.new

.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i.new:      ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i
  %unroll_iter261 = and i64 %i.abi, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i268.i

.lr.ph.i.i.i.i.i.i.i.i.i268.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i.new
  %.04.i.i.i.i.i.i.i.i.i269.i = phi ptr [ %i.abo, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i.new ], [ %i.acg, %.lr.ph.i.i.i.i.i.i.i.i.i268.i ] ; 5 uses
  %.val13.i.i.i.i.i.i.i.i.i270.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i.new ], [ %i.acf, %.lr.ph.i.i.i.i.i.i.i.i.i268.i ] ; 5 uses
  %niter262 = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i.new ], [ %niter262.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i268.i ]
  %i.abr = mul nsw i64 %.val13.i.i.i.i.i.i.i.i.i270.i, %.fca.0.extract.i139.i
  %i.abs = add nsw i64 %i.abr, %i.bd
  store i64 %i.abs, ptr %.04.i.i.i.i.i.i.i.i.i269.i, align 8, !tbaa !432
  %i.abt = add nuw nsw i64 %.val13.i.i.i.i.i.i.i.i.i270.i, 1
  %i.abu = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i269.i, i64 8
  %i.abv = mul nsw i64 %i.abt, %.fca.0.extract.i139.i
  %i.abw = add nsw i64 %i.abv, %i.bd
  store i64 %i.abw, ptr %i.abu, align 8, !tbaa !432
  %i.abx = add nuw nsw i64 %.val13.i.i.i.i.i.i.i.i.i270.i, 2
  %i.aby = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i269.i, i64 16
  %i.abz = mul nsw i64 %i.abx, %.fca.0.extract.i139.i
  %i.aca = add nsw i64 %i.abz, %i.bd
  store i64 %i.aca, ptr %i.aby, align 8, !tbaa !432
  %i.acb = add i64 %.val13.i.i.i.i.i.i.i.i.i270.i, 3
  %i.acc = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i269.i, i64 24
  %i.acd = mul nsw i64 %i.acb, %.fca.0.extract.i139.i
  %i.ace = add nsw i64 %i.acd, %i.bd
  store i64 %i.ace, ptr %i.acc, align 8, !tbaa !432
  %i.acf = add i64 %.val13.i.i.i.i.i.i.i.i.i270.i, 4 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i269.i, i64 32 ; 2 uses
  %niter262.next.3 = add i64 %niter262, 4         ; 2 uses
  %niter262.ncmp.3 = icmp eq i64 %niter262.next.3, %unroll_iter261
  br i1 %niter262.ncmp.3, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa", label %.lr.ph.i.i.i.i.i.i.i.i.i268.i, !llvm.loop !940

"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i
  %lcmp.mod259.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod259.not, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil.preheader:     ; preds = %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa", %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i
  %.04.i.i.i.i.i.i.i.i.i269.i.epil.init = phi ptr [ %i.abo, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i ], [ %i.acg, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa" ]
  %.val13.i.i.i.i.i.i.i.i.i270.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i265.i ], [ %i.acf, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa" ]
  %lcmp.mod260 = icmp ne i64 %xtraiter257, 0
  call void @llvm.assume(i1 %lcmp.mod260)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil.preheader
  %.04.i.i.i.i.i.i.i.i.i269.i.epil = phi ptr [ %i.ack, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil ], [ %.04.i.i.i.i.i.i.i.i.i269.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil.preheader ] ; 2 uses
  %.val13.i.i.i.i.i.i.i.i.i270.i.epil = phi i64 [ %i.acj, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil ], [ %.val13.i.i.i.i.i.i.i.i.i270.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil.preheader ] ; 2 uses
  %epil.iter258 = phi i64 [ %epil.iter258.next, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil.preheader ]
  %i.ach = mul nsw i64 %.val13.i.i.i.i.i.i.i.i.i270.i.epil, %.fca.0.extract.i139.i
  %i.aci = add nsw i64 %i.ach, %i.bd
  store i64 %i.aci, ptr %.04.i.i.i.i.i.i.i.i.i269.i.epil, align 8, !tbaa !432
  %i.acj = add i64 %.val13.i.i.i.i.i.i.i.i.i270.i.epil, 1
  %i.ack = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i.i269.i.epil, i64 8
  %epil.iter258.next = add i64 %epil.iter258, 1   ; 2 uses
  %epil.iter258.cmp.not = icmp eq i64 %epil.iter258.next, %xtraiter257
  br i1 %epil.iter258.cmp.not, label %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil, !llvm.loop !941

"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i268.i.epil, %"_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorImLb0EEEZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmS2_E3$_4S2_EEvEEvT_SD_.exit.i.i.i.i.i.unr-lcssa"
  %i.acl = trunc i64 %i.abi to i32
  %i.acm = add i32 %i.abn, %i.acl                 ; 2 uses
  store i32 %i.acm, ptr %i.e, align 8, !tbaa !458
  br label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exit

bb.cp:                                            ; preds = %bb.cm
  br i1 %i.abm, label %bb.cq, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i222.i

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.abj, i64 noundef 8) #22
  %.pre.i10.i.i.i262.i = load ptr, ptr %i.d, align 8, !tbaa !457
  %.pre105.i.i.i.i263.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre109.i.i.i.i264.i = zext i32 %.pre105.i.i.i.i263.i to i64
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i222.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i222.i: ; preds = %bb.cq, %bb.cp
  %.pre-phi.i.i.i.i223.i = phi i64 [ %i.abg, %bb.cp ], [ %.pre109.i.i.i.i264.i, %bb.cq ] ; 3 uses
  %i.acn = phi i32 [ %i.abf, %bb.cp ], [ %.pre105.i.i.i.i263.i, %bb.cq ] ; 2 uses
  %i.aco = phi ptr [ %i.aam, %bb.cp ], [ %.pre.i10.i.i.i262.i, %bb.cq ] ; 3 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 %i.ai ; 8 uses
  %.idx.i.i.i.i224.i = shl nuw nsw i64 %.pre-phi.i.i.i.i223.i, 3 ; 4 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 %.idx.i.i.i.i224.i ; 6 uses
  %gepdiff.i.i.i.i225.i = sub nsw i64 %.idx.i.i.i.i224.i, %i.ai ; 2 uses
  %i.acr = ashr exact i64 %gepdiff.i.i.i.i225.i, 3 ; 7 uses
  %.not.i.i.i.i226.i = icmp ult i64 %i.acr, %i.abi
  br i1 %.not.i.i.i.i226.i, label %bb.cw, label %bb.cr

bb.cr:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i.i.i.i222.i
  %.neg.i.i.i.i227.i = mul i64 %i.abi, -8         ; 3 uses
  %i.acs = getelementptr inbounds i8, ptr %i.acq, i64 %.neg.i.i.i.i227.i ; 2 uses
  %i.act = add nsw i64 %.pre-phi.i.i.i.i223.i, %i.abi ; 2 uses
  %i.acu = load i32, ptr %i.l, align 4, !tbaa !482
  %i.acv = zext i32 %i.acu to i64
  %i.acw = icmp ugt i64 %i.act, %i.acv
  br i1 %i.acw, label %bb.cs, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i228.i

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.act, i64 noundef 8) #22
  %.pre.i38.i.i.i.i244.i = load i32, ptr %i.e, align 8, !tbaa !458 ; 2 uses
  %.pre11.i.i.i.i.i245.i = zext i32 %.pre.i38.i.i.i.i244.i to i64
  br label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i228.i

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i228.i: ; preds = %bb.cs, %bb.cr
  %.pre-phi.i34.i.i.i.i229.i = phi i64 [ %.pre-phi.i.i.i.i223.i, %bb.cr ], [ %.pre11.i.i.i.i.i245.i, %bb.cs ]
  %i.acx = phi i32 [ %i.acn, %bb.cr ], [ %.pre.i38.i.i.i.i244.i, %bb.cs ]
  %.not7.i.i.i.i.i.i.i.i.i230.i = icmp eq i64 %.neg.i.i.i.i227.i, 0
  br i1 %.not7.i.i.i.i.i.i.i.i.i230.i, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i236.i, label %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i

.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i:        ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i228.i
  %i.acy = load ptr, ptr %i.d, align 8, !tbaa !457
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.acy, i64 %.pre-phi.i34.i.i.i.i229.i ; 2 uses
  %i.ada = add i64 %i.aal, 2305843009213693950
  %i.adb = and i64 %i.ada, 2305843009213693951
  %i.adc = add i64 %i.aal, 7
  %xtraiter243 = and i64 %i.adc, 7                ; 2 uses
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol

.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol:             ; preds = %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol
  %.09.i.i.i.i.i.i.i.i.i233.i.prol = phi ptr [ %i.adf, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol ], [ %i.acz, %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i.prol = phi ptr [ %i.ade, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol ], [ %i.acs, %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i ] ; 2 uses
  %prol.iter245 = phi i64 [ %prol.iter245.next, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i ]
  %i.add = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i.prol, align 8, !tbaa !432
  store i64 %i.add, ptr %.09.i.i.i.i.i.i.i.i.i233.i.prol, align 8, !tbaa !432
  %i.ade = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i.prol, i64 8 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i.prol, i64 8 ; 2 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol.loopexit, label %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol, !llvm.loop !942

.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol, %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i
  %.09.i.i.i.i.i.i.i.i.i233.i.unr = phi ptr [ %i.acz, %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i ], [ %i.adf, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol ]
  %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i.unr = phi ptr [ %i.acs, %.lr.ph.i.i.i.i.preheader.i35.i.i.i.i231.i ], [ %i.ade, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol ]
  %i.adg = icmp samesign ult i64 %i.adb, 7
  br i1 %i.adg, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i236.i, label %.lr.ph.i.i.i.i.i36.i.i.i.i232.i

.lr.ph.i.i.i.i.i36.i.i.i.i232.i:                  ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol.loopexit, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i
  %.09.i.i.i.i.i.i.i.i.i233.i = phi ptr [ %i.aee, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i ], [ %.09.i.i.i.i.i.i.i.i.i233.i.unr, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i = phi ptr [ %i.aed, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i.unr, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol.loopexit ] ; 9 uses
  %i.adh = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, align 8, !tbaa !432
  store i64 %i.adh, ptr %.09.i.i.i.i.i.i.i.i.i233.i, align 8, !tbaa !432
  %i.adi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 8
  %i.adj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 8
  %i.adk = load i64, ptr %i.adi, align 8, !tbaa !432
  store i64 %i.adk, ptr %i.adj, align 8, !tbaa !432
  %i.adl = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 16
  %i.adm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 16
  %i.adn = load i64, ptr %i.adl, align 8, !tbaa !432
  store i64 %i.adn, ptr %i.adm, align 8, !tbaa !432
  %i.ado = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 24
  %i.adp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 24
  %i.adq = load i64, ptr %i.ado, align 8, !tbaa !432
  store i64 %i.adq, ptr %i.adp, align 8, !tbaa !432
  %i.adr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 32
  %i.ads = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 32
  %i.adt = load i64, ptr %i.adr, align 8, !tbaa !432
  store i64 %i.adt, ptr %i.ads, align 8, !tbaa !432
  %i.adu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 40
  %i.adv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 40
  %i.adw = load i64, ptr %i.adu, align 8, !tbaa !432
  store i64 %i.adw, ptr %i.adv, align 8, !tbaa !432
  %i.adx = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 48
  %i.ady = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 48
  %i.adz = load i64, ptr %i.adx, align 8, !tbaa !432
  store i64 %i.adz, ptr %i.ady, align 8, !tbaa !432
  %i.aea = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 56
  %i.aeb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 56
  %i.aec = load i64, ptr %i.aea, align 8, !tbaa !432
  store i64 %i.aec, ptr %i.aeb, align 8, !tbaa !432
  %i.aed = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i234.i, i64 64 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i233.i, i64 64
  %.not.i.i.i.i.i37.i.i.i.i235.i.7 = icmp eq ptr %i.aed, %i.acq
  br i1 %.not.i.i.i.i.i37.i.i.i.i235.i.7, label %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i236.i, label %.lr.ph.i.i.i.i.i36.i.i.i.i232.i, !llvm.loop !4

_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i236.i: ; preds = %.lr.ph.i.i.i.i.i36.i.i.i.i232.i.prol.loopexit, %.lr.ph.i.i.i.i.i36.i.i.i.i232.i, %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE7reserveEm.exit.i33.i.i.i.i228.i
  %i.aef = trunc i64 %i.abi to i32
  %i.aeg = add i32 %i.acx, %i.aef
  store i32 %i.aeg, ptr %i.e, align 8, !tbaa !458
  %i.aeh = sub i64 %.neg.i.i.i.i227.i, %i.ai
  %gepdiff97.i.i.i.i237.i = add i64 %.idx.i.i.i.i224.i, %i.aeh ; 3 uses
  %i.aei = ashr exact i64 %gepdiff97.i.i.i.i237.i, 3 ; 2 uses
  %i.aej = icmp sgt i64 %i.aei, 1
  br i1 %i.aej, label %bb.ct, label %bb.cu, !prof !506

bb.ct:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i236.i
  %i.aek = sub nsw i64 0, %i.aei
  %i.ael = getelementptr inbounds [8 x i8], ptr %i.acq, i64 %i.aek
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ael, ptr nonnull align 8 %i.acp, i64 %gepdiff97.i.i.i.i237.i, i1 false)
  br label %_ZSt13move_backwardIPN5clang9CharUnitsES2_ET0_T_S4_S3_.exit.i.i.i.i238.i

bb.cu:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang9CharUnitsEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit.i.i.i.i236.i
  %i.aem = icmp eq i64 %gepdiff97.i.i.i.i237.i, 8
  br i1 %i.aem, label %bb.cv, label %_ZSt13move_backwardIPN5clang9CharUnitsES2_ET0_T_S4_S3_.exit.i.i.i.i238.i

bb.cv:                                            ; preds = %bb.cu
  %i.aen = getelementptr inbounds i8, ptr %i.acq, i64 -8
  %i.aeo = load i64, ptr %i.acp, align 8, !tbaa !432
  store i64 %i.aeo, ptr %i.aen, align 8, !tbaa !432
  br label %_ZSt13move_backwardIPN5clang9CharUnitsES2_ET0_T_S4_S3_.exit.i.i.i.i238.i

_ZSt13move_backwardIPN5clang9CharUnitsES2_ET0_T_S4_S3_.exit.i.i.i.i238.i: ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.aep = icmp sgt i64 %i.abi, 0
  br i1 %i.aep, label %.lr.ph.i.i.i.i.i40.i.i.i.i239.i.preheader, label %_ZN12_GLOBAL__N_124ConstantAggregateBuilder5splitEmN5clang9CharUnitsE.exitthread-pre-split

.lr.ph.i.i.i.i.i40.i.i.i.i239.i.preheader:        ; preds = %_ZSt13move_backwardIPN5clang9CharUnitsES2_ET0_T_S4_S3_.exit.i.i.i.i238.i
end_hunk_1
