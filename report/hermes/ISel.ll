inline.NumInlined: 3485
inline.NumDeleted: 1496
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN6hermes3hbc7HBCISel8generateEPNS_18SourceMapGeneratorE:bb.a
  %.02747.i.i.i.i = phi i32 [ %i.cu, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %i.ct = icmp eq ptr %i.cs, inttoptr (i64 -8 to ptr)
  br i1 %i.ct, label %_ZNK4llvh6detail12DenseSetImplIPKN6hermes10BasicBlockENS_13SmallDenseMapIS5_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_EENS0_12DenseSetPairIS5_EEEES9_E5countES5_.exit.thread.i, label %bb.h, !prof !74

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cu = add i32 %.02747.i.i.i.i, 1
  %i.cv = add i32 %.02747.i.i.i.i, %.02948.i.i.i.i
  %.029.i.i.i.i = and i32 %i.cv, %i.cn            ; 2 uses
  %i.cw = zext i32 %.029.i.i.i.i to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !86 ; 2 uses
  %i.cz = icmp eq ptr %i.ca, %i.cy
  br i1 %i.cz, label %_ZNK4llvh6detail12DenseSetImplIPKN6hermes10BasicBlockENS_13SmallDenseMapIS5_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_EENS0_12DenseSetPairIS5_EEEES9_E5countES5_.exit.i, label %.lr.ph.i.i.i.i, !prof !89, !llvm.loop !450

_ZNK4llvh6detail12DenseSetImplIPKN6hermes10BasicBlockENS_13SmallDenseMapIS5_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_EENS0_12DenseSetPairIS5_EEEES9_E5countES5_.exit.i: ; preds = %bb.h, %bb.g
  %i.da = load ptr, ptr %9, align 8, !tbaa !417, !alias.scope !436, !noalias !451 ; 2 uses
  %i.db = load i32, ptr %i.br, align 8, !tbaa !418, !alias.scope !436, !noalias !451 ; 7 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvh6detail12DenseSetImplIPKN6hermes10BasicBlockENS_13SmallDenseMapIS5_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_EENS0_12DenseSetPairIS5_EEEES9_E5countES5_.exit.i
  %i.dd = add i32 %i.db, -1                       ; 2 uses
  %.02944.i.i.i.i = and i32 %i.dd, %i.cm          ; 2 uses
  %i.de = zext nneg i32 %.02944.i.i.i.i to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.de ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !86, !noalias !451 ; 2 uses
  %i.dh = icmp eq ptr %i.ca, %i.dg
  br i1 %i.dh, label %_ZNK4llvh6detail12DenseSetImplIPKN6hermes10BasicBlockENS_13SmallDenseMapIS5_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_EENS0_12DenseSetPairIS5_EEEES9_E5countES5_.exit.thread.i, label %.lr.ph.i.i.i20.i, !prof !88

.lr.ph.i.i.i20.i:                                 ; preds = %bb.i, %bb.k
  %i.di = phi ptr [ %i.ds, %bb.k ], [ %i.dg, %bb.i ] ; 2 uses
  %i.dj = phi ptr [ %i.dr, %bb.k ], [ %i.df, %bb.i ] ; 2 uses
  %.02947.i.i.i.i = phi i32 [ %.029.i.i.i21.i, %bb.k ], [ %.02944.i.i.i.i, %bb.i ]
  %.02746.i.i.i.i = phi i32 [ %i.do, %bb.k ], [ 1, %bb.i ] ; 2 uses
  %.03245.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.k ], [ null, %bb.i ] ; 4 uses
  %i.dk = icmp eq ptr %i.di, inttoptr (i64 -8 to ptr)
  br i1 %i.dk, label %bb.j, label %bb.k, !prof !74

