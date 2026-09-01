Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_eval-c4041f41e6cae5ac.typst_eval.3c87175780ab122f-cgu.0?download=true
inline.NumInlined: 6644
inline.NumDeleted: 3025
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB3_5Value5fieldTQNtNtB7_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEECs5cbCQMMIObr_10typst_eval:bb.a
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i57.i, i64 %i.hg, i64 %i.he ; 18 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i57.i, ptr %i.hf, ptr %.val23147.i.i ; 5 uses
  %i.hh = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.hh, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8VariantsNCINvMBT_NtBT_6Symbol8modifiedTQNtNtBX_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEE0ENtNtNtBa_6traits8iterator8Iterator4findQNCINvMNtCseVcqU0FIJnD_5codex6sharedINtB4e_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13best_match_inINtNtBc_6option6OptionReEB3_E0ECs5cbCQMMIObr_10typst_eval.exit.thread58.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bo
  %i.hi = icmp eq i64 %.sroa.510.0.copyload.i.i.i.i.i, 0
  br i1 %i.hi, label %.lr.ph.split.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.backedge
  %i.hj = phi i64 [ %i.hx, %.lr.ph.split.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.backedge ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.hk = sub nuw i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hj ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.hj ; 2 uses
  %i.hm = icmp samesign ult i64 %i.hk, 16
  br i1 %i.hm, label %.preheader.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.split.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %i.hn = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hl, i64 noundef range(i64 0, -9223372036854775808) %i.hk)
          to label %.noexc62.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !114 ; 2 uses

.noexc62.i:                                       ; preds = %bb.bp
  %i.ho = extractvalue { i64, i64 } %i.hn, 0
  %i.hp = extractvalue { i64, i64 } %i.hn, 1
  %i.hq = trunc nuw i64 %i.ho to i1
  br i1 %i.hq, label %.loopexit.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetReEINtNtB6_6option6OptionB1K_EEENtNtB4_9try_trait3Try6branchCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i

.preheader.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.split.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.hj
  br i1 %.not.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetReEINtNtB6_6option6OptionB1K_EEENtNtB4_9try_trait3Try6branchCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i:          ; preds = %.preheader.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %bb.bq
  %.sroa.04.011.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hu, %bb.bq ], [ 0, %.preheader.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.04.011.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %i.hs = load i8, ptr %i.hr, align 1, !alias.scope !317, !noalias !320, !noundef !4
  %i.ht = icmp eq i8 %i.hs, 46
  br i1 %i.ht, label %.loopexit.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %i.hu = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hu, %i.hk
  br i1 %exitcond.not.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetReEINtNtB6_6option6OptionB1K_EEENtNtB4_9try_trait3Try6branchCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %.noexc62.i
  %.sroa.5.0.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hp, %.noexc62.i ], [ %.sroa.04.011.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.hv = icmp ult i64 %.sroa.5.0.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %i.hk
  call void @llvm.assume(i1 %i.hv)
  %i.hw = add i64 %i.hj, 1
  %i.hx = add i64 %i.hw, %.sroa.5.0.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not12.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.hx, %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.hy = add i64 %.sroa.5.0.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %i.hj
  %or.cond.i.i.i.i.not.us.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.hy, %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.not.us.i.i.i.i.i.i.i.i.i.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.loopexit.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %i.hz = getelementptr i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.5.0.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %i.ia = getelementptr i8, ptr %i.hz, i64 %i.hj
  %lhsc.us.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ia, align 1, !noalias !331
  %i.ib = icmp eq i8 %lhsc.us.i.i.i.i.i.i.i.i.i.i, 46
  %brmerge.i.i.i.i.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %i.ib
  br i1 %brmerge.i.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetReEINtNtB6_6option6OptionB1K_EEENtNtB4_9try_trait3Try6branchCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.backedge

bb.bs:                                            ; preds = %.loopexit.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  br i1 %.not12.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetReEINtNtB6_6option6OptionB1K_EEENtNtB4_9try_trait3Try6branchCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.backedge

.lr.ph.split.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.backedge: ; preds = %bb.bs, %bb.br
  br label %.lr.ph.split.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i.backedge
  %i.ic = phi i64 [ %i.iw, %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i.backedge ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.lcssa203233.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.lcssa2031.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i.backedge ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %i.id = icmp ult i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ic
  br i1 %i.id, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i, %bb.bv
  %i.ie = phi i64 [ %i.is, %bb.bv ], [ %i.ic, %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.if = sub nuw i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ie ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ie ; 2 uses
  %i.ih = icmp samesign ult i64 %i.if, 16
  br i1 %i.ih, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bt

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ie
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ii = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ig, i64 noundef range(i64 0, -9223372036854775808) %i.if)
          to label %.noexc63.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !114 ; 2 uses

.noexc63.i:                                       ; preds = %bb.bt
  %i.ij = extractvalue { i64, i64 } %i.ii, 0
  %i.ik = extractvalue { i64, i64 } %i.ii, 1
  %i.il = trunc nuw i64 %i.ij to i1
  br i1 %i.il, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bu
  %.sroa.04.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ip, %bb.bu ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.sroa.04.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.in = load i8, ptr %i.im, align 1, !alias.scope !317, !noalias !332, !noundef !4
  %i.io = icmp eq i8 %i.in, 46
  br i1 %i.io, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ip = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ip, %i.if
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc63.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ik, %.noexc63.i ], [ %.sroa.04.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.iq = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.if
  call void @llvm.assume(i1 %i.iq)
  %i.ir = add i64 %i.ie, 1
  %i.is = add i64 %i.ir, %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.is, %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.it = add i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ie ; 3 uses
  %or.cond.i.i.i.i.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.it, %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.not.i.i.i.i.i.i.i.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bw:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.it
  %lhsc.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.iu, align 1, !noalias !333
  %i.iv = icmp eq i8 %lhsc.i.i.i.i.i.i.i.i.i.i, 46
  br i1 %i.iv, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv

select.unfold.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.bw, %bb.bv, %.noexc63.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bu, %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i
  %i.iw = phi i64 [ %i.ic, %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bu ], [ %i.is, %bb.bv ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc63.i ], [ %i.is, %bb.bw ]
  %.lcssa2031.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.lcssa203233.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa203233.i.i.i.i.i.i.i.i.i.i.i, %bb.bu ], [ %.lcssa203233.i.i.i.i.i.i.i.i.i.i.i, %bb.bv ], [ %.lcssa203233.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa203233.i.i.i.i.i.i.i.i.i.i.i, %.noexc63.i ], [ %i.is, %bb.bw ]
  %i.ix = phi i1 [ true, %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.bu ], [ true, %bb.bv ], [ true, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %.noexc63.i ], [ false, %bb.bw ] ; 2 uses
  %.pn41.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bu ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bv ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc63.i ], [ %i.it, %bb.bw ]
  %.sroa.4.1.i.i.ph.i.i.i.i.i.i.i.i.i.i.i = sub nuw i64 %.pn41.i.i.i.i.i.i.i.i.i.i.i, %.lcssa203233.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %.sroa.0.1.i.i.ph.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.lcssa203233.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i.i.i.i
  %i.iy = phi i64 [ %i.jn, %.lr.ph.split.i.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %select.unfold.i.i.i.i.i.i.i.i.i.i.i ] ; 7 uses
  br label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bz, %.lr.ph.split.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iz = phi i64 [ %i.jn, %bb.bz ], [ %i.iy, %.lr.ph.split.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ja = sub nuw i64 %.sroa.510.0.copyload.i.i.i.i.i, %i.iz ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.iz ; 2 uses
  %i.jc = icmp samesign ult i64 %i.ja, 16
  br i1 %i.jc, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bx

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.510.0.copyload.i.i.i.i.i, %i.iz
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jd = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jb, i64 noundef range(i64 0, -9223372036854775808) %i.ja)
          to label %.noexc64.i unwind label %.loopexit.i, !noalias !114 ; 2 uses

