Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSParserImpl?download=true
inline.NumInlined: 6237
inline.NumDeleted: 1653
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes6parser6detail12JSParserImpl19parseCallExpressionEN4llvh5SMLocEPNS_6ESTree4NodeES7_bb:bb.a
_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i: ; preds = %bb.r
  store ptr %i.bq, ptr %i.i, align 8, !tbaa !353
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i, %bb.r, %bb.q, %bb.p
  %i.br = load i8, ptr %i.o, align 2, !tbaa !359, !range !91, !noundef !87
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.s, label %_ZN6hermes6parser7JSLexer9SavePoint7restoreEv.exit, !prof !202

bb.s:                                             ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !360
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.at
  %i.bv = load ptr, ptr %i.k, align 8, !tbaa !360
  %i.bw = call ptr @_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr %i.bu, ptr %i.bv) ; 0 uses
  br label %_ZN6hermes6parser7JSLexer9SavePoint7restoreEv.exit

_ZN6hermes6parser7JSLexer9SavePoint7restoreEv.exit: ; preds = %bb.s, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i, %bb.k
  %.1 = phi ptr [ %i.bf, %bb.k ], [ null, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i ], [ null, %bb.s ]
  %.sroa.453.8.extract.trunc = trunc i64 %i.aw to i40
  store i40 %.sroa.453.8.extract.trunc, ptr %i.av, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZN6hermes6parser7JSLexer9SavePoint7restoreEv.exit, %bb.e, %bb.d, %bb.c
  %.2 = phi ptr [ %.0, %bb.d ], [ %.1, %_ZN6hermes6parser7JSLexer9SavePoint7restoreEv.exit ], [ null, %bb.e ], [ %.0, %bb.c ] ; 4 uses
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !138 ; 4 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !189 ; 4 uses
  switch i32 %i.by, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit [
    i32 53, label %bb.u
    i32 55, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread
  ]

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bz, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr %6, ptr %6, align 8, !tbaa !187
  store ptr %6, ptr %i.p, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr null, ptr %7, align 8, !tbaa !252
  %i.ca = load i32, ptr %i.q, align 8, !tbaa !264
  %i.cb = add i32 %i.ca, 1                        ; 2 uses
  store i32 %i.cb, ptr %i.q, align 8, !tbaa !264
  %i.cc = icmp ugt i32 %i.cb, 1023
  br i1 %i.cc, label %bb.v, label %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit, !prof !202

bb.v:                                             ; preds = %bb.u
  %i.cd = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl22recursionDepthExceededEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 0 uses
  br label %.critedge

_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit: ; preds = %bb.u
  %i.ce = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl14parseArgumentsERN4llvh12simple_ilistINS_6ESTree4NodeEJEEERNS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.cf = extractvalue { i64, i8 } %i.ce, 1
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.w, label %.critedge

bb.w:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %.sroa.014.0.copyload = load ptr, ptr %7, align 8, !tbaa !183
  %i.ch = load ptr, ptr %0, align 8, !tbaa !190, !nonnull !87, !align !88 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !191 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !197
  %i.cl = zext i32 %i.ck to i64
  %i.cm = load ptr, ptr %i.ch, align 8, !tbaa !198
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !200
  %i.cp = ptrtoint ptr %i.co to i64               ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !201 ; 2 uses
  %i.cs = add i64 %i.cp, 7
  %i.ct = add i64 %i.cs, %i.cr
  %i.cu = and i64 %i.ct, 7
  %.neg76 = add i64 %i.cr, 7
  %i.cv = sub i64 %.neg76, %i.cu                  ; 5 uses
  store i64 %i.cv, ptr %i.cq, align 8, !tbaa !201
  br i1 %i.s, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cw = add i64 %i.cv, 88                       ; 2 uses
  %i.cx = icmp ugt i64 %i.cw, 262144
  br i1 %i.cx, label %.critedge.i.i.i, label %bb.y, !prof !202

