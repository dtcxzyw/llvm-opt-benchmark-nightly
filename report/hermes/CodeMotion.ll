Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/CodeMotion?download=true
inline.NumInlined: 313
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes10CodeMotion13runOnFunctionEPNS_8FunctionE:bb.a
._crit_edge53:                                    ; preds = %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, %._crit_edge
  %.2.lcssa = phi i1 [ %.0.lcssa, %._crit_edge ], [ %i.hl, %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit ]
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = and i32 %i.ct, 1
  %.not.i.i.i17 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i17, label %bb.n, label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit.i

bb.n:                                             ; preds = %._crit_edge53
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !45
  call void @_ZdlPv(ptr noundef %i.cw) #6
  br label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit.i

_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit.i: ; preds = %bb.n, %._crit_edge53
  %i.cx = load i32, ptr %4, align 8
  %i.cy = and i32 %i.cx, 1
  %.not.i.i1.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i1.i, label %bb.o, label %_ZN6hermes12LoopAnalysisD2Ev.exit

bb.o:                                             ; preds = %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !45
  call void @_ZdlPv(ptr noundef %i.da) #6
  br label %_ZN6hermes12LoopAnalysisD2Ev.exit

_ZN6hermes12LoopAnalysisD2Ev.exit:                ; preds = %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !48 ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  %.pre1.i.i = load ptr, ptr %i.db, align 8, !tbaa !49 ; 3 uses
  br i1 %i.de, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN6hermes12LoopAnalysisD2Ev.exit
  %i.df = zext i32 %i.dd to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.df, 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.pre1.i.i, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.011.i.i.i = phi ptr [ %i.dr, %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i ], [ %.pre1.i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.dh = load ptr, ptr %.011.i.i.i, align 8, !tbaa !36
  %magicptr.i.i.i = ptrtoint ptr %i.dh to i64
  switch i64 %magicptr.i.i.i, label %bb.p [
    i64 -8, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i
    i64 -16, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i
  ]

bb.p:                                             ; preds = %.lr.ph.i.i.i18
  %i.di = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !51 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !54 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !55
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dq) #7
  br label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 56) #7
  br label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i, %bb.p, %.lr.ph.i.i.i18, %.lr.ph.i.i.i18
  %i.dr = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.dr, %i.dg
  br i1 %.not.i.i.i19, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i, label %.lr.ph.i.i.i18, !llvm.loop !26

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.db, align 8, !tbaa !49
  br label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i

_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i, %_ZN6hermes12LoopAnalysisD2Ev.exit
  %i.ds = phi ptr [ %.pre.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i ], [ %.pre1.i.i, %_ZN6hermes12LoopAnalysisD2Ev.exit ]
  call void @_ZdlPv(ptr noundef %i.ds) #6
  %i.dt = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i
  call void @free(ptr noundef %i.dt) #6
  br label %_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EED2Ev.exit

_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !57  ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i20, label %_ZN6hermes17PostOrderAnalysisD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EED2Ev.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !58
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #7
  br label %_ZN6hermes17PostOrderAnalysisD2Ev.exit

_ZN6hermes17PostOrderAnalysisD2Ev.exit:           ; preds = %_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i1 %.2.lcssa

