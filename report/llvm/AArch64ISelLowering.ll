Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelLowering?download=true
inline.NumInlined: 31494
inline.NumDeleted: 6083
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 174
begin_hunk_0_@_ZNK4llvm21AArch64TargetLowering19LowerVECTOR_SHUFFLEENS_7SDValueERNS_12SelectionDAGE:bb.a

vector.body1218:                                  ; preds = %vector.body1218, %vector.ph1216
  %index1219 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1221, %vector.body1218 ] ; 2 uses
  %i.oi = shl i64 %index1219, 2
  %next.gep1220 = getelementptr i8, ptr %i.kj, i64 %i.oi ; 2 uses
  %i.oj = getelementptr i8, ptr %next.gep1220, i64 16
  store <4 x i32> splat (i32 -1), ptr %next.gep1220, align 8, !tbaa !337
  store <4 x i32> splat (i32 -1), ptr %i.oj, align 8, !tbaa !337
  %index.next1221 = add nuw i64 %index1219, 8     ; 2 uses
  %i.ok = icmp eq i64 %index.next1221, %n.vec1217
  br i1 %i.ok, label %middle.block1222, label %vector.body1218, !llvm.loop !1588

middle.block1222:                                 ; preds = %vector.body1218
  %cmp.n1223 = icmp eq i64 %i.of, %n.vec1217
  br i1 %cmp.n1223, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.bu, %middle.block1222
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.kj, %bb.bu ], [ %i.oh, %middle.block1222 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ol, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 -1, ptr %.06.i.i.i.i.i.i.i.i.i, align 4, !tbaa !337
  %i.ol = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ol, %i.oc
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1589

_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.i:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block1222, %middle.block, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i
  %storemerge.i.i = trunc nuw i64 %i.ni to i32    ; 2 uses
  store i32 %storemerge.i.i, ptr %i.kk, align 8, !tbaa !413
  %.not68125.i = icmp uge i64 %.fca.0.extract.i654, %i.kn
  %.not69123.i = icmp ule i64 %.pn.i.i100.i, %i.kn
  %or.cond136.i = and i1 %.not69123.i, %.not68125.i
  br i1 %or.cond136.i, label %.preheader120.i, label %.critedge74.i

.preheader120.i:                                  ; preds = %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.i, %..critedge_crit_edge.i
  %.054126.i = phi i64 [ %i.ow, %..critedge_crit_edge.i ], [ 0, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.i ] ; 2 uses
  %i.om = mul i64 %.054126.i, %i.ni
  %i.on = getelementptr [4 x i8], ptr %i.ch, i64 %i.om
  %i.oo = load ptr, ptr %12, align 8              ; 3 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.ca, %.preheader120.i
  %.052124.i = phi i64 [ 0, %.preheader120.i ], [ %i.ov, %bb.ca ] ; 3 uses
  %i.op = getelementptr [4 x i8], ptr %i.on, i64 %.052124.i
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !337 ; 4 uses
  %i.or = icmp slt i32 %i.oq, 0
  br i1 %i.or, label %bb.ca, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not66.i = icmp ult i32 %i.oq, %i.na
  br i1 %.not66.i, label %bb.bx, label %.loopexit.i655

bb.bx:                                            ; preds = %bb.bw
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %.052124.i ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !337 ; 2 uses
  %i.ou = icmp slt i32 %i.ot, 0
  br i1 %i.ou, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 %i.oq, ptr %i.os, align 4, !tbaa !337
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %.not67.i = icmp eq i32 %i.ot, %i.oq
  br i1 %.not67.i, label %bb.ca, label %.loopexit.i655

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bv
  %i.ov = add nuw nsw i64 %.052124.i, 1           ; 2 uses
  %.not69.i = icmp samesign ult i64 %i.ov, %i.ni
  br i1 %.not69.i, label %bb.bv, label %..critedge_crit_edge.i, !llvm.loop !1590

..critedge_crit_edge.i:                           ; preds = %bb.ca
  %i.ow = add nuw i64 %.054126.i, 1               ; 2 uses
  %.not68.i = icmp ult i64 %i.ow, %i.np
  br i1 %.not68.i, label %.preheader120.i, label %.critedge74.loopexit.i, !llvm.loop !1591

.critedge74.loopexit.i:                           ; preds = %..critedge_crit_edge.i
  %.val77.pre.i = load i32, ptr %i.kk, align 8, !tbaa !413
  br label %.critedge74.i

.critedge74.i:                                    ; preds = %.critedge74.loopexit.i, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.i
  %.val77.i = phi i32 [ %.val77.pre.i, %.critedge74.loopexit.i ], [ %storemerge.i.i, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.i ] ; 3 uses
  %.val.i = load ptr, ptr %12, align 8, !tbaa !62 ; 12 uses
  %i.ox = zext i32 %.val77.i to i64               ; 3 uses
  %.idx1.i.i = shl nuw nsw i64 %i.ox, 2           ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx1.i.i
  %i.oz = lshr i64 %i.ox, 2                       ; 2 uses
  %.not.i113.i = icmp eq i64 %i.oz, 0
  br i1 %.not.i113.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.critedge74.i
  %i.pa = and i64 %.idx1.i.i, 17179869168
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.val.i, i64 %i.pa
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ce, %.lr.ph.preheader.i.i.i.i.i
  %.044.i.i.i.i.i = phi i64 [ %i.pj, %bb.ce ], [ %i.oz, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i = phi ptr [ %i.pi, %bb.ce ], [ %.val.i, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i = load i32, ptr %.02943.i.i.i.i.i, align 4, !tbaa !337
  %i.pb = icmp sgt i32 %.029.val32.i.i.i.i.i, -1
  br i1 %i.pb, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i", label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.pc = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 4
  %.val31.i.i.i.i.i = load i32, ptr %i.pc, align 4, !tbaa !337
  %i.pd = icmp sgt i32 %.val31.i.i.i.i.i, -1
  br i1 %i.pd, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i.loopexit.split.loop.exit", label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.pe = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  %.val30.i.i.i.i.i = load i32, ptr %i.pe, align 4, !tbaa !337
  %i.pf = icmp sgt i32 %.val30.i.i.i.i.i, -1
  br i1 %i.pf, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i.loopexit.split.loop.exit1173", label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pg = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 12
  %.val.i.i.i.i.i = load i32, ptr %i.pg, align 4, !tbaa !337
  %i.ph = icmp sgt i32 %.val.i.i.i.i.i, -1
  br i1 %i.ph, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i.loopexit.split.loop.exit1175", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pi = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 16
  %i.pj = add nsw i64 %.044.i.i.i.i.i, -1
  %i.pk = icmp sgt i64 %.044.i.i.i.i.i, 1
  br i1 %i.pk, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !1592

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.ce
  %i.pl = and i32 %.val77.i, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %.critedge74.i
  %.pre-phi50.i.i.i.i.i = phi i32 [ %i.pl, %._crit_edge.loopexit.i.i.i.i.i ], [ %.val77.i, %.critedge74.i ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.val.i, %.critedge74.i ] ; 5 uses
  switch i32 %.pre-phi50.i.i.i.i.i, label %bb.ck [
    i32 3, label %bb.cf
    i32 2, label %bb.ch
    i32 1, label %bb.cj
  ]

bb.cf:                                            ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i, align 4, !tbaa !337
  %i.pm = icmp sgt i32 %.029.val.i.i.i.i.i, -1
  br i1 %i.pm, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i", label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pn = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 4
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.pn, %bb.cg ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !337
  %i.po = icmp sgt i32 %.1.val.i.i.i.i.i, -1
  br i1 %i.po, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i", label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.pp = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.pp, %bb.ci ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !337
  %i.pq = icmp sgt i32 %.2.val.i.i.i.i.i, -1
  br i1 %i.pq, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i", label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge.i.i.i.i.i
  br label %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i"

"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i.loopexit.split.loop.exit": ; preds = %bb.cb
  %i.pr = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 4
  br label %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i"

"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i.loopexit.split.loop.exit1173": ; preds = %bb.cc
  %i.ps = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  br label %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i"

"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i.loopexit.split.loop.exit1175": ; preds = %bb.cd
  %i.pt = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 12
  br label %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i"

"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i": ; preds = %.lr.ph.i.i.i.i.i, %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i.loopexit.split.loop.exit", %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i.loopexit.split.loop.exit1173", %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i.loopexit.split.loop.exit1175", %bb.ck, %bb.cj, %bb.ch, %bb.cf
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.ch ], [ %i.oy, %bb.ck ], [ %.2.i.i.i.i.i, %bb.cj ], [ %.029.lcssa.i.i.i.i.i, %bb.cf ], [ %i.pt, %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i.loopexit.split.loop.exit1175" ], [ %i.ps, %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i.loopexit.split.loop.exit1173" ], [ %i.pr, %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i.loopexit.split.loop.exit" ], [ %.02943.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ox
  %i.pv = icmp eq ptr %.028.i.i.i.i.i, %i.pu
  br i1 %i.pv, label %.loopexit.i655, label %bb.cl

bb.cl:                                            ; preds = %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i"
  %i.pw = ptrtoint ptr %.028.i.i.i.i.i to i64
  %i.px = ptrtoint ptr %.val.i to i64
  %i.py = sub i64 %i.pw, %i.px
  %i.pz = ashr exact i64 %i.py, 2                 ; 2 uses
  %i.qa = load i32, ptr %.028.i.i.i.i.i, align 4, !tbaa !337 ; 2 uses
  %i.qb = zext i32 %i.qa to i64
  %i.qc = icmp ugt i64 %i.pz, %i.qb
  br i1 %i.qc, label %.loopexit.i655, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.qd = sext i32 %i.qa to i64
  %i.qe = sub nsw i64 %i.qd, %i.pz                ; 3 uses
  %i.qf = urem i64 %i.qe, %i.ni
  %i.qg = udiv exact i64 %i.qe, %i.ni
  %.not70.i = icmp eq i64 %i.qf, 0
  br i1 %.not70.i, label %.preheader.i, label %.loopexit.i655

bb.cn:                                            ; preds = %.preheader.i
  %i.qh = add nuw nsw i64 %.0135.i, 1             ; 2 uses
  %.not72.i = icmp samesign ult i64 %i.qh, %i.ni
  br i1 %.not72.i, label %.preheader.i, label %.critedge76.i, !llvm.loop !1593

.preheader.i:                                     ; preds = %bb.cm, %bb.cn
  %.0135.i = phi i64 [ %i.qh, %bb.cn ], [ 0, %bb.cm ] ; 3 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0135.i
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !337 ; 2 uses
  %i.qk = icmp slt i32 %i.qj, 0
  %i.ql = zext nneg i32 %i.qj to i64
  %i.qm = add nsw i64 %.0135.i, %i.qe
  %.not71.i = icmp eq i64 %i.qm, %i.ql
  %or.cond.i = select i1 %i.qk, i1 true, i1 %.not71.i
  br i1 %or.cond.i, label %bb.cn, label %.loopexit.i655

.critedge76.i:                                    ; preds = %bb.cn
  %i.qn = trunc i64 %i.qg to i32
  br label %.loopexit.i655

.loopexit.i655:                                   ; preds = %.preheader.i, %bb.bw, %bb.bz, %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i", %.critedge76.i, %bb.cm, %bb.cl
  %.0 = phi i32 [ 0, %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i" ], [ 0, %bb.cl ], [ %i.qn, %.critedge76.i ], [ 0, %bb.bw ], [ 0, %bb.cm ], [ 0, %bb.bz ], [ 0, %.preheader.i ]
  %i.qo = phi ptr [ %.val.i, %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i" ], [ %.val.i, %bb.cl ], [ %.val.i, %.critedge76.i ], [ %i.oo, %bb.bw ], [ %.val.i, %bb.cm ], [ %i.oo, %bb.bz ], [ %.val.i, %.preheader.i ] ; 2 uses
  %.9.i = phi i1 [ true, %"_ZN4llvm7find_ifIRNS_11SmallVectorIiLj8EEEZL13isWideDUPMaskNS_8ArrayRefIiEENS_3EVTEjRjE3$_0EEDaOT_T0_.exit.i" ], [ false, %bb.cl ], [ true, %.critedge76.i ], [ false, %bb.bw ], [ false, %bb.cm ], [ false, %bb.bz ], [ false, %.preheader.i ]
  %i.qp = icmp eq ptr %i.qo, %i.kj
  br i1 %i.qp, label %_ZL13isWideDUPMaskN4llvm8ArrayRefIiEENS_3EVTEjRj.exit, label %bb.co

bb.co:                                            ; preds = %.loopexit.i655
  call void @free(ptr noundef %i.qo) #35
  br label %_ZL13isWideDUPMaskN4llvm8ArrayRefIiEENS_3EVTEjRj.exit

_ZL13isWideDUPMaskN4llvm8ArrayRefIiEENS_3EVTEjRj.exit.thread: ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit.i, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit89.i, %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.critedge

_ZL13isWideDUPMaskN4llvm8ArrayRefIiEENS_3EVTEjRj.exit: ; preds = %.loopexit.i655, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br i1 %.9.i, label %bb.cp, label %.critedge

bb.cp:                                            ; preds = %_ZL13isWideDUPMaskN4llvm8ArrayRefIiEENS_3EVTEjRj.exit
  %i.qq = icmp eq i32 %i.km, 64
  %i.qr = icmp eq i32 %i.km, 32
  %i.qs = select i1 %i.qr, i32 585, i32 584
  %i.qt = select i1 %i.qq, i32 586, i32 %i.qs
  %i.qu = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.km)
  %i.qv = icmp eq i32 %i.qu, 1
  br i1 %i.qv, label %.split.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

.split.i:                                         ; preds = %bb.cp
  %i.qw = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.km, i1 true) ; 2 uses
  %i.qx = icmp samesign ult i32 %i.qw, 10
  br i1 %i.qx, label %switch.lookup.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

switch.lookup.i:                                  ; preds = %.split.i
  %switch.idx.cast.i = trunc nuw nsw i32 %i.qw to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %bb.cp, %.split.i, %switch.lookup.i
  %.sroa.0.0.i = phi i16 [ %switch.offset.i, %switch.lookup.i ], [ 0, %.split.i ], [ 0, %bb.cp ]
  %i.qy = load i16, ptr %22, align 8, !tbaa !361  ; 2 uses
  %.not.i657 = icmp eq i16 %i.qy, 0
  br i1 %.not.i657, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  %i.qz = zext i16 %i.qy to i64
  %i.ra = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.qz ; 2 uses
  %i.rb = getelementptr i8, ptr %i.ra, i64 -16
  %.sroa.0.0.copyload.i.i658 = load i64, ptr %i.rb, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.ra, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i659 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i658, 0
  %.fca.1.insert.i.i660 = insertvalue { i64, i8 } %.fca.0.insert.i.i659, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.cr:                                            ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  %i.rc = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.cq, %bb.cr
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i660, %bb.cq ], [ %i.rc, %bb.cr ] ; 2 uses
  %.fca.1.extract453 = extractvalue { i64, i8 } %.pn.i, 1
  %i.rd = trunc nuw i8 %.fca.1.extract453 to i1
  br i1 %i.rd, label %bb.cs, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.cs:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract452 = extractvalue { i64, i8 } %.pn.i, 0
  %i.re = udiv i64 %.fca.0.extract452, %i.kn
  %i.rf = trunc i64 %i.re to i32
  %i.rg = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i, i32 noundef %i.rf) ; 2 uses
  %.sroa.0442.0.copyload = load ptr, ptr %23, align 8
  %.sroa.2443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %.sroa.2443.0.copyload = load i32, ptr %.sroa.2443.0..sroa_idx, align 8
  %i.rh = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %i.rg, ptr null, ptr %.sroa.0442.0.copyload, i32 %.sroa.2443.0.copyload) #35 ; 2 uses
  %.fca.0.extract438 = extractvalue { ptr, i32 } %i.rh, 0
  %.fca.1.extract439 = extractvalue { ptr, i32 } %i.rh, 1
  %.sroa.0429.0.copyload = load ptr, ptr %21, align 8, !tbaa !389
  %.sroa.2430.0.copyload = load i32, ptr %i.l, align 8, !tbaa !337
  store i16 %i.rg, ptr %26, align 8, !tbaa !227
  %i.ri = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr null, ptr %i.ri, align 8, !tbaa !682
  %i.rj = call fastcc { ptr, i32 } @_ZL12constructDupN4llvm7SDValueEiNS_5SDLocENS_3EVTEjRNS_12SelectionDAGE(ptr %.fca.0.extract438, i32 %.fca.1.extract439, i32 noundef %.0, ptr %.sroa.0429.0.copyload, i32 %.sroa.2430.0.copyload, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %26, i32 noundef %i.qt, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract424 = extractvalue { ptr, i32 } %i.rj, 0
  %.fca.1.extract425 = extractvalue { ptr, i32 } %i.rj, 1
  %.sroa.0421.0.copyload = load i16, ptr %22, align 8, !tbaa !227
  %.sroa.2423.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !380
  %i.rk = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0421.0.copyload, ptr %.sroa.2423.0.copyload, ptr %.fca.0.extract424, i32 %.fca.1.extract425) #35 ; 2 uses
  %.fca.0.extract414 = extractvalue { ptr, i32 } %i.rk, 0
  %.fca.1.extract415 = extractvalue { ptr, i32 } %i.rk, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.ga