.critedge.i.i.i:                                  ; preds = %bb.x
  %i.cy = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ch, i64 noundef 88, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.y:                                             ; preds = %bb.x
  %i.cz = add i64 %i.cv, %i.cp
  %i.da = inttoptr i64 %i.cz to ptr
  store i64 %i.cw, ptr %i.cq, align 8, !tbaa !201
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.y
  %.0.i.i.i = phi ptr [ %i.cy, %.critedge.i.i.i ], [ %i.da, %bb.y ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 52, ptr %i.db, align 8, !tbaa !207
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dc, i8 0, i64 28, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %.063, ptr %i.dd, align 8, !tbaa !349
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr %.2, ptr %i.de, align 8, !tbaa !350
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64 ; 7 uses
  store ptr %i.df, ptr %i.df, align 8, !tbaa !187
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 72 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !188
  %i.dh = load ptr, ptr %i.p, align 8, !tbaa !188 ; 4 uses
  %i.di = icmp eq ptr %i.df, %6
  %i.dj = icmp eq ptr %i.dh, %6
  %or.cond.i.i.i.i.i.i = or i1 %i.di, %i.dj
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree26OptionalCallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEEb.exit, label %bb.z

bb.z:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.dk = load ptr, ptr %6, align 8, !tbaa !187   ; 2 uses
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !187 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %6, ptr %i.dm, align 8, !tbaa !188
  store ptr %i.dl, ptr %6, align 8, !tbaa !187
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.df, ptr %i.dn, align 8, !tbaa !188
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !187
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !188
  store ptr %i.dk, ptr %i.df, align 8, !tbaa !187
  br label %_ZN6hermes6ESTree26OptionalCallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEEb.exit

_ZN6hermes6ESTree26OptionalCallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEEb.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 80
  store i8 %i.r, ptr %i.do, align 8, !tbaa !351
  br label %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit

bb.aa:                                            ; preds = %bb.w
  %i.dp = add i64 %i.cv, 80                       ; 2 uses
  %i.dq = icmp ugt i64 %i.dp, 262144
  br i1 %i.dq, label %.critedge.i.i.i35, label %bb.ab, !prof !202

.critedge.i.i.i35:                                ; preds = %bb.aa
  %i.dr = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ch, i64 noundef 80, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit36

bb.ab:                                            ; preds = %bb.aa
  %i.ds = add i64 %i.cv, %i.cp
  %i.dt = inttoptr i64 %i.ds to ptr
  store i64 %i.dp, ptr %i.cq, align 8, !tbaa !201
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit36

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit36:  ; preds = %.critedge.i.i.i35, %bb.ab
  %.0.i.i.i34 = phi ptr [ %i.dr, %.critedge.i.i.i35 ], [ %i.dt, %bb.ab ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i34, i8 0, i64 16, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 16
  store i32 51, ptr %i.du, align 8, !tbaa !207
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dv, i8 0, i64 28, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 48
  store ptr %.063, ptr %i.dw, align 8, !tbaa !362
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 56
  store ptr %.2, ptr %i.dx, align 8, !tbaa !675
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 64 ; 7 uses
  store ptr %i.dy, ptr %i.dy, align 8, !tbaa !187
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 72 ; 2 uses
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !188
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !188 ; 4 uses
  %i.eb = icmp eq ptr %i.dy, %6
  %i.ec = icmp eq ptr %i.ea, %6
  %or.cond.i.i.i.i.i.i37 = or i1 %i.eb, %i.ec
  br i1 %or.cond.i.i.i.i.i.i37, label %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit36
  %i.ed = load ptr, ptr %6, align 8, !tbaa !187   ; 2 uses
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !187 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %6, ptr %i.ef, align 8, !tbaa !188
  store ptr %i.ee, ptr %6, align 8, !tbaa !187
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.dy, ptr %i.eg, align 8, !tbaa !188
  store ptr %i.dy, ptr %i.ea, align 8, !tbaa !187
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !188
  store ptr %i.ed, ptr %i.dy, align 8, !tbaa !187
  br label %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit

_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit: ; preds = %bb.ac, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit36, %_ZN6hermes6ESTree26OptionalCallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEEb.exit
  %.0.i.i.i34.sink102 = phi ptr [ %.0.i.i.i, %_ZN6hermes6ESTree26OptionalCallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEEb.exit ], [ %.0.i.i.i34, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit36 ], [ %.0.i.i.i34, %bb.ac ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i.i.i34.sink102, i64 24
  store ptr %1, ptr %i.eh, align 8, !tbaa !183
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.i.i34.sink102, i64 32
  store ptr %.sroa.014.0.copyload, ptr %i.ei, align 8, !tbaa !183
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.i.i34.sink102, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.ej, align 8, !tbaa !183
  %i.ek = load i32, ptr %i.q, align 8, !tbaa !264
  %i.el = add i32 %i.ek, -1
  store i32 %i.el, ptr %i.q, align 8, !tbaa !264
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.backedge

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit: ; preds = %bb.t
  %i.em = add i32 %i.by, -57
  %i.en = icmp ult i32 %i.em, 2
  br i1 %i.en, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread, label %bb.ad

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit, %bb.t
  %.lcssa = phi i32 [ %i.by, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit ], [ 55, %bb.t ]
  %i.eo = icmp eq i32 %.lcssa, 58
  %spec.select = select i1 %i.eo, i8 1, i8 %.027.ph ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.0.0.copyload.i38 = load ptr, ptr %i.ep, align 8, !tbaa !183
  %i.eq = trunc nuw i8 %spec.select to i1
  %i.er = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseMemberSelectEN4llvh5SMLocES4_PNS_6ESTree4NodeEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %1, ptr %.sroa.019.0.ph, ptr noundef %.063, i1 noundef zeroext %i.eq) ; 2 uses
  %i.es = extractvalue { i64, i8 } %i.er, 1
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %.thread, label %.loopexit

.thread:                                          ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread
  %i.eu = extractvalue { i64, i8 } %i.er, 0
  %i.ev = inttoptr i64 %i.eu to ptr
  br label %.outer, !llvm.loop !674

bb.ad:                                            ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit
  %i.ew = and i32 %i.by, -2
  %i.ex = icmp eq i32 %i.ew, 116
  br i1 %i.ex, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.0.0.copyload.i39 = load ptr, ptr %i.ey, align 8, !tbaa !183
  %i.ez = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseTemplateLiteralENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 8) ; 2 uses
  %i.fa = extractvalue { i64, i8 } %i.ez, 1
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.fc = extractvalue { i64, i8 } %i.ez, 0
  %i.fd = inttoptr i64 %i.fc to ptr               ; 2 uses
  %i.fe = load ptr, ptr %0, align 8, !tbaa !190, !nonnull !87, !align !88 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !191 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !197
  %i.fi = zext i32 %i.fh to i64
  %i.fj = load ptr, ptr %i.fe, align 8, !tbaa !198
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fi
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !200
  %i.fm = ptrtoint ptr %i.fl to i64               ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 3 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !201 ; 2 uses
  %i.fp = add i64 %i.fm, 7
  %i.fq = add i64 %i.fp, %i.fo
  %i.fr = and i64 %i.fq, 7
  %.neg79 = add i64 %i.fo, 7
  %i.fs = sub i64 %.neg79, %i.fr                  ; 3 uses
  store i64 %i.fs, ptr %i.fn, align 8, !tbaa !201
  %i.ft = add i64 %i.fs, 64                       ; 2 uses
  %i.fu = icmp ugt i64 %i.ft, 262144
  br i1 %i.fu, label %.critedge.i.i.i41, label %bb.ag, !prof !202

.critedge.i.i.i41:                                ; preds = %bb.af
  %i.fv = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.fe, i64 noundef 64, i64 noundef 8) #17
  br label %.thread69