bb.j:                                             ; preds = %.lr.ph.i.i.i20.i
  %.not.i.i.i22.i = icmp eq ptr %.03245.i.i.i.i, null
  %i.dl = select i1 %.not.i.i.i22.i, ptr %i.dj, ptr %.03245.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i20.i
  %i.dm = icmp eq ptr %i.di, inttoptr (i64 -16 to ptr)
  %i.dn = icmp eq ptr %.03245.i.i.i.i, null
  %or.cond.not.i.i.i.i = select i1 %i.dm, i1 %i.dn, i1 false
  %spec.select.i.i.i.i = select i1 %or.cond.not.i.i.i.i, ptr %i.dj, ptr %.03245.i.i.i.i
  %i.do = add i32 %.02746.i.i.i.i, 1
  %i.dp = add i32 %.02746.i.i.i.i, %.02947.i.i.i.i
  %.029.i.i.i21.i = and i32 %i.dp, %i.dd          ; 2 uses
  %i.dq = zext i32 %.029.i.i.i21.i to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dq ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !86, !noalias !451 ; 2 uses
  %i.dt = icmp eq ptr %i.ca, %i.ds
  br i1 %i.dt, label %_ZNK4llvh6detail12DenseSetImplIPKN6hermes10BasicBlockENS_13SmallDenseMapIS5_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_EENS0_12DenseSetPairIS5_EEEES9_E5countES5_.exit.thread.i, label %.lr.ph.i.i.i20.i, !prof !89, !llvm.loop !419

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i.i: ; preds = %bb.j, %_ZNK4llvh6detail12DenseSetImplIPKN6hermes10BasicBlockENS_13SmallDenseMapIS5_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_EENS0_12DenseSetPairIS5_EEEES9_E5countES5_.exit.i
  %.sink.i.i.i23.i = phi ptr [ %i.dl, %bb.j ], [ null, %_ZNK4llvh6detail12DenseSetImplIPKN6hermes10BasicBlockENS_13SmallDenseMapIS5_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_EENS0_12DenseSetPairIS5_EEEES9_E5countES5_.exit.i ]
  %i.du = load i32, ptr %i.bs, align 8, !tbaa !456, !alias.scope !436, !noalias !451 ; 3 uses
  %i.dv = shl i32 %i.du, 2
  %i.dw = add i32 %i.dv, 4
  %i.dx = mul i32 %i.db, 3
  %.not.i.i4.i.i = icmp ult i32 %i.dw, %i.dx
  br i1 %.not.i.i4.i.i, label %bb.m, label %bb.l, !prof !74

bb.l:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i.i
  %i.dy = shl i32 %i.db, 1
  br label %.sink.split.i.i.i.i

bb.m:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i.i
  %i.dz = load i32, ptr %i.bt, align 4, !tbaa !457, !alias.scope !436, !noalias !451
  %.neg.i.i.i.i = xor i32 %i.du, -1
  %.neg12.i.i.i.i = add i32 %i.db, %.neg.i.i.i.i
  %i.ea = sub i32 %.neg12.i.i.i.i, %i.dz
  %i.eb = lshr i32 %i.db, 3
  %.not10.i.i.i.i = icmp ugt i32 %i.ea, %i.eb
  br i1 %.not10.i.i.i.i, label %bb.q, label %.sink.split.i.i.i.i, !prof !74

.sink.split.i.i.i.i:                              ; preds = %bb.m, %bb.l
  %.sink.i.i5.i.i = phi i32 [ %i.dy, %bb.l ], [ %i.db, %bb.m ]
  call void @_ZN4llvh8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %.sink.i.i5.i.i), !noalias !451
  %i.ec = load ptr, ptr %9, align 8, !tbaa !417, !alias.scope !436, !noalias !451 ; 2 uses
  %i.ed = load i32, ptr %i.br, align 8, !tbaa !418, !alias.scope !436, !noalias !451 ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i, label %bb.n

bb.n:                                             ; preds = %.sink.split.i.i.i.i
  %i.ef = add i32 %i.ed, -1                       ; 2 uses
  %.02944.i.i.i = and i32 %i.ef, %i.cm            ; 2 uses
  %i.eg = zext nneg i32 %.02944.i.i.i to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eg ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !86, !noalias !451 ; 2 uses
  %i.ej = icmp eq ptr %i.ca, %i.ei
  br i1 %i.ej, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i, label %.lr.ph.i.i.i, !prof !88

