Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ScalarEvolution?download=true
inline.NumInlined: 24488
inline.NumDeleted: 8078
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN4llvm15ScalarEvolution27isLoopBackedgeGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr.i, i64 48
  br label %_ZNK4llvm4SCEV7getTypeEv.exit

bb.n:                                             ; preds = %tailrecurse.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !141
  br label %tailrecurse.backedge.i

tailrecurse.backedge.i:                           ; preds = %bb.s, %bb.q, %bb.p, %bb.o, %bb.n
  %.tr.be.in.in.in.i = phi ptr [ %i.bi, %bb.n ], [ %i.bk, %bb.o ], [ %i.bm, %bb.p ], [ %i.bo, %bb.q ], [ %i.bq, %bb.s ]
  %.tr.be.in.in.i = load i64, ptr %.tr.be.in.in.in.i, align 8
  %.tr.be.in.i = and i64 %.tr.be.in.in.i, -8
  %.tr.be.i = inttoptr i64 %.tr.be.in.i to ptr
  br label %tailrecurse.i

bb.o:                                             ; preds = %tailrecurse.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !141
  br label %tailrecurse.backedge.i

bb.p:                                             ; preds = %tailrecurse.i, %tailrecurse.i, %tailrecurse.i, %tailrecurse.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !141
  br label %tailrecurse.backedge.i

bb.q:                                             ; preds = %tailrecurse.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !141
  br label %tailrecurse.backedge.i

bb.r:                                             ; preds = %tailrecurse.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr.i, i64 56
  br label %_ZNK4llvm4SCEV7getTypeEv.exit

bb.s:                                             ; preds = %tailrecurse.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr.i, i64 48
  br label %tailrecurse.backedge.i

bb.t:                                             ; preds = %tailrecurse.i
  %i.br = getelementptr inbounds i8, ptr %.tr.i, i64 -8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !232
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  br label %_ZNK4llvm4SCEV7getTypeEv.exit

bb.u:                                             ; preds = %tailrecurse.i
  unreachable

_ZNK4llvm4SCEV7getTypeEv.exit:                    ; preds = %bb.k, %bb.l, %bb.m, %bb.r, %bb.t
  %.0.in.i109 = phi ptr [ %i.be, %bb.k ], [ %i.bf, %bb.l ], [ %i.bg, %bb.m ], [ %i.bt, %bb.t ], [ %i.bp, %bb.r ]
  %.0.i110 = load ptr, ptr %.0.in.i109, align 8, !tbaa !234 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i110, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = and i32 %i.bv, 255
  %i.bx = icmp eq i32 %i.bw, 12
  br i1 %i.bx, label %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm4SCEV7getTypeEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !222, !nonnull !107, !align !223
  %i.ca = tail call noundef ptr @_ZNK4llvm10DataLayout12getIndexTypeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.bz, ptr noundef nonnull %.0.i110) #29, !inline_history !2
  br label %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit

_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit: ; preds = %_ZNK4llvm4SCEV7getTypeEv.exit, %bb.v
  %.0.i.i = phi ptr [ %i.ca, %bb.v ], [ %.0.i110, %_ZNK4llvm4SCEV7getTypeEv.exit ]
  %i.cb = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %.0.i.i, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true) #29, !inline_history !2
  %i.cc = tail call noundef ptr @_ZN4llvm15ScalarEvolution11getConstantEPNS_11ConstantIntE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef %i.cb), !inline_history !2
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = and i64 %i.cd, -7
  %i.cf = load i32, ptr %i.bu, align 8
  %i.cg = and i32 %i.cf, 255
  %i.ch = icmp eq i32 %i.cg, 12
  br i1 %i.ch, label %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit115, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !222, !nonnull !107, !align !223
  %i.ck = tail call noundef ptr @_ZNK4llvm10DataLayout12getIndexTypeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.cj, ptr noundef nonnull %.0.i110) #29, !inline_history !4
  br label %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit115

_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit115: ; preds = %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit, %bb.w
  %.0.i.i114 = phi ptr [ %i.ck, %bb.w ], [ %.0.i110, %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit ]
  %i.cl = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %.0.i.i114, i64 noundef 1, i1 noundef zeroext false, i1 noundef zeroext true) #29, !inline_history !4
  %i.cm = tail call noundef ptr @_ZN4llvm15ScalarEvolution11getConstantEPNS_11ConstantIntE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef %i.cl), !inline_history !4
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = and i64 %i.cn, -7
  %i.cp = tail call noundef ptr @_ZN4llvm15ScalarEvolution13getAddRecExprENS_8SCEVUseTIPKNS_4SCEVEEES5_PKNS_4LoopENS_15SCEVNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(1152) %0, i64 %i.ce, i64 %i.co, ptr noundef nonnull %1, i32 noundef 3)
  %i.cq = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution13isImpliedCondENS_12CmpPredicateEPKNS_4SCEVES4_S1_S4_S4_PKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152) %0, i64 %2, ptr noundef %3, ptr noundef %4, i64 36, ptr noundef %i.cp, ptr noundef nonnull %.0.i, ptr noundef null)
  br i1 %i.cq, label %select.unfold193, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit115, %_ZNK4llvm15ScalarEvolution17BackedgeTakenInfo8getExactEPKNS_10BasicBlockEPS0_PNS_15SmallVectorImplIPKNS_13SCEVPredicateEEE.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !371, !nonnull !107, !align !223 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 152
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !381, !range !106, !noundef !107
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %_ZN4llvm15AssumptionCache11assumptionsEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN4llvm15AssumptionCache12scanFunctionEv(ptr noundef nonnull align 8 dereferenceable(153) %i.cs) #29
  br label %_ZN4llvm15AssumptionCache11assumptionsEv.exit