.critedge:                                        ; preds = %_ZL13isWideDUPMaskN4llvm8ArrayRefIiEENS_3EVTEjRj.exit.thread, %_ZL13isWideDUPMaskN4llvm8ArrayRefIiEENS_3EVTEjRj.exit
  %.0588.add = add nuw nsw i64 %.0588.idx1010, 4  ; 2 uses
  %.not = icmp eq i64 %.0588.add, 12
  br i1 %.not, label %bb.ct, label %bb.at

bb.ct:                                            ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.rl = load i16, ptr %22, align 8, !tbaa !361  ; 5 uses
  %.not.i.i661 = icmp eq i16 %i.rl, 0
  br i1 %.not.i.i661, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i662

.split.i662:                                      ; preds = %bb.ct
  %i.rm = add i16 %i.rl, -163
  %spec.select.i.i.i663 = icmp ult i16 %i.rm, 53
  br i1 %spec.select.i.i.i663, label %bb.cu, label %.split.i.i665

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.ct
  %i.rn = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #37
  br i1 %i.rn, label %bb.cu, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i

bb.cu:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i662
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

.split.i.i665:                                    ; preds = %.split.i662
  %i.ro = zext i16 %i.rl to i64                   ; 2 uses
  %i.rp = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ro
  %i.rq = getelementptr i8, ptr %i.rp, i64 -2
  %i.rr = load i16, ptr %i.rq, align 2, !tbaa !228
  %i.rs = zext i16 %i.rr to i32                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.rt = add i16 %i.rl, -19
  %spec.select.i.i.i.i666 = icmp ult i16 %i.rt, 197
  br i1 %spec.select.i.i.i.i666, label %bb.cv, label %bb.cx

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.ru = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #37 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.rv = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #37
  br i1 %i.rv, label %bb.cw, label %bb.cx

bb.cv:                                            ; preds = %.split.i.i665
  %i.rw = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ro
  %i.rx = getelementptr i8, ptr %i.rw, i64 -2
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !227
  %i.rz = insertvalue { i16, ptr } poison, i16 %i.ry, 0
  %i.sa = insertvalue { i16, ptr } %i.rz, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.cw:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.sb = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #35
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.cx:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i665
  %i.sc = phi i32 [ %i.ru, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %i.rs, %.split.i.i665 ]
  %.sroa.31.0.copyload.i.i = load ptr, ptr %i.s, align 8, !tbaa !380
  %i.sd = insertvalue { i16, ptr } poison, i16 %i.rl, 0
  %i.se = insertvalue { i16, ptr } %i.sd, ptr %.sroa.31.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.cx, %bb.cw, %bb.cv
  %i.sf = phi i32 [ %i.sc, %bb.cx ], [ %i.rs, %bb.cv ], [ %i.ru, %bb.cw ] ; 15 uses
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.se, %bb.cx ], [ %i.sa, %bb.cv ], [ %i.sb, %bb.cw ] ; 2 uses
  %i.sg = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.sg, ptr %7, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.si = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.si, ptr %i.sh, align 8
  %.not.i.i667 = icmp eq i16 %i.sg, 0
  br i1 %.not.i.i667, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.sj = zext i16 %i.sg to i64
  %i.sk = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.sj
  %i.sl = getelementptr i8, ptr %i.sk, i64 -16
  %.sroa.0.0.copyload.i.i.i668 = load i64, ptr %i.sl, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.cz:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.sm = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #37
