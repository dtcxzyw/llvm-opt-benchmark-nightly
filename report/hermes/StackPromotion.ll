Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/StackPromotion?download=true
inline.NumInlined: 1848
inline.NumDeleted: 843
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@"_ZN6hermes8Function16forEachScopeImplIZN12_GLOBAL__N_116promoteVariablesEPS0_RN4llvh9SetVectorIS3_St6vectorIS3_SaIS3_EENS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_EEEEEEE3$_1EEvS3_PNS_9ScopeDescET_":bb.a
  store ptr inttoptr (i64 -8 to ptr), ptr %i.dg, align 8, !tbaa !86
  %i.dh = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i28.i.7 = icmp eq ptr %i.dh, %i.cu
  br i1 %.not.i.i.i28.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i, label %.lr.ph.i.i.i27.i, !llvm.loop !1

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i: ; preds = %.sink.split.i.i.i.i
  %i.di = zext i32 %i.as to i64
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.di
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E18moveFromOldBucketsEPSE_SH_(ptr noundef nonnull align 8 dereferenceable(20) %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.dj)
  call void @_ZdlPv(ptr noundef nonnull %i.aq) #11
  %.pr.pre.i = load i32, ptr %i.ar, align 8, !tbaa !84 ; 2 uses
  %.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !89
  %i.dk = icmp eq i32 %.pr.pre.i, 0
  br i1 %i.dk, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i: ; preds = %.lr.ph.i.i.i27.i.prol.loopexit, %.lr.ph.i.i.i27.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i
  %.pr50.i = phi i32 [ %.pr.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i ], [ %i.cs, %.lr.ph.i.i.i27.i ], [ %i.cs, %.lr.ph.i.i.i27.i.prol.loopexit ]
  %i.dl = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i ], [ %i.cq, %.lr.ph.i.i.i27.i ], [ %i.cq, %.lr.ph.i.i.i27.i.prol.loopexit ] ; 2 uses
  %i.dm = ptrtoint ptr %i.ak to i64
  %i.dn = trunc i64 %i.dm to i32                  ; 2 uses
  %i.do = lshr i32 %i.dn, 4
  %i.dp = lshr i32 %i.dn, 9
  %i.dq = xor i32 %i.do, %i.dp
  %i.dr = add i32 %.pr50.i, -1                    ; 2 uses
  %.02744.i.i.i = and i32 %i.dr, %i.dq            ; 2 uses
  %i.ds = zext nneg i32 %.02744.i.i.i to i64
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %i.ds ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !86 ; 2 uses
  %i.dv = icmp eq ptr %i.ak, %i.du
  br i1 %i.dv, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i, label %.lr.ph.i.i.i, !prof !30

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i, %bb.n
  %i.dw = phi ptr [ %i.eg, %bb.n ], [ %i.du, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i ] ; 2 uses
  %i.dx = phi ptr [ %i.ef, %bb.n ], [ %i.dt, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i ] ; 2 uses
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.n ], [ %.02744.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i ]
  %.046.i.i.i = phi i32 [ %i.ec, %bb.n ], [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i ] ; 2 uses
  %.02945.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.n ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i ] ; 4 uses
  %i.dy = icmp eq ptr %i.dw, inttoptr (i64 -8 to ptr)
  br i1 %i.dy, label %bb.m, label %bb.n, !prof !31

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.02945.i.i.i, null
  %i.dz = select i1 %.not.i.i.i, ptr %i.dx, ptr %.02945.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.ea = icmp eq ptr %i.dw, inttoptr (i64 -16 to ptr)
  %i.eb = icmp eq ptr %.02945.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.ea, i1 %i.eb, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.dx, ptr %.02945.i.i.i
  %i.ec = add i32 %.046.i.i.i, 1
  %i.ed = add i32 %.046.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.ed, %i.dr              ; 2 uses
  %i.ee = zext i32 %.027.i.i.i to i64
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %i.ee ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !86 ; 2 uses
  %i.eh = icmp eq ptr %i.ak, %i.eg
  br i1 %i.eh, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i, label %.lr.ph.i.i.i, !prof !32, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i: ; preds = %bb.n, %bb.m, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i, %bb.l
  %.sink.i.i.i = phi ptr [ %i.dz, %bb.m ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i ], [ %i.dt, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i ], [ null, %bb.l ], [ %i.ef, %bb.n ]
  %.pre.i.i.i = load i32, ptr %i.bq, align 8, !tbaa !87
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i, %bb.k
  %i.ei = phi ptr [ %.sink.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i ], [ %.sink.i.i.i.i, %bb.k ] ; 4 uses
  %i.ej = phi i32 [ %.pre.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i ], [ %i.br, %bb.k ]
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.bq, align 8, !tbaa !87
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !86
  %i.em = icmp eq ptr %i.el, inttoptr (i64 -8 to ptr)
  br i1 %i.em, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.en = getelementptr inbounds nuw i8, ptr %i.ap, i64 12 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !88
  %i.ep = add i32 %i.eo, -1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !88
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i.i: ; preds = %bb.p, %bb.o
  store ptr %i.ak, ptr %i.ei, align 8, !tbaa !86
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i8 0, i64 24, i1 false)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit.i: ; preds = %bb.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i.i, %bb.g
  %.0.i.i = phi ptr [ %i.ei, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i.i ], [ %i.bb, %bb.g ], [ %i.bn, %bb.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.es = load ptr, ptr %i.a, align 8, !tbaa !114 ; 3 uses
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !99 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !113 ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit.i
  %i.ex = ptrtoint ptr %i.es to i64
  %i.ey = trunc i64 %i.ex to i32                  ; 2 uses
  %i.ez = lshr i32 %i.ey, 4
  %i.fa = lshr i32 %i.ey, 9
  %i.fb = xor i32 %i.ez, %i.fa
  %i.fc = add i32 %i.ev, -1                       ; 2 uses
  %.02744.i.i.i.i = and i32 %i.fb, %i.fc          ; 2 uses
  %i.fd = zext nneg i32 %.02744.i.i.i.i to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !114 ; 2 uses
  %i.fg = icmp eq ptr %i.es, %i.ff
  br i1 %i.fg, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i, label %.lr.ph.i.i.i.i, !prof !30

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %bb.r
  %i.fh = phi ptr [ %i.fn, %bb.r ], [ %i.ff, %bb.q ]
  %.02747.i.i.i.i = phi i32 [ %.027.i.i.i.i, %bb.r ], [ %.02744.i.i.i.i, %bb.q ]
  %.046.i.i.i.i = phi i32 [ %i.fj, %bb.r ], [ 1, %bb.q ] ; 2 uses
  %i.fi = icmp eq ptr %i.fh, inttoptr (i64 -8 to ptr)
  br i1 %i.fi, label %.critedge.i, label %bb.r, !prof !31

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.fj = add i32 %.046.i.i.i.i, 1
  %i.fk = add i32 %.046.i.i.i.i, %.02747.i.i.i.i
  %.027.i.i.i.i = and i32 %i.fk, %i.fc            ; 2 uses
  %i.fl = zext i32 %.027.i.i.i.i to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !114 ; 2 uses
  %i.fo = icmp eq ptr %i.es, %i.fn
  br i1 %i.fo, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i, label %.lr.ph.i.i.i.i, !prof !32, !llvm.loop !7

.critedge.i:                                      ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit.i, %.lr.ph.i.i.i.i
  %i.fp = load ptr, ptr %2, align 8, !tbaa !329, !nonnull !183, !align !184
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11, !noalias !333
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11, !noalias !333
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.175") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.fp, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11, !noalias !333
  br label %.loopexit.i

_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i: ; preds = %bb.r, %bb.q, %.lr.ph.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.019.i, i64 8 ; 2 uses
  %.not18.i = icmp eq ptr %i.fq, %i.ah
  br i1 %.not18.i, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i, %.critedge.i, %_ZL15hasExternalUsesPN6hermes8VariableE.exit.i, %.loopexit10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.fr = getelementptr inbounds nuw i8, ptr %.01721.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.fr, %i.g
  br i1 %.not.i, label %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_1clEPNS0_9ScopeDescE.exit", label %bb.c

"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_1clEPNS0_9ScopeDescE.exit": ; preds = %.loopexit.i, %bb.b
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !79 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !80 ; 2 uses
  %i.fw = zext i32 %i.fv to i64
  %.idx = shl nuw nsw i64 %i.fw, 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.idx
  %.not149 = icmp eq i32 %i.fv, 0
  br i1 %.not149, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_1clEPNS0_9ScopeDescE.exit", %.lr.ph
  %.010 = phi ptr [ %i.fz, %.lr.ph ], [ %i.ft, %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_1clEPNS0_9ScopeDescE.exit" ] ; 2 uses
  %i.fy = load ptr, ptr %.010, align 8, !tbaa !156
  call fastcc void @"_ZN6hermes8Function16forEachScopeImplIZN12_GLOBAL__N_116promoteVariablesEPS0_RN4llvh9SetVectorIS3_St6vectorIS3_SaIS3_EENS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_EEEEEEE3$_1EEvS3_PNS_9ScopeDescET_"(ptr noundef %0, ptr noundef %i.fy, ptr noundef nonnull byval(%class.anon.136) align 8 %2)
  %i.fz = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %.not14 = icmp eq ptr %i.fz, %i.fx
  br i1 %.not14, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_1clEPNS0_9ScopeDescE.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN6hermes8Function16forEachScopeImplIZN12_GLOBAL__N_116promoteVariablesEPS0_RN4llvh9SetVectorIS3_St6vectorIS3_SaIS3_EENS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_EEEEEEE3$_2EEvS3_PNS_9ScopeDescET_"(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly byval(%class.anon.140) align 8 captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169
  %.not = icmp eq ptr %i.c, %0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 152
  %.val = load ptr, ptr %i.d, align 8, !tbaa !79  ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 160
  %.val15 = load i32, ptr %i.e, align 8, !tbaa !80 ; 2 uses
  %i.f = zext i32 %.val15 to i64
  %.idx.i = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %.not18.i = icmp eq i32 %.val15, 0
  br i1 %.not18.i, label %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_2clEPNS0_9ScopeDescE.exit", label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = load ptr, ptr %2, align 8, !tbaa !337    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !113
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_2clEPNS0_9ScopeDescE.exit", label %.lr.ph21.split.i

.lr.ph21.split.i:                                 ; preds = %.lr.ph21.i, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i
  %4 = phi ptr [ %6, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i ], [ %i.p, %.lr.ph21.i ] ; 6 uses
  %.019.i = phi ptr [ %i.ii, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i ], [ %.val, %.lr.ph21.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.t = load ptr, ptr %.019.i, align 8, !tbaa !114 ; 5 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !99     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !113  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph21.split.i
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = lshr i32 %i.z, 4
  %i.ab = lshr i32 %i.z, 9
  %i.ac = xor i32 %i.aa, %i.ab
  %i.ad = add i32 %i.w, -1                        ; 2 uses
  %.02744.i.i.i.i = and i32 %i.ad, %i.ac          ; 2 uses
  %i.ae = zext nneg i32 %.02744.i.i.i.i to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !114 ; 2 uses
  %i.ah = icmp eq ptr %i.t, %i.ag
  br i1 %i.ah, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i, label %.lr.ph.i.i.i.i, !prof !30

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.ai = phi ptr [ %i.ao, %bb.d ], [ %i.ag, %bb.c ]
  %.02747.i.i.i.i = phi i32 [ %.027.i.i.i.i, %bb.d ], [ %.02744.i.i.i.i, %bb.c ]
  %.046.i.i.i.i = phi i32 [ %i.ak, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.aj = icmp eq ptr %i.ai, inttoptr (i64 -8 to ptr)
  br i1 %i.aj, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i, label %bb.d, !prof !31

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = add i32 %.046.i.i.i.i, 1
  %i.al = add i32 %.046.i.i.i.i, %.02747.i.i.i.i
  %.027.i.i.i.i = and i32 %i.al, %i.ad            ; 2 uses
  %i.am = zext i32 %.027.i.i.i.i to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !114 ; 2 uses
  %i.ap = icmp eq ptr %i.t, %i.ao
  br i1 %i.ap, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i, label %.lr.ph.i.i.i.i, !prof !32, !llvm.loop !7

_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i: ; preds = %bb.d, %bb.c
  %i.aq = call noundef i32 @_ZNK6hermes5Value11getNumUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #11
  %.not42.i = icmp eq i32 %i.aq, 0
  br i1 %.not42.i, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !338, !nonnull !183, !align !184 ; 4 uses
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !339, !nonnull !183, !align !184
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull %i.ax) #11
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.az, align 8, !tbaa !170
  %i.ba = call noundef ptr @_ZN6hermes9IRBuilder20createAllocStackInstENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr %.sroa.0.0.copyload.i.i) #11 ; 4 uses
  %i.bb = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #11
  %i.bc = call noundef ptr @_ZN6hermes9IRBuilder20createStoreStackInstEPNS_5ValueEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef %i.bb, ptr noundef %i.ba) #11 ; 0 uses
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !340, !nonnull !183, !align !184
  %i.be = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14AllocStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !149
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !341, !nonnull !183
  store i8 1, ptr %i.bg, align 1, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.l, ptr %3, align 8, !tbaa !79
  store i32 0, ptr %i.m, align 8, !tbaa !80
  store i32 8, ptr %i.n, align 4, !tbaa !81
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bh) #11 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !79 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !80 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %.idx23.i = shl nuw nsw i64 %i.bm, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx23.i
  %.not4316.i = icmp eq i32 %i.bl, 0
  br i1 %.not4316.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit55.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !337
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.e
  %5 = phi ptr [ %.pre, %._crit_edge.i.loopexit ], [ %4, %bb.e ]
  %i.bo = load ptr, ptr %3, align 8, !tbaa !79    ; 3 uses
  %i.bp = load i32, ptr %i.m, align 8, !tbaa !80  ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %.idx.i.i = shl nuw nsw i64 %i.bq, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !79
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %._crit_edge.i
  %i.bs = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.bo, %._crit_edge.i ] ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.l
  br i1 %i.bt, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @free(ptr noundef %i.bs) #11
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %i.bo, %._crit_edge.i ] ; 2 uses
  %i.bu = load ptr, ptr %.09.i.i, align 8, !tbaa !101
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.bu) #11
  %i.bv = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, %i.br
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i: ; preds = %bb.f, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.bx = call noundef i32 @_ZNK6hermes5Value11getNumUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bw) #11 ; 0 uses
  br label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i

