Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser11try_reparse:bb.a
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i52, i64 8
  %i.gj = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.gi) #63
  br label %bb.bo

bb.bq:                                            ; preds = %bb.bo
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i52, i64 8
  %i.gl = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.gk) #63 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9771)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !9771, !noalias !9772, !noundef !19
  %i.go = add i64 %i.ew, %i.gn
  store i64 %i.go, ptr %i.gm, align 8, !alias.scope !9771, !noalias !9772
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !9771, !noalias !9772, !noundef !19
  %i.gr = sub i64 %.sroa.0.0.i49, %.sroa.0.0.i41
  %i.gs = add i64 %i.gr, %i.gq
  store i64 %i.gs, ptr %i.gp, align 8, !alias.scope !9771, !noalias !9772
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !9771, !noalias !9772, !nonnull !19, !noundef !19
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !9771, !noalias !9772, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9773)
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9InnerNode13update_parent.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bq, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.i
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.hq, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.i ], [ 0, %bb.bq ] ; 2 uses
  %.sroa.6.0.i.i.i.i = phi i1 [ %i.hp, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.i ], [ false, %bb.bq ]
  %.sroa.02.0.i.i.i.i = phi i1 [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.i ], [ false, %bb.bq ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [32 x i8], ptr %i.gu, i64 %.sroa.05.0.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9776)
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %.preheader.i.i.i
  %.sroa.03.0.i.i.i.i.i.i.i = phi ptr [ %i.gy, %.preheader.i.i.i ], [ %i.hl, %bb.bt ] ; 3 uses
  %i.gz = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i, align 8, !range !30, !noalias !9777, !noundef !19
  switch i8 %i.gz, label %default.unreachable [
    i8 0, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.i
    i8 1, label %bb.bs
    i8 2, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.i.loopexit
    i8 3, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !9777, !nonnull !19, !noundef !19 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  %i.hd = load i8, ptr %i.hc, align 8, !range !20, !noalias !9778, !noundef !19
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 65
  %i.hf = load i8, ptr %i.he, align 1, !range !20, !noalias !9778, !noundef !19
  %i.hg = trunc nuw i8 %i.hd to i1
  %i.hh = trunc nuw i8 %i.hf to i1
  %i.hi = or i1 %.sroa.02.0.i.i.i.i, %i.hg
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !9777, !nonnull !19, !noundef !19
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  br label %bb.br

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.i.loopexit: ; preds = %bb.br
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.i: ; preds = %bb.br, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.i.loopexit, %bb.bs
  %.sroa.6.0.i.i.i.i.i.i.i = phi i1 [ false, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.i.loopexit ], [ %i.hh, %bb.bs ], [ false, %bb.br ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i1 [ true, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.i.loopexit ], [ %i.hi, %bb.bs ], [ %.sroa.02.0.i.i.i.i, %bb.br ] ; 2 uses
  %i.hm = load i8, ptr %i.gy, align 8, !range !30, !alias.scope !9779, !noalias !9777, !noundef !19
  %i.hn = icmp eq i8 %i.hm, 3
  %i.ho = select i1 %i.hn, i1 true, i1 %.sroa.6.0.i.i.i.i.i.i.i
  %i.hp = or i1 %.sroa.6.0.i.i.i.i, %i.ho         ; 2 uses
  %i.hq = add nuw nsw i64 %.sroa.05.0.i.i.i.i, 1  ; 2 uses
  %i.hr = icmp eq i64 %i.hq, %i.gw
  br i1 %i.hr, label %_RNvMs5_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9Diagnosis3any.exit.loopexit.i.i, label %.preheader.i.i.i

_RNvMs5_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9Diagnosis3any.exit.loopexit.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtBX_9DiagnosisB1I_NvMs_BX_BV_9diagnosisNvMs5_BX_B1I_2orE0BZ_.exit.i.i.i.i
  %i.hs = zext i1 %.sroa.0.0.i.i.i.i.i.i.i to i8
  %i.ht = zext i1 %i.hp to i8
  br label %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9InnerNode13update_parent.exit.i

_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9InnerNode13update_parent.exit.i: ; preds = %_RNvMs5_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9Diagnosis3any.exit.loopexit.i.i, %bb.bq
  %.sroa.3.0.i.i.i.i = phi i8 [ 0, %bb.bq ], [ %i.ht, %_RNvMs5_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9Diagnosis3any.exit.loopexit.i.i ]
  %.sroa.0.0.i.i.i.i = phi i8 [ 0, %bb.bq ], [ %i.hs, %_RNvMs5_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9Diagnosis3any.exit.loopexit.i.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  store i8 %.sroa.0.0.i.i.i.i, ptr %i.hu, align 8, !alias.scope !9771, !noalias !9772
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gl, i64 49
  store i8 %.sroa.3.0.i.i.i.i, ptr %i.hv, align 1, !alias.scope !9771, !noalias !9772
  br label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode13update_parent.exit

_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode13update_parent.exit: ; preds = %bb.bo, %bb.bo, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_9InnerNode13update_parent.exit.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser25expand_and_reparse_markup.exit

bb.bu:                                            ; preds = %bb.bi
  call fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser13reparse_block(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.9.0, i64 noundef %i.ey)
  %i.hw = load i8, ptr %i.g, align 8, !range !9780, !noundef !19
  %.not20 = icmp eq i8 %i.hw, -1
  br i1 %.not20, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode8is_inner.exit

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.hx = invoke fastcc noundef ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 32)
          to label %bb.bx unwind label %bb.ca     ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hx, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  store i64 1, ptr %i.f, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.hx, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %i.hz, align 8
  %i.ia = call fastcc noundef zeroext i1 @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode16replace_children(ptr noalias nofree noundef align 8 dereferenceable(32) %7, i64 noundef %.sroa.576.0, i64 noundef %.sroa.7.0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.ia, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ey, ptr %i.ic, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %storemerge = phi i64 [ 1, %bb.by ], [ 0, %bb.bx ]
  store i64 %storemerge, ptr %0, align 8
  br label %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode13update_parent.exit

common.resume:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser5TokenEBF_.exit.i.i.i.i, %common.resume.sink.split.i, %bb.fj, %bb.fo, %bb.ft, %bb.ca
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.id, %bb.ca ], [ %i.vs, %bb.fo ], [ %.us-phi.i.i, %bb.fj ], [ %.pn.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser5TokenEBF_.exit.i.i.i.i ], [ %i.wa, %bb.ft ]
  resume { ptr, i32 } %common.resume.op

bb.ca:                                            ; preds = %bb.bw
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #59
          to label %common.resume unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.cc:                                            ; preds = %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode8is_inner.exit
  switch i8 %6, label %bb.cd [
    i8 -1, label %bb.ce
    i8 106, label %bb.ce
  ]

bb.cd:                                            ; preds = %bb.cc, %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode8is_inner.exit
  store i64 0, ptr %0, align 8
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser25expand_and_reparse_markup.exit

bb.ce:                                            ; preds = %bb.cc, %bb.cc
  %.not = icmp eq i8 %6, -1                       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9781)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.ce
  %.sroa.03.0.i.i55 = phi ptr [ %7, %bb.ce ], [ %i.ip, %bb.ch ] ; 3 uses
  %i.if = load i8, ptr %.sroa.03.0.i.i55, align 8, !range !30, !noalias !9781, !noundef !19
  switch i8 %i.if, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i56
    i8 1, label %bb.cg
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i56
    i8 3, label %bb.ch
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i55, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !9781, !nonnull !19, !noundef !19 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !9782, !nonnull !19, !noundef !19 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.il = load i64, ptr %i.ik, align 8, !noalias !9782, !noundef !19
  %i.im = getelementptr inbounds nuw [32 x i8], ptr %i.ij, i64 %i.il
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i56

bb.ch:                                            ; preds = %bb.cf
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i55, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !noalias !9781, !nonnull !19, !noundef !19
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  br label %bb.cf

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i56: ; preds = %bb.cf, %bb.cf, %bb.cg
  %.sroa.3.0.i.i57 = phi ptr [ %i.im, %bb.cg ], [ inttoptr (i64 8 to ptr), %bb.cf ], [ inttoptr (i64 8 to ptr), %bb.cf ] ; 2 uses
  %.sroa.0.0.i.i58 = phi ptr [ %i.ij, %bb.cg ], [ inttoptr (i64 8 to ptr), %bb.cf ], [ inttoptr (i64 8 to ptr), %bb.cf ] ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i57) ]
  %i.iq = ptrtoint ptr %.sroa.3.0.i.i57 to i64
  %i.ir = ptrtoint ptr %.sroa.0.0.i.i58 to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = lshr i64 %i.is, 5                       ; 14 uses
  %i.iu = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 %3)
  %i.iv = sub i64 %5, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 268
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.sroa.4.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.sroa.5.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  br label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i56
  %.sroa.0.0.i61 = phi i64 [ 1, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i56 ], [ %i.vw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.i ] ; 3 uses
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i61, i64 2) ; 2 uses
  %i.jd = call i64 @llvm.usub.sat.i64(i64 %.sroa.576.0, i64 %..i.i) ; 2 uses
  %i.je = add i64 %.sroa.0.0.i61, %.sroa.7.0      ; 2 uses
  %..i52.i = call noundef i64 @llvm.umin.i64(i64 %i.it, i64 %i.je) ; 2 uses
  %.not291.not.i = icmp ugt i64 %.sroa.576.0, %..i.i
  br i1 %.not291.not.i, label %.lr.ph.i, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread159.i