end_hunk_0
begin_hunk_1_@_ZL12getDUPLANEOpN4llvm3EVTE:bb.a
  %or.cond45 = select i1 %i.e, i1 %i.a, i1 false
  br i1 %or.cond45, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i11 = icmp eq i16 %0, 8
  %.not4.i12 = select i1 %.not.i.i11, i1 %i.a, i1 false
  br i1 %.not4.i12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i13 = icmp eq i16 %0, 15
  tail call void @llvm.assume(i1 %.not.i.i13)
  tail call void @llvm.assume(i1 %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 585, %bb.c ], [ 587, %bb.a ], [ 584, %bb.b ], [ 586, %bb.e ], [ 586, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL12constructDupN4llvm7SDValueEiNS_5SDLocENS_3EVTEjRNS_12SelectionDAGE(ptr %0, i32 %1, i32 noundef %2, ptr %3, i32 %4, ptr noundef byval(%"struct.llvm::EVT") align 8 %5, i32 noundef range(i32 584, 588) %6, ptr noundef nonnull align 8 dereferenceable(920) %7) unnamed_addr #4 {
bb.a:
  %8 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %13 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %14 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 8 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  store ptr %3, ptr %14, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %4, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !383  ; 2 uses
  %.not.i = icmp eq i32 %i.c, 248
  br i1 %.not.i, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !384  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !385  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !383
  %.not12.i = icmp eq i32 %i.h, 167
  br i1 %.not12.i, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !337
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !384
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !385
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !388  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !382
  %i.r = icmp ult i32 %i.q, 65
  %i.s = load ptr, ptr %i.o, align 8
  %spec.select.i.i.i.i.i.i = select i1 %i.r, ptr %i.o, ptr %i.s
  %.0.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !334
  %i.t = trunc i64 %.0.i.i.i.i.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !379
  %i.w = zext i32 %.sroa.7.0.copyload.i to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.x, align 8, !tbaa !227 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.21.0.copyload.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !380 ; 2 uses
  %.fca.0.insert.i.i.i.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { i16, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i.i, ptr %12, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i.i, ptr %i.y, align 8
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.c
  %i.z = add i16 %.sroa.0.0.copyload.i.i.i.i, -19
  %spec.select.i.i.i.i.i = icmp ult i16 %i.z, 197
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i:              ; preds = %bb.c
  %i.aa = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #37
  br i1 %i.aa, label %bb.e, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

bb.d:                                             ; preds = %.split.i.i.i
  %i.ab = zext nneg i16 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.ac = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !227
  %i.af = insertvalue { i16, ptr } poison, i16 %i.ae, 0
  %i.ag = insertvalue { i16, ptr } %i.af, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

bb.e:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i
  %i.ah = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #35
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i:          ; preds = %bb.e, %bb.d, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i, %.split.i.i.i
  %.fca.1.insert.merged.i.i.i = phi { i16, ptr } [ %i.ah, %bb.e ], [ %i.ag, %bb.d ], [ %.fca.1.insert.i.i.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i ], [ %.fca.1.insert.i.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ai = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i, 0 ; 3 uses
  store i16 %i.ai, ptr %11, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ak = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i.i, 1
  store ptr %i.ak, ptr %i.aj, align 8
  %.not.i.i1.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i
  %i.al = zext i16 %i.ai to i64
  %i.am = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.an, align 16
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit.i

bb.g:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i
  %i.ao = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #37
  %i.ap = extractvalue { i64, i8 } %i.ao, 0
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit.i

_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit.i: ; preds = %bb.g, %bb.f
  %.pn.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.f ], [ %i.ap, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.aq = trunc i64 %.pn.i.i.i.i to i32
  %i.ar = mul i32 %i.aq, %i.t                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !379
  %i.au = zext i32 %1 to i64                      ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.au ; 2 uses
  %.sroa.0.0.copyload.i.i.i14.i = load i16, ptr %i.av, align 8, !tbaa !227 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i15.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.21.0.copyload.i.i.i16.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i15.i, align 8, !tbaa !380 ; 2 uses
  %.fca.0.insert.i.i.i17.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i.i14.i, 0
  %.fca.1.insert.i.i.i18.i = insertvalue { i16, ptr } %.fca.0.insert.i.i.i17.i, ptr %.sroa.21.0.copyload.i.i.i16.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i14.i, ptr %10, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i16.i, ptr %i.aw, align 8
  %.not.i.i.i19.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i14.i, 0
  br i1 %.not.i.i.i19.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i27.i, label %.split.i.i20.i

.split.i.i20.i:                                   ; preds = %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit.i
  %i.ax = add i16 %.sroa.0.0.copyload.i.i.i14.i, -19
  %spec.select.i.i.i.i21.i = icmp ult i16 %i.ax, 197
  br i1 %spec.select.i.i.i.i21.i, label %bb.h, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i22.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i27.i:            ; preds = %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit.i
  %i.ay = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #37
  br i1 %i.ay, label %bb.i, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i22.i

bb.h:                                             ; preds = %.split.i.i20.i
  %i.az = zext nneg i16 %.sroa.0.0.copyload.i.i.i14.i to i64
  %i.ba = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !227
  %i.bd = insertvalue { i16, ptr } poison, i16 %i.bc, 0
  %i.be = insertvalue { i16, ptr } %i.bd, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i22.i

bb.i:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i27.i
  %i.bf = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #35
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i22.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i22.i:        ; preds = %bb.i, %bb.h, %_ZNK4llvm3EVT8isVectorEv.exit.i.i27.i, %.split.i.i20.i
  %.fca.1.insert.merged.i.i23.i = phi { i16, ptr } [ %i.bf, %bb.i ], [ %i.be, %bb.h ], [ %.fca.1.insert.i.i.i18.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i27.i ], [ %.fca.1.insert.i.i.i18.i, %.split.i.i20.i ] ; 2 uses
  %i.bg = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i23.i, 0 ; 3 uses
  store i16 %i.bg, ptr %9, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bi = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i23.i, 1
  store ptr %i.bi, ptr %i.bh, align 8
  %.not.i.i1.i24.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i.i1.i24.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i22.i
  %i.bj = zext i16 %i.bg to i64
  %i.bk = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -16
  %.sroa.0.0.copyload.i.i.i.i25.i = load i64, ptr %i.bl, align 16
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit28.i

bb.k:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i22.i
  %i.bm = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #37
  %i.bn = extractvalue { i64, i8 } %i.bm, 0
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit28.i

_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit28.i: ; preds = %bb.k, %bb.j
  %.pn.i.i.i26.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i25.i, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.bo = trunc i64 %.pn.i.i.i26.i to i32         ; 2 uses
  %i.bp = urem i32 %i.ar, %i.bo
  %i.bq = udiv exact i32 %i.ar, %i.bo
  %.not13.i = icmp eq i32 %i.bp, 0
  br i1 %.not13.i, label %bb.l, label %thread-pre-split

bb.l:                                             ; preds = %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !384 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !385
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !396
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !379 ; 2 uses
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bx ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.by, align 8, !tbaa !227 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %13, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.bz, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.ca, 144
  br i1 %spec.select.i.i.i.i, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.i, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread.i

_ZNK4llvm3EVT14is128BitVectorEv.exit.thread.i:    ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %thread-pre-split

.split.i:                                         ; preds = %bb.l
  %i.cb = call noundef zeroext i1 @_ZNK4llvm3EVT22isExtended128BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br i1 %i.cb, label %bb.n, label %thread-pre-split

_ZNK4llvm3EVT14is128BitVectorEv.exit.i:           ; preds = %bb.m
  %i.cc = zext nneg i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.cd = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 -16
  %.sroa.0.0.copyload.i.i.i.i29.i = load i64, ptr %i.ce, align 16
  %i.cf = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i29.i, 128
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br i1 %i.cf, label %bb.n, label %thread-pre-split

bb.n:                                             ; preds = %_ZNK4llvm3EVT14is128BitVectorEv.exit.i, %.split.i
  %i.cg = add i32 %i.bq, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.ch = load i32, ptr %i.bt, align 8, !tbaa !396
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.ci ; 2 uses
  %.sroa.0.0.copyload.i.i.i30.i = load i16, ptr %i.cj, align 8, !tbaa !227 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i31.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.21.0.copyload.i.i.i32.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i31.i, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i.i30.i, ptr %8, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i32.i, ptr %i.ck, align 8
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i30.i, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = zext i16 %.sroa.0.0.copyload.i.i.i30.i to i64
  %i.cm = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cl ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 -16
  %.sroa.0.0.copyload.i.i3.i.i = load i64, ptr %i.cn, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.cm, i64 -8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %.fca.0.insert.i.i4.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i.i, 0
  %.fca.1.insert.i.i5.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i.i, i8 %.sroa.2.0.copyload.i.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i

bb.p:                                             ; preds = %bb.n
  %i.co = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #37
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i:   ; preds = %bb.p, %bb.o
  %.pn.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i5.i.i, %bb.o ], [ %i.co, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %.fca.1.extract.i = extractvalue { i64, i8 } %.pn.i.i.i, 1
  %i.cp = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.cp, label %bb.q, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.q:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.i
  %.fca.0.extract.i = extractvalue { i64, i8 } %.pn.i.i.i, 0
  %i.cq = and i64 %.pn.i.i.i26.i, 4294967295
  %i.cr = udiv i64 %.fca.0.extract.i, %i.cq
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = load ptr, ptr %i.as, align 8, !tbaa !379
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.au
  %.sroa.0.0.copyload.i.i.i33.i = load i16, ptr %i.cu, align 8, !tbaa !227 ; 3 uses
  %i.cv = add i16 %.sroa.0.0.copyload.i.i.i33.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.cv, 197
  br i1 %spec.select.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.cw = zext nneg i16 %.sroa.0.0.copyload.i.i.i33.i to i64
  %i.cx = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 -2
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !227
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNK4llvm8TypeSizecvmEv.exit.i
  %.sroa.0.0.i.i = phi i16 [ %i.cz, %bb.r ], [ %.sroa.0.0.copyload.i.i.i33.i, %_ZNK4llvm8TypeSizecvmEv.exit.i ]
  %i.da = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i.i, i32 noundef %i.cs)
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !384
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !385
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !384 ; 2 uses
  %.sroa.034.0.copyload = load ptr, ptr %i.de, align 8, !tbaa !394
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.235.0.copyload = load i32, ptr %.sroa.235.0..sroa_idx, align 8, !tbaa !337
  %i.df = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %7, i16 %i.da, ptr null, ptr %.sroa.034.0.copyload, i32 %.sroa.235.0.copyload) #35 ; 2 uses
  %.fca.0.extract30 = extractvalue { ptr, i32 } %i.df, 0
  %.fca.1.extract31 = extractvalue { ptr, i32 } %i.df, 1
  br label %bb.ae

thread-pre-split:                                 ; preds = %.split.i, %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread.i, %_ZNK4llvm3EVT14is128BitVectorEv.exit.i, %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit28.i, %bb.b
  %.pr = load i32, ptr %i.b, align 8, !tbaa !383
  br label %bb.t

bb.t:                                             ; preds = %thread-pre-split, %bb.a
  %i.dg = phi i32 [ %.pr, %thread-pre-split ], [ %i.c, %bb.a ] ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 167
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  br i1 %i.dh, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !384 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !385 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !396 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !379
  %i.dp = zext i32 %i.dm to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dp ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.dq, align 8, !tbaa !227 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i, ptr %15, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.dr, align 8
  %.not.i51 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i51, label %.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i52 = icmp ult i16 %i.ds, 144
  br i1 %spec.select.i.i.i52, label %_ZNK4llvm3EVT14is128BitVectorEv.exit, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread

_ZNK4llvm3EVT14is128BitVectorEv.exit.thread:      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %.thread

.split:                                           ; preds = %bb.u
  %i.dt = call noundef zeroext i1 @_ZNK4llvm3EVT22isExtended128BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br i1 %i.dt, label %bb.w, label %.thread

_ZNK4llvm3EVT14is128BitVectorEv.exit:             ; preds = %bb.v
  %i.du = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.dv = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 -16
  %.sroa.0.0.copyload.i.i.i.i53 = load i64, ptr %i.dw, align 16
  %i.dx = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i53, 128
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br i1 %i.dx, label %bb.w, label %.thread

bb.w:                                             ; preds = %.split, %_ZNK4llvm3EVT14is128BitVectorEv.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !385
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 88
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !388 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !382
  %i.ef = icmp ult i32 %i.ee, 65
  %i.eg = load ptr, ptr %i.ec, align 8
  %spec.select.i.i.i.i.i54 = select i1 %i.ef, ptr %i.ec, ptr %i.eg
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i54, align 8, !tbaa !334
  %i.eh = trunc i64 %.0.i.i.i.i.i to i32
  %i.ei = add i32 %2, %i.eh
  br label %bb.ae

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  %i.ej = icmp eq i32 %i.dg, 165
  br i1 %i.ej, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.ek = load i16, ptr %5, align 8, !tbaa !361   ; 3 uses
  %.not.i.i55 = icmp eq i16 %i.ek, 0
  br i1 %.not.i.i55, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i56

.split.i56:                                       ; preds = %bb.y
  %i.el = add i16 %i.ek, -163
end_hunk_1
begin_hunk_2_@_ZL28performActiveLaneMaskCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoEPKNS_16AArch64SubtargetE:bb.a
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !380 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %4, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !384 ; 2 uses
  %.sroa.044.0.copyload.i = load ptr, ptr %i.aa, align 8, !tbaa !394
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.245.0.copyload.i = load i32, ptr %.sroa.245.0..sroa_idx.i, align 8, !tbaa !337
  %i.ab = tail call noundef zeroext i1 @_ZN4llvm17isZeroOrZeroSplatENS_7SDValueEb(ptr %.sroa.044.0.copyload.i, i32 %.sroa.245.0.copyload.i, i1 noundef zeroext false) #35
  br i1 %i.ab, label %bb.d, label %_ZL11optimizeBrkPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !384
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.063.0.copyload.i = load ptr, ptr %i.ad, align 8, !tbaa !394 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.063.0.copyload.i, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !383
  %i.ag = icmp eq i32 %i.af, 59
  br i1 %i.ag, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.063.0.copyload.i, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !384 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %.sroa.041.0.copyload.i = load ptr, ptr %i.aj, align 8, !tbaa !394
  %.sroa.242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %.sroa.242.0.copyload.i = load i32, ptr %.sroa.242.0..sroa_idx.i, align 8, !tbaa !337
  %i.ak = tail call noundef zeroext i1 @_ZN4llvm15isOneOrOneSplatENS_7SDValueEb(ptr %.sroa.041.0.copyload.i, i32 %.sroa.242.0.copyload.i, i1 noundef zeroext false) #35
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !384
  %.sroa.063.0.copyload70.i = load ptr, ptr %i.al, align 8, !tbaa !394
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.063.0.i = phi ptr [ %.sroa.063.0.copyload70.i, %bb.f ], [ %.sroa.063.0.copyload.i, %bb.e ], [ %.sroa.063.0.copyload.i, %bb.d ] ; 2 uses
  %.0.i = phi i64 [ 1346, %bb.f ], [ 1348, %bb.e ], [ 1348, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.063.0.i, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !383
  %.not.i = icmp eq i32 %i.an, 581
  br i1 %.not.i, label %bb.h, label %_ZL11optimizeBrkPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.h
  %i.ao = add i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i = icmp ult i16 %i.ao, 53
  br i1 %spec.select.i.i.i, label %bb.i, label %_ZL11optimizeBrkPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.h
  %i.ap = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br i1 %i.ap, label %bb.i, label %_ZL11optimizeBrkPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread

bb.i:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.063.0.i, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !384 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !385 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !396 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !379
  %i.ax = zext i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ay, align 8, !tbaa !227
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !380
  %.not.i55.i = icmp ne i16 %.sroa.0.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i
  %i.az = icmp ne ptr %.sroa.21.0.copyload.i.i.i, %.sroa.21.0.copyload.i.i
  %i.ba = select i1 %.not.i55.i, i1 true, i1 %i.az
  br i1 %i.ba, label %_ZL11optimizeBrkPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread, label %_ZL11optimizeBrkPN4llvm6SDNodeERNS_12SelectionDAGE.exit

_ZL11optimizeBrkPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread: ; preds = %bb.c, %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %bb.g, %.split.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.j

_ZL11optimizeBrkPN4llvm6SDNodeERNS_12SelectionDAGE.exit: ; preds = %bb.i
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false)
  %i.bc = call fastcc { ptr, i32 } @_ZL22getSVEPredicateBitCastN4llvm3EVTENS_7SDValueERNS_12SelectionDAGE(i16 167, ptr null, ptr nonnull %i.as, i32 %i.au, ptr noundef nonnull align 8 dereferenceable(920) %i.q) ; 2 uses
  %.fca.0.extract23.i = extractvalue { ptr, i32 } %i.bc, 0
  %.fca.1.extract24.i = extractvalue { ptr, i32 } %i.bc, 1
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.q, i32 noundef 741, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 167, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #35 ; 2 uses
  %.fca.0.extract16.i = extractvalue { ptr, i32 } %i.bd, 0
  %.fca.1.extract17.i = extractvalue { ptr, i32 } %i.bd, 1
  %i.be = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.q, i64 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract9.i = extractvalue { ptr, i32 } %i.be, 0
  %.fca.1.extract10.i = extractvalue { ptr, i32 } %i.be, 1
  store ptr %.fca.0.extract9.i, ptr %6, align 8, !tbaa !394
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract10.i, ptr %.sroa.414.0..sroa_idx.i, align 8, !tbaa !337
  store ptr %.fca.0.extract23.i, ptr %7, align 8, !tbaa !394
  %.sroa.6.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract24.i, ptr %.sroa.6.0..sroa_idx34.i, align 8, !tbaa !337
  %.sroa.8.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx36.i, align 4
  store ptr %.fca.0.extract16.i, ptr %8, align 8, !tbaa !394
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract17.i, ptr %.sroa.421.0..sroa_idx.i, align 8, !tbaa !337
  %i.bf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.q, i32 noundef 48, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 167, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #35 ; 2 uses
  %.fca.0.extract4.i = extractvalue { ptr, i32 } %i.bf, 0
  %.fca.1.extract5.i = extractvalue { ptr, i32 } %i.bf, 1
  %.sroa.01.0.copyload.i = load i16, ptr %4, align 8, !tbaa !227
  %.sroa.23.0.copyload.i = load ptr, ptr %i.y, align 8, !tbaa !380
  store ptr %.fca.0.extract4.i, ptr %9, align 8, !tbaa !394
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract5.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !337
  %i.bg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.q, i32 noundef 741, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.01.0.copyload.i, ptr %.sroa.23.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #35 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.bg, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.bg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.not438 = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not438, label %bb.j, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread

bb.j:                                             ; preds = %_ZL11optimizeBrkPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread, %_ZL11optimizeBrkPN4llvm6SDNodeERNS_12SelectionDAGE.exit
  %i.bh = load ptr, ptr %i.p, align 8, !tbaa !1082, !nonnull !59, !align !357
  %i.bi = call fastcc { ptr, i32 } @_ZL25optimizeIncrementingWhilePN4llvm6SDNodeERNS_12SelectionDAGEbb(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(920) %i.bh, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  %.fca.0.extract237 = extractvalue { ptr, i32 } %i.bi, 0 ; 2 uses
  %.fca.1.extract238 = extractvalue { ptr, i32 } %i.bi, 1
  %.not439 = icmp eq ptr %.fca.0.extract237, null
  br i1 %.not439, label %bb.k, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !690 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not4.i.i.i, label %"_ZN4llvm8count_ifINS_14iterator_rangeINS_6SDNode13user_iteratorEEEZL28performActiveLaneMaskCombinePS2_RNS_14TargetLowering15DAGCombinerInfoEPKNS_16AArch64SubtargetEE3$_0EEDaOT_T0_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.i.i.i
  %.06.i.i.i = phi i64 [ %spec.select.i.i.i278, %.lr.ph.i.i.i ], [ 0, %bb.k ]
  %.sroa.02.05.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i ], [ %i.bk, %bb.k ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !689
  %i.bn = getelementptr i8, ptr %i.bm, i64 24
  %.val.i.i.i.i = load i32, ptr %i.bn, align 8, !tbaa !383
  %i.bo = icmp eq i32 %.val.i.i.i.i, 167
  %i.bp = zext i1 %i.bo to i64
  %spec.select.i.i.i278 = add nuw nsw i64 %.06.i.i.i, %i.bp ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !691 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %"_ZN4llvm8count_ifINS_14iterator_rangeINS_6SDNode13user_iteratorEEEZL28performActiveLaneMaskCombinePS2_RNS_14TargetLowering15DAGCombinerInfoEPKNS_16AArch64SubtargetEE3$_0EEDaOT_T0_.exit", label %.lr.ph.i.i.i, !llvm.loop !2256

"_ZN4llvm8count_ifINS_14iterator_rangeINS_6SDNode13user_iteratorEEEZL28performActiveLaneMaskCombinePS2_RNS_14TargetLowering15DAGCombinerInfoEPKNS_16AArch64SubtargetEE3$_0EEDaOT_T0_.exit": ; preds = %.lr.ph.i.i.i, %bb.k
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.k ], [ %spec.select.i.i.i278, %.lr.ph.i.i.i ] ; 3 uses
  %i.bs = trunc i64 %.0.lcssa.i.i.i to i32        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.bt = load ptr, ptr %i.w, align 8, !tbaa !379 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.bt, align 8, !tbaa !227 ; 4 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i, ptr %10, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.bu, align 8
  %.not.i281 = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i281, label %bb.m, label %bb.l

bb.l:                                             ; preds = %"_ZN4llvm8count_ifINS_14iterator_rangeINS_6SDNode13user_iteratorEEEZL28performActiveLaneMaskCombinePS2_RNS_14TargetLowering15DAGCombinerInfoEPKNS_16AArch64SubtargetEE3$_0EEDaOT_T0_.exit"
  %i.bv = zext i16 %.sroa.0.0.copyload.i to i64
  %i.bw = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !228
  %i.bz = add i16 %.sroa.0.0.copyload.i, -163
  %spec.select.i.i.i282 = icmp ult i16 %i.bz, 53
  %.sroa.2.0.insert.shift.i.i.i = select i1 %spec.select.i.i.i282, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.by to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit

bb.m:                                             ; preds = %"_ZN4llvm8count_ifINS_14iterator_rangeINS_6SDNode13user_iteratorEEEZL28performActiveLaneMaskCombinePS2_RNS_14TargetLowering15DAGCombinerInfoEPKNS_16AArch64SubtargetEE3$_0EEDaOT_T0_.exit"
  %i.ca = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #37
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit

_ZNK4llvm3EVT21getVectorElementCountEv.exit:      ; preds = %bb.l, %bb.m
  %.sroa.0.0.in.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i, %bb.l ], [ %i.ca, %bb.m ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %.not.i283 = icmp eq i32 %i.bs, 0
  br i1 %.not.i283, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit: ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit
  %.sroa.0422.0.extract.trunc = trunc i64 %.sroa.0.0.in.i to i32 ; 2 uses
  %i.cb = urem i32 %.sroa.0422.0.extract.trunc, %i.bs
  %i.cc = udiv exact i32 %.sroa.0422.0.extract.trunc, %i.bs ; 4 uses
  %i.cd = icmp eq i32 %i.cb, 0
  br i1 %i.cd, label %bb.n, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread

bb.n:                                             ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit
  %i.ce = and i64 %.sroa.0.0.in.i, 1095216660480
  %i.cf = icmp ult i32 %i.cc, 2
  br i1 %i.cf, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.cg = and i64 %.0.lcssa.i.i.i, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store ptr null, ptr %i.a, align 8, !tbaa !394
  call void @_ZN4llvm11SmallVectorIPNS_6SDNodeELj6EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(64) %11, i64 noundef %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %.sroa.0408.0444 = load ptr, ptr %i.bj, align 8, !tbaa !678 ; 2 uses
  %.not441445 = icmp eq ptr %.sroa.0408.0444, null
  %.pre458 = load ptr, ptr %11, align 8           ; 4 uses
  br i1 %.not441445, label %.critedge274, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.0413.4.extract.shift443 = lshr i64 %.sroa.0.0.in.i, 32
  %.sroa.0413.4.extract.trunc = trunc i64 %.sroa.0413.4.extract.shift443 to i8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.0408.0446 = phi ptr [ %.sroa.0408.0444, %.lr.ph ], [ %.sroa.0408.0, %bb.v ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0408.0446, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !689 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !383
  %.not = icmp eq i32 %i.cl, 167
  br i1 %.not, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !379 ; 2 uses
  %.sroa.0.0.copyload.i288 = load i16, ptr %i.cn, align 8, !tbaa !227 ; 4 uses
  %.sroa.21.0..sroa_idx.i289 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.21.0.copyload.i290 = load ptr, ptr %.sroa.21.0..sroa_idx.i289, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i288, ptr %12, align 8
  store ptr %.sroa.21.0.copyload.i290, ptr %i.ch, align 8
  %.not.i293 = icmp eq i16 %.sroa.0.0.copyload.i288, 0
  br i1 %.not.i293, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = zext i16 %.sroa.0.0.copyload.i288 to i64
  %i.cp = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -2
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !228
  %i.cs = add i16 %.sroa.0.0.copyload.i288, -163
  %spec.select.i.i.i294 = icmp ult i16 %i.cs, 53
  %.sroa.2.0.insert.shift.i.i.i295 = select i1 %spec.select.i.i.i294, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i296 = zext i16 %i.cr to i64
  %.sroa.0.0.insert.insert.i.i.i297 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i295, %.sroa.0.0.insert.ext.i.i.i296
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit300

bb.s:                                             ; preds = %bb.q
  %i.ct = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #37
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit300

_ZNK4llvm3EVT21getVectorElementCountEv.exit300:   ; preds = %bb.r, %bb.s
  %.sroa.0.0.in.i298 = phi i64 [ %.sroa.0.0.insert.insert.i.i.i297, %bb.r ], [ %i.ct, %bb.s ] ; 2 uses
  %.sroa.0405.0.extract.trunc = trunc i64 %.sroa.0.0.in.i298 to i32
  %.not.i301 = icmp ne i32 %i.cc, %.sroa.0405.0.extract.trunc
  %.sroa.0405.4.extract.shift442 = lshr i64 %.sroa.0.0.in.i298, 32
  %.sroa.0405.4.extract.trunc = trunc i64 %.sroa.0405.4.extract.shift442 to i8
  %i.cu = icmp ne i8 %.sroa.0405.4.extract.trunc, %.sroa.0413.4.extract.trunc
  %i.cv = select i1 %.not.i301, i1 true, i1 %i.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br i1 %i.cv, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit300
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !384
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !385
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !388 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !382
  %i.df = icmp ult i32 %i.de, 65
  %i.dg = load ptr, ptr %i.dc, align 8
  %spec.select.i.i.i.i = select i1 %i.df, ptr %i.dc, ptr %i.dg
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !334
  %i.dh = trunc i64 %.0.i.i.i.i to i32
  %i.di = udiv i32 %i.dh, %i.cc
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.pre458, i64 %i.dj ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !394
  %.not271 = icmp eq ptr %i.dl, null
  br i1 %.not271, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  store ptr %i.cj, ptr %i.dk, align 8, !tbaa !394
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0408.0446, i64 32
  %.sroa.0408.0 = load ptr, ptr %i.dm, align 8, !tbaa !678 ; 2 uses
  %.not441 = icmp eq ptr %.sroa.0408.0, null
  br i1 %.not441, label %.critedge274, label %bb.p

.critedge274:                                     ; preds = %bb.v, %bb.o
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !1082, !nonnull !59, !align !357 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  %i.do = load i64, ptr %i.r, align 8, !tbaa !389
  store i64 %i.do, ptr %13, align 8, !tbaa !389
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dq = load i32, ptr %i.u, align 4, !tbaa !390
  store i32 %i.dq, ptr %i.dp, align 8, !tbaa !392
  %i.dr = load ptr, ptr %i.z, align 8, !tbaa !384 ; 6 uses
  %.sroa.0382.0.copyload = load ptr, ptr %i.dr, align 8, !tbaa !394 ; 5 uses
  %.sroa.12388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.12388.0.copyload = load i32, ptr %.sroa.12388.0..sroa_idx, align 8, !tbaa !337 ; 5 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 4 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %.sroa.0187.0.copyload = load ptr, ptr %i.ds, align 8, !tbaa !394 ; 4 uses
  %.sroa.8192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %.sroa.8192.0.copyload = load i32, ptr %.sroa.8192.0..sroa_idx, align 8, !tbaa !337 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 52
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0382.0.copyload, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !379
  %i.dv = zext i32 %.sroa.12388.0.copyload to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dv ; 2 uses
  %.sroa.0.0.copyload.i.i302 = load i16, ptr %i.dw, align 8, !tbaa !227 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i303 = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.21.0.copyload.i.i304 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i303, align 8, !tbaa !380 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %i.dx = load ptr, ptr %.pre458, align 8, !tbaa !394
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !379 ; 2 uses
  %.sroa.0.0.copyload.i307 = load i16, ptr %i.dz, align 8, !tbaa !227 ; 3 uses
  %.sroa.21.0..sroa_idx.i308 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.21.0.copyload.i309 = load ptr, ptr %.sroa.21.0..sroa_idx.i308, align 8, !tbaa !380 ; 3 uses
  store i16 %.sroa.0.0.copyload.i307, ptr %14, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.sroa.21.0.copyload.i309, ptr %i.ea, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.eb = load ptr, ptr %i.w, align 8, !tbaa !379 ; 2 uses
  %.sroa.0.0.copyload.i312 = load i16, ptr %i.eb, align 8, !tbaa !227 ; 3 uses
  %.sroa.21.0..sroa_idx.i313 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.21.0.copyload.i314 = load ptr, ptr %.sroa.21.0..sroa_idx.i313, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i312, ptr %15, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.sroa.21.0.copyload.i314, ptr %i.ec, align 8
  %.not.i317 = icmp eq i16 %.sroa.0.0.copyload.i312, 0
  br i1 %.not.i317, label %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit, label %.split

.split:                                           ; preds = %.critedge274
  %i.ed = add i16 %.sroa.0.0.copyload.i312, -19
  %spec.select.i.i = icmp ult i16 %i.ed, 144
  br i1 %spec.select.i.i, label %.critedge, label %bb.w

_ZNK4llvm3EVT19isFixedLengthVectorEv.exit:        ; preds = %.critedge274
  %i.ee = call noundef zeroext i1 @_ZNK4llvm3EVT27isExtendedFixedLengthVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #37
  br i1 %i.ee, label %.critedge, label %bb.w

bb.w:                                             ; preds = %.split, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 519
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !350, !range !58, !noundef !59
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %.critedge276, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 489
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !351, !range !58, !noundef !59
  %i.ek = trunc nuw i8 %i.ej to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br i1 %i.ek, label %bb.af, label %bb.y

.critedge:                                        ; preds = %.split, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.el = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.el, ptr %16, align 8, !tbaa !62
  %i.em = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 8 uses
  store i32 0, ptr %i.em, align 8, !tbaa !413
  %i.en = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 3 uses
  store i32 3, ptr %i.en, align 4, !tbaa !601
  %.sroa.12388.0..sroa_idx389 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.16.0..sroa_idx399 = getelementptr inbounds nuw i8, ptr %17, i64 12
  %.sroa.2162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.5181.0..sroa_idx182 = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %.sroa.6184.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 2 uses
  %.sroa.8192.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 2 uses
  %wide.trip.count = and i64 %.0.lcssa.i.i.i, 4294967295 ; 2 uses
  store ptr %.sroa.0382.0.copyload, ptr %19, align 8, !tbaa !394
  store i32 %.sroa.12388.0.copyload, ptr %.sroa.5181.0..sroa_idx182, align 8, !tbaa !337
  store i32 %.sroa.16.0.copyload, ptr %.sroa.6184.0..sroa_idx185, align 4
  store ptr %.sroa.0187.0.copyload, ptr %20, align 8, !tbaa !394
end_hunk_2
begin_hunk_3_@_ZL19performUADDVCombinePN4llvm6SDNodeERNS_12SelectionDAGE:bb.a
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZN4llvm9KnownBitsD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.ek) #38
  br label %_ZN4llvm9KnownBitsD2Ev.exit

_ZN4llvm9KnownBitsD2Ev.exit:                      ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  %i.em = load i32, ptr %i.dg, align 8, !tbaa !382
  %i.en = icmp ugt i32 %i.em, 64
  br i1 %i.en, label %bb.y, label %_ZN4llvm5APIntD2Ev.exit

bb.y:                                             ; preds = %_ZN4llvm9KnownBitsD2Ev.exit
  %i.eo = load ptr, ptr %16, align 8, !tbaa !334  ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZN4llvm5APIntD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.eo) #38
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm9KnownBitsD2Ev.exit, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  %i.eq = insertvalue { ptr, i32 } poison, ptr %.sroa.038.0, 0
  %i.er = insertvalue { ptr, i32 } %i.eq, i32 %.sroa.739.0, 1
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge, %_ZL23performUADDVZextCombineN4llvm7SDValueERNS_12SelectionDAGE.exit, %_ZN4llvm5APIntD2Ev.exit
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.p, %.critedge ], [ %i.er, %_ZN4llvm5APIntD2Ev.exit ], [ %.pn, %_ZL23performUADDVZextCombineN4llvm7SDValueERNS_12SelectionDAGE.exit ]
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL24performPTestFirstCombinePN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoERNS_12SelectionDAGE(ptr nofree noundef readonly captures(none) %0, i32 %.8.val, ptr noundef nonnull align 8 dereferenceable(920) %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %i.a = icmp eq i32 %.8.val, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389
  store i64 %i.c, ptr %2, align 8, !tbaa !389
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !390
  store i32 %i.f, ptr %i.d, align 8, !tbaa !392
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !384  ; 4 uses
  %.sroa.010.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !394 ; 2 uses
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.i = load <2 x i32>, ptr %.sroa.512.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.01.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !394 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 4 ; 2 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.c, %bb.b
  %.tr.i = phi ptr [ %.sroa.010.0.copyload, %bb.b ], [ %.sroa.01.0.copyload.i, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.tr.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !383
  switch i32 %i.l, label %_ZL18isLane0KnownActiveN4llvm7SDValueE.exit.thread [
    i32 741, label %bb.c
    i32 175, label %_ZL18isLane0KnownActiveN4llvm7SDValueE.exit
    i32 738, label %.split
  ]

bb.c:                                             ; preds = %tailrecurse.i
  %i.m = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !384
  %.sroa.01.0.copyload.i = load ptr, ptr %i.n, align 8, !tbaa !394
  br label %tailrecurse.i

.split:                                           ; preds = %tailrecurse.i
  %i.o = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !384
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !385
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !388  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !382
  %i.w = icmp ult i32 %i.v, 65
  %i.x = load ptr, ptr %i.t, align 8
  %spec.select.i.i.i.i.i.i = select i1 %i.w, ptr %i.t, ptr %i.x
  %.0.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !334
  %i.y = icmp eq i64 %.0.i.i.i.i.i.i, 31
  br i1 %i.y, label %bb.d, label %_ZL18isLane0KnownActiveN4llvm7SDValueE.exit.thread

_ZL18isLane0KnownActiveN4llvm7SDValueE.exit:      ; preds = %tailrecurse.i
  %i.z = getelementptr inbounds nuw i8, ptr %.tr.i, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !384 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aa, align 8, !tbaa !394
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !337
  %i.ab = tail call noundef zeroext i1 @_ZN4llvm13isOneConstantENS_7SDValueE(ptr %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i) #35, !inline_history !2262
  br i1 %i.ab, label %bb.d, label %_ZL18isLane0KnownActiveN4llvm7SDValueE.exit.thread

bb.d:                                             ; preds = %.split, %_ZL18isLane0KnownActiveN4llvm7SDValueE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !383 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 741
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !384
  %.sroa.01.0.copyload7 = load ptr, ptr %i.ag, align 8, !tbaa !394 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload7, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !383
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ah = phi i32 [ %.pre, %bb.e ], [ %i.ad, %bb.d ]
  %.sroa.01.0 = phi ptr [ %.sroa.01.0.copyload7, %bb.e ], [ %.sroa.01.0.copyload, %bb.d ]
  %i.ai = icmp eq i32 %i.ah, 165
  br i1 %i.ai, label %bb.g, label %_ZL18isLane0KnownActiveN4llvm7SDValueE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !384 ; 2 uses
  %.sroa.01.0.copyload8 = load ptr, ptr %i.ak, align 8, !tbaa !394
  %.sroa.12.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.12.0.copyload16 = load i32, ptr %.sroa.12.0..sroa_idx15, align 8, !tbaa !337
  store ptr %.sroa.01.0.copyload8, ptr %3, align 8, !tbaa !394
  %.sroa.12.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.12.0.copyload16, ptr %.sroa.12.0..sroa_idx9, align 8, !tbaa !337
  %.sroa.13.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx17, align 4
  %i.al = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 741, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 167, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3) #35 ; 2 uses
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.al, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.al, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !379 ; 2 uses
  %.sroa.0.0.copyload.i23 = load i16, ptr %i.an, align 8, !tbaa !227
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !380
  store ptr %.sroa.010.0.copyload, ptr %4, align 8, !tbaa !394
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x i32> %i.i, ptr %.sroa.512.0..sroa_idx13, align 8
  store ptr %.fca.0.extract3, ptr %5, align 8, !tbaa !394
  %.sroa.12.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract4, ptr %.sroa.12.0..sroa_idx11, align 8, !tbaa !337
  %.sroa.13.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx19, align 4
  %i.ao = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 737, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i23, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #35 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ao, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ao, 1
  br label %_ZL18isLane0KnownActiveN4llvm7SDValueE.exit.thread

_ZL18isLane0KnownActiveN4llvm7SDValueE.exit.thread: ; preds = %tailrecurse.i, %bb.f, %_ZL18isLane0KnownActiveN4llvm7SDValueE.exit, %.split, %bb.g
  %.sroa.8.0 = phi i32 [ %.fca.1.extract, %bb.g ], [ 0, %_ZL18isLane0KnownActiveN4llvm7SDValueE.exit ], [ 0, %.split ], [ 0, %bb.f ], [ 0, %tailrecurse.i ]
  %.sroa.021.0 = phi ptr [ %.fca.0.extract, %bb.g ], [ null, %_ZL18isLane0KnownActiveN4llvm7SDValueE.exit ], [ null, %.split ], [ null, %bb.f ], [ null, %tailrecurse.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZL18isLane0KnownActiveN4llvm7SDValueE.exit.thread
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %_ZL18isLane0KnownActiveN4llvm7SDValueE.exit.thread ], [ 0, %bb.a ]
  %.sroa.021.1 = phi ptr [ %.sroa.021.0, %_ZL18isLane0KnownActiveN4llvm7SDValueE.exit.thread ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.021.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.8.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL31combineSVEPrefetchVecBaseImmOffPN4llvm6SDNodeERNS_12SelectionDAGEj(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef range(i32 1, 9) %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %4 = alloca %"class.llvm::SmallVector.1048", align 8 ; 12 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %6 = alloca %"class.llvm::ArrayRef.463", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !384  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %.sroa.010.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !394 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !383
  switch i32 %i.e, label %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i: ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !388  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !382
  %i.k = icmp ult i32 %i.j, 65
  %i.l = load ptr, ptr %i.h, align 8
  %spec.select.i.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.l
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !334
  %i.m = trunc i64 %.0.i.i.i.i to i32             ; 2 uses
  %i.n = urem i32 %i.m, %2
  %i.o = udiv exact i32 %i.m, %2
  %.not.i.i = icmp eq i32 %i.n, 0
  %i.p = icmp ult i32 %i.o, 32
  %or.cond = select i1 %.not.i.i, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.c, label %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread

_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread: ; preds = %bb.a, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i16, ptr %i.q, align 8, !tbaa !672  ; 4 uses
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.u, align 8, !tbaa !413
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 5, ptr %i.v, align 4, !tbaa !601
  %.idx.i = mul nuw nsw i64 %i.s, 40              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %i.x = icmp ugt i16 %i.r, 5
  br i1 %i.x, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i: ; preds = %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull %i.t, i64 noundef %i.s, i64 noundef 16) #35
  %.pre.i.i = load i32, ptr %i.u, align 8, !tbaa !413
  %.pre9.i.i = zext i32 %.pre.i.i to i64
  %.pre = load ptr, ptr %4, align 8, !tbaa !62
  br label %.lr.ph.i.i.i.i.preheader.i.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i: ; preds = %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread
  %.not9.i.i.i.i.i.i = icmp eq i16 %i.r, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj5EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i
  %i.y = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i ], [ %i.t, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i ]
  %.pre-phi.i4.i = phi i64 [ %.pre9.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.pre-phi.i4.i ; 2 uses
  %i.aa = add nsw i64 %.idx.i, -40                ; 2 uses
  %i.ab = udiv i64 %i.aa, 40
  %i.ac = add nuw nsw i64 %i.ab, 1
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.011.i.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.z, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.0810.i.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i.i.prol, i64 16, i1 false), !tbaa.struct !395
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.prol, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2263

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader.i.i
  %.011.i.i.i.i.i.i.unr = phi ptr [ %i.z, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0810.i.i.i.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.af = icmp ult i64 %i.aa, 120
  br i1 %i.af, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !395
  %i.ag = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i64 16, i1 false), !tbaa.struct !395
  %i.ai = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i64 16, i1 false), !tbaa.struct !395
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i64 16, i1 false), !tbaa.struct !395
  %i.am = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i.3 = icmp eq ptr %i.am, %i.w
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !8

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.pre8.i.i = load i32, ptr %i.u, align 8, !tbaa !413
  %.pre20 = load ptr, ptr %4, align 8, !tbaa !62
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj5EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_7SDValueELj5EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i.i
  %i.ao = phi ptr [ %.pre20, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i.i ], [ %i.t, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i ] ; 2 uses
  %i.ap = phi i32 [ %.pre8.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i ]
  %i.aq = zext i16 %i.r to i32
  %i.ar = add i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %i.u, align 8, !tbaa !413
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.as, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false), !tbaa.struct !395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.at, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !395
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load i64, ptr %i.au, align 8, !tbaa !389
  store i64 %i.av, ptr %5, align 8, !tbaa !389
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !390
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !392
  %i.az = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 1716, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.az, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.az, 1
  %i.ba = load ptr, ptr %4, align 8, !tbaa !62    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %.fca.0.extract3, ptr %i.bb, align 8, !tbaa !394
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i32 %.fca.1.extract4, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !337
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !383
  %i.be = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 1, ptr null) #35 ; 2 uses
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  %i.bg = extractvalue { ptr, i32 } %i.be, 1
  %i.bh = load ptr, ptr %4, align 8, !tbaa !62
  store ptr %i.bh, ptr %6, align 8, !tbaa !675
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bj = load i32, ptr %i.u, align 8, !tbaa !413
  %i.bk = zext i32 %i.bj to i64
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !676
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %i.bf, i32 %i.bg, ptr noundef nonnull byval(%"class.llvm::ArrayRef.463") align 8 %6) #35 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.bm = load ptr, ptr %4, align 8, !tbaa !62    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.t
  br i1 %i.bn, label %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj5EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit
  call void @free(ptr noundef %i.bm) #35
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj5EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i, %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit
  %.sroa.4.0 = phi i32 [ %.fca.1.extract, %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i ]
  %.sroa.019.0 = phi ptr [ %.fca.0.extract, %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL32legalizeSVEGatherPrefetchOffsVecPN4llvm6SDNodeERNS_12SelectionDAGE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %4 = alloca %"class.llvm::SmallVector.1048", align 8 ; 11 uses
  %5 = alloca %"class.llvm::ArrayRef.463", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !384  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %.sroa.021.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !394 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !337 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !379
  %i.f = zext i32 %.sroa.7.0.copyload to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.g, align 8, !tbaa !227
  %.not = icmp eq i16 %.sroa.0.0.copyload.i.i, 184
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389
  store i64 %i.i, ptr %2, align 8, !tbaa !389
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !390
  store i32 %i.l, ptr %i.j, align 8, !tbaa !392
  store ptr %.sroa.021.0.copyload, ptr %3, align 8, !tbaa !394
  %.sroa.7.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx24, align 8, !tbaa !337
  %.sroa.9.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx28, align 4
  %i.m = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 190, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3) #35 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.m, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.m, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !384  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i16, ptr %i.o, align 8, !tbaa !672  ; 4 uses
  %i.q = zext i16 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.s, align 8, !tbaa !413
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 5, ptr %i.t, align 4, !tbaa !601
  %.idx.i = mul nuw nsw i64 %i.q, 40              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %i.v = icmp ugt i16 %i.p, 5
  br i1 %i.v, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i