bb.ag:                                            ; preds = %bb.af
  %i.fw = add i64 %i.fs, %i.fm
  %i.fx = inttoptr i64 %i.fw to ptr
  store i64 %i.ft, ptr %i.fn, align 8, !tbaa !201
  br label %.thread69

.thread69:                                        ; preds = %bb.ag, %.critedge.i.i.i41
  %.0.i.i.i40 = phi ptr [ %i.fv, %.critedge.i.i.i41 ], [ %i.fx, %bb.ag ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i40, i8 0, i64 16, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i.i.i40, i64 16
  store i32 74, ptr %i.fy, align 8, !tbaa !207
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i.i.i40, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fz, i8 0, i64 28, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i.i.i40, i64 48
  store ptr %.063, ptr %i.ga, align 8, !tbaa !345
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i.i.i40, i64 56
  store ptr %i.fd, ptr %i.gb, align 8, !tbaa !346
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i.i.i40, i64 24
  store ptr %1, ptr %i.gc, align 8, !tbaa !183
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.gd, align 8, !tbaa !183
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.i.i.i40, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ge, align 8, !tbaa !183
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i.i.i40, i64 40
  store ptr %.sroa.0.0.copyload.i39, ptr %i.gf, align 8, !tbaa !183
  br label %.backedge

.backedge:                                        ; preds = %.thread69, %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit
  %.063.be = phi ptr [ %.0.i.i.i40, %.thread69 ], [ %.0.i.i.i34.sink102, %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit ]
  %.0.be = phi ptr [ %.2, %.thread69 ], [ null, %_ZN6hermes6ESTree18CallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEE.exit ]
  br label %bb.b, !llvm.loop !674

bb.ah:                                            ; preds = %bb.ad
  %i.gg = ptrtoint ptr %.063 to i64
  br label %.loopexit

.critedge:                                        ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit, %bb.v
  %i.gh = load i32, ptr %i.q, align 8, !tbaa !264
  %i.gi = add i32 %i.gh, -1
  store i32 %i.gi, ptr %i.q, align 8, !tbaa !264
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread, %.critedge, %bb.ah
  %.sroa.062.0 = phi i64 [ undef, %.critedge ], [ %i.gg, %bb.ah ], [ undef, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread ], [ undef, %bb.ae ]
  %.sroa.2.5 = phi i8 [ 0, %.critedge ], [ 1, %bb.ah ], [ 0, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread ], [ 0, %bb.ae ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.062.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.5, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes6parser7JSLexer9SavePoint7restoreEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !365  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !366    ; 15 uses
  switch i32 %i.b, label %bb.d [
    i32 1, label %bb.b
    i32 38, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !367
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.09.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !183
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 1, ptr %i.i, align 8, !tbaa !189
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.e, ptr %i.j, align 8, !tbaa !215
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !183
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !183
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.o = getelementptr i8, ptr %i.c, i64 992
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !179
  store i32 38, ptr %i.n, align 8, !tbaa !189
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.p, ptr %i.q, align 8, !tbaa !215
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.03.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !183
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !183
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %i.b, ptr %i.u, align 8, !tbaa !189
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.06.0.copyload.sink = phi ptr [ %.sroa.06.0.copyload, %bb.c ], [ %.sroa.03.0.copyload, %bb.d ], [ %.sroa.09.0.copyload, %bb.b ]
  %i.v = phi <2 x ptr> [ %i.m, %bb.c ], [ %i.t, %bb.d ], [ %i.h, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store <2 x ptr> %i.v, ptr %i.w, align 8, !tbaa !183
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store ptr %.sroa.06.0.copyload.sink, ptr %i.x, align 8, !tbaa !253
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !183
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !183
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 49
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !358, !range !91, !noundef !87
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !368 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1112
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 1120 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !353 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !352 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 24
  %i.ao = icmp ult i64 %i.af, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds [24 x i8], ptr %i.aj, i64 %i.af ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.ai
  br i1 %.not.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i: ; preds = %bb.g
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !353
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i, %bb.g, %bb.f, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 50
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !359, !range !91, !noundef !87
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.h, label %bb.i, !prof !202

bb.h:                                             ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 1136 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvh8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S4_EEE4growEj:_ZN4llvh8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S4_EEE15allocateBucketsEj.exit
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !260
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !824

bb.b:                                             ; preds = %_ZN4llvh8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S4_EEE15allocateBucketsEj.exit
  %i.ab = zext i32 %i.c to i64
  %.idx = mul nuw nsw i64 %i.ab, 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !470
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !471
  %i.af = load i32, ptr %i.b, align 8, !tbaa !468 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %.idx.i.i = mul nuw nsw i64 %i.ag, 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i
  %.not5.i.i = icmp eq i32 %i.af, 0
  br i1 %.not5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.u, %bb.b ] ; 3 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i, align 8, !tbaa !183
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !260
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !824

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  %.not27.i = icmp eq i32 %i.c, 0
  br i1 %.not27.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E9initEmptyEv.exit.i, %bb.d
  %.028.i = phi ptr [ %i.aq, %bb.d ], [ %i.d, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E9initEmptyEv.exit.i ] ; 5 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %.028.i, align 8, !tbaa !183
  %switch.i = icmp ugt ptr %.sroa.05.0.copyload.i, inttoptr (i64 -3 to ptr)
  br i1 %switch.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.aj = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E15LookupBucketForIS2_EEbRKT_RPKSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %.028.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !466 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %.028.i, i64 16, i1 false), !tbaa.struct !469
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.028.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !179
  store ptr %i.an, ptr %i.al, align 8, !tbaa !179
  %i.ao = load i32, ptr %i.ad, align 8, !tbaa !470
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !470
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.028.i, i64 24 ; 2 uses
  %.not.i6 = icmp eq ptr %i.aq, %i.ac
  br i1 %.not.i6, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i, !llvm.loop !825

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E18moveFromOldBucketsEPSA_SD_.exit: ; preds = %bb.d, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E9initEmptyEv.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #17
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E9initEmptyEv.exit: ; preds = %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S7_SA_E18moveFromOldBucketsEPSA_SD_.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocENS2_7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464), i32 noundef, ptr, ptr, ptr, ptr noundef nonnull align 8 dereferenceable(18), i32 noundef) local_unnamed_addr #1