.lr.ph.i:                                         ; preds = %bb.ci, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i
  %.sroa.07.0292.i = phi i64 [ %i.kq, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i ], [ %i.jd, %bb.ci ] ; 6 uses
  %i.jf = icmp ult i64 %.sroa.07.0292.i, %i.it
  br i1 %i.jf, label %bb.cj, label %bb.cs

_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread159.i: ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.i, %.loopexit.i.i, %bb.ci
  %.sroa.07.0.lcssa.i = phi i64 [ %i.jd, %bb.ci ], [ 0, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i ], [ %.sroa.07.0292.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.i ], [ %.sroa.07.0292.i, %.loopexit.i.i ] ; 2 uses
  %.not.lcssa.i = phi i1 [ true, %bb.ci ], [ true, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i ], [ false, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.i ], [ false, %.loopexit.i.i ]
  %i.jg = icmp ult i64 %i.je, %i.it
  br i1 %i.jg, label %.lr.ph300.i, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread162.i

bb.cj:                                            ; preds = %.lr.ph.i
  %i.jh = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i58, i64 %.sroa.07.0292.i ; 3 uses
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  %.sroa.02.0.i.i = load i8, ptr %.sroa.02.0.in.i.i, align 1, !range !21, !alias.scope !9783, !noalias !9784, !noundef !19
  switch i8 %.sroa.02.0.i.i, label %.preheader.i.i [
    i8 2, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i
    i8 3, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i
    i8 4, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i
    i8 7, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i
    i8 9, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i
    i8 53, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i
    i8 1, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i
  ]

.preheader.i.i:                                   ; preds = %bb.cj, %bb.cm
  %.sroa.09.0.i.i = phi ptr [ %i.jp, %bb.cm ], [ %i.jh, %bb.cj ] ; 4 uses
  %i.ji = load i8, ptr %.sroa.09.0.i.i, align 8, !range !30, !noalias !9784, !noundef !19
  switch i8 %i.ji, label %default.unreachable [
    i8 0, label %bb.ck
    i8 1, label %.loopexit26.i.i
    i8 2, label %bb.cl
    i8 3, label %bb.cm
  ]

bb.ck:                                            ; preds = %.preheader.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  br label %.loopexit26.i.i

bb.cl:                                            ; preds = %.preheader.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !noalias !9784, !nonnull !19, !noundef !19
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  br label %.loopexit26.i.i

bb.cm:                                            ; preds = %.preheader.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !9784, !nonnull !19, !noundef !19
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  br label %.preheader.i.i

.loopexit26.i.i:                                  ; preds = %.preheader.i.i, %bb.cl, %bb.ck
  %.sroa.05.0.i.i = phi ptr [ %i.jj, %bb.ck ], [ %i.jm, %bb.cl ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %.preheader.i.i ] ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i, i64 15
  %i.jr = load i8, ptr %i.jq, align 1, !alias.scope !9785, !noalias !9784, !noundef !19 ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.jr, -1             ; 2 uses
  %i.js = and i8 %i.jr, 127
  %i.jt = zext nneg i8 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !alias.scope !9785, !noalias !9784
  %.sroa.3.0.i.i.i = select i1 %.not.i.i.i, i64 %i.jv, i64 %i.jt
  %i.jw = icmp eq i64 %.sroa.3.0.i.i.i, 1
  br i1 %i.jw, label %bb.cn, label %.preheader757