end_hunk_3
begin_hunk_4_@_ZL24performGatherLoadCombinePN4llvm6SDNodeERNS_12SelectionDAGEjb:bb.a
  %.fca.1.insert.merged.i.i153 = phi { i16, ptr } [ %i.bb, %bb.l ], [ %i.ba, %bb.k ], [ %.fca.1.insert.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i157 ], [ %.fca.1.insert.i, %.split.i.i148 ] ; 2 uses
  %i.bc = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i153, 0 ; 3 uses
  store i16 %i.bc, ptr %9, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.be = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i153, 1
  store ptr %i.be, ptr %i.bd, align 8
  %.not.i.i154 = icmp eq i16 %i.bc, 0
  br i1 %.not.i.i154, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i152
  %i.bf = zext i16 %i.bc to i64
  %i.bg = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16
  %.sroa.0.0.copyload.i.i.i155 = load i64, ptr %i.bh, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit158

bb.n:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i152
  %i.bi = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #37
  %i.bj = extractvalue { i64, i8 } %i.bi, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit158

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit158:     ; preds = %bb.m, %bb.n
  %.pn.i.i156 = phi i64 [ %.sroa.0.0.copyload.i.i.i155, %bb.m ], [ %i.bj, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.bk = trunc i64 %.pn.i.i156 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.i, ptr %5, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.h, ptr %i.bl, align 8
  %i.bm = lshr i32 %i.bk, 3
  %i.bn = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bm, i1 false)
  %i.bo = sub nsw i32 31, %i.bn
  %i.bp = zext i32 %i.bo to i64
  %i.bq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract6.i159 = extractvalue { ptr, i32 } %i.bq, 0
  %.fca.1.extract7.i160 = extractvalue { ptr, i32 } %i.bq, 1
  store ptr %.fca.0.extract6.i159, ptr %6, align 8, !tbaa !394
  %.sroa.411.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract7.i160, ptr %.sroa.411.0..sroa_idx.i161, align 8, !tbaa !337
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 175, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 190, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #35 ; 2 uses
  %.fca.0.extract1.i162 = extractvalue { ptr, i32 } %i.br, 0
  %.fca.1.extract2.i163 = extractvalue { ptr, i32 } %i.br, 1
  store ptr %.sroa.0243.0.copyload, ptr %7, align 8, !tbaa !394
  %.sroa.216.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.17.0.copyload, ptr %.sroa.216.0..sroa_idx.i164, align 8, !tbaa !337
  store ptr %.fca.0.extract1.i162, ptr %8, align 8, !tbaa !394
  %.sroa.4.0..sroa_idx.i165 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract2.i163, ptr %.sroa.4.0..sroa_idx.i165, align 8, !tbaa !337
  %i.bs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 190, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit158
  %.pn314 = phi { ptr, i32 } [ %i.bs, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit158 ], [ %i.as, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit ] ; 2 uses
  %.0.ph = phi i32 [ 650, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit158 ], [ 681, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit ]
  %.sroa.17.0.ph = extractvalue { ptr, i32 } %.pn314, 1
  %.sroa.0243.0.ph = extractvalue { ptr, i32 } %.pn314, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  br label %bb.p