_ZN4llvm15AssumptionCache11assumptionsEv.exit:    ; preds = %bb.x, %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !110 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !137 ; 2 uses
  %i.da = zext i32 %i.cz to i64
  %.idx = mul nuw nsw i64 %i.da, 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx
  %.not103209 = icmp eq i32 %i.cz, 0
  br i1 %.not103209, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15AssumptionCache11assumptionsEv.exit, %bb.ab
  %.094210 = phi ptr [ %i.dq, %bb.ab ], [ %i.cx, %_ZN4llvm15AssumptionCache11assumptionsEv.exit ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.094210, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !232 ; 4 uses
  %.not104 = icmp eq ptr %i.dd, null
  br i1 %.not104, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !288, !nonnull !107, !align !223
  %i.df = load ptr, ptr %i.w, align 8, !tbaa !426
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -24
  %i.dh = tail call noundef zeroext i1 @_ZNK4llvm13DominatorTree9dominatesEPKNS_5ValueEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(204) %i.de, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.dg) #29
  br i1 %i.dh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = and i32 %i.dj, 268435455
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds [32 x i8], ptr %i.dd, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !431
  %i.dp = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution13isImpliedCondENS_12CmpPredicateEPKNS_4SCEVES4_PKNS_5ValueEbPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152) %0, i64 %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.do, i1 noundef zeroext false, ptr noundef null)
  br i1 %i.dp, label %select.unfold193, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.aa, %bb.z
  %i.dq = getelementptr inbounds nuw i8, ptr %.094210, i64 24 ; 2 uses
  %.not103 = icmp eq ptr %i.dq, %i.db
  br i1 %.not103, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.ab, %_ZN4llvm15AssumptionCache11assumptionsEv.exit
  %i.dr = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull %i.v, i64 %2, ptr noundef %3, ptr noundef %4)
  br i1 %i.dr, label %select.unfold193, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !288, !nonnull !107, !align !223 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !423
  %i.dv = add i32 %i.du, 1                        ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !137 ; 2 uses
  %i.dy = icmp ugt i32 %i.dx, %i.dv
  br i1 %i.dy, label %bb.ad, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EEixEPKS1_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.dz = zext i32 %i.dv to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !110
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dz
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !425
  br label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EEixEPKS1_.exit

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EEixEPKS1_.exit: ; preds = %bb.ac, %bb.ad
  %i.ee = phi ptr [ %i.ed, %bb.ad ], [ null, %bb.ac ] ; 2 uses
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !309
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !311
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !423
  %i.ej = add i32 %i.ei, 1                        ; 2 uses
  %i.ek = icmp ugt i32 %i.dx, %i.ej
  br i1 %i.ek, label %bb.ae, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EEixEPKS1_.exit111

bb.ae:                                            ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EEixEPKS1_.exit
  %i.el = zext i32 %i.ej to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !110
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !425
  br label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EEixEPKS1_.exit111

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EEixEPKS1_.exit111: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EEixEPKS1_.exit, %bb.ae
  %i.eq = phi ptr [ %i.ep, %bb.ae ], [ null, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EEixEPKS1_.exit ] ; 2 uses
  %.not105216.not = icmp eq ptr %i.ee, %i.eq
  br i1 %.not105216.not, label %select.unfold193, label %.lr.ph219.a

.lr.ph219.a:                                      ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EEixEPKS1_.exit111
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph219.a, %bb.an
  %.085217 = phi ptr [ %i.ee, %.lr.ph219.a ], [ %i.ge, %bb.an ] ; 2 uses
  %i.es = load ptr, ptr %.085217, align 8, !tbaa !437 ; 4 uses
  %i.et = load i8, ptr %i.er, align 8, !tbaa !370, !range !106, !noundef !107
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ag, label %_ZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 48 ; 2 uses
  %.sroa.0175.0211 = load ptr, ptr %i.ev, align 8, !tbaa !314 ; 2 uses
  %.not199212 = icmp eq ptr %.sroa.0175.0211, %i.ew
  br i1 %.not199212, label %_ZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread, label %.lr.ph214