bb.cn:                                            ; preds = %.loopexit26.i.i
  %i.jx = load ptr, ptr %.sroa.05.0.i.i, align 8, !alias.scope !9785, !noalias !9784, !nonnull !19
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, ptr %i.jx, ptr %.sroa.05.0.i.i
  %lhsc.i.i = load i8, ptr %.sroa.0.0.i.i.i, align 1, !noalias !9784
  %i.jy = icmp eq i8 %lhsc.i.i, 47
  br i1 %i.jy, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i, label %.preheader757

.preheader757:                                    ; preds = %bb.cn, %.loopexit26.i.i
  br label %bb.co

bb.co:                                            ; preds = %.preheader757, %bb.cr
  %.sroa.016.0.i.i = phi ptr [ %i.kg, %bb.cr ], [ %i.jh, %.preheader757 ] ; 4 uses
  %i.jz = load i8, ptr %.sroa.016.0.i.i, align 8, !range !30, !noalias !9784, !noundef !19
  switch i8 %i.jz, label %default.unreachable [
    i8 0, label %bb.cp
    i8 1, label %.loopexit.i.i
    i8 2, label %bb.cq
    i8 3, label %bb.cr
  ]

bb.cp:                                            ; preds = %bb.co
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i.i, i64 8
  br label %.loopexit.i.i

bb.cq:                                            ; preds = %bb.co
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i.i, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !9784, !nonnull !19, !noundef !19
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  br label %.loopexit.i.i

bb.cr:                                            ; preds = %bb.co
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i.i, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !9784, !nonnull !19, !noundef !19
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  br label %bb.co

.loopexit.i.i:                                    ; preds = %bb.co, %bb.cq, %bb.cp
  %.sroa.06.0.i.i = phi ptr [ %i.ka, %bb.cp ], [ %i.kd, %bb.cq ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %bb.co ] ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 15
  %i.ki = load i8, ptr %i.kh, align 1, !alias.scope !9786, !noalias !9784, !noundef !19 ; 2 uses
  %.not.i22.i.i = icmp sgt i8 %i.ki, -1           ; 2 uses
  %i.kj = and i8 %i.ki, 127
  %i.kk = zext nneg i8 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !alias.scope !9786, !noalias !9784
  %.sroa.3.0.i23.i.i = select i1 %.not.i22.i.i, i64 %i.km, i64 %i.kk
  %i.kn = icmp eq i64 %.sroa.3.0.i23.i.i, 1
  br i1 %i.kn, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.i, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread159.i

_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.i: ; preds = %.loopexit.i.i
  %i.ko = load ptr, ptr %.sroa.06.0.i.i, align 8, !alias.scope !9786, !noalias !9784, !nonnull !19
  %.sroa.0.0.i24.i.i = select i1 %.not.i22.i.i, ptr %i.ko, ptr %.sroa.06.0.i.i
  %lhsc21.i.i = load i8, ptr %.sroa.0.0.i24.i.i, align 1, !noalias !9784
  %i.kp = icmp eq i8 %lhsc21.i.i, 58
  br i1 %i.kp, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread159.i

bb.cs:                                            ; preds = %.lr.ph.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.07.0292.i, i64 noundef %i.it, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #62, !noalias !9784
  unreachable

_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread.i: ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.i, %bb.cn, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj
  %i.kq = add nsw i64 %.sroa.07.0292.i, -1        ; 2 uses
  %.not.i70 = icmp eq i64 %i.kq, 0
  br i1 %.not.i70, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread159.i, label %.lr.ph.i

_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread162.i: ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.i, %.loopexit.i64.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread159.i
  %.sroa.018.0.lcssa.i = phi i64 [ %..i52.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread159.i ], [ %i.it, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread.i ], [ %.sroa.018.0299.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.i ], [ %.sroa.018.0299.i, %.loopexit.i64.i ] ; 6 uses
  br i1 %.not.lcssa.i, label %.thread455.i, label %bb.db

.thread455.i:                                     ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread162.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9787
  store i64 0, ptr %i.e, align 8, !noalias !9787
  br label %._crit_edge.i

.lr.ph300.i:                                      ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread159.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread.i
  %.sroa.018.0299.i = phi i64 [ %i.ma, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread.i ], [ %..i52.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit.thread159.i ] ; 4 uses
  %i.kr = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i58, i64 %.sroa.018.0299.i ; 3 uses
  %.sroa.02.0.in.i54.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %.sroa.02.0.i55.i = load i8, ptr %.sroa.02.0.in.i54.i, align 1, !range !21, !alias.scope !9788, !noalias !9784, !noundef !19
  switch i8 %.sroa.02.0.i55.i, label %.preheader.i57.i [
    i8 2, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread.i
    i8 3, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread.i
    i8 4, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread.i
    i8 7, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread.i
    i8 9, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread.i
    i8 53, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread.i
    i8 1, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread.i
  ]

.preheader.i57.i:                                 ; preds = %.lr.ph300.i, %bb.cv
  %.sroa.09.0.i58.i = phi ptr [ %i.kz, %bb.cv ], [ %i.kr, %.lr.ph300.i ] ; 4 uses
  %i.ks = load i8, ptr %.sroa.09.0.i58.i, align 8, !range !30, !noalias !9784, !noundef !19
  switch i8 %i.ks, label %default.unreachable [
    i8 0, label %bb.ct
    i8 1, label %.loopexit26.i59.i
    i8 2, label %bb.cu
    i8 3, label %bb.cv
  ]

bb.ct:                                            ; preds = %.preheader.i57.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i58.i, i64 8
  br label %.loopexit26.i59.i

bb.cu:                                            ; preds = %.preheader.i57.i
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i58.i, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !9784, !nonnull !19, !noundef !19
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  br label %.loopexit26.i59.i

bb.cv:                                            ; preds = %.preheader.i57.i
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i58.i, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !9784, !nonnull !19, !noundef !19
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  br label %.preheader.i57.i