bb.o:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  switch i32 %2, label %.critedge [
    i32 681, label %bb.p
    i32 650, label %bb.p
  ]

bb.p:                                             ; preds = %.thread, %bb.o, %bb.o
  %.0300 = phi i32 [ %.0.ph, %.thread ], [ %2, %bb.o ], [ %2, %bb.o ] ; 3 uses
  %.sroa.17.0298 = phi i32 [ %.sroa.17.0.ph, %.thread ], [ %.sroa.17.0.copyload, %bb.o ], [ %.sroa.17.0.copyload, %bb.o ] ; 4 uses
  %.sroa.0243.0297 = phi ptr [ %.sroa.0243.0.ph, %.thread ], [ %.sroa.0243.0.copyload, %bb.o ], [ %.sroa.0243.0.copyload, %bb.o ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0243.0297, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !379
  %i.bv = zext i32 %.sroa.17.0298 to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv ; 2 uses
  %.sroa.0.0.copyload.i.i166 = load i16, ptr %i.bw, align 8, !tbaa !227 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i166, ptr %17, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.bx, align 8
  %.not.i169 = icmp eq i16 %.sroa.0.0.copyload.i.i166, 0
  br i1 %.not.i169, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.p
  %i.by = add i16 %.sroa.0.0.copyload.i.i166, -19
  %spec.select.i.i = icmp ult i16 %i.by, 197
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  br i1 %spec.select.i.i, label %bb.q, label %bb.r

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.p
  %i.bz = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  br label %bb.r

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  br label %bb.r

bb.r:                                             ; preds = %.split, %.critedge, %bb.q, %_ZNK4llvm3EVT8isVectorEv.exit
  %.0299 = phi i32 [ %2, %.critedge ], [ %.0300, %bb.q ], [ %.0300, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.0300, %.split ] ; 4 uses
  %.sroa.0243.1 = phi ptr [ %.sroa.0243.0.copyload, %.critedge ], [ %.sroa.0266.0.copyload, %bb.q ], [ %.sroa.0243.0297, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.sroa.0243.0297, %.split ] ; 5 uses
  %.sroa.17.1 = phi i32 [ %.sroa.17.0.copyload, %.critedge ], [ %.sroa.10.0.copyload, %bb.q ], [ %.sroa.17.0298, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.sroa.17.0298, %.split ] ; 3 uses
  %.sroa.0266.0 = phi ptr [ %.sroa.0266.0.copyload, %.critedge ], [ %.sroa.0243.0297, %bb.q ], [ %.sroa.0266.0.copyload, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.sroa.0266.0.copyload, %.split ] ; 4 uses
  %.sroa.10.0 = phi i32 [ %.sroa.10.0.copyload, %.critedge ], [ %.sroa.17.0298, %bb.q ], [ %.sroa.10.0.copyload, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.sroa.10.0.copyload, %.split ] ; 4 uses
  %i.ca = icmp eq i32 %.0299, 658                 ; 2 uses
  switch i32 %.0299, label %bb.y [
    i32 672, label %bb.s
    i32 658, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.cb = load i16, ptr %15, align 8, !tbaa !361  ; 4 uses
  %.not.i.i.i170 = icmp eq i16 %i.cb, 0
  br i1 %.not.i.i.i170, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i180, label %.split.i.i171

.split.i.i171:                                    ; preds = %bb.s
  %i.cc = add i16 %i.cb, -19
  %spec.select.i.i.i.i172 = icmp ult i16 %i.cc, 197
  br i1 %spec.select.i.i.i.i172, label %bb.t, label %bb.v

_ZNK4llvm3EVT8isVectorEv.exit.i.i180:             ; preds = %bb.s
  %i.cd = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #37
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %.split.i.i171
  %i.ce = zext nneg i16 %i.cb to i64
  %i.cf = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 -2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !227
  %i.ci = insertvalue { i16, ptr } poison, i16 %i.ch, 0
  %i.cj = insertvalue { i16, ptr } %i.ci, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i175

bb.u:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i180
  %i.ck = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #35
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i175

bb.v:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i180, %.split.i.i171
  %.sroa.31.0.copyload.i.i174 = load ptr, ptr %i.c, align 8, !tbaa !380
  %i.cl = insertvalue { i16, ptr } poison, i16 %i.cb, 0
  %i.cm = insertvalue { i16, ptr } %i.cl, ptr %.sroa.31.0.copyload.i.i174, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i175

_ZNK4llvm3EVT13getScalarTypeEv.exit.i175:         ; preds = %bb.v, %bb.u, %bb.t
  %.fca.1.insert.merged.i.i176 = phi { i16, ptr } [ %i.cm, %bb.v ], [ %i.cj, %bb.t ], [ %i.ck, %bb.u ] ; 2 uses
  %i.cn = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i176, 0 ; 3 uses
  store i16 %i.cn, ptr %4, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cp = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i176, 1
  store ptr %i.cp, ptr %i.co, align 8
  %.not.i.i177 = icmp eq i16 %i.cn, 0
  br i1 %.not.i.i177, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i175
  %i.cq = zext i16 %i.cn to i64
  %i.cr = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 -16
  %.sroa.0.0.copyload.i.i.i178 = load i64, ptr %i.cs, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit181

bb.x:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i175
  %i.ct = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  %i.cu = extractvalue { i64, i8 } %i.ct, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit181

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit181:     ; preds = %bb.w, %bb.x
  %.pn.i.i179 = phi i64 [ %.sroa.0.0.copyload.i.i.i178, %bb.w ], [ %i.cu, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.cv = lshr i64 %.pn.i.i179, 3
  %i.cw = trunc i64 %i.cv to i32                  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0243.1, i64 24
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !383
  switch i32 %i.cy, label %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i: ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit181, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit181
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0243.1, i64 88
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !388 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !382
  %i.de = icmp ult i32 %i.dd, 65
  %i.df = load ptr, ptr %i.db, align 8
  %spec.select.i.i.i.i182 = select i1 %i.de, ptr %i.db, ptr %i.df
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i182, align 8, !tbaa !334
  %i.dg = trunc i64 %.0.i.i.i.i to i32            ; 2 uses
  %i.dh = urem i32 %i.dg, %i.cw
  %i.di = udiv exact i32 %i.dg, %i.cw
  %.not.i.i183 = icmp eq i32 %i.dh, 0
  %i.dj = icmp ult i32 %i.di, 32
  %or.cond = select i1 %.not.i.i183, i1 %i.dj, i1 false
  br i1 %or.cond, label %bb.y, label %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread

_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread: ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit181, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0266.0, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !379
  %i.dm = zext i32 %.sroa.10.0 to i64
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.dm
  %.sroa.0.0.copyload.i.i184 = load i16, ptr %i.dn, align 8, !tbaa !227
  %i.do = icmp eq i16 %.sroa.0.0.copyload.i.i184, 185
  %i.dp = select i1 %i.ca, i32 663, i32 677
  %i.dq = select i1 %i.ca, i32 659, i32 673
  %.1 = select i1 %i.do, i32 %i.dp, i32 %i.dq
  br label %bb.y

bb.y:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i, %bb.r, %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread
  %.sroa.0243.2 = phi ptr [ %.sroa.0243.1, %bb.r ], [ %.sroa.0243.1, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i ], [ %.sroa.0266.0, %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread ] ; 4 uses
  %.sroa.17.2 = phi i32 [ %.sroa.17.1, %bb.r ], [ %.sroa.17.1, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i ], [ %.sroa.10.0, %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread ] ; 4 uses
  %.sroa.0266.1 = phi ptr [ %.sroa.0266.0, %bb.r ], [ %.sroa.0266.0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i ], [ %.sroa.0243.1, %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread ] ; 2 uses
  %.sroa.10.1 = phi i32 [ %.sroa.10.0, %bb.r ], [ %.sroa.10.0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i ], [ %.sroa.17.1, %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread ] ; 2 uses
  %.2 = phi i32 [ %.0299, %bb.r ], [ %.0299, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i ], [ %.1, %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0266.1, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !379
  %i.dt = zext i32 %.sroa.10.1 to i64
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dt
  %.sroa.0.0.copyload.i.i190 = load i16, ptr %i.du, align 8, !tbaa !227 ; 2 uses
  %.not.i195 = icmp eq i16 %.sroa.0.0.copyload.i.i190, 0
  br i1 %.not.i195, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !666
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 112
  %i.dy = zext i16 %.sroa.0.0.copyload.i.i190 to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !96
  %.not = icmp eq ptr %i.ea, null
  br i1 %.not, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  br i1 %3, label %.critedge5, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0243.2, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !379
  %i.ed = zext i32 %.sroa.17.2 to i64
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.ed
  %.sroa.0.0.copyload.i.i196 = load i16, ptr %i.ee, align 8, !tbaa !227
  %i.ef = icmp eq i16 %.sroa.0.0.copyload.i.i196, 184
  br i1 %i.ef, label %bb.ab, label %.critedge5

bb.ab:                                            ; preds = %bb.aa
  store ptr %.sroa.0243.2, ptr %18, align 8, !tbaa !394
  %.sroa.17.0..sroa_idx251 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.sroa.17.2, ptr %.sroa.17.0..sroa_idx251, align 8, !tbaa !337
  %.sroa.25.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 %.sroa.25.0.copyload, ptr %.sroa.25.0..sroa_idx264, align 4
  %i.eg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 190, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #35
  %.fca.0.extract71 = extractvalue { ptr, i32 } %i.eg, 0
  br label %.critedge5

.critedge5:                                       ; preds = %bb.z, %bb.ab, %bb.aa
  %.sroa.0243.3 = phi ptr [ %.sroa.0243.2, %bb.aa ], [ %.fca.0.extract71, %bb.ab ], [ %.sroa.0243.2, %bb.z ]
  %.sroa.17.3 = phi i32 [ %.sroa.17.2, %bb.aa ], [ 0, %bb.ab ], [ %.sroa.17.2, %bb.z ]
  %.sroa.067.0.copyload = load i16, ptr %15, align 8, !tbaa !227 ; 2 uses
  %i.eh = sext i16 %.sroa.067.0.copyload to i64
  %i.ei = getelementptr i8, ptr @switch.table._ZNK4llvm21AArch64TargetLowering21ReplaceBITCASTResultsEPNS_6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGE, i64 %i.eh
  %switch.gep = getelementptr i8, ptr %i.ei, i64 -171
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16       ; 4 uses
  %.sroa.264.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !380
  %i.ej = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getValueTypeENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.067.0.copyload, ptr %.sroa.264.0.copyload) #35 ; 2 uses
  %i.ek = load i16, ptr %15, align 8, !tbaa !361  ; 4 uses
  %.not.i204 = icmp eq i16 %i.ek, 0
  br i1 %.not.i204, label %_ZNK4llvm3EVT15isFloatingPointEv.exit, label %.split301

.split301:                                        ; preds = %.critedge5
  %i.el = add i16 %i.ek, -12
  %or.cond.i.i = icmp ult i16 %i.el, 7
  %i.em = add i16 %i.ek, -105
  %or.cond3.i.i = icmp ult i16 %i.em, 58
  %or.cond4.i.i = or i1 %or.cond.i.i, %or.cond3.i.i
  %i.en = add i16 %i.ek, -195
  %spec.select.i.i205 = icmp ult i16 %i.en, 21
  %i.eo = or i1 %spec.select.i.i205, %or.cond4.i.i
  br i1 %i.eo, label %bb.ac, label %bb.ad

_ZNK4llvm3EVT15isFloatingPointEv.exit:            ; preds = %.critedge5
  %i.ep = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #37
  br i1 %i.ep, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.split301, %_ZNK4llvm3EVT15isFloatingPointEv.exit
  %i.eq = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getValueTypeENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %switch.ext, ptr null) #35
  br label %bb.ad

bb.ad:                                            ; preds = %.split301, %bb.ac, %_ZNK4llvm3EVT15isFloatingPointEv.exit
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.ac ], [ %i.ej, %_ZNK4llvm3EVT15isFloatingPointEv.exit ], [ %i.ej, %.split301 ] ; 2 uses
  %.sroa.566.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.065.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.er = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %switch.ext, ptr null, i16 1, ptr null) #35 ; 2 uses
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  %i.et = extractvalue { ptr, i32 } %i.er, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  %i.eu = load ptr, ptr %i.p, align 8, !tbaa !384 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %19, ptr noundef nonnull align 8 dereferenceable(12) %i.eu, i64 12, i1 false), !tbaa.struct !395
  %i.ev = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ev, ptr noundef nonnull align 8 dereferenceable(12) %i.ew, i64 12, i1 false), !tbaa.struct !395
  %i.ex = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %.sroa.0266.1, ptr %i.ex, align 16, !tbaa !394
  %.sroa.10.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i32 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx275, align 8, !tbaa !337
  %i.ey = getelementptr inbounds nuw i8, ptr %19, i64 48
  store ptr %.sroa.0243.3, ptr %i.ey, align 16, !tbaa !394
  %.sroa.17.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %19, i64 56
  store i32 %.sroa.17.3, ptr %.sroa.17.0..sroa_idx253, align 8, !tbaa !337
  %i.ez = getelementptr inbounds nuw i8, ptr %19, i64 64
  store ptr %.sroa.065.0, ptr %i.ez, align 16, !tbaa !394
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i32 %.sroa.566.0, ptr %.sroa.566.0..sroa_idx, align 8, !tbaa !337
  store ptr %19, ptr %20, align 8, !tbaa !675
  %i.fa = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 5, ptr %i.fa, align 8, !tbaa !676
  %i.fb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef %.2, ptr noundef nonnull align 8 dereferenceable(12) %16, ptr %i.es, i32 %i.et, ptr noundef nonnull byval(%"class.llvm::ArrayRef.463") align 8 %20) #35 ; 2 uses
  %.fca.0.extract37 = extractvalue { ptr, i32 } %i.fb, 0 ; 5 uses
  %.fca.1.extract38 = extractvalue { ptr, i32 } %i.fb, 1 ; 3 uses
  %i.fc = load i16, ptr %15, align 8, !tbaa !361  ; 7 uses
  %.not.i206 = icmp eq i16 %i.fc, 0
  br i1 %.not.i206, label %_ZNK4llvm3EVT9isIntegerEv.exit, label %.split302