bb.u:                                             ; preds = %.lr.ph52, %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit
  %.250 = phi i1 [ %.0.lcssa, %.lr.ph52 ], [ %i.hl, %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit ]
  %.sroa.027.049 = phi ptr [ %i.e, %.lr.ph52 ], [ %i.hm, %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit ] ; 2 uses
  %i.ec = load ptr, ptr %.sroa.027.049, align 8, !tbaa !36 ; 13 uses
  %i.ed = load i32, ptr %4, align 8
  %i.ee = and i32 %i.ed, 1
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ee, 0        ; 2 uses
  %i.ef = load ptr, ptr %i.g, align 8
  %i.eg = select i1 %.not.i.i.i.i.i.i, ptr %i.ef, ptr %i.g ; 2 uses
  %i.eh = load i32, ptr %i.h, align 8
  %i.ei = select i1 %.not.i.i.i.i.i.i, i32 %i.eh, i32 16 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ek = ptrtoint ptr %i.ec to i64
  %i.el = trunc i64 %i.ek to i32                  ; 2 uses
  %i.em = lshr i32 %i.el, 4
  %i.en = lshr i32 %i.el, 9
  %i.eo = xor i32 %i.em, %i.en
  %i.ep = add i32 %i.ei, -1                       ; 2 uses
  %.02745.i.i.i.i = and i32 %i.ep, %i.eo          ; 2 uses
  %i.eq = zext nneg i32 %.02745.i.i.i.i to i64
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !36 ; 2 uses
  %i.et = icmp eq ptr %i.ec, %i.es
  br i1 %i.et, label %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i, label %.lr.ph.i.i.i.i, !prof !59

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %bb.w
  %i.eu = phi ptr [ %i.ez, %bb.w ], [ %i.es, %bb.v ]
  %.02748.i.i.i.i = phi i32 [ %.027.i.i.i.i, %bb.w ], [ %.02745.i.i.i.i, %bb.v ]
  %.047.i.i.i.i = phi i32 [ %i.ev, %bb.w ], [ 1, %bb.v ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.eu, inttoptr (i64 -8 to ptr)
  br i1 %.not.i.i, label %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i, label %bb.w, !prof !60

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ev = add i32 %.047.i.i.i.i, 1
  %i.ew = add i32 %.047.i.i.i.i, %.02748.i.i.i.i
  %.027.i.i.i.i = and i32 %i.ew, %i.ep            ; 2 uses
  %i.ex = zext i32 %.027.i.i.i.i to i64
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !36 ; 2 uses
  %i.fa = icmp eq ptr %i.ec, %i.ez
  br i1 %i.fa, label %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread, label %.lr.ph.i.i.i.i, !prof !61, !llvm.loop !27

_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.u
  %i.fb = call noundef ptr @_ZNK6hermes12LoopAnalysis13getLoopHeaderEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(528) %4, ptr noundef %i.ec) #6 ; 0 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ec, i64 56 ; 3 uses
  %.sroa.010.020.i = load ptr, ptr %i.fc, align 8, !tbaa !62 ; 2 uses
  %.not1621.i = icmp eq ptr %.sroa.010.020.i, %i.fc
  br i1 %.not1621.i, label %_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, label %.lr.ph24.split.us.i

_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread: ; preds = %bb.w
  %i.fd = call noundef ptr @_ZNK6hermes12LoopAnalysis13getLoopHeaderEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(528) %4, ptr noundef %i.ec) #6
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ec, i64 56 ; 3 uses
  %.sroa.010.020.i35 = load ptr, ptr %i.fe, align 8, !tbaa !62 ; 2 uses
  %.not1621.i36 = icmp eq ptr %.sroa.010.020.i35, %i.fe
  br i1 %.not1621.i36, label %_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, label %.lr.ph24.split.preheader.i

_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i: ; preds = %bb.v
  %i.ff = call noundef ptr @_ZNK6hermes12LoopAnalysis13getLoopHeaderEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(528) %4, ptr noundef %i.ec) #6
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ec, i64 56 ; 3 uses
  %.sroa.010.02039.i = load ptr, ptr %i.fg, align 8, !tbaa !62 ; 2 uses
  %.not162140.i = icmp eq ptr %.sroa.010.02039.i, %i.fg
  br i1 %.not162140.i, label %_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, label %.lr.ph24.split.preheader.i

.lr.ph24.split.preheader.i:                       ; preds = %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i
  %i.fh = phi ptr [ %i.ff, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i ], [ %i.fd, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread ]
  %i.fi = phi ptr [ %i.fg, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i ], [ %i.fe, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread ]
  %.sroa.010.0204245.i = phi ptr [ %.sroa.010.02039.i, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i ], [ %.sroa.010.020.i35, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread ]
  br label %.lr.ph24.split.i