.loopexit26.i59.i:                                ; preds = %.preheader.i57.i, %bb.cu, %bb.ct
  %.sroa.05.0.i60.i = phi ptr [ %i.kt, %bb.ct ], [ %i.kw, %bb.cu ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %.preheader.i57.i ] ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i60.i, i64 15
  %i.lb = load i8, ptr %i.la, align 1, !alias.scope !9789, !noalias !9784, !noundef !19 ; 2 uses
  %.not.i.i61.i = icmp sgt i8 %i.lb, -1           ; 2 uses
  %i.lc = and i8 %i.lb, 127
  %i.ld = zext nneg i8 %i.lc to i64
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i60.i, i64 8
  %i.lf = load i64, ptr %i.le, align 8, !alias.scope !9789, !noalias !9784
  %.sroa.3.0.i.i62.i = select i1 %.not.i.i61.i, i64 %i.lf, i64 %i.ld
  %i.lg = icmp eq i64 %.sroa.3.0.i.i62.i, 1
  br i1 %i.lg, label %bb.cw, label %.preheader754

bb.cw:                                            ; preds = %.loopexit26.i59.i
  %i.lh = load ptr, ptr %.sroa.05.0.i60.i, align 8, !alias.scope !9789, !noalias !9784, !nonnull !19
  %.sroa.0.0.i.i71.i = select i1 %.not.i.i61.i, ptr %i.lh, ptr %.sroa.05.0.i60.i
  %lhsc.i72.i = load i8, ptr %.sroa.0.0.i.i71.i, align 1, !noalias !9784
  %i.li = icmp eq i8 %lhsc.i72.i, 47
  br i1 %i.li, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread.i, label %.preheader754

.preheader754:                                    ; preds = %bb.cw, %.loopexit26.i59.i
  br label %bb.cx

bb.cx:                                            ; preds = %.preheader754, %bb.da
  %.sroa.016.0.i63.i = phi ptr [ %i.lq, %bb.da ], [ %i.kr, %.preheader754 ] ; 4 uses
  %i.lj = load i8, ptr %.sroa.016.0.i63.i, align 8, !range !30, !noalias !9784, !noundef !19
  switch i8 %i.lj, label %default.unreachable [
    i8 0, label %bb.cy
    i8 1, label %.loopexit.i64.i
    i8 2, label %bb.cz
    i8 3, label %bb.da
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i63.i, i64 8
  br label %.loopexit.i64.i

bb.cz:                                            ; preds = %bb.cx
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i63.i, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !9784, !nonnull !19, !noundef !19
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  br label %.loopexit.i64.i

bb.da:                                            ; preds = %bb.cx
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i63.i, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !noalias !9784, !nonnull !19, !noundef !19
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  br label %bb.cx

.loopexit.i64.i:                                  ; preds = %bb.cx, %bb.cz, %bb.cy
  %.sroa.06.0.i65.i = phi ptr [ %i.lk, %bb.cy ], [ %i.ln, %bb.cz ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %bb.cx ] ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i65.i, i64 15
  %i.ls = load i8, ptr %i.lr, align 1, !alias.scope !9790, !noalias !9784, !noundef !19 ; 2 uses
  %.not.i22.i66.i = icmp sgt i8 %i.ls, -1         ; 2 uses
  %i.lt = and i8 %i.ls, 127
  %i.lu = zext nneg i8 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i65.i, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !alias.scope !9790, !noalias !9784
  %.sroa.3.0.i23.i67.i = select i1 %.not.i22.i66.i, i64 %i.lw, i64 %i.lu
  %i.lx = icmp eq i64 %.sroa.3.0.i23.i67.i, 1
  br i1 %i.lx, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.i, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread162.i

_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.i: ; preds = %.loopexit.i64.i
  %i.ly = load ptr, ptr %.sroa.06.0.i65.i, align 8, !alias.scope !9790, !noalias !9784, !nonnull !19
  %.sroa.0.0.i24.i68.i = select i1 %.not.i22.i66.i, ptr %i.ly, ptr %.sroa.06.0.i65.i
  %lhsc21.i69.i = load i8, ptr %.sroa.0.0.i24.i68.i, align 1, !noalias !9784
  %i.lz = icmp eq i8 %lhsc21.i69.i, 58
  br i1 %i.lz, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread.i, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread162.i

_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread.i: ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.i, %bb.cw, %.lr.ph300.i, %.lr.ph300.i, %.lr.ph300.i, %.lr.ph300.i, %.lr.ph300.i, %.lr.ph300.i, %.lr.ph300.i
  %i.ma = add nuw nsw i64 %.sroa.018.0299.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ma, %i.it
  br i1 %exitcond.not.i, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread162.i, label %.lr.ph300.i

bb.db:                                            ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser6expand.exit73.thread162.i
  %i.mb = add i64 %.sroa.07.0.lcssa.i, -1         ; 4 uses
  %i.mc = icmp ult i64 %i.mb, %i.it
  br i1 %i.mc, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.md = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i58, i64 %i.mb
  %i.me = getelementptr i8, ptr %i.md, i64 1
  %.val51.i = load i8, ptr %i.me, align 1, !range !21, !noalias !9784, !noundef !19
  %i.mf = icmp eq i8 %.val51.i, 45
  %..sroa.07.0.i = select i1 %i.mf, i64 %i.mb, i64 %.sroa.07.0.lcssa.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9787
  store i64 0, ptr %i.e, align 8, !noalias !9787
  %.not45.i = icmp ugt i64 %..sroa.07.0.i, %i.it
  br i1 %.not45.i, label %bb.de, label %bb.df, !prof !9791

bb.dd:                                            ; preds = %bb.db
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.mb, i64 noundef %i.it, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @533) #62, !noalias !9784
  unreachable

bb.de:                                            ; preds = %bb.dc
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %..sroa.07.0.i, i64 noundef %i.it, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @535) #62, !noalias !9784
  unreachable

bb.df:                                            ; preds = %bb.dc
  %.idx.i = shl nuw nsw i64 %..sroa.07.0.i, 5     ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i58, i64 %.idx.i ; 3 uses
  %i.mh = icmp eq i64 %..sroa.07.0.i, 0
  br i1 %i.mh, label %._crit_edge.i, label %.lr.ph307.i