.lr.ph.i.i.i:                                     ; preds = %bb.n, %bb.p
  %i.ek = phi ptr [ %i.eu, %bb.p ], [ %i.ei, %bb.n ] ; 2 uses
  %i.el = phi ptr [ %i.et, %bb.p ], [ %i.eh, %bb.n ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.p ], [ %.02944.i.i.i, %bb.n ]
  %.02746.i.i.i = phi i32 [ %i.eq, %bb.p ], [ 1, %bb.n ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.p ], [ null, %bb.n ] ; 4 uses
  %i.em = icmp eq ptr %i.ek, inttoptr (i64 -8 to ptr)
  br i1 %i.em, label %bb.o, label %bb.p, !prof !74

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.en = select i1 %.not.i.i.i, ptr %i.el, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.eo = icmp eq ptr %i.ek, inttoptr (i64 -16 to ptr)
  %i.ep = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.eo, i1 %i.ep, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.el, ptr %.03245.i.i.i
  %i.eq = add i32 %.02746.i.i.i, 1
  %i.er = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.er, %i.ef              ; 2 uses
  %i.es = zext i32 %.029.i.i.i to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.es ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !86, !noalias !451 ; 2 uses
  %i.ev = icmp eq ptr %i.ca, %i.eu
  br i1 %i.ev, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i, label %.lr.ph.i.i.i, !prof !89, !llvm.loop !419

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i: ; preds = %bb.p, %bb.o, %bb.n, %.sink.split.i.i.i.i
  %.sink.i.i.i = phi ptr [ %i.en, %bb.o ], [ null, %.sink.split.i.i.i.i ], [ %i.eh, %bb.n ], [ %i.et, %bb.p ]
  %.pre.i.i.i = load i32, ptr %i.bs, align 8, !tbaa !456, !alias.scope !436, !noalias !451
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i, %bb.m
  %i.ew = phi ptr [ %.sink.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i ], [ %.sink.i.i.i23.i, %bb.m ] ; 2 uses
  %i.ex = phi i32 [ %.pre.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit.i ], [ %i.du, %bb.m ]
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr %i.bs, align 8, !tbaa !456, !alias.scope !436, !noalias !451
  %i.ez = load ptr, ptr %i.ew, align 8, !tbaa !86, !noalias !451
  %i.fa = icmp eq ptr %i.ez, inttoptr (i64 -8 to ptr)
  br i1 %i.fa, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16InsertIntoBucketIRKS5_JRS7_EEEPSB_SI_OT_DpOT0_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fb = load i32, ptr %i.bt, align 4, !tbaa !457, !alias.scope !436, !noalias !451
  %i.fc = add i32 %i.fb, -1
  store i32 %i.fc, ptr %i.bt, align 4, !tbaa !457, !alias.scope !436, !noalias !451
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16InsertIntoBucketIRKS5_JRS7_EEEPSB_SI_OT_DpOT0_.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16InsertIntoBucketIRKS5_JRS7_EEEPSB_SI_OT_DpOT0_.exit.i.i: ; preds = %bb.r, %bb.q
  store ptr %i.ca, ptr %i.ew, align 8, !tbaa !86, !noalias !451
  br label %_ZNK4llvh6detail12DenseSetImplIPKN6hermes10BasicBlockENS_13SmallDenseMapIS5_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_EENS0_12DenseSetPairIS5_EEEES9_E5countES5_.exit.thread.i

_ZNK4llvh6detail12DenseSetImplIPKN6hermes10BasicBlockENS_13SmallDenseMapIS5_NS0_13DenseSetEmptyELj16ENS_12DenseMapInfoIS5_EENS0_12DenseSetPairIS5_EEEES9_E5countES5_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i, %bb.k, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E16InsertIntoBucketIRKS5_JRS7_EEEPSB_SI_OT_DpOT0_.exit.i.i, %bb.i, %.lr.ph.i
  %i.fd = add nuw nsw i32 %.sroa.429.055.i, 1     ; 2 uses
  %.not46.i = icmp eq i32 %i.fd, %i.by
  br i1 %.not46.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge60.i:                                  ; preds = %._crit_edge.i
  %.pre.i = load i32, ptr %6, align 8, !noalias !436
  %i.fe = and i32 %.pre.i, 1
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.s, label %_ZL33basicBlocksWithBackwardSuccessorsN4llvh8ArrayRefIPN6hermes10BasicBlockEEE.exit