.lr.ph214:                                        ; preds = %bb.ag, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit.thread"
  %.sroa.0175.0213 = phi ptr [ %.sroa.0175.0, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit.thread" ], [ %.sroa.0175.0211, %bb.ag ] ; 4 uses
  %i.ex = getelementptr inbounds i8, ptr %.sroa.0175.0213, i64 -24 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !427
  %.not.i.i.i.i = icmp eq i8 %i.ey, 88
  br i1 %.not.i.i.i.i, label %bb.ah, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit.thread"

bb.ah:                                            ; preds = %.lr.ph214
  %i.ez = getelementptr inbounds i8, ptr %.sroa.0175.0213, i64 -56
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !431 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit.thread", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fb = load i8, ptr %i.fa, align 8, !tbaa !427
  %i.fc = icmp eq i8 %i.fb, 14
  br i1 %i.fc, label %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchIKNS_11InstructionEEEbPT_.exit.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit.thread"

_ZNK4llvm12PatternMatch17IntrinsicID_match5matchIKNS_11InstructionEEEbPT_.exit.i.i.i: ; preds = %bb.ai
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 36
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !442
  %i.ff = icmp eq i32 %i.fe, 162
  br i1 %i.ff, label %bb.aj, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit.thread"

bb.aj:                                            ; preds = %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchIKNS_11InstructionEEEbPT_.exit.i.i.i
  %i.fg = getelementptr inbounds i8, ptr %.sroa.0175.0213, i64 -20
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = and i32 %i.fh, 268435455
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = sub nsw i64 0, %i.fj
  %i.fl = getelementptr inbounds [32 x i8], ptr %i.ex, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !431 ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.not.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit.thread", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit": ; preds = %bb.aj
  %i.fn = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution13isImpliedCondENS_12CmpPredicateEPKNS_4SCEVES4_PKNS_5ValueEbPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152) %0, i64 %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.fm, i1 noundef zeroext false, ptr noundef null), !inline_history !1198
  br i1 %i.fn, label %select.unfold193, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit.thread"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit.thread": ; preds = %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchIKNS_11InstructionEEEbPT_.exit.i.i.i, %bb.aj, %.lr.ph214, %bb.ai, %bb.ah, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit"
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0175.0213, i64 8
  %.sroa.0175.0 = load ptr, ptr %i.fo, align 8, !tbaa !314 ; 2 uses
  %.not199 = icmp eq ptr %.sroa.0175.0, %i.ew
  br i1 %.not199, label %_ZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread, label %.lr.ph214, !llvm.loop !10

_ZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit.thread", %bb.ag, %bb.af
  %i.fp = tail call noundef ptr @_ZNK4llvm10BasicBlock20getSinglePredecessorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.es) #29 ; 2 uses
  %.not106 = icmp eq ptr %i.fp, null
  br i1 %.not106, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !426 ; 4 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -24
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !427
  %.not201 = icmp eq i8 %i.ft, 33
  br i1 %.not201, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fu = getelementptr inbounds i8, ptr %i.fr, i64 -88
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !431 ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fr, i64 -56
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !431
  %i.fy = icmp eq ptr %i.fv, %i.fx
  br i1 %i.fy, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fz = getelementptr inbounds i8, ptr %i.fr, i64 -120
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !431
  %i.gb = icmp ne ptr %i.es, %i.fv
  %i.gc = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution13isImpliedCondENS_12CmpPredicateEPKNS_4SCEVES4_PKNS_5ValueEbPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152) %0, i64 %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.ga, i1 noundef zeroext %i.gb, ptr noundef null)
  br i1 %i.gc, label %select.unfold193, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread, %bb.ak, %bb.am, %bb.al
  %i.gd = getelementptr inbounds nuw i8, ptr %.085217, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !443 ; 2 uses
  %.not105.not = icmp eq ptr %i.ge, %i.eq
  br i1 %.not105.not, label %select.unfold193, label %bb.af, !llvm.loop !1199

select.unfold193:                                 ; preds = %bb.aa, %bb.am, %bb.an, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit", %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EEixEPKS1_.exit111, %.critedge, %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit115
  %.11 = phi i1 [ true, %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit115 ], [ true, %.critedge ], [ true, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS2_10BasicBlockENS2_12CmpPredicateEPKNS2_4SCEVESA_E3$_0EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsINS2_11InstructionELb0ELb0EvLb1ES4_EELb0ELb1EEEEEbT_.exit" ], [ false, %bb.an ], [ false, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EEixEPKS1_.exit111 ], [ true, %bb.am ], [ true, %bb.aa ]
  store i8 0, ptr %i.ai, align 8, !tbaa !122
  br label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit.thread: ; preds = %bb.b, %bb.d, %bb.g, %bb.f, %select.unfold193, %bb.c, %bb.a, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit
  %.14 = phi i1 [ true, %bb.a ], [ true, %bb.c ], [ true, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE20isReachableFromEntryEPKS1_.exit ], [ false, %bb.d ], [ %.11, %select.unfold193 ], [ true, %bb.f ], [ false, %bb.g ], [ true, %bb.b ]
  ret i1 %.14
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm15ScalarEvolution23isKnownOnEveryIterationENS_12CmpPredicateEPKNS_14SCEVAddRecExprEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(1152) %0, i64 %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !141
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.sroa.0.0.copyload.i, -8        ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4llvm15ScalarEvolution24isLoopEntryGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %3 to i64
  %i.h = and i64 %i.g, -7
  %i.i = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution31isKnownViaNonRecursiveReasoningENS_12CmpPredicateENS_8SCEVUseTIPKNS_4SCEVEEES6_(ptr noundef nonnull align 8 dereferenceable(1152) %0, i64 %1, i64 %i.e, i64 %i.h), !inline_history !444
  br i1 %i.i, label %_ZN4llvm15ScalarEvolution24isLoopEntryGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread, label %_ZN4llvm15ScalarEvolution24isLoopEntryGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_.exit

_ZN4llvm15ScalarEvolution24isLoopEntryGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !309
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !311
  %i.m = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution30isBasicBlockEntryGuardedByCondEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef %i.l, i64 %1, ptr noundef %i.f, ptr noundef %3), !inline_history !444
  br i1 %i.m, label %_ZN4llvm15ScalarEvolution24isLoopEntryGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread, label %_ZN4llvm15ScalarEvolution24isLoopEntryGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread14