.lr.ph307.i:                                      ; preds = %bb.df, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i
  %i.mi = phi i64 [ %i.qf, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i ], [ 0, %bb.df ] ; 3 uses
  %i.mj = phi i64 [ %i.qg, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i ], [ 0, %bb.df ] ; 3 uses
  %.sroa.024.0306.i = phi i64 [ %i.ni, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i ], [ 0, %bb.df ]
  %.sroa.026.0305.i = phi ptr [ %i.ml, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i ], [ %.sroa.0.0.i.i58, %bb.df ] ; 5 uses
  %.sroa.0141.0304.i = phi i8 [ %storemerge.i.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i ], [ 1, %bb.df ]
  %i.mk = phi i64 [ %i.qh, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i ], [ 0, %bb.df ] ; 5 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.026.0305.i, i64 32 ; 2 uses
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dk, %.lr.ph307.i
  %.sroa.04.0.i.i62 = phi ptr [ %.sroa.026.0305.i, %.lr.ph307.i ], [ %i.mz, %bb.dk ] ; 6 uses
  %i.mm = load i8, ptr %.sroa.04.0.i.i62, align 8, !range !30, !noalias !9784, !noundef !19
  switch i8 %i.mm, label %default.unreachable [
    i8 0, label %bb.dh
    i8 1, label %bb.di
    i8 2, label %bb.dj
    i8 3, label %bb.dk
  ]

bb.dh:                                            ; preds = %bb.dg
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i62, i64 23
  %i.mo = load i8, ptr %i.mn, align 1, !noalias !9784, !noundef !19 ; 2 uses
  %.not14.i.i69 = icmp sgt i8 %i.mo, -1
  br i1 %.not14.i.i69, label %bb.dl, label %bb.dm

bb.di:                                            ; preds = %bb.dg
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i62, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !noalias !9784, !nonnull !19, !noundef !19
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 40
  %i.ms = load i64, ptr %i.mr, align 8, !noalias !9792, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i64

bb.dj:                                            ; preds = %bb.dg
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i62, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !noalias !9784, !nonnull !19, !noundef !19 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 47
  %i.mw = load i8, ptr %i.mv, align 1, !noalias !9792, !noundef !19 ; 2 uses
  %.not.i.i63 = icmp sgt i8 %i.mw, -1
  br i1 %.not.i.i63, label %bb.dn, label %bb.do

bb.dk:                                            ; preds = %bb.dg
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i62, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !noalias !9784, !nonnull !19, !noundef !19
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  br label %bb.dg

bb.dl:                                            ; preds = %bb.dh
end_hunk_0
begin_hunk_1_@_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser11try_reparse:bb.a
    i8 0, label %bb.dq
    i8 1, label %.loopexit.i77.i
    i8 2, label %bb.dr
    i8 3, label %bb.ds
  ]

bb.dq:                                            ; preds = %.preheader.i76.i
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 8
  br label %.loopexit.i77.i

bb.dr:                                            ; preds = %.preheader.i76.i
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !noalias !9794, !nonnull !19, !noundef !19
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  br label %.loopexit.i77.i

bb.ds:                                            ; preds = %.preheader.i76.i
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !noalias !9794, !nonnull !19, !noundef !19
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  br label %.preheader.i76.i

.loopexit.i77.i:                                  ; preds = %.preheader.i76.i, %bb.dr, %bb.dq
  %.sroa.04.0.i78.i = phi ptr [ %i.nk, %bb.dq ], [ %i.nn, %bb.dr ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %.preheader.i76.i ] ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i78.i, i64 15
  %i.ns = load i8, ptr %i.nr, align 1, !alias.scope !9795, !noalias !9794, !noundef !19 ; 2 uses
  %.not.i.i79.i = icmp sgt i8 %i.ns, -1           ; 2 uses
  %i.nt = and i8 %i.ns, 127
  %i.nu = zext nneg i8 %i.nt to i64
  %i.nv = load ptr, ptr %.sroa.04.0.i78.i, align 8, !alias.scope !9795, !noalias !9794, !nonnull !19
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i78.i, i64 8
  %i.nx = load i64, ptr %i.nw, align 8, !alias.scope !9795, !noalias !9794
  %.sroa.3.0.i.i80.i = select i1 %.not.i.i79.i, i64 %i.nx, i64 %i.nu
  %.sroa.0.0.i.i81.i = select i1 %.not.i.i79.i, ptr %i.nv, ptr %.sroa.04.0.i78.i ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i81.i, i64 %.sroa.3.0.i.i80.i ; 4 uses
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i.i: ; preds = %bb.dv, %.loopexit.i77.i
  %i.nz = phi ptr [ %i.pi, %bb.dv ], [ %.sroa.0.0.i.i81.i, %.loopexit.i77.i ] ; 6 uses
  %.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.nz, %i.ny ; 2 uses
  br i1 %.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not.not, label %bb.dt, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i

bb.dt:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 1 ; 3 uses
  %i.ob = load i8, ptr %i.nz, align 1, !noalias !9796, !noundef !19 ; 5 uses
  %i.oc = icmp sgt i8 %i.ob, -1
  br i1 %i.oc, label %bb.du, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i: ; preds = %bb.dt
  %i.od = and i8 %i.ob, 31
  %i.oe = zext nneg i8 %i.od to i32               ; 3 uses
  %i.of = icmp ne ptr %i.oa, %i.ny
  call void @llvm.assume(i1 %i.of)
  %i.og = getelementptr inbounds nuw i8, ptr %i.nz, i64 2 ; 3 uses
  %i.oh = load i8, ptr %i.oa, align 1, !noalias !9796, !noundef !19
  %i.oi = shl nuw nsw i32 %i.oe, 6
  %i.oj = and i8 %i.oh, 63
  %i.ok = zext nneg i8 %i.oj to i32               ; 2 uses
  %i.ol = or disjoint i32 %i.oi, %i.ok
  %i.om = icmp samesign ugt i8 %i.ob, -33
  br i1 %i.om, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.on = zext nneg i8 %i.ob to i32
  br label %bb.dv

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i
  %i.oo = icmp ne ptr %i.og, %i.ny
  call void @llvm.assume(i1 %i.oo)
  %i.op = getelementptr inbounds nuw i8, ptr %i.nz, i64 3 ; 3 uses
  %i.oq = load i8, ptr %i.og, align 1, !noalias !9796, !noundef !19
  %i.or = shl nuw nsw i32 %i.ok, 6
  %i.os = and i8 %i.oq, 63
  %i.ot = zext nneg i8 %i.os to i32
  %i.ou = or disjoint i32 %i.or, %i.ot            ; 2 uses
  %i.ov = shl nuw nsw i32 %i.oe, 12
  %i.ow = or disjoint i32 %i.ou, %i.ov
  %i.ox = icmp samesign ugt i8 %i.ob, -17
  br i1 %i.ox, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i, label %bb.dv

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i
  %i.oy = icmp ne ptr %i.op, %i.ny
  call void @llvm.assume(i1 %i.oy)
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.pa = load i8, ptr %i.op, align 1, !noalias !9796, !noundef !19
  %i.pb = shl nuw nsw i32 %i.oe, 18
  %i.pc = and i32 %i.pb, 1835008
  %i.pd = shl nuw nsw i32 %i.ou, 6
  %i.pe = and i8 %i.pa, 63
  %i.pf = zext nneg i8 %i.pe to i32
  %i.pg = or disjoint i32 %i.pd, %i.pf
  %i.ph = or disjoint i32 %i.pg, %i.pc
  br label %bb.dv