.lr.ph24.split.us.i:                              ; preds = %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i, %.loopexit.us.i
  %.sroa.010.023.us.i = phi ptr [ %.sroa.010.0.us.i, %.loopexit.us.i ], [ %.sroa.010.020.i, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i ] ; 5 uses
  %.01622.us.i = phi i1 [ %.4.us.i, %.loopexit.us.i ], [ false, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.010.023.us.i, i64 16
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !18
  %i.fl = icmp eq i8 %i.fk, 33
  br i1 %i.fl, label %.loopexit.us.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph24.split.us.i
  %i.fm = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.010.023.us.i) #6 ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph.us.i, label %.loopexit.us.i

.lr.ph.us.i:                                      ; preds = %bb.x, %bb.ac
  %.019.us.us.i = phi i32 [ %i.fy, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  %.118.us.us.i = phi i1 [ %.3.us.us.i, %bb.ac ], [ %.01622.us.i, %bb.x ] ; 6 uses
  %i.fo = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.010.023.us.i, i32 noundef %.019.us.us.i) #6 ; 4 uses
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !18
  %i.fq = add i8 %i.fp, -109
  %i.fr = icmp ult i8 %i.fq, -107
  %i.fs = getelementptr inbounds i8, ptr %i.fo, i64 -16 ; 2 uses
  br i1 %i.fr, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %.lr.ph.us.i
  %i.ft = call noundef zeroext i1 @_ZNK6hermes5Value10hasOneUserEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fo) #6
  br i1 %i.ft, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.fu = call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %i.fs) #6
  %.not.us.us.i = icmp eq i32 %i.fu, 0
  br i1 %.not.us.us.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fv = load i8, ptr %i.fo, align 8, !tbaa !18
  %.fr17.us.us.i = freeze i8 %i.fv                ; 2 uses
  %i.fw = add i8 %.fr17.us.us.i, -75
  %i.fx = icmp ult i8 %i.fw, 15
  br i1 %i.fx, label %bb.ac, label %switch.early.test.us.us.i

switch.early.test.us.us.i:                        ; preds = %bb.aa
  switch i8 %.fr17.us.us.i, label %bb.ab [
    i8 55, label %bb.ac
    i8 33, label %bb.ac
  ]

bb.ab:                                            ; preds = %switch.early.test.us.us.i
  call void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %i.fs, ptr noundef nonnull %.sroa.010.023.us.i) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %switch.early.test.us.us.i, %switch.early.test.us.us.i, %bb.aa, %bb.z, %bb.y, %.lr.ph.us.i
  %.3.us.us.i = phi i1 [ %.118.us.us.i, %.lr.ph.us.i ], [ true, %bb.ab ], [ %.118.us.us.i, %switch.early.test.us.us.i ], [ %.118.us.us.i, %switch.early.test.us.us.i ], [ %.118.us.us.i, %bb.z ], [ %.118.us.us.i, %bb.y ], [ %.118.us.us.i, %bb.aa ] ; 2 uses
  %i.fy = add nuw nsw i32 %.019.us.us.i, 1        ; 2 uses
  %exitcond28.not.i = icmp eq i32 %i.fy, %i.fm
  br i1 %exitcond28.not.i, label %.loopexit.us.i, label %.lr.ph.us.i, !llvm.loop !28

.loopexit.us.i:                                   ; preds = %bb.ac, %bb.x, %.lr.ph24.split.us.i
  %.4.us.i = phi i1 [ %.01622.us.i, %.lr.ph24.split.us.i ], [ %.01622.us.i, %bb.x ], [ %.3.us.us.i, %bb.ac ] ; 2 uses
  %.sroa.010.0.us.i = load ptr, ptr %.sroa.010.023.us.i, align 8, !tbaa !62 ; 2 uses
  %.not16.us.i = icmp eq ptr %.sroa.010.0.us.i, %i.fc
  br i1 %.not16.us.i, label %_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, label %.lr.ph24.split.us.i, !llvm.loop !29