_ZN4llvm15ScalarEvolution24isLoopEntryGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread: ; preds = %bb.b, %_ZN4llvm15ScalarEvolution24isLoopEntryGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_.exit
  %i.n = tail call noundef ptr @_ZNK4llvm14SCEVAddRecExpr14getPostIncExprERNS_15ScalarEvolutionE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(1152) %0)
  %i.o = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution27isLoopBackedgeGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull %i.b, i64 %1, ptr noundef %i.n, ptr noundef %3)
  br label %_ZN4llvm15ScalarEvolution24isLoopEntryGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread14

_ZN4llvm15ScalarEvolution24isLoopEntryGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread14: ; preds = %bb.a, %_ZN4llvm15ScalarEvolution24isLoopEntryGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread, %_ZN4llvm15ScalarEvolution24isLoopEntryGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_.exit
  %i.p = phi i1 [ false, %_ZN4llvm15ScalarEvolution24isLoopEntryGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_.exit ], [ %i.o, %_ZN4llvm15ScalarEvolution24isLoopEntryGuardedByCondEPKNS_4LoopENS_12CmpPredicateEPKNS_4SCEVES7_.exit.thread ], [ false, %bb.a ]
  ret i1 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL30extractConstantWithoutWrappingRN4llvm15ScalarEvolutionERKNS_5APIntEPKNS_4SCEVE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1152) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !277  ; 4 uses
  %i.c = tail call noundef i32 @_ZN4llvm15ScalarEvolution19getMinTrailingZerosEPKNS_4SCEVEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152) %1, ptr noundef %3, ptr noundef null) ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %i.c, %i.b
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  store i32 %i.f, ptr %i.e, align 8, !tbaa !277
  %i.g = icmp ult i32 %i.f, 65
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %2, align 8, !tbaa !121
  store i64 %i.h, ptr %0, align 8, !tbaa !121
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %2) #29
  br label %.critedge

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %i.c) #29
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.b) #29
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !277
  %i.k = icmp ugt i32 %i.j, 64
  br i1 %i.k, label %bb.g, label %_ZN4llvm5APIntD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %4, align 8, !tbaa !121    ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN4llvm5APIntD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.l) #32
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %.critedge

bb.i:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.n, align 8, !tbaa !277
  %i.o = icmp ult i32 %i.b, 65
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %0, align 8, !tbaa !121
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef 0, i1 noundef zeroext false) #29
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e, %bb.k, %bb.j, %_ZN4llvm5APIntD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm5APIntneEm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #30
  %i.e = sub i32 %i.b, %i.d
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %bb.b, label %_ZNK4llvm5APInteqEm.exit

bb.b:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i, %bb.a
  %i.g = load ptr, ptr %0, align 8
  %spec.select.i.i = select i1 %i.c, ptr %0, ptr %i.g
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !121
  %i.h = icmp ne i64 %.0.i.i, %1
  br label %_ZNK4llvm5APInteqEm.exit

_ZNK4llvm5APInteqEm.exit:                         ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i, %bb.b
  %i.i = phi i1 [ true, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm15ScalarEvolution25proveNoWrapByVaryingStartINS_18SCEVZeroExtendExprEEEbPKNS_4SCEVES5_PKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 11 uses
  %7 = alloca %"class.llvm::CmpPredicate", align 8 ; 8 uses
  %8 = alloca %"struct.llvm::SCEVUseT", align 8   ; 8 uses
  %9 = alloca %"struct.llvm::SCEVUseT", align 8   ; 8 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %12 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %13 = alloca %"class.llvm::FoldingSetNodeID", align 8 ; 18 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i16, ptr %i.c, align 8, !tbaa !135
  %i.e = icmp ne i16 %i.d, 0
  %.not64 = icmp eq ptr %1, null
  %.not = or i1 %.not64, %i.e
  br i1 %.not, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !226  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !277  ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !277
  %i.l = icmp ult i32 %i.k, 65
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.h, align 8, !tbaa !121
  store i64 %i.m, ptr %10, align 8, !tbaa !121
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %i.h) #29
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store <4 x i32> <i32 -2, i32 -1, i32 1, i32 2>, ptr %i.a, align 16, !tbaa !271
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 3 uses
  %i.s = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = lshr i64 %i.s, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = lshr i64 %i.w, 32
  %i.z = trunc nuw i64 %i.y to i32                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 680
end_hunk_0
begin_hunk_1_@"_ZZN4llvm15ScalarEvolution29isKnownPredicateViaNoOverflowENS_12CmpPredicateENS_8SCEVUseTIPKNS_4SCEVEEES6_ENK3$_0clES6_S6_RNS_5APIntES9_NS_15SCEVNoWrapFlagsE":bb.a
  %i.bl = and i64 %.sroa.0.0.copyload.i15.i.i.i17, -8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !144
  %i.bo = and i16 %i.bn, 7
  %i.bp = zext nneg i16 %i.bo to i32
  %i.bq = and i32 %5, %i.bp
  %i.br = icmp eq i32 %i.bq, %5
  br label %bb.ad