bb.dv:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i, %bb.du, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i
  %i.pi = phi ptr [ %i.op, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i ], [ %i.oz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i ], [ %i.og, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i ], [ %i.oa, %bb.du ]
  %spec.select.i.ph.i.i.i = phi i32 [ %i.ow, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i ], [ %i.ph, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i ], [ %i.ol, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i ], [ %i.on, %bb.du ]
  switch i32 %spec.select.i.ph.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i.i [
    i32 10, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i
    i32 11, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i
    i32 12, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i
    i32 13, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i
    i32 133, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i
    i32 8232, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i
    i32 8233, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i
  ]

_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i: ; preds = %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i.i
  %i.pj = zext i1 %.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.not.not to i8
  br label %bb.dw

bb.dw:                                            ; preds = %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i, %bb.dp, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i64
  %.sroa.03.0.i75.i = phi i8 [ 0, %bb.dp ], [ %i.pj, %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i.i ], [ 1, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i64 ]
  %i.pk = or i8 %.sroa.03.0.i75.i, %.sroa.0141.0304.i
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i

_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i: ; preds = %bb.dw, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i64
  %storemerge.i.i = phi i8 [ %i.pk, %bb.dw ], [ 0, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit.i64 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9797)
  %i.pl = icmp eq i8 %.sroa.0.0.i74.i, 6
  br i1 %i.pl, label %.preheader.i84.i, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i

.sink.split.i.i:                                  ; preds = %bb.eb, %bb.ea
  %.sink.i = phi i64 [ 1, %bb.ea ], [ -1, %bb.eb ]
  %i.pm = add i64 %.sink.i, %i.mk                 ; 4 uses
  store i64 %i.pm, ptr %i.e, align 8, !alias.scope !9797, !noalias !9798
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i

.preheader.i84.i:                                 ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i, %bb.dz
  %.sroa.05.0.i85.i = phi ptr [ %i.pu, %bb.dz ], [ %.sroa.026.0305.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i ] ; 4 uses
  %i.pn = load i8, ptr %.sroa.05.0.i85.i, align 8, !range !30, !noalias !9799, !noundef !19
  switch i8 %i.pn, label %default.unreachable [
    i8 0, label %bb.dx
    i8 1, label %.loopexit.i86.i
    i8 2, label %bb.dy
    i8 3, label %bb.dz
  ]

bb.dx:                                            ; preds = %.preheader.i84.i
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i85.i, i64 8
  br label %.loopexit.i86.i

bb.dy:                                            ; preds = %.preheader.i84.i
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i85.i, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !noalias !9799, !nonnull !19, !noundef !19
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 32
  br label %.loopexit.i86.i

bb.dz:                                            ; preds = %.preheader.i84.i
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i85.i, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !9799, !nonnull !19, !noundef !19
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  br label %.preheader.i84.i

.loopexit.i86.i:                                  ; preds = %.preheader.i84.i, %bb.dy, %bb.dx
  %.sroa.02.0.i87.i = phi ptr [ %i.po, %bb.dx ], [ %i.pr, %bb.dy ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %.preheader.i84.i ] ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i87.i, i64 15
  %i.pw = load i8, ptr %i.pv, align 1, !alias.scope !9800, !noalias !9799, !noundef !19 ; 2 uses
  %.not.i.i88.i = icmp sgt i8 %i.pw, -1           ; 2 uses
  %i.px = and i8 %i.pw, 127
  %i.py = zext nneg i8 %i.px to i64
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i87.i, i64 8
  %i.qa = load i64, ptr %i.pz, align 8, !alias.scope !9800, !noalias !9799
  %.sroa.3.0.i.i89.i = select i1 %.not.i.i88.i, i64 %i.qa, i64 %i.py
  %cond.i.i = icmp eq i64 %.sroa.3.0.i.i89.i, 1
  br i1 %cond.i.i, label %bb.ea, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i

bb.ea:                                            ; preds = %.loopexit.i86.i
  %i.qb = load ptr, ptr %.sroa.02.0.i87.i, align 8, !alias.scope !9800, !noalias !9799, !nonnull !19
  %.sroa.0.0.i.i90.i = select i1 %.not.i.i88.i, ptr %i.qb, ptr %.sroa.02.0.i87.i
  %lhsc.i91.i = load i8, ptr %.sroa.0.0.i.i90.i, align 1, !noalias !9799 ; 2 uses
  %i.qc = icmp eq i8 %lhsc.i91.i, 91
  br i1 %i.qc, label %.sink.split.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.qd = icmp eq i8 %lhsc.i91.i, 93
  %i.qe = icmp ne i64 %i.mk, 0
  %or.cond.i.i = select i1 %i.qd, i1 %i.qe, i1 false
  br i1 %or.cond.i.i, label %.sink.split.i.i, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i

_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i: ; preds = %bb.eb, %.loopexit.i86.i, %.sink.split.i.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i
  %i.qf = phi i64 [ %i.mi, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i ], [ %i.pm, %.sink.split.i.i ], [ %i.mi, %.loopexit.i86.i ], [ %i.mi, %bb.eb ] ; 2 uses
  %i.qg = phi i64 [ %i.mj, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i ], [ %i.pm, %.sink.split.i.i ], [ %i.mj, %.loopexit.i86.i ], [ %i.mj, %bb.eb ] ; 2 uses
  %i.qh = phi i64 [ %i.mk, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit.i ], [ %i.pm, %.sink.split.i.i ], [ %i.mk, %.loopexit.i86.i ], [ %i.mk, %bb.eb ]
  %i.qi = icmp eq ptr %i.ml, %i.mg
  br i1 %i.qi, label %._crit_edge.loopexit.i, label %.lr.ph307.i