.split302:                                        ; preds = %bb.ad
  %i.fd = add i16 %i.fc, -2
  %or.cond.i.i207 = icmp ult i16 %i.fd, 10
  %i.fe = add i16 %i.fc, -19
  %or.cond3.i.i208 = icmp ult i16 %i.fe, 86
  %or.cond4.i.i209 = or i1 %or.cond.i.i207, %or.cond3.i.i208
  %i.ff = add i16 %i.fc, -163
  %spec.select.i.i210 = icmp ult i16 %i.ff, 32
  %i.fg = or i1 %spec.select.i.i210, %or.cond4.i.i209
  br i1 %i.fg, label %bb.ae, label %bb.ag

_ZNK4llvm3EVT9isIntegerEv.exit:                   ; preds = %bb.ad
  %i.fh = call noundef zeroext i1 @_ZNK4llvm3EVT17isExtendedIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #37
  br i1 %i.fh, label %bb.ae, label %_ZNK4llvm3EVT15isFloatingPointEv.exit219

bb.ae:                                            ; preds = %.split302, %_ZNK4llvm3EVT9isIntegerEv.exit
  %.not.i211 = icmp ne i16 %i.fc, %switch.ext
  %i.fi = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.fj = icmp ne ptr %i.fi, null
  %i.fk = select i1 %.not.i211, i1 true, i1 %i.fj
  br i1 %i.fk, label %bb.af, label %.split311