tailrecurse.i20:                                  ; preds = %tailrecurse.i20.preheader, %tailrecurse.backedge.i24
  %i.bs = phi i16 [ %.pre83, %tailrecurse.backedge.i24 ], [ %i.bd, %tailrecurse.i20.preheader ]
  %.tr.i21 = phi ptr [ %.tr.be.i28, %tailrecurse.backedge.i24 ], [ %i.bb, %tailrecurse.i20.preheader ] ; 10 uses
  switch i16 %i.bs, label %bb.ab [
    i16 0, label %bb.r
    i16 1, label %bb.s
    i16 14, label %bb.t
    i16 15, label %bb.t
    i16 2, label %bb.t
    i16 3, label %bb.t
    i16 4, label %bb.t
    i16 8, label %bb.u
    i16 6, label %bb.v
    i16 9, label %bb.w
    i16 10, label %bb.w
    i16 11, label %bb.w
    i16 12, label %bb.w
    i16 13, label %bb.x
    i16 5, label %bb.y
    i16 7, label %bb.z
    i16 16, label %bb.aa
  ]

bb.r:                                             ; preds = %tailrecurse.i20
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr.i21, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !226
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  br label %_ZNK4llvm4SCEV7getTypeEv.exit29

bb.s:                                             ; preds = %tailrecurse.i20
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr.i21, i64 40
  br label %_ZNK4llvm4SCEV7getTypeEv.exit29

bb.t:                                             ; preds = %tailrecurse.i20, %tailrecurse.i20, %tailrecurse.i20, %tailrecurse.i20, %tailrecurse.i20
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr.i21, i64 48
  br label %_ZNK4llvm4SCEV7getTypeEv.exit29

bb.u:                                             ; preds = %tailrecurse.i20
  %i.by = getelementptr inbounds nuw i8, ptr %.tr.i21, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !141
  br label %tailrecurse.backedge.i24

tailrecurse.backedge.i24:                         ; preds = %bb.z, %bb.x, %bb.w, %bb.v, %bb.u
  %.tr.be.in.in.in.i25 = phi ptr [ %i.bz, %bb.u ], [ %i.cb, %bb.v ], [ %i.cd, %bb.w ], [ %i.cf, %bb.x ], [ %i.ch, %bb.z ]
  %.tr.be.in.in.i26 = load i64, ptr %.tr.be.in.in.in.i25, align 8
  %.tr.be.in.i27 = and i64 %.tr.be.in.in.i26, -8
  %.tr.be.i28 = inttoptr i64 %.tr.be.in.i27 to ptr ; 2 uses
  %.phi.trans.insert82 = getelementptr inbounds nuw i8, ptr %.tr.be.i28, i64 24
  %.pre83 = load i16, ptr %.phi.trans.insert82, align 8, !tbaa !135
  br label %tailrecurse.i20

bb.v:                                             ; preds = %tailrecurse.i20
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr.i21, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !141
  br label %tailrecurse.backedge.i24

bb.w:                                             ; preds = %tailrecurse.i20, %tailrecurse.i20, %tailrecurse.i20, %tailrecurse.i20
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr.i21, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !141
  br label %tailrecurse.backedge.i24

bb.x:                                             ; preds = %tailrecurse.i20
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr.i21, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !141
  br label %tailrecurse.backedge.i24

bb.y:                                             ; preds = %tailrecurse.i20
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr.i21, i64 56
  br label %_ZNK4llvm4SCEV7getTypeEv.exit29

bb.z:                                             ; preds = %tailrecurse.i20
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr.i21, i64 48
  br label %tailrecurse.backedge.i24

bb.aa:                                            ; preds = %tailrecurse.i20
  %i.ci = getelementptr inbounds i8, ptr %.tr.i21, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !232
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  br label %_ZNK4llvm4SCEV7getTypeEv.exit29

bb.ab:                                            ; preds = %tailrecurse.i20
  unreachable

_ZNK4llvm4SCEV7getTypeEv.exit29:                  ; preds = %bb.r, %bb.s, %bb.t, %bb.y, %bb.aa
  %.0.in.i22 = phi ptr [ %i.bv, %bb.r ], [ %i.bw, %bb.s ], [ %i.bx, %bb.t ], [ %i.ck, %bb.aa ], [ %i.cg, %bb.y ]
  %.0.i23 = load ptr, ptr %.0.in.i22, align 8, !tbaa !234 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i23, i64 8
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = and i32 %i.cm, 255
  %i.co = icmp eq i32 %i.cn, 12
  br i1 %i.co, label %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit35, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4llvm4SCEV7getTypeEv.exit29
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !222, !nonnull !107, !align !223
  %i.cr = tail call noundef ptr @_ZNK4llvm10DataLayout12getIndexTypeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.cq, ptr noundef nonnull %.0.i23) #29, !inline_history !2
  br label %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit35