._crit_edge.loopexit.i:                           ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit.i
  %i.qj = icmp eq i64 %i.qf, 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.df, %.thread455.i
  %i.qk = phi ptr [ %i.mg, %bb.df ], [ %i.mg, %._crit_edge.loopexit.i ], [ %.sroa.0.0.i.i58, %.thread455.i ]
  %.idx459.i = phi i64 [ 0, %bb.df ], [ %.idx.i, %._crit_edge.loopexit.i ], [ 0, %.thread455.i ]
  %.sroa.07.1166458.i = phi i64 [ 0, %bb.df ], [ %..sroa.07.0.i, %._crit_edge.loopexit.i ], [ 0, %.thread455.i ] ; 4 uses
  %i.ql = phi i1 [ true, %bb.df ], [ %i.qj, %._crit_edge.loopexit.i ], [ true, %.thread455.i ]
  %i.qm = phi i64 [ 0, %bb.df ], [ %i.qg, %._crit_edge.loopexit.i ], [ 0, %.thread455.i ] ; 2 uses
  %.sroa.0141.0.lcssa.i = phi i8 [ 1, %bb.df ], [ %storemerge.i.i, %._crit_edge.loopexit.i ], [ 1, %.thread455.i ] ; 3 uses
  %.sroa.024.0.lcssa.i = phi i64 [ 0, %bb.df ], [ %i.ni, %._crit_edge.loopexit.i ], [ 0, %.thread455.i ]
  %i.qn = icmp ult i64 %.sroa.018.0.lcssa.i, %.sroa.07.1166458.i
  %.not46.i = icmp samesign ugt i64 %.sroa.018.0.lcssa.i, %i.it
  %or.cond.i = select i1 %i.qn, i1 true, i1 %.not46.i, !prof !49
  br i1 %or.cond.i, label %bb.ec, label %bb.ed, !prof !49

bb.ec:                                            ; preds = %._crit_edge.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.07.1166458.i, i64 noundef %.sroa.018.0.lcssa.i, i64 noundef %i.it, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @534) #62, !noalias !9784
  unreachable

bb.ed:                                            ; preds = %._crit_edge.i
  %.idx328.i = shl nuw nsw i64 %.sroa.018.0.lcssa.i, 5 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i58, i64 %.idx328.i
  %i.qp = icmp samesign eq i64 %.idx459.i, %.idx328.i
  br i1 %i.qp, label %._crit_edge316.i, label %.lr.ph315.i

.lr.ph315.i:                                      ; preds = %bb.ed, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i
  %.sroa.028.0313.i = phi i64 [ %i.rn, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i ], [ 0, %bb.ed ]
  %.sroa.030.0312.i = phi ptr [ %i.qq, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i ], [ %i.qk, %bb.ed ] ; 5 uses
  %.sroa.0145.0311.i = phi i8 [ %storemerge.i101.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i ], [ %.sroa.0141.0.lcssa.i, %bb.ed ]
  %.sroa.0147.0310.i = phi i64 [ %.sroa.0147.1.i, %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser12next_nesting.exit133.i ], [ %i.qm, %bb.ed ] ; 5 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.030.0312.i, i64 32 ; 2 uses
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ei, %.lr.ph315.i
  %.sroa.04.0.i92.i = phi ptr [ %.sroa.030.0312.i, %.lr.ph315.i ], [ %i.re, %bb.ei ] ; 6 uses
  %i.qr = load i8, ptr %.sroa.04.0.i92.i, align 8, !range !30, !noalias !9784, !noundef !19
  switch i8 %i.qr, label %default.unreachable [
    i8 0, label %bb.ef
    i8 1, label %bb.eg
    i8 2, label %bb.eh
    i8 3, label %bb.ei
  ]

bb.ef:                                            ; preds = %bb.ee
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i92.i, i64 23
  %i.qt = load i8, ptr %i.qs, align 1, !noalias !9784, !noundef !19 ; 2 uses
  %.not14.i95.i = icmp sgt i8 %i.qt, -1
  br i1 %.not14.i95.i, label %bb.ej, label %bb.ek

bb.eg:                                            ; preds = %bb.ee
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i92.i, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !noalias !9784, !nonnull !19, !noundef !19
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 40
  %i.qx = load i64, ptr %i.qw, align 8, !noalias !9801, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i

bb.eh:                                            ; preds = %bb.ee
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i92.i, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !noalias !9784, !nonnull !19, !noundef !19 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 47
  %i.rb = load i8, ptr %i.ra, align 1, !noalias !9801, !noundef !19 ; 2 uses
  %.not.i93.i = icmp sgt i8 %i.rb, -1
  br i1 %.not.i93.i, label %bb.el, label %bb.em

bb.ei:                                            ; preds = %bb.ee
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i92.i, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !noalias !9784, !nonnull !19, !noundef !19
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  br label %bb.ee

bb.ej:                                            ; preds = %bb.ef
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i92.i, i64 16
  %i.rg = load i64, ptr %i.rf, align 8, !noalias !9784, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i

bb.ek:                                            ; preds = %bb.ef
  %i.rh = and i8 %i.qt, 127
  %i.ri = zext nneg i8 %i.rh to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i

bb.el:                                            ; preds = %bb.eh
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qz, i64 40
  %i.rk = load i64, ptr %i.rj, align 8, !noalias !9801, !noundef !19
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i

bb.em:                                            ; preds = %bb.eh
  %i.rl = and i8 %i.rb, 127
  %i.rm = zext nneg i8 %i.rl to i64
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i: ; preds = %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.eg
  %.sroa.0.1.i94.i = phi i64 [ %i.rg, %bb.ej ], [ %i.qx, %bb.eg ], [ %i.ri, %bb.ek ], [ %i.rm, %bb.em ], [ %i.rk, %bb.el ]
  %i.rn = add i64 %.sroa.0.1.i94.i, %.sroa.028.0313.i ; 2 uses
  %.sroa.0.0.in.i98.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0312.i, i64 1
  %.sroa.0.0.i99.i = load i8, ptr %.sroa.0.0.in.i98.i, align 1, !range !21, !alias.scope !9802, !noalias !9803, !noundef !19 ; 2 uses
  switch i8 %.sroa.0.0.i99.i, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax8reparser13next_at_start.exit117.i [
    i8 9, label %bb.eu
    i8 7, label %.preheader.i102.i
    i8 2, label %bb.en
    i8 3, label %bb.en
    i8 4, label %bb.en
  ]

bb.en:                                            ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i
  br label %bb.eu