bb.af:                                            ; preds = %bb.ae
  store ptr %.fca.0.extract37, ptr %21, align 8
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 0, ptr %.sroa.227.0..sroa_idx, align 8
  %i.fl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 %i.fc, ptr %i.fi, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21) #35 ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.fl, 0
  %.fca.1.extract21 = extractvalue { ptr, i32 } %i.fl, 1
  %.pr.pre = load i16, ptr %15, align 8, !tbaa !361
  br label %bb.ag

bb.ag:                                            ; preds = %.split302, %bb.af
  %.pr = phi i16 [ %i.fc, %.split302 ], [ %.pr.pre, %bb.af ] ; 2 uses
  %.sroa.9.0.ph = phi i32 [ %.fca.1.extract38, %.split302 ], [ %.fca.1.extract21, %bb.af ] ; 2 uses
  %.sroa.0223.0.ph = phi ptr [ %.fca.0.extract37, %.split302 ], [ %.fca.0.extract20, %bb.af ] ; 2 uses
  %.not.i214 = icmp eq i16 %.pr, 0
  br i1 %.not.i214, label %_ZNK4llvm3EVT15isFloatingPointEv.exit219, label %.split311

.split311:                                        ; preds = %bb.ae, %bb.ag
  %.sroa.0223.0.ph329 = phi ptr [ %.sroa.0223.0.ph, %bb.ag ], [ %.fca.0.extract37, %bb.ae ] ; 2 uses
  %.sroa.9.0.ph328 = phi i32 [ %.sroa.9.0.ph, %bb.ag ], [ %.fca.1.extract38, %bb.ae ]
  %.pr327 = phi i16 [ %.pr, %bb.ag ], [ %switch.ext, %bb.ae ] ; 4 uses
  %i.fm = add i16 %.pr327, -12
  %or.cond.i.i215 = icmp ult i16 %i.fm, 7
  %i.fn = add i16 %.pr327, -105
  %or.cond3.i.i216 = icmp ult i16 %i.fn, 58
  %or.cond4.i.i217 = or i1 %or.cond.i.i215, %or.cond3.i.i216
  %i.fo = add i16 %.pr327, -195
  %spec.select.i.i218 = icmp ult i16 %i.fo, 21
  %i.fp = or i1 %spec.select.i.i218, %or.cond4.i.i217
  br i1 %i.fp, label %bb.ah, label %bb.ai

_ZNK4llvm3EVT15isFloatingPointEv.exit219:         ; preds = %_ZNK4llvm3EVT9isIntegerEv.exit, %bb.ag
  %.sroa.0223.0310 = phi ptr [ %.sroa.0223.0.ph, %bb.ag ], [ %.fca.0.extract37, %_ZNK4llvm3EVT9isIntegerEv.exit ] ; 2 uses
  %.sroa.9.0308 = phi i32 [ %.sroa.9.0.ph, %bb.ag ], [ %.fca.1.extract38, %_ZNK4llvm3EVT9isIntegerEv.exit ]
  %i.fq = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #37
  br i1 %i.fq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.split311, %_ZNK4llvm3EVT15isFloatingPointEv.exit219
  %i.fr = phi i16 [ %.pr327, %.split311 ], [ 0, %_ZNK4llvm3EVT15isFloatingPointEv.exit219 ]
  %.sroa.0223.0309313 = phi ptr [ %.sroa.0223.0.ph329, %.split311 ], [ %.sroa.0223.0310, %_ZNK4llvm3EVT15isFloatingPointEv.exit219 ]
  %.sroa.218.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !380
  store ptr %.sroa.0223.0309313, ptr %22, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 0, ptr %.sroa.215.0..sroa_idx, align 8
  %i.fs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 %i.fr, ptr %.sroa.218.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22) #35 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.fs, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.fs, 1
  br label %bb.ai

end_hunk_4
begin_hunk_5_@_ZL26performScatterStoreCombinePN4llvm6SDNodeERNS_12SelectionDAGEjb:bb.a
  %.sroa.216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.sroa.18.0.copyload, ptr %.sroa.216.0..sroa_idx.i, align 8, !tbaa !337
  store ptr %.fca.0.extract1.i, ptr %12, align 8, !tbaa !394
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !337
  %i.az = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 190, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %.thread

bb.k:                                             ; preds = %bb.h
  %i.ba = zext i16 %.fca.1.insert.merged.i323 to i64
  %i.bb = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ba ; 2 uses
  %.sroa.2.0..sroa_idx.i146 = getelementptr i8, ptr %i.bb, i64 -8
  %.sroa.2.0.copyload.i147 = load i8, ptr %.sroa.2.0..sroa_idx.i146, align 8
  %i.bc = trunc nuw i8 %.sroa.2.0.copyload.i147 to i1
  br i1 %i.bc, label %bb.l, label %_ZNK4llvm8TypeSizecvmEv.exit150

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit150:                  ; preds = %bb.k
  %i.bd = getelementptr i8, ptr %i.bb, i64 -16
  %.sroa.0.0.copyload.i145 = load i64, ptr %i.bd, align 16
  %i.be = trunc i64 %.sroa.0.0.copyload.i145 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.l, ptr %5, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.k, ptr %i.bf, align 8
  %i.bg = lshr i32 %i.be, 3
  %i.bh = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bg, i1 false)
  %i.bi = sub nsw i32 31, %i.bh
  %i.bj = zext i32 %i.bi to i64
  %i.bk = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract6.i151 = extractvalue { ptr, i32 } %i.bk, 0
  %.fca.1.extract7.i152 = extractvalue { ptr, i32 } %i.bk, 1
  store ptr %.fca.0.extract6.i151, ptr %6, align 8, !tbaa !394
  %.sroa.411.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract7.i152, ptr %.sroa.411.0..sroa_idx.i153, align 8, !tbaa !337
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 175, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 190, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #35 ; 2 uses
  %.fca.0.extract1.i154 = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract2.i155 = extractvalue { ptr, i32 } %i.bl, 1
  store ptr %.sroa.0225.0.copyload, ptr %7, align 8, !tbaa !394
  %.sroa.216.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.18.0.copyload, ptr %.sroa.216.0..sroa_idx.i156, align 8, !tbaa !337
  store ptr %.fca.0.extract1.i154, ptr %8, align 8, !tbaa !394
  %.sroa.4.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract2.i155, ptr %.sroa.4.0..sroa_idx.i157, align 8, !tbaa !337
  %i.bm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 190, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %_ZNK4llvm8TypeSizecvmEv.exit150
  %.pn313 = phi { ptr, i32 } [ %i.bm, %_ZNK4llvm8TypeSizecvmEv.exit150 ], [ %i.az, %_ZNK4llvm8TypeSizecvmEv.exit ] ; 2 uses
  %.0.ph = phi i32 [ 804, %_ZNK4llvm8TypeSizecvmEv.exit150 ], [ 813, %_ZNK4llvm8TypeSizecvmEv.exit ]
  %.sroa.0225.0.ph = extractvalue { ptr, i32 } %.pn313, 0
  %.sroa.18.0.ph = extractvalue { ptr, i32 } %.pn313, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  switch i32 %2, label %.critedge [
    i32 813, label %bb.n
    i32 804, label %bb.n
  ]