_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit35: ; preds = %_ZNK4llvm4SCEV7getTypeEv.exit29, %bb.ac
  %.0.i.i34 = phi ptr [ %i.cr, %bb.ac ], [ %.0.i23, %_ZNK4llvm4SCEV7getTypeEv.exit29 ]
  %i.cs = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %.0.i.i34, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true) #29, !inline_history !2
  %i.ct = tail call noundef ptr @_ZN4llvm15ScalarEvolution11getConstantEPNS_11ConstantIntE(ptr noundef nonnull align 8 dereferenceable(1152) %i.a, ptr noundef %i.cs), !inline_history !2
  %i.cu = ptrtoint ptr %i.ct to i64
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm15ScalarEvolution14splitBinaryAddENS_8SCEVUseTIPKNS_4SCEVEEERS5_S6_RNS_15SCEVNoWrapFlagsE.exit18, %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit35
  %.sroa.040.0 = phi i64 [ %i.bl, %_ZN4llvm15ScalarEvolution14splitBinaryAddENS_8SCEVUseTIPKNS_4SCEVEEERS5_S6_RNS_15SCEVNoWrapFlagsE.exit18 ], [ %2, %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit35 ]
  %.sroa.038.0.in = phi i64 [ %.sroa.0.0.copyload.i.i.i.i16, %_ZN4llvm15ScalarEvolution14splitBinaryAddENS_8SCEVUseTIPKNS_4SCEVEEERS5_S6_RNS_15SCEVNoWrapFlagsE.exit18 ], [ %i.cu, %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit35 ]
  %.050 = phi i1 [ %i.br, %_ZN4llvm15ScalarEvolution14splitBinaryAddENS_8SCEVUseTIPKNS_4SCEVEEERS5_S6_RNS_15SCEVNoWrapFlagsE.exit18 ], [ true, %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit35 ]
  %.not60 = icmp eq i64 %.sroa.040.0, %.sroa.043.0
  br i1 %.not60, label %bb.ae, label %_ZN4llvm5APIntaSERKS0_.exit33

bb.ae:                                            ; preds = %bb.ad
  %.sroa.038.0 = and i64 %.sroa.038.0.in, -8
  %i.cv = inttoptr i64 %.sroa.038.0 to ptr        ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load i16, ptr %i.cw, align 8, !tbaa !135
  %i.cy = icmp eq i16 %i.cx, 0
  %or.cond = select i1 %i.cy, i1 %.050, i1 false
  %.not12 = icmp eq i32 %5, 2
  %or.cond59 = select i1 %.not12, i1 true, i1 %.051
  %or.cond61 = select i1 %or.cond, i1 %or.cond59, i1 false
  br i1 %or.cond61, label %bb.af, label %_ZN4llvm5APIntaSERKS0_.exit33

bb.af:                                            ; preds = %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !226 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !277
  %i.de = icmp ult i32 %i.dd, 65
  br i1 %i.de, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !277
  %i.dh = icmp ult i32 %i.dg, 65
  br i1 %i.dh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.di = load i64, ptr %i.db, align 8, !tbaa !121
  store i64 %i.di, ptr %3, align 8, !tbaa !121
  %i.dj = load i32, ptr %i.df, align 8, !tbaa !277
  store i32 %i.dj, ptr %i.dc, align 8, !tbaa !277
  br label %_ZN4llvm5APIntaSERKS0_.exit

bb.ai:                                            ; preds = %bb.ag, %bb.af
  tail call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.db) #29
  br label %_ZN4llvm5APIntaSERKS0_.exit

_ZN4llvm5APIntaSERKS0_.exit:                      ; preds = %bb.ah, %bb.ai
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !226 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !277
  %i.dp = icmp ult i32 %i.do, 65
  br i1 %i.dp, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %_ZN4llvm5APIntaSERKS0_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !277
  %i.ds = icmp ult i32 %i.dr, 65
  br i1 %i.ds, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dt = load i64, ptr %i.dm, align 8, !tbaa !121
  store i64 %i.dt, ptr %4, align 8, !tbaa !121
  %i.du = load i32, ptr %i.dq, align 8, !tbaa !277
  store i32 %i.du, ptr %i.dn, align 8, !tbaa !277
  br label %_ZN4llvm5APIntaSERKS0_.exit33

bb.al:                                            ; preds = %bb.aj, %_ZN4llvm5APIntaSERKS0_.exit
  tail call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.dm) #29
  br label %_ZN4llvm5APIntaSERKS0_.exit33