declare void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464), i32 noundef, ptr, ptr noundef nonnull align 8 dereferenceable(18), i32 noundef) local_unnamed_addr #1

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464), i32 noundef, ptr, ptr, ptr noundef nonnull align 8 dereferenceable(18), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl27checkMaybeFlowMatchSlowPathEv(ptr noundef nonnull align 8 dereferenceable(2824)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplINS_11SmallStringILj24EEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !141  ; 5 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !141  ; 4 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %.not = icmp ult i32 %i.f, %i.c
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not29 = icmp eq i32 %i.c, 0
  %i.h = load ptr, ptr %0, align 8, !tbaa !140    ; 3 uses
  br i1 %.not29, label %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !140
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ %i.ai, %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i ], [ %i.d, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0812.i.i.i.i.i = phi ptr [ %i.ah, %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ag, %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %i.j = icmp eq ptr %.0812.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %i.j, label %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !141  ; 6 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !141  ; 4 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ult i32 %i.o, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not29.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not29.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.r = load ptr, ptr %.0812.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %.not31.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 1
  br i1 %.not31.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g, !prof !202

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.q, i64 %i.m, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.q, align 1, !tbaa !214
  store i8 %i.s, ptr %i.r, align 1, !tbaa !214
  br label %.sink.split.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !142
  %i.v = icmp ult i32 %i.u, %i.l
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.n, align 8, !tbaa !141
  %i.w = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %.0812.i.i.i.i.i, ptr noundef nonnull %i.w, i64 noundef %i.m, i64 noundef 1) #17
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %.not28.i.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not28.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.y = load ptr, ptr %.0812.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %.not32.i.i.i.i.i.i.i.i = icmp eq i32 %i.o, 1
  br i1 %.not32.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m, !prof !202

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.x, i64 %i.p, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.z = load i8, ptr %i.x, align 1, !tbaa !214
  store i8 %i.z, ptr %i.y, align 1, !tbaa !214
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.022.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.p, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.k, align 8, !tbaa !141
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %.022.i.i.i.i.i.i.i.i, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i
  %i.ac = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !140
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.022.i.i.i.i.i.i.i.i
  %i.ae = load ptr, ptr %.0812.i.i.i.i.i, align 8, !tbaa !140
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.022.i.i.i.i.i.i.i.i
  %gepdiff.i.i.i.i.i.i.i.i = sub nsw i64 %i.ab, %.022.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.ad, i64 %gepdiff.i.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.o, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i, %bb.h, %bb.g, %bb.e
  store i32 %i.l, ptr %i.n, align 8, !tbaa !141
  br label %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i

_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 40 ; 2 uses
  %i.ai = add nsw i64 %.014.i.i.i.i.i, -1
  %2 = icmp samesign ugt i64 %.014.i.i.i.i.i, 1
  br i1 %2, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit.loopexit, !llvm.loop !826

_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !140
  %.pre58 = load i32, ptr %i.e, align 8, !tbaa !141
  %.pre59 = zext i32 %.pre58 to i64
  br label %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit

_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit: ; preds = %bb.c, %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit.loopexit
  %.pre-phi = phi i64 [ %.pre59, %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit.loopexit ], [ %i.g, %bb.c ]
  %i.aj = phi ptr [ %.pre, %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit.loopexit ], [ %i.h, %bb.c ]
  %.0 = phi ptr [ %i.ah, %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit.loopexit ], [ %i.h, %bb.c ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %.pre-phi ; 2 uses
  %.not4.i = icmp eq ptr %.0, %i.ak
  br i1 %.not4.i, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit, %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i
  %.05.i = phi ptr [ %i.al, %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i ], [ %i.ak, %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit ] ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.05.i, i64 -40 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !140 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.05.i, i64 -24
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  tail call void @free(ptr noundef %i.am) #17
  br label %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i

_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i:         ; preds = %bb.p, %.lr.ph.i
  %.not.i = icmp eq ptr %.0, %i.al
  br i1 %.not.i, label %.sink.split, label %.lr.ph.i, !llvm.loop !4

bb.q:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !142
  %i.ar = icmp ult i32 %i.aq, %i.c
  br i1 %i.ar, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.as = load ptr, ptr %0, align 8, !tbaa !140   ; 2 uses
  %.not4.i30 = icmp eq i32 %i.f, 0
  br i1 %.not4.i30, label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit35, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.r
  %.idx = mul nuw nsw i64 %i.g, 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i33
  %.05.i32 = phi ptr [ %i.au, %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i33 ], [ %i.at, %.lr.ph.i31.preheader ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.05.i32, i64 -40 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !140 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.05.i32, i64 -24
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i33, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i31
  tail call void @free(ptr noundef %i.av) #17
  br label %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i33

_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i33:       ; preds = %bb.s, %.lr.ph.i31
  %.not.i34 = icmp eq ptr %i.as, %i.au
  br i1 %.not.i34, label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit35, label %.lr.ph.i31, !llvm.loop !4

_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit35: ; preds = %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i33, %bb.r
  store i32 0, ptr %i.e, align 8, !tbaa !141
  tail call void @_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d)
  br label %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit53

bb.t:                                             ; preds = %bb.q
  %.not28 = icmp eq i32 %i.f, 0
  br i1 %.not28, label %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit53, label %.lr.ph.preheader.i.i.i.i.i37

.lr.ph.preheader.i.i.i.i.i37:                     ; preds = %bb.t
  %i.ay = load ptr, ptr %1, align 8, !tbaa !140
  %i.az = load ptr, ptr %0, align 8, !tbaa !140
  br label %.lr.ph.i.i.i.i.i38

.lr.ph.i.i.i.i.i38:                               ; preds = %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i46, %.lr.ph.preheader.i.i.i.i.i37
  %.014.i.i.i.i.i39 = phi i64 [ %i.bz, %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i46 ], [ %i.g, %.lr.ph.preheader.i.i.i.i.i37 ] ; 2 uses
  %.0812.i.i.i.i.i40 = phi ptr [ %i.by, %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i46 ], [ %i.az, %.lr.ph.preheader.i.i.i.i.i37 ] ; 9 uses
  %.0910.i.i.i.i.i41 = phi ptr [ %i.bx, %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i46 ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i37 ] ; 6 uses
  %i.ba = icmp eq ptr %.0812.i.i.i.i.i40, %.0910.i.i.i.i.i41
  br i1 %i.ba, label %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i46, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i38
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !141 ; 6 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i40, i64 8 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !141 ; 4 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i42 = icmp ult i32 %i.bf, %i.bc
  br i1 %.not.i.i.i.i.i.i.i.i42, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not29.i.i.i.i.i.i.i.i43 = icmp eq i32 %i.bc, 0
  br i1 %.not29.i.i.i.i.i.i.i.i43, label %.sink.split.i.i.i.i.i.i.i.i45, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = load ptr, ptr %.0910.i.i.i.i.i41, align 8, !tbaa !140 ; 2 uses
  %i.bi = load ptr, ptr %.0812.i.i.i.i.i40, align 8, !tbaa !140 ; 2 uses
  %.not31.i.i.i.i.i.i.i.i44 = icmp eq i32 %i.bc, 1
  br i1 %.not31.i.i.i.i.i.i.i.i44, label %bb.y, label %bb.x, !prof !202

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bh, i64 %i.bd, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i45

bb.y:                                             ; preds = %bb.w
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !214
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !214
  br label %.sink.split.i.i.i.i.i.i.i.i45

bb.z:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i40, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !142
  %i.bm = icmp ult i32 %i.bl, %i.bc
  br i1 %i.bm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.be, align 8, !tbaa !141
  %i.bn = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i40, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %.0812.i.i.i.i.i40, ptr noundef nonnull %i.bn, i64 noundef %i.bd, i64 noundef 1) #17
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i49

bb.ab:                                            ; preds = %bb.z
  %.not28.i.i.i.i.i.i.i.i47 = icmp eq i32 %i.bf, 0
  br i1 %.not28.i.i.i.i.i.i.i.i47, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i49, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = load ptr, ptr %.0910.i.i.i.i.i41, align 8, !tbaa !140 ; 2 uses
  %i.bp = load ptr, ptr %.0812.i.i.i.i.i40, align 8, !tbaa !140 ; 2 uses
  %.not32.i.i.i.i.i.i.i.i48 = icmp eq i32 %i.bf, 1
  br i1 %.not32.i.i.i.i.i.i.i.i48, label %bb.ae, label %bb.ad, !prof !202

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.bo, i64 %i.bg, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i49

bb.ae:                                            ; preds = %bb.ac
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !214
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !214
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i49

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i49: ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.aa
  %.022.i.i.i.i.i.i.i.i50 = phi i64 [ 0, %bb.aa ], [ 0, %bb.ab ], [ %i.bg, %bb.ad ], [ 1, %bb.ae ] ; 4 uses
  %i.br = load i32, ptr %i.bb, align 8, !tbaa !141
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i51 = icmp samesign eq i64 %.022.i.i.i.i.i.i.i.i50, %i.bs
  br i1 %.not.i.i.i.i.i.i.i.i.i51, label %.sink.split.i.i.i.i.i.i.i.i45, label %bb.af

bb.af:                                            ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i49
  %i.bt = load ptr, ptr %.0910.i.i.i.i.i41, align 8, !tbaa !140
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.022.i.i.i.i.i.i.i.i50
  %i.bv = load ptr, ptr %.0812.i.i.i.i.i40, align 8, !tbaa !140
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.022.i.i.i.i.i.i.i.i50
  %gepdiff.i.i.i.i.i.i.i.i52 = sub nsw i64 %i.bs, %.022.i.i.i.i.i.i.i.i50
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bu, i64 %gepdiff.i.i.i.i.i.i.i.i52, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i45

.sink.split.i.i.i.i.i.i.i.i45:                    ; preds = %bb.af, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i49, %bb.y, %bb.x, %bb.v
  store i32 %i.bc, ptr %i.be, align 8, !tbaa !141
  br label %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i46

_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i46: ; preds = %.sink.split.i.i.i.i.i.i.i.i45, %.lr.ph.i.i.i.i.i38
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i40, i64 40
  %i.bz = add nsw i64 %.014.i.i.i.i.i39, -1
  %3 = icmp samesign ugt i64 %.014.i.i.i.i.i39, 1
  br i1 %3, label %.lr.ph.i.i.i.i.i38, label %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit53, !llvm.loop !826

_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit53: ; preds = %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i46, %bb.t, %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit35
  %.022 = phi i64 [ 0, %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit35 ], [ 0, %bb.t ], [ %i.g, %_ZN4llvh11SmallStringILj24EEaSERKS1_.exit.i.i.i.i.i46 ] ; 3 uses
  %i.ca = load ptr, ptr %1, align 8, !tbaa !140   ; 2 uses
  %i.cb = load i32, ptr %i.b, align 8, !tbaa !141
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.ca, i64 %i.cc
  %.not9.i.i.i.i = icmp samesign eq i64 %.022, %i.cc
  br i1 %.not9.i.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit53
  %i.ce = load ptr, ptr %0, align 8, !tbaa !140
  %i.cf = getelementptr inbounds nuw [40 x i8], ptr %i.ce, i64 %.022
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %i.ca, i64 %.022
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN4llvh11SmallStringILj24EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cu, %_ZSt10_ConstructIN4llvh11SmallStringILj24EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.cf, %.lr.ph.i.i.i.i.preheader ] ; 8 uses
  %.0810.i.i.i.i = phi ptr [ %i.ct, %_ZSt10_ConstructIN4llvh11SmallStringILj24EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ch, ptr %.012.i.i.i.i, align 8, !tbaa !140
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  store i32 0, ptr %i.ci, align 8, !tbaa !141
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  store i32 24, ptr %i.cj, align 4, !tbaa !142
  %i.ck = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !141 ; 5 uses
  %.not.i.i.i.i.i.i.i.i54 = icmp eq i32 %i.cl, 0
  %i.cm = icmp eq ptr %.012.i.i.i.i, %.0810.i.i.i.i
  %or.cond.i.i.i.i.i.i.i = or i1 %i.cm, %.not.i.i.i.i.i.i.i.i54
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvh11SmallStringILj24EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cn = icmp ugt i32 %i.cl, 24
  br i1 %i.cn, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i56, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i56: ; preds = %bb.ag
  %i.co = zext i32 %i.cl to i64
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull %i.ch, i64 noundef %i.co, i64 noundef 1) #17
  %.pre.i.i.i.i.i.i.i = load i32, ptr %i.ck, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i57 = icmp eq i32 %.pre.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i57, label %.sink.split.i.i.i.i.i.i.i.i55, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i56
  %.pre.i.i.i.i.i.i = load ptr, ptr %.012.i.i.i.i, align 8, !tbaa !140
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i, %bb.ag
  %i.cp = phi ptr [ %.pre.i.i.i.i.i.i, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i ], [ %i.ch, %bb.ag ]
  %i.cq = phi i32 [ %.pre.i.i.i.i.i.i.i, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i ], [ %i.cl, %bb.ag ]
  %i.cr = zext i32 %i.cq to i64
  %i.cs = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !140
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cs, i64 %i.cr, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i55