.lr.ph.i:                                         ; preds = %bb.e, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit55.i
  %.03717.i = phi ptr [ %i.ih, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit55.i ], [ %i.bj, %bb.e ] ; 2 uses
  %i.by = load ptr, ptr %.03717.i, align 8, !tbaa !101 ; 10 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !111 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !178
  %i.cd = load ptr, ptr %i.i, align 8, !tbaa !339, !nonnull !183, !align !184
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !29
  %.not45.i = icmp eq ptr %i.cc, %i.ce
  br i1 %.not45.i, label %bb.g, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit55.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.cf = load ptr, ptr %i.o, align 8, !tbaa !342, !nonnull !183, !align !184 ; 9 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !89 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 4 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !84 ; 8 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = ptrtoint ptr %i.ca to i64
  %i.cl = trunc i64 %i.ck to i32                  ; 2 uses
  %i.cm = lshr i32 %i.cl, 4
  %i.cn = lshr i32 %i.cl, 9
  %i.co = xor i32 %i.cm, %i.cn
  %i.cp = add i32 %i.ci, -1                       ; 2 uses
  %.02744.i.i.i60.i = and i32 %i.cp, %i.co        ; 2 uses
  %i.cq = zext nneg i32 %.02744.i.i.i60.i to i64
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.cq ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !86 ; 2 uses
  %i.ct = icmp eq ptr %i.ca, %i.cs
  br i1 %i.ct, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit.i, label %.lr.ph.i.i.i61.i, !prof !30