_ZN4llvm5APIntaSERKS0_.exit33:                    ; preds = %bb.al, %bb.ak, %bb.ae, %bb.ad, %bb.o
  %.0 = phi i1 [ false, %bb.o ], [ false, %bb.ae ], [ true, %bb.al ], [ true, %bb.ak ], [ false, %bb.ad ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr nofree noundef readonly captures(address) %1, i64 %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !370, !range !106, !noundef !107
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %"_ZSt7find_ifIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEEZNS0_15ScalarEvolution17isImpliedViaGuardEPKS5_NS0_12CmpPredicateEPKNS0_4SCEVESE_E3$_0ET_SG_SG_T0_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.061.074 = load ptr, ptr %i.d, align 8, !tbaa !314 ; 2 uses
  %.not75 = icmp eq ptr %.sroa.061.074, %i.e
  br i1 %.not75, label %"_ZSt7find_ifIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEEZNS0_15ScalarEvolution17isImpliedViaGuardEPKS5_NS0_12CmpPredicateEPKNS0_4SCEVESE_E3$_0ET_SG_SG_T0_.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit.thread"
  %.sroa.061.076 = phi ptr [ %.sroa.061.0, %"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit.thread" ], [ %.sroa.061.074, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.061.076, i64 -24 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !427
  %.not.i.i.i.i = icmp eq i8 %i.g, 88
  br i1 %.not.i.i.i.i, label %bb.c, label %"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit.thread"

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds i8, ptr %.sroa.061.076, i64 -56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !431  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.i, align 8, !tbaa !427
  %i.k = icmp eq i8 %i.j, 14
  br i1 %i.k, label %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchIKNS_11InstructionEEEbPT_.exit.i.i.i, label %"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit.thread"

_ZNK4llvm12PatternMatch17IntrinsicID_match5matchIKNS_11InstructionEEEbPT_.exit.i.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !442
  %i.n = icmp eq i32 %i.m, 162
  br i1 %i.n, label %bb.e, label %"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit.thread"

bb.e:                                             ; preds = %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchIKNS_11InstructionEEEbPT_.exit.i.i.i
  %i.o = getelementptr inbounds i8, ptr %.sroa.061.076, i64 -20
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 268435455
  %i.r = zext nneg i32 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [32 x i8], ptr %i.f, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !431  ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.not.i.i.i.i.i, label %"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit.thread", label %"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit"

"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit": ; preds = %bb.e
  %i.v = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution13isImpliedCondENS_12CmpPredicateEPKNS_4SCEVES4_PKNS_5ValueEbPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152) %0, i64 %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.u, i1 noundef zeroext false, ptr noundef null), !inline_history !2834
  br i1 %i.v, label %"_ZSt7find_ifIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEEZNS0_15ScalarEvolution17isImpliedViaGuardEPKS5_NS0_12CmpPredicateEPKNS0_4SCEVESE_E3$_0ET_SG_SG_T0_.exit", label %"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit.thread"

"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit.thread": ; preds = %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchIKNS_11InstructionEEEbPT_.exit.i.i.i, %bb.e, %.lr.ph, %bb.d, %bb.c, %"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit"
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.061.076, i64 8
  %.sroa.061.0 = load ptr, ptr %i.w, align 8, !tbaa !314 ; 2 uses
  %.not = icmp eq ptr %.sroa.061.0, %i.e
  br i1 %.not, label %"_ZSt7find_ifIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEEZNS0_15ScalarEvolution17isImpliedViaGuardEPKS5_NS0_12CmpPredicateEPKNS0_4SCEVESE_E3$_0ET_SG_SG_T0_.exit", label %.lr.ph, !llvm.loop !10

"_ZSt7find_ifIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb1EEEZNS0_15ScalarEvolution17isImpliedViaGuardEPKS5_NS0_12CmpPredicateEPKNS0_4SCEVESE_E3$_0ET_SG_SG_T0_.exit": ; preds = %"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit.thread", %"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit", %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit.thread" ], [ true, %"_ZZN4llvm15ScalarEvolution17isImpliedViaGuardEPKNS_10BasicBlockENS_12CmpPredicateEPKNS_4SCEVES7_ENK3$_0clERKNS_11InstructionE.exit" ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm15ScalarEvolution13isImpliedCondENS_12CmpPredicateEPKNS_4SCEVES4_PKNS_5ValueEbPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152) %0, i64 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !454, !nonnull !107, !align !223
  %i.d = tail call noundef ptr @_ZN4llvm11ConstantInt7getBoolERNS_11LLVMContextEb(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i1 noundef zeroext %5) #29
  %i.e = icmp eq ptr %4, %i.d
  br i1 %i.e, label %"_ZN4llvm10scope_exitIZNS_15ScalarEvolution13isImpliedCondENS_12CmpPredicateEPKNS_4SCEVES5_PKNS_5ValueEbPKNS_11InstructionEE3$_0ED2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !105, !range !106, !noalias !2849, !noundef !107
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !108, !noalias !2849 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !285, !noalias !2849 ; 4 uses
  %i.m = zext i32 %i.l to i64
  %.idx.i.i = shl nuw nsw i64 %i.m, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.l, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.p, %.critedge.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.o = load ptr, ptr %.023.i.i, align 8, !tbaa !256, !noalias !2849
  %.not15.i.i = icmp eq ptr %i.o, %4
  br i1 %.not15.i.i, label %"_ZN4llvm10scope_exitIZNS_15ScalarEvolution13isImpliedCondENS_12CmpPredicateEPKNS_4SCEVES5_PKNS_5ValueEbPKNS_11InstructionEE3$_0ED2Ev.exit", label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load i32, ptr %i.q, align 8, !tbaa !286, !noalias !2849
  %i.s = icmp ult i32 %i.l, %i.r
  br i1 %i.s, label %.critedge, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