.sink.split.i.i.i.i.i.i.i.i55:                    ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i56
  store i32 %i.cl, ptr %i.ci, align 8, !tbaa !141
  br label %_ZSt10_ConstructIN4llvh11SmallStringILj24EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4llvh11SmallStringILj24EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i55, %.lr.ph.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 40 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.ct, %i.cd
  br i1 %.not.i.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i, !llvm.loop !827

.sink.split:                                      ; preds = %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i, %_ZSt10_ConstructIN4llvh11SmallStringILj24EEEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit53, %_ZSt4copyIPKN4llvh11SmallStringILj24EEEPS2_ET0_T_S7_S6_.exit
  store i32 %i.c, ptr %i.e, align 8, !tbaa !141
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !142
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = or i64 %i.o, %i.n
  %i.q = add nuw nsw i64 %i.p, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %1) ; 2 uses
  %i.r = and i64 %.sroa.speculated, 4294967295    ; 3 uses
  %.not = icmp samesign ule i64 %i.r, %i.c
  %i.s = icmp ult i64 %i.r, %1
  %or.cond = or i1 %.not, %i.s
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.278, i1 noundef zeroext true) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = mul nuw nsw i64 %i.r, 40
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #21 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_ZN4llvh11safe_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.279, i1 noundef zeroext true) #17
  br label %_ZN4llvh11safe_mallocEm.exit