.preheader.i102.i:                                ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i, %bb.eq
  %.sroa.07.0.i103.i = phi ptr [ %i.rv, %bb.eq ], [ %.sroa.030.0312.i, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode3len.exit97.i ] ; 4 uses
  %i.ro = load i8, ptr %.sroa.07.0.i103.i, align 8, !range !30, !noalias !9803, !noundef !19
  switch i8 %i.ro, label %default.unreachable [
    i8 0, label %bb.eo
    i8 1, label %.loopexit.i104.i
    i8 2, label %bb.ep
    i8 3, label %bb.eq
  ]

bb.eo:                                            ; preds = %.preheader.i102.i
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i103.i, i64 8
  br label %.loopexit.i104.i

bb.ep:                                            ; preds = %.preheader.i102.i
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i103.i, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8, !noalias !9803, !nonnull !19, !noundef !19
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 32
  br label %.loopexit.i104.i

bb.eq:                                            ; preds = %.preheader.i102.i
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i103.i, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8, !noalias !9803, !nonnull !19, !noundef !19
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  br label %.preheader.i102.i

.loopexit.i104.i:                                 ; preds = %.preheader.i102.i, %bb.ep, %bb.eo
  %.sroa.04.0.i105.i = phi ptr [ %i.rp, %bb.eo ], [ %i.rs, %bb.ep ], [ @_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY, %.preheader.i102.i ] ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i105.i, i64 15
  %i.rx = load i8, ptr %i.rw, align 1, !alias.scope !9804, !noalias !9803, !noundef !19 ; 2 uses
  %.not.i.i106.i = icmp sgt i8 %i.rx, -1          ; 2 uses
  %i.ry = and i8 %i.rx, 127
  %i.rz = zext nneg i8 %i.ry to i64
  %i.sa = load ptr, ptr %.sroa.04.0.i105.i, align 8, !alias.scope !9804, !noalias !9803, !nonnull !19
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i105.i, i64 8
  %i.sc = load i64, ptr %i.sb, align 8, !alias.scope !9804, !noalias !9803
  %.sroa.3.0.i.i107.i = select i1 %.not.i.i106.i, i64 %i.sc, i64 %i.rz
  %.sroa.0.0.i.i108.i = select i1 %.not.i.i106.i, ptr %i.sa, ptr %.sroa.04.0.i105.i ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i108.i, i64 %.sroa.3.0.i.i107.i ; 4 uses
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i109.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i109.i: ; preds = %bb.et, %.loopexit.i104.i
  %i.se = phi ptr [ %i.tn, %bb.et ], [ %.sroa.0.0.i.i108.i, %.loopexit.i104.i ] ; 6 uses
  %.not.i.not.not.not.i.not.not.not.i110.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.se, %i.sd ; 2 uses
  br i1 %.not.i.not.not.not.i.not.not.not.i110.not.not.not.i.not.not.not.not.not, label %bb.er, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i111.i

bb.er:                                            ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i109.i
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 1 ; 3 uses
  %i.sg = load i8, ptr %i.se, align 1, !noalias !9805, !noundef !19 ; 5 uses
  %i.sh = icmp sgt i8 %i.sg, -1
  br i1 %i.sh, label %bb.es, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i112.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i112.i: ; preds = %bb.er
  %i.si = and i8 %i.sg, 31
  %i.sj = zext nneg i8 %i.si to i32               ; 3 uses
  %i.sk = icmp ne ptr %i.sf, %i.sd
  call void @llvm.assume(i1 %i.sk)
  %i.sl = getelementptr inbounds nuw i8, ptr %i.se, i64 2 ; 3 uses
  %i.sm = load i8, ptr %i.sf, align 1, !noalias !9805, !noundef !19
  %i.sn = shl nuw nsw i32 %i.sj, 6
  %i.so = and i8 %i.sm, 63
  %i.sp = zext nneg i8 %i.so to i32               ; 2 uses
  %i.sq = or disjoint i32 %i.sn, %i.sp
  %i.sr = icmp samesign ugt i8 %i.sg, -33
  br i1 %i.sr, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i114.i, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.ss = zext nneg i8 %i.sg to i32
  br label %bb.et

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i114.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i112.i
  %i.st = icmp ne ptr %i.sl, %i.sd
  call void @llvm.assume(i1 %i.st)
  %i.su = getelementptr inbounds nuw i8, ptr %i.se, i64 3 ; 3 uses
  %i.sv = load i8, ptr %i.sl, align 1, !noalias !9805, !noundef !19
  %i.sw = shl nuw nsw i32 %i.sp, 6
  %i.sx = and i8 %i.sv, 63
  %i.sy = zext nneg i8 %i.sx to i32
  %i.sz = or disjoint i32 %i.sw, %i.sy            ; 2 uses
  %i.ta = shl nuw nsw i32 %i.sj, 12
  %i.tb = or disjoint i32 %i.sz, %i.ta
  %i.tc = icmp samesign ugt i8 %i.sg, -17
  br i1 %i.tc, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i115.i, label %bb.et

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i115.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i114.i
  %i.td = icmp ne ptr %i.su, %i.sd
  call void @llvm.assume(i1 %i.td)
  %i.te = getelementptr inbounds nuw i8, ptr %i.se, i64 4
  %i.tf = load i8, ptr %i.su, align 1, !noalias !9805, !noundef !19
  %i.tg = shl nuw nsw i32 %i.sj, 18
  %i.th = and i32 %i.tg, 1835008
  %i.ti = shl nuw nsw i32 %i.sz, 6
  %i.tj = and i8 %i.tf, 63
  %i.tk = zext nneg i8 %i.tj to i32
  %i.tl = or disjoint i32 %i.ti, %i.tk
  %i.tm = or disjoint i32 %i.tl, %i.th
  br label %bb.et

bb.et:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i115.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i114.i, %bb.es, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i112.i
  %i.tn = phi ptr [ %i.su, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i114.i ], [ %i.te, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i115.i ], [ %i.sl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i112.i ], [ %i.sf, %bb.es ]
  %spec.select.i.ph.i.i113.i = phi i32 [ %i.tb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i114.i ], [ %i.tm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i115.i ], [ %i.sq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i112.i ], [ %i.ss, %bb.es ]
  switch i32 %spec.select.i.ph.i.i113.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0B1g_.exit.i.i109.i [
    i32 10, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i111.i
    i32 11, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i111.i
    i32 12, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i111.i
    i32 13, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i111.i
    i32 133, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i111.i
    i32 8232, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer10is_newlineE0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1V_.exit.i111.i
end_hunk_1