.lr.ph.i.i.i61.i:                                 ; preds = %bb.h, %bb.j
  %i.cu = phi ptr [ %i.de, %bb.j ], [ %i.cs, %bb.h ] ; 2 uses
  %i.cv = phi ptr [ %i.dd, %bb.j ], [ %i.cr, %bb.h ] ; 2 uses
  %.02747.i.i.i62.i = phi i32 [ %.027.i.i.i64.i, %bb.j ], [ %.02744.i.i.i60.i, %bb.h ]
  %.046.i.i.i63.i = phi i32 [ %i.da, %bb.j ], [ 1, %bb.h ] ; 2 uses
  %.02945.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.j ], [ null, %bb.h ] ; 4 uses
  %i.cw = icmp eq ptr %i.cu, inttoptr (i64 -8 to ptr)
  br i1 %i.cw, label %bb.i, label %bb.j, !prof !31

bb.i:                                             ; preds = %.lr.ph.i.i.i61.i
  %.not.i.i.i.i = icmp eq ptr %.02945.i.i.i.i, null
  %i.cx = select i1 %.not.i.i.i.i, ptr %i.cv, ptr %.02945.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i61.i
  %i.cy = icmp eq ptr %i.cu, inttoptr (i64 -16 to ptr)
  %i.cz = icmp eq ptr %.02945.i.i.i.i, null
  %or.cond.not.i.i.i.i = select i1 %i.cy, i1 %i.cz, i1 false
  %spec.select.i.i.i.i = select i1 %or.cond.not.i.i.i.i, ptr %i.cv, ptr %.02945.i.i.i.i
  %i.da = add i32 %.046.i.i.i63.i, 1
  %i.db = add i32 %.046.i.i.i63.i, %.02747.i.i.i62.i
  %.027.i.i.i64.i = and i32 %i.db, %i.cp          ; 2 uses
  %i.dc = zext i32 %.027.i.i.i64.i to i64
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.dc ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !86 ; 2 uses
  %i.df = icmp eq ptr %i.ca, %i.de
  br i1 %i.df, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit.i, label %.lr.ph.i.i.i61.i, !prof !32, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i.i: ; preds = %bb.i, %bb.g
  %.sink.i.i.i.i = phi ptr [ %i.cx, %bb.i ], [ null, %bb.g ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !87 ; 3 uses
  %i.di = shl i32 %i.dh, 2
  %i.dj = add i32 %i.di, 4
  %i.dk = mul i32 %i.ci, 3
  %.not.i.i4.i.i = icmp ult i32 %i.dj, %i.dk
  br i1 %.not.i.i4.i.i, label %bb.l, label %bb.k, !prof !31

bb.k:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i.i
  %i.dl = shl i32 %i.ci, 1
  br label %.sink.split.i.i.i.i

bb.l:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !88
  %.neg.i.i.i.i = xor i32 %i.dh, -1
  %.neg12.i.i.i.i = add i32 %i.ci, %.neg.i.i.i.i
  %i.do = sub i32 %.neg12.i.i.i.i, %i.dn
  %i.dp = lshr i32 %i.ci, 3
  %.not10.i.i.i.i = icmp ugt i32 %i.do, %i.dp
  br i1 %.not10.i.i.i.i, label %bb.p, label %.sink.split.i.i.i.i, !prof !31

.sink.split.i.i.i.i:                              ; preds = %bb.l, %bb.k
  %.sink.i.i5.i.i = phi i32 [ %i.dl, %bb.k ], [ %i.ci, %bb.l ]
  %i.dq = add i32 %.sink.i.i5.i.i, -1
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = lshr i64 %i.dr, 1
  %i.dt = or i64 %i.ds, %i.dr                     ; 2 uses
  %i.du = lshr i64 %i.dt, 2
  %i.dv = or i64 %i.du, %i.dt                     ; 2 uses
  %i.dw = lshr i64 %i.dv, 4
  %i.dx = or i64 %i.dw, %i.dv                     ; 2 uses
  %i.dy = lshr i64 %i.dx, 8
  %i.dz = or i64 %i.dy, %i.dx                     ; 2 uses
  %i.ea = lshr i64 %i.dz, 16
  %i.eb = or i64 %i.ea, %i.dz
  %i.ec = trunc nuw i64 %i.eb to i32
  %i.ed = add i32 %i.ec, 1
  %.sroa.speculated.i.i.i = call i32 @llvm.umax.i32(i32 %i.ed, i32 64) ; 2 uses
  store i32 %.sroa.speculated.i.i.i, ptr %i.ch, align 8, !tbaa !84
  %i.ee = zext i32 %.sroa.speculated.i.i.i to i64
  %i.ef = shl nuw nsw i64 %i.ee, 5
  %i.eg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #12 ; 6 uses
  store ptr %i.eg, ptr %i.cf, align 8, !tbaa !89
  %.not.i.i67.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i67.i, label %bb.m, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i

bb.m:                                             ; preds = %.sink.split.i.i.i.i
  store i32 0, ptr %i.dg, align 8, !tbaa !87
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.eh, align 4, !tbaa !88
  %i.ei = load i32, ptr %i.ch, align 8, !tbaa !84 ; 4 uses
  %i.ej = zext i32 %i.ei to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ej, 5        ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx.i.i.i.i
  %.not6.i.i.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not6.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i, label %.lr.ph.i.i.i68.i.preheader

.lr.ph.i.i.i68.i.preheader:                       ; preds = %bb.m
  %i.el = add nsw i64 %.idx.i.i.i.i, -32          ; 2 uses
  %i.em = lshr exact i64 %i.el, 5
  %i.en = add nuw nsw i64 %i.em, 1
  %xtraiter = and i64 %i.en, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i68.i.prol.loopexit, label %.lr.ph.i.i.i68.i.prol

.lr.ph.i.i.i68.i.prol:                            ; preds = %.lr.ph.i.i.i68.i.preheader, %.lr.ph.i.i.i68.i.prol
  %.07.i.i.i.i.prol = phi ptr [ %i.eo, %.lr.ph.i.i.i68.i.prol ], [ %i.eg, %.lr.ph.i.i.i68.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i68.i.prol ], [ 0, %.lr.ph.i.i.i68.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.prol, align 8, !tbaa !86
  %i.eo = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i68.i.prol.loopexit, label %.lr.ph.i.i.i68.i.prol, !llvm.loop !334

.lr.ph.i.i.i68.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i68.i.prol, %.lr.ph.i.i.i68.i.preheader
  %.07.i.i.i.i.unr = phi ptr [ %i.eg, %.lr.ph.i.i.i68.i.preheader ], [ %i.eo, %.lr.ph.i.i.i68.i.prol ]
  %i.ep = icmp ult i64 %i.el, 224
  br i1 %i.ep, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i, label %.lr.ph.i.i.i68.i

.lr.ph.i.i.i68.i:                                 ; preds = %.lr.ph.i.i.i68.i.prol.loopexit, %.lr.ph.i.i.i68.i
  %.07.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i68.i ], [ %.07.i.i.i.i.unr, %.lr.ph.i.i.i68.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i, align 8, !tbaa !86
  %i.eq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.eq, align 8, !tbaa !86
  %i.er = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.er, align 8, !tbaa !86
  %i.es = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.es, align 8, !tbaa !86
  %i.et = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 128
  store ptr inttoptr (i64 -8 to ptr), ptr %i.et, align 8, !tbaa !86
  %i.eu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 160
  store ptr inttoptr (i64 -8 to ptr), ptr %i.eu, align 8, !tbaa !86
  %i.ev = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 192
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ev, align 8, !tbaa !86
  %i.ew = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 224
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ew, align 8, !tbaa !86
  %i.ex = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i69.i.7 = icmp eq ptr %i.ex, %i.ek
  br i1 %.not.i.i.i69.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i, label %.lr.ph.i.i.i68.i, !llvm.loop !1

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i: ; preds = %.sink.split.i.i.i.i
  %i.ey = zext i32 %i.ci to i64
  %i.ez = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.ey
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E18moveFromOldBucketsEPSE_SH_(ptr noundef nonnull align 8 dereferenceable(20) %i.cf, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ez)
  call void @_ZdlPv(ptr noundef nonnull %i.cg) #11
  %.pr.pre.i = load i32, ptr %i.ch, align 8, !tbaa !84 ; 2 uses
  %.pre.i = load ptr, ptr %i.cf, align 8, !tbaa !89
  %i.fa = icmp eq i32 %.pr.pre.i, 0
  br i1 %i.fa, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i: ; preds = %.lr.ph.i.i.i68.i.prol.loopexit, %.lr.ph.i.i.i68.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i
  %.pr57.i = phi i32 [ %.pr.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i ], [ %i.ei, %.lr.ph.i.i.i68.i ], [ %i.ei, %.lr.ph.i.i.i68.i.prol.loopexit ]
  %i.fb = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i ], [ %i.eg, %.lr.ph.i.i.i68.i ], [ %i.eg, %.lr.ph.i.i.i68.i.prol.loopexit ] ; 2 uses
  %i.fc = ptrtoint ptr %i.ca to i64
  %i.fd = trunc i64 %i.fc to i32                  ; 2 uses
  %i.fe = lshr i32 %i.fd, 4
  %i.ff = lshr i32 %i.fd, 9
  %i.fg = xor i32 %i.fe, %i.ff
  %i.fh = add i32 %.pr57.i, -1                    ; 2 uses
  %.02744.i.i.i = and i32 %i.fh, %i.fg            ; 2 uses
  %i.fi = zext nneg i32 %.02744.i.i.i to i64
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %i.fi ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !86 ; 2 uses
  %i.fl = icmp eq ptr %i.ca, %i.fk
  br i1 %i.fl, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i, label %.lr.ph.i.i.i, !prof !30

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i, %bb.o
  %i.fm = phi ptr [ %i.fw, %bb.o ], [ %i.fk, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i ] ; 2 uses
  %i.fn = phi ptr [ %i.fv, %bb.o ], [ %i.fj, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i ] ; 2 uses
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.o ], [ %.02744.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i ]
  %.046.i.i.i = phi i32 [ %i.fs, %bb.o ], [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i ] ; 2 uses
  %.02945.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.o ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i ] ; 4 uses
  %i.fo = icmp eq ptr %i.fm, inttoptr (i64 -8 to ptr)
  br i1 %i.fo, label %bb.n, label %bb.o, !prof !31

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i66.i = icmp eq ptr %.02945.i.i.i, null
  %i.fp = select i1 %.not.i.i66.i, ptr %i.fn, ptr %.02945.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.fq = icmp eq ptr %i.fm, inttoptr (i64 -16 to ptr)
  %i.fr = icmp eq ptr %.02945.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.fq, i1 %i.fr, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.fn, ptr %.02945.i.i.i
  %i.fs = add i32 %.046.i.i.i, 1
  %i.ft = add i32 %.046.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.ft, %i.fh              ; 2 uses
  %i.fu = zext i32 %.027.i.i.i to i64
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %i.fu ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !86 ; 2 uses
  %i.fx = icmp eq ptr %i.ca, %i.fw
  br i1 %i.fx, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i, label %.lr.ph.i.i.i, !prof !32, !llvm.loop !0

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i: ; preds = %bb.o, %bb.n, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i, %bb.m
  %.sink.i.i.i = phi ptr [ %i.fp, %bb.n ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i ], [ %i.fj, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i ], [ null, %bb.m ], [ %i.fv, %bb.o ]
  %.pre.i.i65.i = load i32, ptr %i.dg, align 8, !tbaa !87
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i, %bb.l
  %i.fy = phi ptr [ %.sink.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i ], [ %.sink.i.i.i.i, %bb.l ] ; 4 uses
  %i.fz = phi i32 [ %.pre.i.i65.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i ], [ %i.dh, %bb.l ]
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %i.dg, align 8, !tbaa !87
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !86
  %i.gc = icmp eq ptr %i.gb, inttoptr (i64 -8 to ptr)
  br i1 %i.gc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cf, i64 12 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !88
  %i.gf = add i32 %i.ge, -1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !88
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i.i: ; preds = %bb.q, %bb.p
  store ptr %i.ca, ptr %i.fy, align 8, !tbaa !86
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i8 0, i64 24, i1 false)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit.i: ; preds = %bb.j, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i.i, %bb.h
  %.0.i.i = phi ptr [ %i.fy, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i.i ], [ %i.cr, %bb.h ], [ %i.dd, %bb.j ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.gi = load ptr, ptr %i.a, align 8, !tbaa !114 ; 3 uses
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !99 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !113 ; 2 uses
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %.loopexit.i, label %bb.r

bb.r:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit.i
  %i.gn = ptrtoint ptr %i.gi to i64
  %i.go = trunc i64 %i.gn to i32                  ; 2 uses
  %i.gp = lshr i32 %i.go, 4
  %i.gq = lshr i32 %i.go, 9
  %i.gr = xor i32 %i.gp, %i.gq
  %i.gs = add i32 %i.gl, -1                       ; 2 uses
  %.02744.i.i.i49.i = and i32 %i.gr, %i.gs        ; 2 uses
  %i.gt = zext nneg i32 %.02744.i.i.i49.i to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gt
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !114 ; 2 uses
  %i.gw = icmp eq ptr %i.gi, %i.gv
  br i1 %i.gw, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit55.i, label %.lr.ph.i.i.i50.i, !prof !30

.lr.ph.i.i.i50.i:                                 ; preds = %bb.r, %bb.s
  %i.gx = phi ptr [ %i.hd, %bb.s ], [ %i.gv, %bb.r ]
  %.02747.i.i.i51.i = phi i32 [ %.027.i.i.i53.i, %bb.s ], [ %.02744.i.i.i49.i, %bb.r ]
  %.046.i.i.i52.i = phi i32 [ %i.gz, %bb.s ], [ 1, %bb.r ] ; 2 uses
  %i.gy = icmp eq ptr %i.gx, inttoptr (i64 -8 to ptr)
  br i1 %i.gy, label %.loopexit.i, label %bb.s, !prof !31

bb.s:                                             ; preds = %.lr.ph.i.i.i50.i
  %i.gz = add i32 %.046.i.i.i52.i, 1
  %i.ha = add i32 %.046.i.i.i52.i, %.02747.i.i.i51.i
  %.027.i.i.i53.i = and i32 %i.ha, %i.gs          ; 2 uses
  %i.hb = zext i32 %.027.i.i.i53.i to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.hb
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !114 ; 2 uses
  %i.he = icmp eq ptr %i.gi, %i.hd
  br i1 %i.he, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit55.i, label %.lr.ph.i.i.i50.i, !prof !32, !llvm.loop !7

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i50.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !94  ; 2 uses
  %i.hh = icmp ne i8 %i.hg, 49
  %.not478.i = icmp eq ptr %i.by, null
  %.not47.i = or i1 %.not478.i, %i.hh
  br i1 %.not47.i, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %.loopexit.i
  %i.hi = load ptr, ptr %i.h, align 8, !tbaa !338, !nonnull !183, !align !184 ; 2 uses
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %i.hi, ptr noundef nonnull %i.by) #11
  %i.hj = call noundef ptr @_ZN6hermes9IRBuilder19createLoadStackInstEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %i.hi, ptr noundef %i.ba) #11 ; 2 uses
  call void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %i.hj, ptr noundef nonnull %i.by) #11
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, ptr noundef nonnull %i.hk) #11
  %i.hl = load i32, ptr %i.m, align 8, !tbaa !80  ; 2 uses
  %i.hm = load i32, ptr %i.n, align 4, !tbaa !81
  %.not.i.i.i = icmp ult i32 %i.hl, %i.hm
  br i1 %.not.i.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i, label %bb.u, !prof !31

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 8) #11
  %.pre.i.i.i = load i32, ptr %i.m, align 8, !tbaa !80
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i: ; preds = %bb.u, %bb.t
  %i.hn = phi i32 [ %.pre.i.i.i, %bb.u ], [ %i.hl, %bb.t ]
  %i.ho = load ptr, ptr %3, align 8, !tbaa !79
  %i.hp = zext i32 %i.hn to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hp
  %i.hr = ptrtoint ptr %i.by to i64
  store i64 %i.hr, ptr %i.hq, align 1
  %i.hs = load i32, ptr %i.m, align 8, !tbaa !80
  %i.ht = add i32 %i.hs, 1
  store i32 %i.ht, ptr %i.m, align 8, !tbaa !80
  br label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit55.i