.noexc64.i:                                       ; preds = %bb.bx
  %i.je = extractvalue { i64, i64 } %i.jd, 0
  %i.jf = extractvalue { i64, i64 } %i.jd, 1
  %i.jg = trunc nuw i64 %i.je to i1
  br i1 %i.jg, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.by
  %.sroa.04.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jk, %bb.by ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.sroa.04.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ji = load i8, ptr %i.jh, align 1, !alias.scope !334, !noalias !337, !noundef !4
  %i.jj = icmp eq i8 %i.ji, 46
  br i1 %i.jj, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jk = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jk, %i.ja
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc64.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jf, %.noexc64.i ], [ %.sroa.04.011.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jl = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ja
  call void @llvm.assume(i1 %i.jl)
  %i.jm = add i64 %i.iz, 1
  %i.jn = add i64 %i.jm, %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.jn, %.sroa.510.0.copyload.i.i.i.i.i ; 2 uses
  %i.jo = add i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.iz ; 3 uses
  %or.cond.i.i.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.jo, %.sroa.510.0.copyload.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.jo
  %lhsc.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.jp, align 1, !alias.scope !300, !noalias !354
  %i.jq = icmp eq i8 %lhsc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 46
  br i1 %i.jq, label %select.unfold.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bz

select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.split.i.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bz, %.noexc64.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.by
  %i.jr = phi i64 [ %i.iy, %bb.bz ], [ %i.iy, %bb.by ], [ %i.iy, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iy, %.noexc64.i ], [ %i.jn, %.lr.ph.split.i.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.4.1.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = sub nuw i64 %.sroa.510.0.copyload.i.i.i.i.i, %i.jr
  %i.js = icmp eq i64 %.sroa.4.1.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.4.1.i.i.ph.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.js, label %.split.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetReEINtNtB6_6option6OptionB1K_EEENtNtB4_9try_trait3Try6branchCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i

.split.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.ph.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.jr
  %bcmp.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.ph.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i.ph.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.4.1.i.i.ph.i.i.i.i.i.i.i.i.i.i.i), !noalias !355 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i58.i = icmp ne i32 %bcmp.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %brmerge.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.ix, %.not.i.i.i.i.i.i.i.i.i.i58.i
  br i1 %brmerge.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvMNtCseVcqU0FIJnD_5codex6sharedINtBU_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13best_match_inINtNtBb_6option6OptionReEINtNtNtNtBb_4iter8adapters3map3MapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8VariantsNCINvMB3z_NtB3z_6Symbol8modifiedTQNtNtB3D_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEE0EE0INtB7_5FnMutTRTIB1o_B2W_EB2A_EEE8call_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, label %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i.backedge

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3all5checkReNCNvMNtCseVcqU0FIJnD_5codex6sharedINtB1i_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE9is_subset0E0Cs5cbCQMMIObr_10typst_eval.exit.backedge.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ix, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8VariantsNCINvMBT_NtBT_6Symbol8modifiedTQNtNtBX_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEE0ENtNtNtBa_6traits8iterator8Iterator4findQNCINvMNtCseVcqU0FIJnD_5codex6sharedINtB4e_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13best_match_inINtNtBc_6option6OptionReEB3_E0ECs5cbCQMMIObr_10typst_eval.exit.thread58.i.thread.i, label %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i.backedge

.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i.backedge:      ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3all5checkReNCNvMNtCseVcqU0FIJnD_5codex6sharedINtB1i_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE9is_subset0E0Cs5cbCQMMIObr_10typst_eval.exit.backedge.i.i.i.i.i.i.i.i.i.i.i, %.split.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.split.i.i.i.i.i.i.i.i.i.i

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8VariantsNCINvMBT_NtBT_6Symbol8modifiedTQNtNtBX_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEE0ENtNtNtBa_6traits8iterator8Iterator4findQNCINvMNtCseVcqU0FIJnD_5codex6sharedINtB4e_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13best_match_inINtNtBc_6option6OptionReEB3_E0ECs5cbCQMMIObr_10typst_eval.exit.thread58.i.thread.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3all5checkReNCNvMNtCseVcqU0FIJnD_5codex6sharedINtB1i_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE9is_subset0E0Cs5cbCQMMIObr_10typst_eval.exit.backedge.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !285
  br label %.lr.ph.i.i.preheader

select.unfold.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ca
  %.sroa.4.1.i.i.ph.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i = sub nuw i64 %i.jo, %i.iy
  %i.jt = icmp eq i64 %.sroa.4.1.i.i.ph.i33.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.4.1.i.i.ph.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.jt, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %select.unfold.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.iy
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i.ph.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.4.1.i.i.ph.i.i.i.i.i.i.i.i.i.i.i), !noalias !355
  %i.ju = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ju, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3all5checkReNCNvMNtCseVcqU0FIJnD_5codex6sharedINtB1i_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE9is_subset0E0Cs5cbCQMMIObr_10typst_eval.exit.backedge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %select.unfold.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvMNtCseVcqU0FIJnD_5codex6sharedINtBU_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13best_match_inINtNtBb_6option6OptionReEINtNtNtNtBb_4iter8adapters3map3MapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8VariantsNCINvMB3z_NtB3z_6Symbol8modifiedTQNtNtB3D_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEE0EE0INtB7_5FnMutTRTIB1o_B2W_EB2A_EEE8call_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i: ; preds = %.split.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %6 = icmp eq i32 %bcmp.i.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %6, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8VariantsNCINvMBT_NtBT_6Symbol8modifiedTQNtNtBX_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEE0ENtNtNtBa_6traits8iterator8Iterator4findQNCINvMNtCseVcqU0FIJnD_5codex6sharedINtB4e_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13best_match_inINtNtBc_6option6OptionReEB3_E0ECs5cbCQMMIObr_10typst_eval.exit.thread58.i.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetReEINtNtB6_6option6OptionB1K_EEENtNtB4_9try_trait3Try6branchCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i