bb.n:                                             ; preds = %.thread, %bb.m, %bb.m
  %.0308 = phi i32 [ %.0.ph, %.thread ], [ %2, %bb.m ], [ %2, %bb.m ] ; 3 uses
  %.sroa.0225.0306 = phi ptr [ %.sroa.0225.0.ph, %.thread ], [ %.sroa.0225.0.copyload, %bb.m ], [ %.sroa.0225.0.copyload, %bb.m ] ; 4 uses
  %.sroa.18.0305 = phi i32 [ %.sroa.18.0.ph, %.thread ], [ %.sroa.18.0.copyload, %bb.m ], [ %.sroa.18.0.copyload, %bb.m ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0225.0306, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !379
  %i.bp = zext i32 %.sroa.18.0305 to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %.sroa.0.0.copyload.i.i158 = load i16, ptr %i.bq, align 8, !tbaa !227 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i158, ptr %15, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.br, align 8
  %.not.i161 = icmp eq i16 %.sroa.0.0.copyload.i.i158, 0
  br i1 %.not.i161, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.n
  %i.bs = add i16 %.sroa.0.0.copyload.i.i158, -19
  %spec.select.i.i = icmp ult i16 %i.bs, 197
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br i1 %spec.select.i.i, label %bb.o, label %bb.p

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.n
  %i.bt = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  br label %bb.p

.critedge:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.p

bb.p:                                             ; preds = %.split, %.critedge, %bb.o, %_ZNK4llvm3EVT8isVectorEv.exit
  %.0307 = phi i32 [ %2, %.critedge ], [ %.0308, %bb.o ], [ %.0308, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.0308, %.split ] ; 2 uses
  %.sroa.18.1 = phi i32 [ %.sroa.18.0.copyload, %.critedge ], [ %.sroa.10.0.copyload, %bb.o ], [ %.sroa.18.0305, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.sroa.18.0305, %.split ] ; 3 uses
  %.sroa.0225.1 = phi ptr [ %.sroa.0225.0.copyload, %.critedge ], [ %.sroa.0250.0.copyload, %bb.o ], [ %.sroa.0225.0306, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.sroa.0225.0306, %.split ] ; 5 uses
  %.sroa.0250.0 = phi ptr [ %.sroa.0250.0.copyload, %.critedge ], [ %.sroa.0225.0306, %bb.o ], [ %.sroa.0250.0.copyload, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.sroa.0250.0.copyload, %.split ] ; 4 uses
  %.sroa.10.0 = phi i32 [ %.sroa.10.0.copyload, %.critedge ], [ %.sroa.18.0305, %bb.o ], [ %.sroa.10.0.copyload, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.sroa.10.0.copyload, %.split ] ; 4 uses
  %i.bu = icmp eq i32 %.0307, 805
  br i1 %i.bu, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.bv = load i16, ptr %13, align 8, !tbaa !361  ; 4 uses
  %.not.i.i.i = icmp eq i16 %i.bv, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.q
  %i.bw = add i16 %i.bv, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.bw, 197
  br i1 %spec.select.i.i.i.i, label %bb.r, label %bb.t

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.q
  %i.bx = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #37
  br i1 %i.bx, label %bb.s, label %bb.t

bb.r:                                             ; preds = %.split.i.i
  %i.by = zext nneg i16 %i.bv to i64
  %i.bz = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 -2
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !227
  %i.cc = insertvalue { i16, ptr } poison, i16 %i.cb, 0
  %i.cd = insertvalue { i16, ptr } %i.cc, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.s:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.ce = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #35
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.t:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %.sroa.31.0.copyload.i.i = load ptr, ptr %i.f, align 8, !tbaa !380
  %i.cf = insertvalue { i16, ptr } poison, i16 %i.bv, 0
  %i.cg = insertvalue { i16, ptr } %i.cf, ptr %.sroa.31.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.t, %bb.s, %bb.r
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.cg, %bb.t ], [ %i.cd, %bb.r ], [ %i.ce, %bb.s ] ; 2 uses
  %i.ch = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.ch, ptr %4, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cj = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.cj, ptr %i.ci, align 8
  %.not.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.ck = zext i16 %i.ch to i64
  %i.cl = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cm, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.v:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.cn = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  %i.co = extractvalue { i64, i8 } %i.cn, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.u, %bb.v
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.u ], [ %i.co, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.cp = lshr i64 %.pn.i.i, 3
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0225.1, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !383
  switch i32 %i.cs, label %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i: ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0225.1, i64 88
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !388 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !382
  %i.cy = icmp ult i32 %i.cx, 65
  %i.cz = load ptr, ptr %i.cv, align 8
  %spec.select.i.i.i.i162 = select i1 %i.cy, ptr %i.cv, ptr %i.cz
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i162, align 8, !tbaa !334
  %i.da = trunc i64 %.0.i.i.i.i to i32            ; 2 uses
  %i.db = urem i32 %i.da, %i.cq
  %i.dc = udiv exact i32 %i.da, %i.cq
  %.not.i.i163 = icmp eq i32 %i.db, 0
  %i.dd = icmp ult i32 %i.dc, 32
  %or.cond325 = select i1 %.not.i.i163, i1 %i.dd, i1 false
  br i1 %or.cond325, label %bb.w, label %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread

_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread: ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0250.0, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !379
  %i.dg = zext i32 %.sroa.10.0 to i64
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.dg
  %.sroa.0.0.copyload.i.i164 = load i16, ptr %i.dh, align 8, !tbaa !227
  %i.di = icmp eq i16 %.sroa.0.0.copyload.i.i164, 185
  %. = select i1 %i.di, i32 810, i32 806
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i, %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread, %bb.p
  %.sroa.18.2 = phi i32 [ %.sroa.18.1, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i ], [ %.sroa.10.0, %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread ], [ %.sroa.18.1, %bb.p ] ; 4 uses
  %.sroa.0225.2 = phi ptr [ %.sroa.0225.1, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i ], [ %.sroa.0250.0, %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread ], [ %.sroa.0225.1, %bb.p ] ; 4 uses
  %.sroa.0250.1 = phi ptr [ %.sroa.0250.0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i ], [ %.sroa.0225.1, %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread ], [ %.sroa.0250.0, %bb.p ] ; 2 uses
  %.sroa.10.1 = phi i32 [ %.sroa.10.0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i ], [ %.sroa.18.1, %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread ], [ %.sroa.10.0, %bb.p ] ; 2 uses
  %.2 = phi i32 [ 805, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit.i ], [ %., %_ZL30isValidImmForSVEVecImmAddrModeN4llvm7SDValueEj.exit.thread ], [ %.0307, %bb.p ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0250.1, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !379
  %i.dl = zext i32 %.sroa.10.1 to i64
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dl
  %.sroa.0.0.copyload.i.i170 = load i16, ptr %i.dm, align 8, !tbaa !227 ; 2 uses
  %.not.i175 = icmp eq i16 %.sroa.0.0.copyload.i.i170, 0
  br i1 %.not.i175, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !666
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 112 ; 2 uses
  %i.dq = zext i16 %.sroa.0.0.copyload.i.i170 to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !96
  %.not = icmp eq ptr %i.ds, null
  br i1 %.not, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  br i1 %3, label %.critedge5, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0225.2, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !379
  %i.dv = zext i32 %.sroa.18.2 to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dv
  %.sroa.0.0.copyload.i.i176 = load i16, ptr %i.dw, align 8, !tbaa !227
  %i.dx = icmp eq i16 %.sroa.0.0.copyload.i.i176, 184
  br i1 %i.dx, label %bb.z, label %.critedge5

bb.z:                                             ; preds = %bb.y
  store ptr %.sroa.0225.2, ptr %16, align 8, !tbaa !394
  %.sroa.18.0..sroa_idx234 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.sroa.18.2, ptr %.sroa.18.0..sroa_idx234, align 8, !tbaa !337
  %.sroa.27.0..sroa_idx248 = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %.sroa.27.0.copyload, ptr %.sroa.27.0..sroa_idx248, align 4
  %i.dy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 190, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #35
  %.fca.0.extract53 = extractvalue { ptr, i32 } %i.dy, 0
  br label %.critedge5

.critedge5:                                       ; preds = %bb.x, %bb.z, %bb.y
  %.sroa.18.3 = phi i32 [ %.sroa.18.2, %bb.y ], [ 0, %bb.z ], [ %.sroa.18.2, %bb.x ] ; 2 uses
  %.sroa.0225.3 = phi ptr [ %.sroa.0225.2, %bb.y ], [ %.fca.0.extract53, %bb.z ], [ %.sroa.0225.2, %bb.x ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0225.3, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !379
  %i.eb = zext i32 %.sroa.18.3 to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.eb
  %.sroa.0.0.copyload.i.i184 = load i16, ptr %i.ec, align 8, !tbaa !227 ; 2 uses
  %.not.i189 = icmp eq i16 %.sroa.0.0.copyload.i.i184, 0
  br i1 %.not.i189, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit190

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit190: ; preds = %.critedge5
  %i.ed = zext i16 %.sroa.0.0.copyload.i.i184 to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !96
  %.not315 = icmp eq ptr %i.ef, null
  br i1 %.not315, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %switch.lookup

switch.lookup:                                    ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit190
  %.sroa.047.0.copyload = load i16, ptr %13, align 8, !tbaa !227 ; 2 uses
  %i.eg = sext i16 %.sroa.047.0.copyload to i64
  %i.eh = getelementptr i8, ptr @switch.table._ZNK4llvm21AArch64TargetLowering21ReplaceBITCASTResultsEPNS_6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGE, i64 %i.eg
  %switch.gep = getelementptr i8, ptr %i.eh, i64 -171
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16       ; 3 uses
  %.sroa.244.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !380
  %i.ei = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getValueTypeENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.047.0.copyload, ptr %.sroa.244.0.copyload) #35 ; 2 uses
  %i.ej = load i16, ptr %13, align 8, !tbaa !361  ; 4 uses
  %.not.i191 = icmp eq i16 %i.ej, 0
  br i1 %.not.i191, label %_ZNK4llvm3EVT15isFloatingPointEv.exit, label %.split309

.split309:                                        ; preds = %switch.lookup
  %i.ek = add i16 %i.ej, -12
  %or.cond.i.i = icmp ult i16 %i.ek, 7
  %i.el = add i16 %i.ej, -105
  %or.cond3.i.i = icmp ult i16 %i.el, 58
  %or.cond4.i.i = or i1 %or.cond.i.i, %or.cond3.i.i
  %i.em = add i16 %i.ej, -195
  %spec.select.i.i192 = icmp ult i16 %i.em, 21
  %i.en = or i1 %spec.select.i.i192, %or.cond4.i.i
  br i1 %i.en, label %bb.aa, label %bb.ab

_ZNK4llvm3EVT15isFloatingPointEv.exit:            ; preds = %switch.lookup
  %i.eo = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #37
  br i1 %i.eo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.split309, %_ZNK4llvm3EVT15isFloatingPointEv.exit
  %i.ep = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getValueTypeENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %switch.ext, ptr null) #35
  br label %bb.ab

bb.ab:                                            ; preds = %.split309, %bb.aa, %_ZNK4llvm3EVT15isFloatingPointEv.exit
  %.pn = phi { ptr, i32 } [ %i.ep, %bb.aa ], [ %i.ei, %_ZNK4llvm3EVT15isFloatingPointEv.exit ], [ %i.ei, %.split309 ] ; 2 uses
  %.sroa.546.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.045.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.eq = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 1, ptr null) #35 ; 2 uses
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  %i.es = extractvalue { ptr, i32 } %i.eq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  %i.et = load ptr, ptr %i.d, align 8, !tbaa !379
  %i.eu = zext i32 %.sroa.7.0.copyload to i64
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.eu ; 2 uses
  %.sroa.0.0.copyload.i.i193 = load i16, ptr %i.ev, align 8, !tbaa !227 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i194 = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.21.0.copyload.i.i195 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i194, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i193, ptr %17, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.sroa.21.0.copyload.i.i195, ptr %i.ew, align 8
  %.not.i198 = icmp eq i16 %.sroa.0.0.copyload.i.i193, 0
  br i1 %.not.i198, label %_ZNK4llvm3EVT15isFloatingPointEv.exit203, label %.split310

.split310:                                        ; preds = %bb.ab
  %i.ex = add i16 %.sroa.0.0.copyload.i.i193, -12
  %or.cond.i.i199 = icmp ult i16 %i.ex, 7
  %i.ey = add i16 %.sroa.0.0.copyload.i.i193, -105
  %or.cond3.i.i200 = icmp ult i16 %i.ey, 58
  %or.cond4.i.i201 = or i1 %or.cond.i.i199, %or.cond3.i.i200
  %i.ez = add i16 %.sroa.0.0.copyload.i.i193, -195
  %spec.select.i.i202 = icmp ult i16 %i.ez, 21
  %i.fa = or i1 %spec.select.i.i202, %or.cond4.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  br i1 %i.fa, label %bb.ac, label %bb.ad

_ZNK4llvm3EVT15isFloatingPointEv.exit203:         ; preds = %bb.ab
  %i.fb = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  br i1 %i.fb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.split310, %_ZNK4llvm3EVT15isFloatingPointEv.exit203
  store ptr %.sroa.0282.0.copyload, ptr %18, align 8, !tbaa !394
  %.sroa.7.0..sroa_idx286 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx286, align 8, !tbaa !337
  %.sroa.8.0..sroa_idx290 = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx290, align 4
  %i.fc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #35
  br label %bb.ae

bb.ad:                                            ; preds = %.split310, %_ZNK4llvm3EVT15isFloatingPointEv.exit203
  store ptr %.sroa.0282.0.copyload, ptr %19, align 8, !tbaa !394
  %.sroa.7.0..sroa_idx288 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx288, align 8, !tbaa !337
  %.sroa.8.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx292, align 4
  %i.fd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 %switch.ext, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #35
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn316 = phi { ptr, i32 } [ %i.fc, %bb.ac ], [ %i.fd, %bb.ad ] ; 2 uses
  %.sroa.0.0 = extractvalue { ptr, i32 } %.pn316, 0
  %.sroa.6.0 = extractvalue { ptr, i32 } %.pn316, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #35
  %i.fe = load ptr, ptr %i.a, align 8, !tbaa !384 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %20, ptr noundef nonnull align 8 dereferenceable(12) %i.fe, i64 12, i1 false), !tbaa.struct !395
  %i.ff = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %.sroa.0.0, ptr %i.ff, align 16, !tbaa !394
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !337
  %i.fg = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.fg, ptr noundef nonnull align 8 dereferenceable(12) %i.fh, i64 12, i1 false), !tbaa.struct !395
  %i.fi = getelementptr inbounds nuw i8, ptr %20, i64 48
  store ptr %.sroa.0250.1, ptr %i.fi, align 16, !tbaa !394
  %.sroa.10.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %20, i64 56
  store i32 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx259, align 8, !tbaa !337
  %i.fj = getelementptr inbounds nuw i8, ptr %20, i64 64
  store ptr %.sroa.0225.3, ptr %i.fj, align 16, !tbaa !394
  %.sroa.18.0..sroa_idx236 = getelementptr inbounds nuw i8, ptr %20, i64 72
  store i32 %.sroa.18.3, ptr %.sroa.18.0..sroa_idx236, align 8, !tbaa !337
  %i.fk = getelementptr inbounds nuw i8, ptr %20, i64 80
  store ptr %.sroa.045.0, ptr %i.fk, align 16, !tbaa !394
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 88
  store i32 %.sroa.546.0, ptr %.sroa.546.0..sroa_idx, align 8, !tbaa !337
  store ptr %20, ptr %21, align 8, !tbaa !675
  %i.fl = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 6, ptr %i.fl, align 8, !tbaa !676
  %i.fm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef %.2, ptr noundef nonnull align 8 dereferenceable(12) %14, ptr %i.er, i32 %i.es, ptr noundef nonnull byval(%"class.llvm::ArrayRef.463") align 8 %21) #35 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.fm, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.fm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  br label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread: ; preds = %bb.g, %.critedge5, %bb.w, %bb.ae, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit190, %bb.f, %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.sroa.10295.1 = phi i32 [ 0, %bb.g ], [ 0, %_ZNK4llvm3EVT13getSizeInBitsEv.exit ], [ 0, %bb.f ], [ %.fca.1.extract, %bb.ae ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit190 ], [ 0, %bb.w ], [ 0, %.critedge5 ]
end_hunk_5