_ZN4llvh11safe_mallocEm.exit:                     ; preds = %bb.c, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !140    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !141  ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = mul nuw nsw i64 %i.z, 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not7.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh11safe_mallocEm.exit, %_ZSt10_ConstructIN4llvh11SmallStringILj24EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ai, %_ZSt10_ConstructIN4llvh11SmallStringILj24EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.u, %_ZN4llvh11safe_mallocEm.exit ] ; 6 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ah, %_ZSt10_ConstructIN4llvh11SmallStringILj24EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.w, %_ZN4llvh11safe_mallocEm.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store ptr %i.ab, ptr %.09.i.i.i.i, align 8, !tbaa !140
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !141
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 12
  store i32 24, ptr %i.ad, align 4, !tbaa !142
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !141
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvh11SmallStringILj24EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.08.i.i.i.i) ; 0 uses
  br label %_ZSt10_ConstructIN4llvh11SmallStringILj24EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4llvh11SmallStringILj24EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.aa
  br i1 %.not.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit: ; preds = %_ZSt10_ConstructIN4llvh11SmallStringILj24EEEJS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !140   ; 3 uses
  %.pre15 = load i32, ptr %i.x, align 8, !tbaa !141 ; 2 uses
  %.not4.i = icmp eq i32 %.pre15, 0
  br i1 %.not4.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit
  %i.aj = zext i32 %.pre15 to i64
  %.idx14 = mul nuw nsw i64 %i.aj, 40
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx14
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i
  %.05.i = phi ptr [ %i.al, %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i ], [ %i.ak, %.lr.ph.i.preheader ] ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.05.i, i64 -40 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !140 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.05.i, i64 -24
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @free(ptr noundef %i.am) #17
  br label %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i

_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i:         ; preds = %bb.f, %.lr.ph.i
  %.not.i = icmp eq ptr %.pre, %i.al
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit, label %.lr.ph.i, !llvm.loop !4

_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit: ; preds = %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !140
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit: ; preds = %_ZN4llvh11safe_mallocEm.exit, %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit, %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit
  %i.ap = phi ptr [ %.pre16, %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit ], [ %.pre, %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit ], [ %i.w, %_ZN4llvh11safe_mallocEm.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit
  tail call void @free(ptr noundef %i.ap) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit
  store ptr %i.u, ptr %0, align 8, !tbaa !140
  %i.as = trunc i64 %.sroa.speculated to i32
  store i32 %i.as, ptr %i.a, align 4, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
end_hunk_1