bb.s:                                             ; preds = %._crit_edge60.i
  %i.fg = load ptr, ptr %.07.i.i.i.i.ptr.i.i, align 8, !tbaa !458, !noalias !436
  call void @_ZdlPv(ptr noundef %i.fg) #20
  br label %_ZL33basicBlocksWithBackwardSuccessorsN4llvh8ArrayRefIPN6hermes10BasicBlockEEE.exit

_ZL33basicBlocksWithBackwardSuccessorsN4llvh8ArrayRefIPN6hermes10BasicBlockEEE.exit: ; preds = %bb.e, %._crit_edge60.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !436
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !417
  call void @_ZdlPv(ptr noundef %i.fi) #20
  %i.fj = load ptr, ptr %9, align 8, !tbaa !460
  store ptr %i.fj, ptr %i.fh, align 8, !tbaa !460
  store ptr null, ptr %9, align 8, !tbaa !460
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.fn = load <2 x i32>, ptr %i.fl, align 8, !tbaa !3
  store i32 0, ptr %i.fl, align 8, !tbaa !3
  store <2 x i32> %i.fn, ptr %i.fk, align 8, !tbaa !3
  store i32 0, ptr %i.fm, align 4, !tbaa !3
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !3
  store i32 %i.fq, ptr %i.fo, align 8, !tbaa !3
  store i32 0, ptr %i.fp, align 8, !tbaa !3
  call void @_ZdlPv(ptr noundef null) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.fr = load ptr, ptr %8, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !461
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !461
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_EENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E11try_emplaceIJRS7_EEESt4pairINS_16DenseMapIteratorIS5_S7_S9_SB_Lb0EEEbERKS5_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.432") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.fh, ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !461
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !461
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !461
  br label %bb.t

bb.t:                                             ; preds = %_ZL33basicBlocksWithBackwardSuccessorsN4llvh8ArrayRefIPN6hermes10BasicBlockEEE.exit, %bb.d
  %i.fs = load i32, ptr %i.h, align 8, !tbaa !72  ; 3 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.t
  %i.fu = zext nneg i32 %i.fs to i64              ; 2 uses
  %.not = icmp eq i32 %i.fs, 1
  br i1 %.not, label %.lr.ph.peel, label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.preheader
  %i.fv = add nsw i64 %i.fu, -2
  br label %.lr.ph

.lr.ph.peel:                                      ; preds = %.lr.ph.preheader, %.lr.ph
  %i.fw = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.fx = load ptr, ptr %8, align 8, !tbaa !75    ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fw
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !86
  %indvars.iv.next.peel = add nuw nsw i64 %i.fw, 1 ; 2 uses
  %i.ga = icmp eq i64 %indvars.iv.next.peel, %i.fu
  br i1 %i.ga, label %._crit_edge.loopexit.peel.next, label %bb.u

bb.u:                                             ; preds = %.lr.ph.peel
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next.peel
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !86
  br label %._crit_edge.loopexit.peel.next