.lr.ph24.split.i:                                 ; preds = %.loopexit.i, %.lr.ph24.split.preheader.i
  %.sroa.010.023.i = phi ptr [ %.sroa.010.0.i, %.loopexit.i ], [ %.sroa.010.0204245.i, %.lr.ph24.split.preheader.i ] ; 5 uses
  %.01622.i = phi i1 [ %.4.i, %.loopexit.i ], [ false, %.lr.ph24.split.preheader.i ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i, i64 16
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !18
  %i.gb = icmp eq i8 %i.ga, 33
  br i1 %i.gb, label %.loopexit.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph24.split.i
  %i.gc = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.010.023.i) #6 ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, 0
  br i1 %i.gd, label %.lr.ph.i21, label %.loopexit.i

.lr.ph.i21:                                       ; preds = %bb.ad, %bb.ak
  %.019.i = phi i32 [ %i.gr, %bb.ak ], [ 0, %bb.ad ] ; 2 uses
  %.118.i = phi i1 [ %.3.i, %bb.ak ], [ %.01622.i, %bb.ad ] ; 7 uses
  %i.ge = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.010.023.i, i32 noundef %.019.i) #6 ; 5 uses
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !18
  %i.gg = add i8 %i.gf, -109
  %i.gh = icmp ult i8 %i.gg, -107
  %i.gi = getelementptr inbounds i8, ptr %i.ge, i64 -16 ; 2 uses
  br i1 %i.gh, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i21
  %i.gj = call noundef zeroext i1 @_ZNK6hermes5Value10hasOneUserEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ge) #6
  br i1 %i.gj, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.gk = call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %i.gi) #6
  %.not.i22 = icmp eq i32 %i.gk, 0
  br i1 %.not.i22, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.gl = load i8, ptr %i.ge, align 8, !tbaa !18
  %.fr17.i = freeze i8 %i.gl                      ; 2 uses
  %i.gm = add i8 %.fr17.i, -75
  %i.gn = icmp ult i8 %i.gm, 15
  br i1 %i.gn, label %bb.ak, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.ag
  switch i8 %.fr17.i, label %bb.ah [
    i8 55, label %bb.ak
    i8 33, label %bb.ak
  ]

bb.ah:                                            ; preds = %switch.early.test.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !74 ; 2 uses
  %.not19.i = icmp eq ptr %i.gp, %i.ec
  br i1 %.not19.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gq = call noundef ptr @_ZNK6hermes12LoopAnalysis13getLoopHeaderEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(528) %4, ptr noundef %i.gp) #6
  %.not20.i = icmp eq ptr %i.gq, %i.fh
  br i1 %.not20.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %i.gi, ptr noundef nonnull %.sroa.010.023.i) #6
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %switch.early.test.i, %switch.early.test.i, %bb.ag, %bb.af, %bb.ae, %.lr.ph.i21
  %.3.i = phi i1 [ %.118.i, %.lr.ph.i21 ], [ true, %bb.aj ], [ %.118.i, %bb.ai ], [ %.118.i, %switch.early.test.i ], [ %.118.i, %bb.af ], [ %.118.i, %bb.ae ], [ %.118.i, %bb.ag ], [ %.118.i, %switch.early.test.i ] ; 2 uses
  %i.gr = add nuw nsw i32 %.019.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gr, %i.gc
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i21, !llvm.loop !28

.loopexit.i:                                      ; preds = %bb.ak, %bb.ad, %.lr.ph24.split.i
  %.4.i = phi i1 [ %.01622.i, %.lr.ph24.split.i ], [ %.01622.i, %bb.ad ], [ %.3.i, %bb.ak ] ; 2 uses
  %.sroa.010.0.i = load ptr, ptr %.sroa.010.023.i, align 8, !tbaa !62 ; 2 uses
  %.not16.i = icmp eq ptr %.sroa.010.0.i, %i.fi
  br i1 %.not16.i, label %_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, label %.lr.ph24.split.i, !llvm.loop !29