.critedge.i:                                      ; preds = %.loopexit.i
  %i.hu = icmp eq i8 %i.hg, 51
  %spec.select.i56.i = select i1 %i.hu, ptr %i.by, ptr null ; 3 uses
  %.not48.not.i = icmp eq ptr %spec.select.i56.i, null
  br i1 %.not48.not.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.critedge.i
  %i.hv = load ptr, ptr %i.h, align 8, !tbaa !338, !nonnull !183, !align !184 ; 2 uses
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %i.hv, ptr noundef nonnull %i.by) #11
  %i.hw = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.by, i32 noundef 0) #11
  %i.hx = call noundef ptr @_ZN6hermes9IRBuilder20createStoreStackInstEPNS_5ValueEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %i.hv, ptr noundef %i.hw, ptr noundef %i.ba) #11
  call void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %i.hx, ptr noundef nonnull %i.by) #11
  %i.hy = load i32, ptr %i.m, align 8, !tbaa !80  ; 2 uses
  %i.hz = load i32, ptr %i.n, align 4, !tbaa !81
  %.not.i.i57.i = icmp ult i32 %i.hy, %i.hz
  br i1 %.not.i.i57.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit59.i, label %bb.w, !prof !31

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 8) #11
  %.pre.i.i58.i = load i32, ptr %i.m, align 8, !tbaa !80
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit59.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit59.i: ; preds = %bb.w, %bb.v
  %i.ia = phi i32 [ %.pre.i.i58.i, %bb.w ], [ %i.hy, %bb.v ]
  %i.ib = load ptr, ptr %3, align 8, !tbaa !79
  %i.ic = zext i32 %i.ia to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ic
  %i.ie = ptrtoint ptr %spec.select.i56.i to i64
  store i64 %i.ie, ptr %i.id, align 1
  %i.if = load i32, ptr %i.m, align 8, !tbaa !80
  %i.ig = add i32 %i.if, 1
  store i32 %i.ig, ptr %i.m, align 8, !tbaa !80
  br label %bb.x