._crit_edge.loopexit.peel.next:                   ; preds = %bb.u, %.lr.ph.peel
  %i.gd = phi ptr [ %i.gc, %bb.u ], [ null, %.lr.ph.peel ]
  call void @_ZN6hermes3hbc7HBCISel8generateEPNS_10BasicBlockES3_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.fz, ptr noundef %i.gd)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.peel.next, %bb.t
  call void @_ZN6hermes3hbc7HBCISel18resolveRelocationsEv(ptr noundef nonnull align 8 dereferenceable(392) %0)
  call void @_ZN6hermes3hbc7HBCISel24resolveExceptionHandlersEv(ptr noundef nonnull align 8 dereferenceable(392) %0)
  call void @_ZN6hermes3hbc7HBCISel26addDebugSourceLocationInfoEPNS_18SourceMapGeneratorE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr poison)
  call void @_ZN6hermes3hbc7HBCISel27addDebugTextifiedCalleeInfoEv(ptr noundef nonnull align 8 dereferenceable(392) %0)
  call void @_ZN6hermes3hbc7HBCISel17generateJumpTableEv(ptr noundef nonnull align 8 dereferenceable(392) %0)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !96 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !301
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 169
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !302
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !323
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 170
  store i8 %i.gk, ptr %i.gl, align 2, !tbaa !324
  call void @_ZN6hermes3hbc25BytecodeFunctionGenerator26bytecodeGenerationCompleteEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gf) #20
  %i.gm = load ptr, ptr %8, align 8, !tbaa !75    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.g
  br i1 %i.gn, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.gm) #20
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit: ; preds = %._crit_edge, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.go = load ptr, ptr %i.e, align 8, !tbaa !144 ; 3 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i12, label %_ZN6hermes17PostOrderAnalysisD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !142
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gt) #22
  br label %_ZN6hermes17PostOrderAnalysisD2Ev.exit

_ZN6hermes17PostOrderAnalysisD2Ev.exit:           ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader.split, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.split ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.gu = load ptr, ptr %8, align 8, !tbaa !75    ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  call void @_ZN6hermes3hbc7HBCISel8generateEPNS_10BasicBlockES3_(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.gw, ptr noundef %11)
  %i.gx = icmp eq i64 %indvars.iv, %i.fv
  br i1 %i.gx, label %.lr.ph.peel, label %.lr.ph, !llvm.loop !464
}

declare void @_ZN6hermes17PostOrderAnalysisC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #3

declare void @_ZN6hermes3hbc25BytecodeFunctionGenerator26bytecodeGenerationCompleteEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc20HVMRegisterAllocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(1960) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN6hermes17RegisterAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(1960) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1960) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc20HVMRegisterAllocator19getMaxRegisterUsageEv(ptr noundef nonnull align 8 dereferenceable(1960) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.b = load i32, ptr %i.a, align 8, !tbaa !466
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1956
  %i.d = load i32, ptr %i.c, align 4, !tbaa !467
  %i.e = add i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = add i32 %i.e, %i.g
  ret i32 %i.h
}