_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit: ; preds = %.loopexit.i, %.loopexit.us.i, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i
  %.016.lcssa.i = phi i1 [ false, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i ], [ false, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i ], [ false, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread ], [ %.4.us.i, %.loopexit.us.i ], [ %.4.i, %.loopexit.i ] ; 3 uses
  %i.gs = call noundef ptr @_ZNK6hermes12LoopAnalysis16getLoopPreheaderEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(528) %4, ptr noundef %i.ec) #6 ; 2 uses
  %.not.i23 = icmp eq ptr %i.gs, null
  br i1 %.not.i23, label %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, label %bb.al

bb.al:                                            ; preds = %_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 56
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !62 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !21 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ec, i64 56 ; 2 uses
  %.not2022.i = icmp eq ptr %i.gw, %i.gx
  br i1 %.not2022.i, label %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, label %.preheader.i24

.preheader.i24:                                   ; preds = %bb.al, %_ZL16canHoistFromLoopPN6hermes11InstructionES1_RKNS_13DominanceInfoE.exit.i
  %.01424.i = phi i1 [ %.1.i, %_ZL16canHoistFromLoopPN6hermes11InstructionES1_RKNS_13DominanceInfoE.exit.i ], [ false, %bb.al ] ; 2 uses
  %.sroa.016.023.i = phi ptr [ %i.gz, %_ZL16canHoistFromLoopPN6hermes11InstructionES1_RKNS_13DominanceInfoE.exit.i ], [ %i.gw, %bb.al ] ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.016.023.i, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !21 ; 2 uses
  %i.ha = call noundef zeroext i1 @_ZN6hermes33isSimpleSideEffectFreeInstructionEPNS_11InstructionE(ptr noundef nonnull %.sroa.016.023.i) #6
  br i1 %i.ha, label %bb.am, label %_ZL16canHoistFromLoopPN6hermes11InstructionES1_RKNS_13DominanceInfoE.exit.i

bb.am:                                            ; preds = %.preheader.i24
  %i.hb = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.016.023.i) #6 ; 2 uses
  %i.hc = icmp slt i32 %i.hb, 1
  br i1 %i.hc, label %.loopexit.i26, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.am, %.critedge.i.i
  %.01317.i.i = phi i32 [ %i.hj, %.critedge.i.i ], [ 0, %bb.am ] ; 2 uses
  %i.hd = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.016.023.i, i32 noundef %.01317.i.i) #6 ; 2 uses
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !18
  %i.hf = add i8 %i.he, -109
  %i.hg = icmp ult i8 %i.hf, -107
  br i1 %i.hg, label %.critedge.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i
  %i.hh = getelementptr inbounds i8, ptr %i.hd, i64 -16
  %i.hi = call noundef zeroext i1 @_ZNK6hermes13DominanceInfo17properlyDominatesEPKNS_11InstructionES3_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.gu) #6
  br i1 %i.hi, label %.critedge.i.i, label %_ZL16canHoistFromLoopPN6hermes11InstructionES1_RKNS_13DominanceInfoE.exit.i

.critedge.i.i:                                    ; preds = %bb.an, %.lr.ph.i.i
  %i.hj = add nuw nsw i32 %.01317.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.hj, %i.hb
  br i1 %exitcond.not.i.i, label %.loopexit.i26, label %.lr.ph.i.i, !llvm.loop !30

.loopexit.i26:                                    ; preds = %.critedge.i.i, %bb.am
  call void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.016.023.i, ptr noundef nonnull %i.gu) #6
  br label %_ZL16canHoistFromLoopPN6hermes11InstructionES1_RKNS_13DominanceInfoE.exit.i

_ZL16canHoistFromLoopPN6hermes11InstructionES1_RKNS_13DominanceInfoE.exit.i: ; preds = %bb.an, %.loopexit.i26, %.preheader.i24
  %.1.i = phi i1 [ true, %.loopexit.i26 ], [ %.01424.i, %.preheader.i24 ], [ %.01424.i, %bb.an ] ; 2 uses
  %.not20.i25 = icmp eq ptr %i.gz, %i.gx
  br i1 %.not20.i25, label %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit.loopexit, label %.preheader.i24, !llvm.loop !31