bb.x:                                             ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit59.i, %.critedge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i56.i) ]
  br label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit55.i

_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit55.i: ; preds = %bb.s, %bb.x, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i, %bb.r, %.lr.ph.i
  %i.ih = getelementptr inbounds nuw i8, ptr %.03717.i, i64 8 ; 2 uses
  %.not43.i = icmp eq ptr %i.ih, %i.bn
  br i1 %.not43.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i, %.lr.ph21.split.i
  %6 = phi ptr [ %4, %.lr.ph21.split.i ], [ %5, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i ], [ %4, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i ], [ %4, %.lr.ph.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ii = getelementptr inbounds nuw i8, ptr %.019.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ii, %i.g
  br i1 %.not.i, label %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_2clEPNS0_9ScopeDescE.exit", label %.lr.ph21.split.i, !llvm.loop !335

"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_2clEPNS0_9ScopeDescE.exit": ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i, %.lr.ph21.i, %bb.b
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !79 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.im = load i32, ptr %i.il, align 8, !tbaa !80 ; 2 uses
  %i.in = zext i32 %i.im to i64
  %.idx = shl nuw nsw i64 %i.in, 3
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.idx
  %.not149 = icmp eq i32 %i.im, 0
  br i1 %.not149, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_2clEPNS0_9ScopeDescE.exit", %.lr.ph
  %.010 = phi ptr [ %i.iq, %.lr.ph ], [ %i.ik, %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_2clEPNS0_9ScopeDescE.exit" ] ; 2 uses
  %i.ip = load ptr, ptr %.010, align 8, !tbaa !156
  call fastcc void @"_ZN6hermes8Function16forEachScopeImplIZN12_GLOBAL__N_116promoteVariablesEPS0_RN4llvh9SetVectorIS3_St6vectorIS3_SaIS3_EENS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_EEEEEEE3$_2EEvS3_PNS_9ScopeDescET_"(ptr noundef %0, ptr noundef %i.ip, ptr noundef nonnull byval(%class.anon.140) align 8 %2)
  %i.iq = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %.not14 = icmp eq ptr %i.iq, %i.io
  br i1 %.not14, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_2clEPNS0_9ScopeDescE.exit", %bb.a
  ret void
}

declare noundef i32 @_ZNK6hermes5Value11getNumUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef ptr @_ZN6hermes9IRBuilder20createStoreStackInstEPNS_5ValueEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN6hermes8Function16forEachScopeImplIZN12_GLOBAL__N_116promoteVariablesEPS0_RN4llvh9SetVectorIS3_St6vectorIS3_SaIS3_EENS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_EEEEEEE3$_3EEvS3_PNS_9ScopeDescET_"(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly byval(%class.anon.148) align 8 captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"struct.std::pair.191", align 16   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !169
  %.not = icmp eq ptr %i.e, %0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 152
  %.val = load ptr, ptr %i.f, align 8, !tbaa !79  ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 160
  %.val15 = load i32, ptr %i.g, align 8, !tbaa !80 ; 2 uses
  %i.h = zext i32 %.val15 to i64
  %.idx.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %.not3.i = icmp eq i32 %.val15, 0
  br i1 %.not3.i, label %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_3clEPNS0_9ScopeDescE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %2, align 8, !tbaa !349, !nonnull !183, !align !184 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !113  ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_3clEPNS0_9ScopeDescE.exit", label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !183, !align !184 ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !nonnull !183, !align !184
  %i.w = load ptr, ptr %i.r, align 8, !nonnull !183, !align !184
  %i.x = load ptr, ptr %i.q, align 8, !nonnull !183, !align !184 ; 2 uses
  %i.y = load ptr, ptr %i.p, align 8, !nonnull !183, !align !184
  %i.z = load ptr, ptr %i.o, align 8, !nonnull !183
  br label %.lr.ph.split.i

.lr.ph.split.ithread-pre-split:                   ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i
  %.pr = load i32, ptr %i.l, align 8, !tbaa !113
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %.lr.ph.split.ithread-pre-split
  %i.aa = phi i32 [ %.pr, %.lr.ph.split.ithread-pre-split ], [ %i.m, %.lr.ph.split.i.preheader ] ; 2 uses
  %.04.i = phi ptr [ %i.bn, %.lr.ph.split.ithread-pre-split ], [ %.val, %.lr.ph.split.i.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ab = load ptr, ptr %.04.i, align 8, !tbaa !114 ; 4 uses
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !114
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !99  ; 2 uses
  %i.ad = icmp eq i32 %i.aa, 0
  br i1 %i.ad, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = lshr i32 %i.af, 4
  %i.ah = lshr i32 %i.af, 9
  %i.ai = xor i32 %i.ag, %i.ah
  %i.aj = add i32 %i.aa, -1                       ; 2 uses
  %.02744.i.i.i.i = and i32 %i.ai, %i.aj          ; 2 uses
  %i.ak = zext nneg i32 %.02744.i.i.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !114 ; 2 uses
  %i.an = icmp eq ptr %i.ab, %i.am
  br i1 %i.an, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i, label %.lr.ph.i.i.i.i, !prof !30

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.ao = phi ptr [ %i.au, %bb.d ], [ %i.am, %bb.c ]
  %.02747.i.i.i.i = phi i32 [ %.027.i.i.i.i, %bb.d ], [ %.02744.i.i.i.i, %bb.c ]
  %.046.i.i.i.i = phi i32 [ %i.aq, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.ap = icmp eq ptr %i.ao, inttoptr (i64 -8 to ptr)
  br i1 %i.ap, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i, label %bb.d, !prof !31

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aq = add i32 %.046.i.i.i.i, 1
  %i.ar = add i32 %.046.i.i.i.i, %.02747.i.i.i.i
  %.027.i.i.i.i = and i32 %i.ar, %i.aj            ; 2 uses
  %i.as = zext i32 %.027.i.i.i.i to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !114 ; 2 uses
  %i.av = icmp eq ptr %i.ab, %i.au
  br i1 %i.av, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i, label %.lr.ph.i.i.i.i, !prof !32, !llvm.loop !7

_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i: ; preds = %bb.d, %bb.c
  %i.aw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14AllocStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !149
  %i.az = call noundef ptr @_ZN6hermes9IRBuilder19createLoadStackInstEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef %i.ay) #11 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %spec.select.i = select i1 %i.ba, ptr null, ptr %i.bb
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !114 ; 2 uses
  %.val.i = load ptr, ptr %i.w, align 8, !tbaa !151
  %i.bd = getelementptr i8, ptr %i.bc, i64 56
  %.val10.i = load ptr, ptr %i.bd, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr %.val10.i, ptr %i.b, align 8, !tbaa !156
  %i.be = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescEPNS2_17ScopeCreationInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_(ptr noundef nonnull align 1 dereferenceable(1) %.val.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.bh = call noundef ptr @_ZN6hermes9IRBuilder20createStoreFrameInstEPNS_5ValueEPNS_8VariableEPNS_17ScopeCreationInstE(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef %spec.select.i, ptr noundef %i.bc, ptr noundef %i.bg) #11 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.y, ptr %3, align 16, !tbaa !191
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !114
  store ptr %i.bi, ptr %i.j, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11, !noalias !350
  %i.bj = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E15LookupBucketForIS8_EEbRKT_RPKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !350
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !193, !noalias !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11, !noalias !350
  br i1 %i.bj, label %_ZN4llvh6detail12DenseSetImplISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_8DenseMapIS8_NS0_13DenseSetEmptyENS_12DenseMapInfoIS8_EENS0_12DenseSetPairIS8_EEEESC_E6insertEOS8_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i
  %i.bl = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E20InsertIntoBucketImplIS8_EEPSE_RKS8_RKT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.bk), !noalias !350
  %i.bm = load <2 x ptr>, ptr %3, align 16, !tbaa !125, !noalias !350
  store <2 x ptr> %i.bm, ptr %i.bl, align 8, !tbaa !125, !noalias !350
  br label %_ZN4llvh6detail12DenseSetImplISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_8DenseMapIS8_NS0_13DenseSetEmptyENS_12DenseMapInfoIS8_EENS0_12DenseSetPairIS8_EEEESC_E6insertEOS8_.exit.i

_ZN4llvh6detail12DenseSetImplISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_8DenseMapIS8_NS0_13DenseSetEmptyENS_12DenseMapInfoIS8_EENS0_12DenseSetPairIS8_EEEESC_E6insertEOS8_.exit.i: ; preds = %bb.e, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  store i8 1, ptr %i.z, align 1, !tbaa !78
  br label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i

_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvh6detail12DenseSetImplISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_8DenseMapIS8_NS0_13DenseSetEmptyENS_12DenseMapInfoIS8_EENS0_12DenseSetPairIS8_EEEESC_E6insertEOS8_.exit.i, %.lr.ph.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.bn = getelementptr inbounds nuw i8, ptr %.04.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bn, %i.i
  br i1 %.not.i, label %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_3clEPNS0_9ScopeDescE.exit", label %.lr.ph.split.ithread-pre-split, !llvm.loop !347

"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_3clEPNS0_9ScopeDescE.exit": ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.thread.i, %.lr.ph.i, %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !79 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !80 ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %.idx = shl nuw nsw i64 %i.bs, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx
  %.not142 = icmp eq i32 %i.br, 0
  br i1 %.not142, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_3clEPNS0_9ScopeDescE.exit", %.lr.ph
  %.03 = phi ptr [ %i.bv, %.lr.ph ], [ %i.bp, %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_3clEPNS0_9ScopeDescE.exit" ] ; 2 uses
  %i.bu = load ptr, ptr %.03, align 8, !tbaa !156
  call fastcc void @"_ZN6hermes8Function16forEachScopeImplIZN12_GLOBAL__N_116promoteVariablesEPS0_RN4llvh9SetVectorIS3_St6vectorIS3_SaIS3_EENS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_EEEEEEE3$_3EEvS3_PNS_9ScopeDescET_"(ptr noundef %0, ptr noundef %i.bu, ptr noundef nonnull byval(%class.anon.148) align 8 %2)
  %i.bv = getelementptr inbounds nuw i8, ptr %.03, i64 8 ; 2 uses
  %.not14 = icmp eq ptr %i.bv, %i.bt
  br i1 %.not14, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %"_ZZN12_GLOBAL__N_116promoteVariablesEPN6hermes8FunctionERN4llvh9SetVectorIS2_St6vectorIS2_SaIS2_EENS3_8DenseSetIS2_NS3_12DenseMapInfoIS2_EEEEEEENK3$_3clEPNS0_9ScopeDescE.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes10BasicBlockEPNS3_8VariableEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_EENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E15LookupBucketForIS8_EEbRKT_RPKSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !130    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !194  ; 2 uses
end_hunk_0