_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetReEINtNtB6_6option6OptionB1K_EEENtNtB4_9try_trait3Try6branchCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bs, %bb.br, %.preheader.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %.noexc62.i, %bb.bq, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvMNtCseVcqU0FIJnD_5codex6sharedINtBU_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13best_match_inINtNtBb_6option6OptionReEINtNtNtNtBb_4iter8adapters3map3MapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8VariantsNCINvMB3z_NtB3z_6Symbol8modifiedTQNtNtB3D_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEE0EE0INtB7_5FnMutTRTIB1o_B2W_EB2A_EEE8call_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !285
  invoke void @_RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations6symbolNtB5_8VariantsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.noexc65.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !114

.noexc65.i:                                       ; preds = %_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowTINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetReEINtNtB6_6option6OptionB1K_EEENtNtB4_9try_trait3Try6branchCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  %i.jv = load ptr, ptr %i.aa, align 8, !noalias !285, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i, label %.loopexit116.i, label %bb.bo

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8VariantsNCINvMBT_NtBT_6Symbol8modifiedTQNtNtBX_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEE0ENtNtNtBa_6traits8iterator8Iterator4findQNCINvMNtCseVcqU0FIJnD_5codex6sharedINtB4e_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13best_match_inINtNtBc_6option6OptionReEB3_E0ECs5cbCQMMIObr_10typst_eval.exit.thread58.i.i: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvMNtCseVcqU0FIJnD_5codex6sharedINtBU_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13best_match_inINtNtBb_6option6OptionReEINtNtNtNtBb_4iter8adapters3map3MapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8VariantsNCINvMB3z_NtB3z_6Symbol8modifiedTQNtNtB3D_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEE0EE0INtB7_5FnMutTRTIB1o_B2W_EB2A_EEE8call_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !285
  %i.jw = icmp eq i64 %.sroa.510.0.copyload.i.i.i.i.i, 0
  br i1 %i.jw, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8VariantsNCINvMBT_NtBT_6Symbol8modifiedTQNtNtBX_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEE0ENtNtNtBa_6traits8iterator8Iterator4findQNCINvMNtCseVcqU0FIJnD_5codex6sharedINtB4e_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13best_match_inINtNtBc_6option6OptionReEB3_E0ECs5cbCQMMIObr_10typst_eval.exit.thread58.i.i, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8VariantsNCINvMBT_NtBT_6Symbol8modifiedTQNtNtBX_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEE0ENtNtNtBa_6traits8iterator8Iterator4findQNCINvMNtCseVcqU0FIJnD_5codex6sharedINtB4e_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13best_match_inINtNtBc_6option6OptionReEB3_E0ECs5cbCQMMIObr_10typst_eval.exit.thread58.i.thread.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread.i.i
  %.sroa.03.0134.i.i = phi i32 [ %i.lr, %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %.sroa.07.0133.i.i = phi i32 [ %i.ls, %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %.promoted.i.i126132.i.i = phi i64 [ %.promoted.i.i124.i.i, %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %.lcssa109128131.i.i = phi i64 [ %.lcssa109127.i.i, %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 7 uses
  %i.jx = icmp ult i64 %.sroa.510.0.copyload.i.i.i.i.i, %.promoted.i.i126132.i.i
  br i1 %i.jx, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i, %bb.cd
  %i.jy = phi i64 [ %i.km, %bb.cd ], [ %.promoted.i.i126132.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.jz = sub nuw i64 %.sroa.510.0.copyload.i.i.i.i.i, %i.jy ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.jy ; 2 uses
  %i.kb = icmp samesign ult i64 %i.jz, 16
  br i1 %i.kb, label %.preheader.i.i.i.i.i, label %bb.cb

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i26.i.i = icmp eq i64 %.sroa.510.0.copyload.i.i.i.i.i, %i.jy
  br i1 %.not.i.i.i26.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.i.i, label %.lr.ph.i.i.i27.i.i

bb.cb:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.kc = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ka, i64 noundef range(i64 0, -9223372036854775808) %i.jz)
          to label %.noexc66.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !114 ; 2 uses

.noexc66.i:                                       ; preds = %bb.cb
  %i.kd = extractvalue { i64, i64 } %i.kc, 0
  %i.ke = extractvalue { i64, i64 } %i.kc, 1
  %i.kf = trunc nuw i64 %i.kd to i1
  br i1 %i.kf, label %.loopexit.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.i.i

.lr.ph.i.i.i27.i.i:                               ; preds = %.preheader.i.i.i.i.i, %bb.cc
  %.sroa.04.011.i.i.i.i.i = phi i64 [ %i.kj, %bb.cc ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 %.sroa.04.011.i.i.i.i.i
  %i.kh = load i8, ptr %i.kg, align 1, !alias.scope !356, !noalias !359, !noundef !4
  %i.ki = icmp eq i8 %i.kh, 46
  br i1 %i.ki, label %.loopexit.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i.i27.i.i
  %i.kj = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.kj, %i.jz
  br i1 %exitcond.not.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.i.i, label %.lr.ph.i.i.i27.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i27.i.i, %.noexc66.i
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %i.ke, %.noexc66.i ], [ %.sroa.04.011.i.i.i.i.i, %.lr.ph.i.i.i27.i.i ] ; 3 uses
  %i.kk = icmp ult i64 %.sroa.5.0.i.i.i.i.i, %i.jz
  call void @llvm.assume(i1 %i.kk)
  %i.kl = add i64 %i.jy, 1
  %i.km = add i64 %i.kl, %.sroa.5.0.i.i.i.i.i     ; 5 uses
  %.not12.i.i.i.i = icmp ugt i64 %i.km, %.sroa.510.0.copyload.i.i.i.i.i
  %i.kn = add i64 %.sroa.5.0.i.i.i.i.i, %i.jy     ; 3 uses
  %or.cond.i.i.not.i.i = icmp ult i64 %i.kn, %.sroa.510.0.copyload.i.i.i.i.i
  br i1 %or.cond.i.i.not.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.ce, %.loopexit.i.i.i.i
  br i1 %.not12.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.i.i, label %.lr.ph.split.i.i.i.i

bb.ce:                                            ; preds = %.loopexit.i.i.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.kn
  %lhsc.i.i = load i8, ptr %i.ko, align 1, !noalias !296
  %i.kp = icmp eq i8 %lhsc.i.i, 46
  br i1 %i.kp, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.cd

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.ce, %bb.cd, %.noexc66.i, %.preheader.i.i.i.i.i, %bb.cc, %.lr.ph.i.i
  %.lcssa109127.i.i = phi i64 [ %.lcssa109128131.i.i, %.lr.ph.i.i ], [ %.lcssa109128131.i.i, %bb.cc ], [ %.lcssa109128131.i.i, %.noexc66.i ], [ %.lcssa109128131.i.i, %.preheader.i.i.i.i.i ], [ %.lcssa109128131.i.i, %bb.cd ], [ %i.km, %bb.ce ]
  %.promoted.i.i124.i.i = phi i64 [ %.promoted.i.i126132.i.i, %.lr.ph.i.i ], [ %.sroa.510.0.copyload.i.i.i.i.i, %bb.cc ], [ %.sroa.510.0.copyload.i.i.i.i.i, %.noexc66.i ], [ %.sroa.510.0.copyload.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.km, %bb.cd ], [ %i.km, %bb.ce ]
  %i.kq = phi i1 [ true, %.lr.ph.i.i ], [ true, %bb.cc ], [ true, %.noexc66.i ], [ true, %.preheader.i.i.i.i.i ], [ true, %bb.cd ], [ false, %bb.ce ]
  %.sroa.510.0.copyload.i.i.i.pn.i.i = phi i64 [ %.sroa.510.0.copyload.i.i.i.i.i, %.lr.ph.i.i ], [ %.sroa.510.0.copyload.i.i.i.i.i, %bb.cc ], [ %.sroa.510.0.copyload.i.i.i.i.i, %.noexc66.i ], [ %.sroa.510.0.copyload.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.sroa.510.0.copyload.i.i.i.i.i, %bb.cd ], [ %i.kn, %bb.ce ]
  %.sroa.4.1.i.i.i = sub nuw i64 %.sroa.510.0.copyload.i.i.i.pn.i.i, %.lcssa109128131.i.i ; 4 uses
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.lcssa109128131.i.i ; 2 uses
  br i1 %i.gx, label %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread.i.i, label %.lr.ph.split.i.i.i.i.i.preheader.i.i

.lr.ph.split.i.i.i.i.i.preheader.i.i:             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.i.i, %.lr.ph.split.i.backedge.i.i.i
  %i.kr = phi i64 [ %i.lg, %.lr.ph.split.i.backedge.i.i.i ], [ 0, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.i.i ] ; 7 uses
  br label %.lr.ph.split.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %bb.ch, %.lr.ph.split.i.i.i.i.i.preheader.i.i
  %i.ks = phi i64 [ %i.lg, %bb.ch ], [ %i.kr, %.lr.ph.split.i.i.i.i.i.preheader.i.i ] ; 5 uses
  %i.kt = sub nuw i64 %.sroa.3.0.i.i.i.i.i.i, %i.ks ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.ks ; 2 uses
  %i.kv = icmp samesign ult i64 %i.kt, 16
  br i1 %i.kv, label %.preheader.i.i.i.i.i.i.i.i, label %bb.cf

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i59.i = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, %i.ks
  br i1 %.not.i.i.i.i.i.i.i59.i, label %select.unfold.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i60.i

bb.cf:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.kw = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ku, i64 noundef range(i64 0, -9223372036854775808) %i.kt)
          to label %.noexc67.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !114 ; 2 uses

.noexc67.i:                                       ; preds = %bb.cf
  %i.kx = extractvalue { i64, i64 } %i.kw, 0
  %i.ky = extractvalue { i64, i64 } %i.kw, 1
  %i.kz = trunc nuw i64 %i.kx to i1
  br i1 %i.kz, label %.loopexit.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i

.lr.ph.i.i.i.i.i.i.i60.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.i, %bb.cg
  %.sroa.04.011.i.i.i.i.i.i.i.i = phi i64 [ %i.ld, %bb.cg ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sroa.04.011.i.i.i.i.i.i.i.i
  %i.lb = load i8, ptr %i.la, align 1, !alias.scope !365, !noalias !368, !noundef !4
  %i.lc = icmp eq i8 %i.lb, 46
  br i1 %i.lc, label %.loopexit.i.i.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i60.i
  %i.ld = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ld, %i.kt
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i60.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i60.i, %.noexc67.i
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ky, %.noexc67.i ], [ %.sroa.04.011.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i60.i ] ; 3 uses
  %i.le = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i.i, %i.kt
  call void @llvm.assume(i1 %i.le)
  %i.lf = add i64 %i.ks, 1
  %i.lg = add i64 %i.lf, %.sroa.5.0.i.i.i.i.i.i.i.i ; 4 uses
  %.not12.i.i.i.i.i.i.i = icmp ugt i64 %i.lg, %.sroa.3.0.i.i.i.i.i.i ; 2 uses
  %i.lh = add i64 %.sroa.5.0.i.i.i.i.i.i.i.i, %i.ks ; 3 uses
  %or.cond.i.i.i.i.not.i.i.i = icmp ult i64 %i.lh, %.sroa.3.0.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.not.i.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %.loopexit.i.i.i.i.i.i.i
  br i1 %.not12.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.lh
  %lhsc.i.i.i = load i8, ptr %i.li, align 1, !noalias !381
  %i.lj = icmp eq i8 %lhsc.i.i.i, 46
  br i1 %i.lj, label %select.unfold.i.thread.i.i.i, label %bb.ch

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.split.i.backedge.i.i.i, %bb.ch, %.noexc67.i, %.preheader.i.i.i.i.i.i.i.i, %bb.cg
  %i.lk = phi i64 [ %i.kr, %bb.ch ], [ %i.kr, %bb.cg ], [ %i.kr, %.preheader.i.i.i.i.i.i.i.i ], [ %i.kr, %.noexc67.i ], [ %i.lg, %.lr.ph.split.i.backedge.i.i.i ] ; 2 uses
  %.sroa.4.1.i.i.ph.i.i.i.i = sub nuw i64 %.sroa.3.0.i.i.i.i.i.i, %i.lk
  %i.ll = icmp eq i64 %.sroa.4.1.i.i.ph.i.i.i.i, %.sroa.4.1.i.i.i
  br i1 %i.ll, label %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.i.i, label %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread.i.i

select.unfold.i.thread.i.i.i:                     ; preds = %bb.ci
  %.sroa.4.1.i.i.ph.i34.i.i.i = sub nuw i64 %i.lh, %i.kr
  %i.lm = icmp eq i64 %.sroa.4.1.i.i.ph.i34.i.i.i, %.sroa.4.1.i.i.i
  br i1 %i.lm, label %.split.i.i.i.i, label %.lr.ph.split.i.backedge.i.i.i

.split.i.i.i.i:                                   ; preds = %select.unfold.i.thread.i.i.i
  %.sroa.0.1.i.i.ph.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.kr
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.ph.i.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i.i, i64 %.sroa.4.1.i.i.i), !noalias !382
  %i.ln = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ln, label %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread65.i.i, label %.lr.ph.split.i.backedge.i.i.i

_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread65.i.i: ; preds = %.split.i.i.i.i
  %i.lo = add i32 %.sroa.03.0134.i.i, 1
  br label %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread.i.i

.lr.ph.split.i.backedge.i.i.i:                    ; preds = %.split.i.i.i.i, %select.unfold.i.thread.i.i.i
  br i1 %.not12.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.preheader.i.i

_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %select.unfold.i.i.i.i
  %.sroa.0.1.i.i.ph.i40.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.lk
  %bcmp.i.i.i41.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.ph.i40.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i.i, i64 %.sroa.4.1.i.i.i), !noalias !382
  %bcmp.i.i.i41.i.fr.i.i = freeze i32 %bcmp.i.i.i41.i.i.i
  %i.lp = icmp eq i32 %bcmp.i.i.i41.i.fr.i.i, 0
  %i.lq = zext i1 %i.lp to i32
  %spec.select.i.i = add i32 %.sroa.03.0134.i.i, %i.lq
  br label %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread.i.i

_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread.i.i: ; preds = %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.i.i, %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread65.i.i, %select.unfold.i.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.lr = phi i32 [ %.sroa.03.0134.i.i, %select.unfold.i.i.i.i ], [ %spec.select.i.i, %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.i.i ], [ %i.lo, %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread65.i.i ], [ %.sroa.03.0134.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.i.i ] ; 2 uses
  %i.ls = add i32 %.sroa.07.0133.i.i, 1           ; 2 uses
  br i1 %i.kq, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i.i, label %.lr.ph.i.i

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i.i: ; preds = %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread.i.i, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8VariantsNCINvMBT_NtBT_6Symbol8modifiedTQNtNtBX_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEE0ENtNtNtBa_6traits8iterator8Iterator4findQNCINvMNtCseVcqU0FIJnD_5codex6sharedINtB4e_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13best_match_inINtNtBc_6option6OptionReEB3_E0ECs5cbCQMMIObr_10typst_eval.exit.thread58.i.i
  %.sroa.07.0.lcssa.i.i = phi i32 [ 0, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8VariantsNCINvMBT_NtBT_6Symbol8modifiedTQNtNtBX_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEE0ENtNtNtBa_6traits8iterator8Iterator4findQNCINvMNtCseVcqU0FIJnD_5codex6sharedINtB4e_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13best_match_inINtNtBc_6option6OptionReEB3_E0ECs5cbCQMMIObr_10typst_eval.exit.thread58.i.i ], [ %i.ls, %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread.i.i ] ; 2 uses
  %.sroa.03.0.lcssa.i.i = phi i32 [ 0, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8VariantsNCINvMBT_NtBT_6Symbol8modifiedTQNtNtBX_6engine6EngineNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanEE0ENtNtNtBa_6traits8iterator8Iterator4findQNCINvMNtCseVcqU0FIJnD_5codex6sharedINtB4e_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13best_match_inINtNtBc_6option6OptionReEB3_E0ECs5cbCQMMIObr_10typst_eval.exit.thread58.i.i ], [ %i.lr, %_RNvMNtCseVcqU0FIJnD_5codex6sharedINtB2_11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringE8containsCs5cbCQMMIObr_10typst_eval.exit.thread.i.i ] ; 3 uses
  br i1 %.sroa.018.0139.i.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i.i
  %i.lt = icmp eq i32 %.sroa.03.0.lcssa.i.i, %.sroa.3.0138.i.i
  %i.lu = icmp sgt i32 %.sroa.5.0144.i.i, %.sroa.07.0.lcssa.i.i
  %i.lv = icmp sgt i32 %.sroa.03.0.lcssa.i.i, %.sroa.3.0138.i.i
  %.sroa.020.0.in.i.i = select i1 %i.lt, i1 %i.lu, i1 %i.lv
  br i1 %.sroa.020.0.in.i.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i.i
  br label %bb.cl

end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs89doag9UmMt_9toml_edit6parser5errorNtB4_11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error11description:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector11label_count(ptr noalias nofree nonnull readonly captures(none) %0, i64 range(i64 1, 0) %1) unnamed_addr #22 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector11query_first(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree readonly align 16 captures(none) %2) unnamed_addr #23 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector14page_numbering(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #22 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector14query_labelled(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, i64 } { ptr inttoptr (i64 16 to ptr), i64 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector15page_supplement(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #22 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector18query_count_before(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree readonly align 16 captures(none) %1, i128 %2) unnamed_addr #22 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector4page(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #22 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector4path(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #22 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector5pages(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #22 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector5query(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree readonly align 16 captures(none) %1) unnamed_addr #22 {
bb.a:
  ret { ptr, i64 } { ptr inttoptr (i64 16 to ptr), i64 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector6anchor(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #22 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector7locator(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2, i128 %3) unnamed_addr #23 {
bb.a:
  store i128 0, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector8document(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2) unnamed_addr #23 {
bb.a:
  store i128 0, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector8position(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2) unnamed_addr #23 {
bb.a:
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i128 @_RNvXs_NvCsdaEETE4DqmE_13typst_library1__DNtB6_5WorldEL_NtNtCsloFShupyl5J_6comemo5track5Track4call(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %i.d = alloca [72 x i8], align 8                ; 14 uses
  %i.e = alloca [72 x i8], align 8                ; 11 uses
  %i.f = alloca [2 x i8], align 2                 ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [2 x i8], align 2                 ; 4 uses
  %i.n = alloca [2 x i8], align 2                 ; 4 uses
  %i.o = alloca [1 x i8], align 1                 ; 4 uses
  %i.p = alloca [1 x i8], align 1                 ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 28 uses
  %i.r = alloca [72 x i8], align 8                ; 9 uses
  %i.s = alloca [72 x i8], align 8                ; 9 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [12 x i8], align 4                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 7 uses
  %i.w = alloca [64 x i8], align 8                ; 8 uses
  %i.x = alloca [64 x i8], align 8                ; 10 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !range !9192, !noundef !4 ; 3 uses
  %i.ab = add nsw i32 %i.aa, -1
  %i.ac = icmp sgt i32 %i.aa, 0
  %narrow = select i1 %i.ac, i32 %i.ab, i32 6
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %bb.r
    i32 5, label %bb.s
    i32 6, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !nonnull !4
  %i.af = tail call noundef nonnull align 16 ptr %i.ae(ptr noundef nonnull %0) #48
  store ptr %i.af, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !20086
  store i64 8317987319222330741, ptr %i.s, align 8, !noalias !20086
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !20086
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20086
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !20086
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i, i8 0, i64 40, i1 false), !noalias !20086
  call fastcc void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtCsdaEETE4DqmE_13typst_library7LibraryENtB8_4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias nofree noundef align 8 dereferenceable(72) %i.s) #48
  %i.ag = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.s) #48, !noalias !20086 ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  %i.ai = extractvalue { i64, i64 } %i.ag, 1
  %i.aj = zext i64 %i.ah to i128
  %i.ak = zext i64 %i.ai to i128
  %i.al = shl nuw i128 %i.ak, 64
  %i.am = or disjoint i128 %i.al, %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !20086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !invariant.load !4, !nonnull !4
  %i.ap = tail call noundef nonnull align 16 ptr %i.ao(ptr noundef nonnull %0) #48 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !20089
  store i64 8317987319222330741, ptr %i.r, align 8, !noalias !20089
  %.sroa.3.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i4, align 8, !noalias !20089
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i5, align 8, !noalias !20089
  %.sroa.5.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i6, align 8, !noalias !20089
  %.sroa.6.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i7, i8 0, i64 40, i1 false), !noalias !20089
  %i.aq = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !20092, !nonnull !4, !noundef !4
  %i.ar = tail call noundef i128 %i.aq(ptr noundef nonnull align 16 %i.ap), !noalias !20092, !inline_history !20098 ; 2 uses
  %i.as = icmp eq i128 %i.ar, 0
  br i1 %i.as, label %bb.e, label %_RINvNtCsloFShupyl5J_6comemo4hash4hashRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4book8FontBookEECs5cbCQMMIObr_10typst_eval.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20099)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !20102
  store i64 8317987319222330741, ptr %i.q, align 8, !noalias !20102
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !20102
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 7237128888997146499, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !20102
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !20102
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20103)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20106)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !20102
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !20109, !noalias !20110, !noundef !4 ; 3 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, i64 noundef %i.av), !noalias !20113
  %i.aw = load ptr, ptr %i.at, align 8, !alias.scope !20109, !noalias !20110, !noundef !4 ; 2 uses
  %3 = icmp eq i64 %i.av, 0
  %not..not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  %4 = or i1 %3, %not..not.i.i.i.i.i.i.i.i
  br i1 %4, label %_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ay = load i64, ptr %i.ax, align 16, !alias.scope !20109, !noalias !20110
  %i.az = ptrtoint ptr %i.aw to i64
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.sroa.5.04055.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ null, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.14.054.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.22.053.i.i.i.i.i.i.i.i = phi i64 [ %i.ba, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.av, %.lr.ph.preheader.i.i.i.i.i.i.i.i ]
  %.sroa.9.052.i.i.i.i.i.i.i.i = phi i64 [ 0, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.az, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ba = add i64 %.sroa.22.053.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.5.04055.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bb = inttoptr i64 %.sroa.9.052.i.i.i.i.i.i.i.i to ptr ; 3 uses
  %i.bc = icmp eq i64 %.sroa.14.054.i.i.i.i.i.i.i.i, 0
  br i1 %i.bc, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.g
  %xtraiter = and i64 %.sroa.14.054.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.14.054.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.prol, i64 544
  %i.be = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.bd, align 8, !noalias !20114, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !20119

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.14.054.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %.sroa.14.054.i.i.i.i.i.i.i.i, 8
  br i1 %i.bf, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !noalias !20114, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bh, align 8, !noalias !20114, !nonnull !4, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.1, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bi, align 8, !noalias !20114, !nonnull !4, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.2, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bj, align 8, !noalias !20114, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.3, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bk, align 8, !noalias !20114, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.4, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bl, align 8, !noalias !20114, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.5, i64 544
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bm, align 8, !noalias !20114, !nonnull !4, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.6, i64 544
  %i.bo = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bn, align 8, !noalias !20114, !nonnull !4, !noundef !4 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.g, %bb.f
  %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.14.054.i.i.i.i.i.i.i.i, %bb.f ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.9.052.i.i.i.i.i.i.i.i, %bb.f ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.04055.i.i.i.i.i.i.i.i, %bb.f ], [ %i.bb, %bb.g ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 538
  %i.br = load i16, ptr %i.bq, align 2, !noalias !20120, !noundef !4
  %i.bs = zext i16 %i.br to i64
  %i.bt = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.bs
  br i1 %i.bt, label %bb.j, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i, %bb.h
  %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %bb.h ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %bb.h ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i ]
  %i.bu = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !20129, !noundef !4 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.h
  %i.bv = zext i16 %i.by to i64
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i, i64 536
  %i.by = load i16, ptr %i.bx, align 8, !noalias !20129 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 538
  %i.ca = load i16, ptr %i.bz, align 2, !noalias !20120, !noundef !4
  %i.cb = icmp ult i16 %i.by, %i.ca
  br i1 %i.cb, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #47
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.m, !noalias !20132

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecjEE10init_frontCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.cc = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cd = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ce = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 552
  %i.cg = getelementptr [8 x i8], ptr %i.cf, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %xtraiter69 = and i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.l, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ch, %.prol.preheader ], [ %i.cg, %bb.l ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.l ]
  %prol.iter71 = phi i64 [ %prol.iter71.next, %.prol.preheader ], [ 0, %bb.l ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !20133, !nonnull !4, !noundef !4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter71.next = add i64 %prol.iter71, 1     ; 2 uses
  %prol.iter71.cmp.not = icmp eq i64 %prol.iter71.next, %xtraiter69
  br i1 %prol.iter71.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !20137

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.l
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.l ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.cg, %bb.l ], [ %i.ch, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.ci = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.ci, label %.loopexit.i.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !20133, !nonnull !4, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.cj, align 8, !noalias !20133, !nonnull !4, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ck, align 8, !noalias !20133, !nonnull !4, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.cl, align 8, !noalias !20133, !nonnull !4, !noundef !4
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.cm, align 8, !noalias !20133, !nonnull !4, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.cn, align 8, !noalias !20133, !nonnull !4, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 544
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.co, align 8, !noalias !20133, !nonnull !4, !noundef !4
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 544
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.cp, align 8, !noalias !20133, !nonnull !4, !noundef !4 ; 2 uses
  %i.cq = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 544
  br i1 %i.cq, label %.loopexit.i.i.i.i.i.i.i.i, label %.new

bb.m:                                             ; preds = %bb.i
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.prol.loopexit, %.new, %bb.k
  %.sroa.78.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cd, %bb.k ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cu = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cv, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !noalias !20113, !nonnull !4, !noundef !4
  %i.cz = getelementptr i8, ptr %i.cv, i64 16
  %.val35.i.i.i.i.i.i.i.i = load i64, ptr %i.cz, align 8, !noalias !20113, !noundef !4
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i.i.i, i64 noundef %.val35.i.i.i.i.i.i.i.i), !noalias !20113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !20138
  store i8 -1, ptr %i.p, align 1, !noalias !20138
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 1), !noalias !20113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !20138
  %i.da = getelementptr i8, ptr %i.cx, i64 8
  %.val36.i.i.i.i.i.i.i.i = load ptr, ptr %i.da, align 8, !noalias !20113, !nonnull !4, !noundef !4
  %i.db = getelementptr i8, ptr %i.cx, i64 16
  %.val37.i.i.i.i.i.i.i.i = load i64, ptr %i.db, align 8, !noalias !20113, !noundef !4 ; 2 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, i64 noundef %.val37.i.i.i.i.i.i.i.i), !noalias !20113
  %i.dc = shl nuw nsw i64 %.val37.i.i.i.i.i.i.i.i, 3
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val36.i.i.i.i.i.i.i.i, i64 noundef %i.dc), !noalias !20113
  %i.dd = icmp eq i64 %i.ba, 0
  br i1 %i.dd, label %_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, label %bb.f

_RINvXs1r_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringINtNtBd_3vec3VecjEENtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.e
end_hunk_1