_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit.loopexit: ; preds = %_ZL16canHoistFromLoopPN6hermes11InstructionES1_RKNS_13DominanceInfoE.exit.i
  %i.hk = or i1 %.016.lcssa.i, %.1.i
  br label %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit

_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit: ; preds = %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit.loopexit, %_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, %bb.al
  %.0.i = phi i1 [ %.016.lcssa.i, %_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit ], [ %.016.lcssa.i, %bb.al ], [ %i.hk, %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit.loopexit ]
  %i.hl = or i1 %.250, %.0.i                      ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.027.049, i64 8 ; 2 uses
  %.not42 = icmp eq ptr %i.hm, %i.f
  br i1 %.not42, label %._crit_edge53, label %bb.u
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes17PostOrderAnalysisC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6hermes13DominanceInfoC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

declare void @_ZN6hermes12LoopAnalysisC1EPNS_8FunctionERKNS_13DominanceInfoE(ptr noundef nonnull align 8 dereferenceable(528), ptr noundef, ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes16createCodeMotionEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN6hermes10CodeMotionESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #8, !noalias !77 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !82, !noalias !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str, ptr %i.c, align 8, !tbaa !83, !noalias !77
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 10, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !84, !noalias !77
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes10CodeMotionE, i64 16), ptr %i.a, align 8, !tbaa !86, !noalias !77
  store ptr %i.a, ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes10CodeMotionD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL21findIdenticalInWindowPN6hermes11InstructionES1_j(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !18
  %i.c = add i8 %i.b, -75
  %i.d = icmp ult i8 %i.c, 15
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !18
  %i.g = add i8 %i.f, -75
  %i.h = icmp ult i8 %i.g, 15
  br i1 %i.h, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZNK6hermes11Instruction13isIdenticalToEPKS0_(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull %1) #6
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader.preheader
  %i.j = tail call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %0) #6
  %.not12 = icmp eq i32 %i.j, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #6
  %.not13 = icmp eq i32 %i.k, 0
  br i1 %.not13, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i8, ptr %i.n, align 8, !tbaa !18
  %i.p = add i8 %i.o, -75
  %i.q = icmp ult i8 %i.p, 15
  br i1 %i.q, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %bb.e
  %i.r = tail call noundef zeroext i1 @_ZNK6hermes11Instruction13isIdenticalToEPKS0_(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull %i.m) #6
  br i1 %i.r, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader.1
  %i.s = tail call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %0) #6
  %.not12.1 = icmp eq i32 %i.s, 0
  br i1 %.not12.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %i.m) #6
  %.not13.1 = icmp eq i32 %i.t, 0
  br i1 %.not13.1, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i8, ptr %i.w, align 8, !tbaa !18
  %i.y = add i8 %i.x, -75
  %i.z = icmp ult i8 %i.y, 15
  br i1 %i.z, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %bb.h
  %i.aa = tail call noundef zeroext i1 @_ZNK6hermes11Instruction13isIdenticalToEPKS0_(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull %i.v) #6
  br i1 %i.aa, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.preheader.2
  %i.ab = tail call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %0) #6
  %.not12.2 = icmp eq i32 %i.ab, 0
  br i1 %.not12.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %i.v) #6
  %.not13.2 = icmp eq i32 %i.ac, 0
  br i1 %.not13.2, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !18
  %i.ah = add i8 %i.ag, -75
  %i.ai = icmp ult i8 %i.ah, 15
  br i1 %i.ai, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %bb.k
  %i.aj = tail call noundef zeroext i1 @_ZNK6hermes11Instruction13isIdenticalToEPKS0_(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull %i.ae) #6
  br i1 %i.aj, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.preheader.3
  %i.ak = tail call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %0) #6
  %.not12.3 = icmp eq i32 %i.ak, 0
  br i1 %.not12.3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = tail call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ae) #6
end_hunk_0