.critedge:                                        ; preds = %._crit_edge.i.i
  %i.t = add nuw i32 %i.l, 1
  store i32 %i.t, ptr %i.k, align 4, !tbaa !285, !noalias !2849
  store ptr %4, ptr %i.n, align 8, !tbaa !256, !noalias !2849
  br label %bb.d

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %bb.b
  %i.u = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.f, ptr noundef %4) #29, !noalias !2849
  %i.v = extractvalue { ptr, i8 } %i.u, 1
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %"_ZN4llvm10scope_exitIZNS_15ScalarEvolution13isImpliedCondENS_12CmpPredicateEPKNS_4SCEVES5_PKNS_5ValueEbPKNS_11InstructionEE3$_0ED2Ev.exit"

bb.d:                                             ; preds = %.critedge, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i
  %i.x = load i8, ptr %4, align 8, !tbaa !427     ; 4 uses
  %i.y = icmp ult i8 %i.x, 30
  br i1 %i.y, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !282  ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.ac = and i32 %i.ab, 254
  %spec.select.i.i.i.i.i = icmp eq i32 %i.ac, 18  ; 2 uses
  br i1 %spec.select.i.i.i.i.i, label %bb.f, label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !239
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !234
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i

_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i:    ; preds = %bb.f, %bb.e
  %i.ag = phi i32 [ %.pre.i.i.i, %bb.f ], [ %i.ab, %bb.e ]
  %i.ah = icmp eq i32 %i.ag, 268
  br i1 %i.ah, label %bb.g, label %bb.r

bb.g:                                             ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i
  switch i8 %i.x, label %bb.r [
    i8 59, label %bb.h
    i8 89, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 1073741824
  %.not.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds i8, ptr %4, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !477
  br label %_ZNK4llvm4User10getOperandEj.exit37.i.i

bb.j:                                             ; preds = %bb.h
  %i.an = and i32 %i.aj, 268435455
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds [32 x i8], ptr %4, i64 %i.ap
  br label %_ZNK4llvm4User10getOperandEj.exit37.i.i

_ZNK4llvm4User10getOperandEj.exit37.i.i:          ; preds = %bb.j, %bb.i
  %.in.i.i = phi ptr [ %i.am, %bb.i ], [ %i.aq, %bb.j ] ; 2 uses
  %i.ar = load ptr, ptr %.in.i.i, align 8, !tbaa !431 ; 2 uses
  %.not.i.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.not.i.i, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit37.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.in.i.i, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !431 ; 2 uses
  %.not.i38.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i38.not.i.i, label %bb.r, label %bb.o

bb.l:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds i8, ptr %4, i64 -96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !431 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %4, i64 -64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !431 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !282
  %.not33.i.i = icmp eq ptr %i.az, %i.z
  br i1 %.not33.i.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds i8, ptr %4, i64 -32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !431 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !427
  %i.bd = icmp ugt i8 %i.bc, 22
  br i1 %i.bd, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp sgt i8 %i.bf, -1
  %.not.i43.not.i.i = icmp eq ptr %i.ax, null
  %or.cond = select i1 %i.bg, i1 true, i1 %.not.i43.not.i.i
  br i1 %or.cond, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.0 = phi ptr [ %i.ar, %bb.k ], [ %i.av, %bb.n ]
  %.sink.i.i = phi ptr [ %i.at, %bb.k ], [ %i.ax, %bb.n ]
  br i1 %5, label %.thread103, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution13isImpliedCondENS_12CmpPredicateEPKNS_4SCEVES4_PKNS_5ValueEbPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152) %0, i64 %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %.0, i1 noundef zeroext false, ptr noundef %6)
  br i1 %i.bh, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution13isImpliedCondENS_12CmpPredicateEPKNS_4SCEVES4_PKNS_5ValueEbPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(1152) %0, i64 %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %.sink.i.i, i1 noundef zeroext false, ptr noundef %6)
  br label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread.thread

bb.r:                                             ; preds = %bb.m, %_ZNK4llvm4User10getOperandEj.exit37.i.i, %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i, %bb.k, %bb.n, %bb.l, %bb.g
  br i1 %spec.select.i.i.i.i.i, label %bb.s, label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i51

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !239
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !234
  %.phi.trans.insert.i.i.i62 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.pre.i.i.i63 = load i32, ptr %.phi.trans.insert.i.i.i62, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i51

_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i51:  ; preds = %bb.s, %bb.r
  %i.bm = phi i32 [ %.pre.i.i.i63, %bb.s ], [ %i.ab, %bb.r ]
  %i.bn = icmp eq i32 %i.bm, 268
  br i1 %i.bn, label %bb.t, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread

bb.t:                                             ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i51
  switch i8 %i.x, label %_ZN4llvm12PatternMatch5matchIKNS_5ValueENS0_15LogicalOp_matchINS_19PatternMatchHelpers10match_bindIS3_EES7_Lj30ELb0EEEEEbPT_RKT0_.exit.thread [
    i8 60, label %bb.u
    i8 89, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = and i32 %i.bp, 1073741824
  %.not.i.i.i.i57 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i57, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds i8, ptr %4, i64 -8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !477
  br label %_ZNK4llvm4User10getOperandEj.exit37.i.i58

bb.w:                                             ; preds = %bb.u
  %i.bt = and i32 %i.bp, 268435455
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr inbounds [32 x i8], ptr %4, i64 %i.bv
  br label %_ZNK4llvm4User10getOperandEj.exit37.i.i58
end_hunk_1