declare noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIjN6hermes3hbc18FileAndSourceMapIdELj4ENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i = icmp eq i32 %i.b, 0             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i.i, ptr %i.d, ptr %i.c ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = select i1 %.not.i.i.i.i, i32 %i.g, i32 4 ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIjN6hermes3hbc18FileAndSourceMapIdELj4ENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 4, !tbaa !3      ; 3 uses
  %i.k = mul i32 %i.j, 37
  %i.l = add i32 %i.h, -1                         ; 2 uses
  %.02745.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext i32 %.02745.i.i to i64
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 2 uses
  %i.p = icmp eq i32 %i.j, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !88

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.q = phi i32 [ %i.w, %bb.c ], [ %i.o, %bb.b ]
  %.02748.i.i = phi i32 [ %.027.i.i, %bb.c ], [ %.02745.i.i, %bb.b ]
  %.02547.i.i = phi i32 [ %i.s, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIjN6hermes3hbc18FileAndSourceMapIdELj4ENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit, label %bb.c, !prof !74

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = add i32 %.02547.i.i, 1
  %i.t = add i32 %.02547.i.i, %.02748.i.i
  %.027.i.i = and i32 %i.t, %i.l                  ; 2 uses
  %i.u = zext i32 %.027.i.i to i64
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %i.x = icmp eq i32 %i.j, %i.w
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i, !prof !89, !llvm.loop !468

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.sink.i.i.ph = phi ptr [ %i.n, %bb.b ], [ %i.v, %bb.c ]
  %i.y = zext i32 %i.h to i64
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.y
  br label %bb.d

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIjN6hermes3hbc18FileAndSourceMapIdELj4ENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.aa = zext i32 %i.h to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.aa ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIjN6hermes3hbc18FileAndSourceMapIdELj4ENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit, %.loopexit
  %.sink.i.i.ph.pn = phi ptr [ %.sink.i.i.ph, %.loopexit ], [ %i.ab, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIjN6hermes3hbc18FileAndSourceMapIdELj4ENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit ]
  %.pn7 = phi ptr [ %i.z, %.loopexit ], [ %i.ab, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIjN6hermes3hbc18FileAndSourceMapIdELj4ENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit ]
  %.fca.0.insert.i.pn = insertvalue { ptr, ptr } poison, ptr %.sink.i.i.ph.pn, 0
  %.pn = insertvalue { ptr, ptr } %.fca.0.insert.i.pn, ptr %.pn7, 1
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6hermes18SourceErrorManager12getSourceUrlEj(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !469  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.d = load i32, ptr %i.c, align 8, !tbaa !472  ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul i32 %1, 37
  %i.g = add i32 %i.d, -1                         ; 2 uses
  %.02744.i.i = and i32 %i.g, %i.f                ; 2 uses
  %i.h = zext i32 %.02744.i.i to i64
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 2 uses
  %i.k = icmp eq i32 %1, %i.j
  br i1 %i.k, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit, label %.lr.ph.i.i, !prof !88

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %i.r, %bb.c ], [ %i.j, %bb.b ]
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.c ], [ %.02744.i.i, %bb.b ]
  %.02546.i.i = phi i32 [ %i.n, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i, label %bb.c, !prof !74

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = add i32 %.02546.i.i, 1
  %i.o = add i32 %.02546.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.o, %i.g                  ; 2 uses
  %i.p = zext i32 %.027.i.i to i64
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  %i.s = icmp eq i32 %1, %i.r
  br i1 %i.s, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit, label %.lr.ph.i.i, !prof !89, !llvm.loop !473

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %i.t = zext i32 %i.d to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.t
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit: ; preds = %bb.c, %bb.b, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i
  %.sink.i.ph.pn.i = phi ptr [ %i.u, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i ], [ %i.i, %bb.b ], [ %i.q, %bb.c ] ; 3 uses
  %i.v = zext i32 %i.d to i64
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.v
  %.not = icmp eq ptr %.sink.i.ph.pn.i, %i.w
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !395
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !376
  %i.ab = insertvalue { ptr, i64 } poison, ptr %i.y, 0
  %i.ac = insertvalue { ptr, i64 } %i.ab, i64 %i.aa, 1
  br label %bb.f

bb.e:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit
  %i.ad = tail call { ptr, i64 } @_ZNK6hermes18SourceErrorManager17getBufferFileNameEj(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %1) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.fca.1.insert.merged = phi { ptr, i64 } [ %i.ac, %bb.d ], [ %i.ad, %bb.e ]
  ret { ptr, i64 } %.fca.1.insert.merged
}

declare noundef i32 @_ZN6hermes3hbc25BytecodeFunctionGenerator11addFilenameEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(200), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6hermes18SourceErrorManager19getSourceMappingUrlEj(ptr noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !469  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.d = load i32, ptr %i.c, align 8, !tbaa !472  ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul i32 %1, 37
  %i.g = add i32 %i.d, -1                         ; 2 uses
  %.02744.i.i = and i32 %i.g, %i.f                ; 2 uses
  %i.h = zext i32 %.02744.i.i to i64
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 2 uses
  %i.k = icmp eq i32 %1, %i.j
  br i1 %i.k, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit, label %.lr.ph.i.i, !prof !88

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %i.r, %bb.c ], [ %i.j, %bb.b ]
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.c ], [ %.02744.i.i, %bb.b ]
  %.02546.i.i = phi i32 [ %i.n, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i, label %bb.c, !prof !74

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = add i32 %.02546.i.i, 1
  %i.o = add i32 %.02546.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.o, %i.g                  ; 2 uses
  %i.p = zext i32 %.027.i.i to i64
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  %i.s = icmp eq i32 %1, %i.r
  br i1 %i.s, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit, label %.lr.ph.i.i, !prof !89, !llvm.loop !473

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %i.t = zext i32 %i.d to i64
end_hunk_0
